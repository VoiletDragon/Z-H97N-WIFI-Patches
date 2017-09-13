//DefinitionBlock ("", "SSDT", 2, "hack", "hack", 0x00000000)
//{
    Name (_SB.PCI0.HDEF.RMCF, Package (0x06)
    {
        "CodecCommander", 
        Package (0x02)
        {
            "Disable", 
            ">y"
        }, 

        "CodecCommanderPowerHook", 
        Package (0x02)
        {
            "Disable", 
            ">y"
        }, 

        "CodecCommanderProbeInit", 
        Package (0x04)
        {
            "Version", 
            0x00020600, 
            "10ec_0892_HDA_8086", 
            Package (0x02)
            {
                "PinConfigDefault", 
                Package (0x04)
                {
                    Package (0x00) {}, 
                    Package (0x04)
                    {
                        "LayoutID", 
                        One, 
                        "PinConfigs", 
                        Package (0x17)
                        {
                            Package (0x00) {}, 
                            0x11, 
                            0x400000F0, 
                            0x14, 
                            0x01114010, 
                            0x15, 
                            0x01011020, 
                            0x16, 
                            0x01016030, 
                            0x17, 
                            0x400000F0, 
                            0x18, 
                            0x90A19040, 
                            0x19, 
                            0x02819050, 
                            0x1A, 
                            0x01813060, 
                            0x1B, 
                            0x02214070, 
                            0x1E, 
                            0x014B6190, 
                            0x1F, 
                            0x400000F0
                        }
                    }, 

                    Package (0x04)
                    {
                        "LayoutID", 
                        0x02, 
                        "PinConfigs", 
                        Package (0x17)
                        {
                            Package (0x00) {}, 
                            0x11, 
                            0x400000F0, 
                            0x14, 
                            0x01114010, 
                            0x15, 
                            0x400000F0, 
                            0x16, 
                            0x400000F0, 
                            0x17, 
                            0x400000F0, 
                            0x18, 
                            0x90019040, 
                            0x19, 
                            0x02819060, 
                            0x1A, 
                            0x01013050, 
                            0x1B, 
                            0x02214070, 
                            0x1E, 
                            0x014B6190, 
                            0x1F, 
                            0x400000F0
                        }
                    }, 

                    Package (0x04)
                    {
                        "LayoutID", 
                        0x03, 
                        "PinConfigs", 
                        Package (0x17)
                        {
                            Package (0x00) {}, 
                            0x11, 
                            0x400000F0, 
                            0x14, 
                            0x01114010, 
                            0x15, 
                            0x01011020, 
                            0x16, 
                            0x400000F0, 
                            0x17, 
                            0x400000F0, 
                            0x18, 
                            0x90A19040, 
                            0x19, 
                            0x02819050, 
                            0x1A, 
                            0x01813060, 
                            0x1B, 
                            0x02214070, 
                            0x1E, 
                            0x014B6190, 
                            0x1F, 
                            0x400000F0
                        }
                    }
                }
            }
        }
    })
//}

