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
| Storage    | nvme gen3x2 WD SN520 256 B+M (WWAN)              |
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
  * (bug) kadang suara hilang, workaround nya buka system setting > sound (magic suara lgsg ada)
* Wi‑Fi
* Bluetooth (partial)
  * TWS (work)
  * wireless keyboard/mouse (x)
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

Proyek ini dibuat dengan referensi dari **banyak sumber** dan kontribusi komunitas Hackintosh. Kredit dan apresiasi sebesar-besarnya untuk:

* **Acidanthera** — OpenCore Bootloader & ecosystem
* **Dortania Guide** — Dokumentasi dan panduan resmi Hackintosh
* **Hackintosh Community** — Forum, Discord, Reddit, dan berbagai sharing pengalaman

Referensi spesifik ThinkPad T480:
* **MultimediaLucario**
  https://github.com/MultimediaLucario/Lenovo-ThinkPad-T480
  (sebagai salah satu referensi utama konfigurasi Lenovo ThinkPad T480)

Tanpa dokumentasi, riset, dan eksperimen dari banyak pihak, setup ini tidak akan bisa mencapai stabilitas harian.


---

## ⚠️ Disclaimer

Gunakan repo ini **atas risiko sendiri**. Saya tidak bertanggung jawab atas kerusakan data atau hardware.

---

Happy Hackintoshing 🍎


## 📚 Dokumentasi Tambahan

Beberapa catatan dan panduan tambahan yang dipakai di setup ini:

- 🔌 [USB Mapping Guide](usbtool.md)
  Catatan proses USB mapping + tool yang dipakai.

- ⚡ [CPU Undervolt Notes](undervolt.md)
  Pengaturan undervolt, testing stabilitas, dan dampaknya ke suhu & baterai.

- 🧪 [Known Issues & Bugs](hackintosh-macos-issues.md)
  Daftar kendala Hackintosh (Sonoma / Sequoia), workaround, dan status issue.
