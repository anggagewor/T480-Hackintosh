DefinitionBlock ("", "SSDT", 2, "T480", "IWFR", 0x00000000)
{
    External (_SB_.PCI0.RP07, DeviceObj)
    External (_SB_.PCI0.RP07.PXSX, DeviceObj)

    Scope (_SB.PCI0.RP07.PXSX)
    {
        Method (_PS0, 0, Serialized)
        {
            Store ("IWFR: WiFi Power ON", Debug)
        }

        Method (_PS3, 0, Serialized)
        {
            Store ("IWFR: WiFi Power OFF", Debug)
        }

        Method (WFRS, 0, Serialized)
        {
            Store ("IWFR: Reset Intel WiFi", Debug)
            _PS3 ()
            Sleep (50)
            _PS0 ()
        }
    }
}
