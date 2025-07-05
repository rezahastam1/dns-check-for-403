# 🛠️ DNS Check for Error 403 - PowerShell Script

**Version:** 1.1.2  
**Author:** Reza Zarnegar  
**GitHub:** [rezahastam1](https://github.com/rezahastam1)  
**Short Link to Run:** [https://B2n.ir/DNS-for-Error403](https://B2n.ir/DNS-for-Error403)

---

## 📌 English Description

A PowerShell script to automatically fix DNS issues causing **403 Forbidden** errors on sites like:

- [https://developer.android.com](https://developer.android.com)  
- Google services (Firebase, Android Studio, Flutter, etc.)  
- Other blocked or restricted websites in certain networks

### ✅ Features:

- Detects current DNS
- Flushes DNS cache
- Iterates through global and Iranian DNS providers
- Pings target site & checks HTTP status
- Logs all actions to Desktop
- Sets the first working DNS
- Reverts to DHCP if none work

### 🧪 Quick Run (One-Liner)

```powershell
iwr https://B2n.ir/DNS-for-Error403 -UseBasicParsing | iex



🌐 راهنمای فارسی
📋 این اسکریپت چه کاری انجام می‌دهد؟
ابزاری ساده و خودکار برای حل مشکل باز نشدن سایت‌هایی مانند:

اندروید استودیو، Firebase، Flutter

وب‌سایت‌های گوگل

خطای رایج 403 Forbidden در برخی شبکه‌ها یا DNSهای ایران

🔧 قابلیت‌ها:
شناسایی DNS فعلی

پاک کردن کش DNS (Flush)

تست چندین DNS معتبر (گوگل، کلودفلر، ایرانی و بین‌المللی)

بررسی اتصال به سایت مورد نظر

تشخیص ارور 403

تنظیم بهترین DNS

بازگشت به حالت DHCP در صورت عدم موفقیت

ذخیره گزارش کامل در دسکتاپ

🧪 اجرای سریع اسکریپت:
در منوی استارت، PowerShell را جستجو کن

روی آن راست‌کلیک کرده و Run as Administrator را انتخاب کن

دستور زیر را در محیط PowerShell وارد کن و Enter بزن:

powershell
Copy
Edit
iwr https://B2n.ir/DNS-for-Error403 -UseBasicParsing | iex
🗂️ خروجی فایل لاگ
پس از اجرا، گزارشی با نامی مشابه زیر روی دسکتاپ ساخته می‌شود:

sql
Copy
Edit
DNS Check - 2025-07-05.txt
و شامل اطلاعات دقیق تست‌ها، DNS انتخاب‌شده، ارورها و وضعیت اتصال است.
