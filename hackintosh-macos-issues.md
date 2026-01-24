# 🧪 Catatan Kendala Hackintosh

Dokumen ini berisi rangkuman kendala yang gue alami saat pakai Hackintosh di beberapa versi macOS, lengkap sama gejala dan workaround (kalau ada).

---

## 🍎 macOS Sonoma

### 🔵 Bluetooth
**Kondisi:**
- Keyboard Bluetooth ❌
- Mouse Bluetooth ❌  
- TWS / Earbuds Bluetooth ✅  
- Speaker Bluetooth ✅  
- Controller PS4 Bluetooth ✅  

**Catatan:**
- Bluetooth nyala dan bisa pairing
- Device HID (keyboard & mouse) gagal dipakai
- Device audio & controller aman

---

### 🔊 Audio / Sound
**Masalah:**
- Suara suka **tiba-tiba hilang**
- Padahal sebelumnya normal

**Workaround:**
1. Buka **System Settings**
2. Masuk ke **Sound**
3. Setelah dibuka, suara langsung normal lagi (tanpa ngapa-ngapain)

> ⚠️ Fix sementara, bukan solusi permanen

---

## 🍏 macOS Sequoia

### 📶 Wi-Fi
**Masalah:**
- Wi-Fi **ngga stabil**
- Kadang konek, kadang drop

---

### 🔵 Bluetooth
**Kondisi sama persis kayak Sonoma:**
- Keyboard Bluetooth ❌
- Mouse Bluetooth ❌  
- TWS / Speaker / Controller PS4 ✅  

---

### 😴 Sleep Issue (Wi-Fi)
**Masalah:**
- Setelah **sleep**, Wi-Fi jadi **ngga bisa dipakai**
- Toggle Wi-Fi ngga ngefek
- Sudah coba pakai **HeliPort**, hasilnya sama aja

**Status:**
- ❌ Belum ketemu workaround

---

## 📝 Catatan Tambahan
- Kendala Bluetooth cenderung konsisten antar versi
- Masalah Wi-Fi makin kerasa di Sequoia
- Kemungkinan besar related ke:
  - Kext Wi-Fi / Bluetooth
  - Power management
  - Sleep / Wake handling

---

## 🔧 To Do / Next Investigation
- [ ] Cek ulang mapping USB (khusus HID Bluetooth)
- [ ] Bandingin log sebelum & sesudah sleep
- [ ] Eksperimen kext Wi-Fi / Bluetooth lain
- [ ] Coba disable fitur power saving tertentu

---

_Last updated: _(isi sendiri nanti)_  
