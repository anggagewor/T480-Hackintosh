# 💻 ThinkPad T480 Hackintosh Undervolt Log

Log ini mendokumentasikan hasil optimasi thermal dan performa menggunakan **VoltageShift** pada unit Lenovo ThinkPad T480.

## 📝 System Overview
- Model: Lenovo ThinkPad T480
- CPU: Intel Core i5-8250U (Kaby Lake-R)
- RAM: 32GB DDR4 Dual Channel
- iGPU: Intel UHD 620 (2048 MB VRAM Patch)
- SSD Speed: ~400-600 MB/s (PCIe x2 via SATA Express)

## ⚡ Stable Undervolt Settings
Berdasarkan stress test (PHPStorm Indexing + YouTube 4K), angka berikut adalah yang paling stabil (Sweet Spot):

| Component     | Offset | Status   |
| :------------ | :----- | :------- |
| CPU Voltage   | -80mv  | STABLE ✅ |
| CPU Cache     | -80mv  | STABLE ✅ |
| GPU Voltage   | -40mv  | STABLE ✅ |
| System Agency | 0mv    | DEFAULT  |

## 🌡️ Thermal Performance Result
- Idle/Light Task: ~45°C - 55°C
- Peak Load (Indexing): 71°C
- Average Load: 66°C - 70°C
- Max Power Draw: 14.22W @ 2.4 - 2.5 GHz
- Notes: Kipas jauh lebih tenang, tidak ada thermal throttling selama load 90%+.

## 🛠️ Commands Reference

### 1. Manual Test (Temporary)
sudo ./voltageshift offset -80 -40 -80 0 0 0

### 2. Make it Permanent (LaunchDaemon)
sudo ./voltageshift buildlaunchd -80 -40 -80 0 0 0 1 25 29 0 1

### 3. Verification
./voltageshift info

## 🚨 Emergency Recovery
Jika sistem gagal booting (Bootloop/Freeze), masuk ke Recovery Mode (Cmd+R), buka Terminal, lalu hapus file daemon:
rm /Volumes/[Your_Drive_Name]/Library/LaunchDaemons/com.sicreative.VoltageShift.plist

---
Last Updated: 2025-12-27