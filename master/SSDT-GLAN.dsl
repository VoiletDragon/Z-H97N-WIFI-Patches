//DefinitionBlock ("", "SSDT", 2, "APPLE ", "SSDT-GLA", 0x00001000)
//{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GLAN, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Scope (\_SB.PCI0.GLAN)
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

                Return (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    "Built In", 
                    "name", 
                    "Realtek Ethernet Controller", 
                    "model", 
                    Buffer (0x28)
                    {
                        "Intel I217-V Gigabit Network Controller"
                    }, 

                    "device_type", 
                    Buffer (0x14)
                    {
                        "Ethernet Controller"
                    }, 

                    "built-in", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                         
                    }, 

                    "location", 
                    Buffer (0x04)
                    {
                        "2"
                    }
                })
            }
        }
    }
//}

