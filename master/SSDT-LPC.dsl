//DefinitionBlock ("", "SSDT", 1, "Dragon", "SSDT-LPC", 0x00003000)
//{
    Method (_SB.PCI0.LPCB._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x02)
        {
            "compatible", 
            "pci8086,8c4b"
        })
    }
//}

