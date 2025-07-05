# DNS Check PowerShell Tool

A powerful and fully-automated PowerShell script to test and fix DNS issues on Windows.  
It clears DNS cache, rotates through known public and local DNS servers, detects 403 errors, and restores DNS automatically.

## 🔧 Features

- Detect current DNS configuration
- Flush DNS cache
- Rotate through DNS providers (Google, Cloudflare, Radar, Bokhzar, etc.)
- Detect 403 Forbidden errors from sites like `https://developer.android.com`
- Automatically apply working DNS
- Revert to DHCP if all DNS fail
- Save logs on Desktop
- One-liner execution

## ✅ How to Run (One-liner)

Paste this into PowerShell:

```powershell
iwr https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/dns-check.ps1 -UseBasicParsing | iex
