//DefinitionBlock ("", "SSDT", 2, "APPLE ", "SSDT-HDE", 0x00001000)
//{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Scope (\_SB.PCI0.HDEF)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x0E)
                {
                    "AAPL,slot-name", 
                    "Built In", 
                    "name", 
                    "Realtek Audio Controller", 
                    "model", 
                    Buffer (0x20)
                    {
                        "Realtek ALC892 Audio Controller"
                    }, 

                    "device_type", 
                    Buffer (0x11)
                    {
                        "Audio Controller"
                    }, 

                    "layout-id", 
                    Buffer (0x04)
                    {
                         0x03, 0x00, 0x00, 0x00                         
                    }, 

                    "PinConfigurations", 
                    Buffer (Zero) {}, 
                    "hda-gfx", 
                    Buffer (0x0A)
                    {
                        "onboard-1"
                    }
                })
            }
        }
    }
//}

