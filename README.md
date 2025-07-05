
## 🛠️ DNS Check for Error 403 - PowerShell Script

**Version:** 1.1.2
**Author:** Reza Zarnegar
**GitHub:** [rezahastam1](https://github.com/rezahastam1)
**Script Source:** [dns-check-for-403.ps1](https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1)

---

### 📌  Description

A **PowerShell script** designed for developers who are experiencing **403 Forbidden errors** when accessing websites such as:

* [https://developer.android.com](https://developer.android.com)
* **Google services** (Firebase, Flutter, Android Studio, etc.)
* Dev tools and resources blocked on restrictive networks (e.g., in Iran)

This tool automatically tests and configures working DNS servers to bypass DNS-related access issues.

---

### ✅ Features

* Detects current system DNS settings
* Flushes DNS cache
* Tests multiple global and regional DNS providers
* Pings and checks HTTP status of target sites
* Detects `403 Forbidden` responses
* Applies the first successful DNS automatically
* Falls back to **DHCP** if all DNS options fail
* Saves a detailed log report on the Desktop

---

### ▶️ One-Line Quick Execution

> 📌 **Copy and paste the line below into PowerShell (Run as Administrator):**

```
iwr "https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1" -UseBasicParsing | iex
```

⚠️ **Important**: You must **run PowerShell as Administrator** to allow DNS changes.

---

### 📄 Output

After execution, a log file will appear on your desktop:

```
DNS Check - YYYY-MM-DD.txt
```

This includes:

* Current and tested DNS servers
* HTTP response codes
* Final working DNS applied
* Operation result (Success/Failure)

---

## 🌐 راهنمای فارسی

### 📝 معرفی

این اسکریپت PowerShell برای توسعه‌دهندگانی طراحی شده که هنگام باز کردن سایت‌های زیر با خطای **403 Forbidden** روبرو می‌شوند:

* [https://developer.android.com](https://developer.android.com)
* سرویس‌های گوگل مانند Firebase، Android Studio، Flutter
* یا هر منبع توسعه‌دهنده‌ای که در شبکه‌های محدود مثل ایران فیلتر یا مسدود شده باشد

---

### ⚙️ امکانات

* شناسایی DNS فعلی سیستم
* پاک‌سازی کش DNS
* بررسی وضعیت اتصال سایت هدف و تشخیص ارور 403
* تست و چرخش بین DNSهای مطرح (Google, Cloudflare, Radar, Beshkan و...)
* انتخاب اولین DNS موفق و اعمال آن روی سیستم
* در صورت عدم موفقیت، بازگشت به DHCP
* ذخیره گزارش کامل روی دسکتاپ

---

### ▶️ روش اجرا

> 📌 **ابتدا PowerShell را با دسترسی مدیر (Administrator) اجرا کنید، سپس دستور زیر را کپی و پیست کنید:**

```
iwr "https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1" -UseBasicParsing | iex
```

⚠️ بدون دسترسی Administrator، اسکریپت امکان تغییر DNS را ندارد.

---

### 📄 گزارش خروجی

پس از اجرای اسکریپت، فایلی با نام مشابه زیر روی دسکتاپ شما ایجاد خواهد شد:

```
DNS Check - YYYY-MM-DD.txt
```

و شامل اطلاعات زیر است:

* DNS فعلی سیستم
* DNSهای تست‌شده
* وضعیت سایت‌ها
* تشخیص ارور 403
* DNS نهایی انتخاب‌شده
* نتیجه عملیات

---

### 🔗 منابع

| عنوان      | لینک                                                                                                      |
| ---------- | --------------------------------------------------------------------------------------------------------- |
| GitHub     | [مشاهده در GitHub](https://github.com/rezahastam1/dns-check-for-403)                                      |
| کد اسکریپت | [مشاهده سورس](https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1) |

---

### 👤 درباره نویسنده

**رضا زرنگار**
🎯 علاقه‌مند به توسعه ابزارهای کاربردی برای ویندوز و شبکه
🔗 GitHub: [rezahastam1](https://github.com/rezahastam1)

---

