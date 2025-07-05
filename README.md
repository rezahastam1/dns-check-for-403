# ✅ PowerShell DNS Fix Script - DNS Check ابزار تغییر و رفع مشکل DNS در ویندوز
**Version:** 1.1.2  
**Author:** Reza Zarnegar  
**Website:** [https://github.com/rezazarnegar](https://github.com/rezazarnegar)
---

## 📝 English Description

> *(English users: scroll up or stay here)*

This PowerShell script fixes DNS problems in Windows, especially **403 Forbidden** errors when trying to access websites such as:

- https://developer.android.com  
- Google services  
- Android Studio, Firebase, Flutter SDKs  
- Blocked international resources in restricted networks  

**What it does:**

- Detects your current DNS settings
- Clears DNS cache
- Cycles through known DNS servers (Google, Cloudflare, local options)
- Checks connectivity to the target site
- Detects error 403 responses
- Automatically picks the first working DNS
- Reverts to DHCP if all fail
- Saves detailed log on Desktop

---

## 🌐 توضیحات فارسی

این اسکریپت پاورشل برای کاربرانی طراحی شده که هنگام باز کردن برخی سایت‌ها از جمله:

- سایت‌های گوگل  
- اندروید استودیو  
- Firebase یا Flutter SDK  
- یا هر سایتی که با ارور 403 مواجه می‌شود  

با مشکل مواجه هستند. این ابزار به صورت خودکار DNS سیستم شما را بررسی کرده، کش DNS را پاک می‌کند، بین چندین DNS معتبر (مانند گوگل، کلودفلر، رادار، بشکن و...) چرخش انجام می‌دهد و اولین DNS سالم را تنظیم می‌کند.

اگر هیچ‌کدام از DNSها پاسخ مناسب ندهند، سیستم به حالت DHCP بازگردانده می‌شود.

### ✅ امکانات اسکریپت:

- تشخیص DNS فعلی سیستم  
- پاکسازی کش DNS (Flush DNS)  
- بررسی ارور 403 در سایت مدنظر  
- چرخش خودکار بین DNSها تا یافتن بهترین  
- ذخیره گزارش کامل در دسکتاپ شما  
- کاملاً اتوماتیک و بدون نیاز به دخالت کاربر  

---

## 🧪 اجرای سریع با یک خط کد

```powershell
iwr https://raw.githubusercontent.com/rezahastam1/dns-check/main/dns-check.ps1 -UseBasicParsing | iex
