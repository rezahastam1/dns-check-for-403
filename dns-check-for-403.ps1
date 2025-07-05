# بررسی دسترسی Administrator
function Test-IsAdmin {
    $currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($currentUser)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

if (-not (Test-IsAdmin)) {
    Write-Host "❌ لطفاً PowerShell را به صورت Run as Administrator اجرا کنید." -ForegroundColor Red
    return
}

# لیست DNS ها
$DNSProviders = @(
    @{Name="Cloudflare"; IP="1.1.1.1"; Secondary="1.0.0.1"; Country="Global"},
    @{Name="Google"; IP="8.8.8.8"; Secondary="8.8.4.4"; Country="Global"},
    @{Name="Bokhzar"; IP="185.55.226.26"; Secondary="185.55.225.25"; Country="Iran"},
    @{Name="Radar"; IP="10.202.10.10"; Secondary="10.202.10.11"; Country="Iran"},
    @{Name="Electro"; IP="78.157.42.100"; Secondary="78.157.42.101"; Country="Iran"},
    @{Name="Shelter"; IP="94.103.125.157"; Secondary="94.103.125.158"; Country="Iran"},
    @{Name="Beshkan"; IP="181.41.194.177"; Secondary="181.41.194.186"; Country="Iran"}
)

$TestUrl = "https://developer.android.com"
$Interface = (Get-DnsClient | Where-Object {$_.InterfaceAlias -notmatch "Loopback|isatap"} | Select-Object -First 1).InterfaceAlias

# مسیر لاگ روی دسکتاپ
$TimeStamp = Get-Date -Format "yyyy-MM-dd_HH-mm"
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$LogPath = Join-Path $DesktopPath "DNS Check $TimeStamp.txt"

# توابع کمکی
function Write-Log {
    param ($text)
    $text | Tee-Object -FilePath $LogPath -Append
}

function Clear-DNSCache {
    ipconfig /flushdns | Out-Null
    Clear-DnsClientCache
    Write-Log "🧹 DNS cache cleared."
}

function Set-DNS {
    param ($Primary, $Secondary)
    Set-DnsClientServerAddress -InterfaceAlias $Interface -ServerAddresses ($Primary, $Secondary)
    Write-Log "🌐 DNS set to: $Primary, $Secondary"
}

function Set-DHCP {
    Set-DnsClientServerAddress -InterfaceAlias $Interface -ResetServerAddresses
    Write-Log "🔁 DNS reset to DHCP mode."
}

function Test-Site {
    try {
        $response = Invoke-WebRequest -Uri $TestUrl -Method Head -TimeoutSec 10 -ErrorAction Stop
        return $response.StatusCode
    } catch {
        if ($_.Exception.Response) {
            return $_.Exception.Response.StatusCode.value__
        } else {
            Write-Log "❗ Exception: $($_.Exception.Message)"
            return $null
        }
    }
}

function Ping-Test {
    $ping = Test-Connection -ComputerName "developer.android.com" -Count 2 -Quiet -ErrorAction SilentlyContinue
    return $ping
}

# شروع برنامه
Write-Log "======================="
Write-Log "🧪 DNS Check Started: $(Get-Date)"
Write-Log "Target: $TestUrl"
Write-Log "======================="

# DNS فعلی سیستم
$CurrentDNS = (Get-DnsClientServerAddress -InterfaceAlias $Interface -AddressFamily IPv4).ServerAddresses -join ", "
Write-Log "`n🔎 Current DNS: $CurrentDNS"

$Success = $false

foreach ($dns in $DNSProviders) {
    Write-Log "`n🔍 Testing DNS: $($dns.Name) ($($dns.IP)) [$($dns.Country)]"
    Set-DNS -Primary $dns.IP -Secondary $dns.Secondary
    Start-Sleep -Seconds 1

    Clear-DNSCache

    Write-Log "⏳ Waiting 3 seconds to apply DNS..."
    Start-Sleep -Seconds 3

    Write-Log "⏲️ Starting 10-second connection test countdown:"
    for ($i = 1; $i -le 10; $i++) {
        Write-Host "Checking connection... $i s" -NoNewline
        Start-Sleep -Seconds 1
        Write-Host " ✓"
    }

    $pingResult = Ping-Test
    if ($pingResult) {
        Write-Log "✅ Ping successful to $TestUrl"
        $status = Test-Site

        if ($status -eq 200) {
            Write-Log "✅ SUCCESS: Accessed site with DNS: $($dns.Name)"
            $Success = $true
            break
        } elseif ($status -eq 403) {
            Write-Log "⛔️ ERROR 403: Forbidden with DNS: $($dns.Name) - Skipping to next DNS."
        } elseif ($status) {
            Write-Log "❌ Failed with status code: $status"
        } else {
            Write-Log "❌ Unknown error with DNS: $($dns.Name)"
        }
    } else {
        Write-Log "❌ Ping failed to $TestUrl with DNS: $($dns.Name)"
    }
}

if (-not $Success) {
    Set-DHCP
    Write-Log "`n⚠️ No working DNS found. Reverted to DHCP."
}

Write-Log "`n📝 Log saved to: $LogPath"
Write-Log "✅ Process Completed: $(Get-Date)"
