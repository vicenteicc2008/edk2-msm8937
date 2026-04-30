/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of MSM8909Pkg/AcpiTables/DSDT.aml, Mon Apr 27 12:09:55 2026
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00015587 (87431)
 *     Revision         0x02
 *     Checksum         0x2F
 *     OEM ID           "QCOMM "
 *     OEM Table ID     "MSM8909 "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x05000000 (83886080)
 */
DefinitionBlock ("", "DSDT", 2, "QCOMM ", "MSM8937 ", 0x00000003)
{
    External (RMTB, IntObj)
    External (RMTX, IntObj)

    Scope (\_SB)
    {
        Name (SOID, 0x000000F5)
        Name (SIDS, "MSM8937")
        Name (SIDV, 0x00020000)
        Name (SVMJ, 0x0002)
        Name (SVMI, 0x0000)
        Name (SDFE, 0x003A)
        Name (SFES, "893700000000000")
        Name (SIDM, 0xFFFF00FF)
        Name (NCPU, "8")
        Name (PSCI, "000")
        Device (GIO0)
        {
            Name (_HID, "QCOM2405")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01000000,         // Address Base
                        0x00300000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                })
                Return (RBUF) /* \_SB_.GIO0._CRS.RBUF */
            }

            Method (OFNI, 0, NotSerialized)
            {
                Name (RBUF, Buffer (0x02)
                {
                    "z"
                })
                Return (RBUF) /* \_SB_.GIO0.OFNI.RBUF */
            }
        }

        Device (CPU0)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (CPU1)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
        }

        Device (CPU2)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
        }

        Device (CPU3)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
        }

        Device (CPU4)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
        }

        Device (CPU5)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
        }

        Device (CPU6)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
        }

        Device (CPU7)
        {
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
        }

        Device (ATCU)
        {
            Name (_HID, "QCOM2400")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.GTCU
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01E00000,         // Address Base
                        0x00040000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000088,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000089,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000008A,
                    }
                })
            }

            Method (GUID, 0, NotSerialized)
            {
                Return (ToUUID ("36079ae4-78e8-452d-af50-0cff78b2f1ca") /* Unknown UUID */)
            }

            Method (CLID, 0, NotSerialized)
            {
                Return (Package (0x01)
                {
                    Package (0x03)
                    {
                        ToUUID ("c461b828-b8ad-4113-939a-8934272f9102") /* Unknown UUID */, 
                        ToUUID ("c00de5a5-e6e0-4dd7-b8c3-2b71ab6fca15") /* Unknown UUID */, 
                        ToUUID ("de2eaa3d-0fa5-45e9-ac9d-a494c6c04d7c") /* Unknown UUID */
                    }
                })
            }

            Method (CBNO, 0, NotSerialized)
            {
                Name (BUFF, Buffer (One)
                {
                     0x20                                             //  
                })
                Return (BUFF) /* \_SB_.ATCU.CBNO.BUFF */
            }

            Method (CBMA, 0, NotSerialized)
            {
                Return (Buffer (0x03)
                {
                     0x04, 0x01, 0x02                                 // ...
                })
            }

            Method (CNTX, 0, NotSerialized)
            {
                Return (Package (0x03)
                {
                    Package (0x08)
                    {
                        0x05, 
                        Zero, 
                        0x13, 
                        One, 
                        0x14, 
                        One, 
                        0x15, 
                        One
                    }, 

                    Package (0x02)
                    {
                        0x03, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x04, 
                        Zero, 
                        0x12, 
                        One
                    }
                })
            }

            Method (OFFI, 0, NotSerialized)
            {
                Return (Buffer (0x06)
                {
                     0x00, 0x01, 0x02, 0x03, 0x04, 0x20               // ..... 
                })
            }

            Method (S2CB, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Package (0x04)
                    {
                        Zero, 
                        Zero, 
                        0x7C00, 
                        0x02
                    }, 

                    Package (0x04)
                    {
                        One, 
                        One, 
                        0x7C00, 
                        0x06
                    }
                })
            }

            Method (ISTZ, 0, NotSerialized)
            {
                Return (Buffer (One)
                {
                     0x01                                             // .
                })
            }

            Method (VRTO, 0, NotSerialized)
            {
                Return (Buffer (One)
                {
                     0x01                                             // .
                })
            }
        }

        Device (GTCU)
        {
            Name (_HID, "QCOM2400")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01C40000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000111,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000112,
                    }
                })
            }

            Method (GUID, 0, NotSerialized)
            {
                Return (ToUUID ("53191eb7-5909-4972-8f7c-7e47b450be94") /* Unknown UUID */)
            }

            Method (CLID, 0, NotSerialized)
            {
                Return (Package (0x01)
                {
                    Package (0x01)
                    {
                        ToUUID ("9833c712-3292-4ffb-b0f4-2bd20e1f7f66") /* Unknown UUID */
                    }
                })
            }

            Method (CBNO, 0, NotSerialized)
            {
                Name (BUFF, Buffer (One)
                {
                     0x04                                             // .
                })
                Return (BUFF) /* \_SB_.GTCU.CBNO.BUFF */
            }

            Method (CBMA, 0, NotSerialized)
            {
                Return (Buffer (One)
                {
                     0x02                                             // .
                })
            }

            Method (CNTX, 0, NotSerialized)
            {
                Return (Package (0x01)
                {
                    Package (0x04)
                    {
                        One, 
                        Zero, 
                        0x02, 
                        Zero
                    }
                })
            }

            Method (OFFI, 0, NotSerialized)
            {
                Return (Buffer (0x06)
                {
                     0x00, 0x01, 0x02, 0x03, 0x04, 0x08               // ......
                })
            }

            Method (S2CB, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Package (0x04)
                    {
                        Zero, 
                        Zero, 
                        0x7C00, 
                        One
                    }, 

                    Package (0x04)
                    {
                        One, 
                        One, 
                        0x7C00, 
                        0x02
                    }
                })
            }

            Method (ISTZ, 0, NotSerialized)
            {
                Return (Buffer (One)
                {
                     0x01                                             // .
                })
            }

            Method (VRTO, 0, NotSerialized)
            {
                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Device (BAM1)
        {
            Name (_HID, "QCOM2401")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00704000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000EF,
                    }
                })
                Return (RBUF) /* \_SB_.BAM1._CRS.RBUF */
            }
        }

        Device (BAM3)
        {
            Name (_HID, "QCOM2401")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x07884000,         // Address Base
                        0x00023000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000010E,
                    }
                })
                Return (RBUF) /* \_SB_.BAM3._CRS.RBUF */
            }
        }

        Device (BAMC)
        {
            Name (_HID, "QCOM2401")  // _HID: Hardware ID
            Name (_UID, 0x0C)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x078C4000,         // Address Base
                        0x00015000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000A7,
                    }
                })
                Return (RBUF) /* \_SB_.BAMC._CRS.RBUF */
            }
        }

        Device (BAME)
        {
            Name (_HID, "QCOM2401")  // _HID: Hardware ID
            Name (_UID, 0x0E)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x04044000,         // Address Base
                        0x00019000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000003D,
                    }
                })
                Return (RBUF) /* \_SB_.BAME._CRS.RBUF */
            }
        }

        Device (BAMF)
        {
            Name (_HID, "QCOM2401")  // _HID: Hardware ID
            Name (_UID, 0x0F)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x07984000,         // Address Base
                        0x00019000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000A4,
                    }
                })
                Return (RBUF) /* \_SB_.BAMF._CRS.RBUF */
            }
        }

        Device (SCM0)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_HID, "QCOM2402")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (TREE)
        {
            Name (_HID, "QCOM24BA")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (I2C1)
        {
            Name (_HID, "QCOM240E")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.BAM3, 
                \_SB.PEP0
            })
            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x09))
                {
                    AVBL = Arg1
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x078B5000,         // Address Base
                        0x00000600,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000007F,
                    }
                })
                Return (RBUF) /* \_SB_.I2C1._CRS.RBUF */
            }

            Method (FNOC, 0, NotSerialized)
            {
                Name (RBUF, Buffer (0x0E)
                {
                    /* 0000 */  0x01, 0x01, 0x00, 0x40, 0x88, 0x07, 0x05, 0x04,  // ...@....
                    /* 0008 */  0x00, 0x04, 0x00, 0xF8, 0x24, 0x01               // ....$.
                })
                Return (RBUF) /* \_SB_.I2C1.FNOC.RBUF */
            }
        }

        Device (I2C2)
        {
            Name (_HID, "QCOM240E")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.BAM3, 
                \_SB.PEP0
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x078B6000,         // Address Base
                        0x00000600,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000080,
                    }
                })
                Return (RBUF) /* \_SB_.I2C2._CRS.RBUF */
            }

            Method (FNOC, 0, NotSerialized)
            {
                Name (RBUF, Buffer (0x0E)
                {
                    /* 0000 */  0x02, 0x01, 0x00, 0x40, 0x88, 0x07, 0x07, 0x06,  // ...@....
                    /* 0008 */  0x00, 0x04, 0x00, 0xF8, 0x24, 0x01               // ....$.
                })
                Return (RBUF) /* \_SB_.I2C2.FNOC.RBUF */
            }
        }

        Device (I2C5)
        {
            Name (_HID, "QCOM240E")  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.BAM3, 
                \_SB.PEP0
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x078B9000,         // Address Base
                        0x00000600,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000083,
                    }
                })
                Return (RBUF) /* \_SB_.I2C5._CRS.RBUF */
            }

            Method (FNOC, 0, NotSerialized)
            {
                Name (RBUF, Buffer (0x0E)
                {
                    /* 0000 */  0x05, 0x01, 0x00, 0x40, 0x88, 0x07, 0x0D, 0x0C,  // ...@....
                    /* 0008 */  0x00, 0x04, 0x00, 0xF8, 0x24, 0x01               // ....$.
                })
                Return (RBUF) /* \_SB_.I2C5.FNOC.RBUF */
            }
        }

        Device (SDC1)
        {
            Name (_HID, "QCOM2466")  // _HID: Hardware ID
            Name (_CID, "ACPIQCOM2466")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x07824900,         // Address Base
                        0x00000200,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000009B,
                    }
                })
                Return (RBUF) /* \_SB_.SDC1._CRS.RBUF */
            }

            Device (EMMC)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (0x08)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SDC2)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.GIO0
            })
            Name (_HID, "QCOM2466")  // _HID: Hardware ID
            Name (_CID, "ACPIQCOM2466")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x07864900,         // Address Base
                        0x00000200,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000009D,
                    }
                    GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x7530,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0026
                        }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x01)  // Vendor Data
                        {
                            0x01
                        })
                        {   // Pin list
                            0x0026
                        }
                })
                Return (RBUF) /* \_SB_.SDC2._CRS.RBUF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (ABD)
        {
            Name (_HID, "QCOM2431")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            OperationRegion (ROP1, GenericSerialBus, Zero, 0x0100)
            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x09))
                {
                    AVBL = Arg1
                }
            }
        }

        Name (ESNL, 0x14)
        Name (DBFL, 0x17)
        Device (PMIC)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.SPMI
            })
            Name (_HID, "QCOM2455")  // _HID: Hardware ID
            Method (PMCF, 0, NotSerialized)
            {
                Name (CFG0, Package (0x02)
                {
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        One
                    }
                })
                Return (CFG0) /* \_SB_.PMIC.PMCF.CFG0 */
            }
        }

        Device (PM01)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PMIC
            })
            Name (_HID, "QCOM2458")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000DE,
                    }
                })
                Return (RBUF) /* \_SB_.PM01._CRS.RBUF */
            }

            Method (PMIO, 0, NotSerialized)
            {
                Name (CFG0, Package (0x0B)
                {
                    Zero, 
                    Zero, 
                    0x1040, 
                    0x40, 
                    0x04, 
                    0xC0, 
                    0x04, 
                    0xA0, 
                    0x02000000, 
                    0x01A00000, 
                    Zero
                })
                Return (CFG0) /* \_SB_.PM01.PMIO.CFG0 */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.PM01._DSM._T_0 */
                    If ((_T_0 == ToUUID ("4f248f40-d5e2-499f-834c-27758ea1cd3f") /* GPIO Controller */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (Package (0x04)
                                {
                                    0x40, 
                                    0x41, 
                                    0x1001, 
                                    0x1002
                                })
                            }
                            Else
                            {
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Break
                }
            }
        }

        Device (PMBT)
        {
            Name (_HID, "QCOM2453")  // _HID: Hardware ID
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PMIC, 
                \_SB.ADC1, 
                \_SB.BMSV
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, Exclusive, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0090
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x009A
                        }
                })
                Return (RBUF) /* \_SB_.PMBT._CRS.RBUF */
            }

            Method (BMNR, 0, NotSerialized)
            {
                Name (CFG0, Package (0x04)
                {
                    0x03, 
                    Zero, 
                    One, 
                    Zero
                })
                Return (CFG0) /* \_SB_.PMBT.BMNR.CFG0 */
            }

            Method (BTIM, 0, NotSerialized)
            {
                Name (CFG0, Package (0x08)
                {
                    0x7530, 
                    0x2710, 
                    0x0001D4C0, 
                    0x9C40, 
                    Zero, 
                    Zero, 
                    0x01AC7780, 
                    Zero
                })
                Return (CFG0) /* \_SB_.PMBT.BTIM.CFG0 */
            }

            Method (BBAT, 0, NotSerialized)
            {
                Name (CFG0, Package (0x0D)
                {
                    One, 
                    0x4C494F4E, 
                    0x1E5A, 
                    0x1E5A, 
                    0x0185, 
                    0x02BB, 
                    "QCOMBATT01", 
                    "Qualcomm", 
                    "QCOMBAT01_07012011", 
                    "07012011", 
                    0x13, 
                    0x04, 
                    0x07DE
                })
                Return (CFG0) /* \_SB_.PMBT.BBAT.CFG0 */
            }

            Method (BIRQ, 0, NotSerialized)
            {
                Name (CFG0, Package (0x02)
                {
                    "BattGone", 
                    "ChgGone"
                })
                Return (CFG0) /* \_SB_.PMBT.BIRQ.CFG0 */
            }

            Method (BPCH, 0, NotSerialized)
            {
                Name (CFG0, Package (0x02)
                {
                    Zero, 
                    0x0438
                })
                Return (CFG0) /* \_SB_.PMBT.BPCH.CFG0 */
            }

            Method (BCCC, 0, NotSerialized)
            {
                Name (CFG0, Package (0x03)
                {
                    One, 
                    0x03, 
                    One
                })
                Return (CFG0) /* \_SB_.PMBT.BCCC.CFG0 */
            }

            Method (BRCH, 0, NotSerialized)
            {
                Name (CFG0, Package (0x02)
                {
                    0x64, 
                    Zero
                })
                Return (CFG0) /* \_SB_.PMBT.BRCH.CFG0 */
            }

            Method (BPLT, 0, NotSerialized)
            {
                Name (CFG0, Package (0x0D)
                {
                    0x03ED, 
                    0x0E74, 
                    0x0D48, 
                    0x0CE4, 
                    0x96, 
                    0x01F4, 
                    Zero, 
                    0x05DC, 
                    0x04, 
                    0x05, 
                    Zero, 
                    One, 
                    0x02EE
                })
                Return (CFG0) /* \_SB_.PMBT.BPLT.CFG0 */
            }

            Method (BPTM, 0, NotSerialized)
            {
                Name (CFG0, Package (0x02)
                {
                    0x4E20, 
                    0x0FA0
                })
                Return (CFG0) /* \_SB_.PMBT.BPTM.CFG0 */
            }

            Method (BJTA, 0, NotSerialized)
            {
                Name (CFG0, Package (0x0E)
                {
                    One, 
                    0x1068, 
                    0x0438, 
                    Zero, 
                    0x3C, 
                    0x02, 
                    0x03, 
                    0x02, 
                    0x1004, 
                    0x0384, 
                    0x0A, 
                    0x1004, 
                    0x0438, 
                    0x32
                })
                Return (CFG0) /* \_SB_.PMBT.BJTA.CFG0 */
            }

            Method (BPTH, 0, NotSerialized)
            {
                Name (CFG0, Package (0x03)
                {
                    0x14, 
                    0x1E, 
                    0xB4
                })
                Return (CFG0) /* \_SB_.PMBT.BPTH.CFG0 */
            }

            Method (BEHC, 0, NotSerialized)
            {
                Name (CFG0, Package (0x08)
                {
                    One, 
                    0x08, 
                    Zero, 
                    One, 
                    Zero, 
                    0x02, 
                    0x02, 
                    Zero
                })
                Return (CFG0) /* \_SB_.PMBT.BEHC.CFG0 */
            }

            Method (CTMC, 0, NotSerialized)
            {
                Name (CFG0, Package (0x07)
                {
                    Zero, 
                    0xBC, 
                    0xBD, 
                    0x04AF, 
                    0x04B0, 
                    0x0640, 
                    One
                })
                Return (CFG0) /* \_SB_.PMBT.CTMC.CFG0 */
            }

            Method (BCT1, 0, NotSerialized)
            {
                Name (CFG0, Package (0x12)
                {
                    One, 
                    0xFFFFFFEC, 
                    0x46, 
                    Package (0x04)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    One, 
                    0x10FE, 
                    0x0438, 
                    Zero, 
                    0x3C, 
                    0x02, 
                    0x03, 
                    0x02, 
                    0x109A, 
                    0x0384, 
                    0x0A, 
                    0x109A, 
                    0x0438, 
                    0x32
                })
                Return (CFG0) /* \_SB_.PMBT.BCT1.CFG0 */
            }
        }

        Device (BMSV)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PMIC, 
                \_SB.ADC1
            })
            Name (_HID, "QCOM24B5")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0204
                        }
                    GpioInt (Edge, ActiveHigh, Shared, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0200
                        }
                })
                Return (RBUF) /* \_SB_.BMSV._CRS.RBUF */
            }

            Method (PMCF, 0, NotSerialized)
            {
                Name (CFG0, Package (0x21)
                {
                    0x04, 
                    0x05, 
                    0x05, 
                    0x0A, 
                    0x0A, 
                    0x1E, 
                    0x08, 
                    0x03, 
                    0x03, 
                    0x03, 
                    0x03, 
                    0x07, 
                    0x05, 
                    0x1770, 
                    0x2EE0, 
                    0x2D, 
                    0x19, 
                    One, 
                    Zero, 
                    0x0834, 
                    0x64, 
                    One, 
                    One, 
                    Zero, 
                    One, 
                    0x96, 
                    0x0D48, 
                    0x14, 
                    0x11, 
                    0x0F, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Return (CFG0) /* \_SB_.BMSV.PMCF.CFG0 */
            }
        }

        Device (PMBM)
        {
            Name (_HID, "QCOM2452")  // _HID: Hardware ID
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PMBT
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.PMBM._CRS.RBUF */
            }
        }

        Device (PMAP)
        {
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.PMIC, 
                \_SB.ABD, 
                \_SB.SCM0
            })
            Name (_HID, "QCOM2457")  // _HID: Hardware ID
            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x04) {})
                CreateByteField (BUFF, Zero, STAT)
                CreateWordField (BUFF, 0x02, DATA)
                DATA = 0x02
                Return (DATA) /* \_SB_.PMAP.GEPT.DATA */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, SharedAndWake, PullUp, 0x1838,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x1000
                        }
                })
                Return (RBUF) /* \_SB_.PMAP._CRS.RBUF */
            }
        }

        Device (PRTC)
        {
            Name (_HID, "ACPI000E" /* Time and Alarm Device */)  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PMAP
            })
            Method (_GCP, 0, NotSerialized)  // _GCP: Get Capabilities
            {
                Return (0x05)
            }

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0002, ControllerInitiated, 0x00000000,
                        AddressingMode7Bit, "\\_SB.ABD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                AccessAs (BufferAcc, AttribRawBytes (0x18)), 
                FLD0,   192
            }

            Method (_GRT, 0, NotSerialized)  // _GRT: Get Real Time
            {
                Name (BUFF, Buffer (0x1A) {})
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                BUFF = FLD0 /* \_SB_.PRTC.FLD0 */
                Return (TME1) /* \_SB_.PRTC._GRT.TME1 */
            }

            Method (_TIV, 0, NotSerialized)  // _TIV: Timer Values
            {
                Name (BUFF, Buffer (0x1A) {})
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                BUFF = FLD0 /* \_SB_.PRTC.FLD0 */
                Return (ACT1) /* \_SB_.PRTC._TIV.ACT1 */
            }

            Method (_GWS, 0, NotSerialized)  // _GWS: Get Wake Status
            {
                Name (BUFF, Buffer (0x1A) {})
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                BUFF = FLD0 /* \_SB_.PRTC.FLD0 */
                Return (ACW1) /* \_SB_.PRTC._GWS.ACW1 */
            }

            Method (_STV, 2, NotSerialized)  // _STV: Set Timer Value
            {
                If ((Arg0 == Zero))
                {
                    Name (BUFF, Buffer (0x32) {})
                    CreateByteField (BUFF, Zero, STAT)
                    CreateField (BUFF, 0x10, 0x80, TME1)
                    CreateField (BUFF, 0x90, 0x20, ACT1)
                    CreateField (BUFF, 0xB0, 0x20, ACW1)
                    ACT1 = Arg1
                    TME1 = Zero
                    ACW1 = Zero
                    BUFF = FLD0 = BUFF /* \_SB_.PRTC._STV.BUFF */
                    If ((STAT != Zero))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Return (One)
            }

            Method (_SRT, 1, NotSerialized)  // _SRT: Set Real Time
            {
                Name (BUFF, Buffer (0x32) {})
                CreateByteField (BUFF, Zero, STAT)
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                ACT1 = Zero
                TME1 = Arg0
                ACW1 = Zero
                BUFF = FLD0 = BUFF /* \_SB_.PRTC._SRT.BUFF */
                If ((STAT != Zero))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (_CWS, 1, NotSerialized)  // _CWS: Clear Wake Alarm Status
            {
                Name (BUFF, Buffer (0x32) {})
                CreateByteField (BUFF, Zero, STAT)
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                ACT1 = Zero
                TME1 = Zero
                ACW1 = Arg0
                BUFF = FLD0 = BUFF /* \_SB_.PRTC._CWS.BUFF */
                If ((STAT != Zero))
                {
                    Return (One)
                }

                Return (Zero)
            }
        }

        Device (BIFA)
        {
            Name (_HID, "MSHW1002")  // _HID: Hardware ID
        }

        Device (BANG)
        {
            Name (_HID, "MSHW1005")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0011
                        }
                })
                Return (RBUF) /* \_SB_.BANG._CRS.RBUF */
            }
        }

        Device (PEP0)
        {
            Name (_HID, "QCOM2425")  // _HID: Hardware ID
            Name (_CID, "PNP0D80" /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x000000D8,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000C8,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000C9,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000CB,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x000000D7,
                    }
                })
                Name (NAM, Buffer (0x0A)
                {
                    "\\_SB.SPMI"
                })
                Name (PON1, Buffer (0x0C)
                {
                    /* 0000 */  0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x00,  // ........
                    /* 0008 */  0x40, 0x01, 0x00, 0x00                           // @...
                })
                Name (END, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Concatenate (PON1, NAM, Local1)
                Concatenate (Local1, RBUF, Local0)
                Return (Local0)
            }

            Method (SOCI, 4, NotSerialized)
            {
                \_SB.SOID = Arg0
                If ((Arg0 == 0xF5))
                {
                    \_SB.SIDS = "MSM8909"
                }
                Else
                {
                    \_SB.SIDS = "UNEXPECTED"
                }

                \_SB.SIDV = Arg1
                \_SB.SVMJ = (Arg1 >> 0x10)
                \_SB.SVMI = (Arg1 & 0xFFFF)
                \_SB.SDFE = Arg2
                If ((Arg2 == 0x3A))
                {
                    \_SB.SFES = "MSM8937"
                }
                Else
                {
                    \_SB.SFES = "UNKNOWN"
                }

                \_SB.SIDM = Arg3
                Return (\_SB.SIDS)
            }

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0001, ControllerInitiated, 0x00000000,
                        AddressingMode7Bit, "\\_SB.ABD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                AccessAs (BufferAcc, AttribRawBytes (0x15)), 
                FLD0,   168
            }

            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x04) {})
                CreateByteField (BUFF, Zero, STAT)
                CreateWordField (BUFF, 0x02, DATA)
                DATA = One
                Return (DATA) /* \_SB_.PEP0.GEPT.DATA */
            }

            Name (ROST, Zero)
            Method (NPUR, 1, NotSerialized)
            {
                \_SB.AGR0._PUR [One] = Arg0
                Notify (\_SB.AGR0, 0x80) // Status Change
            }

            Method (INTR, 0, NotSerialized)
            {
                Name (RBUF, Package (0x18)
                {
                    0x02, 
                    One, 
                    0x03, 
                    One, 
                    0x06, 
                    0x0B011008, 
                    One, 
                    Zero, 
                    0x87D00000, 
                    0x00100000, 
                    Zero, 
                    Zero, 
                    0x00060000, 
                    0x4000, 
                    Zero, 
                    Zero, 
                    0x0193D000, 
                    0x08, 
                    Zero, 
                    Zero, 
                    0x0B011008, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Return (RBUF) /* \_SB_.PEP0.INTR.RBUF */
            }

            Method (CRTC, 0, NotSerialized)
            {
                Return (CTRX) /* \_SB_.PEP0.CTRX */
            }

            Name (CTRX, Package (0x07)
            {
                "DSGP", 
                "NCDA", 
                "CCGP", 
                "CPGP", 
                "DMPP", 
                "GBDL", 
                "SRDL"
            })
            Method (STND, 0, NotSerialized)
            {
                Return (STNX) /* \_SB_.PEP0.STNX */
            }

            Name (STNX, Package (0x13)
            {
                "DMPA", 
                "DMPC", 
                "DMPB", 
                "DMSU", 
                "DMPG", 
                "DMPS", 
                "DMRC", 
                "DMCS", 
                "DMPL", 
                "DMMS", 
                "DMMT", 
                "DMDQ", 
                "DMCA", 
                "DMCP", 
                "XMPC", 
                "XMPL", 
                "XMPT", 
                "XMID", 
                "XMPR"
            })
            Method (ADCN, 0, NotSerialized)
            {
                Return (VADL) /* \_SB_.PEP0.VADL */
            }

            Name (VADL, Package (0x02)
            {
                "PMIC_THERM", 
                "BATT_THERM"
            })
            Name (CCFG, Package (0x04)
            {
                Package (0x02)
                {
                    "\\_SB.CPU0", 
                    0x10
                }, 

                Package (0x02)
                {
                    "\\_SB.CPU1", 
                    0x11
                }, 

                Package (0x02)
                {
                    "\\_SB.CPU2", 
                    0x12
                }, 

                Package (0x02)
                {
                    "\\_SB.CPU3", 
                    0x13
                }
            })
            Method (PGCC, 0, NotSerialized)
            {
                Return (CCFG) /* \_SB_.PEP0.CCFG */
            }

            Name (DCVS, Zero)
            Method (PGDS, 0, NotSerialized)
            {
                Return (DCVS) /* \_SB_.PEP0.DCVS */
            }

            Name (PPPP, Package (0x23)
            {
                Package (0x04)
                {
                    "PPP_RESOURCE_ID_SMPS1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_SMPS2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO3_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO4_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO5_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO6_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO7_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO8_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO9_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO10_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO11_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO12_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO13_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO14_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO15_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO17_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO18_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO19_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_LDO20_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_SLEEPCLK1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPM_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_PMIC_GPIO_DV1", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_PMIC_GPIO_DV2", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_PMIC_GPIO_DV3", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_PMIC_MPP_DV1", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_PMIC_MPP_DV2", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_PMIC_MPP_DV3", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_TLMM_GPIO_DV1", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_TLMM_GPIO_DV2", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF_TEST"
                }, 

                Package (0x04)
                {
                    "PPP_RESOURCE_ID_TLMM_GPIO_DV3", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_TLMM_KMDF_TEST"
                }
            })
            Method (PPPM, 0, NotSerialized)
            {
                Return (PPPP) /* \_SB_.PEP0.PPPP */
            }

            Name (PRRP, Package (0x15)
            {
                "PPP_RESOURCE_RANGE_INFO_SMPS_A", 
                "PPP_RESOURCE_ID_SMPS1_A", 
                "PPP_RESOURCE_ID_SMPS2_A", 
                "PPP_RESOURCE_RANGE_INFO_LDO_A", 
                "PPP_RESOURCE_ID_LDO1_A", 
                "PPP_RESOURCE_ID_LDO20_A", 
                "PPP_RESOURCE_RANGE_INFO_CXO_BUFFERS_A", 
                "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK1_A", 
                "PPP_RESOURCE_ID_CXO_BUFFERS_SLEEPCLK1_A", 
                "PPP_RESOURCE_RANGE_INFO_CXO_CLOCK_A", 
                "PPP_RESOURCE_ID_CXO_CLOCK_A", 
                "PPP_RESOURCE_ID_CXO_CLOCK_A", 
                "PPP_RESOURCE_RANGE_INFO_PMIC_GPIO_DV", 
                "PPP_RESOURCE_ID_PMIC_GPIO_DV1", 
                "PPP_RESOURCE_ID_PMIC_GPIO_DV3", 
                "PPP_RESOURCE_RANGE_INFO_PMIC_MPP_DV", 
                "PPP_RESOURCE_ID_PMIC_MPP_DV1", 
                "PPP_RESOURCE_ID_PMIC_MPP_DV3", 
                "PPP_RESOURCE_RANGE_INFO_TLMM_GPIO_DV", 
                "PPP_RESOURCE_ID_TLMM_GPIO_DV1", 
                "PPP_RESOURCE_ID_TLMM_GPIO_DV3"
            })
            Method (PPRR, 0, NotSerialized)
            {
                Return (PRRP) /* \_SB_.PEP0.PRRP */
            }

            Method (PGSD, 0, NotSerialized)
            {
                Return (SDFR) /* \_SB_.PEP0.SDFR */
            }

            Name (FPDP, Zero)
            Method (FPMD, 0, NotSerialized)
            {
                Return (FPDP) /* \_SB_.PEP0.FPDP */
            }

            Name (PPPC, Zero)
            Method (PGPC, 0, NotSerialized)
            {
                Return (PPPC) /* \_SB_.PEP0.PPPC */
            }

            Name (CPRD, Package (0x01)
            {
                Package (0x04)
                {
                    Package (0x02)
                    {
                        "info", 
                        "CPR ACPI config table"
                    }, 

                    Package (0x02)
                    {
                        "chip_id", 
                        0xCE
                    }, 

                    Package (0x02)
                    {
                        "chip_version", 
                        One
                    }, 

                    Package (0x12)
                    {
                        Package (0x02)
                        {
                            "instance_num", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "apc_rail_name", 
                            "/vdd/apc0"
                        }, 

                        Package (0x02)
                        {
                            "measurement_period_ms", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "pmic_step_size", 
                            0x30D4
                        }, 

                        Package (0x02)
                        {
                            "step_quotient", 
                            0x1A
                        }, 

                        Package (0x02)
                        {
                            "max_pmic_step_up", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "max_pmic_step_dn", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "up_threshold", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "dn_threshold", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "consecutive_up", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "consecutive_dn", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "rbcpr_base_addr", 
                            0x0B018000
                        }, 

                        Package (0x02)
                        {
                            "rbcpr_size", 
                            0x0164
                        }, 

                        Package (0x02)
                        {
                            "security_control_base_addr", 
                            0x00058000
                        }, 

                        Package (0x02)
                        {
                            "security_control_size", 
                            0x8000
                        }, 

                        Package (0x02)
                        {
                            "target_quotient_multiplier", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "quotient_offset_multiplier", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "hw_errata_flag", 
                            Zero
                        }
                    }
                }
            })
            Method (CPUS, 0, NotSerialized)
            {
                Name (PKGG, Package (0x02)
                {
                    "000000000", 
                    "000000000"
                })
                PKGG [Zero] = NCPU /* \_SB_.NCPU */
                PKGG [One] = PSCI /* \_SB_.PSCI */
                Return (PKGG) /* \_SB_.PEP0.CPUS.PKGG */
            }

            Method (CPRM, 0, NotSerialized)
            {
                Return (CPRD) /* \_SB_.PEP0.CPRD */
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (LMPM, 0, NotSerialized)
            {
                Return (NMPM) /* \_SB_.PEP0.NMPM */
            }

            Name (NMPM, Package (0x02)
            {
                Package (0x02)
                {
                    "MPM_SCALAR_CONFIG", 
                    Package (0x05)
                    {
                        0x00060000, 
                        0x4000, 
                        0x0B011000, 
                        0x1000, 
                        0x01D0
                    }
                }, 

                Package (0x02)
                {
                    "MPM_INTERRUPT_CONFIG", 
                    Package (0x05)
                    {
                        Package (0x04)
                        {
                            0x0A, 
                            0x0D, 
                            One, 
                            0x03
                        }, 

                        Package (0x04)
                        {
                            0x0D, 
                            0x15, 
                            One, 
                            0x04
                        }, 

                        Package (0x04)
                        {
                            0x22, 
                            0x5E, 
                            One, 
                            0x04
                        }, 

                        Package (0x04)
                        {
                            0x1A, 
                            0x26, 
                            One, 
                            0x04
                        }, 

                        Package (0x04)
                        {
                            0x3E, 
                            0xDE, 
                            Zero, 
                            0x04
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (LSPM, 0, NotSerialized)
            {
                Return (NSPM) /* \_SB_.PEP0.NSPM */
            }

            Name (NSPM, Package (0x07)
            {
                "SPM_CONFIG", 
                0x05, 
                One, 
                Package (0x02)
                {
                    "SPM_CLUSTER_CONFIG", 
                    0x05
                }, 

                Package (0x06)
                {
                    "SPM_PHYS_CONFIG", 
                    0x0B089000, 
                    0x0B099000, 
                    0x0B0A9000, 
                    0x0B0B9000, 
                    0x0B012000
                }, 

                Package (0x06)
                {
                    "SPM_QCHANNEL_CONFIG", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x02)
                {
                    "SPM_GLB_CONFIG", 
                    0x0B011000
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (LVDD, 0, NotSerialized)
            {
                Return (NVDD) /* \_SB_.PEP0.NVDD */
            }

            Name (NVDD, Package (0x03)
            {
                Package (0x02)
                {
                    "PEP_VDD_CX", 
                    Package (0x0B)
                    {
                        "PPP_RESOURCE_ID_SMPS1_A", 
                        0x02, 
                        0x07, 
                        0x04, 
                        Package (0x0C)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x05, 
                            Zero, 
                            Zero, 
                            One, 
                            Zero
                        }, 

                        Package (0x0C)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x05, 
                            Zero, 
                            Zero, 
                            One, 
                            Zero
                        }, 

                        Package (0x0C)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x05, 
                            Zero, 
                            Zero, 
                            0x02, 
                            Zero
                        }, 

                        Package (0x0C)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x05, 
                            Zero, 
                            Zero, 
                            0x03, 
                            Zero
                        }, 

                        Package (0x0C)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x05, 
                            Zero, 
                            Zero, 
                            0x04, 
                            Zero
                        }, 

                        Package (0x0C)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x05, 
                            Zero, 
                            Zero, 
                            0x05, 
                            Zero
                        }, 

                        Package (0x0C)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x05, 
                            Zero, 
                            Zero, 
                            0x06, 
                            Zero
                        }
                    }
                }, 

                Package (0x02)
                {
                    "PEP_VDD_MX", 
                    Package (0x0B)
                    {
                        "PPP_RESOURCE_ID_LDO3_A", 
                        One, 
                        0x07, 
                        0x06, 
                        Package (0x09)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            One, 
                            Zero
                        }, 

                        Package (0x09)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            One, 
                            Zero
                        }, 

                        Package (0x09)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            0x02, 
                            Zero
                        }, 

                        Package (0x09)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            0x03, 
                            Zero
                        }, 

                        Package (0x09)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            0x04, 
                            Zero
                        }, 

                        Package (0x09)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            0x05, 
                            Zero
                        }, 

                        Package (0x09)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            0x06, 
                            Zero
                        }
                    }
                }, 

                Package (0x02)
                {
                    "PEP_VDD_HFPLL", 
                    Package (0x07)
                    {
                        "PPP_RESOURCE_ID_LDO7_A", 
                        One, 
                        0x03, 
                        One, 
                        Package (0x08)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero
                        }, 

                        Package (0x08)
                        {
                            0x001B7740, 
                            0x0708, 
                            One, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero
                        }, 

                        Package (0x08)
                        {
                            0x001B7740, 
                            0x4A38, 
                            One, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (LDBG, 0, NotSerialized)
            {
                Return (NDBG) /* \_SB_.PEP0.NDBG */
            }

            Name (NDBG, Package (0x04)
            {
                "DEBUGGERS", 
                Package (0x05)
                {
                    "TYPE", 
                    "SERIAL", 
                    Package (0x02)
                    {
                        "INSTANCES", 
                        "\\_SB.UAR2"
                    }, 

                    Package (0x03)
                    {
                        "DEBUG_ON", 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_blsp1_uart1_apps_clk", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x02)
                            {
                                "gcc_blsp1_ahb_clk", 
                                One
                            }
                        }
                    }, 

                    Package (0x01)
                    {
                        "DEBUG_OFF"
                    }
                }, 

                Package (0x05)
                {
                    "TYPE", 
                    "USB2.0", 
                    Package (0x02)
                    {
                        "INSTANCES", 
                        "\\_SB.URS0"
                    }, 

                    Package (0x04)
                    {
                        "DEBUG_ON", 
                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/pcnoc", 
                                0x4B00
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO13_A", 
                                One, 
                                0x002EEBB8, 
                                0x3E80, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/pmic/client/hfpll1", 
                                0x02
                            }
                        }
                    }, 

                    Package (0x01)
                    {
                        "DEBUG_OFF"
                    }
                }, 

                Package (0x05)
                {
                    "TYPE", 
                    "USB3.0", 
                    Package (0x01)
                    {
                        "INSTANCES"
                    }, 

                    Package (0x01)
                    {
                        "DEBUG_ON"
                    }, 

                    Package (0x01)
                    {
                        "DEBUG_OFF"
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (LDRS, 0, NotSerialized)
            {
                Return (NDRS) /* \_SB_.PEP0.NDRS */
            }

            Name (NDRS, Package (0x02)
            {
                "DEFAULT_RESOURCES", 
                Package (0x04)
                {
                    "WORKAROUND", 
                    "OXILI_BLOCK", 
                    "DEMAND", 
                    Package (0x02)
                    {
                        "RESOURCES", 
                        Package (0x02)
                        {
                            "FOOTSWITCH", 
                            Package (0x02)
                            {
                                "VDD_OXILI", 
                                One
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (UIDL, 0, NotSerialized)
            {
                Return (NIDL) /* \_SB_.PEP0.NIDL */
            }

            Name (NIDL, Package (0x08)
            {
                "MICROPEP_IDLE", 
                One, 
                Package (0x05)
                {
                    "LPR", 
                    "A7Core0", 
                    Zero, 
                    Package (0x07)
                    {
                        "MODE", 
                        "C1", 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x07)
                    {
                        "MODE", 
                        "C3", 
                        0x0603, 
                        0x0603, 
                        0x03, 
                        Zero, 
                        One
                    }
                }, 

                Package (0x05)
                {
                    "LPR", 
                    "A7Core1", 
                    One, 
                    Package (0x07)
                    {
                        "MODE", 
                        "C1", 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x07)
                    {
                        "MODE", 
                        "C3", 
                        0x0603, 
                        0x0603, 
                        0x03, 
                        Zero, 
                        One
                    }
                }, 

                Package (0x05)
                {
                    "LPR", 
                    "A7Core2", 
                    0x02, 
                    Package (0x07)
                    {
                        "MODE", 
                        "C1", 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x07)
                    {
                        "MODE", 
                        "C3", 
                        0x0603, 
                        0x0603, 
                        0x03, 
                        Zero, 
                        One
                    }
                }, 

                Package (0x05)
                {
                    "LPR", 
                    "A7Core3", 
                    0x03, 
                    Package (0x07)
                    {
                        "MODE", 
                        "C1", 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x07)
                    {
                        "MODE", 
                        "C3", 
                        0x0603, 
                        0x0603, 
                        0x03, 
                        Zero, 
                        One
                    }
                }, 

                Package (0x06)
                {
                    "LPR", 
                    "A7L2", 
                    0xFFFFFFFF, 
                    Package (0x0B)
                    {
                        "MODE", 
                        "D2", 
                        0x0386, 
                        0x1388, 
                        Zero, 
                        0x03, 
                        Zero, 
                        Package (0x03)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core0", 
                                "C1", 
                                0x07
                            }, 

                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core0", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x03)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core1", 
                                "C1", 
                                0x07
                            }, 

                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core1", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x03)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core2", 
                                "C1", 
                                0x07
                            }, 

                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core2", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x03)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core3", 
                                "C1", 
                                0x07
                            }, 

                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core3", 
                                "C3", 
                                0x07
                            }
                        }
                    }, 

                    Package (0x0B)
                    {
                        "MODE", 
                        "D2D", 
                        0x1388, 
                        0x4E20, 
                        0x10, 
                        0x02, 
                        Zero, 
                        Package (0x03)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core0", 
                                "C1", 
                                0x07
                            }, 

                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core0", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x03)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core1", 
                                "C1", 
                                0x07
                            }, 

                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core1", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x03)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core2", 
                                "C1", 
                                0x07
                            }, 

                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core2", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x03)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core3", 
                                "C1", 
                                0x07
                            }, 

                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core3", 
                                "C3", 
                                0x07
                            }
                        }
                    }, 

                    Package (0x0B)
                    {
                        "MODE", 
                        "D3", 
                        0x207D, 
                        0x0001D4C0, 
                        Zero, 
                        One, 
                        0x04, 
                        Package (0x02)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core0", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core1", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core2", 
                                "C3", 
                                0x07
                            }
                        }, 

                        Package (0x02)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7Core3", 
                                "C3", 
                                0x07
                            }
                        }
                    }
                }, 

                Package (0x04)
                {
                    "LPR", 
                    "platform", 
                    0xFFFFFFFF, 
                    Package (0x08)
                    {
                        "MODE", 
                        "xo", 
                        0x38F7, 
                        0x0002BF20, 
                        0x20, 
                        Zero, 
                        0x10, 
                        Package (0x02)
                        {
                            "DEPENDENCY_CONTAINER", 
                            Package (0x04)
                            {
                                "DEPENDENCY", 
                                "A7L2", 
                                "D3", 
                                0x07
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (CTPM, 0, NotSerialized)
            {
                Name (CTPN, Package (0x02)
                {
                    "CORE_TOPOLOGY", 
                    0x04
                })
                Return (CTPN) /* \_SB_.PEP0.CTPM.CTPN */
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (APMD, 0, NotSerialized)
            {
                Return (APCC) /* \_SB_.PEP0.APCC */
            }

            Name (APCC, Package (0x02)
            {
                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.AMSS.ADCM.AUDD", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x0B)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0E)
                                {
                                    "PPP_RESOURCE_ID_SMPS2_A", 
                                    0x02, 
                                    0x001DC130, 
                                    0x0007A120, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    0x05, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO5_A", 
                                    One, 
                                    0x001B7740, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    0x002EEBB8, 
                                    0x1388, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3B, 
                                    One, 
                                    One, 
                                    One, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3C, 
                                    One, 
                                    One, 
                                    One, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3D, 
                                    One, 
                                    One, 
                                    One, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3E, 
                                    One, 
                                    One, 
                                    One, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3F, 
                                    One, 
                                    One, 
                                    One, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x40, 
                                    One, 
                                    One, 
                                    One, 
                                    Zero, 
                                    0x03
                                }
                            }
                        }, 

                        Package (0x0B)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0E)
                                {
                                    "PPP_RESOURCE_ID_SMPS2_A", 
                                    0x02, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    0x05, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO5_A", 
                                    One, 
                                    0x001B7740, 
                                    0x0FA0, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3B, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3C, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3D, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3E, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3F, 
                                    One, 
                                    Zero, 
                                    One, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x40, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }
                        }
                    }
                }, 

                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.AMSS.ADCM.AUDD.MBHC", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x03)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    0x002EEBB8, 
                                    0x0BB8, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (GPMD, 0, NotSerialized)
            {
                Name (GPCC, Package (0x01)
                {
                    Package (0x08)
                    {
                        "DEVICE", 
                        "\\_SB.GPU0", 
                        Package (0x0E)
                        {
                            "COMPONENT", 
                            Zero, 
                            Package (0x02)
                            {
                                "FSTATE", 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                "FSTATE", 
                                One, 
                                Package (0x0C)
                                {
                                    "ENTER", 
                                    Package (0x01)
                                    {
                                        "PSTATE_SAVE"
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x02, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x03, 
                                            0x08
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x04, 
                                            0x08
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x05, 
                                            0x13
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x06, 
                                            0x14
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_MDSS", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "REQUIRED_RESOURCE", 
                                        Package (0x03)
                                        {
                                            One, 
                                            "/xo/cxo", 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "REQUIRED_RESOURCE", 
                                        Package (0x03)
                                        {
                                            One, 
                                            "/pmic/client/hfpll1", 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x0A)
                                        {
                                            "PPP_RESOURCE_ID_LDO2_A", 
                                            One, 
                                            Zero, 
                                            Zero, 
                                            Zero, 
                                            Zero, 
                                            Zero, 
                                            Zero, 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "TLMMGPIO", 
                                        Package (0x06)
                                        {
                                            0x18, 
                                            One, 
                                            Zero, 
                                            Zero, 
                                            One, 
                                            0x02
                                        }
                                    }
                                }, 

                                Package (0x07)
                                {
                                    "EXIT", 
                                    Package (0x02)
                                    {
                                        "REQUIRED_RESOURCE", 
                                        Package (0x03)
                                        {
                                            One, 
                                            "/xo/cxo", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_MDSS", 
                                            One
                                        }
                                    }, 

                                    Package (0x01)
                                    {
                                        "PSTATE_RESTORE"
                                    }, 

                                    Package (0x02)
                                    {
                                        "REQUIRED_RESOURCE", 
                                        Package (0x03)
                                        {
                                            One, 
                                            "/pmic/client/hfpll1", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PMICVREGVOTE", 
                                        Package (0x0A)
                                        {
                                            "PPP_RESOURCE_ID_LDO2_A", 
                                            One, 
                                            0x00124F80, 
                                            0x9C40, 
                                            One, 
                                            Zero, 
                                            One, 
                                            Zero, 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "TLMMGPIO", 
                                        Package (0x06)
                                        {
                                            0x18, 
                                            One, 
                                            One, 
                                            Zero, 
                                            0x03, 
                                            0x02
                                        }
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "ABANDON_FSTATE", 
                                Zero
                            }, 

                            Package (0x07)
                            {
                                "PSTATE_SET", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PSTATE", 
                                    Zero
                                }, 

                                Package (0x09)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_ahb_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_axi_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "DELAY", 
                                        Package (0x01)
                                        {
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_axi_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_ahb_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x07)
                            {
                                "PSTATE_SET", 
                                One, 
                                Package (0x03)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_MDSS", 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_MDSS", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    One
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    One
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    One
                                }
                            }, 

                            Package (0x07)
                            {
                                "PSTATE_SET", 
                                0x02, 
                                Package (0x0B)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_apss_tcu_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_ahb_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_axi_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_vsync_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_pclk0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_esc0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_byte0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x0B)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_vsync_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_axi_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_ahb_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_pclk0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_esc0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_byte0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_apss_tcu_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x0E)
                            {
                                "PSTATE_SET", 
                                0x03, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x124F8000, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x0FE50FB0, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x0BEBC200, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x0A98B520, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x04, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x09896800, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x05, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x05F5E100, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x06, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x04C4B400, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x07, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x02FAF080, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x08, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    0x04
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    0x04
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    0x04
                                }
                            }, 

                            Package (0x0E)
                            {
                                "PSTATE_SET", 
                                0x04, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x124F8000, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x0FE50FB0, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x0BEBC200, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x0A98B520, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x04, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x09896800, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x05, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x05F5E100, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x06, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x04C4B400, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x07, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            0x02FAF080, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x08, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_mdss_mdp_clk", 
                                            0x03, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_DISPLAY_CFG", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    0x08
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    0x08
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    0x08
                                }
                            }, 

                            Package (0x19)
                            {
                                "PSTATE_SET", 
                                0x05, 
                                Package (0x03)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x1DA9C000, 
                                            0x1DA9C000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x1AF768BA, 
                                            0x1AF768BA
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x1883D392, 
                                            0x1883D392
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x16494BF9, 
                                            0x16494BF9
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x04, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x1442A228, 
                                            0x1442A228
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x05, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x126B1F0D, 
                                            0x126B1F0D
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x06, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x10BE7952, 
                                            0x10BE7952
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x07, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x0F38CB62, 
                                            0x0F38CB62
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x08, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x0DD68A59, 
                                            0x0DD68A59
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x09, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x0D2F0000, 
                                            0x0D2F0000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0A, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x0B6FB827, 
                                            0x0B6FB827
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0B, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x0A659023, 
                                            0x0A659023
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0C, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x09739A4E, 
                                            0x09739A4E
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0D, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x0897A38E, 
                                            0x0897A38E
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0E, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x07CFABF5, 
                                            0x07CFABF5
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0F, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x076A7000, 
                                            0x076A7000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x10, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x06749F0A, 
                                            0x06749F0A
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x11, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x05DE620A, 
                                            0x05DE620A
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x12, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x057E4000, 
                                            0x057E4000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x13, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    Zero
                                }
                            }, 

                            Package (0x1A)
                            {
                                "PSTATE_SET", 
                                0x06, 
                                Package (0x03)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0xFE45FE80, 
                                            0xFE45FE80
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0xA325A000, 
                                            0x9450C000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x82848000, 
                                            0x76A70000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x61E36000, 
                                            0x58FD4000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x04, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x5BD88000, 
                                            0x537F0000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x05, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x48828000, 
                                            0x41EB0000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x06, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x41424000, 
                                            0x3B538000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x07, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x3A020000, 
                                            0x34BC0000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x08, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2CDD8C00, 
                                            0x28C96800
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x09, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2B818000, 
                                            0x278D0000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0A, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x28C96800, 
                                            0x25143000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0B, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x22713000, 
                                            0x1F4FA000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0C, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x20A12000, 
                                            0x1DA9C000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0D, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x1D010000, 
                                            0x1A5E0000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0E, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x1878D800, 
                                            0x163F5000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x0F, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x13F0B000, 
                                            0x1220A000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x10, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x10509000, 
                                            0x0ED4E000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x11, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x0E808000, 
                                            0x0D2F0000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x12, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x0B376300, 
                                            0x0A325A00
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x13, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x08284800, 
                                            0x076A7000
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x14, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_MDP", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    0x14
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    0x14
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    0x14
                                }
                            }
                        }, 

                        Package (0x0B)
                        {
                            "COMPONENT", 
                            One, 
                            Package (0x02)
                            {
                                "FSTATE", 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                "FSTATE", 
                                One, 
                                Package (0x08)
                                {
                                    "ENTER", 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_ahb_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_gtcu_ahb_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gpu_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gfx_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_gfx_tcu_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x08)
                                {
                                    "EXIT", 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_gfx_tcu_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gfx_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gpu_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_gtcu_ahb_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_ahb_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }
                            }, 

                            Package (0x04)
                            {
                                "FSTATE", 
                                0x02, 
                                Package (0x0B)
                                {
                                    "ENTER", 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_ahb_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_gtcu_ahb_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gpu_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gfx_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_gfx_tcu_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x01)
                                    {
                                        "PSTATE_SAVE"
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x02, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_OXILI", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package (0x0A)
                                {
                                    "EXIT", 
                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_OXILI", 
                                            One
                                        }
                                    }, 

                                    Package (0x01)
                                    {
                                        "PSTATE_RESTORE"
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_gfx_tcu_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gfx_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gpu_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_gtcu_ahb_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_ahb_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                0x02
                            }, 

                            Package (0x02)
                            {
                                "ABANDON_FSTATE", 
                                0x02
                            }, 

                            Package (0x07)
                            {
                                "PSTATE_SET", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PSTATE", 
                                    Zero
                                }, 

                                Package (0x0B)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_ahb_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gpu_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gfx_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "DELAY", 
                                        Package (0x01)
                                        {
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gfx_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_bimc_gpu_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_ahb_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    One
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    One
                                }
                            }, 

                            Package (0x07)
                            {
                                "PSTATE_SET", 
                                One, 
                                Package (0x03)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_OXILI", 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_OXILI", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    One
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    One
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    One
                                }
                            }, 

                            Package (0x09)
                            {
                                "PSTATE_SET", 
                                0x02, 
                                Package (0x05)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            0x03, 
                                            0x184B7B80, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_GFX3D_CFG", 
                                            0x17D78400, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_GFX3D", 
                                            "ICBID_SLAVE_EBI1", 
                                            0xFE277A00, 
                                            0x3F89DE80
                                        }
                                    }
                                }, 

                                Package (0x05)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            0x03, 
                                            0x1230FB80, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_GFX3D_CFG", 
                                            0x17D78400, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_GFX3D", 
                                            "ICBID_SLAVE_EBI1", 
                                            0xBEBC2000, 
                                            0x2FAF0800
                                        }
                                    }
                                }, 

                                Package (0x05)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            0x03, 
                                            0x0BCD3D80, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_GFX3D_CFG", 
                                            0x17D78400, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_GFX3D", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x5F5E1000, 
                                            0x09896800
                                        }
                                    }
                                }, 

                                Package (0x05)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_oxili_gfx3d_clk", 
                                            0x03, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_GFX3D_CFG", 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_GFX3D", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    0x02
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    0x02
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    0x02
                                }
                            }
                        }, 

                        Package (0x0E)
                        {
                            "COMPONENT", 
                            0x02, 
                            Package (0x02)
                            {
                                "FSTATE", 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                "FSTATE", 
                                One, 
                                Package (0x07)
                                {
                                    "ENTER", 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_core0_vcodec0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_ahb_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_axi_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_apss_tcu_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x07)
                                {
                                    "EXIT", 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_core0_vcodec0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_ahb_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_axi_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_apss_tcu_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }
                            }, 

                            Package (0x04)
                            {
                                "FSTATE", 
                                0x02, 
                                Package (0x10)
                                {
                                    "ENTER", 
                                    Package (0x02)
                                    {
                                        "REQUIRED_RESOURCE", 
                                        Package (0x03)
                                        {
                                            One, 
                                            "/clk/mmnoc_axi/custom/venus0/vbif_halt", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_core0_vcodec0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_ahb_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_axi_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_apss_tcu_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x01)
                                    {
                                        "PSTATE_SAVE"
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x02, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x03, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x04, 
                                            0x04
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            0x05, 
                                            0x04
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0_CORE0", 
                                            0x04
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0_CORE0", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package (0x0D)
                                {
                                    "EXIT", 
                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0_CORE0", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0_CORE0", 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "PSTATE_ADJUST", 
                                        Package (0x02)
                                        {
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_core0_vcodec0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_ahb_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_axi_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_smmu_cfg_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_apss_tcu_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x01)
                                    {
                                        "PSTATE_RESTORE"
                                    }, 

                                    Package (0x02)
                                    {
                                        "REQUIRED_RESOURCE", 
                                        Package (0x03)
                                        {
                                            One, 
                                            "/clk/mmnoc_axi/custom/venus0/vbif_halt", 
                                            One
                                        }
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                0x02
                            }, 

                            Package (0x02)
                            {
                                "ABANDON_FSTATE", 
                                0x02
                            }, 

                            Package (0x07)
                            {
                                "PSTATE_SET", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PSTATE", 
                                    Zero
                                }, 

                                Package (0x0B)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_core0_vcodec0_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_ahb_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_axi_clk", 
                                            0x0A, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "DELAY", 
                                        Package (0x01)
                                        {
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_axi_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_ahb_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_core0_vcodec0_clk", 
                                            0x0B, 
                                            Zero, 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    One
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    One
                                }
                            }, 

                            Package (0x07)
                            {
                                "PSTATE_SET", 
                                One, 
                                Package (0x06)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0_CORE0", 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0_CORE0", 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "REQUIRED_RESOURCE", 
                                        Package (0x03)
                                        {
                                            One, 
                                            "/clk/mmnoc_axi/custom/venus0/vbif_halt", 
                                            One
                                        }
                                    }
                                }, 

                                Package (0x12)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_core0_vcodec0_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_ahb_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_axi_clk", 
                                            One, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            0x17D78400, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x06B31680, 
                                            0x06B31680
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "REQUIRED_RESOURCE", 
                                        Package (0x03)
                                        {
                                            One, 
                                            "/clk/mmnoc_axi/custom/venus0/vbif_halt", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            Zero
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_core0_vcodec0_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_ahb_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_axi_clk", 
                                            0x02, 
                                            Zero, 
                                            One
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0", 
                                            0x02
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0_CORE0", 
                                            0x04
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "FOOTSWITCH", 
                                        Package (0x02)
                                        {
                                            "VDD_VENUS0_CORE0", 
                                            0x02
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    One
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    One
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    One
                                }
                            }, 

                            Package (0x09)
                            {
                                "PSTATE_SET", 
                                0x02, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x03, 
                                            0x124F8000, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            0x17D78400, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x03, 
                                            0x0FDAD680, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            0x17D78400, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x03, 
                                            0x07ED6B40, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x03, 
                                            Zero, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    0x02
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    0x02
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    0x02
                                }
                            }, 

                            Package (0x09)
                            {
                                "PSTATE_SET", 
                                0x03, 
                                Package (0x04)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x03, 
                                            0x124F8000, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            0x17D78400, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x03, 
                                            0x0FDAD680, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            0x17D78400, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x03, 
                                            0x07ED6B40, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            0x0BEBC200, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x04)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "CLOCK", 
                                        Package (0x04)
                                        {
                                            "gcc_venus0_vcodec0_clk", 
                                            0x03, 
                                            Zero, 
                                            0x03
                                        }
                                    }, 

                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_APPSS_PROC", 
                                            "ICBID_SLAVE_VENUS_CFG", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    0x03
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    0x03
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    0x03
                                }
                            }, 

                            Package (0x0A)
                            {
                                "PSTATE_SET", 
                                0x04, 
                                Package (0x03)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x2FAF0800
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2D2E2980, 
                                            0x2D2E2980
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x14194380, 
                                            0x14194380
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x06B31680, 
                                            0x06B31680
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x04, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PRELOAD_PSTATE", 
                                    0x03
                                }, 

                                Package (0x02)
                                {
                                    "PREPARE_PSTATE", 
                                    0x03
                                }, 

                                Package (0x02)
                                {
                                    "ABANDON_PSTATE", 
                                    0x03
                                }
                            }, 

                            Package (0x07)
                            {
                                "PSTATE_SET", 
                                0x05, 
                                Package (0x03)
                                {
                                    "PSTATE", 
                                    Zero, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x2FAF0800, 
                                            0x2FAF0800
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    One, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x299AA280, 
                                            0x299AA280
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x14F68420, 
                                            0x14F68420
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            0x06FC5480, 
                                            0x06FC5480
                                        }
                                    }
                                }, 

                                Package (0x03)
                                {
                                    "PSTATE", 
                                    0x04, 
                                    Package (0x02)
                                    {
                                        "BUSARB", 
                                        Package (0x05)
                                        {
                                            0x03, 
                                            "ICBID_MASTER_VIDEO_P0", 
                                            "ICBID_SLAVE_EBI1", 
                                            Zero, 
                                            Zero
                                        }
                                    }
                                }
                            }
                        }, 

                        Package (0x06)
                        {
                            "COMPONENT", 
                            0x03, 
                            Package (0x02)
                            {
                                "FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "ABANDON_FSTATE", 
                                Zero
                            }
                        }, 

                        Package (0x07)
                        {
                            "COMPONENT", 
                            0x04, 
                            Package (0x02)
                            {
                                "FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "ABANDON_FSTATE", 
                                One
                            }
                        }, 

                        Package (0x07)
                        {
                            "COMPONENT", 
                            0x05, 
                            Package (0x02)
                            {
                                "FSTATE", 
                                Zero
                            }, 

                            Package (0x02)
                            {
                                "FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "INIT_FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_FSTATE", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "ABANDON_FSTATE", 
                                One
                            }
                        }
                    }
                })
                Return (GPCC) /* \_SB_.PEP0.GPMD.GPCC */
            }
        }

        Scope (\_SB.PEP0)
        {
            Method (MPMD, 0, NotSerialized)
            {
                Return (MPCC) /* \_SB_.PEP0.MPCC */
            }

            Name (MPCC, Package (0x00) {})
        }

        Scope (\_SB.PEP0)
        {
            Method (OPMD, 0, NotSerialized)
            {
                Return (OPCC) /* \_SB_.PEP0.OPCC */
            }

            Name (OPCC, Package (0x00) {})
        }

        Scope (\_SB.PEP0)
        {
            Method (SPMD, 0, NotSerialized)
            {
                Return (SPCC) /* \_SB_.PEP0.SPCC */
            }

            Name (SPCC, Package (0x02)
            {
                Package (0x05)
                {
                    "DEVICE", 
                    "\\_SB.AMSS", 
                    Package (0x06)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x05)
                        {
                            "PSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/rail_cx", 
                                    0x04
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/rail_mx", 
                                    0x04
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_boot_rom_ahb_clk", 
                                    One, 
                                    Zero, 
                                    0x02
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "PSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_boot_rom_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/rail_cx", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/rail_mx", 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE", 
                            0x02
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package (0x05)
                {
                    "DEVICE", 
                    "\\_SB.RIVA", 
                    Package (0x05)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x0F)
                        {
                            "PSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/hfpll1", 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/rail_cx", 
                                    0x04
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/rail_mx", 
                                    0x04
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO10_A", 
                                    One, 
                                    0x0013D620, 
                                    0x00046CD0, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO5_A", 
                                    One, 
                                    0x001B7740, 
                                    0x59D8, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO7_A", 
                                    One, 
                                    0x001B7740, 
                                    0x1F40, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO9_A", 
                                    One, 
                                    0x00325AA0, 
                                    0x0007DBB8, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x04)
                                {
                                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A", 
                                    0x06, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x28, 
                                    One, 
                                    One, 
                                    One, 
                                    One, 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x29, 
                                    One, 
                                    One, 
                                    One, 
                                    One, 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x2A, 
                                    One, 
                                    One, 
                                    One, 
                                    One, 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x2B, 
                                    One, 
                                    One, 
                                    One, 
                                    One, 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x2C, 
                                    One, 
                                    One, 
                                    One, 
                                    One, 
                                    0x02
                                }
                            }
                        }, 

                        Package (0x0A)
                        {
                            "PSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/hfpll1", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x04)
                                {
                                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A", 
                                    0x06, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO9_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO7_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO5_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO10_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/rail_mx", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/rail_cx", 
                                    Zero
                                }
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x03
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (PPMD, 0, NotSerialized)
            {
                Return (PPCC) /* \_SB_.PEP0.PPCC */
            }

            Name (PPCC, Package (0x03)
            {
                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.STAT", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.UAR2", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }
                }, 

                Package (0x05)
                {
                    "DEVICE", 
                    0x81, 
                    "\\_SB.GIO0", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x03)
                    {
                        "COMPONENT", 
                        One, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }
                }
            })
            Name (SDFR, Package (0x01)
            {
                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.SDFR", 
                    Package (0x06)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x08)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A", 
                                    One, 
                                    0x0012B128, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO3_A", 
                                    One, 
                                    0x0012B128, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO6_A", 
                                    One, 
                                    0x001B7740, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO7_A", 
                                    One, 
                                    0x001B7740, 
                                    0x00030D40, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO8_A", 
                                    One, 
                                    0x002C4020, 
                                    0x000927C0, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO17_A", 
                                    One, 
                                    0x002B7CD0, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x08)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A", 
                                    One, 
                                    0x0012B128, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO3_A", 
                                    One, 
                                    0x0012B128, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO6_A", 
                                    One, 
                                    0x001B7740, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO7_A", 
                                    One, 
                                    0x001B7740, 
                                    0x00030D40, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO8_A", 
                                    One, 
                                    0x002C4020, 
                                    0x000927C0, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO17_A", 
                                    One, 
                                    0x002B7CD0, 
                                    0x2710, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "FSTATE", 
                            0x02, 
                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/dcvs.ena", 
                                    One
                                }
                            }
                        }, 

                        Package (0x21)
                        {
                            "FSTATE", 
                            0x03, 
                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x02, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x03, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x08, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x09, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x0A, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x0B, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x0E, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x0F, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x17, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x18, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x1C, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x1F, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x20, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x24, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x25, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x26, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x3A, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x58, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x59, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x5B, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x5C, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x5D, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x5F, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x62, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x6E, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICGPIO", 
                                Package (0x08)
                                {
                                    "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT", 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    0x02, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICGPIO", 
                                Package (0x06)
                                {
                                    "IOCTL_PM_GPIO_CONFIG_DIGITAL_INPUT", 
                                    Zero, 
                                    Zero, 
                                    0x04, 
                                    0x02, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICGPIO", 
                                Package (0x08)
                                {
                                    "IOCTL_PM_GPIO_CONFIG_DIGITAL_OUTPUT", 
                                    Zero, 
                                    0x03, 
                                    Zero, 
                                    0x02, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICGPIO", 
                                Package (0x06)
                                {
                                    "IOCTL_PM_GPIO_CONFIG_DIGITAL_INPUT", 
                                    Zero, 
                                    0x03, 
                                    0x04, 
                                    0x02, 
                                    Zero
                                }
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (BPMD, 0, NotSerialized)
            {
                Return (BPCC) /* \_SB_.PEP0.BPCC */
            }

            Name (BPCC, Package (0x07)
            {
                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.UAR1", 
                    Package (0x11)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x05)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_ahb_clk", 
                                    One, 
                                    Zero, 
                                    0x04
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    One, 
                                    Zero, 
                                    0x04
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_BLSP_1", 
                                    "ICBID_SLAVE_EBI1", 
                                    Zero, 
                                    0x0007A120
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    0x04
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x02, 
                                    Zero, 
                                    0x04
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_BLSP_1", 
                                    "ICBID_SLAVE_EBI1", 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x05, 
                                    Zero, 
                                    0x02, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x04, 
                                    Zero, 
                                    0x02, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x05, 
                                    Zero, 
                                    0x02, 
                                    Zero, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x04, 
                                    Zero, 
                                    0x02, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x02, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x00708000, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x03, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x00E10000, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x04, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x00F42400, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x05, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x016E3600, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x06, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x01E84800, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x07, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x02625A00, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x08, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x02DC6C00, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x09, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x030D4000, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0A, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x03567E00, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0B, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x03840000, 
                                    0x04
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0C, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_uart1_apps_clk", 
                                    0x03, 
                                    0x03D09000, 
                                    0x04
                                }
                            }
                        }
                    }, 

                    Package (0x04)
                    {
                        "COMPONENT", 
                        One, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }
                    }
                }, 

                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.I2C1", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_ahb_clk", 
                                One, 
                                0x05F5E100, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_qup1_i2c_apps_clk", 
                                0x08, 
                                0x0124F800, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_BLSP_1", 
                                "ICBID_SLAVE_EBI1", 
                                0x0927C000, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x06, 
                                One, 
                                0x03, 
                                One, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x07, 
                                One, 
                                0x03, 
                                One, 
                                0x03, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_ahb_clk", 
                                0x02, 
                                0x05F5E100, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_qup1_i2c_apps_clk", 
                                0x02, 
                                0x0124F800, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_BLSP_1", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x07, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x06, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero
                            }
                        }
                    }
                }, 

                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.I2C2", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_ahb_clk", 
                                One, 
                                0x05F5E100, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_qup2_i2c_apps_clk", 
                                0x08, 
                                0x0124F800, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_BLSP_1", 
                                "ICBID_SLAVE_EBI1", 
                                0x0927C000, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x6F, 
                                One, 
                                0x03, 
                                One, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x70, 
                                One, 
                                0x03, 
                                One, 
                                0x03, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_ahb_clk", 
                                0x02, 
                                0x05F5E100, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_qup2_i2c_apps_clk", 
                                0x02, 
                                0x0124F800, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_BLSP_1", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x70, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x6F, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero
                            }
                        }
                    }
                }, 

                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.I2C5", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_ahb_clk", 
                                One, 
                                0x05F5E100, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_qup5_i2c_apps_clk", 
                                0x08, 
                                0x0124F800, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_BLSP_1", 
                                "ICBID_SLAVE_EBI1", 
                                0x0927C000, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x12, 
                                One, 
                                0x02, 
                                One, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x13, 
                                One, 
                                0x02, 
                                One, 
                                0x03, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_ahb_clk", 
                                0x02, 
                                0x05F5E100, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_blsp1_qup5_i2c_apps_clk", 
                                0x02, 
                                0x0124F800, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_BLSP_1", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x13, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x12, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x03, 
                                Zero
                            }
                        }
                    }
                }, 

                Package (0x05)
                {
                    "DEVICE", 
                    "\\_SB.SDC1", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }
                    }, 

                    Package (0x08)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO8_A", 
                                One, 
                                0x002B7CD0, 
                                0x00061A80, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO5_A", 
                                One, 
                                0x001B7740, 
                                0xEA60, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x0010A000, 
                                0x7FFF, 
                                0x1FE3
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_SDCC_1", 
                                "ICBID_SLAVE_EBI1", 
                                0x17D78400, 
                                0x0BEBC200
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_sdcc1_ahb_clk", 
                                One, 
                                0x05F5E100, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_sdcc1_apps_clk", 
                                0x08, 
                                0x0BEBC200, 
                                0x02
                            }
                        }
                    }, 

                    Package (0x06)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_sdcc1_ahb_clk", 
                                0x02, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_sdcc1_apps_clk", 
                                0x02, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_SDCC_1", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x0010A000, 
                                0x7FFF, 
                                0x1E00
                            }
                        }
                    }
                }, 

                Package (0x05)
                {
                    "DEVICE", 
                    "\\_SB.SDC2", 
                    Package (0x1C)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FSTATE", 
                            One
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x02, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x03, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x04, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x05, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x06, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x07, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x08, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x09, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0A, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0B, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0C, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0D, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0E, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x0F, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x10, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x11, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x12, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE", 
                            0x13, 
                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    One
                                }
                            }
                        }, 

                        Package (0x08)
                        {
                            "PSTATE", 
                            0x14, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO11_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO12_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    0x23
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO11_A", 
                                    One, 
                                    0x002D0370, 
                                    0x00061A80, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO12_A", 
                                    One, 
                                    0x002D0370, 
                                    0xC350, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    0x23
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE", 
                            0x15, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO12_A", 
                                    One, 
                                    0x001C3A90, 
                                    0xC350, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    0x23
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "PSTATE", 
                            0x16, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO11_A", 
                                    One, 
                                    0x002D0370, 
                                    0x00061A80, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO12_A", 
                                    One, 
                                    0x002D0370, 
                                    0xC350, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    0x23
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "PSTATE", 
                            0x17, 
                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO11_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO12_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    0x23
                                }
                            }
                        }
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                0x16
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x00109000, 
                                0x7FFF, 
                                0x1FDB
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_SDCC_2", 
                                "ICBID_SLAVE_EBI1", 
                                0x17D78400, 
                                0x0BEBC200
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_sdcc2_ahb_clk", 
                                One, 
                                0x05F5E100, 
                                0x04
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_sdcc2_apps_clk", 
                                0x08, 
                                0x0BEBC200, 
                                0x02
                            }
                        }
                    }, 

                    Package (0x07)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_sdcc2_ahb_clk", 
                                0x02, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_sdcc2_apps_clk", 
                                0x02, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_SDCC_2", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMPORT", 
                            Package (0x03)
                            {
                                0x00109000, 
                                0x7FFF, 
                                0x0A00
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE_ADJUST", 
                            Package (0x02)
                            {
                                Zero, 
                                0x17
                            }
                        }
                    }
                }, 

                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.ADSP.SLM1", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x03
                    }
                }
            })
            Method (LPMD, 0, NotSerialized)
            {
                Return (LPCC) /* \_SB_.PEP0.LPCC */
            }

            Name (LPCC, Package (0x00) {})
        }

        Scope (\_SB.PEP0)
        {
            Method (CRMD, 0, NotSerialized)
            {
                Return (CRCC) /* \_SB_.PEP0.CRCC */
            }

            Name (CRCC, Package (0x01)
            {
                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.QBCC", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x04)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_APPSS_PROC", 
                                    "ICBID_SLAVE_PRNG", 
                                    0x2FAF0800, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_prng_ahb_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_APPSS_PROC", 
                                    "ICBID_SLAVE_PRNG", 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_prng_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }
                        }
                    }, 

                    Package (0x08)
                    {
                        "COMPONENT", 
                        One, 
                        Package (0x06)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_ahb_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_axi_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_axi_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    Zero, 
                                    0x03
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_CRYPTO", 
                                    "ICBID_SLAVE_EBI1", 
                                    0x17D78400, 
                                    0x17D78400
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_clk", 
                                    0x03, 
                                    0x09896800, 
                                    One
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_CRYPTO", 
                                    "ICBID_SLAVE_EBI1", 
                                    0x0BEBC200, 
                                    0x0BEBC200
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_clk", 
                                    0x03, 
                                    0x04C4B400, 
                                    One
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE", 
                            0x02, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_CRYPTO", 
                                    "ICBID_SLAVE_EBI1", 
                                    0x05F5E100, 
                                    0x05F5E100
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_clk", 
                                    0x03, 
                                    0x04C4B400, 
                                    One
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE", 
                            0x03, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_CRYPTO", 
                                    "ICBID_SLAVE_EBI1", 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_clk", 
                                    0x03, 
                                    0x04C4B400, 
                                    One
                                }
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (SCMD, 0, NotSerialized)
            {
                Return (SCCC) /* \_SB_.PEP0.SCCC */
            }

            Name (SCCC, Package (0x01)
            {
                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.SCM0", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x06)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_CRYPTO", 
                                    "ICBID_SLAVE_EBI1", 
                                    0x17D78400, 
                                    0x17D78400
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_ahb_clk", 
                                    One, 
                                    Zero, 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_axi_clk", 
                                    One, 
                                    Zero, 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_clk", 
                                    0x08, 
                                    0x09896800, 
                                    One
                                }
                            }
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_CRYPTO", 
                                    "ICBID_SLAVE_EBI1", 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_axi_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_crypto_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (QDMD, 0, NotSerialized)
            {
                Return (QDSC) /* \_SB_.PEP0.QDSC */
            }

            Name (QDSC, Package (0x01)
            {
                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.QDSS", 
                    Package (0x08)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x03)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x06)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "REQUIRED_RESOURCE", 
                                    Package (0x03)
                                    {
                                        One, 
                                        "/clk/qdss", 
                                        Zero
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "REQUIRED_RESOURCE", 
                                    Package (0x03)
                                    {
                                        One, 
                                        "/clk/qdss", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "REQUIRED_RESOURCE", 
                                    Package (0x03)
                                    {
                                        One, 
                                        "/clk/qdss", 
                                        0x02
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "REQUIRED_RESOURCE", 
                                    Package (0x03)
                                    {
                                        One, 
                                        "/clk/qdss", 
                                        0x03
                                    }
                                }
                            }
                        }, 

                        Package (0x06)
                        {
                            "PSTATE_SET", 
                            One, 
                            Package (0x14)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x10F0, 
                                        0x01C8, 
                                        0x01C8
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1100, 
                                        0x01C8, 
                                        0x01C8
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1110, 
                                        0x01C8, 
                                        0x01C8
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1120, 
                                        0x01C8, 
                                        0x01C8
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1130, 
                                        0x01D4, 
                                        0x01D4
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1140, 
                                        0x01D4, 
                                        0x01D4
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1150, 
                                        0x01D4, 
                                        0x01D4
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1160, 
                                        0x01D4, 
                                        0x01D4
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1170, 
                                        0x01D8, 
                                        0x01D8
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1180, 
                                        0x01D8, 
                                        0x01D8
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1190, 
                                        0x01D8, 
                                        0x01D8
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x11A0, 
                                        0x01DC, 
                                        0x01DC
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x11B0, 
                                        0x01DC, 
                                        0x01DC
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x11C0, 
                                        0x01D4, 
                                        0x01D4
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1590, 
                                        0x01C8, 
                                        0x01C8
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x15A0, 
                                        0x01CC, 
                                        0x01CC
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x15B0, 
                                        0x01CC, 
                                        0x01CC
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x15C0, 
                                        0x01CC, 
                                        0x01CC
                                    }
                                }
                            }, 

                            Package (0x14)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x10F0, 
                                        0x01C8, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1100, 
                                        0x01C8, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1110, 
                                        0x01C8, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1120, 
                                        0x01C8, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1130, 
                                        0x01D4, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1140, 
                                        0x01D4, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1150, 
                                        0x01D4, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1160, 
                                        0x01D4, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1170, 
                                        0x01D8, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1180, 
                                        0x01D8, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1190, 
                                        0x01D8, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x11A0, 
                                        0x01DC, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x11B0, 
                                        0x01DC, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x11C0, 
                                        0x01D4, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x1590, 
                                        0x01C8, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x15A0, 
                                        0x01CC, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x15B0, 
                                        0x01CC, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x15C0, 
                                        0x01CC, 
                                        Zero
                                    }
                                }
                            }, 

                            Package (0x06)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x2048, 
                                        0x016D, 
                                        0x016D
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x2014, 
                                        One, 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x0A)
                                    {
                                        "PPP_RESOURCE_ID_LDO21_A", 
                                        One, 
                                        0x002D0370, 
                                        0x2328, 
                                        One, 
                                        Zero, 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x0A)
                                    {
                                        "PPP_RESOURCE_ID_LDO13_A", 
                                        One, 
                                        0x002D0370, 
                                        0x06, 
                                        One, 
                                        Zero, 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }
                            }, 

                            Package (0x06)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x2048, 
                                        0x016D, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x2014, 
                                        One, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x0A)
                                    {
                                        "PPP_RESOURCE_ID_LDO21_A", 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "PMICVREGVOTE", 
                                    Package (0x0A)
                                    {
                                        "PPP_RESOURCE_ID_LDO13_A", 
                                        One, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero, 
                                        Zero
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            0x02, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "REQUIRED_RESOURCE", 
                                    Package (0x03)
                                    {
                                        One, 
                                        "/clk/qdss", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "REQUIRED_RESOURCE", 
                                    Package (0x03)
                                    {
                                        One, 
                                        "/clk/qdss", 
                                        Zero
                                    }
                                }
                            }
                        }, 

                        Package (0x03)
                        {
                            "PSTATE_SET", 
                            0x03, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "TLMMPORT", 
                                    Package (0x03)
                                    {
                                        0x00016000, 
                                        0x07FF, 
                                        0x01CC
                                    }
                                }
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (SMMD, 0, NotSerialized)
            {
                Return (SMCC) /* \_SB_.PEP0.SMCC */
            }

            Name (SMCC, Package (0x02)
            {
                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.ATCU", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x05)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    0x000186A0
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_smmu_cfg_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_apss_tcu_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_smmu_cfg_clk", 
                                    0x02, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_apss_tcu_clk", 
                                    0x02, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    Zero
                                }
                            }
                        }
                    }
                }, 

                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.GTCU", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x05)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    0x000186A0
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_smmu_cfg_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_gfx_tcu_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }
                        }, 

                        Package (0x05)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_smmu_cfg_clk", 
                                    0x02, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_gfx_tcu_clk", 
                                    0x02, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    Zero
                                }
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (USMD, 0, NotSerialized)
            {
                Return (USBC) /* \_SB_.PEP0.USBC */
            }

            Name (USBC, Package (0x03)
            {
                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.URS0", 
                    Package (0x05)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "PMICUSBOTG", 
                                    Package (0x02)
                                    {
                                        "IOCTL_PM_3P_PUBLIC_USB_OTG_ENABLE", 
                                        Zero
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "PMICUSBOTG", 
                                    Package (0x02)
                                    {
                                        "IOCTL_PM_3P_PUBLIC_USB_OTG_ENABLE", 
                                        One
                                    }
                                }
                            }
                        }, 

                        Package (0x04)
                        {
                            "PSTATE_SET", 
                            One, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_usb2a_phy_sleep_clk", 
                                        One, 
                                        Zero, 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x03)
                                    {
                                        "gcc_usb2a_phy_sleep_clk", 
                                        0x09, 
                                        0x08
                                    }
                                }, 

                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x03)
                                    {
                                        "gcc_usb2a_phy_sleep_clk", 
                                        0x09, 
                                        0x0C
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "PRELOAD_PSTATE", 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.URS0.UFN0", 
                    Package (0x0B)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }, 

                        Package (0x0A)
                        {
                            "PSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_system_clk", 
                                    0x08, 
                                    0x3C, 
                                    0x09
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_ahb_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    0x000186A0
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/snoc", 
                                    0x00030D40
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/bimc", 
                                    0x00061A80
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    0x002EEBB8, 
                                    0x3E80, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/hfpll1", 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A", 
                                    One, 
                                    0x00124F80, 
                                    0x1770, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x02)
                        {
                            "PSTATE", 
                            One
                        }, 

                        Package (0x0A)
                        {
                            "PSTATE", 
                            0x02, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_system_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/snoc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/bimc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    0x002EEBB8, 
                                    0x03E8, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/hfpll1", 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A", 
                                    One, 
                                    0x00124F80, 
                                    0x1770, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x0A)
                        {
                            "PSTATE", 
                            0x03, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_system_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/snoc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/bimc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/hfpll1", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x0B)
                        {
                            "PSTATE", 
                            0x04, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_system_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/snoc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/bimc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_USB_HS", 
                                    "ICBID_SLAVE_EBI1", 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    0x002EEBB8, 
                                    0x03E8, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/hfpll1", 
                                    0x02
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A", 
                                    One, 
                                    0x00124F80, 
                                    0x1770, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x0B)
                        {
                            "PSTATE", 
                            0x05, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_system_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_usb_hs_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/pcnoc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/snoc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/clk/bimc", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_USB_HS", 
                                    "ICBID_SLAVE_EBI1", 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO13_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "REQUIRED_RESOURCE", 
                                Package (0x03)
                                {
                                    One, 
                                    "/pmic/client/hfpll1", 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO2_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x02)
                        {
                            "ABANDON_PSTATE", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "PREPARE_PSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x03
                    }
                }, 

                Package (0x08)
                {
                    "DEVICE", 
                    "\\_SB.URS0.USB0", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x0A)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb_hs_system_clk", 
                                0x08, 
                                0x3C, 
                                0x09
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb_hs_ahb_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/pcnoc", 
                                0x000186A0
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/snoc", 
                                0x00030D40
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/bimc", 
                                0x00061A80
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO13_A", 
                                One, 
                                0x002EEBB8, 
                                0x3E80, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/pmic/client/hfpll1", 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO2_A", 
                                One, 
                                0x00124F80, 
                                0x1770, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x0B)
                    {
                        "DSTATE", 
                        One, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb_hs_system_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb_hs_ahb_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/pcnoc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/snoc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/bimc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB_HS", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO13_A", 
                                One, 
                                0x002EEBB8, 
                                0x93, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/pmic/client/hfpll1", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO2_A", 
                                One, 
                                0x00124F80, 
                                0x056E, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x0B)
                    {
                        "DSTATE", 
                        0x02, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb_hs_system_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb_hs_ahb_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/pcnoc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/snoc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/bimc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB_HS", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO13_A", 
                                One, 
                                0x002EEBB8, 
                                0x93, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/pmic/client/hfpll1", 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO2_A", 
                                One, 
                                0x00124F80, 
                                0x056E, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x0B)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb_hs_system_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_usb_hs_ahb_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/pcnoc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/snoc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/clk/bimc", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "BUSARB", 
                            Package (0x05)
                            {
                                0x03, 
                                "ICBID_MASTER_USB_HS", 
                                "ICBID_SLAVE_EBI1", 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO13_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "REQUIRED_RESOURCE", 
                            Package (0x03)
                            {
                                One, 
                                "/pmic/client/hfpll1", 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO2_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "ABANDON_DSTATE", 
                        0x03
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (CPMD, 0, NotSerialized)
            {
                Return (CPCC) /* \_SB_.PEP0.CPCC */
            }

            Method (CPMX, 0, NotSerialized)
            {
                Return (CPXC) /* \_SB_.PEP0.CPXC */
            }

            Name (CPCC, Package (0x02)
            {
                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.CAMP", 
                    Package (0x04)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x0B)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_APPSS_PROC", 
                                    "ICBID_SLAVE_CAMERA_CFG", 
                                    0x17D78400, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_BLSP_1", 
                                    "ICBID_SLAVE_EBI1", 
                                    Zero, 
                                    0x005F5E10
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_ahb_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_qup3_i2c_apps_clk", 
                                    0x08, 
                                    0x0124F800, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_top_ahb_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_ahb_clk", 
                                    One, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x1D, 
                                    One, 
                                    One, 
                                    One, 
                                    0x03, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x1E, 
                                    One, 
                                    One, 
                                    One, 
                                    0x03, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO6_A", 
                                    One, 
                                    0x001B7740, 
                                    0x000493E0, 
                                    One, 
                                    Zero, 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x0E)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x1E, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x1D, 
                                    Zero, 
                                    Zero, 
                                    One, 
                                    One, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "DELAY", 
                                Package (0x01)
                                {
                                    0x23
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x1E, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    0x03, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "TLMMGPIO", 
                                Package (0x06)
                                {
                                    0x1D, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    0x03, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_top_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_qup3_i2c_apps_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_blsp1_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_APPSS_PROC", 
                                    "ICBID_SLAVE_CAMERA_CFG", 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_BLSP_1", 
                                    "ICBID_SLAVE_EBI1", 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PMICVREGVOTE", 
                                Package (0x0A)
                                {
                                    "PPP_RESOURCE_ID_LDO6_A", 
                                    One, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero, 
                                    Zero
                                }
                            }
                        }
                    }
                }, 

                Package (0x03)
                {
                    "DEVICE", 
                    "\\_SB.VFE0", 
                    Package (0x06)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x0E)
                        {
                            "FSTATE", 
                            Zero, 
                            Package (0x02)
                            {
                                "FOOTSWITCH", 
                                Package (0x02)
                                {
                                    "VDD_CAMSS_VFE", 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    One, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_APPSS_PROC", 
                                    "ICBID_SLAVE_CAMERA_CFG", 
                                    0x17D78400, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_vfe0_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_vfe_axi_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_top_ahb_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_vfe_ahb_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_ahb_clk", 
                                    One, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_vfe_tbu_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_smmu_cfg_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_apss_tcu_clk", 
                                    One, 
                                    Zero, 
                                    One
                                }
                            }
                        }, 

                        Package (0x0D)
                        {
                            "FSTATE", 
                            One, 
                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_apss_tcu_clk", 
                                    0x02, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_smmu_cfg_clk", 
                                    0x02, 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_vfe_tbu_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_vfe_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_top_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_vfe_axi_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_vfe0_clk", 
                                    0x02, 
                                    Zero, 
                                    One
                                }
                            }, 

                            Package (0x02)
                            {
                                "CLOCK", 
                                Package (0x04)
                                {
                                    "gcc_camss_ahb_clk", 
                                    0x02, 
                                    Zero, 
                                    0x03
                                }
                            }, 

                            Package (0x02)
                            {
                                "BUSARB", 
                                Package (0x05)
                                {
                                    0x03, 
                                    "ICBID_MASTER_APPSS_PROC", 
                                    "ICBID_SLAVE_CAMERA_CFG", 
                                    Zero, 
                                    Zero
                                }
                            }, 

                            Package (0x02)
                            {
                                "PSTATE_ADJUST", 
                                Package (0x02)
                                {
                                    One, 
                                    0x0E
                                }
                            }, 

                            Package (0x02)
                            {
                                "FOOTSWITCH", 
                                Package (0x02)
                                {
                                    "VDD_CAMSS_VFE", 
                                    0x02
                                }
                            }
                        }, 

                        Package (0x08)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_camss_vfe0_clk", 
                                        0x03, 
                                        0x1312D000, 
                                        0x03
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_camss_vfe0_clk", 
                                        0x03, 
                                        0x0FE50FB0, 
                                        0x03
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_camss_vfe0_clk", 
                                        0x03, 
                                        0x0BEBC200, 
                                        0x03
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_camss_vfe0_clk", 
                                        0x03, 
                                        0x07ED6B40, 
                                        0x03
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x04, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_camss_vfe0_clk", 
                                        0x03, 
                                        0x05F5E100, 
                                        0x03
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x05, 
                                Package (0x02)
                                {
                                    "CLOCK", 
                                    Package (0x04)
                                    {
                                        "gcc_camss_vfe0_clk", 
                                        0x03, 
                                        0x04C4B400, 
                                        0x03
                                    }
                                }
                            }
                        }, 

                        Package (0x11)
                        {
                            "PSTATE_SET", 
                            One, 
                            Package (0x03)
                            {
                                "PSTATE", 
                                Zero, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x00000001443FD000, 
                                        0xCAA7E200
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                One, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x000000011E1A3000, 
                                        0xB2D05E00
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x02, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0xBEBC2000, 
                                        0x77359400
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x03, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x8F0D1800, 
                                        0x59682F00
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x04, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x7270E000, 
                                        0x47868C00
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x05, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x5F5E1000, 
                                        0x3B9ACA00
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x06, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x55D4A800, 
                                        0x35A4E900
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x07, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x4C4B4000, 
                                        0x2FAF0800
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x08, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x42C1D800, 
                                        0x29B92700
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x09, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x39387000, 
                                        0x23C34600
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0A, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x2FAF0800, 
                                        0x1DCD6500
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0B, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x2625A000, 
                                        0x17D78400
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0C, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x1C9C3800, 
                                        0x11E1A300
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0D, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        0x1312D000, 
                                        0x0BEBC200
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "PSTATE", 
                                0x0E, 
                                Package (0x02)
                                {
                                    "BUSARB", 
                                    Package (0x05)
                                    {
                                        0x03, 
                                        "ICBID_MASTER_VFE", 
                                        "ICBID_SLAVE_EBI1", 
                                        Zero, 
                                        Zero
                                    }
                                }
                            }
                        }
                    }
                }
            })
            Name (CPXC, Package (0x02)
            {
                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.CAMS", 
                    Package (0x14)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO2_A", 
                                One, 
                                0x00124F80, 
                                0x00029810, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                0x001B7740, 
                                0x000493E0, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO17_A", 
                                One, 
                                0x002B7CD0, 
                                0x000927C0, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x23, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0_clk", 
                                0x08, 
                                0x0BEBC200, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0phytimer_clk", 
                                0x08, 
                                0x0BEBC200, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_mclk0_clk", 
                                0x08, 
                                0x00927C00, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi_vfe0_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0phy_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0pix_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0rdi_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0_ahb_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_ispif_ahb_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x1A, 
                                One, 
                                One, 
                                One, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x22, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x05
                            }
                        }
                    }, 

                    Package (0x15)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x22, 
                                Zero, 
                                Zero, 
                                One, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x1A, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x05
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_ispif_ahb_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0_ahb_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0rdi_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0pix_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0phy_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi_vfe0_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_mclk0_clk", 
                                0x02, 
                                Zero, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0phytimer_clk", 
                                0x02, 
                                Zero, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0_clk", 
                                0x02, 
                                Zero, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO17_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x23, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO2_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x0A
                            }
                        }
                    }
                }, 

                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.CAMF", 
                    Package (0x14)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO2_A", 
                                One, 
                                0x00124F80, 
                                0x00029810, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                0x001B7740, 
                                0x000493E0, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO17_A", 
                                One, 
                                0x002B7CD0, 
                                0x000927C0, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x23, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1_clk", 
                                0x08, 
                                0x0BEBC200, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0phytimer_clk", 
                                0x08, 
                                0x0BEBC200, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_mclk1_clk", 
                                0x08, 
                                0x00927C00, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi_vfe0_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1phy_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1pix_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1rdi_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1_ahb_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_ispif_ahb_clk", 
                                One, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x1B, 
                                One, 
                                One, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x21, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x05
                            }
                        }
                    }, 

                    Package (0x15)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x21, 
                                Zero, 
                                Zero, 
                                One, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x1B, 
                                Zero, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x05
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_ispif_ahb_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1_ahb_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1rdi_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1pix_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1phy_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi_vfe0_clk", 
                                0x02, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_mclk1_clk", 
                                0x02, 
                                Zero, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi0phytimer_clk", 
                                0x02, 
                                Zero, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "CLOCK", 
                            Package (0x04)
                            {
                                "gcc_camss_csi1_clk", 
                                0x02, 
                                Zero, 
                                0x03
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO17_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x23, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO2_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x0A
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (LPMX, 0, NotSerialized)
            {
                Return (LPXC) /* \_SB_.PEP0.LPXC */
            }

            Name (LPXC, Package (0x01)
            {
                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.TSC1", 
                    Package (0x08)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0E)
                            {
                                "PPP_RESOURCE_ID_SMPS2_A", 
                                0x02, 
                                0x001DC130, 
                                0x0007A120, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                0x001B7740, 
                                0x64, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO17_A", 
                                One, 
                                0x002B7CD0, 
                                0x000249F0, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x0C, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0xC8
                            }
                        }
                    }, 

                    Package (0x06)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x0C, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO17_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0E)
                            {
                                "PPP_RESOURCE_ID_SMPS2_A", 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (ACMD, 0, NotSerialized)
            {
                Return (ACMC) /* \_SB_.PEP0.ACMC */
            }

            Name (ACMC, Package (0x02)
            {
                Package (0x06)
                {
                    "DEVICE", 
                    "\\_SB.ACC1", 
                    Package (0x05)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0E)
                            {
                                "PPP_RESOURCE_ID_SMPS2_A", 
                                0x02, 
                                0x001DC130, 
                                0x0007A120, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                0x001B7740, 
                                0x64, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x32
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x05)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0E)
                            {
                                "PPP_RESOURCE_ID_SMPS2_A", 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x14
                            }
                        }
                    }
                }, 

                Package (0x06)
                {
                    "DEVICE", 
                    "\\_SB.ACC2", 
                    Package (0x05)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0E)
                            {
                                "PPP_RESOURCE_ID_SMPS2_A", 
                                0x02, 
                                0x001DC130, 
                                0x0007A120, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                0x001B7740, 
                                0x64, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x05)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0E)
                            {
                                "PPP_RESOURCE_ID_SMPS2_A", 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (PCMD, 0, NotSerialized)
            {
                Return (PCMC) /* \_SB_.PEP0.PCMC */
            }

            Name (PCMC, Package (0x01)
            {
                Package (0x07)
                {
                    "DEVICE", 
                    "\\_SB.APS1", 
                    Package (0x03)
                    {
                        "COMPONENT", 
                        Zero, 
                        Package (0x02)
                        {
                            "FSTATE", 
                            Zero
                        }
                    }, 

                    Package (0x04)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO17_A", 
                                One, 
                                0x002B7CD0, 
                                0x014A, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x05
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x03)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO17_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (DIMX, 0, NotSerialized)
            {
                Return (DIXC) /* \_SB_.PEP0.DIXC */
            }

            Name (DIXC, Package (0x01)
            {
                Package (0x06)
                {
                    "DEVICE", 
                    "\\_SB.DISP", 
                    Package (0x06)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0E)
                            {
                                "PPP_RESOURCE_ID_SMPS2_A", 
                                0x02, 
                                0x001DC130, 
                                0x0007A120, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                0x001B7740, 
                                0x64, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x17, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "DSTATE", 
                        0x02
                    }, 

                    Package (0x06)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "TLMMGPIO", 
                            Package (0x06)
                            {
                                0x17, 
                                Zero, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "DELAY", 
                            Package (0x01)
                            {
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO6_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0E)
                            {
                                "PPP_RESOURCE_ID_SMPS2_A", 
                                0x02, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                0x05, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }
                }
            })
        }

        Scope (\_SB.PEP0)
        {
            Method (RPMX, 0, NotSerialized)
            {
                Return (RPXC) /* \_SB_.PEP0.RPXC */
            }

            Name (RPXC, Package (0x01)
            {
                Package (0x04)
                {
                    "DEVICE", 
                    "\\_SB.NFC1", 
                    Package (0x05)
                    {
                        "DSTATE", 
                        Zero, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x04)
                            {
                                "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A", 
                                0x06, 
                                Zero, 
                                One
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICGPIO", 
                            Package (0x06)
                            {
                                "IOCTL_PM_GPIO_CONFIG_DIGITAL_INPUT", 
                                Zero, 
                                One, 
                                0x05, 
                                0x02, 
                                0x02
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO5_A", 
                                One, 
                                0x001B7740, 
                                0x3A98, 
                                One, 
                                Zero, 
                                One, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }
                    }, 

                    Package (0x05)
                    {
                        "DSTATE", 
                        0x03, 
                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x0A)
                            {
                                "PPP_RESOURCE_ID_LDO5_A", 
                                One, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICVREGVOTE", 
                            Package (0x04)
                            {
                                "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A", 
                                0x06, 
                                Zero, 
                                Zero
                            }
                        }, 

                        Package (0x02)
                        {
                            "PMICGPIO", 
                            Package (0x06)
                            {
                                "IOCTL_PM_GPIO_CONFIG_DIGITAL_INPUT", 
                                Zero, 
                                One, 
                                0x04, 
                                0x02, 
                                Zero
                            }
                        }
                    }
                }
            })
        }

        Device (WDFH)
        {
            Name (_HID, "QCOM247F")  // _HID: Hardware ID
        }

        Device (CDI)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PILC, 
                \_SB.RPEN
            })
            Name (_HID, "QCOM245B")  // _HID: Hardware ID
            Name (RUNS, Package (0x03)
            {
                Package (0x07)
                {
                    "SharedIMEM", 
                    ToUUID ("6fae2f68-3b80-4931-8e0e-e30a3580f14c") /* Unknown UUID */, 
                    Zero, 
                    Zero, 
                    One, 
                    0x08600000, 
                    0x1000
                }, 

                Package (0x07)
                {
                    "TZ_LOG", 
                    ToUUID ("aa795f4d-3b0a-44a4-bb84-b7ecf3ee056a") /* Unknown UUID */, 
                    Zero, 
                    Zero, 
                    One, 
                    0x08600720, 
                    0x1000
                }, 

                Package (0x0B)
                {
                    "RPM", 
                    ToUUID ("7f8e50dc-fad4-4a31-a243-3ab83708e49f") /* Unknown UUID */, 
                    Zero, 
                    One, 
                    0x03, 
                    0x00200000, 
                    0x00024000, 
                    0x00290000, 
                    0x00010000, 
                    0x00060000, 
                    0x6000
                }
            })
            Name (CDIC, Package (0x01)
            {
                Package (0x03)
                {
                    Zero, 
                    One, 
                    0x0B017000
                }
            })
        }

        Device (RPEN)
        {
            Name (_HID, "QCOM245C")  // _HID: Hardware ID
        }

        Device (PILC)
        {
            Name (_HID, "QCOM2429")  // _HID: Hardware ID
            Method (ACPO, 0, NotSerialized)
            {
                Name (PKGG, Package (0x01)
                {
                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        ToUUID ("ba58766d-abf2-4402-88d7-90ab243f6c77") /* Unknown UUID */
                    }
                })
                DerefOf (PKGG [Zero]) [Zero] = RMTB /* \_SB_.RMTB */
                DerefOf (PKGG [Zero]) [One] = RMTX /* \_SB_.RMTX */
                Return (PKGG) /* \_SB_.PILC.ACPO.PKGG */
            }

            Method (IMEM, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    0x08600000, 
                    0x094C
                })
            }

            Method (MSAL, 0, NotSerialized)
            {
                Return (Package (0x01)
                {
                    One
                })
            }

            Name (PGCM, Package (0x01)
            {
                Package (0x02)
                {
                    0x88000000, 
                    0x06500000
                }
            })
            Method (PILC, 0, NotSerialized)
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }
        }

        Device (AMSS)
        {
            Name (_DEP, Package (0x05)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.SMD0, 
                \_SB.PILC, 
                \_SB.RPEN, 
                \_SB.RFS0
            })
            Name (_HID, "QCOM242C")  // _HID: Hardware ID
            Method (CHLD, 0, NotSerialized)
            {
                If ((\_SB.SOID == 0x0109))
                {
                    Return (Package (0x01)
                    {
                        Package (0x05)
                        {
                            "AMSS\\QCOM242D", 
                            0x2A, 
                            One, 
                            One, 
                            One
                        }
                    })
                }
                Else
                {
                    Return (Package (0x03)
                    {
                        Package (0x05)
                        {
                            "AMSS\\QCOM242D", 
                            0x2A, 
                            One, 
                            One, 
                            One
                        }, 

                        Package (0x05)
                        {
                            "QCMS\\QCOM0EA0", 
                            0x2B, 
                            One, 
                            Zero, 
                            One
                        }, 

                        Package (0x05)
                        {
                            "QCMS\\QCOM0EA0", 
                            0x2B, 
                            0x02, 
                            Zero, 
                            One
                        }
                    })
                }
            }

            Method (SHUT, 0, NotSerialized)
            {
                If ((\_SB.SOID == 0x0109))
                {
                    Return (Package (0x01)
                    {
                        One
                    })
                }
                Else
                {
                    Return (Package (0x01)
                    {
                        Zero
                    })
                }
            }

            Method (SSRE, 0, NotSerialized)
            {
                Return (Package (0x01)
                {
                    One
                })
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000038,
                    }
                })
                Return (RBUF) /* \_SB_.AMSS._CRS.RBUF */
            }

            Method (VLMT, 0, NotSerialized)
            {
                Name (RBUF, Package (0x04)
                {
                    Package (0x02)
                    {
                        0x21, 
                        0x03
                    }, 

                    Package (0x02)
                    {
                        0x42, 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        0x63, 
                        One
                    }, 

                    Package (0x02)
                    {
                        0x64, 
                        Zero
                    }
                })
                Return (RBUF) /* \_SB_.AMSS.VLMT.RBUF */
            }

            Method (BUFF, 0, NotSerialized)
            {
                Return (Package (0x03)
                {
                    0x90000000, 
                    0xA0000000, 
                    Zero
                })
            }

            Device (ADCM)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (SMMU, 0, NotSerialized)
                {
                    Name (CFG, Package (0x01)
                    {
                        Package (0x03)
                        {
                            Zero, 
                            Zero, 
                            Zero
                        }
                    })
                    Return (CFG) /* \_SB_.AMSS.ADCM.SMMU.CFG_ */
                }

                Method (ACDB, 0, NotSerialized)
                {
                    Name (CFG, Package (0x01)
                    {
                        Package (0x04)
                        {
                            0x2000, 
                            0x60, 
                            Package (0x01)
                            {
                                One
                            }, 

                            One
                        }
                    })
                    Return (CFG) /* \_SB_.AMSS.ADCM.ACDB.CFG_ */
                }

                Method (AVTI, 0, NotSerialized)
                {
                    Name (CFG, Package (0x01)
                    {
                        Package (0x04)
                        {
                            0x07706000, 
                            0x07706010, 
                            0x0770600C, 
                            0x1B
                        }
                    })
                    Return (CFG) /* \_SB_.AMSS.ADCM.AVTI.CFG_ */
                }

                Method (DOLI, 0, NotSerialized)
                {
                    Name (CFG, Package (0x01)
                    {
                        Package (0x02)
                        {
                            0x02, 
                            Zero
                        }
                    })
                    Return (CFG) /* \_SB_.AMSS.ADCM.DOLI.CFG_ */
                }

                Method (MEMI, 0, NotSerialized)
                {
                    Name (CFG, Package (0x01)
                    {
                        Package (0x07)
                        {
                            0x8EB00000, 
                            Zero, 
                            0xA0000000, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x02
                        }
                    })
                    Return (CFG) /* \_SB_.AMSS.ADCM.MEMI.CFG_ */
                }

                Method (CPMR, 0, NotSerialized)
                {
                    Name (CFG, Package (0x01)
                    {
                        Package (0x06)
                        {
                            One, 
                            ToUUID ("5f51a34c-6834-479d-9ea2-eafa622524ba") /* Unknown UUID */, 
                            One, 
                            Zero, 
                            One, 
                            0x0008C000
                        }
                    })
                    Return (CFG) /* \_SB_.AMSS.ADCM.CPMR.CFG_ */
                }

                Method (CHLD, 0, NotSerialized)
                {
                    Return (Package (0x01)
                    {
                        "ADCM\\QCOM242E"
                    })
                }

                Method (NOKI, 0, NotSerialized)
                {
                    Return (Package (0x01)
                    {
                        One
                    })
                }

                Device (AUDD)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (RBUF, ResourceTemplate ()
                        {
                            GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionNone,
                                "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0004
                                }
                            GpioInt (Edge, ActiveHigh, Shared, PullNone, 0x0000,
                                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0F87
                                }
                            GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0F86
                                }
                            GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0F85
                                }
                            GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0F84
                                }
                            GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                                "\\_SB.PM01", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0F83
                                }
                        })
                        Name (NAM, Buffer (0x0A)
                        {
                            "\\_SB.SPMI"
                        })
                        Name (PON1, Buffer (0x0C)
                        {
                            /* 0000 */  0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x01,  // ........
                            /* 0008 */  0xF0, 0x01, 0x00, 0x00                           // ....
                        })
                        Name (PON2, Buffer (0x0C)
                        {
                            /* 0000 */  0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x01,  // ........
                            /* 0008 */  0xF1, 0x01, 0x00, 0x00                           // ....
                        })
                        Name (END, Buffer (0x02)
                        {
                             0x79, 0x00                                       // y.
                        })
                        Concatenate (PON1, NAM, Local1)
                        Concatenate (PON2, NAM, Local2)
                        Concatenate (Local1, Local2, Local3)
                        Concatenate (Local3, RBUF, Local0)
                        Return (Local0)
                    }

                    Method (BFSZ, 0, NotSerialized)
                    {
                        Name (SIZE, Package (0x01)
                        {
                            0x0800
                        })
                        Return (SIZE) /* \_SB_.AMSS.ADCM.AUDD.BFSZ.SIZE */
                    }

                    Method (PWRC, 0, NotSerialized)
                    {
                        Name (PWRA, Package (0x01)
                        {
                            One
                        })
                        Return (PWRA) /* \_SB_.AMSS.ADCM.AUDD.PWRC.PWRA */
                    }

                    Method (BUSI, 0, NotSerialized)
                    {
                        Name (BUSS, Package (0x02)
                        {
                            0x03, 
                            0x0200
                        })
                        Return (BUSS) /* \_SB_.AMSS.ADCM.AUDD.BUSI.BUSS */
                    }

                    Method (WSMI, 0, NotSerialized)
                    {
                        Name (WSMD, Package (0x02)
                        {
                            One, 
                            0x19
                        })
                        Return (WSMD) /* \_SB_.AMSS.ADCM.AUDD.WSMI.WSMD */
                    }

                    Method (CIPI, 0, NotSerialized)
                    {
                        Name (CIPD, Package (0x06)
                        {
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (CIPD) /* \_SB_.AMSS.ADCM.AUDD.CIPI.CIPD */
                    }

                    Method (RPNF, 0, NotSerialized)
                    {
                        Name (REGV, Package (0x02)
                        {
                            Package (0x05)
                            {
                                0x07702004, 
                                0x0100, 
                                0x0100, 
                                Zero, 
                                Zero
                            }, 

                            Package (0x05)
                            {
                                0x07702000, 
                                0x00200000, 
                                0x00200000, 
                                Zero, 
                                Zero
                            }
                        })
                        Return (REGV) /* \_SB_.AMSS.ADCM.AUDD.RPNF.REGV */
                    }

                    Method (GPNF, 0, NotSerialized)
                    {
                        Name (GPIO, Package (0x01)
                        {
                            Package (0x03)
                            {
                                0x06, 
                                Zero, 
                                Zero
                            }
                        })
                        Return (GPIO) /* \_SB_.AMSS.ADCM.AUDD.GPNF.GPIO */
                    }

                    Method (CHLD, 0, NotSerialized)
                    {
                        Name (CH, Package (0x02)
                        {
                            "AUDD\\QCOM2468", 
                            "AUDD\\QCOM2451"
                        })
                        Return (CH) /* \_SB_.AMSS.ADCM.AUDD.CHLD.CH__ */
                    }

                    Method (PPNF, 0, NotSerialized)
                    {
                        Name (PP, Package (0x02)
                        {
                            Package (0x02)
                            {
                                Zero, 
                                Package (0x03)
                                {
                                    Zero, 
                                    Package (0x03)
                                    {
                                        Zero, 
                                        Zero, 
                                        One
                                    }, 

                                    Package (0x03)
                                    {
                                        0x03, 
                                        0x15, 
                                        One
                                    }
                                }
                            }, 

                            Package (0x04)
                            {
                                One, 
                                Package (0x04)
                                {
                                    0x45, 
                                    Package (0x03)
                                    {
                                        Zero, 
                                        Zero, 
                                        One
                                    }, 

                                    Package (0x03)
                                    {
                                        One, 
                                        0x06, 
                                        One
                                    }, 

                                    Package (0x03)
                                    {
                                        0x03, 
                                        0x15, 
                                        One
                                    }
                                }, 

                                Package (0x04)
                                {
                                    0x5D, 
                                    Package (0x03)
                                    {
                                        Zero, 
                                        Zero, 
                                        One
                                    }, 

                                    Package (0x03)
                                    {
                                        One, 
                                        0x06, 
                                        One
                                    }, 

                                    Package (0x03)
                                    {
                                        0x03, 
                                        0x15, 
                                        One
                                    }
                                }, 

                                Package (0x04)
                                {
                                    0x07, 
                                    Package (0x03)
                                    {
                                        Zero, 
                                        Zero, 
                                        One
                                    }, 

                                    Package (0x03)
                                    {
                                        One, 
                                        0x06, 
                                        One
                                    }, 

                                    Package (0x03)
                                    {
                                        0x03, 
                                        0x15, 
                                        One
                                    }
                                }
                            }
                        })
                        Return (PP) /* \_SB_.AMSS.ADCM.AUDD.PPNF.PP__ */
                    }

                    Device (MBHC)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                        {
                            Name (RBUF, Buffer (0x02)
                            {
                                 0x79, 0x00                                       // y.
                            })
                            Return (RBUF) /* \_SB_.AMSS.ADCM.AUDD.MBHC._CRS.RBUF */
                        }

                        Method (BFSZ, 0, NotSerialized)
                        {
                            Name (SIZE, Package (0x01)
                            {
                                0x0800
                            })
                            Return (SIZE) /* \_SB_.AMSS.ADCM.AUDD.MBHC.BFSZ.SIZE */
                        }

                        Method (GPNF, 0, NotSerialized)
                        {
                            Name (GPIO, Package (0x00) {})
                            Return (GPIO) /* \_SB_.AMSS.ADCM.AUDD.MBHC.GPNF.GPIO */
                        }
                    }

                    Device (QCRT)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (CPMR, 0, NotSerialized)
                        {
                            Name (CFG, Package (0x01)
                            {
                                Package (0x09)
                                {
                                    One, 
                                    ToUUID ("8c2e4c6c-ba3e-415a-8bc8-33ec5ee7a77c") /* Unknown UUID */, 
                                    0x02, 
                                    Zero, 
                                    One, 
                                    0x00031000, 
                                    One, 
                                    Zero, 
                                    Zero
                                }
                            })
                            Return (CFG) /* \_SB_.AMSS.ADCM.AUDD.QCRT.CPMR.CFG_ */
                        }

                        Method (LSTN, 0, NotSerialized)
                        {
                            Name (CFG, Package (0x02)
                            {
                                Package (0x09)
                                {
                                    Zero, 
                                    0x02, 
                                    0x02, 
                                    Zero, 
                                    One, 
                                    Package (0x04)
                                    {
                                        Zero, 
                                        0x06, 
                                        One, 
                                        0x52
                                    }, 

                                    One, 
                                    Package (One)
                                    {
                                        One
                                    }, 

                                    0x05
                                }, 

                                Package (0x06)
                                {
                                    One, 
                                    One, 
                                    0x04, 
                                    Package (0x04)
                                    {
                                        One, 
                                        0x02, 
                                        0x03, 
                                        0x04
                                    }, 

                                    One, 
                                    Package (One)
                                    {
                                        0x3E80
                                    }
                                }
                            })
                            Return (CFG) /* \_SB_.AMSS.ADCM.AUDD.QCRT.LSTN.CFG_ */
                        }
                    }
                }
            }

            Device (ATTS)
            {
                Name (_HID, "MSHW1018")  // _HID: Hardware ID
            }
        }

        Device (CXTL)
        {
            Name (_HID, "QCOM24C0")  // _HID: Hardware ID
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.AMSS
            })
            Method (VLMT, 0, NotSerialized)
            {
                Name (RBUF, Package (0x04)
                {
                    Package (0x02)
                    {
                        0x21, 
                        0x03
                    }, 

                    Package (0x02)
                    {
                        0x42, 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        0x63, 
                        One
                    }, 

                    Package (0x02)
                    {
                        0x64, 
                        Zero
                    }
                })
                Return (RBUF) /* \_SB_.CXTL.VLMT.RBUF */
            }
        }

        Device (QMUX)
        {
            Name (_HID, "QCOM244F")  // _HID: Hardware ID
            Name (AKLJ, One)
        }

        Device (FTM0)
        {
            Name (_HID, "QCOM2462")  // _HID: Hardware ID
        }

        Device (RIVA)
        {
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.SMD0, 
                \_SB.PILC, 
                \_SB.RPEN
            })
            Name (_HID, "QCOM242A")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000B5,
                    }
                })
                Return (RBUF) /* \_SB_.RIVA._CRS.RBUF */
            }

            Method (CHLD, 0, NotSerialized)
            {
                Return (Package (0x03)
                {
                    Package (0x05)
                    {
                        "QWCN\\QCOM245D", 
                        0x41, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x05)
                    {
                        "QWCN\\QCOM2450", 
                        0x12, 
                        One, 
                        One, 
                        One
                    }, 

                    Package (0x05)
                    {
                        "QWCN\\QCOM2150", 
                        0x25, 
                        One, 
                        One, 
                        One
                    }
                })
            }

            Method (SSRE, 0, NotSerialized)
            {
                Return (Package (0x01)
                {
                    One
                })
            }

            OperationRegion (WOPR, 0x80, Zero, 0x10)
            Field (WOPR, DWordAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                WTRG,   32
            }

            PowerResource (WRST, 0x05, 0x0000)
            {
                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                {
                    WTRG = 0xABCD
                }
            }

            PowerResource (WRS1, 0x05, 0x0000)
            {
                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                {
                }
            }

            Device (BTH0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (PCTL, One)
                Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
                {
                    If ((\_SB.RIVA.BTH0.PCTL == One))
                    {
                        Return (Package (One)
                        {
                            \_SB.RIVA.WRST
                        })
                    }
                    Else
                    {
                        Return (Package (One)
                        {
                            \_SB.RIVA.WRS1
                        })
                    }
                }
            }

            Device (QWLN)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_PRR, Package (One)  // _PRR: Power Resource for Reset
                {
                    \_SB.RIVA.WRST
                })
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero, 
                    Zero
                })
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x0A000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                        {
                            0x000000B2,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x000000B1,
                        }
                    })
                    Return (RBUF) /* \_SB_.RIVA.QWLN._CRS.RBUF */
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                }

                Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
                {
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                }
            }

            Device (FMT0)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_PRR, Package (One)  // _PRR: Power Resource for Reset
                {
                    \_SB.RIVA.WRST
                })
            }
        }

        Device (QSM)
        {
            Name (_HID, "QCOM24B8")  // _HID: Hardware ID
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                \_SB.SMD0, 
                \_SB.IPC0, 
                \_SB.PILC, 
                \_SB.RPEN
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x8E500000,         // Address Base
                        0x00400000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x8E900000,         // Address Base
                        0x00600000,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.QSM_._CRS.RBUF */
            }

            Name (DHMS, Package (0x02)
            {
                Package (0x03)
                {
                    "GPS", 
                    ToUUID ("65a7c5ab-ec97-4e09-9c6a-e47f183b22b5") /* Unknown UUID */, 
                    Zero
                }, 

                Package (0x03)
                {
                    "Diag", 
                    Buffer (0x10)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                    }, 

                    Zero
                }
            })
        }

        Device (QMMI)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.QDIG
            })
            Name (_HID, "QCOM2496")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0193D100,         // Address Base
                        0x00000004,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x004AB000,         // Address Base
                        0x00000004,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.QMMI._CRS.RBUF */
            }

            Method (EMDL, 0, NotSerialized)
            {
                Name (RBUF, Package (0x01)
                {
                    One
                })
                Return (RBUF) /* \_SB_.QMMI.EMDL.RBUF */
            }
        }

        Device (GPU0)
        {
            Name (_HID, "QCOM246F")  // _HID: Hardware ID
            Name (_CID, "ACPIQCOM246F")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Device (MON0)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (Zero)
                }
            }

            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                \_SB.GTCU, 
                \_SB.ATCU, 
                \_SB.PEP0, 
                \_SB.PMIC
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01A00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0193E020,         // Address Base
                        0x00000008,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000068,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000070,
                    }
                    Memory32Fixed (ReadWrite,
                        0x01C00000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x01C10000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000041,
                    }
                    Memory32Fixed (ReadWrite,
                        0x01D00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000004C,
                    }
                    GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0019
                        }
                })
                Return (RBUF) /* \_SB_.GPU0._CRS.RBUF */
            }

            Method (RESI, 0, NotSerialized)
            {
                Name (RINF, Package (0x0C)
                {
                    0x03, 
                    Zero, 
                    Package (0x03)
                    {
                        "RESOURCE", 
                        "MDP_REGS", 
                        "DISPLAY"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "MMSS_MISC_REGS", 
                        "DISPLAY"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "VSYNC_INTERRUPT", 
                        "DISPLAY"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "DSI_INTERRUPT", 
                        "DISPLAY"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GFX_REGS", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GFX_SHADER_MEMORY", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "GFX_INTERRUPT", 
                        "GRAPHICS"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "VIDEO_REGS_LOWER", 
                        "VIDEO"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "VIDC_INTERRUPT", 
                        "VIDEO"
                    }, 

                    Package (0x03)
                    {
                        "RESOURCE", 
                        "DSI_PANEL_RESET", 
                        "DISPLAY"
                    }
                })
                Return (RINF) /* \_SB_.GPU0.RESI.RINF */
            }

            Method (ENGS, 0, NotSerialized)
            {
                Name (EBUF, Package (0x05)
                {
                    0x03, 
                    One, 
                    0x0004000A, 
                    Package (0x04)
                    {
                        "ENGINES", 
                        0x02, 
                        Package (0x0B)
                        {
                            "ENGINE", 
                            "GRAPHICS", 
                            "Adreno3XX", 
                            One, 
                            One, 
                            Zero, 
                            Package (0x02)
                            {
                                "PNPMMUID", 
                                ToUUID ("53191eb7-5909-4972-8f7c-7e47b450be94") /* Unknown UUID */
                            }, 

                            Package (0x02)
                            {
                                "QUERYMMUID", 
                                ToUUID ("9833c712-3292-4ffb-b0f4-2bd20e1f7f66") /* Unknown UUID */
                            }, 

                            Package (0x02)
                            {
                                "PERF_CONTROLS", 
                                Package (0x02)
                                {
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "LimitForPassiveCooling", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x03)
                            {
                                "THERMAL_DOMAINS", 
                                "GPU", 
                                "CX"
                            }, 

                            Package (0x05)
                            {
                                "PROPERTIES", 
                                0x03, 
                                Package (0x02)
                                {
                                    "GmemBaseAddr", 
                                    Zero
                                }, 

                                Package (0x02)
                                {
                                    "GmemSize", 
                                    0x00018000
                                }, 

                                Package (0x02)
                                {
                                    "SMMUCount", 
                                    One
                                }
                            }
                        }, 

                        Package (0x09)
                        {
                            "ENGINE", 
                            "VIDEO", 
                            "Venus", 
                            0x02, 
                            One, 
                            Zero, 
                            Package (0x05)
                            {
                                "PERF_CONTROLS", 
                                Package (0x02)
                                {
                                    0x02, 
                                    Package (0x02)
                                    {
                                        "LimitForPassiveCooling", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    0x03, 
                                    Package (0x02)
                                    {
                                        "LimitForPassiveCooling", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    0x04, 
                                    Package (0x02)
                                    {
                                        "LimitForPassiveCooling", 
                                        One
                                    }
                                }, 

                                Package (0x02)
                                {
                                    0x05, 
                                    Package (0x02)
                                    {
                                        "LimitForPassiveCooling", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "THERMAL_DOMAINS", 
                                "CX"
                            }, 

                            Package (0x03)
                            {
                                "PROPERTIES", 
                                One, 
                                Package (0x02)
                                {
                                    "DecMaxFps", 
                                    0x1E
                                }
                            }
                        }
                    }, 

                    Package (0x05)
                    {
                        "DISPLAYS", 
                        "MDP3.x", 
                        One, 
                        Package (0x07)
                        {
                            "DISPLAY", 
                            "INTERNAL1", 
                            Zero, 
                            One, 
                            Zero, 
                            Package (0x06)
                            {
                                "PERF_CONTROLS", 
                                Package (0x01)
                                {
                                    0x02
                                }, 

                                Package (0x01)
                                {
                                    0x03
                                }, 

                                Package (0x02)
                                {
                                    0x04, 
                                    Package (0x02)
                                    {
                                        "LimitForPassiveCooling", 
                                        One
                                    }
                                }, 

                                Package (0x01)
                                {
                                    0x05
                                }, 

                                Package (0x02)
                                {
                                    0x06, 
                                    Package (0x02)
                                    {
                                        "LimitForPassiveCooling", 
                                        One
                                    }
                                }
                            }, 

                            Package (0x02)
                            {
                                "THERMAL_DOMAINS", 
                                "CX"
                            }
                        }, 

                        Package (0x04)
                        {
                            "RESOURCES", 
                            Package (0x02)
                            {
                                "PNPMMUID", 
                                ToUUID ("36079ae4-78e8-452d-af50-0cff78b2f1ca") /* Unknown UUID */
                            }, 

                            Package (0x02)
                            {
                                "QUERYMMUID", 
                                ToUUID ("de2eaa3d-0fa5-45e9-ac9d-a494c6c04d7c") /* Unknown UUID */
                            }, 

                            Package (0x04)
                            {
                                "PROPERTIES", 
                                0x02, 
                                Package (0x02)
                                {
                                    "LimitScalingModes", 
                                    0x02
                                }, 

                                Package (0x02)
                                {
                                    "DisableHDMI", 
                                    One
                                }
                            }
                        }
                    }
                })
                Return (EBUF) /* \_SB_.GPU0.ENGS.EBUF */
            }

            Method (TMDT, 0, NotSerialized)
            {
                Name (RBUF, Package (0x03)
                {
                    One, 
                    Zero, 
                    Package (0x04)
                    {
                        "THERMAL_DOMAINS", 
                        0x02, 
                        Package (0x03)
                        {
                            "GPU", 
                            "GPU0", 
                            Package (0x01)
                            {
                                "GRAPHICS"
                            }
                        }, 

                        Package (0x03)
                        {
                            "CX", 
                            "GPU0.AVS0", 
                            Package (0x03)
                            {
                                "GRAPHICS", 
                                "VIDEO", 
                                "INTERNAL1"
                            }
                        }
                    }
                })
                Return (RBUF) /* \_SB_.GPU0.TMDT.RBUF */
            }

            Method (PMCL, 0, NotSerialized)
            {
                Name (RBUF, Package (0x09)
                {
                    0x03, 
                    One, 
                    0x06, 
                    Package (0x11)
                    {
                        "COMPONENT", 
                        Zero, 
                        ToUUID ("2c135991-4391-4633-90b1-fa96f2e2cc04") /* Unknown UUID */, 
                        "PRIMDISPLAY_POWER_STATES", 
                        "HW_BLOCK_MDP", 
                        Package (0x02)
                        {
                            "DISPLAY", 
                            "INTERNAL1"
                        }, 

                        0x02, 
                        0x07, 
                        Package (0x06)
                        {
                            "FSTATE", 
                            Zero, 
                            "ALL_ON", 
                            Zero, 
                            Zero, 
                            0x02
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            One, 
                            "PWR_OFF", 
                            One, 
                            One, 
                            One
                        }, 

                        Package (0x09)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            "INTERNAL1_RESET", 
                            "*", 
                            "RESET", 
                            0x02, 
                            Zero, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                One, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x09)
                        {
                            "PSTATE_SET", 
                            One, 
                            "INTERNAL1_FOOTSWITCH_OVERRIDE", 
                            "*", 
                            "FOOTSWITCH_OVERRIDE", 
                            0x02, 
                            One, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                One, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x09)
                        {
                            "PSTATE_SET", 
                            0x02, 
                            "INTERNAL1_SCAN_CONTROL", 
                            "*", 
                            "DISPLAY_SOURCE_SCAN_CTRL", 
                            0x02, 
                            Zero, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                One, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x10)
                        {
                            "PSTATE_SET", 
                            0x03, 
                            "INTERNAL1_CORE_CLOCK_CONTROL", 
                            "*", 
                            "CORE_CLOCK", 
                            0x09, 
                            0x04, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                0x124F8000, 
                                One
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                0x0FE50FB0, 
                                One
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x02, 
                                0x0BEBC200, 
                                One
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x03, 
                                0x0A98B520, 
                                One
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x04, 
                                0x09896800, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x05, 
                                0x05F5E100, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x06, 
                                0x04C4B400, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x07, 
                                0x02FAF080, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x08, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x10)
                        {
                            "PSTATE_SET", 
                            0x04, 
                            "PPP_INTERNAL1_CORE_CLOCK_CONTROL", 
                            "*", 
                            "CORE_CLOCK", 
                            0x09, 
                            0x08, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                0x124F8000, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x22
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                One, 
                                0x0FE50FB0, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x22
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x02, 
                                0x0BEBC200, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x22
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x03, 
                                0x0A98B520, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x22
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x04, 
                                0x09896800, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x05, 
                                0x05F5E100, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x06, 
                                0x04C4B400, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x07, 
                                0x02FAF080, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x08, 
                                Zero, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x1B)
                        {
                            "PSTATE_SET", 
                            0x05, 
                            "INTERNAL1_EBI_BANDWIDTH", 
                            "*", 
                            "BANDWIDTH", 
                            0x14, 
                            Zero, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                0x1DA9C000, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                0x1AF768BA, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x02, 
                                0x1883D392, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x03, 
                                0x16494BF9, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x04, 
                                0x1442A228, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x05, 
                                0x126B1F0D, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x06, 
                                0x10BE7952, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x07, 
                                0x0F38CB62, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x08, 
                                0x0DD68A59, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x09, 
                                0x0D2F0000, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x0A, 
                                0x0B6FB827, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x0B, 
                                0x0A659023, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x0C, 
                                0x09739A4E, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x0D, 
                                0x0897A38E, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x0E, 
                                0x07CFABF5, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x0F, 
                                0x076A7000, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x10, 
                                0x06749F0A, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x11, 
                                0x05DE620A, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x12, 
                                0x057E4000, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                0x13, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x1C)
                        {
                            "PSTATE_SET", 
                            0x06, 
                            "PPP_INTERNAL1_EBI_BANDWIDTH", 
                            "*", 
                            "BANDWIDTH", 
                            0x15, 
                            0x14, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                0xFE45FE80, 
                                Zero, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x64
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                One, 
                                0x9450C000, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x22
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x02, 
                                0x76A70000, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x22
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x03, 
                                0x58FD4000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x04, 
                                0x537F0000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x05, 
                                0x41EB0000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x06, 
                                0x3B538000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x07, 
                                0x34BC0000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x08, 
                                0x28C96800, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x09, 
                                0x278D0000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x0A, 
                                0x25143000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x0B, 
                                0x1F4FA000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x0C, 
                                0x1DA9C000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x0D, 
                                0x1A5E0000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x0E, 
                                0x163F5000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x0F, 
                                0x1220A000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x10, 
                                0x0ED4E000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x11, 
                                0x0D2F0000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x12, 
                                0x0A325A00, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x13, 
                                0x076A7000, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x14, 
                                Zero, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }
                        }
                    }, 

                    Package (0x0E)
                    {
                        "COMPONENT", 
                        One, 
                        ToUUID ("30bdf1b5-28f7-4c0c-ac47-273dd1401e11") /* Unknown UUID */, 
                        "GRAPHICS_POWER_STATES", 
                        "HW_BLOCK_GRAPHICS", 
                        Package (0x02)
                        {
                            "ENGINE", 
                            "GRAPHICS"
                        }, 

                        0x03, 
                        0x03, 
                        Package (0x06)
                        {
                            "FSTATE", 
                            Zero, 
                            "ALL_ON", 
                            Zero, 
                            Zero, 
                            0x03
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            One, 
                            "CLK_OFF", 
                            0x2710, 
                            Zero, 
                            0x02
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            0x02, 
                            "PWR_OFF", 
                            0x000186A0, 
                            Zero, 
                            One
                        }, 

                        Package (0x09)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            "GRAPHICS_RESET", 
                            "*", 
                            "RESET", 
                            0x02, 
                            Zero, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                One, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x09)
                        {
                            "PSTATE_SET", 
                            One, 
                            "GRAPHICS_FOOTSWITCH_OVERRIDE", 
                            "*", 
                            "FOOTSWITCH_OVERRIDE", 
                            0x02, 
                            One, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                One, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x0B)
                        {
                            "PSTATE_SET", 
                            0x02, 
                            "GRAPHICS_CORE_CLOCK_CONTROL", 
                            "*", 
                            "CORE_CLOCK", 
                            0x04, 
                            0x02, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                0x186A0000, 
                                Zero, 
                                Package (0x04)
                                {
                                    "CX", 
                                    0x64, 
                                    "GPU", 
                                    0x64
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                One, 
                                0x124F8000, 
                                One, 
                                Package (0x04)
                                {
                                    "CX", 
                                    0x22, 
                                    "GPU", 
                                    0x4B
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x02, 
                                0x0BEBC200, 
                                0x02, 
                                Package (0x04)
                                {
                                    "CX", 
                                    Zero, 
                                    "GPU", 
                                    0x31
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x03, 
                                Zero, 
                                0x02, 
                                Package (0x04)
                                {
                                    "CX", 
                                    Zero, 
                                    "GPU", 
                                    Zero
                                }
                            }
                        }
                    }, 

                    Package (0x11)
                    {
                        "COMPONENT", 
                        0x02, 
                        ToUUID ("d0e1bb1a-703d-4be8-b450-64a4fbfca6a8") /* Unknown UUID */, 
                        "VIDEO_POWER_STATES", 
                        "HW_BLOCK_VIDEO", 
                        Package (0x02)
                        {
                            "ENGINE", 
                            "VIDEO"
                        }, 

                        0x03, 
                        0x06, 
                        Package (0x06)
                        {
                            "FSTATE", 
                            Zero, 
                            "ALL_ON", 
                            Zero, 
                            Zero, 
                            0x03
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            One, 
                            "CLK_OFF", 
                            0x2710, 
                            Zero, 
                            0x02
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            0x02, 
                            "PWR_OFF", 
                            0x000186A0, 
                            Zero, 
                            One
                        }, 

                        Package (0x09)
                        {
                            "PSTATE_SET", 
                            Zero, 
                            "VIDEO_RESET", 
                            "*", 
                            "RESET", 
                            0x02, 
                            Zero, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                One, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x09)
                        {
                            "PSTATE_SET", 
                            One, 
                            "VIDEO_FOOTSWITCH_OVERRIDE", 
                            "*", 
                            "FOOTSWITCH_OVERRIDE", 
                            0x02, 
                            One, 
                            Package (0x04)
                            {
                                "PSTATE", 
                                Zero, 
                                One, 
                                0x02
                            }, 

                            Package (0x04)
                            {
                                "PSTATE", 
                                One, 
                                Zero, 
                                0x02
                            }
                        }, 

                        Package (0x0B)
                        {
                            "PSTATE_SET", 
                            0x02, 
                            "VIDEO_CORE_CLOCK_CONTROL_DEC", 
                            "*", 
                            "CORE_CLOCK", 
                            0x04, 
                            0x02, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                0x124F8000, 
                                Zero, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x64
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                One, 
                                0x0FDAD680, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x02, 
                                0x07ED6B40, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x03, 
                                Zero, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x0B)
                        {
                            "PSTATE_SET", 
                            0x03, 
                            "VIDEO_CORE_CLOCK_CONTROL_ENC", 
                            "*", 
                            "CORE_CLOCK", 
                            0x04, 
                            0x03, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                0x124F8000, 
                                Zero, 
                                Package (0x02)
                                {
                                    "CX", 
                                    0x64
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                One, 
                                0x0FDAD680, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x02, 
                                0x07ED6B40, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x03, 
                                Zero, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x0C)
                        {
                            "PSTATE_SET", 
                            0x04, 
                            "VIDEO_DEC_AXI_PORT0_BW", 
                            "*", 
                            "BANDWIDTH", 
                            0x05, 
                            0x03, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                0x2FAF0800, 
                                Zero, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                One, 
                                0x2D2E2980, 
                                Zero, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x02, 
                                0x14194380, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x03, 
                                0x06B31680, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x04, 
                                Zero, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }
                        }, 

                        Package (0x0C)
                        {
                            "PSTATE_SET", 
                            0x05, 
                            "VIDEO_ENC_AXI_PORT0_BW", 
                            "*", 
                            "BANDWIDTH", 
                            0x05, 
                            0xFFFFFFFF, 
                            Package (0x05)
                            {
                                "PSTATE", 
                                Zero, 
                                0x2FAF0800, 
                                Zero, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                One, 
                                0x299AA280, 
                                Zero, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x02, 
                                0x14F68420, 
                                One, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x03, 
                                0x06FC5480, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }, 

                            Package (0x05)
                            {
                                "PSTATE", 
                                0x04, 
                                Zero, 
                                0x02, 
                                Package (0x02)
                                {
                                    "CX", 
                                    Zero
                                }
                            }
                        }
                    }, 

                    Package (0x09)
                    {
                        "COMPONENT", 
                        0x03, 
                        ToUUID ("8dd40bdf-6fbd-45ed-8538-711d434b6ba1") /* Unknown UUID */, 
                        "ALWAYS_ACTIVE_WP", 
                        "HW_BLOCK_NONE", 
                        Package (0x01)
                        {
                            "UNMANAGED"
                        }, 

                        One, 
                        Zero, 
                        Package (0x06)
                        {
                            "FSTATE", 
                            Zero, 
                            "ALL_ON", 
                            Zero, 
                            Zero, 
                            One
                        }
                    }, 

                    Package (0x0A)
                    {
                        "COMPONENT", 
                        0x04, 
                        ToUUID ("64a9417d-1841-45ad-a705-3a246e607ffc") /* Unknown UUID */, 
                        "VIDPN_SOURCE_0", 
                        "HW_BLOCK_NONE", 
                        Package (0x02)
                        {
                            "DISPLAY_SOURCE", 
                            Zero
                        }, 

                        0x02, 
                        Zero, 
                        Package (0x06)
                        {
                            "FSTATE", 
                            Zero, 
                            "ALL_ON", 
                            Zero, 
                            Zero, 
                            One
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            One, 
                            "PWR_OFF", 
                            One, 
                            One, 
                            Zero
                        }
                    }, 

                    Package (0x0A)
                    {
                        "COMPONENT", 
                        0x05, 
                        ToUUID ("00f471f7-aeec-4462-91ff-5aab1b652f03") /* Unknown UUID */, 
                        "VIDPN_SOURCE_1", 
                        "HW_BLOCK_NONE", 
                        Package (0x02)
                        {
                            "DISPLAY_SOURCE", 
                            One
                        }, 

                        0x02, 
                        Zero, 
                        Package (0x06)
                        {
                            "FSTATE", 
                            Zero, 
                            "ALL_ON", 
                            Zero, 
                            Zero, 
                            One
                        }, 

                        Package (0x06)
                        {
                            "FSTATE", 
                            One, 
                            "PWR_OFF", 
                            One, 
                            One, 
                            Zero
                        }
                    }
                })
                Return (RBUF) /* \_SB_.GPU0.PMCL.RBUF */
            }

            Method (_ROM, 3, NotSerialized)  // _ROM: Read-Only Memory
            {
                Name (PCF1, Buffer (One)
                {
                     0x00                                             // .
                })
                Name (PCF2, Buffer (One)
                {
                     0x00                                             // .
                })
                Name (PCFG, Buffer (0x00)
                {
                    /* 0000 */  0x00                                 // >..
                })
                While (One)
                {
                    Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = ToInteger (Arg2)
                    If ((_T_0 == 0x00030305))
                    {
                        Local2 = PCF1 /* \_SB_.GPU0._ROM.PCF1 */
                    }
                    ElseIf ((_T_0 == 0x00338000))
                    {
                        Local2 = PCF2 /* \_SB_.GPU0._ROM.PCF2 */
                    }
                    Else
                    {
                        Local2 = PCFG /* \_SB_.GPU0._ROM.PCFG */
                    }

                    Break
                }

                If ((Arg0 >= SizeOf (Local2)))
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
                Else
                {
                    Local0 = Arg0
                }

                If ((Arg1 > 0x1000))
                {
                    Local1 = 0x1000
                }
                Else
                {
                    Local1 = Arg1
                }

                If (((Local0 + Local1) > SizeOf (Local2)))
                {
                    Local1 = (SizeOf (Local2) - Local0)
                }

                CreateField (Local2, (0x08 * Local0), (0x08 * Local1), RBUF)
                Return (RBUF) /* \_SB_.GPU0._ROM.RBUF */
            }

            Method (PIGC, 2, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x00                                             // .
                })
                Return (RBUF) /* \_SB_.GPU0.PIGC.RBUF */
            }

            Method (PPCC, 2, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x00                                             // .
                })
                Return (RBUF) /* \_SB_.GPU0.PPCC.RBUF */
            }

            Method (PGCT, 2, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x00                                             // .
                })
                Return (RBUF) /* \_SB_.GPU0.PGCT.RBUF */
            }

            Method (HSIC, 2, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x00                                             // .
                })
                Return (RBUF) /* \_SB_.GPU0.HSIC.RBUF */
            }

            Method (PGMT, 2, NotSerialized)
            {
                Name (TBUF, Buffer (One)
                {
                     0x00                                             // .
                })
                If ((Arg0 >= SizeOf (TBUF)))
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
                Else
                {
                    Local0 = Arg0
                }

                If ((Arg1 > 0x1000))
                {
                    Local1 = 0x1000
                }
                Else
                {
                    Local1 = Arg1
                }

                If (((Local0 + Local1) > SizeOf (TBUF)))
                {
                    Local1 = (SizeOf (TBUF) - Local0)
                }

                CreateField (TBUF, (0x08 * Local0), (0x08 * Local1), RBUF)
                Return (RBUF) /* \_SB_.GPU0.PGMT.RBUF */
            }

            Method (PGRT, 2, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x00                                             // .
                })
                Return (RBUF) /* \_SB_.GPU0.PGRT.RBUF */
            }

            Method (PBRT, 2, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x00                                             // .
                })
                Return (RBUF) /* \_SB_.GPU0.PBRT.RBUF */
            }

            Method (BLCP, 1, NotSerialized)
            {
                Name (RBUF, Buffer (0x0100) {})
                Return (RBUF) /* \_SB_.GPU0.BLCP.RBUF */
            }

            Name (_DOD, Package (0x01)  // _DOD: Display Output Devices
            {
                0x00024321
            })
            Device (AVS0)
            {
                Name (_ADR, 0x00024321)  // _ADR: Address
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, Buffer (0x02)
                    {
                         0x79, 0x00                                       // y.
                    })
                    Return (RBUF) /* \_SB_.GPU0.AVS0._CRS.RBUF */
                }

                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    \_SB.ATCU, 
                    \_SB.VFE0
                })
            }

            Method (CHDV, 0, NotSerialized)
            {
                Name (CHIF, Package (0x02)
                {
                    One, 
                    Package (0x07)
                    {
                        "CHILDDEV", 
                        Zero, 
                        0x00024321, 
                        "QCOM_AVStream", 
                        Zero, 
                        "Qualcomm Camera AVStream Mini Driver", 
                        Package (0x04)
                        {
                            "COMPATIBLEIDS", 
                            0x02, 
                            "VEN_QCOM&DEV__AVSTREAM", 
                            "QCOM_AVSTREAM"
                        }
                    }
                })
                Return (CHIF) /* \_SB_.GPU0.CHDV.CHIF */
            }

            Method (REGR, 0, NotSerialized)
            {
                Name (RBUF, Package (0x0B)
                {
                    Package (0x02)
                    {
                        "ForceMaxPerf", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "ForceActive", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "PreventPowerCollapse", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "DisableThermalMitigation", 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        "LeafPTPacking", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "EnableIndependentFlip", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "IndependentFlipPostRotateCap", 
                        One
                    }, 

                    Package (0x02)
                    {
                        "EnableDummyPagesPaddingInMdpAllocation", 
                        One
                    }, 

                    Package (0x03)
                    {
                        "GRAPHICS", 
                        Package (0x02)
                        {
                            "ForceFullMicrocodeReload", 
                            One
                        }, 

                        Package (0x09)
                        {
                            "DCVS", 
                            Package (0x02)
                            {
                                "Enable", 
                                One
                            }, 

                            Package (0x02)
                            {
                                "IncreaseFilterBw", 
                                0x00020000
                            }, 

                            Package (0x02)
                            {
                                "DecreaseFilterBw", 
                                0x3333
                            }, 

                            Package (0x02)
                            {
                                "TargetBusyPct", 
                                0x55
                            }, 

                            Package (0x02)
                            {
                                "SampleRate", 
                                0x3C
                            }, 

                            Package (0x02)
                            {
                                "TargetBusyPctOffscreen", 
                                0x4B
                            }, 

                            Package (0x02)
                            {
                                "SampleRateOffscreen", 
                                0x14
                            }, 

                            Package (0x02)
                            {
                                "GpuResetValue", 
                                0x11E1A300
                            }
                        }
                    }, 

                    Package (0x03)
                    {
                        "VIDEO", 
                        Package (0x02)
                        {
                            "DisableVideoDecoder", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "DisableVideoEncoder", 
                            Zero
                        }
                    }, 

                    Package (0x03)
                    {
                        "DISPLAY", 
                        Package (0x02)
                        {
                            "EnableOEMDriverDependency", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "EnableBridgeDriverDependency", 
                            Zero
                        }
                    }
                })
                Return (RBUF) /* \_SB_.GPU0.REGR.RBUF */
            }
        }

        Device (ADC1)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.SPMI, 
                \_SB.PMIC
            })
            Name (_HID, "QCOM240F")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (INTB, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x01)  // Vendor Data
                        {
                            0x02
                        })
                        {   // Pin list
                            0x0188
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x01)  // Vendor Data
                        {
                            0x03
                        })
                        {   // Pin list
                            0x01A0
                        }
                })
                Name (NAM, Buffer (0x0A)
                {
                    "\\_SB.SPMI"
                })
                Name (PON1, Buffer (0x0C)
                {
                    /* 0000 */  0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x00,  // ........
                    /* 0008 */  0x31, 0x01, 0x00, 0x00                           // 1...
                })
                Name (PON2, Buffer (0x0C)
                {
                    /* 0000 */  0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x00,  // ........
                    /* 0008 */  0x34, 0x01, 0x00, 0x00                           // 4...
                })
                Name (END, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Concatenate (PON1, NAM, Local1)
                Concatenate (PON2, NAM, Local2)
                Concatenate (Local1, Local2, Local3)
                Concatenate (Local3, INTB, Local0)
                Return (Local0)
            }

            Method (ADDV, 0, NotSerialized)
            {
                Return (Package (0x03)
                {
                    One, 
                    One, 
                    Zero
                })
            }

            Method (GENP, 0, NotSerialized)
            {
                Return (Package (0x0D)
                {
                    Zero, 
                    Zero, 
                    One, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x08, 
                    0x09, 
                    0x0708, 
                    Zero, 
                    0x0271, 
                    0x04E2
                })
            }

            Method (CHAN, 0, NotSerialized)
            {
                Return (Package (0x12)
                {
                    Package (0x12)
                    {
                        "USB_IN", 
                        Zero, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        0x0A, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VCOIN", 
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        0x03, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VBATT", 
                        0x06, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        0x03, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VBATT_GSM", 
                        0x06, 
                        0x02, 
                        Zero, 
                        0xFFFF, 
                        One, 
                        Zero, 
                        One, 
                        0x03, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VBATT_FLASH", 
                        0x06, 
                        0x02, 
                        Zero, 
                        0xFFFF, 
                        One, 
                        One, 
                        One, 
                        0x03, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VPH_PWR", 
                        0x07, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        0x03, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "PMIC_THERM", 
                        0x08, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        PTCF,
						PTCI,
						0x02, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "CHG_TEMP", 
                        0x0B, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        PTCF,
						PTCI,
						0x02, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "BATT_THERM", 
                        0x30, 
                        Zero, 
                        One, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        BTTB, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "CTEMP", 
                        0x13, 
                        Zero, 
                        One, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        BTTB, 
                        Zero, 
                        0x000186A0, 
                        One, 
                        0x03, 
                        0x03
                    }, 

                    Package (0x12)
                    {
                        "BATT_ID", 
                        0x31, 
                        Zero, 
                        One, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "XO_THERM", 
                        0x3C, 
                        Zero, 
                        0x05, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        XOCF,
						Zero, 
                        One, 
                        XTTB, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "XO_THERM_GPS", 
                        0x3C, 
                        One, 
                        0x05, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        XOCF,
						Zero, 
                        One, 
                        XTTB, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "PA_THERM", 
                        0x36, 
                        Zero, 
                        One, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        SYTB, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VDD", 
                        0x0F, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "GND", 
                        0x0E, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VREF1", 
                        0x0C, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VREF2", 
                        0x0A, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }

            Method (CBCH, 0, NotSerialized)
            {
                Return (Package (0x04)
                {
                    Package (0x12)
                    {
                        "VDD", 
                        0x0F, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "GND", 
                        0x0E, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VREF1", 
                        0x0C, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x12)
                    {
                        "VREF2", 
                        0x0A, 
                        Zero, 
                        Zero, 
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        One, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        One, 
                        0x000186A0, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }

            Method (CFGS, 0, NotSerialized)
            {
                Return (Package (0x03)
                {
                    Package (0x03)
                    {
                        One, 
                        Zero, 
                        0x01AB
                    }, 

                    Package (0x03)
                    {
                        0x03, 
                        One, 
                        0x0355
                    }, 

                    Package (0x03)
                    {
                        Zero, 
                        One, 
                        0x6B
                    }
                })
            }

            Method (SEQP, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Package (0x04)
                    {
                        0x07, 
                        0x05, 
                        One, 
                        One
                    }, 

                    Package (0x04)
                    {
                        Zero, 
                        0x0F, 
                        One, 
                        0x02
                    }
                })
            }

            Method (PTCF, 1, NotSerialized)
            {
                Local0 = (Arg0 >> One)
                Local0 -= 0x00042B08
                Return (Local0)
            }

            Method (PTCI, 1, NotSerialized)
            {
                Local0 = (Arg0 + 0x00042B08)
                Local0 <<= One
                Return (Local0)
            }

            Method (XOCF, 1, NotSerialized)
            {
                Local1 = (Arg0 << 0x0E)
                Local0 = (0xFFFF - Arg0)
                Local2 = (Local0 >> One)
                If ((Local0 == Zero))
                {
                    Return (0x7FFFFFFF)
                }

                Local3 = (Local1 + Local2)
                Divide (Local3, Local0, Local4, Local3)
                If ((Local3 > 0x7FFFFFFF))
                {
                    Return (0x7FFFFFFF)
                }

                Return (Local3)
            }

            Method (BTTB, 0, NotSerialized)
            {
                Return (Package (0x0C)
                {
                    Package (0x02)
                    {
                        0x068D, 
                        0xFFFFFFE2
                    }, 

                    Package (0x02)
                    {
                        0x0635, 
                        0xFFFFFFEC
                    }, 

                    Package (0x02)
                    {
                        0x05B8, 
                        0xFFFFFFF6
                    }, 

                    Package (0x02)
                    {
                        0x0518, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x0462, 
                        0x0A
                    }, 

                    Package (0x02)
                    {
                        0x03AA, 
                        0x14
                    }, 

                    Package (0x02)
                    {
                        0x0304, 
                        0x1E
                    }, 

                    Package (0x02)
                    {
                        0x027C, 
                        0x28
                    }, 

                    Package (0x02)
                    {
                        0x0212, 
                        0x32
                    }, 

                    Package (0x02)
                    {
                        0x01C3, 
                        0x3C
                    }, 

                    Package (0x02)
                    {
                        0x018A, 
                        0x46
                    }, 

                    Package (0x02)
                    {
                        0x0162, 
                        0x50
                    }
                })
            }

            Method (SYTB, 0, NotSerialized)
            {
                Return (Package (0x22)
                {
                    Package (0x02)
                    {
                        0x06DF, 
                        0xFFFFFFD8
                    }, 

                    Package (0x02)
                    {
                        0x06CE, 
                        0xFFFFFFDD
                    }, 

                    Package (0x02)
                    {
                        0x06B8, 
                        0xFFFFFFE2
                    }, 

                    Package (0x02)
                    {
                        0x069B, 
                        0xFFFFFFE7
                    }, 

                    Package (0x02)
                    {
                        0x0676, 
                        0xFFFFFFEC
                    }, 

                    Package (0x02)
                    {
                        0x0648, 
                        0xFFFFFFF1
                    }, 

                    Package (0x02)
                    {
                        0x060F, 
                        0xFFFFFFF6
                    }, 

                    Package (0x02)
                    {
                        0x05CC, 
                        0xFFFFFFFB
                    }, 

                    Package (0x02)
                    {
                        0x057D, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0x0524, 
                        0x05
                    }, 

                    Package (0x02)
                    {
                        0x04C2, 
                        0x0A
                    }, 

                    Package (0x02)
                    {
                        0x045A, 
                        0x0F
                    }, 

                    Package (0x02)
                    {
                        0x03EF, 
                        0x14
                    }, 

                    Package (0x02)
                    {
                        0x0384, 
                        0x19
                    }, 

                    Package (0x02)
                    {
                        0x031C, 
                        0x1E
                    }, 

                    Package (0x02)
                    {
                        0x02B9, 
                        0x23
                    }, 

                    Package (0x02)
                    {
                        0x025E, 
                        0x28
                    }, 

                    Package (0x02)
                    {
                        0x020A, 
                        0x2D
                    }, 

                    Package (0x02)
                    {
                        0x01C1, 
                        0x32
                    }, 

                    Package (0x02)
                    {
                        0x0180, 
                        0x37
                    }, 

                    Package (0x02)
                    {
                        0x0147, 
                        0x3C
                    }, 

                    Package (0x02)
                    {
                        0x0116, 
                        0x41
                    }, 

                    Package (0x02)
                    {
                        0xEE, 
                        0x46
                    }, 

                    Package (0x02)
                    {
                        0xC9, 
                        0x4B
                    }, 

                    Package (0x02)
                    {
                        0xAD, 
                        0x50
                    }, 

                    Package (0x02)
                    {
                        0x93, 
                        0x55
                    }, 

                    Package (0x02)
                    {
                        0x7E, 
                        0x5A
                    }, 

                    Package (0x02)
                    {
                        0x6C, 
                        0x5F
                    }, 

                    Package (0x02)
                    {
                        0x5C, 
                        0x64
                    }, 

                    Package (0x02)
                    {
                        0x4F, 
                        0x69
                    }, 

                    Package (0x02)
                    {
                        0x45, 
                        0x6E
                    }, 

                    Package (0x02)
                    {
                        0x3C, 
                        0x73
                    }, 

                    Package (0x02)
                    {
                        0x34, 
                        0x78
                    }, 

                    Package (0x02)
                    {
                        0x2D, 
                        0x7D
                    }
                })
            }

            Method (XTTB, 0, NotSerialized)
            {
                Return (Package (0xA8)
                {
                    Package (0x02)
                    {
                        0x000AA0A3, 
                        0xFFFF6000
                    }, 

                    Package (0x02)
                    {
                        0x0009E7BC, 
                        0xFFFF6400
                    }, 

                    Package (0x02)
                    {
                        0x00093CB8, 
                        0xFFFF6800
                    }, 

                    Package (0x02)
                    {
                        0x00089E49, 
                        0xFFFF6C00
                    }, 

                    Package (0x02)
                    {
                        0x00080B6F, 
                        0xFFFF7000
                    }, 

                    Package (0x02)
                    {
                        0x00078322, 
                        0xFFFF7400
                    }, 

                    Package (0x02)
                    {
                        0x000704E7, 
                        0xFFFF7800
                    }, 

                    Package (0x02)
                    {
                        0x00068F9E, 
                        0xFFFF7C00
                    }, 

                    Package (0x02)
                    {
                        0x000622B3, 
                        0xFFFF8000
                    }, 

                    Package (0x02)
                    {
                        0x0005BD80, 
                        0xFFFF8400
                    }, 

                    Package (0x02)
                    {
                        0x00055F4B, 
                        0xFFFF8800
                    }, 

                    Package (0x02)
                    {
                        0x000507F2, 
                        0xFFFF8C00
                    }, 

                    Package (0x02)
                    {
                        0x0004B68C, 
                        0xFFFF9000
                    }, 

                    Package (0x02)
                    {
                        0x00046AC8, 
                        0xFFFF9400
                    }, 

                    Package (0x02)
                    {
                        0x00042439, 
                        0xFFFF9800
                    }, 

                    Package (0x02)
                    {
                        0x0003E26E, 
                        0xFFFF9C00
                    }, 

                    Package (0x02)
                    {
                        0x0003A537, 
                        0xFFFFA000
                    }, 

                    Package (0x02)
                    {
                        0x00036C14, 
                        0xFFFFA400
                    }, 

                    Package (0x02)
                    {
                        0x000336C7, 
                        0xFFFFA800
                    }, 

                    Package (0x02)
                    {
                        0x00030508, 
                        0xFFFFAC00
                    }, 

                    Package (0x02)
                    {
                        0x0002D697, 
                        0xFFFFB000
                    }, 

                    Package (0x02)
                    {
                        0x0002AB33, 
                        0xFFFFB400
                    }, 

                    Package (0x02)
                    {
                        0x000282A9, 
                        0xFFFFB800
                    }, 

                    Package (0x02)
                    {
                        0x00025CC2, 
                        0xFFFFBC00
                    }, 

                    Package (0x02)
                    {
                        0x00023950, 
                        0xFFFFC000
                    }, 

                    Package (0x02)
                    {
                        0x00021831, 
                        0xFFFFC400
                    }, 

                    Package (0x02)
                    {
                        0x0001F91B, 
                        0xFFFFC800
                    }, 

                    Package (0x02)
                    {
                        0x0001DC0A, 
                        0xFFFFCC00
                    }, 

                    Package (0x02)
                    {
                        0x0001C0D0, 
                        0xFFFFD000
                    }, 

                    Package (0x02)
                    {
                        0x0001A74D, 
                        0xFFFFD400
                    }, 

                    Package (0x02)
                    {
                        0x00018F6C, 
                        0xFFFFD800
                    }, 

                    Package (0x02)
                    {
                        0x000178F3, 
                        0xFFFFDC00
                    }, 

                    Package (0x02)
                    {
                        0x000163E7, 
                        0xFFFFE000
                    }, 

                    Package (0x02)
                    {
                        0x00015027, 
                        0xFFFFE400
                    }, 

                    Package (0x02)
                    {
                        0x00013D9C, 
                        0xFFFFE800
                    }, 

                    Package (0x02)
                    {
                        0x00012C39, 
                        0xFFFFEC00
                    }, 

                    Package (0x02)
                    {
                        0x00011BD4, 
                        0xFFFFF000
                    }, 

                    Package (0x02)
                    {
                        0x00010C72, 
                        0xFFFFF400
                    }, 

                    Package (0x02)
                    {
                        0xFDFC, 
                        0xFFFFF800
                    }, 

                    Package (0x02)
                    {
                        0xF062, 
                        0xFFFFFC00
                    }, 

                    Package (0x02)
                    {
                        0xE395, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0xD789, 
                        0x0400
                    }, 

                    Package (0x02)
                    {
                        0xCC32, 
                        0x0800
                    }, 

                    Package (0x02)
                    {
                        0xC182, 
                        0x0C00
                    }, 

                    Package (0x02)
                    {
                        0xB772, 
                        0x1000
                    }, 

                    Package (0x02)
                    {
                        0xADF3, 
                        0x1400
                    }, 

                    Package (0x02)
                    {
                        0xA503, 
                        0x1800
                    }, 

                    Package (0x02)
                    {
                        0x9C93, 
                        0x1C00
                    }, 

                    Package (0x02)
                    {
                        0x949D, 
                        0x2000
                    }, 

                    Package (0x02)
                    {
                        0x8D1A, 
                        0x2400
                    }, 

                    Package (0x02)
                    {
                        0x8604, 
                        0x2800
                    }, 

                    Package (0x02)
                    {
                        0x7F50, 
                        0x2C00
                    }, 

                    Package (0x02)
                    {
                        0x78FC, 
                        0x3000
                    }, 

                    Package (0x02)
                    {
                        0x7302, 
                        0x3400
                    }, 

                    Package (0x02)
                    {
                        0x6D5B, 
                        0x3800
                    }, 

                    Package (0x02)
                    {
                        0x6800, 
                        0x3C00
                    }, 

                    Package (0x02)
                    {
                        0x62F5, 
                        0x4000
                    }, 

                    Package (0x02)
                    {
                        0x5E2D, 
                        0x4400
                    }, 

                    Package (0x02)
                    {
                        0x59A7, 
                        0x4800
                    }, 

                    Package (0x02)
                    {
                        0x555E, 
                        0x4C00
                    }, 

                    Package (0x02)
                    {
                        0x5147, 
                        0x5000
                    }, 

                    Package (0x02)
                    {
                        0x4D77, 
                        0x5400
                    }, 

                    Package (0x02)
                    {
                        0x49D3, 
                        0x5800
                    }, 

                    Package (0x02)
                    {
                        0x4660, 
                        0x5C00
                    }, 

                    Package (0x02)
                    {
                        0x431A, 
                        0x6000
                    }, 

                    Package (0x02)
                    {
                        0x4000, 
                        0x6400
                    }, 

                    Package (0x02)
                    {
                        0x3D0F, 
                        0x6800
                    }, 

                    Package (0x02)
                    {
                        0x3A44, 
                        0x6C00
                    }, 

                    Package (0x02)
                    {
                        0x379D, 
                        0x7000
                    }, 

                    Package (0x02)
                    {
                        0x3519, 
                        0x7400
                    }, 

                    Package (0x02)
                    {
                        0x32B0, 
                        0x7800
                    }, 

                    Package (0x02)
                    {
                        0x3070, 
                        0x7C00
                    }, 

                    Package (0x02)
                    {
                        0x2E48, 
                        0x8000
                    }, 

                    Package (0x02)
                    {
                        0x2C3C, 
                        0x8400
                    }, 

                    Package (0x02)
                    {
                        0x2A49, 
                        0x8800
                    }, 

                    Package (0x02)
                    {
                        0x2872, 
                        0x8C00
                    }, 

                    Package (0x02)
                    {
                        0x26AC, 
                        0x9000
                    }, 

                    Package (0x02)
                    {
                        0x24FF, 
                        0x9400
                    }, 

                    Package (0x02)
                    {
                        0x2366, 
                        0x9800
                    }, 

                    Package (0x02)
                    {
                        0x21E2, 
                        0x9C00
                    }, 

                    Package (0x02)
                    {
                        0x2072, 
                        0xA000
                    }, 

                    Package (0x02)
                    {
                        0x1F0F, 
                        0xA400
                    }, 

                    Package (0x02)
                    {
                        0x1DC0, 
                        0xA800
                    }, 

                    Package (0x02)
                    {
                        0x1C80, 
                        0xAC00
                    }, 

                    Package (0x02)
                    {
                        0x1B4F, 
                        0xB000
                    }, 

                    Package (0x02)
                    {
                        0x1A2D, 
                        0xB400
                    }, 

                    Package (0x02)
                    {
                        0x1918, 
                        0xB800
                    }, 

                    Package (0x02)
                    {
                        0x1810, 
                        0xBC00
                    }, 

                    Package (0x02)
                    {
                        0x1714, 
                        0xC000
                    }, 

                    Package (0x02)
                    {
                        0x1623, 
                        0xC400
                    }, 

                    Package (0x02)
                    {
                        0x153F, 
                        0xC800
                    }, 

                    Package (0x02)
                    {
                        0x1463, 
                        0xCC00
                    }, 

                    Package (0x02)
                    {
                        0x1392, 
                        0xD000
                    }, 

                    Package (0x02)
                    {
                        0x12CA, 
                        0xD400
                    }, 

                    Package (0x02)
                    {
                        0x120B, 
                        0xD800
                    }, 

                    Package (0x02)
                    {
                        0x1158, 
                        0xDC00
                    }, 

                    Package (0x02)
                    {
                        0x10A7, 
                        0xE000
                    }, 

                    Package (0x02)
                    {
                        0x1001, 
                        0xE400
                    }, 

                    Package (0x02)
                    {
                        0x0F62, 
                        0xE800
                    }, 

                    Package (0x02)
                    {
                        0x0EC9, 
                        0xEC00
                    }, 

                    Package (0x02)
                    {
                        0x0E35, 
                        0xF000
                    }, 

                    Package (0x02)
                    {
                        0x0DAD, 
                        0xF400
                    }, 

                    Package (0x02)
                    {
                        0x0D28, 
                        0xF800
                    }, 

                    Package (0x02)
                    {
                        0x0CA8, 
                        0xFC00
                    }, 

                    Package (0x02)
                    {
                        0x0C2E, 
                        0x00010000
                    }, 

                    Package (0x02)
                    {
                        0x0BB6, 
                        0x00010400
                    }, 

                    Package (0x02)
                    {
                        0x0B49, 
                        0x00010800
                    }, 

                    Package (0x02)
                    {
                        0x0ADE, 
                        0x00010C00
                    }, 

                    Package (0x02)
                    {
                        0x0A78, 
                        0x00011000
                    }, 

                    Package (0x02)
                    {
                        0x0A15, 
                        0x00011400
                    }, 

                    Package (0x02)
                    {
                        0x09BA, 
                        0x00011800
                    }, 

                    Package (0x02)
                    {
                        0x095D, 
                        0x00011C00
                    }, 

                    Package (0x02)
                    {
                        0x0906, 
                        0x00012000
                    }, 

                    Package (0x02)
                    {
                        0x08B3, 
                        0x00012400
                    }, 

                    Package (0x02)
                    {
                        0x0863, 
                        0x00012800
                    }, 

                    Package (0x02)
                    {
                        0x0810, 
                        0x00012C00
                    }, 

                    Package (0x02)
                    {
                        0x07CE, 
                        0x00013000
                    }, 

                    Package (0x02)
                    {
                        0x0787, 
                        0x00013400
                    }, 

                    Package (0x02)
                    {
                        0x0744, 
                        0x00013800
                    }, 

                    Package (0x02)
                    {
                        0x0703, 
                        0x00013C00
                    }, 

                    Package (0x02)
                    {
                        0x06C8, 
                        0x00014000
                    }, 

                    Package (0x02)
                    {
                        0x0689, 
                        0x00014400
                    }, 

                    Package (0x02)
                    {
                        0x064F, 
                        0x00014800
                    }, 

                    Package (0x02)
                    {
                        0x0618, 
                        0x00014C00
                    }, 

                    Package (0x02)
                    {
                        0x05E3, 
                        0x00015000
                    }, 

                    Package (0x02)
                    {
                        0x05B0, 
                        0x00015400
                    }, 

                    Package (0x02)
                    {
                        0x057F, 
                        0x00015800
                    }, 

                    Package (0x02)
                    {
                        0x0550, 
                        0x00015C00
                    }, 

                    Package (0x02)
                    {
                        0x0522, 
                        0x00016000
                    }, 

                    Package (0x02)
                    {
                        0x04F7, 
                        0x00016400
                    }, 

                    Package (0x02)
                    {
                        0x04CC, 
                        0x00016800
                    }, 

                    Package (0x02)
                    {
                        0x04A5, 
                        0x00016C00
                    }, 

                    Package (0x02)
                    {
                        0x047E, 
                        0x00017000
                    }, 

                    Package (0x02)
                    {
                        0x0458, 
                        0x00017400
                    }, 

                    Package (0x02)
                    {
                        0x0434, 
                        0x00017800
                    }, 

                    Package (0x02)
                    {
                        0x0412, 
                        0x00017C00
                    }, 

                    Package (0x02)
                    {
                        0x03F0, 
                        0x00018000
                    }, 

                    Package (0x02)
                    {
                        0x03D0, 
                        0x00018400
                    }, 

                    Package (0x02)
                    {
                        0x03B1, 
                        0x00018800
                    }, 

                    Package (0x02)
                    {
                        0x0393, 
                        0x00018C00
                    }, 

                    Package (0x02)
                    {
                        0x0376, 
                        0x00019000
                    }, 

                    Package (0x02)
                    {
                        0x035B, 
                        0x00019400
                    }, 

                    Package (0x02)
                    {
                        0x0340, 
                        0x00019800
                    }, 

                    Package (0x02)
                    {
                        0x0327, 
                        0x00019C00
                    }, 

                    Package (0x02)
                    {
                        0x030E, 
                        0x0001A000
                    }, 

                    Package (0x02)
                    {
                        0x02F4, 
                        0x0001A400
                    }, 

                    Package (0x02)
                    {
                        0x02DF, 
                        0x0001A800
                    }, 

                    Package (0x02)
                    {
                        0x02C8, 
                        0x0001AC00
                    }, 

                    Package (0x02)
                    {
                        0x02B3, 
                        0x0001B000
                    }, 

                    Package (0x02)
                    {
                        0x029E, 
                        0x0001B400
                    }, 

                    Package (0x02)
                    {
                        0x028A, 
                        0x0001B800
                    }, 

                    Package (0x02)
                    {
                        0x0277, 
                        0x0001BC00
                    }, 

                    Package (0x02)
                    {
                        0x0264, 
                        0x0001C000
                    }, 

                    Package (0x02)
                    {
                        0x0252, 
                        0x0001C400
                    }, 

                    Package (0x02)
                    {
                        0x0241, 
                        0x0001C800
                    }, 

                    Package (0x02)
                    {
                        0x0230, 
                        0x0001CC00
                    }, 

                    Package (0x02)
                    {
                        0x0220, 
                        0x0001D000
                    }, 

                    Package (0x02)
                    {
                        0x0210, 
                        0x0001D400
                    }, 

                    Package (0x02)
                    {
                        0x0201, 
                        0x0001D800
                    }, 

                    Package (0x02)
                    {
                        0x01F2, 
                        0x0001DC00
                    }, 

                    Package (0x02)
                    {
                        0x01E3, 
                        0x0001E000
                    }, 

                    Package (0x02)
                    {
                        0x01D6, 
                        0x0001E400
                    }, 

                    Package (0x02)
                    {
                        0x01C9, 
                        0x0001E800
                    }, 

                    Package (0x02)
                    {
                        0x01BC, 
                        0x0001EC00
                    }, 

                    Package (0x02)
                    {
                        0x01AF, 
                        0x0001F000
                    }, 

                    Package (0x02)
                    {
                        0x01A3, 
                        0x0001F400
                    }, 

                    Package (0x02)
                    {
                        0x0198, 
                        0x0001F800
                    }, 

                    Package (0x02)
                    {
                        0x018C, 
                        0x0001FC00
                    }
                })
            }

            Method (VTGN, 0, NotSerialized)
            {
                Return (Package (0x11)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x08, 
                    0x22, 
                    One, 
                    One, 
                    0xD5, 
                    0x05, 
                    0xFFFF, 
                    0x0F, 
                    One, 
                    One, 
                    0x32, 
                    0x06D6
                })
            }

            Method (VTCH, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    Package (0x02)
                    {
                        "BATT_THERM", 
                        0x02
                    }, 

                    Package (0x02)
                    {
                        "PMIC_THERM", 
                        0x02
                    }
                })
            }
        }

        Device (SPMI)
        {
            Name (_HID, "QCOM2404")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x02000000,         // Address Base
                        0x01200000,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.SPMI._CRS.RBUF */
            }

            Method (CONF, 0, NotSerialized)
            {
                Name (XBUF, Buffer (0x02)
                {
                     0x00, 0x01                                       // ..
                })
                Return (XBUF) /* \_SB_.SPMI.CONF.XBUF */
            }
        }

        Device (SMD0)
        {
            Name (_HID, "QCOM2407")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x87D00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x01905000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0193D000,         // Address Base
                        0x00000008,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00060000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0B011008,         // Address Base
                        0x00000004,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000039,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000AE,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000003B,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000AF,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000003A,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000B0,
                    }
                })
                Return (RBUF) /* \_SB_.SMD0._CRS.RBUF */
            }

            Method (INTR, 0, NotSerialized)
            {
                Name (RBUF, Package (0x1C)
                {
                    0x03, 
                    0x02, 
                    0x02, 
                    0x02, 
                    One, 
                    0x0B011008, 
                    0x1000, 
                    Zero, 
                    0x04, 
                    0x0B011008, 
                    0x00020000, 
                    Zero, 
                    One, 
                    0x0B011008, 
                    0x4000, 
                    Zero, 
                    0x04, 
                    0x0B011008, 
                    0x00040000, 
                    Zero, 
                    One, 
                    0x0B011008, 
                    0x2000, 
                    Zero, 
                    0x03, 
                    0x0B011008, 
                    0x00080000, 
                    Zero
                })
                Return (RBUF) /* \_SB_.SMD0.INTR.RBUF */
            }
        }

        Device (IPC0)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.SMD0
            })
            Name (_HID, "QCOM240A")  // _HID: Hardware ID
        }

        Device (QDIG)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.SMD0
            })
            Name (_HID, "QCOM2413")  // _HID: Hardware ID
        }

        Device (QCDB)
        {
            Name (_HID, "QCOM248B")  // _HID: Hardware ID
        }

        Device (QDSS)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_HID, "QCOM247D")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000C6,
                    }
                    Memory32Fixed (ReadWrite,
                        0x00800000,         // Address Base
                        0x000A0000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x09000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                })
            }

            Method (CHPD, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (PWRV, 0, NotSerialized)
            {
                Return (One)
            }

            Method (ETMV, 0, NotSerialized)
            {
                Return (One)
            }

            Method (OFFS, 0, NotSerialized)
            {
                Return (Package (0x20)
                {
                    Package (0x05)
                    {
                        "DAPROM", 
                        Zero, 
                        0x1000, 
                        Zero, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CSR", 
                        0x1000, 
                        0x1000, 
                        Zero, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "STM", 
                        0x2000, 
                        0x1000, 
                        Zero, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI0", 
                        0x00010000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI1", 
                        0x00011000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI2", 
                        0x00012000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI3", 
                        0x00013000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI4", 
                        0x00014000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI5", 
                        0x00015000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI6", 
                        0x00016000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI7", 
                        0x00017000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CTI8", 
                        0x00018000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "TPIU", 
                        0x00020000, 
                        0x1000, 
                        Zero, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "IN_FUN0", 
                        0x00021000, 
                        0x1000, 
                        0x03, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "REPLICATOR", 
                        0x00024000, 
                        0x1000, 
                        Zero, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "ETFETB", 
                        0x00025000, 
                        0x1000, 
                        Zero, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "ETR", 
                        0x00026000, 
                        0x1000, 
                        Zero, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "VIDEO_CPU0", 
                        0x00030000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "WCN_CPU0", 
                        0x00035000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "MODEM_CPU0", 
                        0x00038000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "RPM_CPU0", 
                        0x0003C000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "ETM", 
                        0x0004C000, 
                        0x1000, 
                        0x02, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "ETM_1", 
                        0x0004D000, 
                        0x1000, 
                        0x02, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "ETM_2", 
                        0x0004E000, 
                        0x1000, 
                        0x02, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "ETM_3", 
                        0x0004F000, 
                        0x1000, 
                        0x02, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CPU0", 
                        0x00051000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CPU1", 
                        0x00052000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CPU2", 
                        0x00053000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "CPU3", 
                        0x00054000, 
                        0x1000, 
                        One, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "ATB_FUN", 
                        0x00055000, 
                        0x1000, 
                        0x03, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "FUN_2X1", 
                        0x00068000, 
                        0x1000, 
                        0x03, 
                        0x00800000
                    }, 

                    Package (0x05)
                    {
                        "FUN_8X1", 
                        0x00069000, 
                        0x1000, 
                        0x03, 
                        0x00800000
                    }
                })
            }

            Method (S2FP, 0, NotSerialized)
            {
                Return (Package (0x04)
                {
                    Package (0x02)
                    {
                        "STM", 
                        Package (0x02)
                        {
                            "IN_FUN0", 
                            0x07
                        }
                    }, 

                    Package (0x06)
                    {
                        "ETM", 
                        Package (0x02)
                        {
                            "IN_FUN0", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "ATB_FUN", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "ATB_FUN", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "ATB_FUN", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "ATB_FUN", 
                            0x03
                        }
                    }, 

                    Package (0x10)
                    {
                        "BUS", 
                        Package (0x02)
                        {
                            "IN_FUN0", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "IN_FUN0", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "IN_FUN0", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "IN_FUN0", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "IN_FUN0", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "FUN_8X1", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FUN_8X1", 
                            One
                        }, 

                        Package (0x02)
                        {
                            "FUN_8X1", 
                            0x02
                        }, 

                        Package (0x02)
                        {
                            "FUN_8X1", 
                            0x03
                        }, 

                        Package (0x02)
                        {
                            "FUN_8X1", 
                            0x04
                        }, 

                        Package (0x02)
                        {
                            "FUN_8X1", 
                            0x05
                        }, 

                        Package (0x02)
                        {
                            "FUN_8X1", 
                            0x06
                        }, 

                        Package (0x02)
                        {
                            "FUN_8X1", 
                            0x07
                        }, 

                        Package (0x02)
                        {
                            "FUN_2X1", 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            "FUN_2X1", 
                            One
                        }
                    }, 

                    Package (0x02)
                    {
                        "GFX", 
                        Package (0x02)
                        {
                            "IN_FUN0", 
                            0x05
                        }
                    }
                })
            }

            Method (HWEV, 0, NotSerialized)
            {
                Return (Package (0x03)
                {
                    Package (0x04)
                    {
                        0x00801020, 
                        0x10, 
                        Zero, 
                        One
                    }, 

                    Package (0x04)
                    {
                        0x0086CFB0, 
                        0x04, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0086C000, 
                        0x0140, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Device (RFS0)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.IPC0
            })
            Name (_HID, "QCOM2423")  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x92100000,         // Address Base
                        0x00180000,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.RFS0._CRS.RBUF */
            }
        }

        Device (GPS)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.SMD0
            })
            Name (_HID, "QCOM24B4")  // _HID: Hardware ID
            Name (_CID, "ACPIQCOM24B4")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (QBCC)
        {
            Name (_HID, "QCOM241D")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00022000,         // Address Base
                        0x00000140,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x0073A000,         // Address Base
                        0x00006000,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.QBCC._CRS.RBUF */
            }
        }

        Device (MBRG)
        {
            Name (_HID, "QCOM2145")  // _HID: Hardware ID
        }

        Device (RMAT)
        {
            Name (_HID, "QCOM2155")  // _HID: Hardware ID
        }

        Device (RMNT)
        {
            Name (_HID, "QCOM2148")  // _HID: Hardware ID
        }

        Device (DPLB)
        {
            Name (_HID, "QCOM24C5")  // _HID: Hardware ID
        }

        Device (COEX)
        {
            Name (_HID, "QCOM2487")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (COE2)
        {
            Name (_HID, "QCOM2487")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
        }

        Scope (\_SB.RIVA)
        {
            Name (THLO, 0x0DAC)
            Method (VPHL, 0, NotSerialized)
            {
                Return (THLO) /* \_SB_.RIVA.THLO */
            }

            Name (THHI, 0x0E10)
            Method (VPHH, 0, NotSerialized)
            {
                Return (THHI) /* \_SB_.RIVA.THHI */
            }
        }

        Device (URS0)
        {
            Name (_HID, "QCOM24B7")  // _HID: Hardware ID
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (REG, Zero)
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x078D9000,         // Address Base
                    0x00000300,         // Address Length
                    )
                GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullUp, 0x0000,
                    "\\_SB.PM01", 0x00, ResourceConsumer, ,
                    RawDataBuffer (0x04)  // Vendor Data
                    {
                        0x21, 0x01, 0x02, 0x1C
                    })
                    {   // Pin list
                        0x1005
                    }
            })
            OperationRegion (UCDR, SystemMemory, 0x078D9000, 0x1000)
            Field (UCDR, WordAcc, NoLock, Preserve)
            {
                Offset (0x44), 
                SCRA,   32, 
                Offset (0x90), 
                AHBB,   32, 
                Offset (0x98), 
                AHBM,   32, 
                GENC,   32, 
                GETC,   32, 
                Offset (0x140), 
                UCMD,   32, 
                Offset (0x170), 
                ULPI,   32, 
                Offset (0x184), 
                PTSC,   32, 
                Offset (0x1A8), 
                MODE,   32, 
                Offset (0x278), 
                CTRL,   32
            }

            OperationRegion (PCDR, SystemMemory, 0x0006C000, 0x0200)
            Field (PCDR, ByteAcc, NoLock, Preserve)
            {
                Offset (0x3C), 
                IST0,   8, 
                Offset (0x40), 
                IST1,   8, 
                Offset (0x5C), 
                ISRC,   8, 
                Offset (0x8C), 
                CTL1,   8, 
                Offset (0x94), 
                CTL3,   8, 
                Offset (0xD0), 
                ICMD,   8, 
                Offset (0xD4), 
                IDM0,   8, 
                Offset (0xD8), 
                IDM1,   8, 
                Offset (0xDC), 
                CLR0,   8, 
                Offset (0xE0), 
                CLR1,   8
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.URS0._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14eb0a6a-79ed-4b37-a8c7-84604b55c5c3") /* Unknown UUID */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                While (One)
                                {
                                    Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_2 = ToInteger (Arg1)
                                    If ((_T_2 == Zero))
                                    {
                                        Return (0x03)
                                        Break
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                        Break
                                    }

                                    Break
                                }

                                Return (Zero)
                                Break
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (Zero)
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                Return (Zero)
                            }
                            Else
                            {
                                Return (Zero)
                                Break
                            }

                            Break
                        }

                        Break
                    }
                    Else
                    {
                        Return (Zero)
                        Break
                    }

                    Break
                }
            }

            Device (UFN0)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
					Memory32Fixed (ReadWrite,
                        0x078DB000,         // Address Base
                        0x00000200,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000A6,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x000000AC,
                    }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x04)  // Vendor Data
                        {
                            0x21, 0x01, 0x02, 0x19
                        })
                        {   // Pin list
                            0x1002
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        RawDataBuffer (0x04)  // Vendor Data
                        {
                            0x20, 0x01, 0x02, 0x19
                        })
                        {   // Pin list
                            0x1001
                        }
                })
                Method (_UBF, 0, NotSerialized)
                {
                    MODE = 0x02
                    REG = PTSC /* \_SB_.URS0.PTSC */
                    PTSC = (REG | 0x02)
                    AHBM = 0x08
                    AHBB = Zero
                    GENC = 0x0CB0
                    CTRL = 0x000D3C32
                    ULPI = 0x60960003
                    REG = GETC /* \_SB_.URS0.GETC */
                    GETC = (REG | 0x80)
                    REG = UCMD /* \_SB_.URS0.UCMD */
                    UCMD = (REG | 0x02000000)
                    SCRA = 0x39
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    While (One)
                    {
                        Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        {
                             0x00                                             // .
                        })
                        CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.URS0.UFN0._DSM._T_0 */
                        If ((_T_0 == ToUUID ("fe56cfeb-49d5-4378-a8a2-2978dbe54ad2") /* Unknown UUID */))
                        {
                            While (One)
                            {
                                Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == Zero))
                                {
                                    While (One)
                                    {
                                        Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                        _T_2 = ToInteger (Arg1)
                                        If ((_T_2 == Zero))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03                                             // .
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                            Break
                                        }

                                        Break
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }
                                ElseIf ((_T_1 == One))
                                {
                                    Return (0x10)
                                    Break
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }

                                Break
                            }
                        }
                        ElseIf ((_T_0 == ToUUID ("18de299f-9476-4fc9-b43b-8aeb713ed751") /* Unknown UUID */))
                        {
                            While (One)
                            {
                                Name (_T_3, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_3 = ToInteger (Arg2)
                                If ((_T_3 == Zero))
                                {
                                    While (One)
                                    {
                                        Name (_T_4, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                        _T_4 = ToInteger (Arg1)
                                        If ((_T_4 == Zero))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03                                             // .
                                            })
                                            Break
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                            Break
                                        }

                                        Break
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }
                                ElseIf ((_T_3 == One))
                                {
                                    Return (0x02)
                                    Break
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }

                                Break
                            }
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                            Break
                        }

                        Break
                    }
                }

                Method (PHYC, 0, NotSerialized)
                {
                    Name (CFG0, Package (0x01)
                    {
                        Package (0x03)
                        {
                            Zero, 
                            0x80, 
                            0x74
                        }
                    })
                    Return (CFG0) /* \_SB_.URS0.UFN0.PHYC.CFG0 */
                }
            }
        }

        Device (BTNS)
        {
            Name (_HID, "ACPI0011" /* Generic Buttons Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, Shared, PullDown, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0040
                        }
                    GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x1838,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x005A
                        }
                    GpioInt (Edge, ActiveBoth, SharedAndWake, PullDown, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0041
                        }
                })
                Return (RBUF) /* \_SB_.BTNS._CRS.RBUF */
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("fa6bd625-9ce8-470d-a2c7-b3ca36c4282e") /* Generic Buttons Device */, 
                Package (0x04)
                {
                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Zero, 
                        One, 
                        0x0D
                    }, 

                    Package (0x05)
                    {
                        One, 
                        Zero, 
                        One, 
                        One, 
                        0x81
                    }, 

                    Package (0x05)
                    {
                        One, 
                        One, 
                        One, 
                        0x0C, 
                        0xE9
                    }, 

                    Package (0x05)
                    {
                        One, 
                        0x02, 
                        One, 
                        0x0C, 
                        0xEA
                    }
                }
            })
        }

        Device (HWN1)
        {
            Name (_HID, "QCOM2147")  // _HID: Hardware ID
            Name (_CID, "ACPIQCOM2147")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (NAM, Buffer (0x0A)
                {
                    "\\_SB.SPMI"
                })
                Name (PON1, Buffer (0x0C)
                {
                    /* 0000 */  0x8E, 0x13, 0x00, 0x01, 0x00, 0xC1, 0x02, 0x01,  // ........
                    /* 0008 */  0xC0, 0x01, 0x00, 0x00                           // ....
                })
                Name (END, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Concatenate (PON1, NAM, Local0)
                Concatenate (Local0, END, Local1)
                Return (Local1)
            }

            Method (HWNH, 0, NotSerialized)
            {
                Name (CFG0, Package (0x05)
                {
                    One, 
                    Zero, 
                    0x19, 
                    0x0C, 
                    0x14
                })
                Return (CFG0) /* \_SB_.HWN1.HWNH.CFG0 */
            }
        }

        Device (DMUX)
        {
            Name (_HID, "QCOM2406")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (QMAP)
        {
            Name (_HID, "QCOM24B0")  // _HID: Hardware ID
        }

        Device (AGR0)
        {
            Name (_HID, "ACPI000C" /* Processor Aggregator Device */)  // _HID: Hardware ID
            Name (_PUR, Package (0x02)  // _PUR: Processor Utilization Request
            {
                One, 
                Zero
            })
            Method (_OST, 3, NotSerialized)  // _OST: OSPM Status Indication
            {
                \_SB.PEP0.ROST = Arg2
            }
        }

        Device (THM1)
        {
            Name (_HID, "MSHW1013")  // _HID: Hardware ID
            Name (_UID, 0x64)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.ADC1
            })
            Method (CHAN, 0, NotSerialized)
            {
                Return (Buffer (0x06)
                {
                    "CTEMP"
                })
            }

            Method (POLL, 0, NotSerialized)
            {
                Return (0x012C)
            }
        }

        Device (THM2)
        {
            Name (_HID, "MSHW1013")  // _HID: Hardware ID
            Name (_UID, 0x65)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.ADC1
            })
            Method (CHAN, 0, NotSerialized)
            {
                Return (Buffer (0x09)
                {
                    "PA_THERM"
                })
            }

            Method (POLL, 0, NotSerialized)
            {
                Return (0x012C)
            }
        }

        ThermalZone (TZ0)
        {
            Name (_HID, "QCOM24AD")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x04)  // _TZD: Thermal Zone Devices
            {
                \_SB.CPU0, 
                \_SB.CPU1, 
                \_SB.CPU2, 
                \_SB.CPU3
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DFC)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ1)
        {
            Name (_HID, "QCOM24AD")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PEP0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DCA)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ1_._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (0x22)
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ2)
        {
            Name (_HID, "QCOM248C")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DDE)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ3)
        {
            Name (_HID, "QCOM248C")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x05)  // _TZD: Thermal Zone Devices
            {
                \_SB.CPU0, 
                \_SB.CPU1, 
                \_SB.CPU2, 
                \_SB.CPU3, 
                \_SB.PEP0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0E2E)
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (0x0EC4)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ4)
        {
            Name (_HID, "QCOM248C")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DAC)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ4_._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (0x32)
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ5)
        {
            Name (_HID, "QCOM2472")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.COEX
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DFC)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ6)
        {
            Name (_HID, "QCOM2471")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.GPU0.AVS0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DB6)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ81)
        {
            Name (_HID, "QCOM2470")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_TZD, Package (0x05)  // _TZD: Thermal Zone Devices
            {
                \_SB.CPU0, 
                \_SB.CPU1, 
                \_SB.CPU2, 
                \_SB.CPU3, 
                \_SB.PEP0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DCA)
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (0x0E60)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ81._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (0x22)
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ82)
        {
            Name (_HID, "QCOM24AD")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_TZD, Package (0x06)  // _TZD: Thermal Zone Devices
            {
                \_SB.CPU0, 
                \_SB.CPU1, 
                \_SB.CPU2, 
                \_SB.CPU3, 
                \_SB.CXTL, 
                \_SB.COE2
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0E60)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ84)
        {
            Name (_HID, "QCOM24AE")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0DAC)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ84._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (0x32)
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ99)
        {
            Name (_HID, "QCOM24AE")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x0C)  // _TZD: Thermal Zone Devices
            {
                \_SB.CPU0, 
                \_SB.CPU1, 
                \_SB.CPU2, 
                \_SB.CPU3, 
                \_SB.PEP0, 
                \_SB.AMSS, 
                \_SB.GPU0.MON0, 
                \_SB.GPU0, 
                \_SB.GPU0.AVS0, 
                \_SB.PMBM, 
                \_SB.COEX, 
                \_SB.CXTL
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0E92)
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (0x0EC4)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ52)
        {
            Name (_HID, "QCOM248D")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0CB2)
            }

            Method (_CR3, 0, NotSerialized)  // _CR3: Warm/Standby Temperature
            {
                Return (0x0CE4)
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (0x0D02)
            }

            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.PEP0
                })
            }
        }

        ThermalZone (TZ72)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ72._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x05                                             // .
                                })
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                Return ("THM1")
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.THM1
                })
            }

            Name (_TZD, Package (0x06)  // _TZD: Thermal Zone Devices
            {
                \_SB.PMBM, 
                \_SB.CPU0, 
                \_SB.CPU1, 
                \_SB.CPU2, 
                \_SB.CPU3, 
                \_SB.PEP0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0CB2)
            }

            Method (_CR3, 0, NotSerialized)  // _CR3: Warm/Standby Temperature
            {
                Return (0x0CBC)
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (0x0CD0)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
        }

        ThermalZone (TZ75)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ75._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x05                                             // .
                                })
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                Return ("THM1")
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.THM1
                })
            }

            Name (_TZD, Package (0x02)  // _TZD: Thermal Zone Devices
            {
                \_SB.GPU0.AVS0, 
                \_SB.PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0CA8)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
        }

        ThermalZone (TZ76)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ76._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (0x28)
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                Return ("THM1")
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.THM1
                })
            }

            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PEP0
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0C62)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x1E)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
        }

        ThermalZone (TZ77)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ77._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x07                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (0x28)
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                Return ("THM1")
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.THM1
                })
            }

            Name (_TZD, Package (0x01)  // _TZD: Thermal Zone Devices
            {
                \_SB.PMBM
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0C58)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x02)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x0A)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
        }

        ThermalZone (TZ73)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.TZ73._DSM._T_0 */
                    If ((_T_0 == ToUUID ("14d399cd-7a27-4b18-8fb4-7cb7b9f4e500") /* Thermal Extensions */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x05                                             // .
                                })
                            }
                            ElseIf ((_T_1 == 0x02))
                            {
                                Return ("THM2")
                            }

                            Break
                        }
                    }

                    Break
                }
            }

            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                Return (Package (0x01)
                {
                    \_SB.THM2
                })
            }

            Name (_TZD, Package (0x0C)  // _TZD: Thermal Zone Devices
            {
                \_SB.CPU0, 
                \_SB.CPU1, 
                \_SB.CPU2, 
                \_SB.CPU3, 
                \_SB.PEP0, 
                \_SB.AMSS, 
                \_SB.GPU0.MON0, 
                \_SB.GPU0, 
                \_SB.GPU0.AVS0, 
                \_SB.PMBM, 
                \_SB.COEX, 
                \_SB.CXTL
            })
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                Return (0x0E2E)
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (0x0E60)
            }

            Name (_TC1, One)  // _TC1: Thermal Constant 1
            Name (_TC2, One)  // _TC2: Thermal Constant 2
            Name (_TSP, 0x32)  // _TSP: Thermal Sampling Period
            Name (_TZP, Zero)  // _TZP: Thermal Zone Polling
        }

        Device (RVRM)
        {
            Name (_HID, "QCOM2498")  // _HID: Hardware ID
        }

        Device (LNK0)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (LNK1)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
        }

        Device (LNK2)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
        }

        Device (LNK3)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
        }

        Device (LNK4)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
        }

        Device (LNK5)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
        }

        Device (LNK6)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
        }

        Device (LNK7)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
        }

        Device (LNK8)
        {
            Name (_HID, "QCOM24A7")  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
        }

        Device (CAMP)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.PEP0, 
                \_SB.PMIC
            })
            Name (_HID, "QCOM0775")  // _HID: Hardware ID
            Name (_UID, 0x1B)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x078B7000,         // Address Base
                        0x00000600,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x01B00000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x01B0AC00,         // Address Base
                        0x00000400,         // Address Length
                        )
                    GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0061
                        }
                    GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0063
                        }
                    GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001F
                        }
                    GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionInputOnly,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0020
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0022
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0021
                        }
                })
                Return (RBUF) /* \_SB_.CAMP._CRS.RBUF */
            }

            Method (INFO, 0, NotSerialized)
            {
                Return (0x01000000)
            }
        }

        Device (CAMF)
        {
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.CAMP, 
                \_SB.PEP0, 
                \_SB.CAMS
            })
            Name (_HID, "QCOM0715")  // _HID: Hardware ID
            Name (_UID, 0x1A)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01B08400,         // Address Base
                        0x00000400,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000052,
                    }
                })
                Return (RBUF) /* \_SB_.CAMF._CRS.RBUF */
            }

            Name (PGID, Buffer (0x0A)
            {
                "\\_SB.CAMF"
            })
            Name (DBUF, Buffer (DBFL) {})
            CreateByteField (DBUF, Zero, STAT)
            CreateByteField (DBUF, 0x02, DVAL)
            CreateField (DBUF, 0x18, 0xA0, DEID)
            Method (_S1D, 0, NotSerialized)  // _S1D: S1 Device State
            {
                Return (0x03)
            }

            Method (_S2D, 0, NotSerialized)  // _S2D: S2 Device State
            {
                Return (0x03)
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x03)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                DEID = Buffer (ESNL) {}
                DVAL = Zero
                DEID = PGID /* \_SB_.CAMF.PGID */
                If (\_SB.ABD.AVBL)
                {
                    \_SB.PEP0.FLD0 = DBUF /* \_SB_.CAMF.DBUF */
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                DEID = Buffer (ESNL) {}
                DVAL = 0x03
                DEID = PGID /* \_SB_.CAMF.PGID */
                If (\_SB.ABD.AVBL)
                {
                    \_SB.PEP0.FLD0 = DBUF /* \_SB_.CAMF.DBUF */
                }
            }
        }

        Device (VFE0)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.ATCU, 
                \_SB.CAMP
            })
            Name (_HID, "QCOM0700")  // _HID: Hardware ID
            Name (_UID, 0x16)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01B10000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x01B0A000,         // Address Base
                        0x00000C00,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x01B40000,         // Address Base
                        0x00003000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x07706000,         // Address Base
                        0x00000100,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000054,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000053,
                    }
                })
                Return (RBUF) /* \_SB_.VFE0._CRS.RBUF */
            }
        }

        Device (FLSH)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.CAMS, 
                \_SB.PEP0
            })
            Name (_HID, "QCOM0705")  // _HID: Hardware ID
            Name (_UID, 0x19)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.FLSH._CRS.RBUF */
            }
        }

        Device (CAMS)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.CAMP, 
                \_SB.PEP0
            })
            Name (_HID, "QCOM0710")  // _HID: Hardware ID
            Name (_UID, 0x15)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01B08000,         // Address Base
                        0x00000400,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000051,
                    }
                })
                Return (RBUF) /* \_SB_.CAMS._CRS.RBUF */
            }

            Name (PGID, Buffer (0x0A)
            {
                "\\_SB.CAMS"
            })
            Name (DBUF, Buffer (DBFL) {})
            CreateByteField (DBUF, Zero, STAT)
            CreateByteField (DBUF, 0x02, DVAL)
            CreateField (DBUF, 0x18, 0xA0, DEID)
            Method (_S1D, 0, NotSerialized)  // _S1D: S1 Device State
            {
                Return (0x03)
            }

            Method (_S2D, 0, NotSerialized)  // _S2D: S2 Device State
            {
                Return (0x03)
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x03)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                DEID = Buffer (ESNL) {}
                DVAL = Zero
                DEID = PGID /* \_SB_.CAMS.PGID */
                If (\_SB.ABD.AVBL)
                {
                    \_SB.PEP0.FLD0 = DBUF /* \_SB_.CAMS.DBUF */
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                DEID = Buffer (ESNL) {}
                DVAL = 0x03
                DEID = PGID /* \_SB_.CAMS.PGID */
                If (\_SB.ABD.AVBL)
                {
                    \_SB.PEP0.FLD0 = DBUF /* \_SB_.CAMS.DBUF */
                }
            }
        }

        Device (QDCI)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.SMD0
            })
            Name (_HID, "QCOM2412")  // _HID: Hardware ID
        }

        Device (SSM)
        {
            Name (_HID, "QCOM2414")  // _HID: Hardware ID
        }

        Device (PER0)
        {
            Name (_HID, "QCOM25A0")  // _HID: Hardware ID
        }

        Device (LSPX)
        {
            Name (_HID, "MSHW1022")  // _HID: Hardware ID
            Method (MODE, 0, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x65                                             // e
                })
                Return (RBUF) /* \_SB_.LSPX.MODE.RBUF */
            }
        }

        Device (LACT)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.LSPX
            })
            Name (_HID, "MSHW101C")  // _HID: Hardware ID
            Method (MODE, 0, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x01                                             // .
                })
                Return (RBUF) /* \_SB_.LACT.MODE.RBUF */
            }
        }

        Device (LSTP)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.LSPX
            })
            Name (_HID, "MSHW101D")  // _HID: Hardware ID
            Method (MODE, 0, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x02                                             // .
                })
                Return (RBUF) /* \_SB_.LSTP.MODE.RBUF */
            }
        }

        Device (LGES)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.LSPX
            })
            Name (_HID, "MSHW101E")  // _HID: Hardware ID
            Method (MODE, 0, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x03                                             // .
                })
                Return (RBUF) /* \_SB_.LGES.MODE.RBUF */
            }
        }

        Device (LSAC)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.LSPX
            })
            Name (_HID, "MSHW101F")  // _HID: Hardware ID
            Method (MODE, 0, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x64                                             // d
                })
                Return (RBUF) /* \_SB_.LSAC.MODE.RBUF */
            }
        }

        Device (LASD)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.LACT
            })
            Name (_HID, "MSHW1020")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (PRIM, 0, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x01                                             // .
                })
                Return (RBUF) /* \_SB_.LASD.PRIM.RBUF */
            }
        }

        Device (LPSD)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.LSTP
            })
            Name (_HID, "MSHW1021")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (PRIM, 0, NotSerialized)
            {
                Name (RBUF, Buffer (One)
                {
                     0x01                                             // .
                })
                Return (RBUF) /* \_SB_.LPSD.PRIM.RBUF */
            }
        }
    }
}

