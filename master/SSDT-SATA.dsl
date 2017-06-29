//DefinitionBlock ("", "SSDT", 2, "APPLE ", "SSDT-LPC", 0x00001000)
//{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SATA, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Scope (\_SB.PCI0.SATA)
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
                    "Intel AHCI Controller", 
                    "model", 
                    Buffer (0x2E)
                    {
                        "Intel 9 Series Chipset Family SATA Controller"
                    }, 

                    "device_type", 
                    Buffer (0x10)
                    {
                        "AHCI Controller"
                    }, 

                    "device-id", 
                    Buffer (0x05)
                    {
                         0x83, 0x8C, 0x00, 0x00, 0x00                   
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,8c83"
                    }
                })
            }
        }
    }
//}

