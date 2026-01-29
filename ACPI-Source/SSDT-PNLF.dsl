/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-PNLF.aml, Thu Jan 29 21:13:40 2026
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008D (141)
 *     Revision         0x02
 *     Checksum         0x58
 *     OEM ID           "ZPSS"
 *     OEM Table ID     "PNLF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20251212 (539300370)
 */
DefinitionBlock ("", "SSDT", 2, "ZPSS", "PNLF", 0x00000000)
{
    External (_SB_.PCI0.GFX0, DeviceObj)

    Device (\_SB.PCI0.GFX0.PNLF)
    {
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, 0x10)  // _UID: Unique ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0B)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

