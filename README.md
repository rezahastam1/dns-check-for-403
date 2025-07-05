# DNS Resolver Tool v1.1.2

## 📝 Technical Specifications
**Developer:** Reza Zarnegar  
**Platform:** Windows PowerShell 5.1+  
**License:** MIT  
**Source:** [GitHub Repository](https://github.com/rezahastam1/dns-check-for-403)  
**Compatibility:** Windows 10/11 (Admin rights required)

## 🚀 Quick Start (English)
```powershell
# Run as Administrator:
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"irm 'https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1' | iex`"" -Verb RunAs
```

## 🔧 Key Features
- Automatic DNS optimization
- 403 Error resolution for developer tools
- Multi-server latency testing
- Failover protection
- Encrypted DNS support (DoH)

## 📊 فارسی: راهنمای فوری
```powershell
# اجرا با دسترسی مدیریت:
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"irm 'https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1' | iex`"" -Verb RunAs
```

## ⚙️ قابلیت‌های اصلی
- تشخیص خودکار بهترین DNS
- رفع خطای 403 برای ابزارهای توسعه
- تست هوشمند سرعت سرورها
- پشتیبان‌گیری خودکار
- پشتیبانی از DNS رمزنگاری شده

## 📌 Notes
- Execution time: Typically 30-60 seconds
- Logs saved to: `%USERPROFILE%\Desktop\DNS_Report_<date>.txt`
- Safe for enterprise environments
- No internet traffic logging

**Developer Contact:** [rezahastam1@github](https://github.com/rezahastam1)  
**Last Updated:** 2025-07-06
