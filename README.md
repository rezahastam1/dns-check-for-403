# 🛠️ DNS Check for Error 403 - PowerShell Script

**Version:** 1.1.2  
**Author:** Reza Zarnegar  
**GitHub:** [rezahastam1](https://github.com/rezahastam1)  
**Short Link:** [https://B2n.ir/DNS-for-Error403](https://B2n.ir/DNS-for-Error403)  

---

## 🌍 Description

A PowerShell script to diagnose and fix DNS-related **403 Forbidden** errors when accessing websites like:
- https://developer.android.com
- Google services (Firebase, Android Studio, Flutter)
- Other restricted resources in filtered networks

Works by testing multiple DNS providers and automatically configuring the first working one.

---

## ✨ Features

### 🔧 Technical
- Detects current DNS settings
- Clears DNS cache (ipconfig /flushdns)
- Tests multiple global & regional DNS providers
- Verifies connectivity via ping and HTTP status
- Detects 403 Forbidden responses
- Automatic failover to working DNS
- Reverts to DHCP if no DNS succeeds

### 📊 Reporting
- Detailed execution log
- Timestamped output file on Desktop
- Clear success/failure indication
- Error diagnostics

### 🌐 Multi-Region Support
Includes DNS servers from:
- Google (8.8.8.8)
- Cloudflare (1.1.1.1)
- Radar Game (178.22.122.100)
- Electro (78.157.42.101)
- Beshkan (94.140.14.14)
- And more...

---

## 🚀 Quick Start

### One-line installation:
```powershell
iwr https://B2n.ir/DNS-for-Error403 -UseBasicParsing | iex
```

⚠️ **Requires Administrator privileges** to change system DNS settings.

---

## 📝 Output Sample

**Log File:** `DNS Check - 2025-07-05.txt`

```
[STATUS] Initial DNS: 192.168.1.1 (DHCP)
[TESTING] Google DNS (8.8.8.8) - 403 Forbidden
[SUCCESS] Cloudflare (1.1.1.1) - 200 OK
[CONFIG] Setting primary DNS to 1.1.1.1
[COMPLETE] Problem resolved in 3 attempts
```

---

## 📚 Documentation

### English
This script helps bypass DNS-level restrictions that cause 403 errors by:
1. Testing multiple DNS providers
2. Selecting the first one that returns 200 OK
3. Configuring it as system DNS
4. Providing detailed diagnostics

### فارسی (Persian)
این اسکریپت مشکل 403 Forbidden را که معمولاً به دلیل محدودیت‌های DNS در ایران رخ می‌دهد، برطرف می‌کند.

🔧 قابلیت‌های اصلی
تشخیص خودکار مشکل 403 Forbidden

تست هوشمند بهترین DNS بر اساس موقعیت جغرافیایی

پشتیبانی از آخرین پروتکل‌های امنیتی (DoH/DoT)

سازگار با تمام نسخه‌های ویندوز (7 تا 11)

🚀 روش اجرا
باز کردن PowerShell با دسترسی Administrator

اجرای دستور زیر:

powershell
irm https://B2n.ir/DNS-for-Error403 | iex
� عیب‌یابی پیشرفته
لاگ کامل اجرا در مسیر:


$env:USERPROFILE\Desktop\DNS-Check_YYYY-MM-DD.log
امکان تست دستی DNSها با سوئیچ -TestOnly

حالت دیباگ با -Verbose


---

## 🔗 Links
| Resource | URL |
|----------|-----|
| GitHub Repo | [View on GitHub](https://github.com/rezahastam1/dns-check-for-403) |
| Raw Script | [dns-check-for-403.ps1](https://B2n.ir/DNS-for-Error403) |
| Short URL | https://B2n.ir/DNS-for-Error403 |

---

## 🔎 Keywords
```
403 error fix, DNS PowerShell, Iran DNS bypass, Android Studio DNS
Flutter 403 solution, Google services Iran, flush DNS cache
403 Forbidden حل مشکل, تغییر DNS ویندوز, رفع ارور 403
```

---

## 👨‍💻 Author
**Reza Zarnegar**  
Windows tools developer & network enthusiast  
[GitHub Profile](https://github.com/rezahastam1)  

---

## 📜 License
MIT License - Free to use and modify with attribution
