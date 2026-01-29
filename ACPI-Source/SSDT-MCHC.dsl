/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-MCHC.aml, Thu Jan 29 21:13:40 2026
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000069 (105)
 *     Revision         0x02
 *     Checksum         0x28
 *     OEM ID           "ZPSS"
 *     OEM Table ID     "MCHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20251212 (539300370)
 */
DefinitionBlock ("", "SSDT", 2, "ZPSS", "MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (\_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

