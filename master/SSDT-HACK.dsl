//DefinitionBlock ("", "SSDT", 1, "hack", "XOSI", 0x00000000)
//{
    Method (XOSI, 1, NotSerialized)
    {
        Name (WINV, Package (0x06)
        {
            "Windows", 
            "Windows 2001", 
            "Windows 2001 SP2", 
            "Windows 2006", 
            "Windows 2006 SP1", 
            "Windows 2009"
        })
        Return (LNotEqual (Ones, Match (WINV, MEQ, Arg0, MTR, Zero, Zero)))
    }
//}

