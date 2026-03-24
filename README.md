# 🔧 BOX AUTOPART

> **Auto Salvage Inventory & Business Management System for Windows**

A professional desktop application built for auto salvage businesses to manage parts inventory, track sales, calculate profits, and sync with eBay — all in one place.

---

<img width="1366" height="728" alt="Screenshot 2026-03-24 135639" src="https://github.com/user-attachments/assets/9e0f50d8-5e72-4522-9715-c35f6f16c420" />
<img width="1366" height="728" alt="Screenshot 2026-03-24 135655" src="https://github.com/user-attachments/assets/1cec72d3-0f84-4ba6-b2f3-2c3b08833b03" />
<img width="1366" height="728" alt="Screenshot 2026-03-24 135705" src="https://github.com/user-attachments/assets/d70cb2ab-1b10-465c-8c7c-3fbfcfd00c9f" />
<img width="1366" height="728" alt="Screenshot 2026-03-24 135715" src="https://github.com/user-attachments/assets/f9bae11a-87df-4a3b-8435-fe0fea88cc47" />
<img width="1366" height="728" alt="Screenshot 2026-03-24 135725" src="https://github.com/user-attachments/assets/d67b2182-f1f1-40c9-938f-a8bb9158e25b" />
<img width="1366" height="728" alt="Screenshot 2026-03-24 135857" src="https://github.com/user-attachments/assets/189385ae-4701-4f39-858b-45b12aabb8c1" />

---

## Download & Install

👉 **[Download Latest Installer — v1.0.0](../../releases/latest)**

**System Requirements:**
- Windows 10 or later (64-bit)
- MySQL Server 8.0 or later
- .NET 8 Runtime *(included in installer)*

---

## ⚙️ Setup Guide

### Step 1 — Install MySQL Server
Download and install MySQL Server 8.0+ from:
👉 https://dev.mysql.com/downloads/mysql/

### Step 2 — Set Up the Database

1. Download the file **`AutoSalvage.sql`** from this repository
2. Open **MySQL Workbench** (or any MySQL client)
3. Connect to your MySQL server
4. Go to **Server → Data Import**
5. Select **"Import from Self-Contained File"**
6. Browse and select the downloaded `AutoSalvage.sql` file
7. Click **"Start Import"**

Or run this command in MySQL terminal:
```bash
mysql -u root -p < AutoSalvage.sql
```

### Step 3 — Install BOX AUTOPART
Run the downloaded `BOX_AUTOPART_Setup_v1.0.0.exe` and follow the installation wizard.

### Step 4 — Connect the Database ⚠️ IMPORTANT

> **You MUST connect the database before using the app — otherwise you will get errors on every page.**

1. Open the app
2. Go to **Settings** (left sidebar)
3. Scroll to the **Database Connection** section
4. Click **"Connect Database"**
5. Enter your MySQL credentials:
   - **Server:** `localhost` *(or your MySQL server address)*
   - **Port:** `3306`
   - **Database Name:** `AutoSalvageDB`
   - **Username:** `root` *(or your MySQL username)*
   - **Password:** your MySQL password
6. Click **"Test Connection"** — make sure it shows ✅ Connected
7. Click **"Save Connection"**

The app will now load your data correctly.

---

## Features

| Feature | Description |
|---|---|
| **Inventory Management** | Add vehicles, track parts, manage stock status |
| **Sales Tracking** | Record sales across platforms with full profit breakdown |
| **Financial Reports** | Revenue, costs, margins, shipping analysis — exportable to CSV |
| **eBay Integration** | OAuth 2.0 sync — auto-renews every 2 hours for 18 months |
| **Profit Calculator** | Estimate ROI before buying any vehicle or part |
| **Dashboard** | Live stats — inventory count, revenue, net profit, monthly sales |
| **Database Connection** | Connect your own MySQL instance via Settings |

---

## Screenshots

*Coming soon*

---

## eBay Integration Setup *(Optional)*

To sync your eBay orders automatically:

1. Go to **Settings → eBay Integration → Connect eBay**
2. Enter your **App ID** and **Cert ID** from [developer.ebay.com](https://developer.ebay.com)
3. Enter your **RuName** from the User Tokens page
4. Click **"Connect eBay Account"** — your browser will open eBay login
5. Sign in with your seller account → approve access
6. Copy the redirect URL from your browser and paste it back
7. Done — tokens renew silently forever (18 months)

---

## Common Issues

**App shows errors on startup or pages are blank**
→ You haven't connected the database yet. Go to Settings → Database Connection and set up your MySQL credentials.

**"Cannot connect" on database test**
→ Make sure MySQL Server is running. Check your password and that the `AutoSalvageDB` database was imported correctly.

**eBay sync not working**
→ Go to Settings → eBay Integration and reconnect your account.

---

## Tech Stack

- **Language:** C# / .NET 8
- **UI Framework:** WPF (Windows Presentation Foundation)
- **Database:** MySQL 8.0
- **eBay API:** REST API with OAuth 2.0
- **Libraries:** MySql.Data, Newtonsoft.Json, CommunityToolkit.Mvvm

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

##Built By

**Sarang Abbasi** — Custom software development for businesses.

Available for freelance projects — [Connect on LinkedIn](https://www.linkedin.com/in/sarang-abbasi-6a7a30232)
