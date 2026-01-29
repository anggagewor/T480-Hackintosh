/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-EC.aml, Thu Jan 29 21:13:40 2026
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000EB (235)
 *     Revision         0x02
 *     Checksum         0xA8
 *     OEM ID           "ZPSS"
 *     OEM Table ID     "EC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20251212 (539300370)
 */
DefinitionBlock ("", "SSDT", 2, "ZPSS", "EC", 0x00001000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.XSTA, MethodObj)    // 0 Arguments

    If ((CondRefOf (\_SB.PCI0.LPCB.EC.XSTA) && !CondRefOf (\_SB.PCI0.LPCB.EC._STA)))
    {
        Scope (\_SB.PCI0.LPCB.EC)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (\_SB.PCI0.LPCB.EC.XSTA ())
                }
            }
        }
    }
}

