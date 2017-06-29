//DefinitionBlock ("", "SSDT", 2, "hack", "GFX0_HDA", 0x00000000)
//{
    External (_SB_.PCI0.PEG0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.GFX0, DeviceObj)    // (from opcode)
    External (GFX0, DeviceObj)    // Warning: Unknown object

    Scope (_SB.PCI0.PEG0)
    {
        Scope (GFX0)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                {
                    "@0,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@1,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@2,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@3,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@4,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "@5,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                         
                    }, 

                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-2"
                    }
                })
            }
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x02)
                {
                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-2"
                    }
                })
            }
        }
    }
//}

