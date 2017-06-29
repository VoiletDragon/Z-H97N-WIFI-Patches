//DefinitionBlock ("", "SSDT", 2, "hack", "MCHC", 0x00000000)
//{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }
//}

