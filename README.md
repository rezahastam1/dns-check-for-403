Here's the professional version with updated links and optimized formatting:

# 🛠️ DNS Check for Error 403 - PowerShell Script

**Version:** 1.1.2  
**Author:** Reza Zarnegar  
**GitHub:** [rezahastam1](https://github.com/rezahastam1)  
**Direct Script Link:** [Raw GitHub URL](https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1)

---

## 🌍 English Description
PowerShell utility to resolve 403 Forbidden errors caused by DNS restrictions, specifically designed for:

- Android Developer Portal (developer.android.com)
- Google development services (Firebase/Android Studio/Flutter)
- Geo-blocked resources in restricted networks

### 🔧 Core Functionality
- System DNS configuration audit
- Multi-provider DNS testing (8 global + 4 regional)
- Smart failover with automatic DHCP fallback
- Comprehensive connectivity diagnostics
- Persistent logging with timestamped reports

### ⚡ Instant Deployment
```powershell
iwr "https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1" -UseBasicParsing | iex
```
**Prerequisite:** Administrator elevation required (`Right-click → Run as Admin`)

---

## 📚 فارسی: راهنمای اجرا

### 🎯 موارد مصرف
- حل خطای 403 در سرویس‌های گوگل
- دسترسی به منابع توسعه‌ای مسدود شده
- مشکلات DNS در شبکه‌های سازمانی

### 🚀 روش نصب
1. اجرای ترمینال با دسترسی مدیر:
   ```powershell
   Start-Process powershell -Verb RunAs
   ```
2. اجرای مستقیم از GitHub:
   ```powershell
   irm "https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1" | iex
   ```

### 📊 خروجی سیستم
- گزارش تحلیلی در مسیر:
  ```
  %USERPROFILE%\Desktop\DNS_Check_[DATE].log
  ```
- شامل اطلاعات:
  - وضعیت هر DNS تست شده
  - زمان پاسخ‌دهی
  - تشخیص هوشمند خطای 403
  - تنظیمات نهایی اعمال شده

### ⚠️ ملاحظات امنیتی
- اسکریپت به صورت open-source در GitHub قابل بررسی است
- هیچ داده‌ای به سرورهای خارجی ارسال نمی‌شود
- تغییرات DNS قابل بازگشت به حالت اولیه هستند

---

## 🔄 Alternative Methods
```powershell
# دانلود و اجرای دستی
curl -o dnsfix.ps1 https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1
Unblock-File .\dnsfix.ps1
.\dnsfix.ps1
```
