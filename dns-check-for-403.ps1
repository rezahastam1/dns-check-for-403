# Enable TLS 1.2 for GitHub access
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Ensure running as Administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "❌ Please run this script as Administrator!" -ForegroundColor Red
    exit
}

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

# Detect active interface
$Interface = (Get-DnsClient | Where-Object { $_.InterfaceAlias -notmatch "Loopback|isatap|vEthernet" -and $_.ServerAddresses.Count -gt 0 } | Select-Object -First 1).InterfaceAlias

if (-not $Interface) {
    Write-Host "❌ No valid network interface found!" -ForegroundColor Red
    exit
}

# Logging
$TimeStamp = Get-Date -Format "yyyy-MM-dd_HH-mm"
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$LogPath = Join-Path $DesktopPath "DNS Check $TimeStamp.txt"

function Write-Log {
    param ($text)
    $text | Tee-Object -FilePath $LogPath -Append
}

function Clear-DNSCache {
    try {
        ipconfig /flushdns | Out-Null
        Clear-DnsClientCache -ErrorAction Stop
        Write-Log "🧹 DNS cache cleared."
    } catch {
        Write-Log "❌ Failed to clear DNS cache: $($_.Exception.Message)"
    }
}

function Set-DNS {
    param ($Primary, $Secondary)
    try {
        Set-DnsClientServerAddress -InterfaceAlias $Interface -ServerAddresses ($Primary, $Secondary) -ErrorAction Stop
        Write-Log "🌐 DNS set to: $Primary, $Secondary"
    } catch {
        Write-Log "❌ Failed to set DNS: $($_.Exception.Message)"
    }
}

function Set-DHCP {
    try {
        Set-DnsClientServerAddress -InterfaceAlias $Interface -ResetServerAddresses -ErrorAction Stop
        Write-Log "🔁 DNS reset to DHCP mode."
    } catch {
        Write-Log "❌ Failed to reset DNS to DHCP: $($_.Exception.Message)"
    }
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
    try {
        return Test-Connection -ComputerName "developer.android.com" -Count 2 -Quiet -ErrorAction SilentlyContinue
    } catch {
        return $false
    }
}

Write-Log "==============================="
Write-Log "🧪 DNS Check Started: $(Get-Date)"
Write-Log "Target: $TestUrl"
Write-Log "==============================="

$CurrentDNS = (Get-DnsClientServerAddress -InterfaceAlias $Interface -AddressFamily IPv4).ServerAddresses -join ", "
Write-Log "`n🔎 Current DNS: $CurrentDNS"

$Success = $false

foreach ($dns in $DNSProviders) {
    Write-Log "`n🔍 Testing DNS: $($dns.Name) ($($dns.IP)) [$($dns.Country)]"
    Set-DNS -Primary $dns.IP -Secondary $dns.Secondary

    Start-Sleep -Seconds 1
    Clear-DNSCache
    Write-Log "⏳ Waiting 5 seconds to apply DNS..."
    Start-Sleep -Seconds 5

    Write-Log "⏲️ 10-second connection test countdown:"
    for ($i = 1; $i -le 10; $i++) {
        Write-Host "⏱️  Checking connection... $i s" -NoNewline
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
            Write-Log "⛔️ ERROR 403: Forbidden with DNS: $($dns.Name) - Skipping."
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
