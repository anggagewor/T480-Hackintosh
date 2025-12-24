# T480 Hackintosh (macOS Sonoma)

Hackintosh setup untuk **Lenovo ThinkPad T480**, dibuat sebagai backup dan dokumentasi konfigurasi pribadi.
Repo ini fokus ke **stabilitas harian**, bukan eksperimen ekstrem.

---

## 📸 About This Mac

![About This Mac](assets/Screenshot%202025-12-24%20at%2012.09.29.png)

---

## 🖥️ Spesifikasi Laptop

| Komponen   | Detail                        |
| ---------- | ----------------------------- |
| Model      | Lenovo ThinkPad T480          |
| CPU        | Intel Core i5-8350U (4C / 8T) |
| iGPU       | Intel UHD Graphics 620        |
| RAM        | 32 GB DDR4                    |
| Storage    | m.2 SSD 512 GB               |
| Layar      | 14" FHD 1920x1080             |
| Audio      | Realtek (ALC series)          |
| Wi‑Fi      | Intel (Heliport - Sonoma)    |
| Bluetooth  | Intel Bluetooth               |
| Camera     | Internal Webcam               |
| Keyboard   | ThinkPad Keyboard (Backlight) |
| TrackPoint | Working                       |
| Touchpad   | Working                       |
| Ethernet   | Intel Ethernet                |

---

## 💿 macOS Info

* macOS Version: **Sonoma**
* Bootloader: **OpenCore**
* SMBIOS: **MacBookPro15,2** (subject to change)
* File System: **APFS**

---

## ✅ Working

* CPU Power Management
* Intel UHD 620 QE/CI
* Sleep & Wake
* Audio (Speaker & Jack)
* Wi‑Fi
* Bluetooth
* Ethernet
* USB Mapping
* Trackpad & TrackPoint
* Brightness Control
* Battery Indicator
* iServices (iMessage, FaceTime, App Store)

---

## ⚠️ Not Tested / Known Issues

* Thunderbolt (Not tested)
* Fingerprint Reader (Not supported in macOS)

---

## 📂 Repository Structure

```
T480-Hackintosh
├── EFI-{Version}
│   ├── OC
│   │   ├── ACPI
│   │   ├── Drivers
│   │   ├── Kexts
│   │   └── config.plist
├── assets
│   └── Screenshot 2025-12-24 at 12.09.29.png
└── README.md
```

---

## ⚙️ BIOS Settings (Recommended)

* Secure Boot: **Disabled**
* TPM: **Disabled**
* Intel SGX: **Disabled**
* CSM: **Disabled**
* SATA Mode: **AHCI**
* VT-d: **Disabled** (or enabled with proper patch)

---

## 📝 Notes

* EFI ini **spesifik untuk ThinkPad T480**
* Jangan langsung pakai SMBIOS & serial number — **generate sendiri**
* Gunakan sebagai **referensi atau base**, bukan plug-and-play

---

## 🙏 Credits

* Acidanthera (OpenCore)
* Dortania Guide
* Hackintosh Community

---

## ⚠️ Disclaimer

Gunakan repo ini **atas risiko sendiri**. Saya tidak bertanggung jawab atas kerusakan data atau hardware.

---

Happy Hackintoshing 🍎
