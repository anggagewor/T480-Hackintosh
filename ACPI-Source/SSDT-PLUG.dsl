/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-PLUG.aml, Thu Jan 29 21:13:40 2026
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000070 (112)
 *     Revision         0x02
 *     Checksum         0xC2
 *     OEM ID           "ZPSS"
 *     OEM Table ID     "CpuPlug"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20251212 (539300370)
 */
DefinitionBlock ("", "SSDT", 2, "ZPSS", "CpuPlug", 0x00003000)
{
    External (_PR_.PR00, ProcessorObj)

    Scope (\_PR.PR00)
    {
        If (_OSI ("Darwin"))
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x02)
                {
                    "plugin-type", 
                    One
                })
            }
        }
    }
}

