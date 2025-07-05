🛠️ DNS Check for Error 403 - PowerShell Script

Version: 1.1.2

Author: Reza Zarnegar

GitHub: rezahastam1

Short Link: https://B2n.ir/DNS-for-Error403


📌 English Description

A PowerShell script to fix DNS issues that may cause 403 Forbidden errors on websites such as:


https://developer.android.com

Google services (Firebase, Android Studio, Flutter, etc.)

Blocked resources or dev tools in restricted networks (e.g., in Iran)


✅ Features


Detects current system DNS settings

Clears DNS cache

Tries multiple DNS providers (Global & Regional)

Pings and checks HTTP status of target site

Detects 403 Forbidden responses

Automatically switches to the first working DNS

Falls back to DHCP if none succeed

Saves a full log to Desktop with test results



🧪 One-Line Execution

        
        powershell
        
    
  
      iwr https://B2n.ir/DNS-for-Error403 -UseBasicParsing | iex
    
    
  
  
⚠️ Important: Run PowerShell as Administrator so the script can change system DNS.

🗂️ Output Log File

After execution, a file like the following will be created on your Desktop:

        
        plaintext
        
    
  
      DNS Check - 2025-07-05.txt
    
    
  
  
It includes tested DNS servers, error logs, site response status, and the selected working DNS.


🌐 Persian Guide (راهنمای فارسی)

📝 معرفی

این اسکریپت پاورشل جهت رفع خطای 403 Forbidden در هنگام دسترسی به برخی وب‌سایت‌ها طراحی شده است. بسیاری از کاربران ایرانی هنگام باز کردن سایت‌هایی مثل:


سایت توسعه‌دهندگان اندروید: https://developer.android.com

ابزارهای گوگل مانند Firebase، Android Studio، Flutter

یا هر سایتی که در DNS داخل ایران دچار محدودیت است


با ارور 403 مواجه می‌شوند. این ابزار به صورت کاملاً خودکار DNS سیستم شما را بررسی و تنظیم می‌کند تا مشکل برطرف شود.

⚙️ ویژگی‌های اسکریپت


تشخیص DNS فعلی سیستم

پاک‌سازی کش DNS (Flush DNS)

بررسی اتصال و وضعیت سایت انتخاب‌شده

شناسایی ارور 403 در پاسخ سایت

چرخش بین DNSهای مطرح جهانی و ایرانی (مثل Google, Cloudflare, Radar, Bokhzar, Electro, Beshkan)

انتخاب اولین DNS موفق و تنظیم آن روی سیستم

در صورت عدم موفقیت، بازگشت به حالت DHCP

ثبت گزارش کامل روی دسکتاپ


▶️ نحوه اجرا


از منوی استارت، کلمه PowerShell را جستجو کنید.

روی Windows PowerShell راست‌کلیک کرده و گزینه Run as Administrator (اجرای به عنوان مدیر) را انتخاب کنید.

کد زیر را کپی کرده و در PowerShell پیست و اجرا کنید:


        
        powershell
        
    
  
      iwr https://B2n.ir/DNS-for-Error403 -UseBasicParsing | iex
    
    
  
  
⚠️ بدون دسترسی ادمین، اسکریپت قادر به تغییر DNS نخواهد بود.

📄 فایل گزارش خروجی

پس از اجرای اسکریپت، گزارشی با نامی مانند زیر روی دسکتاپ شما ایجاد خواهد شد:

        
        plaintext
        
    
  
      DNS Check - 2025-07-05.txt
    
    
  
  
و شامل موارد زیر است:


DNS فعلی سیستم

DNSهای تست‌شده

وضعیت پاسخ‌دهی سایت هدف

تشخیص ارور 403

DNS نهایی انتخاب‌شده

نتیجه نهایی و موفقیت یا شکست عملیات


🔗 لینک‌ها و منابع

عنوان	 | 	لینک
--------------
GitHub Repo	 | 	مشاهده در GitHub
فایل اسکریپت	 | 	dns-check-for-403.ps1
لینک اجرای کوتاه	 | 	https://B2n.ir/DNS-for-Error403
🔎 کلمات کلیدی برای جستجو در گوگل

رفع ارور 403, 403 forbidden ایران, پاورشل DNS, تغییر DNS ویندوز,

DNS برای Android Studio, مشکل باز نشدن سایت, flush dns, google dns powershell,

403 DNS error fix, پینگ اما سایت باز نمی‌شود

👤 درباره نویسنده

رضا زرنگر

🎯 علاقه‌مند به توسعه ابزارهای کاربردی برای ویندوز و شبکه

📍 GitHub: github.com/rezahastam1


