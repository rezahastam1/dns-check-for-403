Here's the updated version with corrected links:

🛠️ DNS Check for Error 403 - PowerShell Script

Version: 1.1.2  
Author: Reza Zarnegar  
GitHub: rezahastam1  
Direct Script Link: [https://github.com/rezahastam1/dns-check-for-403/blob/main/dns-check-for-403.ps1](https://github.com/rezahastam1/dns-check-for-403/blob/main/dns-check-for-403.ps1)

---

📌 English Description  
A PowerShell script to fix DNS issues that may cause 403 Forbidden errors on websites such as:  
- [https://developer.android.com](https://developer.android.com)  
- Google services (Firebase, Android Studio, Flutter, etc.)  
- Blocked resources or dev tools in restricted networks (e.g., in Iran)

✅ Features  
- Detects current system DNS settings  
- Clears DNS cache  
- Tries multiple DNS providers (Global & Regional)  
- Pings and checks HTTP status of target site  
- Detects 403 Forbidden responses  
- Automatically switches to the first working DNS  
- Falls back to DHCP if none succeed  
- Saves a full log to Desktop with test results  

🧪 One-Line Execution  
```powershell
iwr "https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1" -UseBasicParsing | iex```

⚠️ Important: Run PowerShell as Administrator so the script can change system DNS.

---

🌐 Persian Guide (راهنمای فارسی)  

📝 معرفی  
این اسکریپت جهت رفع خطای 403 Forbidden در سایت‌هایی مانند:  
- [سایت توسعه‌دهندگان اندروید](https://developer.android.com)  
- ابزارهای گوگل (Firebase، Android Studio، Flutter)  
- سایت‌های محدود شده در DNS ایران  

⚙️ ویژگی‌ها  
- تشخیص و تنظیم خودکار DNS  
- تست چندین DNS جهانی و ایرانی  
- ثبت گزارش کامل در دسکتاپ  

▶️ نحوه اجرا  
1. PowerShell را با حقوق Administrator باز کنید  
2. این دستور را اجرا کنید:  
```powershell
iwr "https://raw.githubusercontent.com/rezahastam1/dns-check-for-403/main/dns-check-for-403.ps1" -UseBasicParsing | iex```

🔗 لینک‌های مهم:  
- [مخزن GitHub](https://github.com/rezahastam1/dns-check-for-403)  
- [دانلود مستقیم اسکریپت](https://github.com/rezahastam1/dns-check-for-403/blob/main/dns-check-for-403.ps1)  

👤 درباره نویسنده:  
رضا زرنگار - [صفحه GitHub](https://github.com/rezahastam1)  

توجه: در صورت بروز مشکل در اجرا، می‌توانید اسکریپت را مستقیماً از GitHub دانلود و اجرا نمایید.
