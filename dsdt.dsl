/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.aml, Wed Jun 26 06:52:42 2019
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00013A23 (80419)
 *     Revision         0x02
 *     Checksum         0x1D
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "Notebook"
 *     OEM Revision     0x01072009 (17244169)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("", "DSDT", 2, "_ASUS_", "Notebook", 0x01072009)
{
    /*
     * iASL Warning: There were 10 external control methods found during
     * disassembly, but only 0 were resolved (10 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.ALIB, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GPP0.PEGP, UnknownObj)
    External (_SB_.PCI0.SBRG.EC0_.SKEY, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AFN4, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AFN7, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (ALIB, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (APTS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (M010, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (MPTS, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (MWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Name (PEBL, 0x04000000)
    Name (ACPM, One)
    Name (NBTS, 0x5000)
    Name (CPVD, One)
    Name (SMBB, 0x0B20)
    Name (SMBL, 0x20)
    Name (SMB0, 0x0B00)
    Name (SMBM, 0x10)
    Name (PMBS, 0x0800)
    Name (PMLN, 0xA0)
    Name (SMIO, 0xB2)
    Name (GPBS, Zero)
    Name (GPLN, Zero)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (HPTB, 0xFED00000)
    Name (WDTB, Zero)
    Name (WDTL, Zero)
    Name (GIOB, 0xFED81500)
    Name (IOMB, 0xFED80D00)
    Name (SSMB, 0xFED80200)
    Name (CAFS, 0xBB)
    Name (UTDB, Zero)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (PEBS, 0xF8000000)
    Name (PELN, 0x04000000)
    Name (CSMI, 0x61)
    Name (SMIA, 0xB2)
    Name (SMIB, 0xB3)
    Name (OFST, 0x35)
    Name (TRST, 0x02)
    Name (TCMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    Name (TTPF, Zero)
    Name (DTPT, Zero)
    Name (TTDP, One)
    Name (TPMB, 0xBD4B2000)
    Name (TPMC, 0xBD4B6000)
    Name (TPMM, 0xFD110510)
    Name (FTPM, 0xFD110510)
    Name (PPIM, 0xBDAA7F98)
    Name (PPIL, 0x1C)
    Name (AMDT, One)
    Name (TPMF, One)
    Name (PPIV, One)
    Name (HIDK, "MSFT0001")
    Name (HIDM, "MSFT0003")
    Name (CIDK, 0x0303D041)
    Name (CIDM, 0x030FD041)
    Name (ATIS, 0xB0)
    Name (MBEC, Zero)
    Name (NBTP, 0xFEC00000)
    Name (OSFG, Zero)
    Name (EXSI, 0xAB)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        If (Arg0)
        {
            \_SB.DSPI ()
            \_SB.PCI0.NAPE ()
        }

        PXXX (Arg0)
    }

    Name (PICM, Zero)
    Method (PXXX, 1, NotSerialized)
    {
        If (Arg0)
        {
            DBG8 = 0xAA
        }
        Else
        {
            DBG8 = 0xAC
        }

        PICM = Arg0
    }

    Name (OSVR, Ones)
    Method (OSFL, 0, NotSerialized)
    {
        If ((OSVR != Ones))
        {
            Return (OSVR) /* \OSVR */
        }

        If ((PICM == Zero))
        {
            DBG8 = 0xAC
        }

        OSVR = 0x03
        If (CondRefOf (\_OSI, Local0))
        {
            If (_OSI ("Windows 2001"))
            {
                OSVR = 0x04
            }

            If (_OSI ("Windows 2001.1"))
            {
                OSVR = 0x05
            }

            If (_OSI ("FreeBSD"))
            {
                OSVR = 0x06
            }

            If (_OSI ("HP-UX"))
            {
                OSVR = 0x07
            }

            If (_OSI ("OpenVMS"))
            {
                OSVR = 0x08
            }

            If (_OSI ("Windows 2001 SP1"))
            {
                OSVR = 0x09
            }

            If (_OSI ("Windows 2001 SP2"))
            {
                OSVR = 0x0A
            }

            If (_OSI ("Windows 2001 SP3"))
            {
                OSVR = 0x0B
            }

            If (_OSI ("Windows 2006"))
            {
                OSVR = 0x0C
            }

            If (_OSI ("Windows 2006 SP1"))
            {
                OSVR = 0x0D
            }

            If (_OSI ("Windows 2009"))
            {
                OSVR = 0x0E
            }

            If (_OSI ("Windows 2012"))
            {
                OSVR = 0x0F
            }

            If (_OSI ("Windows 2013"))
            {
                OSVR = 0x10
            }
        }
        Else
        {
            If (MCTH (_OS, "Microsoft Windows NT"))
            {
                OSVR = Zero
            }

            If (MCTH (_OS, "Microsoft Windows"))
            {
                OSVR = One
            }

            If (MCTH (_OS, "Microsoft WindowsME: Millennium Edition"))
            {
                OSVR = 0x02
            }

            If (MCTH (_OS, "Linux"))
            {
                OSVR = 0x03
            }

            If (MCTH (_OS, "FreeBSD"))
            {
                OSVR = 0x06
            }

            If (MCTH (_OS, "HP-UX"))
            {
                OSVR = 0x07
            }

            If (MCTH (_OS, "OpenVMS"))
            {
                OSVR = 0x08
            }
        }

        Return (OSVR) /* \OSVR */
    }

    Method (MCTH, 2, NotSerialized)
    {
        If ((SizeOf (Arg0) < SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Local0 = (SizeOf (Arg0) + One)
        Name (BUF0, Buffer (Local0){})
        Name (BUF1, Buffer (Local0){})
        BUF0 = Arg0
        BUF1 = Arg1
        While (Local0)
        {
            Local0--
            If ((DerefOf (BUF0 [Local0]) != DerefOf (BUF1 [Local0]
                )))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        Local0 = (SS1 << One)
        Local0 |= (SS2 << 0x02)
        Local0 |= (SS3 << 0x03)
        Local0 |= (SS4 << 0x04)
        If (((One << Arg1) & Local0))
        {
            PRWP [One] = Arg1
        }
        Else
        {
            Local0 >>= One
            If (((OSFL () == One) || (OSFL () == 0x02)))
            {
                FindSetLeftBit (Local0, PRWP [One])
            }
            Else
            {
                FindSetRightBit (Local0, PRWP [One])
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Name (WAKP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (UPWP, 1, NotSerialized)
    {
        If (DerefOf (WAKP [Zero]))
        {
            WAKP [One] = Zero
        }
        Else
        {
            WAKP [One] = Arg0
        }
    }

    OperationRegion (DEB0, SystemIO, 0x80, One)
    Field (DEB0, ByteAcc, NoLock, Preserve)
    {
        DBG8,   8
    }

    OperationRegion (DEB1, SystemIO, 0x90, 0x02)
    Field (DEB1, WordAcc, NoLock, Preserve)
    {
        DBG9,   16
    }

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0xFFFF)
    Name (TOPM, 0x00000000)
    Name (ROMS, 0xFFE00000)
    Name (VGAF, One)
    OperationRegion (DEB2, SystemIO, 0x80, 0x02)
    Field (DEB2, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    Name (OSTY, Ones)
    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ACMX,   8, 
        ACMA,   8
    }

    IndexField (ACMX, ACMA, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB9), 
        IMEN,   8
    }

    OperationRegion (PSMI, SystemIO, SMIO, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    OperationRegion (PMRG, SystemIO, 0x0CD6, 0x02)
    Field (PMRG, ByteAcc, NoLock, Preserve)
    {
        PMRI,   8, 
        PMRD,   8
    }

    IndexField (PMRI, PMRD, ByteAcc, NoLock, Preserve)
    {
            ,   6, 
        HPEN,   1, 
        Offset (0x60), 
        P1EB,   16, 
        Offset (0xF0), 
            ,   3, 
        RSTU,   1
    }

    OperationRegion (GSMG, SystemMemory, 0xFED81500, 0x03FF)
    Field (GSMG, AnyAcc, NoLock, Preserve)
    {
        Offset (0x5C), 
        Offset (0x5E), 
        GS23,   1, 
            ,   5, 
        GV23,   1, 
        GE23,   1, 
        Offset (0xA0), 
        Offset (0xA2), 
        GS40,   1, 
            ,   5, 
        GV40,   1, 
        GE40,   1
    }

    OperationRegion (GSMM, SystemMemory, 0xFED80000, 0x1000)
    Field (GSMM, AnyAcc, NoLock, Preserve)
    {
        Offset (0x288), 
            ,   1, 
        CLPS,   1, 
        Offset (0x296), 
            ,   7, 
        TMSE,   1, 
        Offset (0x2B0), 
            ,   2, 
        SLPS,   2, 
        Offset (0x3BB), 
            ,   6, 
        PWDE,   1
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   6, 
        PEWS,   1, 
        WSTA,   1, 
        Offset (0x03), 
            ,   6, 
        PEWD,   1
    }

    OperationRegion (IOCC, SystemIO, PMBS, 0x80)
    Field (IOCC, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   2, 
        RTCS,   1
    }

    Method (SPTS, 1, NotSerialized)
    {
        P80H = Arg0
        If ((Arg0 == 0x03))
        {
            RSTU = Zero
        }

        CLPS = One
        SLPS = One
        PEWS = PEWS /* \PEWS */
        If ((Arg0 == 0x03))
        {
            SLPS = One
        }

        If ((Arg0 == 0x04))
        {
            SLPS = One
            RSTU = One
        }

        If ((Arg0 == 0x05))
        {
            PWDE = One
        }
    }

    Method (SWAK, 1, NotSerialized)
    {
        If ((Arg0 == 0x03))
        {
            RSTU = One
        }

        PEWS = PEWS /* \PEWS */
        PEWD = Zero
        If (PICM)
        {
            \_SB.DSPI ()
        }

        If (TMSE)
        {
            TMSE = Zero
        }

        If ((Arg0 == 0x03))
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If ((Arg0 == 0x04))
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }
    }

    Scope (_GPE)
    {
    }

    Name (RDHW, Zero)
    Name (CNSB, Zero)
    Name (CRBR, 0xBDAA7018)
    OperationRegion (CRBN, SystemMemory, CRBR, 0x08)
    Field (CRBN, AnyAcc, Lock, Preserve)
    {
        MWTT,   8, 
        THPN,   8, 
        THPD,   8, 
        NFCS,   8, 
        ALST,   8, 
        DPTC,   8, 
        RV2I,   8, 
        ISDS,   8
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {4,5,7,10,11,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Name (PD10, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR10, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x18
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x19
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1B
            }
        })
        Name (PD15, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR15, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x1C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x1D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x1E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x1F
            }
        })
        Name (PD1F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR1F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x20
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x21
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x22
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x23
            }
        })
        Name (PD24, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR24, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x24
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x25
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x26
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x27
            }
        })
        Name (PD29, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR29, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2B
            }
        })
        Name (PD2E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR2E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x2C
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x2D
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x2E
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x2F
            }
        })
        Name (PD33, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR33, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x30
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x31
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x32
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x33
            }
        })
        Name (PD38, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKH, 
                Zero
            }
        })
        Name (AR38, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x35
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x37
            }
        })
        Name (PD39, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR39, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x37
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x35
            }
        })
        Name (PD00, Package (0x0C)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR00, Package (0x0C)
        {
            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x28
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x29
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x2A
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x2B
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                Zero, 
                0x34
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                Zero, 
                0x35
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                Zero, 
                0x36
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x03, 
                Zero, 
                0x37
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
    }

    Scope (_SB)
    {
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PD00) /* \_SB_.PD00 */
            }

            Device (AMDN)
            {
                Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                Name (_UID, 0xC8)  // _UID: Unique ID
                Name (_STA, 0x0F)  // _STA: Status
                Name (NPTR, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y00)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y00._LEN, PL)  // _LEN: Length
                    CreateDWordField (NPTR, \_SB.PCI0.AMDN._Y00._BAS, PB)  // _BAS: Base Address
                    PB = PEBS /* \PEBS */
                    PL = PEBL /* \PEBL */
                    Return (NPTR) /* \_SB_.PCI0.AMDN.NPTR */
                }
            }

            Method (NPTS, 1, NotSerialized)
            {
                APTS (Arg0)
            }

            Method (NWAK, 1, NotSerialized)
            {
                AWAK (Arg0)
            }

            Name (CPRB, One)
            Name (LVGA, 0x01)
            Name (STAV, 0x0F)
            Name (BRB, 0x0000)
            Name (BRL, 0x0100)
            Name (IOB, 0x1000)
            Name (IOL, 0xF000)
            Name (MBB, 0xC0000000)
            Name (MBL, 0x40000000)
            Name (MAB, 0x0000000000000000)
            Name (MAL, 0x0000000000000000)
            Name (MAM, 0x0000000000000000)
            Name (CRS1, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x007F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y01)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x03AF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x03B0,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x03E0,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0918,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y03, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0x0FFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0300,             // Length
                    ,, _Y02, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x02000000,         // Range Minimum
                    0xFFDFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFDE00000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
            })
            Name (CRS2, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0080,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0080,             // Length
                    ,, _Y08)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y0A, TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0000,             // Length
                    ,, _Y09, TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xFFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x80000000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (STAV) /* \_SB_.PCI0.STAV */
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                DBG8 = 0x25
                If (CPRB)
                {
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MIN, MIN0)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._MAX, MAX0)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y01._LEN, LEN0)  // _LEN: Length
                    MIN0 = BRB /* \_SB_.PCI0.BRB_ */
                    LEN0 = BRL /* \_SB_.PCI0.BRL_ */
                    Local0 = LEN0 /* \_SB_.PCI0._CRS.LEN0 */
                    MAX0 = (MIN0 + Local0--)
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MIN, MIN1)  // _MIN: Minimum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._MAX, MAX1)  // _MAX: Maximum Base Address
                    CreateWordField (CRS1, \_SB.PCI0._Y02._LEN, LEN1)  // _LEN: Length
                    If ((IOB == 0x1000))
                    {
                        Local0 = IOL /* \_SB_.PCI0.IOL_ */
                        MAX1 = (IOB + Local0--)
                        Local0 = (MAX1 - MIN1) /* \_SB_.PCI0._CRS.MIN1 */
                        LEN1 = (Local0 + One)
                    }
                    Else
                    {
                        MIN1 = IOB /* \_SB_.PCI0.IOB_ */
                        LEN1 = IOL /* \_SB_.PCI0.IOL_ */
                        Local0 = LEN1 /* \_SB_.PCI0._CRS.LEN1 */
                        MAX1 = (MIN1 + Local0--)
                    }

                    If (((LVGA == One) || (LVGA == 0x55)))
                    {
                        If (VGAF)
                        {
                            CreateWordField (CRS1, \_SB.PCI0._Y03._MIN, IMN1)  // _MIN: Minimum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y03._MAX, IMX1)  // _MAX: Maximum Base Address
                            CreateWordField (CRS1, \_SB.PCI0._Y03._LEN, ILN1)  // _LEN: Length
                            IMN1 = 0x03B0
                            IMX1 = 0x03DF
                            ILN1 = 0x30
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._MIN, VMN1)  // _MIN: Minimum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._MAX, VMX1)  // _MAX: Maximum Base Address
                            CreateDWordField (CRS1, \_SB.PCI0._Y04._LEN, VLN1)  // _LEN: Length
                            VMN1 = 0x000A0000
                            VMX1 = 0x000BFFFF
                            VLN1 = 0x00020000
                            VGAF = Zero
                        }
                    }

                    CreateDWordField (CRS1, \_SB.PCI0._Y05._MIN, MIN3)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y05._MAX, MAX3)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y05._LEN, LEN3)  // _LEN: Length
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MIN, MIN7)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._MAX, MAX7)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS1, \_SB.PCI0._Y06._LEN, LEN7)  // _LEN: Length
                    Local0 = (MBB + MBL) /* \_SB_.PCI0.MBL_ */
                    If ((Local0 < NBTP))
                    {
                        MIN3 = MBB /* \_SB_.PCI0.MBB_ */
                        LEN3 = MBL /* \_SB_.PCI0.MBL_ */
                        Local0 = LEN3 /* \_SB_.PCI0._CRS.LEN3 */
                        MAX3 = (MIN3 + Local0--)
                        MIN7 = Zero
                        MAX7 = Zero
                        LEN7 = Zero
                    }
                    Else
                    {
                        MIN3 = MBB /* \_SB_.PCI0.MBB_ */
                        LEN3 = (NBTP - MBB)
                        Local0 = LEN3 /* \_SB_.PCI0._CRS.LEN3 */
                        MAX3 = (MIN3 + Local0--)
                        MIN7 = 0xFEE00000
                        Local0 = (0xFEE00000 - NBTP)
                        LEN7 = (MBL - Local0)
                        LEN7 = (LEN7 - LEN3)
                        Local0 = LEN7 /* \_SB_.PCI0._CRS.LEN7 */
                        MAX7 = (MIN7 + Local0--)
                    }

                    If (MAL)
                    {
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._MIN, MN8)  // _MIN: Minimum Base Address
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._MAX, MX8)  // _MAX: Maximum Base Address
                        CreateQWordField (CRS1, \_SB.PCI0._Y07._LEN, LN8)  // _LEN: Length
                        MN8 = MAB /* \_SB_.PCI0.MAB_ */
                        LN8 = MAL /* \_SB_.PCI0.MAL_ */
                        MX8 = MAM /* \_SB_.PCI0.MAM_ */
                    }

                    DBG8 = 0x24
                    Return (CRS1) /* \_SB_.PCI0.CRS1 */
                }
                Else
                {
                    CreateWordField (CRS2, \_SB.PCI0._Y08._MIN, MIN2)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y08._MAX, MAX2)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y08._LEN, LEN2)  // _LEN: Length
                    MIN2 = BRB /* \_SB_.PCI0.BRB_ */
                    LEN2 = BRL /* \_SB_.PCI0.BRL_ */
                    Local1 = LEN2 /* \_SB_.PCI0._CRS.LEN2 */
                    MAX2 = (MIN2 + Local1--)
                    CreateWordField (CRS2, \_SB.PCI0._Y09._MIN, MIN4)  // _MIN: Minimum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y09._MAX, MAX4)  // _MAX: Maximum Base Address
                    CreateWordField (CRS2, \_SB.PCI0._Y09._LEN, LEN4)  // _LEN: Length
                    MIN4 = IOB /* \_SB_.PCI0.IOB_ */
                    LEN4 = IOL /* \_SB_.PCI0.IOL_ */
                    Local1 = LEN4 /* \_SB_.PCI0._CRS.LEN4 */
                    MAX4 = (MIN4 + Local1--)
                    If (LVGA)
                    {
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._MIN, IMN2)  // _MIN: Minimum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._MAX, IMX2)  // _MAX: Maximum Base Address
                        CreateWordField (CRS2, \_SB.PCI0._Y0A._LEN, ILN2)  // _LEN: Length
                        IMN2 = 0x03B0
                        IMX2 = 0x03DF
                        ILN2 = 0x30
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MIN, VMN2)  // _MIN: Minimum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._MAX, VMX2)  // _MAX: Maximum Base Address
                        CreateDWordField (CRS2, \_SB.PCI0._Y0B._LEN, VLN2)  // _LEN: Length
                        VMN2 = 0x000A0000
                        VMX2 = 0x000BFFFF
                        VLN2 = 0x00020000
                    }

                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._MIN, MIN5)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._MAX, MAX5)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0C._LEN, LEN5)  // _LEN: Length
                    MIN5 = MBB /* \_SB_.PCI0.MBB_ */
                    LEN5 = (NBTP - MBB)
                    Local1 = LEN5 /* \_SB_.PCI0._CRS.LEN5 */
                    MAX5 = (MIN5 + Local1--)
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._MIN, MIN6)  // _MIN: Minimum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._MAX, MAX6)  // _MAX: Maximum Base Address
                    CreateDWordField (CRS2, \_SB.PCI0._Y0D._LEN, LEN6)  // _LEN: Length
                    MIN6 = (NBTP + NBTS) /* \NBTS */
                    LEN6 = (MBL - NBTS)
                    LEN6 = (LEN6 - LEN5)
                    Local0 = LEN6 /* \_SB_.PCI0._CRS.LEN6 */
                    MAX6 = (MIN6 + Local0--)
                    If (MAL)
                    {
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._MIN, MN9)  // _MIN: Minimum Base Address
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._MAX, MX9)  // _MAX: Maximum Base Address
                        CreateQWordField (CRS2, \_SB.PCI0._Y0E._LEN, LN9)  // _LEN: Length
                        MN9 = MAB /* \_SB_.PCI0.MAB_ */
                        LN9 = MAL /* \_SB_.PCI0.MAL_ */
                        MX9 = MAM /* \_SB_.PCI0.MAM_ */
                    }

                    DBG8 = 0x23
                    Return (CRS2) /* \_SB_.PCI0.CRS2 */
                }
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (SUPP, Zero)
                Name (CTRL, Zero)
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    If (!PEHP)
                    {
                        CTRL &= 0x1E
                    }

                    If (!SHPC)
                    {
                        CTRL &= 0x1D
                    }

                    If (!PEPM)
                    {
                        CTRL &= 0x1B
                    }

                    If (!PEER)
                    {
                        CTRL &= 0x15
                    }

                    If (!PECS)
                    {
                        CTRL &= 0x0F
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0._OSC.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Mutex (NAPM, 0x00)
            Method (NAPE, 0, NotSerialized)
            {
                Acquire (NAPM, 0xFFFF)
                DBG8 = 0x11
                Local0 = (PEBS + 0xB8)
                OperationRegion (VARM, SystemMemory, Local0, 0x08)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    NAPX,   32, 
                    NAPD,   32
                }

                Local1 = NAPX /* \_SB_.PCI0.NAPE.NAPX */
                NAPX = 0x14300000
                Local0 = NAPD /* \_SB_.PCI0.NAPE.NAPD */
                Local0 &= 0xFFFFFFEF
                NAPD = Local0
                NAPX = Local1
                DBG8 = 0x12
                Release (NAPM)
            }

            Device (IOMA)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, 0x15)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadOnly,
                        0xFEB80000,         // Address Base
                        0x00080000,         // Address Length
                        )
                })
            }

            Device (D003)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (GPP0)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (DOSA, Zero)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DOSA = Arg0
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x05)
                        {
                            0x00010110, 
                            0x00010210, 
                            0x00010220, 
                            0x00010230, 
                            0x00010240
                        })
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (BCLB, Package (0x34)
                        {
                            0x5A, 
                            0x3C, 
                            0x02, 
                            0x04, 
                            0x06, 
                            0x08, 
                            0x0A, 
                            0x0C, 
                            0x0E, 
                            0x10, 
                            0x12, 
                            0x14, 
                            0x16, 
                            0x18, 
                            0x1A, 
                            0x1C, 
                            0x1E, 
                            0x20, 
                            0x22, 
                            0x24, 
                            0x26, 
                            0x28, 
                            0x2A, 
                            0x2C, 
                            0x2E, 
                            0x30, 
                            0x32, 
                            0x34, 
                            0x36, 
                            0x38, 
                            0x3A, 
                            0x3C, 
                            0x3E, 
                            0x40, 
                            0x42, 
                            0x44, 
                            0x46, 
                            0x48, 
                            0x4A, 
                            0x4C, 
                            0x4E, 
                            0x50, 
                            0x52, 
                            0x54, 
                            0x56, 
                            0x58, 
                            0x5A, 
                            0x5C, 
                            0x5E, 
                            0x60, 
                            0x62, 
                            0x64
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BCLB) /* \_SB_.PCI0.GPP0.VGA_.LCD_.BCLB */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            Divide ((Arg0 * 0xFF), 0x64, Local1, Local0)
                            AFN7 (Local0)
                        }
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x08, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR10) /* \_SB_.AR10 */
                    }

                    Return (PD10) /* \_SB_.PD10 */
                }

                Device (D005)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP1)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Device (DEV0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (DEV1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x08, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR15) /* \_SB_.AR15 */
                    }

                    Return (PD15) /* \_SB_.PD15 */
                }

                Device (D007)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00010003)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x08, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR1F) /* \_SB_.AR1F */
                    }

                    Return (PD1F) /* \_SB_.PD1F */
                }

                Device (BCM5)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GPP3)
            {
                Name (_ADR, 0x00010004)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x08, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR24) /* \_SB_.AR24 */
                    }

                    Return (PD24) /* \_SB_.PD24 */
                }

                Device (D00A)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP4)
            {
                Name (_ADR, 0x00010005)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x08, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR29) /* \_SB_.AR29 */
                    }

                    Return (PD29) /* \_SB_.PD29 */
                }

                Device (D00C)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP5)
            {
                Name (_ADR, 0x00010006)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x08, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR2E) /* \_SB_.AR2E */
                    }

                    Return (PD2E) /* \_SB_.PD2E */
                }

                Device (D00E)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GPP6)
            {
                Name (_ADR, 0x00010007)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x08, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR33) /* \_SB_.AR33 */
                    }

                    Return (PD33) /* \_SB_.PD33 */
                }

                Device (D010)
                {
                    Name (_ADR, 0xFF)  // _ADR: Address
                }
            }

            Device (GP17)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x19, 0x04))
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x19, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR38) /* \_SB_.AR38 */
                    }

                    Return (PD38) /* \_SB_.PD38 */
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (AF7E, 0x80000001)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (DOSA, Zero)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DOSA = Arg0
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x07)
                        {
                            0x00010110, 
                            0x00010210, 
                            0x00010220, 
                            0x00010230, 
                            0x00010240, 
                            0x00031000, 
                            0x00032000
                        })
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (BCLB, Package (0x34)
                        {
                            0x5A, 
                            0x3C, 
                            0x02, 
                            0x04, 
                            0x06, 
                            0x08, 
                            0x0A, 
                            0x0C, 
                            0x0E, 
                            0x10, 
                            0x12, 
                            0x14, 
                            0x16, 
                            0x18, 
                            0x1A, 
                            0x1C, 
                            0x1E, 
                            0x20, 
                            0x22, 
                            0x24, 
                            0x26, 
                            0x28, 
                            0x2A, 
                            0x2C, 
                            0x2E, 
                            0x30, 
                            0x32, 
                            0x34, 
                            0x36, 
                            0x38, 
                            0x3A, 
                            0x3C, 
                            0x3E, 
                            0x40, 
                            0x42, 
                            0x44, 
                            0x46, 
                            0x48, 
                            0x4A, 
                            0x4C, 
                            0x4E, 
                            0x50, 
                            0x52, 
                            0x54, 
                            0x56, 
                            0x58, 
                            0x5A, 
                            0x5C, 
                            0x5E, 
                            0x60, 
                            0x62, 
                            0x64
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BCLB) /* \_SB_.PCI0.GP17.VGA_.LCD_.BCLB */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            If ((AF7E == 0x80000001))
                            {
                                Divide ((Arg0 * 0xFF), 0x64, Local1, Local0)
                                AFN7 (Local0)
                            }
                        }
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (ACP)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                }

                Device (AZAL)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (MP2C)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                }

                Device (XHC0)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x19, 0x04))
                    }

                    Method (MPRW, 0, NotSerialized)
                    {
                        Return (GPRW (0x19, Zero))
                    }
                }

                Device (XHC1)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x19, 0x04))
                    }

                    Method (MPRW, 0, NotSerialized)
                    {
                        Return (GPRW (0x19, Zero))
                    }
                }

                Device (APSP)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (PSPA, 0xFD000000)
                    Name (LENA, 0x01000000)
                    Name (PSPB, 0x00000000)
                    Name (LENB, 0x00000000)
                    Name (_STA, 0x0F)  // _STA: Status
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y0F)
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00000000,         // Address Length
                            _Y10)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (CRS, \_SB.PCI0.GP17.APSP._Y0F._BAS, ABAS)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.GP17.APSP._Y0F._LEN, ALEN)  // _LEN: Length
                        CreateDWordField (CRS, \_SB.PCI0.GP17.APSP._Y10._BAS, BBAS)  // _BAS: Base Address
                        CreateDWordField (CRS, \_SB.PCI0.GP17.APSP._Y10._LEN, BLEN)  // _LEN: Length
                        ABAS = PSPA /* \_SB_.PCI0.GP17.APSP.PSPA */
                        ALEN = LENA /* \_SB_.PCI0.GP17.APSP.LENA */
                        BBAS = PSPB /* \_SB_.PCI0.GP17.APSP.PSPB */
                        BLEN = LENB /* \_SB_.PCI0.GP17.APSP.LENB */
                        Return (CRS) /* \_SB_.PCI0.GP17.APSP.CRS_ */
                    }
                }
            }

            Device (GP18)
            {
                Name (_ADR, 0x00080002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (GPRW (0x08, 0x04))
                }

                Method (MPRW, 0, NotSerialized)
                {
                    Return (GPRW (0x08, Zero))
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR39) /* \_SB_.AR39 */
                    }

                    Return (PD39) /* \_SB_.PD39 */
                }

                Device (SATA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }

                Device (D026)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (D027)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }
            }

            Device (D01F)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
            }

            Device (SBRG)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (DMAD)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0087,             // Range Minimum
                            0x0087,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0089,             // Range Minimum
                            0x0089,             // Range Maximum
                            0x00,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x008F,             // Range Minimum
                            0x008F,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (RTC0)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If ((HPEN == One))
                        {
                            Return (BUF0) /* \_SB_.PCI0.SBRG.RTC0.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.SBRG.RTC0.BUF1 */
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                OperationRegion (SMI0, SystemIO, SMIO, One)
                Field (SMI0, ByteAcc, NoLock, Preserve)
                {
                    SMIC,   8
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Device (S900)
                        {
                            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                            Name (_UID, 0x0700)  // _UID: Unique ID
                            Name (_STA, 0x0F)  // _STA: Status
                            Name (CRS, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x0010,             // Range Minimum
                                    0x0010,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0022,             // Range Minimum
                                    0x0022,             // Range Maximum
                                    0x00,               // Alignment
                                    0x1E,               // Length
                                    )
                                IO (Decode16,
                                    0x0063,             // Range Minimum
                                    0x0063,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0065,             // Range Minimum
                                    0x0065,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0067,             // Range Minimum
                                    0x0067,             // Range Maximum
                                    0x00,               // Alignment
                                    0x09,               // Length
                                    )
                                IO (Decode16,
                                    0x0072,             // Range Minimum
                                    0x0072,             // Range Maximum
                                    0x00,               // Alignment
                                    0x0E,               // Length
                                    )
                                IO (Decode16,
                                    0x0080,             // Range Minimum
                                    0x0080,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0084,             // Range Minimum
                                    0x0084,             // Range Maximum
                                    0x00,               // Alignment
                                    0x03,               // Length
                                    )
                                IO (Decode16,
                                    0x0088,             // Range Minimum
                                    0x0088,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x008C,             // Range Minimum
                                    0x008C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x03,               // Length
                                    )
                                IO (Decode16,
                                    0x0090,             // Range Minimum
                                    0x0090,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x00A2,             // Range Minimum
                                    0x00A2,             // Range Maximum
                                    0x00,               // Alignment
                                    0x1E,               // Length
                                    )
                                IO (Decode16,
                                    0x00B1,             // Range Minimum
                                    0x00B1,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x00E0,             // Range Minimum
                                    0x00E0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x04D0,             // Range Minimum
                                    0x04D0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x040B,             // Range Minimum
                                    0x040B,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x04D6,             // Range Minimum
                                    0x04D6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C00,             // Range Minimum
                                    0x0C00,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C14,             // Range Minimum
                                    0x0C14,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C50,             // Range Minimum
                                    0x0C50,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0C52,             // Range Minimum
                                    0x0C52,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6C,             // Range Minimum
                                    0x0C6C,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0C6F,             // Range Minimum
                                    0x0C6F,             // Range Maximum
                                    0x00,               // Alignment
                                    0x01,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD0,             // Range Minimum
                                    0x0CD0,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD2,             // Range Minimum
                                    0x0CD2,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD4,             // Range Minimum
                                    0x0CD4,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD6,             // Range Minimum
                                    0x0CD6,             // Range Maximum
                                    0x00,               // Alignment
                                    0x02,               // Length
                                    )
                                IO (Decode16,
                                    0x0CD8,             // Range Minimum
                                    0x0CD8,             // Range Maximum
                                    0x00,               // Alignment
                                    0x08,               // Length
                                    )
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y11)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y13)
                                IO (Decode16,
                                    0x0000,             // Range Minimum
                                    0x0000,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    _Y12)
                                IO (Decode16,
                                    0x0900,             // Range Minimum
                                    0x0900,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0910,             // Range Minimum
                                    0x0910,             // Range Maximum
                                    0x00,               // Alignment
                                    0x10,               // Length
                                    )
                                IO (Decode16,
                                    0x0060,             // Range Minimum
                                    0x0060,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                IO (Decode16,
                                    0x0064,             // Range Minimum
                                    0x0064,             // Range Maximum
                                    0x00,               // Alignment
                                    0x00,               // Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y14)
                                Memory32Fixed (ReadWrite,
                                    0xFEC01000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFEDC0000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFEE00000,         // Address Base
                                    0x00001000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0xFED80000,         // Address Base
                                    0x00010000,         // Address Length
                                    )
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y15)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y16)
                                Memory32Fixed (ReadWrite,
                                    0x00000000,         // Address Base
                                    0x00000000,         // Address Length
                                    _Y17)
                            })
                            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                            {
                                CreateWordField (CRS, \_SB.PCI0.S900._Y11._MIN, PBB)  // _MIN: Minimum Base Address
                                CreateWordField (CRS, \_SB.PCI0.S900._Y11._MAX, PBH)  // _MAX: Maximum Base Address
                                CreateByteField (CRS, \_SB.PCI0.S900._Y11._LEN, PML)  // _LEN: Length
                                PBB = PMBS /* \PMBS */
                                PBH = PMBS /* \PMBS */
                                PML = PMLN /* \PMLN */
                                If (SMBB)
                                {
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y12._MIN, SMB1)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y12._MAX, SMH1)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y12._LEN, SML1)  // _LEN: Length
                                    SMB1 = SMBB /* \SMBB */
                                    SMH1 = SMBB /* \SMBB */
                                    SML1 = SMBL /* \SMBL */
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y13._MIN, SMBZ)  // _MIN: Minimum Base Address
                                    CreateWordField (CRS, \_SB.PCI0.S900._Y13._MAX, SMH0)  // _MAX: Maximum Base Address
                                    CreateByteField (CRS, \_SB.PCI0.S900._Y13._LEN, SML0)  // _LEN: Length
                                    SMBZ = SMB0 /* \SMB0 */
                                    SMH0 = SMB0 /* \SMB0 */
                                    SML0 = SMBM /* \SMBM */
                                }

                                If (APCB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y14._BAS, APB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y14._LEN, APL)  // _LEN: Length
                                    APB = APCB /* \APCB */
                                    APL = APCL /* \APCL */
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y15._BAS, SPIB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y15._LEN, SPIL)  // _LEN: Length
                                SPIB = 0xFEC10000
                                SPIL = 0x1000
                                If (WDTB)
                                {
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y16._BAS, WDTB)  // _BAS: Base Address
                                    CreateDWordField (CRS, \_SB.PCI0.S900._Y16._LEN, WDTL)  // _LEN: Length
                                    WDTB = \WDTB
                                    WDTL = \WDTL
                                }

                                CreateDWordField (CRS, \_SB.PCI0.S900._Y17._BAS, ROMB)  // _BAS: Base Address
                                CreateDWordField (CRS, \_SB.PCI0.S900._Y17._LEN, ROML)  // _LEN: Length
                                ROMB = 0xFF000000
                                ROML = 0x01000000
                                Return (CRS) /* \_SB_.PCI0.S900.CRS_ */
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Scope (PCI0)
                    {
                        Scope (SBRG)
                        {
                            Method (RRIO, 4, NotSerialized)
                            {
                                Debug = "RRIO"
                            }

                            Method (RDMA, 3, NotSerialized)
                            {
                                Debug = "rDMA"
                            }
                        }
                    }
                }
            }

            Device (D022)
            {
                Name (_ADR, 0x00140006)  // _ADR: Address
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GPP0, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP1, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP2, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP3, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP4, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP5, 0x02) // Device Wake
            Notify (\_SB.PCI0.GPP6, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP18, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L19, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.GP17, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP17.XHC0, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP17.XHC1, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_UID, 0xAA)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x03, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (Arg0)
        {
            XPTS (Arg0)
            \_SB.PCI0.SBRG.EC0.EC_S (Arg0)
            \_SB.TPM.TPTS (Arg0)
            SPTS (Arg0)
            MPTS (Arg0, \_SB.PCI0.NPTS (Arg0))
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        DBG8 = (Arg0 << 0x04)
        \_SB.PCI0.NWAK (Arg0)
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((PICM != Zero))
            {
                \_SB.PCI0.NAPE ()
            }
        }

        MWAK (Arg0)
        DBG8 = (Arg0 << 0x04)
        SWAK (Arg0)
        \_SB.PCI0.SBRG.EC0.EC_W (Arg0)
        XWAK (Arg0)
        Return (WAKP) /* \WAKP */
    }

    Scope (_PR)
    {
        OperationRegion (SSDT, SystemMemory, 0xFFFF0000, 0xFFFF)
        Name (DCOR, 0x02)
        Name (TBLD, 0x04)
        Name (NPSS, 0x05)
        Name (HNDL, 0x80000000)
        Name (APSS, Package (0x0A)
        {
            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }, 

            Package (0x06)
            {
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF, 
                0xFFFF
            }
        })
        Processor (P000, 0x01, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P000._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P001, 0x02, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P001._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P002, 0x03, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P002._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P003, 0x04, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P003._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P004, 0x05, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P004._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P005, 0x06, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P005._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P006, 0x07, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P006._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P007, 0x08, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P007._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P008, 0x09, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P008._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P009, 0x0A, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P009._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P00A, 0x0B, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P00A._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P00B, 0x0C, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P00B._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P00C, 0x0D, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P00C._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P00D, 0x0E, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P00D._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P00E, 0x0F, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P00E._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }

        Processor (P00F, 0x10, 0x00000810, 0x06)
        {
            Name (TYPE, 0x80000000)
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                CreateDWordField (Arg0, 0x08, DAT0)
                TYPE = DAT0 /* \_PR_.P00F._PDC.DAT0 */
                If (((TBLD == Zero) && (NPSS != Zero)))
                {
                    If ((((TYPE & 0x1B) == 0x1B) || (DCOR == Zero)))
                    {
                        TBLD = One
                        Load (SSDT, HNDL) /* \_PR_.HNDL */
                    }
                }
            }
        }
    }

    Scope (_SB)
    {
        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8, 
            Offset (0x0C), 
            SIRA,   8, 
            SIRB,   8, 
            SIRC,   8, 
            SIRD,   8, 
            PIRS,   8, 
            Offset (0x13), 
            HDAD,   8, 
            Offset (0x17), 
            SDCL,   8, 
            Offset (0x1A), 
            SDIO,   8, 
            Offset (0x30), 
            USB1,   8, 
            Offset (0x34), 
            USB3,   8, 
            Offset (0x41), 
            SATA,   8, 
            Offset (0x62), 
            GIOC,   8, 
            Offset (0x70), 
            I2C0,   8, 
            I2C1,   8, 
            I2C2,   8, 
            I2C3,   8, 
            URT0,   8, 
            URT1,   8
        }

        OperationRegion (KBDD, SystemIO, 0x64, One)
        Field (KBDD, ByteAcc, NoLock, Preserve)
        {
            PD64,   8
        }

        Method (DSPI, 0, NotSerialized)
        {
            INTA (0x1F)
            INTB (0x1F)
            INTC (0x1F)
            INTD (0x1F)
            Local1 = PD64 /* \_SB_.PD64 */
            PIRE = 0x1F
            PIRF = 0x1F
            PIRG = 0x1F
            PIRH = 0x1F
        }

        Method (INTA, 1, NotSerialized)
        {
            PIRA = Arg0
            HDAD = Arg0
        }

        Method (INTB, 1, NotSerialized)
        {
            PIRB = Arg0
        }

        Method (INTC, 1, NotSerialized)
        {
            PIRC = Arg0
            USB1 = Arg0
            USB3 = Arg0
        }

        Method (INTD, 1, NotSerialized)
        {
            PIRD = Arg0
            SATA = Arg0
        }

        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Name (IPRA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRB, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRC, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Name (IPRD, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {5,10,11}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRA)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSA) /* \_SB_.PRSA */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTA (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRA) /* \_SB_.PIRA */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTA (Local0)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRB)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSB) /* \_SB_.PRSB */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTB (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRB) /* \_SB_.PIRB */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTB (Local0)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRC)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSC) /* \_SB_.PRSC */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTC (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRC) /* \_SB_.PIRC */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTC (Local0)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRD)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSD) /* \_SB_.PRSD */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTD (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRD) /* \_SB_.PIRD */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                INTD (Local0)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRE)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSE) /* \_SB_.PRSE */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRE) /* \_SB_.PIRE */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (PIRE, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRF)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSF) /* \_SB_.PRSF */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRF) /* \_SB_.PIRF */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRG)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSG) /* \_SB_.PRSG */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRG) /* \_SB_.PIRG */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (PIRH)
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRSH) /* \_SB_.PRSH */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRH) /* \_SB_.PIRH */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }
    }

    Name (OSTB, Ones)
    Name (TPOS, Zero)
    Name (LINX, Zero)
    Name (OSSP, Zero)
    Method (SEQL, 2, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Local1 = SizeOf (Arg1)
        If ((Local0 != Local1))
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0){})
        BUF0 = Arg0
        Name (BUF1, Buffer (Local0){})
        BUF1 = Arg1
        Local2 = Zero
        While ((Local2 < Local0))
        {
            Local3 = DerefOf (BUF0 [Local2])
            Local4 = DerefOf (BUF1 [Local2])
            If ((Local3 != Local4))
            {
                Return (Zero)
            }

            Local2++
        }

        Return (One)
    }

    Method (OSTP, 0, NotSerialized)
    {
        If ((OSTB == Ones))
        {
            If (CondRefOf (\_OSI, Local0))
            {
                OSTB = Zero
                TPOS = Zero
                If (_OSI ("Windows 2001"))
                {
                    OSTB = 0x08
                    TPOS = 0x08
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSTB = 0x20
                    TPOS = 0x20
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSTB = 0x10
                    TPOS = 0x10
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSTB = 0x11
                    TPOS = 0x11
                }

                If (_OSI ("Windows 2001 SP3"))
                {
                    OSTB = 0x12
                    TPOS = 0x12
                }

                If (_OSI ("Windows 2006"))
                {
                    OSTB = 0x40
                    TPOS = 0x40
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    OSTB = 0x41
                    TPOS = 0x41
                    OSSP = One
                }

                If (_OSI ("Windows 2009"))
                {
                    OSSP = One
                    OSTB = 0x50
                    TPOS = 0x50
                }

                If (_OSI ("Windows 2012"))
                {
                    OSSP = One
                    OSTB = 0x60
                    TPOS = 0x60
                }

                If (_OSI ("Windows 2013"))
                {
                    OSSP = One
                    OSTB = 0x61
                    TPOS = 0x61
                }

                If (_OSI ("Windows 2015"))
                {
                    OSSP = One
                    OSTB = 0x70
                    TPOS = 0x70
                }

                If (_OSI ("Linux"))
                {
                    LINX = One
                    OSTB = 0x80
                    TPOS = 0x80
                }
            }
            ElseIf (CondRefOf (\_OS, Local0))
            {
                If (SEQL (_OS, "Microsoft Windows"))
                {
                    OSTB = One
                    TPOS = One
                }
                ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                {
                    OSTB = 0x02
                    TPOS = 0x02
                }
                ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                {
                    OSTB = 0x04
                    TPOS = 0x04
                }
                Else
                {
                    OSTB = Zero
                    TPOS = Zero
                }
            }
            Else
            {
                OSTB = Zero
                TPOS = Zero
            }
        }

        Return (OSTB) /* \OSTB */
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If ((PICM != Zero))
            {
                DSPI ()
                NAPE ()
            }

            OSTP ()
            OSFL ()
        }
    }

    OperationRegion (DBGB, SystemIO, 0x80, One)
    Field (DBGB, ByteAcc, NoLock, Preserve)
    {
        P80B,   8
    }

    OperationRegion (DBGW, SystemIO, 0x80, 0x02)
    Field (DBGW, WordAcc, NoLock, Preserve)
    {
        P80W,   16
    }

    OperationRegion (DBGD, SystemIO, 0x80, 0x04)
    Field (DBGD, DWordAcc, NoLock, Preserve)
    {
        P80D,   32
    }

    Name (TSOS, 0x75)
    If (CondRefOf (\_OSI))
    {
        If (_OSI ("Windows 2009"))
        {
            TSOS = 0x50
        }

        If (_OSI ("Windows 2015"))
        {
            TSOS = 0x70
        }
    }

    Scope (_SB)
    {
        OperationRegion (SMIC, SystemMemory, 0xFED80000, 0x00800000)
        Field (SMIC, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36A), 
            SMIB,   8
        }

        OperationRegion (SSMI, SystemIO, SMIB, 0x02)
        Field (SSMI, AnyAcc, NoLock, Preserve)
        {
            SMIW,   16
        }

        OperationRegion (ECMC, SystemIO, 0x72, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            ECMI,   8, 
            ECMD,   8
        }

        IndexField (ECMI, ECMD, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            FRTB,   32
        }

        OperationRegion (FRTP, SystemMemory, FRTB, 0x0100)
        Field (FRTP, AnyAcc, NoLock, Preserve)
        {
            PEBA,   32, 
            SPIE,   1, 
            P80E,   1, 
                ,   2, 
            NI2C,   1, 
            IC0E,   1, 
            IC1E,   1, 
            IC2E,   1, 
            IC3E,   1, 
            IC4E,   1, 
            IC5E,   1, 
            UT0E,   1, 
            UT1E,   1, 
                ,   1, 
                ,   1, 
            ST_E,   1, 
            UT2E,   1, 
                ,   1, 
            EMMD,   2, 
                ,   3, 
            XHCE,   1, 
                ,   1, 
                ,   1, 
            UT3E,   1, 
            ESPI,   1, 
            EMME,   1, 
            Offset (0x08), 
            PCEF,   1, 
                ,   4, 
            IC0D,   1, 
            IC1D,   1, 
            IC2D,   1, 
            IC3D,   1, 
            IC4D,   1, 
            IC5D,   1, 
            UT0D,   1, 
            UT1D,   1, 
                ,   1, 
                ,   1, 
            ST_D,   1, 
            UT2D,   1, 
                ,   1, 
            EHCD,   1, 
                ,   4, 
            XHCD,   1, 
            SD_D,   1, 
                ,   1, 
            UT3D,   1, 
                ,   1, 
            EMD3,   1, 
                ,   2, 
            S03D,   1, 
            FW00,   16, 
            FW01,   32, 
            FW02,   16, 
            FW03,   32, 
            SDS0,   8, 
            SDS1,   8, 
            CZFG,   1, 
            Offset (0x20), 
            SD10,   32, 
            EH10,   32, 
            XH10,   32, 
            STBA,   32
        }

        OperationRegion (FCFG, SystemMemory, PEBA, 0x01000000)
        Field (FCFG, DWordAcc, NoLock, Preserve)
        {
            Offset (0xA3044), 
            IPDE,   32, 
            IMPE,   32, 
            Offset (0xA306C), 
            RAR2,   32, 
            Offset (0xA3078), 
                ,   2, 
            LDQ0,   1, 
            Offset (0xA30CB), 
                ,   7, 
            AUSS,   1, 
            Offset (0xA30D0), 
                ,   13, 
            LCLK,   2
        }

        OperationRegion (IOMX, SystemMemory, 0xFED80D00, 0x0100)
        Field (IOMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0x15), 
            IM15,   8, 
            IM16,   8, 
            IM17,   8, 
            Offset (0x1F), 
            IM1F,   8, 
            IM20,   8, 
            Offset (0x44), 
            IM44,   8, 
            Offset (0x46), 
            IM46,   8, 
            Offset (0x4A), 
            IM4A,   8, 
            IM4B,   8, 
            Offset (0x57), 
            IM57,   8, 
            IM58,   8, 
            Offset (0x68), 
            IM68,   8, 
            IM69,   8, 
            IM6A,   8, 
            IM6B,   8, 
            Offset (0x6D), 
            IM6D,   8
        }

        OperationRegion (FMIS, SystemMemory, 0xFED80E00, 0x0100)
        Field (FMIS, AnyAcc, NoLock, Preserve)
        {
            Offset (0x40), 
                ,   13, 
            I24M,   1
        }

        OperationRegion (FGIO, SystemMemory, 0xFED81500, 0x0300)
        Field (FGIO, AnyAcc, NoLock, Preserve)
        {
            Offset (0xA8), 
                ,   22, 
            O042,   1, 
            Offset (0x164), 
                ,   22, 
            O089,   1
        }

        OperationRegion (FACR, SystemMemory, 0xFED81E00, 0x0100)
        Field (FACR, AnyAcc, NoLock, Preserve)
        {
            Offset (0x62), 
            AMTD,   2, 
            Offset (0x80), 
                ,   28, 
            RD28,   1, 
                ,   1, 
            RQTY,   1, 
            Offset (0x84), 
                ,   28, 
            SD28,   1, 
                ,   1, 
            Offset (0xA0), 
            PG1A,   1
        }

        OperationRegion (EMMX, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0xD0), 
                ,   17, 
            FC18,   1, 
            FC33,   1, 
                ,   7, 
            CD_T,   1, 
            WP_T,   1
        }

        OperationRegion (EMMB, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMB, AnyAcc, NoLock, Preserve)
        {
            Offset (0xA4), 
            E0A4,   32, 
            E0A8,   32, 
            Offset (0xB0), 
            E0B0,   32, 
            Offset (0xD0), 
            E0D0,   32, 
            Offset (0x116), 
            E116,   32
        }

        OperationRegion (SPIM, SystemMemory, 0xFEC10000, 0x0100)
        Field (SPIM, AnyAcc, NoLock, Preserve)
        {
            Offset (0x1D), 
            ASCE,   2, 
            Offset (0x22), 
            SSSC,   16, 
            Offset (0xFC), 
            STRN,   1, 
                ,   2, 
            BOWS,   1, 
            DOWS,   1
        }

        Mutex (ASSM, 0x00)
        Name (SVBF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        CreateDWordField (SVBF, Zero, S0A4)
        CreateDWordField (SVBF, 0x04, S0A8)
        CreateDWordField (SVBF, 0x08, S0B0)
        CreateDWordField (SVBF, 0x0C, S0D0)
        CreateDWordField (SVBF, 0x10, S116)
        CreateWordField (SVBF, 0x14, RG22)
        CreateDWordField (SVBF, 0x18, SAR2)
        Method (SECR, 0, Serialized)
        {
            S116 = E116 /* \_SB_.E116 */
            RQTY = Zero
            RD28 = One
            Local0 = SD28 /* \_SB_.SD28 */
            While (Local0)
            {
                Local0 = SD28 /* \_SB_.SD28 */
            }
        }

        Method (RECR, 0, Serialized)
        {
            E116 = S116 /* \_SB_.S116 */
        }

        OperationRegion (LUIE, SystemMemory, 0xFEDC0020, 0x04)
        Field (LUIE, AnyAcc, NoLock, Preserve)
        {
            IER0,   1, 
            IER1,   1, 
            IER2,   1, 
            IER3,   1, 
            UOL0,   1, 
            UOL1,   1, 
            UOL2,   1, 
            UOL3,   1, 
            WUR0,   2, 
            WUR1,   2, 
            WUR2,   2, 
            WUR3,   2
        }

        Method (FRUI, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Return (IUA0) /* \_SB_.IUA0 */
            }

            If ((Arg0 == One))
            {
                Return (IUA1) /* \_SB_.IUA1 */
            }

            If ((Arg0 == 0x02))
            {
                Return (IUA2) /* \_SB_.IUA2 */
            }

            If ((Arg0 == 0x03))
            {
                Return (IUA3) /* \_SB_.IUA3 */
            }

            Return (Zero)
        }

        Method (OP80, 1, Serialized)
        {
            If (P80E)
            {
                P80D = Arg0
            }
        }

        Method (SRAD, 2, Serialized)
        {
            Local1 = (Arg1 << 0x05)
            Local1 += 0xB000AF80
            Local1 += Arg0
            OP80 (Local1)
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            ADIS = One
            ADSR = Zero
            Stall (Arg1)
            ADSR = One
            ADIS = Zero
            Stall (Arg1)
        }

        Method (DSAD, 2, Serialized)
        {
            Local1 = (Arg1 << 0x05)
            Local1 += 0xB000AF80
            Local1 += Arg0
            OP80 (Local1)
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg1 != ADTD))
            {
                If ((Arg1 == Zero))
                {
                    ADTD = Zero
                    ADPD = One
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != Zero))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }

                    ADTD = 0x03
                }
            }
        }

        Method (HSAD, 2, Serialized)
        {
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg1 != ADTD))
            {
                If ((Arg1 == Zero))
                {
                    ADTD = Zero
                    ADPD = One
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    RQTY = One
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (!Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    RQTY = Zero
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }

                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != Zero))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    ADTD = 0x03
                }
            }
        }

        OperationRegion (FPIC, SystemIO, 0x0C00, 0x02)
        Field (FPIC, AnyAcc, NoLock, Preserve)
        {
            FPII,   8, 
            FPID,   8
        }

        IndexField (FPII, FPID, ByteAcc, NoLock, Preserve)
        {
            Offset (0xF4), 
            IUA0,   8, 
            IUA1,   8, 
            Offset (0xF8), 
            IUA2,   8, 
            IUA3,   8
        }

        Device (SPI1)
        {
            Name (_HID, "AMDI0060")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (SPIE)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEC10000,         // Address Base
                        0x00000100,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.SPI1._CRS.RBUF */
            }

            Method (ASSC, 2, Serialized)
            {
                Acquire (ASSM, 0xFFFF)
                Local0 = Arg1
                Switch (ToInteger (Arg0))
                {
                    Case (0x03)
                    {
                        DOWS = One
                        STRN = One
                        While ((BOWS && STRN))
                        {
                            If (Arg1)
                            {
                                Stall (One)
                                Local0 -= One
                                If ((Local0 == Zero))
                                {
                                    Break
                                }
                            }
                        }

                        SAR2 = RAR2 /* \_SB_.RAR2 */
                        RAR2 = Zero
                        ASCE = 0x02
                        RG22 = SSSC /* \_SB_.SSSC */
                    }
                    Case (0x04)
                    {
                        SSSC = RG22 /* \_SB_.RG22 */
                        ASCE = Zero
                        RAR2 = SAR2 /* \_SB_.SAR2 */
                        Local0 = One
                        DOWS = Zero
                    }

                }

                Release (ASSM)
                Return (Local0)
            }
        }

        Device (GPIO)
        {
            Name (_HID, "AMDI0030")  // _HID: Hardware ID
            Name (_CID, "AMDI0030")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000007,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED81500,         // Address Base
                        0x00000400,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.GPIO._CRS.RBUF */
            }

            Method (RST, 0, NotSerialized)
            {
                Notify (GPIO, Zero) // Bus Check
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR0)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {3}
                Memory32Fixed (ReadWrite,
                    0xFEDC9000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDC7000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT0E == One))
                    {
                        If (UOL0)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT0D && UT0E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT0D && UT0E))
                {
                    DSAD (0x0B, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT0D && UT0E))
                {
                    DSAD (0x0B, 0x03)
                }
            }
        }

        Device (FUR1)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {4}
                Memory32Fixed (ReadWrite,
                    0xFEDCA000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDC8000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT1E == One))
                    {
                        If (UOL1)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT1D && UT1E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT1D && UT1E))
                {
                    DSAD (0x0C, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT1D && UT1E))
                {
                    DSAD (0x0C, 0x03)
                }
            }
        }

        Device (FUR2)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {15}
                Memory32Fixed (ReadWrite,
                    0xFEDCE000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDCC000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT2E == One))
                    {
                        If (UOL2)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT2D && UT2E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT2D && UT2E))
                {
                    DSAD (0x10, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT2D && UT2E))
                {
                    DSAD (0x10, 0x03)
                }
            }
        }

        Device (FUR3)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {5}
                Memory32Fixed (ReadWrite,
                    0xFEDCF000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDCD000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT3E == One))
                    {
                        If (UOL3)
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((UT3D && UT3E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((UT3D && UT3E))
                {
                    DSAD (0x1A, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((UT3D && UT3E))
                {
                    DSAD (0x1A, 0x03)
                }
            }
        }

        Device (I2CA)
        {
            Name (_HID, "AMDI0011")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_ADR, Zero)  // _ADR: Address
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {10}
                Memory32Fixed (ReadWrite,
                    0xFEDC2000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                ^PCI0.GP17.MP2C
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC0E == One))
                    {
                        If ((NI2C == Zero))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x05, 0xC8)
            }
        }

        Device (I2CB)
        {
            Name (_HID, "AMDI0011")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_ADR, One)  // _ADR: Address
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {11}
                Memory32Fixed (ReadWrite,
                    0xFEDC3000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                ^PCI0.GP17.MP2C
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC1E == One))
                    {
                        If ((NI2C == Zero))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x06, 0xC8)
            }
        }

        Device (I2CC)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {14}
                Memory32Fixed (ReadWrite,
                    0xFEDC4000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC2E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x07, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((IC2D && IC2E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((IC2D && IC2E))
                {
                    DSAD (0x07, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC2D && IC2E))
                {
                    DSAD (0x07, 0x03)
                }
            }
        }

        Device (I2CD)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {6}
                Memory32Fixed (ReadWrite,
                    0xFEDC5000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC3E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x08, 0xC8)
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((IC3D && IC3E))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((IC3D && IC3E))
                {
                    DSAD (0x08, Zero)
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((IC3D && IC3E))
                {
                    DSAD (0x08, 0x03)
                }
            }
        }

        Device (I2CE)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {10}
                Memory32Fixed (ReadWrite,
                    0xFEDC2000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC0E == One))
                    {
                        If ((NI2C == One))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x09, 0xC8)
            }
        }

        Device (I2CF)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {11}
                Memory32Fixed (ReadWrite,
                    0xFEDC3000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC1E == One))
                    {
                        If ((NI2C == One))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x0A, 0xC8)
            }
        }

        Method (EPIN, 0, NotSerialized)
        {
            IPDE = Zero
            IMPE = 0xFF00
            IM15 = One
            IM16 = One
            IM20 = One
            IM44 = One
            IM46 = One
            IM68 = One
            IM69 = One
            IM6A = One
            IM6B = One
            IM1F = One
            If ((EMMD != One))
            {
                IM4A = One
                IM58 = One
                IM4B = One
                IM57 = One
                IM6D = One
            }

            SECR ()
        }

        Name (NCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
        })
        Name (DCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
            GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x0BB8,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
            GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
        })
        Name (ECRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
            GpioInt (Edge, ActiveLow, SharedAndWake, PullUp, 0x0BB8,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
        })
        Name (AHID, "AMDI0040")
        Name (ACID, "AMDI0040")
        Name (MHID, "AMDI0041")
        Name (MCID, "AMDI0041")
        Name (SHID, 0x400DD041)
        Name (SCID, "PCI\\CC_080501")
        Device (EMM0)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If ((EMMD == Zero))
                {
                    Return (AHID) /* \_SB_.AHID */
                }

                If ((EMMD == One))
                {
                    Return (SHID) /* \_SB_.SHID */
                }

                If ((EMMD == 0x02))
                {
                    Return (MHID) /* \_SB_.MHID */
                }

                Return (Zero)
            }

            Method (_CID, 0, Serialized)  // _CID: Compatible ID
            {
                If ((EMMD == Zero))
                {
                    Return (ACID) /* \_SB_.ACID */
                }

                If ((EMMD == One))
                {
                    Return (SCID) /* \_SB_.SCID */
                }

                If ((EMMD == 0x02))
                {
                    Return (MCID) /* \_SB_.MCID */
                }

                Return (Zero)
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (EMD3)
                {
                    If ((EMMD == One))
                    {
                        Return (DCRS) /* \_SB_.DCRS */
                    }

                    Return (ECRS) /* \_SB_.ECRS */
                }
                Else
                {
                    Return (NCRS) /* \_SB_.NCRS */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If (EMME)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (EMME)
                {
                    EPIN ()
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((EMD3 && EMME))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((EMD3 && EMME))
                {
                    HSAD (0x1C, Zero)
                    RECR ()
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((EMD3 && EMME))
                {
                    HSAD (0x1C, 0x03)
                }
            }

            Device (CARD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    If ((EMMD == One))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (UAR1)
        {
            Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM4")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((IER0 && (AMTD != 0x03)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02E8,             // Range Minimum
                        0x02E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y18)
                    IRQNoFlags (_Y19)
                        {3}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR1._CRS._Y18._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR1._CRS._Y18._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR1._CRS._Y19._INT, IRQL)  // _INT: Interrupts
                IRQL = (One << FRUI (WUR0))
                Return (BUF0) /* \_SB_.PCI0.UAR1._CRS.BUF0 */
            }
        }

        Device (UAR2)
        {
            Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM2")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((IER1 && (AMTD != 0x03)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02F8,             // Range Minimum
                        0x02F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y1A)
                    IRQNoFlags (_Y1B)
                        {4}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR2._CRS._Y1A._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR2._CRS._Y1A._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR2._CRS._Y1B._INT, IRQL)  // _INT: Interrupts
                IRQL = (One << FRUI (WUR1))
                Return (BUF0) /* \_SB_.PCI0.UAR2._CRS.BUF0 */
            }
        }

        Device (UAR3)
        {
            Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM3")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((IER2 && (AMTD != 0x03)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03E8,             // Range Minimum
                        0x03E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y1C)
                    IRQNoFlags (_Y1D)
                        {3}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR3._CRS._Y1C._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR3._CRS._Y1C._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR3._CRS._Y1D._INT, IRQL)  // _INT: Interrupts
                IRQL = (One << FRUI (WUR2))
                Return (BUF0) /* \_SB_.PCI0.UAR3._CRS.BUF0 */
            }
        }

        Device (UAR4)
        {
            Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_DDN, "COM1")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((IER3 && (AMTD != 0x03)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03F8,             // Range Minimum
                        0x03F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y1E)
                    IRQNoFlags (_Y1F)
                        {4}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR4._CRS._Y1E._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR4._CRS._Y1E._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR4._CRS._Y1F._INT, IRQL)  // _INT: Interrupts
                IRQL = (One << FRUI (WUR3))
                Return (BUF0) /* \_SB_.PCI0.UAR4._CRS.BUF0 */
            }
        }
    }

    Scope (_SB.PCI0.GP17.VGA)
    {
        Device (CAMF)
        {
            Name (_ADR, 0x1000)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((O042 == One))
                {
                    Return (0x0F)
                }

                Return (0x0B)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                O042 = One
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                O042 = Zero
            }
        }

        Device (CAMR)
        {
            Name (_ADR, 0x2000)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((O089 == One))
                {
                    Return (0x0F)
                }

                Return (0x0B)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                O089 = One
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                O089 = Zero
            }
        }

        Method (RCPU, 0, NotSerialized)
        {
            O089 = One
        }

        Method (RCPD, 0, NotSerialized)
        {
            O089 = Zero
        }

        Method (FCPU, 0, NotSerialized)
        {
            O042 = One
        }

        Method (FCPD, 0, NotSerialized)
        {
            O042 = Zero
        }

        Method (ICLE, 0, NotSerialized)
        {
            I24M = Zero
        }

        Method (ICLD, 0, NotSerialized)
        {
            I24M = One
        }
    }

    Device (HPET)
    {
        Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((HPEN == One))
            {
                If ((OSVR >= 0x0C))
                {
                    Return (0x0F)
                }

                HPEN = Zero
                Return (One)
            }

            Return (One)
        }

        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            Name (BUF0, ResourceTemplate ()
            {
                IRQNoFlags ()
                    {0}
                IRQNoFlags ()
                    {8}
                Memory32Fixed (ReadOnly,
                    0xFED00000,         // Address Base
                    0x00000400,         // Address Length
                    )
            })
            Return (BUF0) /* \HPET._CRS.BUF0 */
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PS2K)
        {
            Name (_HID, "MSFT0001")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0060,             // Range Minimum
                    0x0060,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0064,             // Range Minimum
                    0x0064,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                IRQNoFlags ()
                    {1}
            })
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                StartDependentFn (0x00, 0x00)
                {
                    IO (Decode16,
                        0x0060,             // Range Minimum
                        0x0060,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0064,             // Range Minimum
                        0x0064,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                    IRQNoFlags ()
                        {1}
                }
                EndDependentFn ()
            })
            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                KBFG = Arg0
            }
        }

        Scope (\)
        {
            Name (KBFG, One)
        }
    }

    Scope (_SB.PCI0.GP17.XHC0)
    {
        Method (GUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            PCKG [Zero] = Arg0
            Return (PCKG) /* \_SB_.PCI0.GP17.XHC0.GUPC.PCKG */
        }

        Method (GPL1, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x20, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   //  .......
                }
            })
            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
            VISI = Arg0
            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
            GPOS = Arg1
            Return (PCKG) /* \_SB_.PCI0.GP17.XHC0.GPL1.PCKG */
        }

        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (Zero))
                }

                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x11, 0x0C, 0x80, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Name (PLD2, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x11, 0x0C, 0x80, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (Zero, One))
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x0C, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Name (PLD2, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x0C, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (One, 0x02))
                }
            }

            Device (PRT3)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x1C, 0x80, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Name (PLD2, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x1C, 0x80, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (One, 0x03))
                }
            }

            Device (PRT4)
            {
                Name (_ADR, 0x04)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x1D, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Name (PLD2, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x10, 0x0C, 0x00, 0x03, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (Zero, 0x04))
                }
            }

            Device (PRT5)
            {
                Name (_ADR, 0x05)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (Zero))
                }

                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x11, 0x0C, 0x80, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Name (PLD2, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x11, 0x0C, 0x80, 0x02, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (Zero, 0x05))
                }
            }

            Device (PRT6)
            {
                Name (_ADR, 0x06)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0xFF, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x0C, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Name (PLD2, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x10, 0x0C, 0x00, 0x03, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (One, 0x02))
                }
            }

            Device (PRT7)
            {
                Name (_ADR, 0x07)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x1C, 0x80, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Name (PLD2, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x11, 0x0C, 0x80, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (One, 0x03))
                }
            }

            Device (PRT8)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (Zero))
                }

                Name (PLD1, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x1D, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Name (PLD2, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x0C, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (Zero, 0x06))
                }
            }

            Device (PRT9)
            {
                Name (_ADR, 0x09)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (RV2I)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (Zero))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (Zero, 0x07))
                }
            }

            Device (PRTA)
            {
                Name (_ADR, 0x0A)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (RV2I)
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (Zero))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (Zero, 0x08))
                }
            }
        }
    }

    Scope (_SB.PCI0.GP17.XHC1)
    {
        Method (GUPC, 1, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            PCKG [Zero] = Arg0
            Return (PCKG) /* \_SB_.PCI0.GP17.XHC1.GUPC.PCKG */
        }

        Method (GPL1, 2, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x20, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   //  .......
                }
            })
            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
            VISI = Arg0
            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
            GPOS = Arg1
            Return (PCKG) /* \_SB_.PCI0.GP17.XHC1.GPL1.PCKG */
        }

        Device (RHUB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (PRT1)
            {
                Name (_ADR, One)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (Zero, 0x09))
                }

                Device (CAM0)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        ToPLD (
                            PLD_Revision           = 0x2,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x1,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "FRONT",
                            PLD_VerticalPosition   = "LOWER",
                            PLD_HorizontalPosition = "RIGHT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0,
                            PLD_VerticalOffset     = 0xFFFF,
                            PLD_HorizontalOffset   = 0xFFFF)

                    })
                }
            }

            Device (PRT2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (One))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (One, 0x0A))
                }
            }

            Device (PRT3)
            {
                Name (_ADR, 0x03)  // _ADR: Address
                Name (UPC1, Package (0x04)
                {
                    0xFF, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Name (UPC2, Package (0x04)
                {
                    Zero, 
                    0x03, 
                    Zero, 
                    Zero
                })
                Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                {
                    Return (GUPC (Zero))
                }

                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (GPL1 (Zero, 0x0B))
                }
            }
        }
    }

    Scope (_SB.I2CA)
    {
        Device (WTP1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0001")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x007F, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.WTP1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MTP1)
        {
            Name (_HID, "STK0001")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB_.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.MTP1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WTP2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0002")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.WTP2._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MTP2)
        {
            Name (_HID, "STK0002")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB_.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.MTP2._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WTP3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0003")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.WTP3._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MTP3)
        {
            Name (_HID, "STK0003")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB_.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.MTP3._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WTP4)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0004")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.WTP4._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MTP4)
        {
            Name (_HID, "STK0004")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0014, ControllerInitiated, 0x000222E0,
                        AddressingMode7Bit, "\\_SB_.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.MTP4._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MTP5)
        {
            Name (_HID, "STK0005")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00053020,
                        AddressingMode7Bit, "\\_SB_.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CA.MTP5._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.I2CB)
    {
        Device (WT21)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00012")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF2")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x007F, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.WT21._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT21)
        {
            Name (_HID, "STK00012")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB_.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.MT21._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT22)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00022")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF2")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.WT22._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT22)
        {
            Name (_HID, "STK00022")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB_.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.MT22._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT23)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00032")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF2")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.WT23._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT23)
        {
            Name (_HID, "STK00032")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB_.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.MT23._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT24)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00042")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF2")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.WT24._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT24)
        {
            Name (_HID, "STK00042")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0014, ControllerInitiated, 0x000222E0,
                        AddressingMode7Bit, "\\_SB_.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.MT24._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT25)
        {
            Name (_HID, "STK00052")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00053020,
                        AddressingMode7Bit, "\\_SB_.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CB.MT25._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.I2CC)
    {
        Device (WT31)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00013")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF3")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x007F, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.WT31._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT31)
        {
            Name (_HID, "STK00013")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB_.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.MT31._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT32)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00023")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF3")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.WT32._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT32)
        {
            Name (_HID, "STK00023")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB_.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.MT32._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT33)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00033")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF3")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.WT33._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT33)
        {
            Name (_HID, "STK00033")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB_.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.MT33._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT34)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00043")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF3")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.WT34._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT34)
        {
            Name (_HID, "STK00043")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0014, ControllerInitiated, 0x000222E0,
                        AddressingMode7Bit, "\\_SB_.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.MT34._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT35)
        {
            Name (_HID, "STK00053")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00053020,
                        AddressingMode7Bit, "\\_SB_.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CC.MT35._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.I2CD)
    {
        Device (WT41)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00014")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF4")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x007F, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.WT41._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT41)
        {
            Name (_HID, "STK00014")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB_.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.MT41._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT42)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00024")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF4")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.WT42._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT42)
        {
            Name (_HID, "STK00024")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB_.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.MT42._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT43)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00034")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF4")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.WT43._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT43)
        {
            Name (_HID, "STK00034")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB_.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.MT43._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (WT44)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK00044")  // _HID: Hardware ID
            Name (_CID, "SPBTestKMDF4")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.WT44._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT44)
        {
            Name (_HID, "STK00044")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0014, ControllerInitiated, 0x000222E0,
                        AddressingMode7Bit, "\\_SB_.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.MT44._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (MT45)
        {
            Name (_HID, "STK00054")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00053020,
                        AddressingMode7Bit, "\\_SB_.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2CD.MT45._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((MWTT == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.I2CA)
    {
        Device (NFC1)
        {
            Name (_HID, EisaId ("NXP8013"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0029, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0045
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0089
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x008A
                        }
                })
                Return (RBUF) /* \_SB_.I2CA.NFC1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (NFCS == One)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.I2CB)
    {
        Device (NFC1)
        {
            Name (_HID, EisaId ("NXP8013"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0029, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0045
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0089
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x008A
                        }
                })
                Return (RBUF) /* \_SB_.I2CB.NFC1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (NFCS == 0x02)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.I2CC)
    {
        Device (NFC1)
        {
            Name (_HID, EisaId ("NXP8013"))  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0029, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0045
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0089
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x008A
                        }
                })
                Return (RBUF) /* \_SB_.I2CC.NFC1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (NFCS == 0x03)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.I2CD)
    {
        Device (NFC1)
        {
            Name (_HID, EisaId ("NXP8013"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0029, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0045
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0089
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x008A
                        }
                })
                Return (RBUF) /* \_SB_.I2CD.NFC1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (NFCS == 0x04)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (_SB.I2CA)
    {
        Device (TPNL)
        {
            Name (_HID, EisaId ("PNP0C50") /* HID Protocol Device (I2C bus) */)  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x004A, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Shared, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000C
                        }
                })
                Return (RBUF) /* \_SB_.I2CA.TPNL._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPN == One)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (Zero)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        Device (ELAN)
        {
            Name (_HID, "04F31234")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000C
                        }
                })
                Return (RBUF) /* \_SB_.I2CA.ELAN._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPN == 0x05)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (One)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_SB.I2CB)
    {
        Device (TPNL)
        {
            Name (_HID, EisaId ("PNP0C50") /* HID Protocol Device (I2C bus) */)  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x004A, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Shared, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000C
                        }
                })
                Return (RBUF) /* \_SB_.I2CB.TPNL._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPN == 0x02)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (Zero)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        Device (ELAN)
        {
            Name (_HID, "04F31234")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000C
                        }
                })
                Return (RBUF) /* \_SB_.I2CB.ELAN._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPN == 0x06)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (One)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_SB.I2CC)
    {
        Device (TPNL)
        {
            Name (_HID, EisaId ("PNP0C50") /* HID Protocol Device (I2C bus) */)  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x004A, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Shared, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000C
                        }
                })
                Return (RBUF) /* \_SB_.I2CC.TPNL._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPN == 0x03)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (Zero)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        Device (ELAN)
        {
            Name (_HID, "04F31234")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000C
                        }
                })
                Return (RBUF) /* \_SB_.I2CC.ELAN._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPN == 0x07)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (One)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_SB.I2CD)
    {
        Device (TPNL)
        {
            Name (_HID, EisaId ("PNP0C50") /* HID Protocol Device (I2C bus) */)  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x004A, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Shared, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000C
                        }
                })
                Return (RBUF) /* \_SB_.I2CD.TPNL._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPN == 0x04)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (Zero)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }

        Device (ELAN)
        {
            Name (_HID, "04F31234")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x000C
                        }
                })
                Return (RBUF) /* \_SB_.I2CD.ELAN._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPN == 0x08)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (One)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_SB.I2CA)
    {
        Device (TPDD)
        {
            Name (_HID, EisaId ("PNP0C50") /* HID Protocol Device (I2C bus) */)  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Return (RBUF) /* \_SB_.I2CA.TPDD._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPD == One)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (0x20)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_SB.I2CB)
    {
        Device (TPDD)
        {
            Name (_HID, EisaId ("PNP0C50") /* HID Protocol Device (I2C bus) */)  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Return (RBUF) /* \_SB_.I2CB.TPDD._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPD == 0x02)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (0x20)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_SB.I2CC)
    {
        Device (TPDD)
        {
            Name (_HID, EisaId ("PNP0C50") /* HID Protocol Device (I2C bus) */)  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Return (RBUF) /* \_SB_.I2CC.TPDD._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPD == 0x03)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (0x20)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_SB.I2CD)
    {
        Device (TPDD)
        {
            Name (_HID, EisaId ("PNP0C50") /* HID Protocol Device (I2C bus) */)  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Return (RBUF) /* \_SB_.I2CD.TPDD._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (THPD == 0x04)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
                If (Arg0){}
                Else
                {
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Switch (ToInteger (Arg1))
                            {
                                Case (One)
                                {
                                    Return (Buffer (One)
                                    {
                                         0x03                                             // .
                                    })
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                            }
                        }
                        Case (One)
                        {
                            Return (0x20)
                        }
                        Default
                        {
                            Return (Zero)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
        }
    }

    Scope (_SB.I2CA)
    {
        Device (CMSR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "CPLM3218" /* Capella Micro CM3218x Ambient Light Sensor */)  // _HID: Hardware ID
            Name (_CID, "CPLM3218" /* Capella Micro CM3218x Ambient Light Sensor */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2CA
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (ALST == One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0018
                        }
                })
                Return (SBUF) /* \_SB_.I2CA.CMSR._CRS.SBUF */
            }

            Name (CPM0, Package (0x07)
            {
                0x7DB5, 
                One, 
                0x0F, 
                0x0840, 
                0x013B, 
                0x011D, 
                Zero
            })
            Name (CPM1, Package (0x03)
            {
                0x0898, 
                0x000186A0, 
                0x000186A0
            })
            Name (CPM2, Package (0x06)
            {
                0x61A8, 
                0x000186A0, 
                0x000186A0, 
                0x000186A0, 
                0x00030D40, 
                0x00186A00
            })
            Name (CPM3, Package (0x04)
            {
                Package (0x02)
                {
                    0x3C, 
                    0x0A
                }, 

                Package (0x02)
                {
                    0x64, 
                    0x0B
                }, 

                Package (0x02)
                {
                    0x64, 
                    0x1F40
                }, 

                Package (0x02)
                {
                    0x01F4, 
                    0x1F41
                }
            })
            Name (CPM5, Package (0x07)
            {
                Zero, 
                0x000249F0, 
                0x0190, 
                0x03E8, 
                0x02, 
                0x32, 
                0x05
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("0703c6b6-1cca-4144-9fe7-4654f53a0bd9")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If ((ToInteger (Arg3) == Zero))
                        {
                            Return (CPM0) /* \_SB_.I2CA.CMSR.CPM0 */
                        }

                        If ((ToInteger (Arg3) == One))
                        {
                            Return (CPM1) /* \_SB_.I2CA.CMSR.CPM1 */
                        }

                        If ((ToInteger (Arg3) == 0x02))
                        {
                            Return (CPM2) /* \_SB_.I2CA.CMSR.CPM2 */
                        }

                        If ((ToInteger (Arg3) == 0x03))
                        {
                            Return (CPM3) /* \_SB_.I2CA.CMSR.CPM3 */
                        }

                        If ((ToInteger (Arg3) == 0x05))
                        {
                            Return (CPM5) /* \_SB_.I2CA.CMSR.CPM5 */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (_SB.I2CB)
    {
        Device (CMSR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "CPLM3218" /* Capella Micro CM3218x Ambient Light Sensor */)  // _HID: Hardware ID
            Name (_CID, "CPLM3218" /* Capella Micro CM3218x Ambient Light Sensor */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2CB
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (ALST == 0x02)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CB",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0018
                        }
                })
                Return (SBUF) /* \_SB_.I2CB.CMSR._CRS.SBUF */
            }

            Name (CPM0, Package (0x07)
            {
                0x7DB5, 
                One, 
                0x0F, 
                0x0840, 
                0x013B, 
                0x011D, 
                Zero
            })
            Name (CPM1, Package (0x03)
            {
                0x0898, 
                0x000186A0, 
                0x000186A0
            })
            Name (CPM2, Package (0x06)
            {
                0x61A8, 
                0x000186A0, 
                0x000186A0, 
                0x000186A0, 
                0x00030D40, 
                0x00186A00
            })
            Name (CPM3, Package (0x04)
            {
                Package (0x02)
                {
                    0x3C, 
                    0x0A
                }, 

                Package (0x02)
                {
                    0x64, 
                    0x0B
                }, 

                Package (0x02)
                {
                    0x64, 
                    0x1F40
                }, 

                Package (0x02)
                {
                    0x01F4, 
                    0x1F41
                }
            })
            Name (CPM5, Package (0x07)
            {
                Zero, 
                0x000249F0, 
                0x0190, 
                0x03E8, 
                0x02, 
                0x32, 
                0x05
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("0703c6b6-1cca-4144-9fe7-4654f53a0bd9")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If ((ToInteger (Arg3) == Zero))
                        {
                            Return (CPM0) /* \_SB_.I2CB.CMSR.CPM0 */
                        }

                        If ((ToInteger (Arg3) == One))
                        {
                            Return (CPM1) /* \_SB_.I2CB.CMSR.CPM1 */
                        }

                        If ((ToInteger (Arg3) == 0x02))
                        {
                            Return (CPM2) /* \_SB_.I2CB.CMSR.CPM2 */
                        }

                        If ((ToInteger (Arg3) == 0x03))
                        {
                            Return (CPM3) /* \_SB_.I2CB.CMSR.CPM3 */
                        }

                        If ((ToInteger (Arg3) == 0x05))
                        {
                            Return (CPM5) /* \_SB_.I2CB.CMSR.CPM5 */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (_SB.I2CC)
    {
        Device (CMSR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "CPLM3218" /* Capella Micro CM3218x Ambient Light Sensor */)  // _HID: Hardware ID
            Name (_CID, "CPLM3218" /* Capella Micro CM3218x Ambient Light Sensor */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2CC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (ALST == 0x03)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CC",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0018
                        }
                })
                Return (SBUF) /* \_SB_.I2CC.CMSR._CRS.SBUF */
            }

            Name (CPM0, Package (0x07)
            {
                0x7DB5, 
                One, 
                0x0F, 
                0x0840, 
                0x013B, 
                0x011D, 
                Zero
            })
            Name (CPM1, Package (0x03)
            {
                0x0898, 
                0x000186A0, 
                0x000186A0
            })
            Name (CPM2, Package (0x06)
            {
                0x61A8, 
                0x000186A0, 
                0x000186A0, 
                0x000186A0, 
                0x00030D40, 
                0x00186A00
            })
            Name (CPM3, Package (0x04)
            {
                Package (0x02)
                {
                    0x3C, 
                    0x0A
                }, 

                Package (0x02)
                {
                    0x64, 
                    0x0B
                }, 

                Package (0x02)
                {
                    0x64, 
                    0x1F40
                }, 

                Package (0x02)
                {
                    0x01F4, 
                    0x1F41
                }
            })
            Name (CPM5, Package (0x07)
            {
                Zero, 
                0x000249F0, 
                0x0190, 
                0x03E8, 
                0x02, 
                0x32, 
                0x05
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("0703c6b6-1cca-4144-9fe7-4654f53a0bd9")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If ((ToInteger (Arg3) == Zero))
                        {
                            Return (CPM0) /* \_SB_.I2CC.CMSR.CPM0 */
                        }

                        If ((ToInteger (Arg3) == One))
                        {
                            Return (CPM1) /* \_SB_.I2CC.CMSR.CPM1 */
                        }

                        If ((ToInteger (Arg3) == 0x02))
                        {
                            Return (CPM2) /* \_SB_.I2CC.CMSR.CPM2 */
                        }

                        If ((ToInteger (Arg3) == 0x03))
                        {
                            Return (CPM3) /* \_SB_.I2CC.CMSR.CPM3 */
                        }

                        If ((ToInteger (Arg3) == 0x05))
                        {
                            Return (CPM5) /* \_SB_.I2CC.CMSR.CPM5 */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (_SB.I2CD)
    {
        Device (CMSR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "CPLM3218" /* Capella Micro CM3218x Ambient Light Sensor */)  // _HID: Hardware ID
            Name (_CID, "CPLM3218" /* Capella Micro CM3218x Ambient Light Sensor */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2CD
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPOS >= 0x60) & (ALST == 0x04)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (SBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0018
                        }
                })
                Return (SBUF) /* \_SB_.I2CD.CMSR._CRS.SBUF */
            }

            Name (CPM0, Package (0x07)
            {
                0x7DB5, 
                One, 
                0x0F, 
                0x0840, 
                0x013B, 
                0x011D, 
                Zero
            })
            Name (CPM1, Package (0x03)
            {
                0x0898, 
                0x000186A0, 
                0x000186A0
            })
            Name (CPM2, Package (0x06)
            {
                0x61A8, 
                0x000186A0, 
                0x000186A0, 
                0x000186A0, 
                0x00030D40, 
                0x00186A00
            })
            Name (CPM3, Package (0x04)
            {
                Package (0x02)
                {
                    0x3C, 
                    0x0A
                }, 

                Package (0x02)
                {
                    0x64, 
                    0x0B
                }, 

                Package (0x02)
                {
                    0x64, 
                    0x1F40
                }, 

                Package (0x02)
                {
                    0x01F4, 
                    0x1F41
                }
            })
            Name (CPM5, Package (0x07)
            {
                Zero, 
                0x000249F0, 
                0x0190, 
                0x03E8, 
                0x02, 
                0x32, 
                0x05
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("0703c6b6-1cca-4144-9fe7-4654f53a0bd9")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If ((ToInteger (Arg3) == Zero))
                        {
                            Return (CPM0) /* \_SB_.I2CD.CMSR.CPM0 */
                        }

                        If ((ToInteger (Arg3) == One))
                        {
                            Return (CPM1) /* \_SB_.I2CD.CMSR.CPM1 */
                        }

                        If ((ToInteger (Arg3) == 0x02))
                        {
                            Return (CPM2) /* \_SB_.I2CD.CMSR.CPM2 */
                        }

                        If ((ToInteger (Arg3) == 0x03))
                        {
                            Return (CPM3) /* \_SB_.I2CD.CMSR.CPM3 */
                        }

                        If ((ToInteger (Arg3) == 0x05))
                        {
                            Return (CPM5) /* \_SB_.I2CD.CMSR.CPM5 */
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Device (_SB.TPM)
    {
        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
        {
            If (TCMF)
            {
                Return (0x01013469)
            }
            ElseIf ((TTDP == Zero))
            {
                Return (0x310CD041)
            }
            Else
            {
                Return ("MSFT0101")
            }
        }

        Method (_STR, 0, NotSerialized)  // _STR: Description String
        {
            If ((TTDP == Zero))
            {
                Return (Unicode ("TPM 1.2 Device"))
            }
            Else
            {
                Return (Unicode ("TPM 2.0 Device"))
            }
        }

        Name (_UID, One)  // _UID: Unique ID
        Name (CRST, ResourceTemplate ()
        {
            Memory32Fixed (ReadOnly,
                0x00000000,         // Address Base
                0x00001000,         // Address Length
                _Y20)
            Memory32Fixed (ReadOnly,
                0xFED70000,         // Address Base
                0x00001000,         // Address Length
                _Y21)
        })
        Name (CRSD, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                _Y22)
        })
        Name (CRSI, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0xFED40000,         // Address Base
                0x00005000,         // Address Length
                _Y23)
        })
        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
        {
            If ((AMDT == One))
            {
                CreateDWordField (CRST, \_SB.TPM._Y20._BAS, MTFB)  // _BAS: Base Address
                CreateDWordField (CRST, \_SB.TPM._Y20._LEN, LTFB)  // _LEN: Length
                MTFB = TPMB /* \TPMB */
                LTFB = 0x1000
                CreateDWordField (CRST, \_SB.TPM._Y21._BAS, MTFC)  // _BAS: Base Address
                CreateDWordField (CRST, \_SB.TPM._Y21._LEN, LTFC)  // _LEN: Length
                MTFC = TPMC /* \TPMC */
                LTFC = 0x1000
                Return (CRST) /* \_SB_.TPM_.CRST */
            }
            Else
            {
                If ((DTPT == One))
                {
                    CreateDWordField (CRSD, \_SB.TPM._Y22._BAS, MTFE)  // _BAS: Base Address
                    CreateDWordField (CRSD, \_SB.TPM._Y22._LEN, LTFE)  // _LEN: Length
                    MTFE = 0xFED40000
                    LTFE = 0x5000
                    Return (CRSD) /* \_SB_.TPM_.CRSD */
                }
                ElseIf ((TTPF == One))
                {
                    CreateDWordField (CRSI, \_SB.TPM._Y23._BAS, MTFD)  // _BAS: Base Address
                    CreateDWordField (CRSI, \_SB.TPM._Y23._LEN, LTFD)  // _LEN: Length
                    MTFD = 0xFED40000
                    LTFD = 0x5000
                    Return (CRSI) /* \_SB_.TPM_.CRSI */
                }
                ElseIf ((TTPF == Zero))
                {
                    CreateDWordField (CRST, \_SB.TPM._Y20._BAS, MTFF)  // _BAS: Base Address
                    MTFF = FTPM /* \FTPM */
                    Return (CRST) /* \_SB_.TPM_.CRST */
                }

                MTFE = Zero
                LTFE = Zero
                Return (CRSI) /* \_SB_.TPM_.CRSI */
            }

            Return (CRSI) /* \_SB_.TPM_.CRSI */
        }

        OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x5000)
        Field (TMMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x04), 
            LCST,   32, 
            Offset (0x40), 
            CREQ,   32, 
            CSTS,   32, 
            Offset (0x4C), 
            SCMD,   32
        }

        OperationRegion (CRBD, SystemMemory, TPMM, 0x48)
        Field (CRBD, AnyAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            HERR,   32, 
            Offset (0x40), 
            HCMD,   32, 
            HSTS,   32
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((TTDP == Zero))
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
            ElseIf ((TTDP == One))
            {
                If (TPMF)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Return (Zero)
        }

        Method (STRT, 3, Serialized)
        {
            OperationRegion (TPMR, SystemMemory, FTPM, 0x1000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                FERR,   32, 
                Offset (0x0C), 
                BEGN,   32
            }

            Name (TIMR, Zero)
            If ((ToInteger (Arg0) != Zero)){}
            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
                Case (One)
                {
                    TIMR = Zero
                    If ((AMDT == One))
                    {
                        While (((BEGN == One) && (TIMR < 0x0200)))
                        {
                            If ((BEGN == One))
                            {
                                Sleep (One)
                                TIMR++
                            }
                        }
                    }
                    ElseIf ((((HSTS & 0x02) | (HSTS & One)
                        ) == 0x03))
                    {
                        HCMD = One
                    }
                    Else
                    {
                        FERR = One
                        BEGN = Zero
                    }

                    Return (Zero)
                }

            }

            Return (One)
        }

        Method (CRYF, 3, Serialized)
        {
            If ((ToInteger (Arg0) != One)){}
            Switch (ToInteger (Arg1))
            {
                Case (Zero)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
                Case (One)
                {
                    Name (TPMV, Package (0x02)
                    {
                        One, 
                        Package (0x02)
                        {
                            One, 
                            0x20
                        }
                    })
                    If ((_STA () == Zero))
                    {
                        Return (Package (0x01)
                        {
                            Zero
                        })
                    }

                    Return (TPMV) /* \_SB_.TPM_.CRYF.TPMV */
                }

            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (_SB.TPM)
    {
        OperationRegion (TSMI, SystemIO, SMIA, 0x02)
        Field (TSMI, WordAcc, NoLock, Preserve)
        {
            SMI,    16
        }

        OperationRegion (ATNV, SystemMemory, PPIM, PPIL)
        Field (ATNV, AnyAcc, NoLock, Preserve)
        {
            RQST,   32, 
            RCNT,   32, 
            ERRO,   32, 
            FLAG,   32, 
            MISC,   32, 
            OPTN,   32, 
            SRSP,   32
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        If ((PPIV == Zero))
                        {
                            Return ("1.2")
                        }
                        Else
                        {
                            Return ("1.3")
                        }
                    }
                    Case (0x02)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        SRSP = Zero
                        FLAG = 0x02
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Case (0x03)
                    {
                        Name (PPI1, Package (0x02)
                        {
                            Zero, 
                            Zero
                        })
                        PPI1 [One] = RQST /* \_SB_.TPM_.RQST */
                        Return (PPI1) /* \_SB_.TPM_._DSM.PPI1 */
                    }
                    Case (0x04)
                    {
                        Return (TRST) /* \TRST */
                    }
                    Case (0x05)
                    {
                        Name (PPI2, Package (0x03)
                        {
                            Zero, 
                            Zero, 
                            Zero
                        })
                        SRSP = Zero
                        FLAG = 0x05
                        SMI = OFST /* \OFST */
                        PPI2 [One] = RCNT /* \_SB_.TPM_.RCNT */
                        PPI2 [0x02] = ERRO /* \_SB_.TPM_.ERRO */
                        Return (PPI2) /* \_SB_.TPM_._DSM.PPI2 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x07
                        OPTN = Zero
                        If ((RQST == 0x17))
                        {
                            ToInteger (DerefOf (Arg3 [One]), OPTN) /* \_SB_.TPM_.OPTN */
                        }

                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Case (0x08)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x08
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Default
                    {
                    }

                }
            }
            ElseIf ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        RQST = DerefOf (Arg3 [Zero])
                        FLAG = 0x09
                        TMF1 = OFST /* \OFST */
                        SRSP = Zero
                        SMI = TMF1 /* \TMF1 */
                        Return (SRSP) /* \_SB_.TPM_.SRSP */
                    }
                    Default
                    {
                    }

                }
            }

            If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
            {
                Return (CRYF (Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4")))
            {
                Return (STRT (Arg1, Arg2, Arg3))
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Method (TPTS, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (0x04)
                {
                    RQST = Zero
                    FLAG = 0x09
                    SRSP = Zero
                    SMI = OFST /* \OFST */
                }
                Case (0x05)
                {
                    RQST = Zero
                    FLAG = 0x09
                    SRSP = Zero
                    SMI = OFST /* \OFST */
                }

            }

            Sleep (0x012C)
        }
    }

    OperationRegion (PECM, SystemIO, 0x72, 0x02)
    Field (PECM, ByteAcc, Lock, Preserve)
    {
        EIND,   8, 
        EDAT,   8
    }

    IndexField (EIND, EDAT, ByteAcc, NoLock, Preserve)
    {
        Offset (0xE0), 
        RAMB,   32, 
        RES2,   96, 
        KBBE,   8, 
        KBBR,   8, 
        KBBG,   8, 
        KBBB,   8, 
        KBBS,   8, 
        KBST,   8, 
        KBBL,   8, 
        KBE1,   8, 
        KBE2,   8, 
        FANM,   8
    }

    OperationRegion (RAMW, SystemMemory, RAMB, 0x0100)
    Field (RAMW, AnyAcc, NoLock, Preserve)
    {
        TT_P,   8, 
        FS_F,   8, 
        FS_T,   16, 
        FA_D,   32, 
        FS_Z,   16, 
        ST_P,   8, 
        MN_A,   64, 
        BT_P,   8, 
        AL_D,   32, 
        DB_1,   8, 
        DB_2,   32, 
        DB_3,   32, 
        DB_4,   32, 
        RT_W,   16, 
        PM_B,   32, 
        PM_S,   8, 
        ST_B,   32, 
        AC_F,   8, 
        DC_F,   8, 
        DC_2,   8, 
        PGST,   8
    }

    Scope (\)
    {
        OperationRegion (GPSC, SystemIO, 0xB2, 0x02)
        Field (GPSC, ByteAcc, NoLock, Preserve)
        {
            SMCM,   8, 
            SMST,   8
        }

        Method (ISMI, 1, Serialized)
        {
            SMCM = Arg0
        }

        Method (ASMI, 1, Serialized)
        {
            AL_D = Arg0
            SMCM = 0xD6
            Return (AL_D) /* \AL_D */
        }

        Method (DB_G, 4, NotSerialized)
        {
            DB_1 = Arg0
            DB_2 = Arg1
            DB_3 = Arg2
            DB_4 = Arg3
            ASMI (0x80)
        }
    }

    Scope (_SB.PCI0.SBRG)
    {
        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
            Name (CRS, ResourceTemplate ()
            {
                IO (Decode16,
                    0x0062,             // Range Minimum
                    0x0062,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0066,             // Range Minimum
                    0x0066,             // Range Maximum
                    0x00,               // Alignment
                    0x01,               // Length
                    )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (CRS) /* \_SB_.PCI0.SBRG.EC0_.CRS_ */
            }

            Name (_GPE, 0x03)  // _GPE: General Purpose Events
            OperationRegion (TRDP, SystemIO, 0x025C, 0x02)
            Field (TRDP, ByteAcc, NoLock, Preserve)
            {
                AEID,   8, 
                AEIC,   8
            }

            Mutex (MUEC, 0x00)
            Name (ECFL, Ones)
            Method (ECAV, 0, NotSerialized)
            {
                If ((_REV >= 0x02))
                {
                    Return (One)
                }

                If ((ST_P >= 0x04))
                {
                    Return (Zero)
                }

                If ((ECFL == Ones))
                {
                    Return (Zero)
                }

                Return (ECFL) /* \_SB_.PCI0.SBRG.EC0_.ECFL */
            }

            OperationRegion (ECW1, SystemMemory, 0xFEFF0380, 0x80)
            Field (ECW1, ByteAcc, Lock, Preserve)
            {
                Offset (0x01), 
                EPWS,   8, 
                EB0S,   8, 
                EB1S,   8, 
                EB0R,   8, 
                EB1R,   8, 
                EB0T,   8, 
                EB1T,   8, 
                OCOT,   8, 
                Offset (0x10), 
                B0PN,   16, 
                B0VL,   16, 
                B0RC,   16, 
                B0FC,   16, 
                B0ST,   16, 
                B0CC,   16, 
                B0TM,   16, 
                B0C1,   16, 
                B0CV,   16, 
                Offset (0x30), 
                B1PN,   16, 
                B1VL,   16, 
                B1RC,   16, 
                B1FC,   16, 
                B1ST,   16, 
                B1CC,   16, 
                B1TM,   16, 
                B1C1,   16, 
                B1CV,   16, 
                Offset (0x50), 
                B0DC,   16, 
                B0DV,   16, 
                B0SN,   16, 
                B0MD,   16, 
                B1DC,   16, 
                B1DV,   16, 
                B1SN,   16, 
                B1MD,   16, 
                TH1R,   8, 
                TH1L,   8, 
                TH0R,   8, 
                TH0L,   8, 
                ECRT,   8, 
                EPSV,   8, 
                EACT,   8, 
                TERR,   8, 
                F0TS,   16, 
                F1TS,   16, 
                F0CS,   8, 
                F1CS,   8, 
                PCPT,   16, 
                ALSC,   8, 
                Offset (0x72), 
                ALSU,   16, 
                ALSL,   16, 
                ALSX,   16, 
                BRTC,   8, 
                BCDV,   8, 
                AINP,   16
            }

            OperationRegion (ECW2, SystemMemory, 0xFEFF0700, 0x80)
            Field (ECW2, ByteAcc, Lock, Preserve)
            {
                ESEM,   8, 
                CMD1,   8, 
                CDT1,   8, 
                CDT2,   8, 
                CDT3,   8, 
                CDT4,   8, 
                CDT5,   8, 
                CDT6,   8, 
                CDT7,   8, 
                CDT8,   8, 
                CDT9,   8, 
                CD10,   8, 
                CD11,   8, 
                CD12,   8, 
                CD13,   8, 
                CD14,   8, 
                CD15,   8, 
                CD16,   8, 
                CD17,   8, 
                CD18,   8, 
                CD19,   8, 
                CD20,   8, 
                CD21,   8, 
                CD22,   8, 
                CD23,   8, 
                CD24,   8, 
                Offset (0x40), 
                EDA1,   8, 
                EDA2,   8, 
                EDA3,   8, 
                EDA4,   8, 
                EDA5,   8, 
                EDA6,   8, 
                EDA7,   8, 
                EDA8,   8, 
                EDA9,   8, 
                ED10,   8, 
                ED11,   8, 
                ED12,   8, 
                ED13,   8, 
                ED14,   8, 
                ED15,   8, 
                ED16,   8, 
                ED17,   8, 
                ED18,   8, 
                ED19,   8, 
                ED20,   8
            }

            OperationRegion (ECW3, SystemMemory, 0xFEFF0CF0, 0x80)
            Field (ECW3, ByteAcc, Lock, Preserve)
            {
                CTLB,   8, 
                CTHB,   8, 
                CFLB,   8, 
                CFHB,   8, 
                STLB,   8, 
                STHB,   8, 
                SFLB,   8, 
                SFHB,   8, 
                GFLB,   8, 
                GFHB,   8
            }

            OperationRegion (PHM0, SystemMemory, 0xFEFF0380, 0x80)
            Field (PHM0, ByteAcc, Lock, Preserve)
            {
                Offset (0x12), 
                BD25,   8, 
                BD26,   8, 
                BD27,   8, 
                BD28,   8, 
                BD29,   8, 
                BD2A,   8, 
                BD2D,   8, 
                BD2E,   8, 
                BD2F,   8, 
                BD30,   8, 
                BD31,   8, 
                BD32,   8, 
                Offset (0x22), 
                BD33,   8, 
                BD34,   8, 
                BD35,   8, 
                BD36,   8, 
                BD37,   8, 
                BD38,   8, 
                BD39,   8, 
                BD3A,   8, 
                Offset (0x50), 
                BD3B,   8, 
                BD3C,   8, 
                BD3D,   8, 
                BD3E,   8, 
                Offset (0x60), 
                BD20,   8, 
                Offset (0x62), 
                BD22,   8, 
                Offset (0x68), 
                BD23,   8, 
                BD24,   8, 
                Offset (0x6E), 
                BD21,   8
            }

            OperationRegion (PHM1, SystemMemory, 0xFEFF0700, 0xFF)
            Field (PHM1, ByteAcc, Lock, Preserve)
            {
                Offset (0xB7), 
                BD1E,   8, 
                BD1F,   8, 
                Offset (0xBA), 
                BD1C,   8, 
                BD1D,   8, 
                Offset (0xBE), 
                BD1A,   8, 
                BD1B,   8, 
                Offset (0xC5), 
                PECR,   8, 
                Offset (0xC8), 
                CR01,   8, 
                CR02,   8, 
                CR03,   8, 
                CR04,   8, 
                CR05,   8
            }

            OperationRegion (ECWB, SystemMemory, 0xFEFF0700, 0x80)
            Field (ECWB, ByteAcc, Lock, Preserve)
            {
                ESEB,   8, 
                CMDB,   8, 
                CDTB,   496, 
                EDAB,   512
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
            }

            Name (BADR, 0x0B)
            Name (CADR, 0x09)
            Name (SADR, 0x0A)
            Name (ISHE, Zero)
            Name (THOT, Zero)
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                WVDC ()
                ECFL = One
                Local1 = RR_M (0x04A0)
                Local1 |= 0x08
                WR_M (0x04A0, Local1)
                H0_2 ()
                If ((OSVR >= 0x0F))
                {
                    WR_M (0x0617, One)
                }
                Else
                {
                    WR_M (0x0617, Zero)
                }
            }

            Method (ALMH, 1, NotSerialized)
            {
                If ((Arg0 == BADR))
                {
                    NB_T (0x80)
                }
            }

            Method (SR_W, 1, NotSerialized)
            {
                Local0 = SR_T (RDWD, BADR, Arg0)
                Local1 = DerefOf (Local0 [Zero])
                If (Local1)
                {
                    Return (Ones)
                }
                Else
                {
                    Return (DerefOf (Local0 [0x02]))
                }
            }

            Name (BSLF, Zero)
            Method (BS_F, 1, Serialized)
            {
                If (Arg0)
                {
                    BSLF = One
                }
                Else
                {
                    BSLF = Zero
                }
            }

            Method (BP_U, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1MD /* \_SB_.PCI0.SBRG.EC0_.B1MD */
                }
                Else
                {
                    Local0 = B0MD /* \_SB_.PCI0.SBRG.EC0_.B0MD */
                }

                If ((Local0 != 0xFFFF))
                {
                    Local1 = (Local0 >> 0x0F)
                    Local1 &= One
                    Local0 = (Local1 ^ One)
                }

                Return (Local0)
            }

            Method (BD_C, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1DC /* \_SB_.PCI0.SBRG.EC0_.B1DC */
                }
                Else
                {
                    Local0 = B0DC /* \_SB_.PCI0.SBRG.EC0_.B0DC */
                    Local1 = 0x03
                    While ((Local1 != Zero))
                    {
                        Local0 = B0DC /* \_SB_.PCI0.SBRG.EC0_.B0DC */
                        If (((Local0 == Zero) || (Local0 == 0xFFFF)))
                        {
                            Local1--
                            WR_M (0x06B0, Zero)
                            Sleep (0x64)
                            Local0 = RR_M (0x06B0)
                            If ((Local0 & 0x10))
                            {
                                Local0 = B0DC /* \_SB_.PCI0.SBRG.EC0_.B0DC */
                            }
                        }
                        Else
                        {
                            Local1 = Zero
                        }
                    }
                }

                Local0 &= 0xFFFF
                Return (Local0)
            }

            Method (BL_F, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1FC /* \_SB_.PCI0.SBRG.EC0_.B1FC */
                }
                Else
                {
                    Local0 = B0FC /* \_SB_.PCI0.SBRG.EC0_.B0FC */
                }

                Local0 &= 0xFFFF
                Return (Local0)
            }

            Method (BT_C, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1MD /* \_SB_.PCI0.SBRG.EC0_.B1MD */
                }
                Else
                {
                    Local0 = B0MD /* \_SB_.PCI0.SBRG.EC0_.B0MD */
                }

                If ((Local0 != 0xFFFF))
                {
                    Local0 >>= 0x09
                    Local0 &= One
                    Local0 ^= One
                }
                Else
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (BD_V, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1DV /* \_SB_.PCI0.SBRG.EC0_.B1DV */
                }
                Else
                {
                    Local1 = 0x03
                    While ((Local1 != Zero))
                    {
                        Local0 = B0DV /* \_SB_.PCI0.SBRG.EC0_.B0DV */
                        If (((Local0 == Zero) || (Local0 == 0xFFFF)))
                        {
                            Local1--
                            WR_M (0x06B0, Zero)
                            Sleep (0x64)
                            Local0 = RR_M (0x06B0)
                            If ((Local0 & 0x10))
                            {
                                Local0 = B0DV /* \_SB_.PCI0.SBRG.EC0_.B0DV */
                            }
                        }
                        Else
                        {
                            Local1 = Zero
                        }
                    }
                }

                Return (Local0)
            }

            Method (BD_N, 0, NotSerialized)
            {
                Name (BSTR, Buffer (0x20){})
                Local0 = SR_T (RDBL, BADR, 0x21)
                If ((DerefOf (Local0 [Zero]) != Zero))
                {
                    BSTR [0x04] = Zero
                }
                Else
                {
                    BSTR = DerefOf (Local0 [0x02])
                    BSTR [DerefOf (Local0 [One])] = Zero
                }

                Return (BSTR) /* \_SB_.PCI0.SBRG.EC0_.BD_N.BSTR */
            }

            Method (BS_N, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1SN /* \_SB_.PCI0.SBRG.EC0_.B1SN */
                }
                Else
                {
                    Local0 = B0SN /* \_SB_.PCI0.SBRG.EC0_.B0SN */
                }

                Return (Local0)
            }

            Method (BS_T, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1ST /* \_SB_.PCI0.SBRG.EC0_.B1ST */
                }
                Else
                {
                    Local0 = B0ST /* \_SB_.PCI0.SBRG.EC0_.B0ST */
                }

                Return (Local0)
            }

            Method (BC_R, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1CC /* \_SB_.PCI0.SBRG.EC0_.B1CC */
                }
                Else
                {
                    Local0 = B0CC /* \_SB_.PCI0.SBRG.EC0_.B0CC */
                }

                Return (Local0)
            }

            Method (BR_C, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1RC /* \_SB_.PCI0.SBRG.EC0_.B1RC */
                }
                Else
                {
                    Local0 = B0RC /* \_SB_.PCI0.SBRG.EC0_.B0RC */
                }

                If ((Local0 == 0xFFFF))
                {
                    Local0 = Ones
                }

                Return (Local0)
            }

            Method (BV_T, 0, Serialized)
            {
                If (BSLF)
                {
                    Local0 = B1VL /* \_SB_.PCI0.SBRG.EC0_.B1VL */
                }
                Else
                {
                    Local0 = B0VL /* \_SB_.PCI0.SBRG.EC0_.B0VL */
                }

                Return (Local0)
            }

            Method (BT_P, 1, Serialized)
            {
                Local0 = (EPWS & 0x02)
                If (Local0)
                {
                    Local1 = One
                }
                Else
                {
                    Local1 = Zero
                }

                Local0 = (EPWS & 0x04)
                If (Local0)
                {
                    Local2 = One
                }
                Else
                {
                    Local2 = Zero
                }

                Local3 = RR_M (0x06B3)
                Local4 = RR_M (0x06B2)
                Local3 &= One
                Local4 &= 0x10
                If (((Local3 == One) && (Local4 == 0x10)))
                {
                    Local1 = Zero
                    Local2 = Zero
                }

                If (Arg0)
                {
                    Return (Local2)
                }
                Else
                {
                    Return (Local1)
                }

                If (Arg0)
                {
                    DC_2 = DC_P (One)
                    Return (DC_2) /* \DC_2 */
                }
                Else
                {
                    DC_F = DC_P (Zero)
                    Return (DC_F) /* \DC_F */
                }
            }

            Method (AP_S, 0, Serialized)
            {
                Local0 = (EPWS & One)
                Return (Local0)
            }

            Method (GB_T, 1, Serialized)
            {
                If ((Arg0 == Zero))
                {
                    Local0 = EB0T /* \_SB_.PCI0.SBRG.EC0_.EB0T */
                }
                Else
                {
                    Local0 = EB1T /* \_SB_.PCI0.SBRG.EC0_.EB1T */
                }

                Return (Local0)
            }

            Method (BC_H, 1, Serialized)
            {
                If (Arg0)
                {
                    Local0 = EB1S /* \_SB_.PCI0.SBRG.EC0_.EB1S */
                }
                Else
                {
                    Local0 = EB0S /* \_SB_.PCI0.SBRG.EC0_.EB0S */
                    Local0 &= 0xFF
                    If ((Local0 != 0xFF))
                    {
                        Local0 &= 0x02
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Return (Local0)
            }

            Method (BC_F, 1, Serialized)
            {
                If (Arg0)
                {
                    Local0 = EB1S /* \_SB_.PCI0.SBRG.EC0_.EB1S */
                }
                Else
                {
                    Local0 = EB0S /* \_SB_.PCI0.SBRG.EC0_.EB0S */
                }

                Local0 &= 0xFF
                If ((Local0 != 0xFF))
                {
                    Local0 &= 0x10
                    Local0 >>= 0x04
                }
                Else
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (CB_T, 1, Serialized)
            {
                Local1 = GB_T (Arg0)
                If ((Local1 == 0xFF))
                {
                    Local0 = Zero
                }
                Else
                {
                    Local0 = (Local1 & 0x10)
                    If (Local0)
                    {
                        Local0 = One
                    }
                }

                Return (Local0)
            }

            Method (FS_C, 1, Serialized)
            {
                If (Arg0)
                {
                    Local0 = F1TS /* \_SB_.PCI0.SBRG.EC0_.F1TS */
                }
                Else
                {
                    Local0 = F0TS /* \_SB_.PCI0.SBRG.EC0_.F0TS */
                }

                Local0 = ~Local0
                Local0 &= 0xFFFF
                If ((Local0 != Zero))
                {
                    If ((Local0 == 0xFFFF))
                    {
                        Local0 = Zero
                    }
                    Else
                    {
                        Local0 *= 0x02
                        Local1 = 0x001C8402
                        Divide (Local1, Local0, Local2, Local0)
                    }
                }
                Else
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (RT_M, 0, NotSerialized)
            {
                Local0 = RR_M (0x03E2)
                Return (Local0)
            }

            Method (RC_R, 0, NotSerialized)
            {
                Local0 = RR_M (0x03E4)
                Return (Local0)
            }

            Method (RS_V, 0, NotSerialized)
            {
                Local0 = RR_M (0x03E5)
                Return (Local0)
            }

            Method (EC_S, 1, NotSerialized)
            {
                OE_S (Arg0)
                WR_M (0x03FF, Arg0)
                \_GPE.L06C = One
            }

            Method (EC_W, 1, NotSerialized)
            {
                If ((Arg0 == 0x03))
                {
                    If ((FANM == Zero))
                    {
                        PTPT ()
                    }
                    ElseIf ((FANM == One))
                    {
                        PTP1 ()
                    }
                    ElseIf ((FANM == 0x02))
                    {
                        PTP2 ()
                    }
                    Else
                    {
                        PTPT ()
                    }

                    WR_M (0x0520, 0x92)
                    WR_M (0x0521, 0xBC)
                    WR_M (0x0522, 0xBD)
                    WR_M (0x0523, 0x9F)
                    WR_M (0x0524, 0x9F)
                    WR_M (0x052B, 0x9E)
                    WR_M (0x052D, One)
                    WR_M (0x03E4, 0x62)
                    WR_M (0x03E5, 0x60)
                }

                If ((Arg0 <= 0x04))
                {
                    Local1 = RR_M (0x06B3)
                    Local2 = RR_M (0x06B2)
                    Local1 &= One
                    Local2 &= 0x10
                    If (((Local1 == One) && (Local2 == 0x10)))
                    {
                        Notify (BAT0, 0x80) // Status Change
                        Notify (BAT0, 0x81) // Information Change
                    }

                    If ((OSYS > 0x07DC))
                    {
                        WR_M (0x0C0C, 0x80)
                        WR_M (0x038A, Zero)
                    }

                    NB_T (0x80)
                }

                If ((Arg0 == 0x04))
                {
                    WVDC ()
                }

                OE_W (Arg0)
            }

            Method (RR_M, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    Local1 = (Local0 & 0xFF)
                    Local0 >>= 0x08
                    Local0 &= 0xFF
                    CDT2 = Local1
                    CDT1 = Local0
                    CMD1 = 0x80
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WR_M, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    Local1 = (Local0 & 0xFF)
                    Local0 >>= 0x08
                    Local0 &= 0xFF
                    CDT2 = Local1
                    CDT1 = Local0
                    CDT3 = Arg1
                    CMD1 = 0x81
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (SB_R, 1, Serialized)
            {
                WB_O (Zero, Arg0)
            }

            Name (DECF, Zero)
            Method (SF_A, 2, Serialized)
            {
                Local1 = RR_M (0x0521)
                Local2 = RR_M (0x0522)
                Local3 = RR_M (0x0523)
                Local4 = RR_M (0x0524)
                If ((Arg0 == Zero))
                {
                    Local3 |= 0x80
                    Local4 |= 0x80
                    If ((Local1 & 0x80))
                    {
                        Local0 = (Local1 >> 0x04)
                        Local0 &= 0x03
                        If ((Local0 == Zero))
                        {
                            WR_M (0x0523, Local3)
                        }
                        ElseIf ((Local0 == One))
                        {
                            WR_M (0x0524, Local4)
                        }
                        ElseIf ((Local0 == 0x02))
                        {
                            WR_M (0x0523, Local3)
                            WR_M (0x0524, Local4)
                        }
                    }

                    If ((Local2 & 0x80))
                    {
                        Local0 = (Local2 >> 0x04)
                        Local0 &= 0x03
                        If ((Local0 == Zero))
                        {
                            WR_M (0x0523, Local3)
                        }
                        ElseIf ((Local0 == One))
                        {
                            WR_M (0x0524, Local4)
                        }
                        ElseIf ((Local0 == 0x02))
                        {
                            WR_M (0x0523, Local3)
                            WR_M (0x0524, Local4)
                        }
                    }

                    Return (Zero)
                }

                Local3 &= 0x7F
                Local4 &= 0x7F
                WR_M (0x0523, Local3)
                WR_M (0x0524, Local4)
                WF_O (Arg0--, Arg1)
                Return (Zero)
            }

            Method (SP_N, 3, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    Local1 = Arg1
                    If ((Local0 >= 0x41))
                    {
                        Local0 -= 0x41
                    }

                    Local0 <<= 0x04
                    Local0 |= Local1
                    CDT2 = Local0
                    If ((Arg2 == One))
                    {
                        Local2 = 0x20
                    }
                    Else
                    {
                        Local2 = 0x40
                    }

                    CDT1 = Local2
                    CMD1 = 0x87
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RP_N, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local0 = Arg0
                    If ((Local0 >= 0x41))
                    {
                        Local0 -= 0x41
                    }

                    Local0 <<= 0x04
                    Local0 |= Arg1
                    CDT2 = Local0
                    CDT1 = Zero
                    CMD1 = 0x87
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Name (WRQK, 0x02)
            Name (RDQK, 0x03)
            Name (SDBT, 0x04)
            Name (RCBT, 0x05)
            Name (WRBT, 0x06)
            Name (RDBT, 0x07)
            Name (WRWD, 0x08)
            Name (RDWD, 0x09)
            Name (WRBL, 0x0A)
            Name (RDBL, 0x0B)
            Name (WBLP, 0x8A)
            Name (RBLP, 0x8B)
            Name (PCLL, 0x0C)
            Name (GOOD, Zero)
            Name (UKER, 0x07)
            Name (DAER, 0x10)
            Name (DERR, 0x11)
            Name (CMDN, 0x12)
            Name (UKE2, 0x13)
            Name (DADN, 0x17)
            Name (SBTO, 0x18)
            Name (USPT, 0x19)
            Name (SBBY, 0x1A)
            Method (SR_T, 3, Serialized)
            {
                Local0 = Package (0x03)
                    {
                        0x07, 
                        Zero, 
                        Zero
                    }
                OperationRegion (ECBD, SystemMemory, 0xFEFF0700, 0x80)
                Field (ECBD, ByteAcc, Lock, Preserve)
                {
                    Offset (0x40), 
                    Offset (0x41), 
                    BCNT,   8, 
                    BDAT,   240
                }

                If ((Arg0 != RDBL))
                {
                    If ((Arg0 != RDWD))
                    {
                        If ((Arg0 != RDBT))
                        {
                            If ((Arg0 != RCBT))
                            {
                                If ((Arg0 != RDQK))
                                {
                                    If ((Arg0 != RBLP))
                                    {
                                        Return (Local0)
                                    }
                                }
                            }
                        }
                    }
                }

                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Zero
                    CDT2 = Arg0
                    Local1 = (Arg1 << One)
                    CDT3 = Local1
                    CDT4 = Arg2
                    CDT5 = Zero
                    CMD1 = 0x9A
                    ESEM = 0x0F
                    Local2 = 0xFA
                    While ((Local2 && CMD1))
                    {
                        Sleep (0x02)
                        Local2--
                    }

                    If ((CMD1 == Zero))
                    {
                        If ((EDA1 == 0x80))
                        {
                            Local0 [Zero] = GOOD /* \_SB_.PCI0.SBRG.EC0_.GOOD */
                            If ((Arg0 == RDBL))
                            {
                                Local0 [One] = BCNT /* \_SB_.PCI0.SBRG.EC0_.SR_T.BCNT */
                                Local0 [0x02] = BDAT /* \_SB_.PCI0.SBRG.EC0_.SR_T.BDAT */
                            }

                            If ((Arg0 == RBLP))
                            {
                                Local0 [One] = BCNT /* \_SB_.PCI0.SBRG.EC0_.SR_T.BCNT */
                                Local0 [0x02] = BDAT /* \_SB_.PCI0.SBRG.EC0_.SR_T.BDAT */
                            }

                            If ((Arg0 == RDWD))
                            {
                                Local0 [One] = 0x02
                                Local1 = EDA3 /* \_SB_.PCI0.SBRG.EC0_.EDA3 */
                                Local1 <<= 0x08
                                Local1 |= EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                                Local0 [0x02] = Local1
                            }

                            If ((Arg0 == RDBT))
                            {
                                Local0 [One] = One
                                Local0 [0x02] = EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                            }

                            If ((Arg0 == RCBT))
                            {
                                Local0 [One] = One
                                Local0 [0x02] = EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                            }
                        }
                    }
                    Else
                    {
                        Local0 [Zero] = UKER /* \_SB_.PCI0.SBRG.EC0_.UKER */
                        Local0 [One] = Zero
                        Local0 [0x02] = 0xFF
                    }

                    Release (MUEC)
                }

                Return (Local0)
            }

            Method (SW_T, 5, Serialized)
            {
                Local0 = Package (0x03)
                    {
                        0x07, 
                        Zero, 
                        Zero
                    }
                OperationRegion (ECBD, SystemMemory, 0xFEFF0380, 0x80)
                Field (ECBD, ByteAcc, Lock, Preserve)
                {
                    Offset (0x07), 
                    BDAT,   256
                }

                If ((Arg0 != WRBL))
                {
                    If ((Arg0 != WRWD))
                    {
                        If ((Arg0 != WRBT))
                        {
                            If ((Arg0 != SDBT))
                            {
                                If ((Arg0 != WRQK))
                                {
                                    If ((Arg0 != WBLP))
                                    {
                                        Return (Local0)
                                    }
                                }
                            }
                        }
                    }
                }

                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Zero
                    CDT2 = Arg0
                    Local1 = (Arg1 << One)
                    CDT3 = Local1
                    CDT4 = Arg2
                    If ((Arg0 == WRBL))
                    {
                        CDT5 = Arg3
                        BDAT = Arg4
                    }

                    If ((Arg0 == WBLP))
                    {
                        CDT5 = Arg3
                        BDAT = Arg4
                    }

                    If ((Arg0 == WRWD))
                    {
                        CDT5 = Zero
                        CDT6 = Arg4
                        Local3 = (Arg4 & 0xFF)
                        CDT6 = Local3
                        Local4 = (Arg4 & 0xFF00)
                        Local4 >>= 0x08
                        CDT7 = Local4
                    }

                    If ((Arg0 == WRBT))
                    {
                        CDT5 = Zero
                        CDT6 = Arg4
                    }

                    If ((Arg0 == SDBT))
                    {
                        CDT5 = Zero
                        CDT6 = Arg4
                    }

                    CMD1 = 0x9A
                    ESEM = 0x0F
                    Local2 = 0x7F
                    While ((Local2 && CMD1))
                    {
                        Sleep (One)
                        Local2--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 [Zero] = Zero
                    }
                    Else
                    {
                        Local0 [Zero] = UKER /* \_SB_.PCI0.SBRG.EC0_.UKER */
                    }

                    Release (MUEC)
                }

                Return (Local0)
            }

            Method (RE_P, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (WE_P, 2, NotSerialized)
            {
                Return (Zero)
            }

            Method (WB_R, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CDT2 = Arg1
                    CMD1 = 0x86
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (EX_T, 6, NotSerialized)
            {
                Local1 = Package (0x06)
                    {
                        0x10, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg1
                    CDT2 = Arg2
                    CDT3 = Arg3
                    CDT4 = Arg4
                    CDT5 = Arg5
                    CMD1 = Arg0
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local1 [Zero] = Zero
                        Local1 [One] = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                        Local1 [0x02] = EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                        Local1 [0x03] = EDA3 /* \_SB_.PCI0.SBRG.EC0_.EDA3 */
                        Local1 [0x04] = EDA4 /* \_SB_.PCI0.SBRG.EC0_.EDA4 */
                        Local1 [0x05] = EDA5 /* \_SB_.PCI0.SBRG.EC0_.EDA5 */
                    }
                    Else
                    {
                        Local1 [Zero] = 0x10
                    }

                    Release (MUEC)
                }

                Return (Local1)
            }

            Method (EX_1, 1, Serialized)
            {
                Local1 = Package (0x0D)
                    {
                        0x10, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = DerefOf (Arg0 [One])
                    CDT2 = DerefOf (Arg0 [0x02])
                    CDT3 = DerefOf (Arg0 [0x03])
                    CDT4 = DerefOf (Arg0 [0x04])
                    CDT5 = DerefOf (Arg0 [0x05])
                    CDT6 = DerefOf (Arg0 [0x06])
                    CDT7 = DerefOf (Arg0 [0x07])
                    CDT8 = DerefOf (Arg0 [0x08])
                    CDT9 = DerefOf (Arg0 [0x09])
                    CD10 = DerefOf (Arg0 [0x0A])
                    CD11 = DerefOf (Arg0 [0x0B])
                    CD12 = DerefOf (Arg0 [0x0C])
                    CMD1 = DerefOf (Arg0 [Zero])
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local1 [Zero] = Zero
                        Local1 [One] = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                        Local1 [0x02] = EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                        Local1 [0x03] = EDA3 /* \_SB_.PCI0.SBRG.EC0_.EDA3 */
                        Local1 [0x04] = EDA4 /* \_SB_.PCI0.SBRG.EC0_.EDA4 */
                        Local1 [0x05] = EDA5 /* \_SB_.PCI0.SBRG.EC0_.EDA5 */
                        Local1 [0x06] = EDA6 /* \_SB_.PCI0.SBRG.EC0_.EDA6 */
                        Local1 [0x07] = EDA7 /* \_SB_.PCI0.SBRG.EC0_.EDA7 */
                        Local1 [0x08] = EDA8 /* \_SB_.PCI0.SBRG.EC0_.EDA8 */
                        Local1 [0x09] = EDA9 /* \_SB_.PCI0.SBRG.EC0_.EDA9 */
                        Local1 [0x0A] = ED10 /* \_SB_.PCI0.SBRG.EC0_.ED10 */
                        Local1 [0x0B] = ED11 /* \_SB_.PCI0.SBRG.EC0_.ED11 */
                        Local1 [0x0C] = ED12 /* \_SB_.PCI0.SBRG.EC0_.ED12 */
                    }
                    Else
                    {
                        Local1 [Zero] = 0x10
                    }

                    Release (MUEC)
                }

                Return (Local1)
            }

            Method (ES_M, 6, NotSerialized)
            {
                Local1 = Package (0x05)
                    {
                        0x11, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                If ((Arg0 > One))
                {
                    Return (Local1)
                }

                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CDT2 = Arg1
                    CDT3 = Arg2
                    CDT4 = Arg3
                    CDT5 = Zero
                    CDT6 = Arg4
                    CDT7 = Arg5
                    CMD1 = 0x9A
                    ESEM = 0x0F
                    Local2 = 0x7F
                    While ((Local2 && CMD1))
                    {
                        Sleep (One)
                        Local2--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local1 [Zero] = Zero
                        Local1 [One] = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                        Local1 [0x02] = EDA2 /* \_SB_.PCI0.SBRG.EC0_.EDA2 */
                        Local1 [0x03] = EDA3 /* \_SB_.PCI0.SBRG.EC0_.EDA3 */
                        Local1 [0x04] = EDA4 /* \_SB_.PCI0.SBRG.EC0_.EDA4 */
                    }
                    Else
                    {
                        Local1 [Zero] = 0x10
                    }

                    Release (MUEC)
                }

                Return (Local1)
            }

            Method (WE_I, 0, Serialized)
            {
                Local0 = 0x4000
                Local1 = (AEIC & 0x02)
                While (((Local0 != Zero) && (Local1 == 0x02)))
                {
                    Local1 = (AEIC & 0x02)
                    Local0--
                }
            }

            Method (WE_O, 0, Serialized)
            {
                Local0 = 0x4000
                Local1 = (AEIC & One)
                While (((Local0 != Zero) && (Local1 == Zero)))
                {
                    Local1 = (AEIC & One)
                    Local0--
                }
            }

            Method (RF_O, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CMD1 = 0x83
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WF_O, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CDT2 = Arg1
                    CMD1 = 0x84
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (RB_O, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CMD1 = 0x85
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = EDA1 /* \_SB_.PCI0.SBRG.EC0_.EDA1 */
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (WB_O, 2, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CDT2 = Arg1
                    CMD1 = 0x86
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (PK_E, 1, NotSerialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CMD1 = 0xB1
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (PK_L, 1, NotSerialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CDT1 = Arg0
                    CMD1 = 0xB0
                    ESEM = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (PT_P, 1, NotSerialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    CreateField (Arg0, Zero, 0x01F0, CDB0)
                    CDTB = CDB0 /* \_SB_.PCI0.SBRG.EC0_.PT_P.CDB0 */
                    CMDB = 0x97
                    ESEB = 0x0F
                    Local0 = 0x7F
                    While ((Local0 && CMD1))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If ((CMD1 == Zero))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (AC_P, 0, Serialized)
            {
                Return ((GP_S () & One))
            }

            Method (DC_P, 1, Serialized)
            {
                Local0 = GP_S ()
                If (Arg0)
                {
                    Local0 &= 0x04
                }
                Else
                {
                    Local0 &= 0x02
                }

                If (Local0)
                {
                    Local0 = One
                }
                Else
                {
                    Local0 = Zero
                }

                Return (Local0)
            }

            Method (GP_S, 0, Serialized)
            {
                Local0 = EPWS /* \_SB_.PCI0.SBRG.EC0_.EPWS */
                Return (Local0)
            }

            Method (ECDT, 0, Serialized)
            {
                If ((FANM == Zero))
                {
                    PTPT ()
                }
                ElseIf ((FANM == One))
                {
                    PTP1 ()
                }
                ElseIf ((FANM == 0x02))
                {
                    PTP2 ()
                }
                Else
                {
                    PTPT ()
                }

                Name (DAT1, Zero)
                Name (DAT2, Zero)
                Name (DAT3, Zero)
                Local0 = Zero
                DAT1 = RR_M (0x0520)
                DAT2 = (DAT1 & 0xFC)
                DAT3 = (DAT2 | 0x12)
                Local0 = (DAT3 & 0x7F)
                WR_M (0x0520, Local0)
                Local0 = RR_M (0x0521)
                Local0 &= 0x40
                Local0 |= 0xBC
                WR_M (0x0521, Local0)
                WR_M (0x0522, 0xBD)
                WR_M (0x0523, 0x9F)
                WR_M (0x0524, 0x9F)
                WR_M (0x0520, 0x92)
                WR_M (0x052B, 0x9E)
                WR_M (0x052D, One)
            }

            Method (ECUT, 0, Serialized)
            {
                If ((FANM == Zero))
                {
                    PTPT ()
                }
                ElseIf ((FANM == One))
                {
                    PTP1 ()
                }
                ElseIf ((FANM == 0x02))
                {
                    PTP2 ()
                }
                Else
                {
                    PTPT ()
                }

                Name (DAT1, Zero)
                Name (DAT2, Zero)
                Name (DAT3, Zero)
                DAT1 = RR_M (0x0520)
                DAT2 = (DAT1 & 0xEC)
                DAT2 |= One
                DAT3 = (DAT2 & 0x7F)
                WR_M (0x0520, DAT3)
                Local0 = RR_M (0x0521)
                Local0 &= 0x40
                Local0 |= 0x8C
                WR_M (0x0521, Local0)
                WR_M (0x0522, 0x8D)
                WR_M (0x0523, 0x9F)
                WR_M (0x0524, 0xDF)
                WR_M (0x0520, 0x81)
                WR_M (0x052B, Zero)
                WR_M (0x052D, Zero)
            }

            Method (BC_E, 1, Serialized)
            {
                If (Arg0)
                {
                    If (ECAV ())
                    {
                        Local1 = EB1S /* \_SB_.PCI0.SBRG.EC0_.EB1S */
                        Local1 &= 0xFFFF
                        If ((Local1 != 0xFFFF))
                        {
                            Local1 &= 0x16
                            If ((Local1 == 0x04))
                            {
                                Local0 = Zero
                            }
                            ElseIf ((Local1 == 0x02))
                            {
                                Local0 = One
                            }
                            ElseIf ((Local1 == 0x10))
                            {
                                Local0 = One
                            }
                        }

                        Local0 = Ones
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Return (Local0)
                }
                Else
                {
                    If (ECAV ())
                    {
                        Local1 = EB0S /* \_SB_.PCI0.SBRG.EC0_.EB0S */
                        Local1 &= 0xFFFF
                        If ((Local1 != 0xFFFF))
                        {
                            Local1 &= 0x16
                            If ((Local1 == 0x04))
                            {
                                Local0 = Zero
                            }
                            ElseIf ((Local1 == 0x02))
                            {
                                Local0 = One
                            }
                            ElseIf ((Local1 == 0x10))
                            {
                                Local0 = One
                            }
                        }

                        Local0 = Ones
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Return (Local0)
                }
            }

            Method (_QA0, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (AC_P ())
                {
                    THOT = Zero
                    Local0 = 0x58
                    Notify (^^^GPP0.PEGP, 0xD1) // Hardware-Specific
                    M010 (0x54)
                    One
                    WVDC ()
                }
                Else
                {
                    Local0 = 0x57
                    WVDC ()
                }

                Notify (AC0, 0x80) // Status Change
                Sleep (0x0A)
                NB_T (0x80)
                If (ATKP)
                {
                    ^^^^ATKD.IANE (Local0)
                }
            }

            Method (_QA5, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                Notify (BAT0, 0x80) // Status Change
                If (AC_P ())
                {
                    Return (Zero)
                }

                Local0 = (EB0S & One)
                If ((Local0 != Zero))
                {
                    Local0 = (EB0S & 0x08)
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (PTPP, 1, Serialized)
            {
                If ((Acquire (MUEC, 0xFFFF) == Zero))
                {
                    Local6 = 0x7F
                    Local7 = 0x0F
                    While ((Local6 && (Local7 & ESEB)))
                    {
                        Sleep (0x02)
                        Local6--
                    }

                    CMDB = 0x97
                    CDTB = Arg0
                    ESEB = 0x0F
                    Local0 = 0x7F
                    Local1 = 0x0F
                    While (((Local0 && CMDB) && (Local1 & ESEB)))
                    {
                        Sleep (One)
                        Local0--
                    }

                    If (((CMDB == Zero) && (ESEB == 0xF0)))
                    {
                        Local0 = One
                    }
                    Else
                    {
                        Local0 = Ones
                    }

                    Release (MUEC)
                    Return (Local0)
                }

                Return (Ones)
            }

            Method (PTPT, 0, Serialized)
            {
                Name (AADG, Buffer (0x32)
                {
                    /* 0000 */  0x00, 0x9F, 0x63, 0x62, 0x60, 0x62, 0x58, 0x3A,  // ..cb`bX:
                    /* 0008 */  0x66, 0x32, 0x39, 0x3E, 0x43, 0x4D, 0x52, 0x57,  // f29>CMRW
                    /* 0010 */  0x57, 0x69, 0x0F, 0x0C, 0x07, 0x07, 0x0C, 0x05,  // Wi......
                    /* 0018 */  0x05, 0x05, 0x51, 0x5D, 0x75, 0x82, 0x9E, 0xC0,  // ..Q]u...
                    /* 0020 */  0xE4, 0xE4, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0028 */  0x04, 0x06, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0030 */  0x04, 0x06                                       // ..
                })
                Name (F0DG, Buffer (0x11)
                {
                    /* 0000 */  0x02, 0x8A, 0x03, 0x1E, 0x03, 0xA3, 0x02, 0x69,  // .......i
                    /* 0008 */  0x02, 0x1C, 0x02, 0xD4, 0x01, 0x9E, 0x01, 0x9E,  // ........
                    /* 0010 */  0x01                                             // .
                })
                Name (ABDG, Buffer (0x32)
                {
                    /* 0000 */  0x01, 0x9F, 0x63, 0x62, 0x60, 0x62, 0x58, 0x3A,  // ..cb`bX:
                    /* 0008 */  0x66, 0x32, 0x39, 0x3E, 0x43, 0x4D, 0x52, 0x57,  // f29>CMRW
                    /* 0010 */  0x57, 0x69, 0x0F, 0x0C, 0x07, 0x07, 0x0C, 0x05,  // Wi......
                    /* 0018 */  0x05, 0x05, 0x4C, 0x59, 0x6E, 0x7A, 0x94, 0xB4,  // ..LYnz..
                    /* 0020 */  0xD5, 0xD5, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0028 */  0x04, 0x06, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0030 */  0x04, 0x06                                       // ..
                })
                Name (F1DG, Buffer (0x11)
                {
                    /* 0000 */  0x03, 0x84, 0x03, 0x1E, 0x03, 0xA0, 0x02, 0x69,  // .......i
                    /* 0008 */  0x02, 0x1C, 0x02, 0xD4, 0x01, 0x9E, 0x01, 0x9E,  // ........
                    /* 0010 */  0x01                                             // .
                })
                If ((PGST == One))
                {
                    PTPP (ABDG)
                }
                Else
                {
                    PTPP (AADG)
                }

                PTPP (F0DG)
                PTPP (F1DG)
            }

            Method (PTP1, 0, Serialized)
            {
                Name (AADG, Buffer (0x32)
                {
                    /* 0000 */  0x00, 0x9F, 0x63, 0x62, 0x60, 0x62, 0x58, 0x3A,  // ..cb`bX:
                    /* 0008 */  0x66, 0x32, 0x39, 0x46, 0x46, 0x46, 0x46, 0x46,  // f29FFFFF
                    /* 0010 */  0x46, 0x69, 0x1E, 0x0C, 0x14, 0x14, 0x14, 0x14,  // Fi......
                    /* 0018 */  0x14, 0x14, 0x5E, 0x7C, 0xFF, 0xFF, 0xFF, 0xFF,  // ..^|....
                    /* 0020 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                    /* 0028 */  0xFF, 0xFF, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0030 */  0x04, 0x06                                       // ..
                })
                Name (F0DG, Buffer (0x11)
                {
                    /* 0000 */  0x02, 0x00, 0x03, 0x79, 0x02, 0x81, 0x01, 0x81,  // ...y....
                    /* 0008 */  0x01, 0x81, 0x01, 0x81, 0x01, 0x81, 0x01, 0x81,  // ........
                    /* 0010 */  0x01                                             // .
                })
                Name (ABDG, Buffer (0x32)
                {
                    /* 0000 */  0x01, 0x9F, 0x63, 0x62, 0x60, 0x62, 0x58, 0x3A,  // ..cb`bX:
                    /* 0008 */  0x66, 0x32, 0x39, 0x46, 0x46, 0x46, 0x46, 0x46,  // f29FFFFF
                    /* 0010 */  0x46, 0x69, 0x1E, 0x0C, 0x14, 0x14, 0x14, 0x14,  // Fi......
                    /* 0018 */  0x14, 0x14, 0x5D, 0x7A, 0xFF, 0xFF, 0xFF, 0xFF,  // ..]z....
                    /* 0020 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                    /* 0028 */  0xFF, 0xFF, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0030 */  0x04, 0x06                                       // ..
                })
                Name (F1DG, Buffer (0x11)
                {
                    /* 0000 */  0x03, 0x00, 0x03, 0x79, 0x02, 0x74, 0x01, 0x74,  // ...y.t.t
                    /* 0008 */  0x01, 0x74, 0x01, 0x74, 0x01, 0x74, 0x01, 0x74,  // .t.t.t.t
                    /* 0010 */  0x01                                             // .
                })
                If ((PGST == One))
                {
                    PTPP (ABDG)
                }
                Else
                {
                    PTPP (AADG)
                }

                PTPP (F0DG)
                PTPP (F1DG)
            }

            Method (PTP2, 0, Serialized)
            {
                Name (AADG, Buffer (0x32)
                {
                    /* 0000 */  0x00, 0x9F, 0x63, 0x62, 0x60, 0x62, 0x58, 0x3A,  // ..cb`bX:
                    /* 0008 */  0x66, 0x32, 0x39, 0x3E, 0x43, 0x43, 0x43, 0x43,  // f29>CCCC
                    /* 0010 */  0x43, 0x69, 0x0F, 0x0C, 0x07, 0x07, 0x07, 0x07,  // Ci......
                    /* 0018 */  0x07, 0x07, 0x51, 0x5D, 0x75, 0x82, 0x82, 0x82,  // ..Q]u...
                    /* 0020 */  0x82, 0x82, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0028 */  0x04, 0x06, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0030 */  0x04, 0x06                                       // ..
                })
                Name (F0DG, Buffer (0x11)
                {
                    /* 0000 */  0x02, 0x8A, 0x03, 0x1E, 0x03, 0xA3, 0x02, 0x69,  // .......i
                    /* 0008 */  0x02, 0x69, 0x02, 0x69, 0x02, 0x69, 0x02, 0x69,  // .i.i.i.i
                    /* 0010 */  0x02                                             // .
                })
                Name (ABDG, Buffer (0x32)
                {
                    /* 0000 */  0x01, 0x9F, 0x63, 0x62, 0x60, 0x62, 0x58, 0x3A,  // ..cb`bX:
                    /* 0008 */  0x66, 0x32, 0x39, 0x3E, 0x43, 0x43, 0x43, 0x43,  // f29>CCCC
                    /* 0010 */  0x43, 0x69, 0x0F, 0x0C, 0x07, 0x07, 0x07, 0x07,  // Ci......
                    /* 0018 */  0x07, 0x07, 0x4C, 0x59, 0x6E, 0x7A, 0x7A, 0x7A,  // ..LYnzzz
                    /* 0020 */  0x7A, 0x7A, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // zz......
                    /* 0028 */  0x04, 0x06, 0x01, 0x02, 0x04, 0x06, 0x01, 0x02,  // ........
                    /* 0030 */  0x04, 0x06                                       // ..
                })
                Name (F1DG, Buffer (0x11)
                {
                    /* 0000 */  0x03, 0x84, 0x03, 0x1E, 0x03, 0xA0, 0x02, 0x69,  // .......i
                    /* 0008 */  0x02, 0x69, 0x02, 0x69, 0x02, 0x69, 0x02, 0x69,  // .i.i.i.i
                    /* 0010 */  0x02                                             // .
                })
                If ((PGST == One))
                {
                    PTPP (ABDG)
                }
                Else
                {
                    PTPP (AADG)
                }

                PTPP (F0DG)
                PTPP (F1DG)
            }

            Method (WVDC, 0, NotSerialized)
            {
                Local0 = RR_M (0x0381)
                Local1 = RR_M (0x0390)
                Local2 = RR_M (0x0BE0)
                Local0 &= One
                Local2 &= One
                If ((Local0 == One))
                {
                    If (((Local1 >= 0x50) && (Local2 == One)))
                    {
                        If ((FANM == Zero))
                        {
                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x06, 0xC8, 0xAF, 0x00, 0x00         // .......
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x07, 0x70, 0x94, 0x00, 0x00         // ...p...
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x05, 0x30, 0x75, 0x00, 0x00         // ...0u..
                            }
                        }

                        If ((FANM == One))
                        {
                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x06, 0x50, 0xC3, 0x00, 0x00         // ...P...
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x07, 0x10, 0xA4, 0x00, 0x00         // .......
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x05, 0xB8, 0x88, 0x00, 0x00         // .......
                            }
                        }

                        If ((FANM == 0x02))
                        {
                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x06, 0x40, 0x9C, 0x00, 0x00         // ...@...
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x07, 0xA8, 0x61, 0x00, 0x00         // ....a..
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x05, 0x20, 0x4E, 0x00, 0x00         // ... N..
                            }
                        }
                    }
                    ElseIf (((Local1 >= 0x28) && (Local2 == One)))
                    {
                        If ((FANM == Zero))
                        {
                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x06, 0xC8, 0xAF, 0x00, 0x00         // .......
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x07, 0x70, 0x94, 0x00, 0x00         // ...p...
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x05, 0x30, 0x75, 0x00, 0x00         // ...0u..
                            }
                        }

                        If ((FANM == One))
                        {
                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x06, 0x50, 0xC3, 0x00, 0x00         // ...P...
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x07, 0x10, 0xA4, 0x00, 0x00         // .......
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x05, 0xB8, 0x88, 0x00, 0x00         // .......
                            }
                        }

                        If ((FANM == 0x02))
                        {
                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x06, 0x40, 0x9C, 0x00, 0x00         // ...@...
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x07, 0xA8, 0x61, 0x00, 0x00         // ....a..
                            }

                            ALIB (0x0C)
                            Buffer (0x07)
                            {
                                 0x07, 0x00, 0x05, 0x20, 0x4E, 0x00, 0x00         // ... N..
                            }
                        }
                    }
                    ElseIf (((Local1 > 0x1E) && (Local2 == One)))
                    {
                        ALIB (0x0C)
                        Buffer (0x07)
                        {
                             0x07, 0x00, 0x06, 0x20, 0x4E, 0x00, 0x00         // ... N..
                        }

                        ALIB (0x0C)
                        Buffer (0x07)
                        {
                             0x07, 0x00, 0x07, 0x20, 0x4E, 0x00, 0x00         // ... N..
                        }

                        ALIB (0x0C)
                        Buffer (0x07)
                        {
                             0x07, 0x00, 0x05, 0x20, 0x4E, 0x00, 0x00         // ... N..
                        }
                    }
                    Else
                    {
                        ALIB (0x0C)
                        Buffer (0x07)
                        {
                             0x07, 0x00, 0x06, 0x98, 0x3A, 0x00, 0x00         // ....:..
                        }

                        ALIB (0x0C)
                        Buffer (0x07)
                        {
                             0x07, 0x00, 0x07, 0x98, 0x3A, 0x00, 0x00         // ....:..
                        }

                        ALIB (0x0C)
                        Buffer (0x07)
                        {
                             0x07, 0x00, 0x05, 0x98, 0x3A, 0x00, 0x00         // ....:..
                        }
                    }
                }
                ElseIf ((Local1 >= 0x32))
                {
                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x06, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }

                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x07, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }

                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x05, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }
                }
                ElseIf ((Local1 > 0x1E))
                {
                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x06, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }

                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x07, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }

                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x05, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }
                }
                Else
                {
                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x06, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }

                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x07, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }

                    ALIB (0x0C)
                    Buffer (0x07)
                    {
                         0x07, 0x00, 0x05, 0x98, 0x3A, 0x00, 0x00         // ....:..
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
    }

    Name (ATKP, Zero)
    Scope (\)
    {
        Device (WMI0)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WAPF, Zero)
            Name (_WDG, Buffer (0x01B8)
            {
                /* 0000 */  0x00, 0x24, 0x14, 0x39, 0xA3, 0xC6, 0xFA, 0x40,  // .$.9...@
                /* 0008 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0010 */  0x30, 0x30, 0x01, 0x01, 0x00, 0x24, 0x14, 0x49,  // 00...$.I
                /* 0018 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0020 */  0x52, 0x83, 0x41, 0x00, 0x30, 0x31, 0x01, 0x01,  // R.A.01..
                /* 0028 */  0x00, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0030 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0038 */  0x30, 0x32, 0x01, 0x01, 0x01, 0x24, 0x14, 0x49,  // 02...$.I
                /* 0040 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0048 */  0x52, 0x83, 0x41, 0x00, 0x31, 0x31, 0x01, 0x01,  // R.A.11..
                /* 0050 */  0x01, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0058 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0060 */  0x31, 0x32, 0x01, 0x01, 0x02, 0x24, 0x14, 0x49,  // 12...$.I
                /* 0068 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0070 */  0x52, 0x83, 0x41, 0x00, 0x32, 0x31, 0x01, 0x01,  // R.A.21..
                /* 0078 */  0x02, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0080 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0088 */  0x32, 0x32, 0x01, 0x01, 0x03, 0x24, 0x14, 0x49,  // 22...$.I
                /* 0090 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0098 */  0x52, 0x83, 0x41, 0x00, 0x33, 0x31, 0x01, 0x01,  // R.A.31..
                /* 00A0 */  0x03, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 00A8 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 00B0 */  0x33, 0x32, 0x01, 0x01, 0x04, 0x24, 0x14, 0x49,  // 32...$.I
                /* 00B8 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 00C0 */  0x52, 0x83, 0x41, 0x00, 0x34, 0x31, 0x01, 0x01,  // R.A.41..
                /* 00C8 */  0x04, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 00D0 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 00D8 */  0x34, 0x32, 0x01, 0x01, 0x05, 0x24, 0x14, 0x49,  // 42...$.I
                /* 00E0 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 00E8 */  0x52, 0x83, 0x41, 0x00, 0x35, 0x31, 0x01, 0x01,  // R.A.51..
                /* 00F0 */  0x05, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 00F8 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0100 */  0x35, 0x32, 0x01, 0x01, 0x06, 0x24, 0x14, 0x49,  // 52...$.I
                /* 0108 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0110 */  0x52, 0x83, 0x41, 0x00, 0x36, 0x31, 0x01, 0x01,  // R.A.61..
                /* 0118 */  0x06, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0120 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0128 */  0x36, 0x32, 0x01, 0x01, 0x07, 0x24, 0x14, 0x49,  // 62...$.I
                /* 0130 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0138 */  0x52, 0x83, 0x41, 0x00, 0x37, 0x31, 0x01, 0x01,  // R.A.71..
                /* 0140 */  0x07, 0x24, 0x14, 0x4A, 0xA3, 0xC6, 0xFA, 0x40,  // .$.J...@
                /* 0148 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0150 */  0x37, 0x32, 0x01, 0x01, 0x00, 0x24, 0x14, 0x59,  // 72...$.Y
                /* 0158 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0160 */  0x52, 0x83, 0x41, 0x00, 0x80, 0x00, 0x01, 0x08,  // R.A.....
                /* 0168 */  0x00, 0x24, 0x14, 0x69, 0xA3, 0xC6, 0xFA, 0x40,  // .$.i...@
                /* 0170 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 0178 */  0x30, 0x35, 0x01, 0x02, 0x00, 0x24, 0x14, 0x79,  // 05...$.y
                /* 0180 */  0xA3, 0xC6, 0xFA, 0x40, 0xBA, 0xDB, 0x8A, 0x26,  // ...@...&
                /* 0188 */  0x52, 0x83, 0x41, 0x00, 0x30, 0x36, 0x01, 0x02,  // R.A.06..
                /* 0190 */  0x00, 0x24, 0x14, 0x89, 0xA3, 0xC6, 0xFA, 0x40,  // .$.....@
                /* 0198 */  0xBA, 0xDB, 0x8A, 0x26, 0x52, 0x83, 0x41, 0x00,  // ...&R.A.
                /* 01A0 */  0x30, 0x37, 0x01, 0x02, 0x21, 0x12, 0x90, 0x05,  // 07..!...
                /* 01A8 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                /* 01B0 */  0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x01   // ..).BA..
            })
            Name (XVCD, Zero)
            Method (WQ00, 1, NotSerialized)
            {
                Return (XVCD) /* \WMI0.XVCD */
            }

            OperationRegion (\WMIA, SystemMemory, PM_B, 0x9000)
            Field (WMIA, AnyAcc, NoLock, Preserve)
            {
                WAG1,   2048, 
                WAG2,   2048, 
                WAG3,   2048, 
                WAG4,   2048, 
                WAG5,   2048, 
                WAG6,   2048, 
                WAG7,   2048, 
                WAG8,   2048, 
                Offset (0x1000), 
                WPD1,   32768, 
                WPD2,   32768, 
                WPD3,   32768, 
                WPD4,   32768, 
                WPD5,   32768, 
                WPD6,   32768, 
                WPD7,   32768, 
                WPD8,   32768
            }

            Method (WQ01, 1, NotSerialized)
            {
                Return (WAG1) /* \WMI0.WAG1 */
            }

            Method (WS01, 2, NotSerialized)
            {
                WAG1 = Arg1
                Return (Zero)
            }

            Method (WQ02, 1, NotSerialized)
            {
                Return (WPD1) /* \WMI0.WPD1 */
            }

            Method (WS02, 2, NotSerialized)
            {
                WPD1 = Arg1
                Return (Zero)
            }

            Method (WQ11, 1, NotSerialized)
            {
                Return (WAG2) /* \WMI0.WAG2 */
            }

            Method (WS11, 2, NotSerialized)
            {
                WAG2 = Arg1
                Return (Zero)
            }

            Method (WQ12, 1, NotSerialized)
            {
                Return (WPD2) /* \WMI0.WPD2 */
            }

            Method (WS12, 2, NotSerialized)
            {
                WPD2 = Arg1
                Return (Zero)
            }

            Method (WQ21, 1, NotSerialized)
            {
                Return (WAG3) /* \WMI0.WAG3 */
            }

            Method (WS21, 2, NotSerialized)
            {
                WAG3 = Arg1
                Return (Zero)
            }

            Method (WQ22, 1, NotSerialized)
            {
                Return (WPD3) /* \WMI0.WPD3 */
            }

            Method (WS22, 2, NotSerialized)
            {
                WPD3 = Arg1
                Return (Zero)
            }

            Method (WQ31, 1, NotSerialized)
            {
                Return (WAG4) /* \WMI0.WAG4 */
            }

            Method (WS31, 2, NotSerialized)
            {
                WAG4 = Arg1
                Return (Zero)
            }

            Method (WQ32, 1, NotSerialized)
            {
                Return (WPD4) /* \WMI0.WPD4 */
            }

            Method (WS32, 2, NotSerialized)
            {
                WPD4 = Arg1
                Return (Zero)
            }

            Method (WQ41, 1, NotSerialized)
            {
                Return (WAG5) /* \WMI0.WAG5 */
            }

            Method (WS41, 2, NotSerialized)
            {
                WAG5 = Arg1
                Return (Zero)
            }

            Method (WQ42, 1, NotSerialized)
            {
                Return (WPD5) /* \WMI0.WPD5 */
            }

            Method (WS42, 2, NotSerialized)
            {
                WPD5 = Arg1
                Return (Zero)
            }

            Method (WQ51, 1, NotSerialized)
            {
                Return (WAG6) /* \WMI0.WAG6 */
            }

            Method (WS51, 2, NotSerialized)
            {
                WAG6 = Arg1
                Return (Zero)
            }

            Method (WQ52, 1, NotSerialized)
            {
                Return (WPD6) /* \WMI0.WPD6 */
            }

            Method (WS52, 2, NotSerialized)
            {
                WPD6 = Arg1
                Return (Zero)
            }

            Method (WQ61, 1, NotSerialized)
            {
                Return (WAG7) /* \WMI0.WAG7 */
            }

            Method (WS61, 2, NotSerialized)
            {
                WAG7 = Arg1
                Return (Zero)
            }

            Method (WQ62, 1, NotSerialized)
            {
                Return (WPD7) /* \WMI0.WPD7 */
            }

            Method (WS62, 2, NotSerialized)
            {
                WPD7 = Arg1
                Return (Zero)
            }

            Method (WQ71, 1, NotSerialized)
            {
                Return (WAG8) /* \WMI0.WAG8 */
            }

            Method (WS71, 2, NotSerialized)
            {
                WAG8 = Arg1
                Return (Zero)
            }

            Method (WQ72, 1, NotSerialized)
            {
                Return (WPD8) /* \WMI0.WPD8 */
            }

            Method (WS72, 2, NotSerialized)
            {
                WPD8 = Arg1
                Return (Zero)
            }

            Method (WM05, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, WMA5)
                If ((WMA5 == One))
                {
                    WG_F (PM_B, (PM_B + 0x1000), One)
                    Return (Zero)
                }

                If ((WMA5 == 0x02))
                {
                    WG_F ((PM_B + 0x0100), (PM_B + 0x2000), 0x02)
                    Return (Zero)
                }

                If ((WMA5 == 0x03))
                {
                    WG_F ((PM_B + 0x0200), (PM_B + 0x3000), 0x03)
                    Return (Zero)
                }

                If ((WMA5 == 0x04))
                {
                    WG_F ((PM_B + 0x0300), (PM_B + 0x4000), 0x04)
                    Return (Zero)
                }

                If ((WMA5 == 0x05))
                {
                    WG_F ((PM_B + 0x0400), (PM_B + 0x5000), 0x05)
                    Return (Zero)
                }

                If ((WMA5 == 0x06))
                {
                    WG_F ((PM_B + 0x0500), (PM_B + 0x6000), 0x06)
                    Return (Zero)
                }

                If ((WMA5 == 0x07))
                {
                    WG_F ((PM_B + 0x0600), (PM_B + 0x7000), 0x07)
                    Return (Zero)
                }

                If ((WMA5 == 0x08))
                {
                    WG_F ((PM_B + 0x0700), (PM_B + 0x8000), 0x08)
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (WM06, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, WM6A)
                Local0 = IN_T (WM6A)
                Return (Local0)
            }

            Method (WM07, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, WM7A)
                Local0 = WD_G (WM7A)
                Return (Local0)
            }

            Method (NTFY, 1, Serialized)
            {
                XVCD = Arg0
                Notify (WMI0, 0x80) // Status Change
            }

            Method (WSMI, 1, Serialized)
            {
                PM_S = Arg0
                ISMI (0xDF)
                Stall (0xFF)
            }

            Name (WQBA, Buffer (0x0914)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x04, 0x09, 0x00, 0x00, 0x50, 0x67, 0x00, 0x00,  // ....Pg..
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0xC7, 0xB2, 0x00, 0x01, 0x06, 0x18, 0x42,  // (......B
                /* 0020 */  0x10, 0x2B, 0x10, 0x92, 0x2B, 0x81, 0x42, 0x04,  // .+..+.B.
                /* 0028 */  0x0A, 0x44, 0x24, 0x81, 0x30, 0x28, 0x0D, 0x20,  // .D$.0(. 
                /* 0030 */  0x92, 0x03, 0x21, 0x17, 0x4C, 0x4C, 0x80, 0x08,  // ..!.LL..
                /* 0038 */  0x08, 0x79, 0x15, 0x60, 0x53, 0x80, 0x49, 0x10,  // .y.`S.I.
                /* 0040 */  0xF5, 0xEF, 0x0F, 0x51, 0x12, 0x1C, 0x4A, 0x08,  // ...Q..J.
                /* 0048 */  0x84, 0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00,  // .$.0/@..
                /* 0050 */  0xC3, 0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31,  // ..l.0-.1
                /* 0058 */  0x24, 0x95, 0x06, 0x4E, 0x09, 0x2C, 0x05, 0x42,  // $..N.,.B
                /* 0060 */  0x42, 0x05, 0x28, 0x17, 0xE0, 0x5B, 0x80, 0x76,  // B.(..[.v
                /* 0068 */  0x44, 0x49, 0x16, 0xB0, 0xA3, 0x30, 0x09, 0x3C,  // DI...0.<
                /* 0070 */  0x8A, 0xC8, 0x46, 0xE3, 0xD0, 0xD8, 0x61, 0x58,  // ..F...aX
                /* 0078 */  0x26, 0x98, 0x06, 0x71, 0x18, 0x65, 0x23, 0x8B,  // &..q.e#.
                /* 0080 */  0xC0, 0x13, 0xEA, 0x74, 0x74, 0x05, 0x08, 0x13,  // ...tt...
                /* 0088 */  0x20, 0x1E, 0x55, 0x18, 0xCD, 0x41, 0x91, 0x08,  //  .U..A..
                /* 0090 */  0xD0, 0x28, 0x31, 0x63, 0x22, 0xB0, 0x9D, 0x63,  // .(1c"..c
                /* 0098 */  0x6B, 0x14, 0xA7, 0x51, 0xB8, 0x00, 0xE9, 0x18,  // k..Q....
                /* 00A0 */  0x1A, 0xC1, 0x71, 0x85, 0xF7, 0xC8, 0x8E, 0x90,  // ..q.....
                /* 00A8 */  0x59, 0x1C, 0x8B, 0x20, 0x43, 0x85, 0xEB, 0x10,  // Y.. C...
                /* 00B0 */  0x4E, 0x73, 0x32, 0xC8, 0x89, 0x9C, 0x49, 0xEC,  // Ns2...I.
                /* 00B8 */  0x08, 0x05, 0x09, 0xB0, 0x8E, 0x21, 0xA4, 0x58,  // .....!.X
                /* 00C0 */  0x51, 0x6A, 0xC6, 0xD3, 0x0C, 0x82, 0x34, 0x0A,  // Qj....4.
                /* 00C8 */  0xA5, 0xC9, 0x79, 0x00, 0x61, 0xC2, 0xC3, 0x20,  // ..y.a.. 
                /* 00D0 */  0x30, 0xFE, 0x11, 0x61, 0x64, 0x40, 0xC8, 0x33,  // 0..ad@.3
                /* 00D8 */  0xB2, 0x86, 0x6A, 0x02, 0xBB, 0x17, 0xE0, 0x6C,  // ..j....l
                /* 00E0 */  0x6A, 0x32, 0x36, 0x39, 0x29, 0x9B, 0x1D, 0x41,  // j269)..A
                /* 00E8 */  0x68, 0x0B, 0x5E, 0xDA, 0x04, 0x18, 0x04, 0x13,  // h.^.....
                /* 00F0 */  0x4A, 0x24, 0x0F, 0xE5, 0x78, 0xA2, 0x54, 0x88,  // J$..x.T.
                /* 00F8 */  0xA4, 0xF1, 0xC5, 0x88, 0x52, 0x1C, 0x8A, 0x60,  // ....R..`
                /* 0100 */  0x23, 0xB6, 0x86, 0x21, 0x98, 0x98, 0x21, 0xE3,  // #..!..!.
                /* 0108 */  0x07, 0xB7, 0xFD, 0x83, 0x01, 0x53, 0x00, 0xD1,  // .....S..
                /* 0110 */  0x02, 0x88, 0x22, 0x8D, 0x06, 0x75, 0x18, 0x48,  // .."..u.H
                /* 0118 */  0xF0, 0x70, 0xE0, 0x71, 0x9E, 0xD6, 0xF9, 0x1D,  // .p.q....
                /* 0120 */  0xD7, 0x41, 0x04, 0x39, 0xE1, 0xE3, 0xAA, 0xF3,  // .A.9....
                /* 0128 */  0x54, 0x40, 0x46, 0xC6, 0xFE, 0xFF, 0x58, 0x09,  // T@F...X.
                /* 0130 */  0x3A, 0x38, 0x26, 0x40, 0x71, 0x0D, 0xA8, 0x69,  // :8&@q..i
                /* 0138 */  0x3E, 0x1D, 0xB0, 0x81, 0x86, 0xC3, 0x0C, 0xD1,  // >.......
                /* 0140 */  0xA3, 0x0D, 0x77, 0x02, 0x87, 0xC8, 0x00, 0x3D,  // ..w....=
                /* 0148 */  0xA2, 0x07, 0x03, 0xEC, 0x10, 0x4F, 0xE6, 0x25,  // .....O.%
                /* 0150 */  0xA0, 0x54, 0x01, 0x66, 0x4F, 0x08, 0x9A, 0x76,  // .T.fO..v
                /* 0158 */  0x82, 0xE3, 0xF1, 0x71, 0xC0, 0xF3, 0x39, 0xE1,  // ...q..9.
                /* 0160 */  0x04, 0x96, 0x3F, 0x08, 0xD4, 0xC8, 0x0C, 0xED,  // ..?.....
                /* 0168 */  0x71, 0x9E, 0xD6, 0x5B, 0x81, 0x8F, 0x00, 0x26,  // q..[...&
                /* 0170 */  0xB0, 0x58, 0x08, 0x6D, 0x52, 0xE3, 0x01, 0x02,  // .X.mR...
                /* 0178 */  0x8A, 0x0F, 0x05, 0x42, 0x78, 0x75, 0xF0, 0x7C,  // ...Bxu.|
                /* 0180 */  0x4D, 0x30, 0x32, 0x84, 0x9C, 0x8C, 0x07, 0x35,  // M02....5
                /* 0188 */  0x0A, 0x83, 0xD6, 0x0A, 0xAE, 0x9B, 0x40, 0x02,  // ......@.
                /* 0190 */  0x47, 0x84, 0xD0, 0x67, 0xC3, 0xA2, 0x86, 0x4D,  // G..g...M
                /* 0198 */  0x8F, 0x16, 0xFC, 0x54, 0xC1, 0x20, 0xCF, 0xE0,  // ...T. ..
                /* 01A0 */  0x11, 0xC0, 0x23, 0x39, 0x21, 0x1F, 0x3E, 0x3C,  // ..#9!.><
                /* 01A8 */  0x30, 0xF8, 0xB3, 0xF0, 0x91, 0x02, 0x1C, 0x1E,  // 0.......
                /* 01B0 */  0xC1, 0x84, 0xF3, 0x0A, 0x01, 0x6B, 0xA4, 0xF0,  // .....k..
                /* 01B8 */  0x6F, 0x11, 0x46, 0xF6, 0xA9, 0xE1, 0xB5, 0x21,  // o.F....!
                /* 01C0 */  0x81, 0x0F, 0x1E, 0x81, 0xB1, 0x43, 0xB5, 0x5F,  // .....C._
                /* 01C8 */  0x01, 0x08, 0xC1, 0xA3, 0x3D, 0x0A, 0x3C, 0x7B,  // ....=.<{
                /* 01D0 */  0x44, 0x78, 0xDC, 0xC0, 0xFC, 0xFF, 0x8F, 0x1B,  // Dx......
                /* 01D8 */  0xB0, 0x09, 0x8A, 0x1C, 0x20, 0x7A, 0x0C, 0xFC,  // .... z..
                /* 01E0 */  0x04, 0x71, 0x0A, 0xF1, 0xC3, 0x1F, 0xC3, 0x11,  // .q......
                /* 01E8 */  0x45, 0x89, 0x7C, 0x48, 0x3E, 0x9C, 0x18, 0xE1,  // E.|H>...
                /* 01F0 */  0x10, 0x9E, 0x49, 0xCE, 0xC0, 0x07, 0x0C, 0x4F,  // ..I....O
                /* 01F8 */  0xEB, 0x14, 0x5E, 0x24, 0x3C, 0x02, 0x4C, 0xA0,  // ..^$<.L.
                /* 0200 */  0x43, 0x0C, 0x8D, 0xB2, 0x7E, 0x45, 0x80, 0x41,  // C...~E.A
                /* 0208 */  0x9D, 0x63, 0x00, 0x57, 0x30, 0xCF, 0x31, 0xE0,  // .c.W0.1.
                /* 0210 */  0x3B, 0x3E, 0xF0, 0x6B, 0x00, 0xE6, 0x7C, 0xF2,  // ;>.k..|.
                /* 0218 */  0x14, 0x03, 0x07, 0x97, 0x81, 0xBC, 0x04, 0xC4,  // ........
                /* 0220 */  0x79, 0x77, 0xF1, 0xCD, 0xC4, 0xD7, 0x02, 0xE3,  // yw......
                /* 0228 */  0x3E, 0xC4, 0x80, 0x61, 0x60, 0x0F, 0x31, 0xE0,  // >..a`.1.
                /* 0230 */  0xFC, 0xFF, 0x1F, 0x62, 0xE0, 0x05, 0x3F, 0xC4,  // ...b..?.
                /* 0238 */  0x00, 0x34, 0x91, 0x77, 0xBE, 0x90, 0x91, 0x55,  // .4.w...U
                /* 0240 */  0xF8, 0x10, 0x83, 0xBA, 0x21, 0x9C, 0xCF, 0x43,  // ....!..C
                /* 0248 */  0xCA, 0xD3, 0x01, 0x93, 0x73, 0xCE, 0xA0, 0x87,  // ....s...
                /* 0250 */  0x18, 0xE0, 0x01, 0x88, 0xF7, 0x3E, 0x65, 0x32,  // .....>e2
                /* 0258 */  0x82, 0x33, 0x35, 0xA0, 0x51, 0x7D, 0xAE, 0x00,  // .35.Q}..
                /* 0260 */  0xC7, 0x79, 0x82, 0xFF, 0xFF, 0xCF, 0x13, 0x18,  // .y......
                /* 0268 */  0xBC, 0xD7, 0x0A, 0x76, 0x0C, 0x60, 0x67, 0x0A,  // ...v.`g.
                /* 0270 */  0x38, 0x57, 0x0A, 0x9F, 0x5A, 0x7C, 0x4E, 0xF0,  // 8W..Z|N.
                /* 0278 */  0x18, 0xF9, 0x58, 0x0C, 0x1A, 0xF2, 0x41, 0xC0,  // ..X...A.
                /* 0280 */  0x0B, 0xB4, 0xAC, 0xB3, 0x0D, 0x68, 0x2E, 0x13,  // .....h..
                /* 0288 */  0xCF, 0x3D, 0xD8, 0xA3, 0x0D, 0x18, 0x90, 0x2A,  // .=.....*
                /* 0290 */  0xBD, 0x05, 0xE8, 0x02, 0x82, 0x23, 0xF0, 0xC1,  // .....#..
                /* 0298 */  0x06, 0xF8, 0xC4, 0x3A, 0xD5, 0xD0, 0x30, 0x63,  // ...:..0c
                /* 02A0 */  0x54, 0x10, 0x18, 0xD4, 0xC1, 0x06, 0x70, 0x75,  // T.....pu
                /* 02A8 */  0xE8, 0xF0, 0xC1, 0x06, 0x3C, 0xFF, 0xFF, 0x11,  // ....<...
                /* 02B0 */  0xB2, 0xC1, 0x9C, 0x44, 0x98, 0xA3, 0x08, 0xF6,  // ...D....
                /* 02B8 */  0x2C, 0xE1, 0x9B, 0x0D, 0x78, 0xB0, 0xB1, 0x27,  // ,...x..'
                /* 02C0 */  0x1B, 0xB0, 0x9C, 0x09, 0x9E, 0x6C, 0x80, 0x49,  // .....l.I
                /* 02C8 */  0xF8, 0x93, 0x0D, 0x40, 0x1E, 0xD8, 0x27, 0x81,  // ...@..'.
                /* 02D0 */  0x77, 0x80, 0xFF, 0xFF, 0x93, 0x0D, 0x60, 0xF1,  // w.....`.
                /* 02D8 */  0x4A, 0x81, 0x3D, 0xD9, 0x40, 0x5E, 0xBC, 0x4E,  // J.=.@^.N
                /* 02E0 */  0x36, 0xE0, 0x3A, 0x03, 0x82, 0xED, 0x08, 0x02,  // 6.:.....
                /* 02E8 */  0xF3, 0x6C, 0x03, 0x9C, 0xCE, 0x80, 0xC0, 0xE1,  // .l......
                /* 02F0 */  0xFF, 0x7F, 0x06, 0x04, 0x1C, 0x9E, 0x5B, 0x9E,  // ......[.
                /* 02F8 */  0x01, 0xC1, 0x75, 0xF2, 0x64, 0x67, 0x40, 0x70,  // ..u.dg@p
                /* 0300 */  0xA1, 0x3C, 0x03, 0x02, 0x66, 0xFF, 0xFF, 0x67,  // .<..f..g
                /* 0308 */  0x40, 0xC0, 0xD2, 0xE9, 0x80, 0x9D, 0x01, 0x01,  // @.......
                /* 0310 */  0x4E, 0xFD, 0xFF, 0x2F, 0x20, 0xFC, 0x0C, 0x08,  // N../ ...
                /* 0318 */  0x30, 0xEC, 0x66, 0x03, 0x1B, 0x1B, 0x7B, 0xB2,  // 0.f...{.
                /* 0320 */  0x01, 0xCB, 0x19, 0x10, 0x77, 0xB2, 0x01, 0xEF,  // ....w...
                /* 0328 */  0xFF, 0xFF, 0x0C, 0x08, 0x30, 0xE9, 0x64, 0x03,  // ....0.d.
                /* 0330 */  0x58, 0xFB, 0xFF, 0x9F, 0x01, 0x01, 0x63, 0x67,  // X.....cg
                /* 0338 */  0x1B, 0x60, 0x75, 0x06, 0x04, 0xBC, 0xFF, 0xFF,  // .`u.....
                /* 0340 */  0xCF, 0x80, 0xF8, 0x63, 0xCB, 0x33, 0x20, 0xB8,  // ...c.3 .
                /* 0348 */  0x70, 0x9F, 0x01, 0xC1, 0x87, 0xF1, 0x0C, 0x08,  // p.......
                /* 0350 */  0xF0, 0xEF, 0x74, 0xC0, 0x8E, 0x36, 0xFC, 0xFF,  // ..t..6..
                /* 0358 */  0x7F, 0x06, 0x04, 0x18, 0x75, 0x10, 0x60, 0x67,  // ....u.`g
                /* 0360 */  0x40, 0xC0, 0xD3, 0xFF, 0xFF, 0x0C, 0x08, 0x58,  // @......X
                /* 0368 */  0xBB, 0xD9, 0xC0, 0xC6, 0xC6, 0x9E, 0x6C, 0xC0,  // ......l.
                /* 0370 */  0x72, 0x06, 0xC4, 0x9D, 0x6C, 0xC0, 0x7F, 0x06,  // r...l...
                /* 0378 */  0x04, 0x5C, 0xFD, 0xFF, 0xCF, 0x80, 0x80, 0x95,  // .\......
                /* 0380 */  0x93, 0x0D, 0xE0, 0xF1, 0x0C, 0x08, 0xF8, 0x39,  // .......9
                /* 0388 */  0x0A, 0xFC, 0xFF, 0x9F, 0x01, 0x01, 0x6E, 0xCD,  // ......n.
                /* 0390 */  0xE1, 0x19, 0x10, 0x5C, 0x33, 0xF3, 0x19, 0x10,  // ...\3...
                /* 0398 */  0x6C, 0xF7, 0x1A, 0x9F, 0x01, 0xC1, 0xFF, 0xFF,  // l.......
                /* 03A0 */  0x3F, 0x03, 0x02, 0xEC, 0x39, 0x1D, 0xB0, 0xA3,  // ?...9...
                /* 03A8 */  0x0D, 0xE0, 0xEE, 0xFF, 0x7F, 0x06, 0x04, 0xEC,  // ........
                /* 03B0 */  0x1C, 0x04, 0xD8, 0x19, 0x10, 0xE0, 0xD6, 0xFF,  // ........
                /* 03B8 */  0xFF, 0x66, 0x03, 0x1F, 0x1B, 0x7B, 0xB2, 0x01,  // .f...{..
                /* 03C0 */  0xCB, 0x19, 0x10, 0x77, 0xB2, 0x01, 0xFF, 0x19,  // ...w....
                /* 03C8 */  0x10, 0x60, 0xD0, 0xC9, 0x06, 0xF6, 0xFF, 0xFF,  // .`......
                /* 03D0 */  0x0C, 0x08, 0x30, 0xE9, 0x6C, 0x03, 0xAC, 0xCE,  // ..0.l...
                /* 03D8 */  0x80, 0xC0, 0xEF, 0xFF, 0x7F, 0x06, 0x04, 0x3C,  // .......<
                /* 03E0 */  0xDD, 0x5B, 0x9E, 0x01, 0xC1, 0x85, 0xFB, 0x0C,  // .[......
                /* 03E8 */  0x08, 0x3E, 0x88, 0x67, 0x40, 0xC0, 0xFA, 0xFF,  // .>.g@...
                /* 03F0 */  0xFF, 0x0C, 0x08, 0x98, 0x38, 0x1D, 0xB0, 0x33,  // ....8..3
                /* 03F8 */  0x20, 0xC0, 0xAC, 0x83, 0x00, 0x3B, 0xD8, 0xE0,  //  ....;..
                /* 0400 */  0xFF, 0xFF, 0x67, 0x40, 0x80, 0x4D, 0x37, 0x1B,  // ..g@.M7.
                /* 0408 */  0xD8, 0xD8, 0xD8, 0x93, 0x0D, 0x58, 0xCE, 0x80,  // .....X..
                /* 0410 */  0xB8, 0x93, 0x0D, 0xF8, 0xCF, 0x80, 0x70, 0xFE,  // ......p.
                /* 0418 */  0xFF, 0x67, 0x40, 0x80, 0x2D, 0x27, 0x1B, 0xC0,  // .g@.-'..
                /* 0420 */  0xE3, 0x95, 0x02, 0xF3, 0xFF, 0x3F, 0x03, 0x02,  // .....?..
                /* 0428 */  0x56, 0xCE, 0x36, 0xC0, 0xEA, 0x0C, 0x08, 0xF0,  // V.6.....
                /* 0430 */  0xE0, 0xE0, 0xF2, 0x66, 0x83, 0xF9, 0xFF, 0x9F,  // ...f....
                /* 0438 */  0x01, 0xC1, 0x80, 0xFB, 0x0C, 0x08, 0xBE, 0xFB,  // ........
                /* 0440 */  0xC1, 0x33, 0x20, 0xC0, 0xBF, 0xD3, 0x01, 0x3B,  // .3 ....;
                /* 0448 */  0xDA, 0x80, 0xE3, 0xFF, 0x7F, 0x06, 0x04, 0x58,  // .......X
                /* 0450 */  0x73, 0x10, 0x60, 0x67, 0x40, 0xC0, 0xE1, 0xFF,  // s.`g@...
                /* 0458 */  0xFF, 0x0C, 0x08, 0x98, 0xB9, 0xD9, 0xC0, 0xC6,  // ........
                /* 0460 */  0xC6, 0x9E, 0x6C, 0xC0, 0x72, 0x06, 0xC4, 0x9D,  // ..l.r...
                /* 0468 */  0x6C, 0xC0, 0x7F, 0x06, 0x04, 0x3C, 0xFE, 0xFF,  // l....<..
                /* 0470 */  0xCF, 0x80, 0xC0, 0xFC, 0x64, 0x03, 0x78, 0x3C,  // ....d.x<
                /* 0478 */  0x03, 0x02, 0x7E, 0xCE, 0x36, 0xB0, 0xFF, 0xFF,  // ..~.6...
                /* 0480 */  0x67, 0x40, 0x80, 0x3F, 0xDE, 0xCE, 0x80, 0x20,  // g@.?... 
                /* 0488 */  0xC3, 0x7D, 0x06, 0x04, 0xDF, 0xFD, 0xE0, 0x19,  // .}......
                /* 0490 */  0x10, 0xD8, 0xFD, 0xFF, 0xCF, 0x80, 0x00, 0x43,  // .......C
                /* 0498 */  0x4E, 0x07, 0xEC, 0x0C, 0x08, 0x78, 0xFD, 0xFF,  // N....x..
                /* 04A0 */  0x9F, 0x01, 0x01, 0x03, 0x07, 0x01, 0x76, 0x06,  // ......v.
                /* 04A8 */  0x04, 0xD8, 0x75, 0xB3, 0x81, 0xF9, 0xFF, 0xBF,  // ..u.....
                /* 04B0 */  0x60, 0xC1, 0x38, 0xD9, 0x80, 0xE5, 0x0C, 0x88,  // `.8.....
                /* 04B8 */  0x3B, 0xD9, 0x80, 0xFF, 0x0C, 0x08, 0x30, 0xE8,  // ;.....0.
                /* 04C0 */  0x64, 0x03, 0xE6, 0xFF, 0xFF, 0x19, 0x10, 0x60,  // d......`
                /* 04C8 */  0xCB, 0xD9, 0x06, 0x58, 0x9D, 0x01, 0x81, 0xFB,  // ...X....
                /* 04D0 */  0xFF, 0xFF, 0x0C, 0x08, 0xB8, 0x38, 0x1A, 0x3C,  // .....8.<
                /* 04D8 */  0x03, 0x82, 0xEB, 0x96, 0xE0, 0x33, 0x20, 0xD8,  // .....3 .
                /* 04E0 */  0xEE, 0x07, 0xCF, 0x80, 0x00, 0x23, 0xFE, 0xFF,  // .....#..
                /* 04E8 */  0x67, 0x40, 0x60, 0x7B, 0x3A, 0x60, 0x67, 0x40,  // g@`{:`g@
                /* 04F0 */  0x80, 0x59, 0x07, 0x01, 0x76, 0xB0, 0x01, 0xD7,  // .Y..v...
                /* 04F8 */  0xFF, 0xFF, 0x0C, 0x08, 0x30, 0xE6, 0x66, 0x03,  // ....0.f.
                /* 0500 */  0x1B, 0x1B, 0x7B, 0xB2, 0x01, 0xCB, 0x19, 0x10,  // ..{.....
                /* 0508 */  0x77, 0xB2, 0x01, 0xFF, 0x19, 0x10, 0x7C, 0xFF,  // w.....|.
                /* 0510 */  0xFF, 0x33, 0x20, 0xC0, 0x88, 0x93, 0x0D, 0xE0,  // .3 .....
                /* 0518 */  0xF1, 0x0C, 0x08, 0x96, 0xFF, 0xFF, 0x19, 0x10,  // ........
                /* 0520 */  0x98, 0x9F, 0x6D, 0x80, 0x55, 0xB4, 0x83, 0x0D,  // ..m.U...
                /* 0528 */  0x2A, 0xCC, 0xD9, 0x06, 0x10, 0x3D, 0xEF, 0x87,  // *....=..
                /* 0530 */  0x0F, 0x1F, 0x0C, 0x7C, 0x10, 0xC0, 0xDC, 0x6C,  // ...|...l
                /* 0538 */  0xE0, 0xDC, 0x2A, 0x7C, 0x5D, 0xF1, 0x41, 0xC4,  // ..*|].A.
                /* 0540 */  0x87, 0x07, 0xF6, 0xFF, 0x87, 0x8A, 0x13, 0x9E,  // ........
                /* 0548 */  0x9F, 0x1C, 0x7C, 0xB6, 0x81, 0x7D, 0x9A, 0x79,  // ..|..}.y
                /* 0550 */  0x08, 0xC4, 0x21, 0x3C, 0xDB, 0x80, 0xFD, 0x4D,  // ..!<...M
                /* 0558 */  0xE1, 0x63, 0x81, 0xCF, 0x36, 0x00, 0x3F, 0x44,  // .c..6.?D
                /* 0560 */  0x1C, 0x30, 0xE4, 0x64, 0x3C, 0xA8, 0x51, 0x58,  // .0.d<.QX
                /* 0568 */  0xE3, 0x25, 0x81, 0x4C, 0xDB, 0x04, 0x43, 0x43,  // .%.L..CC
                /* 0570 */  0xE8, 0xB4, 0xE4, 0xB3, 0x0D, 0x38, 0xFF, 0xFF,  // .....8..
                /* 0578 */  0x67, 0x1B, 0x70, 0x9E, 0x4E, 0xF0, 0x67, 0x1B,  // g.p.N.g.
                /* 0580 */  0x30, 0x9D, 0x25, 0x30, 0x04, 0x1E, 0x32, 0xFC,  // 0.%0..2.
                /* 0588 */  0xD3, 0x0C, 0x3F, 0x3E, 0xBC, 0x3F, 0x24, 0xF0,  // ..?>.?$.
                /* 0590 */  0xB9, 0x0F, 0x6C, 0xA7, 0x0E, 0x38, 0x87, 0x19,  // ..l..8..
                /* 0598 */  0x60, 0x32, 0x26, 0xDC, 0x91, 0xC2, 0x43, 0xE0,  // `2&...C.
                /* 05A0 */  0x03, 0x68, 0x75, 0x7E, 0xE4, 0x58, 0x78, 0x56,  // .hu~.XxV
                /* 05A8 */  0xB8, 0xB3, 0x0C, 0x1F, 0x15, 0xE6, 0x74, 0x83,  // ......t.
                /* 05B0 */  0x8B, 0xF2, 0x3E, 0x30, 0x81, 0x82, 0xBC, 0x0B,  // ..>0....
                /* 05B8 */  0x24, 0xF2, 0x81, 0x40, 0x61, 0x7C, 0xBA, 0x01,  // $..@a|..
                /* 05C0 */  0x8E, 0xFF, 0xFF, 0xD3, 0x0D, 0xF0, 0x98, 0xA4,  // ........
                /* 05C8 */  0x4F, 0x37, 0x60, 0x83, 0x88, 0x18, 0xAC, 0x68,  // O7`....h
                /* 05D0 */  0x30, 0xDD, 0x9A, 0x70, 0xB7, 0x1B, 0x1C, 0x5E,  // 0..p...^
                /* 05D8 */  0xB8, 0x18, 0xA7, 0xC3, 0x10, 0xA2, 0x3C, 0xB0,  // ......<.
                /* 05E0 */  0x18, 0x99, 0x1F, 0x03, 0xC1, 0x70, 0x9B, 0x79,  // .....p.y
                /* 05E8 */  0xB6, 0x01, 0x2E, 0xE1, 0x0E, 0x05, 0xFA, 0x43,  // .......C
                /* 05F0 */  0xF9, 0x6C, 0x03, 0xF8, 0xFC, 0xFF, 0x9F, 0x6D,  // .l.....m
                /* 05F8 */  0x80, 0xCF, 0x41, 0x04, 0x77, 0x32, 0x01, 0xC3,  // ..A.w2..
                /* 0600 */  0x89, 0x01, 0xD6, 0xB1, 0x0D, 0xB8, 0x88, 0x5B,  // .......[
                /* 0608 */  0xA9, 0x4E, 0x3B, 0x16, 0x06, 0x22, 0x1B, 0x87,  // .N;.."..
                /* 0610 */  0x45, 0x3A, 0x54, 0x0B, 0xA1, 0xD2, 0x90, 0x7C,  // E:T....|
                /* 0618 */  0x04, 0x3A, 0xBB, 0x47, 0x85, 0xE7, 0x04, 0x01,  // .:.G....
                /* 0620 */  0x09, 0xD4, 0x10, 0x0E, 0x0F, 0xA1, 0xE8, 0xA3,  // ........
                /* 0628 */  0xA1, 0xC0, 0x0E, 0x0B, 0x46, 0x41, 0x3C, 0x7A,  // ....FA<z
                /* 0630 */  0x07, 0x81, 0xD0, 0xA1, 0x08, 0x7F, 0x62, 0xF0,  // ......b.
                /* 0638 */  0x7C, 0xDE, 0xF8, 0x4D, 0xF0, 0xB0, 0xF1, 0xB4,  // |..M....
                /* 0640 */  0x00, 0xEB, 0x62, 0xE0, 0x63, 0x00, 0x3F, 0x13,  // ..b.c.?.
                /* 0648 */  0xE2, 0x0F, 0xFD, 0x26, 0xE0, 0xC7, 0x1E, 0xF0,  // ...&....
                /* 0650 */  0x09, 0x3C, 0x0D, 0x80, 0x02, 0xC8, 0x93, 0xF7,  // .<......
                /* 0658 */  0xB1, 0xE6, 0x01, 0x80, 0xCD, 0xE1, 0xC9, 0xC6,  // ........
                /* 0660 */  0x68, 0xFF, 0xFF, 0x47, 0x1A, 0x9C, 0x8C, 0x95,  // h..G....
                /* 0668 */  0xEA, 0x4B, 0xE3, 0x33, 0xA3, 0xC7, 0xC5, 0xCF,  // .K.3....
                /* 0670 */  0x03, 0x3E, 0xB8, 0xB0, 0xB3, 0x01, 0xEE, 0x0C,  // .>......
                /* 0678 */  0x85, 0x81, 0xF5, 0x48, 0x39, 0xAC, 0xD1, 0xC2,  // ...H9...
                /* 0680 */  0x1E, 0xF0, 0x43, 0x83, 0x2F, 0x1C, 0x9E, 0x99,  // ..C./...
                /* 0688 */  0xCF, 0x28, 0x3E, 0x6A, 0x80, 0xE5, 0x38, 0x05,  // .(>j..8.
                /* 0690 */  0xFF, 0xB0, 0x82, 0x3B, 0xC9, 0xC0, 0x9D, 0xE6,  // ...;....
                /* 0698 */  0x23, 0xC1, 0xA3, 0x9E, 0x87, 0x1E, 0xDE, 0x47,  // #......G
                /* 06A0 */  0x18, 0xCF, 0x2E, 0x88, 0xAF, 0x9D, 0xFC, 0xF2,  // ........
                /* 06A8 */  0x7D, 0x5A, 0xBE, 0xEF, 0xF8, 0xE8, 0x63, 0xA0,  // }Z....c.
                /* 06B0 */  0x27, 0x86, 0xA8, 0xAF, 0x27, 0x9E, 0x00, 0xBF,  // '...'...
                /* 06B8 */  0x50, 0x38, 0xC6, 0xA9, 0x88, 0x06, 0x5A, 0xA9,  // P8....Z.
                /* 06C0 */  0xA4, 0xAE, 0x99, 0xC2, 0xF8, 0x54, 0x04, 0xB8,  // .....T..
                /* 06C8 */  0x8A, 0x30, 0x78, 0x50, 0xFC, 0xFF, 0x4F, 0x45,  // .0xP..OE
                /* 06D0 */  0xD8, 0x1B, 0x86, 0x2F, 0x03, 0x3E, 0x14, 0x81,  // .../.>..
                /* 06D8 */  0xE5, 0x40, 0xE2, 0x89, 0xBD, 0x04, 0xF8, 0xDC,  // .@......
                /* 06E0 */  0x80, 0xC3, 0x39, 0x03, 0x7E, 0x32, 0x02, 0xC3,  // ..9.~2..
                /* 06E8 */  0x5D, 0xFB, 0xC9, 0x08, 0xB8, 0x44, 0x3B, 0x19,  // ]....D;.
                /* 06F0 */  0x01, 0x34, 0x39, 0xDF, 0xE1, 0xFE, 0xFF, 0x27,  // .49....'
                /* 06F8 */  0x23, 0x30, 0x9C, 0x1A, 0x60, 0x1C, 0x8C, 0x80,  // #0..`...
                /* 0700 */  0x8B, 0xA4, 0x83, 0x11, 0x95, 0x73, 0x30, 0x82,  // .....s0.
                /* 0708 */  0x72, 0x84, 0xC0, 0x1D, 0x8C, 0xC0, 0x3F, 0xA6,  // r.....?.
                /* 0710 */  0x33, 0x7A, 0x1D, 0x38, 0x75, 0x1F, 0x8C, 0x00,  // 3z.8u...
                /* 0718 */  0x73, 0xC3, 0xF5, 0xC1, 0x08, 0xF8, 0xFC, 0xFF,  // s.......
                /* 0720 */  0x0F, 0x46, 0xC0, 0xE5, 0x70, 0xE1, 0x83, 0x11,  // .F..p...
                /* 0728 */  0xB8, 0x0F, 0x0B, 0xFC, 0x10, 0x83, 0x25, 0x28,  // ......%(
                /* 0730 */  0xFE, 0x35, 0x64, 0x02, 0x85, 0x5A, 0xA4, 0x24,  // .5d..Z.$
                /* 0738 */  0x2F, 0x97, 0xC2, 0xF8, 0x4C, 0x04, 0xB8, 0x8A,  // /...L...
                /* 0740 */  0x71, 0x26, 0x02, 0x21, 0xC6, 0xE3, 0xB1, 0x11,  // q&.!....
                /* 0748 */  0xCF, 0x38, 0x6C, 0xB8, 0xE7, 0x8B, 0xA7, 0x22,  // .8l...."
                /* 0750 */  0xB0, 0xCF, 0xE1, 0x0C, 0xFA, 0xBC, 0x6E, 0xE9,  // ......n.
                /* 0758 */  0x54, 0x84, 0xFF, 0xFF, 0x9F, 0x8A, 0x60, 0x1C,  // T.....`.
                /* 0760 */  0x83, 0x9E, 0x8A, 0x80, 0x4B, 0xBC, 0x53, 0x11,  // ....K.S.
                /* 0768 */  0x40, 0x93, 0x13, 0xC4, 0x53, 0x11, 0xB8, 0xCE,  // @...S...
                /* 0770 */  0x0D, 0x30, 0xCF, 0x45, 0xE0, 0xFB, 0xFF, 0x9F,  // .0.E....
                /* 0778 */  0x8B, 0xE0, 0x3E, 0x08, 0x7C, 0x18, 0x22, 0xE7,  // ..>.|.".
                /* 0780 */  0x22, 0x74, 0x78, 0x2A, 0x1D, 0x22, 0x70, 0xB1,  // "tx*."p.
                /* 0788 */  0xCF, 0x45, 0x74, 0xD8, 0x0E, 0x4C, 0xA2, 0x43,  // .Et..L.C
                /* 0790 */  0xBD, 0xCF, 0x45, 0x3C, 0xE6, 0x91, 0x86, 0x82,  // ..E<....
                /* 0798 */  0x18, 0xD0, 0x19, 0xCE, 0x45, 0x68, 0x15, 0xE7,  // ....Eh..
                /* 07A0 */  0x22, 0xE4, 0x20, 0xDF, 0x16, 0xD8, 0xEC, 0x7C,  // ". ....|
                /* 07A8 */  0x0F, 0xE0, 0x37, 0x15, 0x5F, 0x8B, 0x18, 0x6E,  // ..7._..n
                /* 07B0 */  0x35, 0xD7, 0x1D, 0x14, 0x98, 0x6F, 0x45, 0x18,  // 5....oE.
                /* 07B8 */  0x5D, 0xA7, 0x22, 0x90, 0xE9, 0xBB, 0x14, 0x81,  // ].".....
                /* 07C0 */  0x1C, 0x9D, 0x9F, 0xA8, 0xC0, 0x87, 0xFF, 0x3C,  // .......<
                /* 07C8 */  0xE0, 0x21, 0x3C, 0x51, 0xC1, 0x3D, 0x13, 0xBC,  // .!<Q.=..
                /* 07D0 */  0xF5, 0xF8, 0x44, 0x05, 0xFB, 0x90, 0x4B, 0x4E,  // ..D...KN
                /* 07D8 */  0x54, 0x40, 0xE3, 0xFF, 0x7F, 0xA2, 0x02, 0x5F,  // T@....._
                /* 07E0 */  0xEC, 0x13, 0x15, 0xA0, 0xE7, 0x08, 0x82, 0x3B,  // .......;
                /* 07E8 */  0xB9, 0x82, 0xF5, 0x98, 0x81, 0x51, 0x68, 0xD3,  // .....Qh.
                /* 07F0 */  0xA7, 0x46, 0xA3, 0x56, 0x0D, 0xCA, 0xD4, 0x28,  // .F.V...(
                /* 07F8 */  0xD3, 0xA0, 0x56, 0x9F, 0x4A, 0x8D, 0x19, 0xBB,  // ..V.J...
                /* 0800 */  0x0F, 0x58, 0xE2, 0x3B, 0x41, 0xC3, 0x75, 0x40,  // .X.;A.u@
                /* 0808 */  0x10, 0x1A, 0x89, 0x42, 0x20, 0x8E, 0xF2, 0xA7,  // ...B ...
                /* 0810 */  0x10, 0x88, 0x85, 0x78, 0x00, 0x61, 0x42, 0x57,  // ...x.aBW
                /* 0818 */  0x24, 0x10, 0x8B, 0x5B, 0x9B, 0x40, 0x1C, 0x0D,  // $..[.@..
                /* 0820 */  0x84, 0x46, 0x5F, 0x9D, 0x40, 0x1C, 0xD8, 0x07,  // .F_.@...
                /* 0828 */  0x08, 0x93, 0xFB, 0x26, 0x10, 0x88, 0xE3, 0x18,  // ...&....
                /* 0830 */  0x01, 0x61, 0x11, 0x5E, 0x54, 0x3A, 0x06, 0x10,  // .a.^T:..
                /* 0838 */  0x2B, 0x20, 0x4C, 0xA0, 0x16, 0x10, 0x26, 0xCB,  // + L...&.
                /* 0840 */  0x0C, 0x08, 0x0B, 0x05, 0x42, 0x43, 0x7F, 0x39,  // ....BC.9
                /* 0848 */  0x04, 0xE2, 0xA0, 0x76, 0x40, 0x98, 0x4C, 0x3D,  // ...v@.L=
                /* 0850 */  0x20, 0x2C, 0x86, 0x1F, 0x10, 0x26, 0x5E, 0xD1,  //  ,...&^.
                /* 0858 */  0x60, 0x28, 0x08, 0x95, 0xF6, 0xE6, 0xD2, 0x61,  // `(.....a
                /* 0860 */  0x82, 0x78, 0x02, 0x61, 0x61, 0x40, 0xE8, 0xFF,  // .x.aa@..
                /* 0868 */  0x3F, 0xAC, 0x28, 0x10, 0x16, 0xD1, 0xD5, 0x60,  // ?.(....`
                /* 0870 */  0xE8, 0xDB, 0x40, 0x20, 0x0E, 0xF0, 0x4C, 0x0A,  // ..@ ..L.
                /* 0878 */  0x42, 0x44, 0x3F, 0x25, 0x04, 0xE2, 0xC8, 0x20,  // BD?%... 
                /* 0880 */  0x54, 0xD2, 0x1F, 0x42, 0x43, 0x25, 0x7F, 0xA5,  // T..BC%..
                /* 0888 */  0x83, 0x61, 0x20, 0x34, 0xE6, 0x83, 0xE9, 0x50,  // .a 4...P
                /* 0890 */  0xD9, 0x5F, 0x4B, 0x20, 0x16, 0xA6, 0x0E, 0x84,  // ._K ....
                /* 0898 */  0x09, 0x77, 0x37, 0x54, 0xFA, 0x19, 0xD1, 0x60,  // .w7T...`
                /* 08A0 */  0x08, 0x08, 0x15, 0xF3, 0xA8, 0xD0, 0x50, 0xC9,  // ......P.
                /* 08A8 */  0x83, 0x22, 0x08, 0x91, 0x0F, 0x42, 0xE3, 0xBD,  // ."...B..
                /* 08B0 */  0x04, 0x34, 0x54, 0xF2, 0x21, 0xD0, 0x60, 0xC8,  // .4T.!.`.
                /* 08B8 */  0x1B, 0x47, 0x20, 0x96, 0xFC, 0x4A, 0xD3, 0x50,  // .G ..J.P
                /* 08C0 */  0xC9, 0x43, 0x41, 0x20, 0x0E, 0x09, 0x42, 0x45,  // .CA ..BE
                /* 08C8 */  0xBC, 0x72, 0x82, 0x90, 0xF0, 0xCF, 0x8B, 0x20,  // .r..... 
                /* 08D0 */  0x44, 0xBA, 0xD1, 0x41, 0xD0, 0xE7, 0xC5, 0x83,  // D..A....
                /* 08D8 */  0x01, 0xB3, 0x0A, 0xC2, 0x04, 0x69, 0x1D, 0x36,  // .....i.6
                /* 08E0 */  0x7D, 0x28, 0x14, 0xF0, 0x15, 0xD0, 0xE1, 0x20,  // }(..... 
                /* 08E8 */  0x88, 0x80, 0x2C, 0xD2, 0xED, 0x80, 0x29, 0x08,  // ..,...).
                /* 08F0 */  0x15, 0x63, 0x17, 0x90, 0x49, 0x03, 0x11, 0x90,  // .c..I...
                /* 08F8 */  0xE3, 0x0A, 0x06, 0x61, 0x62, 0x5F, 0x14, 0x41,  // ...ab_.A
                /* 0900 */  0x48, 0xAE, 0xE7, 0x51, 0x40, 0x12, 0x12, 0x44,  // H..Q@..D
                /* 0908 */  0xC7, 0x03, 0xF2, 0x84, 0x13, 0x90, 0xC3, 0x81,  // ........
                /* 0910 */  0x08, 0xC8, 0xFF, 0x7F                           // ....
            })
        }
    }

    Scope (WMI0)
    {
        Name (WMIP, Zero)
        Method (IN_T, 1, NotSerialized)
        {
            WMIP = One
            Return (Zero)
        }

        Name (PCDV, Zero)
        Method (WD_G, 1, NotSerialized)
        {
            Return (Zero)
        }

        Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
        {
            Return (Arg0)
        }

        Method (WG_F, 3, Serialized)
        {
            Local0 = WG_N (Arg0)
            Local1 = ((Local0 >> 0x10) & 0xFFFF)
            Local0 &= 0xFFFF
            If (CS_C (Arg0, Local0, Local1, Arg2))
            {
                Return (Zero)
            }

            WG_L (Arg0, Arg1, Local0, Local1, Arg2)
            OperationRegion (\WMIF, SystemMemory, Arg0, 0x0100)
            Field (WMIF, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                STAS,   8, 
                REST,   8
            }

            If (((STAS && One) != One))
            {
                Return (Zero)
            }

            STAS = 0x82
            REST = One
            Return (Zero)
        }

        Method (WG_N, 1, NotSerialized)
        {
            OperationRegion (\PAR, SystemMemory, Arg0, 0x08)
            Field (PAR, DWordAcc, NoLock, Preserve)
            {
                FUNC,   32, 
                Offset (0x06), 
                STAS,   8, 
                EROR,   8
            }

            EROR = Zero
            STAS = One
            Return (FUNC) /* \WMI0.WG_N.FUNC */
        }

        Name (WGSL, Package (0x05)
        {
            0x66, 
            One, 
            0x6A, 
            One, 
            0xFFFFFFFF
        })
        Method (CS_C, 4, NotSerialized)
        {
            Local0 = Zero
            While (One)
            {
                Local1 = DerefOf (WGSL [Local0])
                If ((Local1 == 0xFFFFFFFF))
                {
                    Return (Zero)
                }

                Local0 += One
                Local2 = DerefOf (WGSL [Local0])
                If ((Local1 == Arg1))
                {
                    If ((Local2 == Arg2))
                    {
                        Break
                    }
                }

                Local0 += One
            }

            OperationRegion (\WMIC, SystemMemory, Arg0, 0x0100)
            Field (WMIC, DWordAcc, NoLock, Preserve)
            {
                Offset (0x07), 
                REST,   8
            }

            PM_S = Arg3
            ISMI (0xDE)
            Return (REST) /* \WMI0.CS_C.REST */
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Name (DVOT, 0x0E)
        Name (PUNT, One)
        Name (LFCC, 0x1770)
        Name (LFC0, Zero)
        Name (LFC1, Zero)
        Name (NBIF, Package (0x0D)
        {
            Zero, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            One, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            "", 
            "", 
            "", 
            ""
        })
        Name (PBIF, Package (0x0D)
        {
            One, 
            0x1770, 
            0x1770, 
            One, 
            0x39D0, 
            0x0258, 
            0x012C, 
            0x3C, 
            0x3C, 
            "Model", 
            "  ", 
            "LIon", 
            "OEM"
        })
        Name (PBST, Package (0x04)
        {
            Zero, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF
        })
        Name (BIXP, Package (0x14)
        {
            Zero, 
            Zero, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            One, 
            0xFFFFFFFF, 
            Zero, 
            Zero, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            0xFFFFFFFF, 
            Zero, 
            Zero, 
            One, 
            One, 
            "SDI ICR18650", 
            "123456789", 
            "LION", 
            "Simplo"
        })
        Mutex (MUBT, 0x00)
        Method (BI_F, 5, NotSerialized)
        {
            PUNT = Arg0
            Local1 = Arg1
            Local2 = Arg2
            If ((PUNT == Zero))
            {
                Local1 *= 0x0A
                Local2 *= 0x0A
            }

            PBIF [Zero] = PUNT /* \_SB_.PCI0.SBRG.EC0_.PUNT */
            PBIF [One] = Local1
            PBIF [0x02] = Local2
            LFCC = Local2
            PBIF [0x03] = Arg3
            PBIF [0x04] = Arg4
            Divide (Local2, 0x64, Local3, Local5)
            Local6 = (Local5 * 0x0A)
            PBIF [0x05] = Local6
            Local6 = (Local5 * 0x05)
            PBIF [0x06] = Local6
            Divide (Local1, 0x64, Local3, Local7)
            PBIF [0x07] = Local7
            PBIF [0x08] = Local7
            If (PUNT)
            {
                If ((DerefOf (PBIF [One]) == Zero))
                {
                    PBIF [Zero] = Zero
                }
            }
        }

        Method (BS_L, 1, Serialized)
        {
            If (!BT_P (Arg0))
            {
                Return (NBIF) /* \_SB_.PCI0.SBRG.EC0_.NBIF */
            }

            If ((GB_T (Arg0) == 0xFF))
            {
                Return (NBIF) /* \_SB_.PCI0.SBRG.EC0_.NBIF */
            }

            If ((Acquire (MUBT, 0xFFFF) == Zero))
            {
                BS_F (Arg0)
                PBIF [0x09] = BD_N ()
                Local0 = BP_U ()
                Local1 = BD_C ()
                Local2 = BL_F ()
                If (Arg0)
                {
                    LFC1 = Local2
                }
                Else
                {
                    LFC0 = Local2
                }

                Local3 = BT_C ()
                Local4 = BD_V ()
                If ((Local0 != Ones))
                {
                    If ((Local1 != Ones))
                    {
                        If ((Local2 != Ones))
                        {
                            If ((Local3 != Ones))
                            {
                                If ((Local4 != Ones))
                                {
                                    BI_F (Local0, Local1, Local2, Local3, Local4)
                                }
                            }
                        }
                    }
                }

                Release (MUBT)
            }

            If ((PUNT == Zero))
            {
                Local2 *= 0x0A
            }

            LFCC = Local2
            Return (PBIF) /* \_SB_.PCI0.SBRG.EC0_.PBIF */
        }

        Method (BS_C, 5, NotSerialized)
        {
            Local1 = (Arg1 & 0xFFFF)
            Local0 = Zero
            If (AP_S ())
            {
                Local0 = One
            }

            If (Local0)
            {
                If (BC_H (Arg4))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = Zero
                }
            }
            Else
            {
                Local0 = One
            }

            Local2 = (Arg0 & 0x0300)
            If (Local2)
            {
                Local2 = (One << 0x02)
                Local0 |= Local2
            }

            If ((Local1 >= 0x8000))
            {
                Local1 = (0xFFFF - Local1)
            }

            Local2 = Arg2
            If ((PUNT == Zero))
            {
                Local1 *= DVOT /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                Local2 *= 0x0A
            }

            Local3 = (Local0 & 0x02)
            If (!Local3)
            {
                Local3 = (LFCC - Local2)
                Divide (LFCC, 0x64, Local4, Local5)
                If ((Local3 <= Local5))
                {
                    Local2 = LFCC /* \_SB_.PCI0.SBRG.EC0_.LFCC */
                }
            }
            Else
            {
                Divide (LFCC, 0x64, Local4, Local5)
                Local4 = (LFCC - Local5)
                If ((Local2 > Local4))
                {
                    Local2 = Local4
                }
            }

            If (!AP_S ())
            {
                Divide (Local2, 0x0A, Local3, Local4)
                If ((Local1 < Local4))
                {
                    Local1 = Local4
                }
            }

            Divide (LFCC, 0x64, Local4, Local5)
            Local4 = (LFCC - Local5)
            Divide (LFCC, 0x32, Local6, Local7)
            Local6 = (LFCC - Local7)
            If (((Local2 >= Local6) && (Local2 < Local4)))
            {
                Divide (LFCC, 0xC8, Local4, Local5)
                Local2 += Local5
            }

            PBST [Zero] = Local0
            PBST [One] = Local1
            PBST [0x02] = Local2
            PBST [0x03] = Arg3
        }

        Method (CBST, 0, NotSerialized)
        {
            If (PUNT)
            {
                PBST [One] = (DerefOf (PBST [One]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
                PBST [0x02] = (DerefOf (PBST [0x02]) * DVOT) /* \_SB_.PCI0.SBRG.EC0_.DVOT */
            }
        }

        Method (BS_P, 1, Serialized)
        {
            PBST [Zero] = Zero
            PBST [One] = Ones
            PBST [0x02] = Ones
            PBST [0x03] = Ones
            If (!BT_P (Arg0))
            {
                Return (PBST) /* \_SB_.PCI0.SBRG.EC0_.PBST */
            }

            If ((GB_T (Arg0) == 0xFF))
            {
                Return (PBST) /* \_SB_.PCI0.SBRG.EC0_.PBST */
            }

            If ((Acquire (MUBT, 0xFFFF) == Zero))
            {
                BS_F (Arg0)
                Local0 = BS_T ()
                Local1 = BC_R ()
                Local2 = BR_C ()
                Local3 = BV_T ()
                If ((Local0 != Ones))
                {
                    If ((Local1 != Ones))
                    {
                        If ((Local2 != Ones))
                        {
                            If ((Local3 != Ones))
                            {
                                BS_C (Local0, Local1, Local2, Local3, Arg0)
                            }
                        }
                    }
                }

                Release (MUBT)
            }

            Local4 = LFCC /* \_SB_.PCI0.SBRG.EC0_.LFCC */
            Divide (LFCC, 0x64, Local5, Local4)
            Local5 = BL_F ()
            If ((PUNT == Zero))
            {
                Local5 *= 0x0A
            }

            If ((LFCC >= Local5))
            {
                Local5 = (LFCC - Local5)
            }
            Else
            {
                Local5 -= LFCC /* \_SB_.PCI0.SBRG.EC0_.LFCC */
            }

            If ((Local5 > Local4))
            {
                Notify (BAT0, 0x81) // Information Change
            }

            Return (PBST) /* \_SB_.PCI0.SBRG.EC0_.PBST */
        }

        Method (BI_X, 1, Serialized)
        {
            BIXP [One] = BP_U ()
            BIXP [0x02] = BD_C ()
            BIXP [0x03] = BL_F ()
            BIXP [0x04] = BT_C ()
            BIXP [0x05] = BD_V ()
            If (BL_F ())
            {
                BIXP [0x06] = (BL_F () / 0x0A)
                BIXP [0x07] = (BL_F () / 0x14)
                BIXP [0x08] = (BD_C () / 0x64)
                BIXP [0x0E] = (BD_C () / 0x64)
                BIXP [0x0F] = (BD_C () / 0x64)
                BIXP [0x10] = BD_N ()
                BIXP [0x09] = 0x40
            }

            Return (BIXP) /* \_SB_.PCI0.SBRG.EC0_.BIXP */
        }
    }

    Scope (_SB.PCI0)
    {
        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                PCI0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (^^SBRG.EC0.BT_P (Zero))
                {
                    DC_F = ^^SBRG.EC0.BT_P (Zero)
                    Return (0x1F)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_BIF, 0, Serialized)  // _BIF: Battery Information
            {
                Return (^^SBRG.EC0.BS_L (Zero))
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (ATKP)
                {
                    ^^SBRG.EC0.AP_S ()
                    If (((^^SBRG.EC0.B0PN <= One) && (^^SBRG.EC0.AC_P () == Zero)))
                    {
                        ^^^ATKD.IANE (0x6D)
                    }
                }

                Return (^^SBRG.EC0.BS_P (Zero))
            }
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Method (_QA1, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (DC_P (Zero))
            {
                Sleep (0x07D0)
            }

            Notify (BAT0, 0x80) // Status Change
            Notify (BAT0, 0x81) // Information Change
        }

        Method (NB_T, 1, NotSerialized)
        {
            If (BT_P (Zero))
            {
                Notify (BAT0, Arg0)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (AC0)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Name (XX00, Buffer (0x03){})
            Name (ACDC, 0xFF)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (!Acquire (^^SBRG.EC0.MUEC, 0x012C))
                {
                    Local0 = ^^SBRG.EC0.EPWS /* \_SB_.PCI0.SBRG.EC0_.EPWS */
                    If ((Local0 != ACDC))
                    {
                        CreateWordField (XX00, Zero, SSZE)
                        CreateByteField (XX00, 0x02, ACST)
                        SSZE = 0x03
                        ACDC = Local0
                        If (((Local0 == 0x03) || (Local0 == One)))
                        {
                            P80H = 0xECAC
                            AFN4 (One)
                            ACST = Zero
                        }
                        Else
                        {
                            P80H = 0xECDC
                            AFN4 (0x02)
                            ACST = One
                        }

                        ALIB (One)
                        XX00
                    }

                    Release (^^SBRG.EC0.MUEC)
                }

                \_GPE.L06C = Zero
                AC_F = ^^SBRG.EC0.AP_S ()
                Return (^^SBRG.EC0.AP_S ())
            }

            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                PCI0
            })
        }
    }

    Scope (WMI0)
    {
        Method (WG_L, 5, NotSerialized)
        {
            AX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
            BX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
            EX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
            FX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
            GX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
            JX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
            KX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
            LX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
            WF_S (Arg0, Arg1, Arg2, Arg3, Arg4)
            MX_X (Arg0, Arg1, Arg2, Arg3, Arg4)
        }
    }

    Scope (WMI0)
    {
        Method (JX_X, 5, NotSerialized)
        {
            If ((Arg2 != 0x62))
            {
                Return (Zero)
            }

            OperationRegion (JX_X, SystemMemory, Arg0, 0x08)
            Field (JX_X, DWordAcc, NoLock, Preserve)
            {
                MFUN,   16, 
                SFUN,   16, 
                LEN,    16, 
                SM62,   8, 
                EM62,   8
            }

            If ((Arg3 == One))
            {
                J0_1 (Arg4)
            }
            Else
            {
                EM62 = One
            }

            If ((EM62 == Zero))
            {
                SM62 = 0x80
            }
            Else
            {
                SM62 = 0x82
            }

            Return (Zero)
        }

        Method (J0_1, 1, NotSerialized)
        {
            WSMI (Arg0)
        }
    }

    Scope (WMI0)
    {
        Method (KX_X, 5, NotSerialized)
        {
            If ((Arg2 != 0x63))
            {
                Return (Zero)
            }

            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8
            }

            If ((Arg3 == One))
            {
                K0_1 (Arg0)
            }
            ElseIf ((Arg3 == 0x02))
            {
                K0_2 (Arg0, Arg4)
            }
            ElseIf ((Arg3 == 0x03))
            {
                K0_3 (Arg0)
            }
            ElseIf ((Arg3 == 0x04))
            {
                K0_4 (Arg0)
            }
            ElseIf ((Arg3 == 0x05))
            {
                K0_5 (Arg0)
            }
            ElseIf ((Arg3 == 0x06))
            {
                K0_6 (Arg0)
            }
            ElseIf ((Arg3 == 0x07))
            {
                K0_7 (Arg0)
            }
            ElseIf ((Arg3 == 0x08))
            {
                K0_8 (Arg0)
            }
            ElseIf ((Arg3 == 0x09))
            {
                K0_9 (Arg0)
            }
            ElseIf ((Arg3 == 0x0A))
            {
                K0_A (Arg0)
            }
            ElseIf ((Arg3 == 0x0B))
            {
                K0_B (Arg0)
            }
            ElseIf ((Arg3 == 0x0C))
            {
                K0_C (Arg0)
            }
            ElseIf ((Arg3 == 0x0D))
            {
                K0_D (Arg0)
            }
            ElseIf ((Arg3 == 0x0E))
            {
                K0_E (Arg0)
            }
            ElseIf ((Arg3 == 0x0F))
            {
                K0_F (Arg0)
            }
            Else
            {
                EM63 = One
            }

            If ((EM63 == Zero))
            {
                SM63 = 0x80
            }
            Else
            {
                SM63 = 0x82
            }

            Return (Zero)
        }

        Method (K0_1, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                TSXR,   8, 
                TSXL,   8
            }

            If ((FUNC == Zero))
            {
                TSXR = \_SB.PCI0.SBRG.EC0.RR_M (0x03E2)
                TSXL = \_SB.PCI0.SBRG.EC0.RR_M (0x03E3)
            }
            ElseIf ((FUNC == One))
            {
                TSXR = \_SB.PCI0.SBRG.EC0.RR_M (0x03E0)
                TSXL = \_SB.PCI0.SBRG.EC0.RR_M (0x03E1)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_2, 2, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                DEVS,   8, 
                DEVT,   16
            }

            If ((DEVS == Zero))
            {
                WSMI (Arg1)
            }
            ElseIf ((DEVS == One))
            {
                DEVT = \_SB.PCI0.SBRG.EC0.PCPT
            }
            ElseIf ((DEVS == 0x02))
            {
                WSMI (Arg1)
            }
            ElseIf ((DEVS == 0x03))
            {
                WSMI (Arg1)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_3, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FANX,   8, 
                FANS,   8, 
                FANT,   16, 
                TRGG,   8
            }

            If ((FANX == Zero))
            {
                FANS = \_SB.PCI0.SBRG.EC0.F0CS
                FANT = \_SB.PCI0.SBRG.EC0.F0TS
                TRGG = \_SB.PCI0.SBRG.EC0.RR_M (0x0576)
            }
            ElseIf ((FANX == One))
            {
                FANS = \_SB.PCI0.SBRG.EC0.F1CS
                FANT = \_SB.PCI0.SBRG.EC0.F1TS
                TRGG = \_SB.PCI0.SBRG.EC0.RR_M (0x0577)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_4, 1, Serialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                PARA,   8, 
                DATA,   8
            }

            If ((FUNC == Zero))
            {
                Switch (ToInteger (PARA))
                {
                    Case (Zero)
                    {
                        DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0521)
                    }
                    Case (One)
                    {
                        DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0522)
                    }
                    Case (0x02)
                    {
                        DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0523)
                    }
                    Case (0x03)
                    {
                        DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0524)
                    }
                    Case (0x04)
                    {
                        DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0518)
                    }
                    Case (0x05)
                    {
                        DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0519)
                    }
                    Case (0x06)
                    {
                        DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0568)
                    }
                    Default
                    {
                        EM63 = One
                    }

                }
            }
            ElseIf ((FUNC == One))
            {
                Switch (ToInteger (PARA))
                {
                    Case (Zero)
                    {
                        \_SB.PCI0.SBRG.EC0.WR_M (0x0521, DATA)
                    }
                    Case (One)
                    {
                        \_SB.PCI0.SBRG.EC0.WR_M (0x0522, DATA)
                    }
                    Case (0x02)
                    {
                        \_SB.PCI0.SBRG.EC0.WR_M (0x0523, DATA)
                    }
                    Case (0x03)
                    {
                        \_SB.PCI0.SBRG.EC0.WR_M (0x0524, DATA)
                    }
                    Case (0x04)
                    {
                        \_SB.PCI0.SBRG.EC0.WR_M (0x0518, DATA)
                    }
                    Case (0x05)
                    {
                        \_SB.PCI0.SBRG.EC0.WR_M (0x0519, DATA)
                    }
                    Case (0x06)
                    {
                        \_SB.PCI0.SBRG.EC0.WR_M (0x0568, DATA)
                    }
                    Default
                    {
                        EM63 = One
                    }

                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_5, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ECSD,   8, 
                OSSD,   8, 
                OSPV,   8, 
                THON,   8, 
                THOF,   8, 
                FNER,   8, 
                VGSD,   8
            }

            If ((FUNC == Zero))
            {
                ECSD = \_SB.PCI0.SBRG.EC0.RR_M (0x0530)
                OSSD = \_SB.PCI0.SBRG.EC0.RR_M (0x03E4)
                OSPV = \_SB.PCI0.SBRG.EC0.RR_M (0x03E5)
                THON = \_SB.PCI0.SBRG.EC0.RR_M (0x0533)
                THOF = \_SB.PCI0.SBRG.EC0.RR_M (0x0534)
                FNER = \_SB.PCI0.SBRG.EC0.RR_M (0x0535)
                VGSD = \_SB.PCI0.SBRG.EC0.RR_M (0x0536)
            }
            ElseIf ((FUNC == One))
            {
                \_SB.PCI0.SBRG.EC0.WR_M (0x0530, ECSD)
                \_SB.PCI0.SBRG.EC0.WR_M (0x03E4, OSSD)
                \_SB.PCI0.SBRG.EC0.WR_M (0x03E5, OSPV)
                \_SB.PCI0.SBRG.EC0.WR_M (0x0533, THON)
                \_SB.PCI0.SBRG.EC0.WR_M (0x0534, THOF)
                \_SB.PCI0.SBRG.EC0.WR_M (0x0535, FNER)
                \_SB.PCI0.SBRG.EC0.WR_M (0x0536, VGSD)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_6, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x20)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                TTS1,   8, 
                TTS2,   8, 
                TTS3,   8, 
                TTS4,   8, 
                TTS5,   8, 
                TTS6,   8, 
                TTS7,   8, 
                TTS8,   8, 
                TFFP,   8
            }

            If ((FUNC == Zero))
            {
                If ((ALGM == Zero))
                {
                    TTS1 = \_SB.PCI0.SBRG.EC0.RR_M (0x0537)
                    TTS2 = \_SB.PCI0.SBRG.EC0.RR_M (0x0538)
                    TTS3 = \_SB.PCI0.SBRG.EC0.RR_M (0x0539)
                    TTS4 = \_SB.PCI0.SBRG.EC0.RR_M (0x053A)
                    TTS5 = \_SB.PCI0.SBRG.EC0.RR_M (0x053B)
                    TTS6 = \_SB.PCI0.SBRG.EC0.RR_M (0x053C)
                    TTS7 = \_SB.PCI0.SBRG.EC0.RR_M (0x053D)
                    TTS8 = \_SB.PCI0.SBRG.EC0.RR_M (0x053E)
                    TFFP = \_SB.PCI0.SBRG.EC0.RR_M (0x053F)
                }
                ElseIf ((ALGM == One))
                {
                    TTS1 = \_SB.PCI0.SBRG.EC0.RR_M (0x0597)
                    TTS2 = \_SB.PCI0.SBRG.EC0.RR_M (0x0598)
                    TTS3 = \_SB.PCI0.SBRG.EC0.RR_M (0x0599)
                    TTS4 = \_SB.PCI0.SBRG.EC0.RR_M (0x059A)
                    TTS5 = \_SB.PCI0.SBRG.EC0.RR_M (0x059B)
                    TTS6 = \_SB.PCI0.SBRG.EC0.RR_M (0x059C)
                    TTS7 = \_SB.PCI0.SBRG.EC0.RR_M (0x059D)
                    TTS8 = \_SB.PCI0.SBRG.EC0.RR_M (0x059E)
                    TFFP = \_SB.PCI0.SBRG.EC0.RR_M (0x059F)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((ALGM == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0537, TTS1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0538, TTS2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0539, TTS3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x053A, TTS4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x053B, TTS5)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x053C, TTS6)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x053D, TTS7)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x053E, TTS8)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x053F, TFFP)
                }
                ElseIf ((ALGM == One))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0597, TTS1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0598, TTS2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0599, TTS3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x059A, TTS4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x059B, TTS5)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x059C, TTS6)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x059D, TTS7)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x059E, TTS8)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x059F, TFFP)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_7, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x20)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                TDA1,   8, 
                TDA2,   8, 
                TDA3,   8, 
                TDA4,   8, 
                TDA5,   8, 
                TDA6,   8, 
                TDA7,   8, 
                TDA8,   8
            }

            If ((FUNC == Zero))
            {
                If ((ALGM == Zero))
                {
                    TDA1 = \_SB.PCI0.SBRG.EC0.RR_M (0x0548)
                    TDA2 = \_SB.PCI0.SBRG.EC0.RR_M (0x0549)
                    TDA3 = \_SB.PCI0.SBRG.EC0.RR_M (0x054A)
                    TDA4 = \_SB.PCI0.SBRG.EC0.RR_M (0x054B)
                    TDA5 = \_SB.PCI0.SBRG.EC0.RR_M (0x054C)
                    TDA6 = \_SB.PCI0.SBRG.EC0.RR_M (0x054D)
                    TDA7 = \_SB.PCI0.SBRG.EC0.RR_M (0x054E)
                    TDA8 = \_SB.PCI0.SBRG.EC0.RR_M (0x054F)
                }
                ElseIf ((ALGM == One))
                {
                    TDA1 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A8)
                    TDA2 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A9)
                    TDA3 = \_SB.PCI0.SBRG.EC0.RR_M (0x05AA)
                    TDA4 = \_SB.PCI0.SBRG.EC0.RR_M (0x05AB)
                    TDA5 = \_SB.PCI0.SBRG.EC0.RR_M (0x05AC)
                    TDA6 = \_SB.PCI0.SBRG.EC0.RR_M (0x05AD)
                    TDA7 = \_SB.PCI0.SBRG.EC0.RR_M (0x05AE)
                    TDA8 = \_SB.PCI0.SBRG.EC0.RR_M (0x05AF)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((ALGM == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0548, TDA1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0549, TDA2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x054A, TDA3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x054B, TDA4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x054C, TDA5)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x054D, TDA6)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x054E, TDA7)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x054F, TDA8)
                }
                ElseIf ((ALGM == One))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A8, TDA1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A9, TDA2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05AA, TDA3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05AB, TDA4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05AC, TDA5)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05AD, TDA6)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05AE, TDA7)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05AF, TDA8)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_8, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x20)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                ASC1,   8, 
                ASC2,   8, 
                ASC3,   8, 
                ASC4,   8, 
                ADA1,   8, 
                ADA2,   8, 
                ADA3,   8, 
                ADA4,   8, 
                DSC1,   8, 
                DSC2,   8, 
                DSC3,   8, 
                DSC4,   8, 
                DDA1,   8, 
                DDA2,   8, 
                DDA3,   8, 
                DDA4,   8
            }

            If ((FUNC == Zero))
            {
                If ((ALGM == Zero))
                {
                    ASC1 = \_SB.PCI0.SBRG.EC0.RR_M (0x0550)
                    ASC2 = \_SB.PCI0.SBRG.EC0.RR_M (0x0551)
                    ASC3 = \_SB.PCI0.SBRG.EC0.RR_M (0x0552)
                    ASC4 = \_SB.PCI0.SBRG.EC0.RR_M (0x0553)
                    ADA1 = \_SB.PCI0.SBRG.EC0.RR_M (0x0554)
                    ADA2 = \_SB.PCI0.SBRG.EC0.RR_M (0x0555)
                    ADA3 = \_SB.PCI0.SBRG.EC0.RR_M (0x0556)
                    ADA4 = \_SB.PCI0.SBRG.EC0.RR_M (0x0557)
                    DSC1 = \_SB.PCI0.SBRG.EC0.RR_M (0x0558)
                    DSC2 = \_SB.PCI0.SBRG.EC0.RR_M (0x0559)
                    DSC3 = \_SB.PCI0.SBRG.EC0.RR_M (0x055A)
                    DSC4 = \_SB.PCI0.SBRG.EC0.RR_M (0x055B)
                    DDA1 = \_SB.PCI0.SBRG.EC0.RR_M (0x055C)
                    DDA2 = \_SB.PCI0.SBRG.EC0.RR_M (0x055D)
                    DDA3 = \_SB.PCI0.SBRG.EC0.RR_M (0x055E)
                    DDA4 = \_SB.PCI0.SBRG.EC0.RR_M (0x055F)
                }
                ElseIf ((ALGM == One))
                {
                    ASC1 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B0)
                    ASC2 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B1)
                    ASC3 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B2)
                    ASC4 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B3)
                    ADA1 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B4)
                    ADA2 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B5)
                    ADA3 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B6)
                    ADA4 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B7)
                    DSC1 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B8)
                    DSC2 = \_SB.PCI0.SBRG.EC0.RR_M (0x05B9)
                    DSC3 = \_SB.PCI0.SBRG.EC0.RR_M (0x05BA)
                    DSC4 = \_SB.PCI0.SBRG.EC0.RR_M (0x05BB)
                    DDA1 = \_SB.PCI0.SBRG.EC0.RR_M (0x05BC)
                    DDA2 = \_SB.PCI0.SBRG.EC0.RR_M (0x05BD)
                    DDA3 = \_SB.PCI0.SBRG.EC0.RR_M (0x05BE)
                    DDA4 = \_SB.PCI0.SBRG.EC0.RR_M (0x05BF)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((ALGM == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0550, ASC1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0551, ASC2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0552, ASC3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0553, ASC4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0554, ADA1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0555, ADA2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0556, ADA3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0557, ADA4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0558, DSC1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0559, DSC2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x055A, DSC3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x055B, DSC4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x055C, DDA1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x055D, DDA2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x055E, DDA3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x055F, DDA4)
                }
                ElseIf ((ALGM == One))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B0, ASC1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B1, ASC2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B2, ASC3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B3, ASC4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B4, ADA1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B5, ADA2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B6, ADA3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B7, ADA4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B8, DSC1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05B9, DSC2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05BA, DSC3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05BB, DSC4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05BC, DDA1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05BD, DDA2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05BE, DDA3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05BF, DDA4)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_9, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x20)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                ALGM,   8, 
                HYS1,   8, 
                HYS2,   8, 
                HYS3,   8, 
                HYS4,   8, 
                HYS5,   8, 
                HYS6,   8, 
                HYS7,   8, 
                HYS8,   8
            }

            If ((FUNC == Zero))
            {
                If ((ALGM == Zero))
                {
                    HYS1 = \_SB.PCI0.SBRG.EC0.RR_M (0x0540)
                    HYS2 = \_SB.PCI0.SBRG.EC0.RR_M (0x0541)
                    HYS3 = \_SB.PCI0.SBRG.EC0.RR_M (0x0542)
                    HYS4 = \_SB.PCI0.SBRG.EC0.RR_M (0x0543)
                    HYS5 = \_SB.PCI0.SBRG.EC0.RR_M (0x0544)
                    HYS6 = \_SB.PCI0.SBRG.EC0.RR_M (0x0545)
                    HYS7 = \_SB.PCI0.SBRG.EC0.RR_M (0x0546)
                    HYS8 = \_SB.PCI0.SBRG.EC0.RR_M (0x0547)
                }
                ElseIf ((ALGM == One))
                {
                    HYS1 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A0)
                    HYS2 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A1)
                    HYS3 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A2)
                    HYS4 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A3)
                    HYS5 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A4)
                    HYS6 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A5)
                    HYS7 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A6)
                    HYS8 = \_SB.PCI0.SBRG.EC0.RR_M (0x05A7)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((ALGM == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0540, HYS1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0541, HYS2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0542, HYS3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0543, HYS4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0544, HYS5)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0545, HYS6)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0546, HYS7)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0547, HYS8)
                }
                ElseIf ((ALGM == One))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A0, HYS1)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A1, HYS2)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A2, HYS3)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A3, HYS4)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A4, HYS5)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A5, HYS6)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A6, HYS7)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05A7, HYS8)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_A, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x20)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                TA1L,   8, 
                TA1H,   8, 
                TA2L,   8, 
                TA2H,   8, 
                TA3L,   8, 
                TA3H,   8, 
                TA4L,   8, 
                TA4H,   8, 
                TA5L,   8, 
                TA5H,   8, 
                TA6L,   8, 
                TA6H,   8, 
                TA7L,   8, 
                TA7H,   8, 
                TA8L,   8, 
                TA8H,   8
            }

            If ((FUNC == Zero))
            {
                If ((FANX == Zero))
                {
                    TA1L = \_SB.PCI0.SBRG.EC0.RR_M (0x05C0)
                    TA1H = \_SB.PCI0.SBRG.EC0.RR_M (0x05C1)
                    TA2L = \_SB.PCI0.SBRG.EC0.RR_M (0x05C2)
                    TA2H = \_SB.PCI0.SBRG.EC0.RR_M (0x05C3)
                    TA3L = \_SB.PCI0.SBRG.EC0.RR_M (0x05C4)
                    TA3H = \_SB.PCI0.SBRG.EC0.RR_M (0x05C5)
                    TA4L = \_SB.PCI0.SBRG.EC0.RR_M (0x05C6)
                    TA4H = \_SB.PCI0.SBRG.EC0.RR_M (0x05C7)
                    TA5L = \_SB.PCI0.SBRG.EC0.RR_M (0x05C8)
                    TA5H = \_SB.PCI0.SBRG.EC0.RR_M (0x05C9)
                    TA6L = \_SB.PCI0.SBRG.EC0.RR_M (0x05CA)
                    TA6H = \_SB.PCI0.SBRG.EC0.RR_M (0x05CB)
                    TA7L = \_SB.PCI0.SBRG.EC0.RR_M (0x05CC)
                    TA7H = \_SB.PCI0.SBRG.EC0.RR_M (0x05CD)
                    TA8L = \_SB.PCI0.SBRG.EC0.RR_M (0x05CE)
                    TA8H = \_SB.PCI0.SBRG.EC0.RR_M (0x05CF)
                }
                ElseIf ((FANX == One))
                {
                    TA1L = \_SB.PCI0.SBRG.EC0.RR_M (0x05D0)
                    TA1H = \_SB.PCI0.SBRG.EC0.RR_M (0x05D1)
                    TA2L = \_SB.PCI0.SBRG.EC0.RR_M (0x05D2)
                    TA2H = \_SB.PCI0.SBRG.EC0.RR_M (0x05D3)
                    TA3L = \_SB.PCI0.SBRG.EC0.RR_M (0x05D4)
                    TA3H = \_SB.PCI0.SBRG.EC0.RR_M (0x05D5)
                    TA4L = \_SB.PCI0.SBRG.EC0.RR_M (0x05D6)
                    TA4H = \_SB.PCI0.SBRG.EC0.RR_M (0x05D7)
                    TA5L = \_SB.PCI0.SBRG.EC0.RR_M (0x05D8)
                    TA5H = \_SB.PCI0.SBRG.EC0.RR_M (0x05D9)
                    TA6L = \_SB.PCI0.SBRG.EC0.RR_M (0x05DA)
                    TA6H = \_SB.PCI0.SBRG.EC0.RR_M (0x05DB)
                    TA7L = \_SB.PCI0.SBRG.EC0.RR_M (0x05DC)
                    TA7H = \_SB.PCI0.SBRG.EC0.RR_M (0x05DD)
                    TA8L = \_SB.PCI0.SBRG.EC0.RR_M (0x05DE)
                    TA8H = \_SB.PCI0.SBRG.EC0.RR_M (0x05DF)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((FANX == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C0, TA1L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C1, TA1H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C2, TA2L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C3, TA2H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C4, TA3L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C5, TA3H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C6, TA4L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C7, TA4H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C8, TA5L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05C9, TA5H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05CA, TA6L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05CB, TA6H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05CC, TA7L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05CD, TA7H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05CE, TA8L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05CF, TA8H)
                }
                ElseIf ((FANX == One))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D0, TA1L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D1, TA1H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D2, TA2L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D3, TA2H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D4, TA3L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D5, TA3H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D6, TA4L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D7, TA4H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D8, TA5L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05D9, TA5H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05DA, TA6L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05DB, TA6H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05DC, TA7L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05DD, TA7H)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05DE, TA8L)
                    \_SB.PCI0.SBRG.EC0.WR_M (0x05DF, TA8H)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_B, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x20)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                PARA,   8, 
                DATA,   8
            }

            If ((FUNC == Zero))
            {
                If ((PARA == Zero))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0569)
                }
                ElseIf ((PARA == One))
                {
                    DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x056A)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((PARA == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0569, DATA)
                }
                ElseIf ((PARA == One))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x056A, DATA)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_C, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x20)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                DATA,   8
            }

            If ((FUNC == Zero))
            {
                DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0511)
            }
            ElseIf ((FUNC == One))
            {
                DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0512)
            }
            ElseIf ((FUNC == 0x02))
            {
                DATA = \_SB.PCI0.SBRG.EC0.RR_M (0x0513)
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_D, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FREQ,   16
            }

            If ((FUNC == Zero))
            {
                Local0 = 0x017D7840
                Local1 = \_SB.PCI0.SBRG.EC0.RR_M (0xF4A0)
                Local1 += One
                Local2 = \_SB.PCI0.SBRG.EC0.RR_M (0xF4A2)
                Local2 += One
                Local2 *= Local1
                Divide (Local0, Local2, Local3, Local1)
                FREQ = Local1
            }
            ElseIf ((FUNC == One))
            {
                FREQ = Zero
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_E, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                FAND,   8
            }

            If ((FUNC == Zero))
            {
                If ((FANX == Zero))
                {
                    FAND = \_SB.PCI0.SBRG.EC0.RF_O (Zero)
                }
                ElseIf ((FANX == One))
                {
                    FAND = \_SB.PCI0.SBRG.EC0.RF_O (One)
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((FANX == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WF_O (Zero, FAND)
                }
                ElseIf ((FANX == One))
                {
                    \_SB.PCI0.SBRG.EC0.WF_O (One, FAND)
                }
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }

        Method (K0_F, 1, NotSerialized)
        {
            OperationRegion (KX_X, SystemMemory, Arg0, 0x10)
            Field (KX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM63,   8, 
                EM63,   8, 
                FUNC,   8, 
                FANX,   8, 
                DIFF,   8
            }

            If ((FUNC == Zero))
            {
                If ((FANX == Zero))
                {
                    DIFF = \_SB.PCI0.SBRG.EC0.RR_M (0x0564)
                }
                ElseIf ((FANX == One))
                {
                    DIFF = 0xFF
                }
                Else
                {
                    EM63 = One
                }
            }
            ElseIf ((FUNC == One))
            {
                If ((FANX == Zero))
                {
                    \_SB.PCI0.SBRG.EC0.WR_M (0x0564, DIFF)
                }
                ElseIf ((FANX == One)){}
                Else
                {
                    EM63 = One
                }
            }
            Else
            {
                EM63 = One
            }
        }
    }

    Scope (WMI0)
    {
        Method (LX_X, 5, NotSerialized)
        {
            If ((Arg2 != 0x64))
            {
                Return (Zero)
            }

            WSMI (Arg4)
            Return (Zero)
        }
    }

    Scope (WMI0)
    {
        Method (GX_X, 5, NotSerialized)
        {
            If ((Arg2 != 0x30))
            {
                Return (Zero)
            }

            OperationRegion (GX_X, SystemMemory, Arg0, 0x08)
            Field (GX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM30,   8, 
                EM30,   8
            }

            If ((Arg3 == One))
            {
                EM30 = G0_1 (Arg0)
            }
            ElseIf ((Arg3 == 0x02))
            {
                EM30 = G0_2 (Arg0)
            }
            ElseIf ((Arg3 == 0x83))
            {
                EM30 = G8_3 (Arg0)
            }
            ElseIf ((Arg3 == 0x84))
            {
                EM30 = G8_4 (Arg0)
            }
            ElseIf ((Arg3 == 0x80))
            {
                G8_0 (Arg0)
                EM30 = Zero
            }
            ElseIf ((Arg3 == 0x81))
            {
                G8_1 (Arg0)
                EM30 = Zero
            }
            ElseIf ((Arg3 == 0x82))
            {
                G8_2 (Arg0)
                EM30 = Zero
            }
            Else
            {
                EM30 = One
            }

            If ((EM30 == Zero))
            {
                SM30 = 0x80
            }
            Else
            {
                SM30 = 0x82
            }

            Return (Zero)
        }

        Method (G0_1, 1, NotSerialized)
        {
            OperationRegion (GX_X, SystemMemory, Arg0, 0x10)
            Field (GX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ECMD,   8, 
                EDA1,   8, 
                EDA2,   8, 
                EDA3,   8, 
                EDA4,   8, 
                EDA5,   8
            }

            Local0 = \_SB.PCI0.SBRG.EC0.EX_T (ECMD, EDA1, EDA2, EDA3, EDA4, EDA5)
            EDA1 = DerefOf (Local0 [One])
            EDA2 = DerefOf (Local0 [0x02])
            EDA3 = DerefOf (Local0 [0x03])
            EDA4 = DerefOf (Local0 [0x04])
            EDA5 = DerefOf (Local0 [0x05])
            Return (DerefOf (Local0 [Zero]))
        }

        Method (G0_2, 1, NotSerialized)
        {
            OperationRegion (GX_X, SystemMemory, Arg0, 0x30)
            Field (GX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM30,   8, 
                EM30,   8, 
                BUSN,   8, 
                PROT,   8, 
                DADD,   8, 
                DREG,   8, 
                DAT0,   8, 
                DAT1,   8, 
                BLEN,   8, 
                REVB,   8, 
                BLK1,   32, 
                BLK2,   32, 
                BLK3,   32, 
                BLK4,   32, 
                BLK5,   32, 
                BLK6,   32, 
                BLK7,   32, 
                BLK8,   32
            }

            Local0 = \_SB.PCI0.SBRG.EC0.ES_M (BUSN, PROT, DADD, DREG, DAT0, DAT1)
            DAT0 = DerefOf (Local0 [One])
            DAT1 = DerefOf (Local0 [0x02])
            BLEN = DerefOf (Local0 [0x03])
            Name (BKUF, Buffer (0x20){})
            CreateDWordField (BKUF, Zero, DD01)
            CreateDWordField (BKUF, 0x04, DD02)
            CreateDWordField (BKUF, 0x08, DD03)
            CreateDWordField (BKUF, 0x0C, DD04)
            CreateDWordField (BKUF, 0x10, DD05)
            CreateDWordField (BKUF, 0x14, DD06)
            CreateDWordField (BKUF, 0x18, DD07)
            CreateDWordField (BKUF, 0x1C, DD08)
            BKUF = DerefOf (Local0 [0x04])
            BLK1 = DD01 /* \WMI0.G0_2.DD01 */
            BLK2 = DD02 /* \WMI0.G0_2.DD02 */
            BLK3 = DD03 /* \WMI0.G0_2.DD03 */
            BLK4 = DD04 /* \WMI0.G0_2.DD04 */
            BLK5 = DD05 /* \WMI0.G0_2.DD05 */
            BLK6 = DD06 /* \WMI0.G0_2.DD06 */
            BLK7 = DD07 /* \WMI0.G0_2.DD07 */
            BLK8 = DD08 /* \WMI0.G0_2.DD08 */
            Local2 = DerefOf (Local0 [Zero])
            Local2 &= 0x3F
            Return (Local2)
        }

        Method (G8_4, 1, NotSerialized)
        {
            OperationRegion (GX_X, SystemMemory, Arg0, 0x10)
            Field (GX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                EVTP,   8, 
                EVID,   8
            }

            \_SB.PCI0.SBRG.EC0.EX_T (0xAE, EVTP, EVID, Zero, Zero, Zero)
            Return (Zero)
        }

        Method (G8_3, 1, NotSerialized)
        {
            OperationRegion (ECGC, SystemMemory, Arg0, 0x10)
            Field (ECGC, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM1X,   8, 
                EM1X,   8, 
                FUNC,   8, 
                PORT,   8, 
                PIND,   8, 
                DATA,   8
            }

            If ((FUNC == Zero))
            {
                DATA = \_SB.PCI0.SBRG.EC0.RP_N (PORT, PIND)
            }
            ElseIf ((FUNC == One))
            {
                \_SB.PCI0.SBRG.EC0.SP_N (PORT, PIND, DATA)
            }
            Else
            {
                Return (One)
            }

            Return (Zero)
        }

        Method (G8_0, 1, NotSerialized)
        {
            OperationRegion (GX_X, SystemMemory, Arg0, 0x20)
            Field (GX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                EFUN,   8
            }

            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEIC = 0xA7
            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEID = Zero
            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEID = EFUN /* \WMI0.G8_0.EFUN */
        }

        Method (G8_1, 1, NotSerialized)
        {
            OperationRegion (GX_X, SystemMemory, Arg0, 0x20)
            Field (GX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                EFUN,   8, 
                BATT,   8, 
                WRNT,   8
            }

            Local0 = Zero
            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEIC = 0x80
            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEID = 0x06
            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEID = 0x20
            \_SB.PCI0.SBRG.EC0.WE_O ()
            Local0 = \_SB.PCI0.SBRG.EC0.AEID
            If ((EFUN == One))
            {
                Local0 |= 0x80
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEIC = 0x81
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x06
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x20
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = Local0
                \_SB.PCI0.SBRG.EC0.WE_O ()
                WRNT = Local0
            }
            ElseIf ((EFUN == Zero))
            {
                Local0 &= 0x7F
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEIC = 0x81
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x06
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x20
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = Local0
                \_SB.PCI0.SBRG.EC0.WE_O ()
                WRNT = Local0
            }
        }

        Method (G8_2, 1, NotSerialized)
        {
            OperationRegion (GX_X, SystemMemory, Arg0, 0x20)
            Field (GX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                EFUN,   8, 
                WRNT,   8
            }

            Local0 = Zero
            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEIC = 0x80
            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEID = 0x05
            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEID = 0x20
            \_SB.PCI0.SBRG.EC0.WE_O ()
            Local0 = \_SB.PCI0.SBRG.EC0.AEID
            If ((EFUN == One))
            {
                Local0 |= 0x80
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEIC = 0x81
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x05
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x20
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = Local0
                \_SB.PCI0.SBRG.EC0.WE_O ()
                WRNT = Local0
            }
            ElseIf ((EFUN == Zero))
            {
                Local0 &= 0x7F
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEIC = 0x81
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x05
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x20
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = Local0
                \_SB.PCI0.SBRG.EC0.WE_O ()
                WRNT = Local0
            }
        }
    }

    Scope (WMI0)
    {
        Method (AX_X, 5, NotSerialized)
        {
            OperationRegion (AX_X, SystemMemory, Arg0, 0x08)
            Field (AX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM10,   8, 
                EM10,   8
            }

            If ((Arg2 != 0x10))
            {
                Return (Zero)
            }

            If ((Arg3 == One))
            {
                A0_1 (Arg0)
                EM10 = Zero
            }
            Else
            {
                EM10 = One
            }

            If ((EM10 == Zero))
            {
                SM10 = 0x80
            }
            Else
            {
                SM10 = 0x82
            }

            Return (Zero)
        }

        Method (A0_1, 1, NotSerialized)
        {
            OperationRegion (AX_X, SystemMemory, Arg0, 0x10)
            Field (AX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                DLTM,   16
            }

            RT_W = DLTM /* \WMI0.A0_1.DLTM */
        }
    }

    Scope (WMI0)
    {
        Method (BX_X, 5, NotSerialized)
        {
            OperationRegion (BX_X, SystemMemory, Arg0, 0x08)
            Field (BX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM11,   8, 
                EM11,   8
            }

            If ((Arg2 != 0x11))
            {
                Return (Zero)
            }

            If ((Arg3 == 0x02))
            {
                B0_2 (Arg0, Arg3)
                EM11 = Zero
            }
            ElseIf ((Arg3 == 0x04))
            {
                B0_4 (Arg0)
                EM11 = Zero
            }
            ElseIf ((Arg3 == 0x82))
            {
                B8_2 (Arg0)
            }
            Else
            {
                EM11 = One
            }

            If ((EM11 == Zero))
            {
                SM11 = 0x80
            }
            Else
            {
                SM11 = 0x82
            }

            Return (Zero)
        }

        Method (B0_2, 2, NotSerialized)
        {
            OperationRegion (BX_X, SystemMemory, Arg0, 0x30)
            Field (BX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                BATN,   8, 
                BATA,   8, 
                REGS,   8, 
                BDAT,   16, 
                BLEN,   8, 
                BREV,   16, 
                BLK1,   32, 
                BLK2,   32, 
                BLK3,   32, 
                BLK4,   32, 
                BLK5,   32, 
                BLK6,   32, 
                BLK7,   32, 
                BLK8,   32
            }

            If ((BATN >= One))
            {
                Return (0x11)
            }

            If ((BATA == Zero))
            {
                Local0 = \_SB.PCI0.SBRG.EC0.SR_T (\_SB.PCI0.SBRG.EC0.RDWD, \_SB.PCI0.SBRG.EC0.BADR, REGS)
                BDAT = DerefOf (Local0 [0x02])
                Local2 = DerefOf (Local0 [Zero])
                Local2 &= 0x1F
                If (Local2)
                {
                    Local2 += 0x10
                }

                Return (Local2)
            }

            If ((BATA == One))
            {
                Local0 = \_SB.PCI0.SBRG.EC0.SW_T (\_SB.PCI0.SBRG.EC0.WRWD, \_SB.PCI0.SBRG.EC0.BADR, REGS, 0x02, BDAT)
                Local2 = DerefOf (Local0 [Zero])
                Local2 &= 0x1F
                If (Local2)
                {
                    Local2 += 0x10
                }

                Return (Local2)
            }

            If ((BATA == 0x02))
            {
                Name (BKUF, Buffer (0x20){})
                Local0 = \_SB.PCI0.SBRG.EC0.SR_T (\_SB.PCI0.SBRG.EC0.RDBL, \_SB.PCI0.SBRG.EC0.BADR, REGS)
                BKUF = DerefOf (Local0 [0x02])
                BLEN = DerefOf (Local0 [One])
                Local2 = DerefOf (Local0 [Zero])
                CreateDWordField (BKUF, One, DAT1)
                CreateDWordField (BKUF, 0x05, DAT2)
                CreateDWordField (BKUF, 0x09, DAT3)
                CreateDWordField (BKUF, 0x0D, DAT4)
                CreateDWordField (BKUF, 0x11, DAT5)
                CreateDWordField (BKUF, 0x15, DAT6)
                CreateDWordField (BKUF, 0x19, DAT7)
                BKUF = DerefOf (Local0 [0x02])
                BLK1 = DAT1 /* \WMI0.B0_2.DAT1 */
                BLK2 = DAT2 /* \WMI0.B0_2.DAT2 */
                BLK3 = DAT3 /* \WMI0.B0_2.DAT3 */
                BLK4 = DAT4 /* \WMI0.B0_2.DAT4 */
                BLK5 = DAT5 /* \WMI0.B0_2.DAT5 */
                BLK6 = DAT6 /* \WMI0.B0_2.DAT6 */
                BLK7 = DAT7 /* \WMI0.B0_2.DAT7 */
                BLK8 = Zero
                BLEN = DerefOf (Local0 [One])
                Local2 = DerefOf (Local0 [Zero])
                Local2 &= 0x1F
                If (Local2)
                {
                    Local2 += 0x10
                }

                Return (Local2)
            }

            Return (0x10)
        }

        Method (B0_4, 1, NotSerialized)
        {
            OperationRegion (BX_X, SystemMemory, Arg0, 0x10)
            Field (BX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM11,   8, 
                EM11,   8, 
                ENBC,   8
            }

            H0_0 (ENBC)
            Local0 = \_SB.PCI0.SBRG.EC0.RR_M (0x0298)
            Local3 = \_SB.PCI0.SBRG.EC0.RR_M (0x0496)
            If ((ENBC == One))
            {
                Local0 |= 0x20
                Local3 |= 0x80
            }
            ElseIf ((ENBC == Zero))
            {
                Local0 &= 0xDF
                Local3 &= 0x7F
            }
            Else
            {
                EM11 = One
            }

            Local1 = \_SB.PCI0.SBRG.EC0.RR_M (0x039B)
            \_SB.PCI0.SBRG.EC0.WR_M (0x0298, Local0)
            \_SB.PCI0.SBRG.EC0.WR_M (0x0496, Local3)
            Local2 = \_SB.PCI0.SBRG.EC0.RR_M (0x039B)
            Local1 &= 0x80
            Local2 &= 0x80
            Local3 = 0x32
            While ((Local1 == Local2))
            {
                Sleep (0x64)
                Local3 -= One
                If ((Local3 == Zero))
                {
                    Local2 = Zero
                    Break
                }

                Local2 = \_SB.PCI0.SBRG.EC0.RR_M (0x039B)
                Local2 &= 0x80
            }

            If ((Local2 == 0x80))
            {
                \_SB.BBAT = One
            }
            Else
            {
                \_SB.BBAT = Zero
            }

            Notify (\_SB.PCI0.AC0, 0x80) // Status Change
            Return (Zero)
        }

        Method (B8_2, 1, NotSerialized)
        {
            OperationRegion (BX_X, SystemMemory, Arg0, 0x10)
            Field (BX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM11,   8, 
                EM11,   8, 
                ENDI,   8
            }

            If ((ENDI == One))
            {
                H0_1 ()
            }
            Else
            {
                EM11 = One
            }

            ISMI (0xEB)
        }
    }

    Scope (WMI0)
    {
        Method (EX_X, 5, NotSerialized)
        {
            OperationRegion (EX_X, SystemMemory, Arg0, 0x08)
            Field (EX_X, DWordAcc, NoLock, Preserve)
            {
                Offset (0x06), 
                SM17,   8, 
                EM17,   8
            }

            If ((Arg2 != 0x17))
            {
                Return (Zero)
            }

            If ((Arg3 == 0x03))
            {
                E0_3 (Arg0)
                EM17 = Zero
            }
            Else
            {
                EM17 = One
            }

            If ((EM17 == Zero))
            {
                SM17 = 0x80
            }
            Else
            {
                SM17 = 0x82
            }

            Return (Zero)
        }

        Method (E0_3, 1, NotSerialized)
        {
            OperationRegion (EX_X, SystemMemory, Arg0, 0x20)
            Field (EX_X, ByteAcc, NoLock, Preserve)
            {
                Offset (0x08), 
                ELEN,   8, 
                ECVR,   128
            }

            \_SB.PCI0.SBRG.EC0.WE_I ()
            \_SB.PCI0.SBRG.EC0.AEIC = 0x88
            Local0 = Zero
            Local1 = Zero
            Local2 = Zero
            Name (ECBF, Buffer (0x10){})
            While (One)
            {
                \_SB.PCI0.SBRG.EC0.WE_O ()
                Local1 = \_SB.PCI0.SBRG.EC0.AEID
                If ((Local1 != Zero))
                {
                    ECBF [Local0] = Local1
                    Local0 += One
                }

                If ((Local2 == 0x10))
                {
                    Break
                }

                Local2 += One
            }

            ELEN = Local0
            ECVR = ECBF /* \WMI0.E0_3.ECBF */
        }
    }

    Scope (WMI0)
    {
        Method (FX_X, 5, NotSerialized)
        {
            If ((Arg2 == 0x1F))
            {
                OperationRegion (FX_X, SystemMemory, Arg0, 0x08)
                Field (FX_X, DWordAcc, NoLock, Preserve)
                {
                    MFUN,   16, 
                    SFUN,   16, 
                    LEN,    16, 
                    STAS,   8, 
                    EROR,   8
                }

                WSMI (Arg4)
                STAS &= 0xFE
            }
        }
    }

    Scope (WMI0)
    {
        Method (MX_X, 5, NotSerialized)
        {
            If ((Arg2 == 0x80))
            {
                OperationRegion (MX_X, SystemMemory, Arg0, 0x08)
                Field (MX_X, DWordAcc, NoLock, Preserve)
                {
                    MFUN,   16, 
                    SFUN,   16, 
                    LEN,    16, 
                    STAS,   8, 
                    EROR,   8
                }

                WSMI (Arg4)
            }
        }
    }

    Scope (WMI0)
    {
        Method (FS_M, 1, NotSerialized)
        {
            FS_F = Arg0
            Local0 = (Arg0 | 0xA0)
            ISMI (0xDC)
            Return (FS_T) /* \FS_T */
        }

        Method (WF_S, 5, Serialized)
        {
            If ((Arg2 == 0x66))
            {
                If ((Arg3 == One))
                {
                    OperationRegion (\WFLS, SystemMemory, Arg0, 0x0100)
                    Field (WFLS, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x06), 
                        STAS,   8, 
                        REST,   8, 
                        FS_F,   8, 
                        FS_T,   16, 
                        FA_D,   32, 
                        FS_Z,   16
                    }

                    STAS &= 0xFE
                    STAS |= 0x80
                    TT_P = 0xDC
                    \FS_F = FS_F /* \WMI0.WF_S.FS_F */
                    \FS_T = FS_T /* \WMI0.WF_S.FS_T */
                    \FA_D = FA_D /* \WMI0.WF_S.FA_D */
                    \FS_Z = FS_Z /* \WMI0.WF_S.FS_Z */
                    If ((FS_F == One))
                    {
                        \FA_D = Arg1
                    }
                    ElseIf ((FS_F == 0x80))
                    {
                        FA_D = Arg1
                        Local0 = 0x012C
                        While ((Local0 && TT_P))
                        {
                            Sleep (One)
                            Local0--
                        }
                    }

                    ISMI (0xDC)
                    FS_F = \FS_F
                    FS_T = \FS_T
                    FA_D = \FA_D
                    FS_Z = \FS_Z
                    STAS &= 0xFE
                    STAS |= 0x80
                }
            }
        }
    }

    Scope (_SB)
    {
        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Local0 = One
                Local0 = ^^PCI0.SBRG.EC0.RP_N (0x04, 0x06)
                If ((Local0 == Ones))
                {
                    Local0 = One
                }

                Return (Local0)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (LID, 0x80) // Status Change
        }
    }

    Scope (\)
    {
        Name (TSP, 0x0A)
        Name (TC1, 0x02)
        Name (TC2, 0x0A)
        Name (PSVF, Zero)
        Name (CRTF, Zero)
        Name (TCRT, 0x7F)
        Name (TPSV, 0x7F)
    }

    Scope (_TZ)
    {
        Method (CT_K, 1, NotSerialized)
        {
            Local0 = (Arg0 & 0xFF)
            If ((Local0 >= 0x80))
            {
                Local0 = (0x0100 - Local0)
                Local0 *= 0x0A
                Local0 = (0x0AAC - Local0)
                Return (Local0)
            }

            Local0 *= 0x0A
            Local0 += 0x0AAC
            Return (Local0)
        }

        Method (KT_C, 1, NotSerialized)
        {
            Local0 = (Arg0 - 0x0AAC)
            Divide (Local0, 0x0A, Local1, Local0)
            Return (Local0)
        }

        Name (PLCY, Zero)
        ThermalZone (THRM)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                TCRT = \_SB.PCI0.SBRG.EC0.RC_R ()
                Return (CT_K (TCRT))
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                Local1 = 0x05
                While (Local1)
                {
                    Local0 = \_SB.PCI0.SBRG.EC0.RT_M ()
                    If ((Local0 > TCRT))
                    {
                        Local1--
                    }
                    Else
                    {
                        Local1 = Zero
                    }
                }

                Local2 = TCRT /* \TCRT */
                Local2--
                If ((Local0 > Local2))
                {
                    If ((PSVF == One))
                    {
                        Return (CT_K (Local2))
                    }
                    ElseIf ((CRTF == One))
                    {
                        Return (CT_K (Local0))
                    }

                    Return (CT_K (Local2))
                }

                Return (CT_K (Local0))
            }

            Method (_PSL, 0, NotSerialized)  // _PSL: Passive List
            {
            }

            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Local0 = (TSP * 0x0A)
                Return (Local0)
            }

            Method (_TC1, 0, NotSerialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1) /* \TC1_ */
            }

            Method (_TC2, 0, NotSerialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2) /* \TC2_ */
            }

            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                TPSV = \_SB.PCI0.SBRG.EC0.RS_V ()
                Return (CT_K (TPSV))
            }

            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                PLCY = Zero
                Notify (THRM, 0x81) // Thermal Trip Point Change
            }
        }
    }

    Scope (\)
    {
        Method (H0_0, 1, NotSerialized)
        {
        }

        Method (H0_1, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.SBRG.EC0.RR_M (0x07FE)
            Local0 |= 0x80
            \_SB.PCI0.SBRG.EC0.WR_M (0x07FE, Local0)
            \_SB.PCI0.SBRG.EC0.SW_T (0x08, 0x0B, Zero, Zero, 0x10)
            \_SB.PCI0.SBRG.EC0.SW_T (0x08, 0x0B, Zero, Zero, 0x10)
        }

        Method (H0_2, 0, NotSerialized)
        {
        }

        Method (OE_S, 1, NotSerialized)
        {
        }

        Method (OE_W, 1, NotSerialized)
        {
        }
    }

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Scope (_SB.I2CD)
    {
        Name (HIDG, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */)
        Method (HIDD, 5, Serialized)
        {
            If ((Arg0 == HIDG))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == One))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Return (Arg4)
                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Device (TPD2)
        {
            Name (_HID, "ELAN1200")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (HID2, One)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Return (RBUF) /* \_SB_.I2CD.TPD2._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }

    Scope (_GPE)
    {
        Name (L06C, Zero)
        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            P80H = 0x06
            If ((L06C == Zero))
            {
                Notify (\_SB.PCI0.GPP0.PEGP, 0x81) // Information Change
            }
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Method (S2SC, 1, Serialized)
        {
        }

        Method (_QAE, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            THOT = Zero
            M010 (0x54)
            One
            If (AP_S ())
            {
                Notify (^^^GPP0.PEGP, 0xD1) // Hardware-Specific
            }
            Else
            {
                Notify (^^^GPP0.PEGP, 0xD5) // Hardware-Specific
                M010 (0x54)
                Zero
                THOT = One
            }
        }

        Method (_QAF, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            THOT = Zero
            M010 (0x54)
            One
            If (AP_S ())
            {
                Notify (^^^GPP0.PEGP, 0xD1) // Hardware-Specific
            }
            ElseIf ((B0PN >= 0x32))
            {
                Notify (^^^GPP0.PEGP, 0xD4) // Hardware-Specific
            }
            Else
            {
                Notify (^^^GPP0.PEGP, 0xD4) // Hardware-Specific
            }
        }

        Method (_QBE, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            THOT = One
            Notify (^^^GPP0.PEGP, 0xD5) // Hardware-Specific
            M010 (0x54)
            Zero
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x9A)
            }
        }

        Method (_QBF, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            THOT = Zero
            M010 (0x54)
            One
            If (AP_S ())
            {
                Notify (^^^GPP0.PEGP, 0xD1) // Hardware-Specific
            }
            ElseIf ((B0PN >= 0x32))
            {
                Notify (^^^GPP0.PEGP, 0xD4) // Hardware-Specific
            }
            Else
            {
                Notify (^^^GPP0.PEGP, 0xD4) // Hardware-Specific
            }
        }

        Method (_QAB, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x9B)
            }

            If (ATKP)
            {
                ^^^^ATKD.IANE (0x6D)
            }
            Else
            {
                Notify (PWRB, 0x80) // Status Change
            }
        }

        Method (_QCC, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x6D)
            }
            Else
            {
                Notify (SLPB, 0x80) // Status Change
            }
        }

        Method (_QB0, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Local0 = RR_M (0x051C)
            If ((Local0 & 0x02))
            {
                CRTF = One
                PSVF = Zero
            }
            ElseIf ((Local0 & One))
            {
                PSVF = One
                CRTF = Zero
            }
            Else
            {
                PSVF = Zero
                CRTF = Zero
            }

            Notify (\_TZ.THRM, 0x80) // Thermal Status Change
        }
    }

    OperationRegion (EXBU, SystemMemory, 0xBDA40E18, 0x0033)
    Field (EXBU, AnyAcc, Lock, Preserve)
    {
        FADR,   32, 
        FSIZ,   16, 
        FSTA,   16, 
        FSFN,   8, 
        AMLA,   32, 
        CCNM,   8, 
        FSMI,   8, 
        ALPR,   32, 
        ACPF,   8, 
        ALSP,   8, 
        ALAE,   8, 
        LBTN,   8, 
        KBLC,   8, 
        KBLV,   8, 
        WLDP,   8, 
        BTDP,   8, 
        TPME,   8, 
        INSK,   8, 
        LBLV,   8, 
        LBLS,   8, 
        EDID,   32, 
        WNVA,   32, 
        WNVB,   32, 
        WNVC,   32, 
        WNVD,   32
    }

    Name (OSYS, 0x07DC)
    Scope (_SB)
    {
        Name (OSCP, Zero)
        Method (BRTN, 1, Serialized)
        {
        }

        Method (P8XH, 2, Serialized)
        {
        }

        Method (PSTC, 1, Serialized)
        {
            Return (Zero)
        }
    }

    Scope (_SB)
    {
        Mutex (MSMI, 0x00)
        Method (W15H, 0, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            WSCP = 0xAA
            Release (MSMI)
            Return (WNVA) /* \WNVA */
        }
    }

    Scope (\)
    {
        Method (SWLL, 1, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                M010 (0x45)
                Zero
            }
            ElseIf ((Arg0 == One))
            {
                M010 (0x45)
                One
            }
        }

        Method (SALS, 1, NotSerialized)
        {
        }

        Method (GPBL, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (SPBI, 1, NotSerialized)
        {
            If ((Arg0 == 0x02))
            {
                \_SB.BLCT = One
            }
            Else
            {
                \_SB.BLCT = Zero
            }
        }

        Method (GKLS, 0, NotSerialized)
        {
            Local0 = One
            Return (Local0)
        }

        Method (GALL, 0, NotSerialized)
        {
            Local0 = 0x80
            Return (Local0)
        }

        Method (SLKI, 1, NotSerialized)
        {
            Local0 = (Arg0 & 0x80)
            Local1 = (Arg0 & 0x0F)
            If (Local0)
            {
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEIC = 0xCA
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = Zero
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = Local1
                \_SB.PCI0.SBRG.EC0.WE_I ()
                Local1 |= 0xF0
                KBBL = Local1
            }
            Else
            {
                Local1 |= 0xF0
                KBBL = Local1
                P80H = 0x86
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEIC = 0xCA
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = Zero
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = Zero
                \_SB.PCI0.SBRG.EC0.WE_I ()
            }

            Local1 = \_SB.PCI0.SBRG.EC0.RR_M (0x0C53)
            Local1 |= 0x20
            \_SB.PCI0.SBRG.EC0.WR_M (0x0C53, Local1)
            Return (One)
        }

        Method (GLBS, 0, NotSerialized)
        {
            Local0 = LBLS /* \LBLS */
            Return (Local0)
        }

        Method (SLBS, 1, NotSerialized)
        {
            LBLS = Arg0
        }

        Method (SLBL, 1, NotSerialized)
        {
            LBLV = Arg0
        }

        Method (GLBL, 0, NotSerialized)
        {
            Local0 = LBLV /* \LBLV */
            Return (Local0)
        }

        Method (GAC3, 0, NotSerialized)
        {
            Local0 = 0x04
            Return (Local0)
        }

        Method (SAIC, 1, NotSerialized)
        {
        }

        Method (GAC6, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (SUCP, 1, NotSerialized)
        {
        }

        Method (SPTP, 1, NotSerialized)
        {
            If ((Arg0 == Zero)){}
            If ((Arg0 == One)){}
            If ((Arg0 == 0x02))
            {
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEIC = 0xB8
                \_SB.PCI0.SBRG.EC0.WE_I ()
                \_SB.PCI0.SBRG.EC0.AEID = 0x07
            }
        }

        Method (SFSS, 1, NotSerialized)
        {
        }

        Method (GFBM, 0, NotSerialized)
        {
            Local0 = 0x00010003
            Return (Local0)
        }

        Method (SFBM, 1, NotSerialized)
        {
            If ((Arg0 == Zero))
            {
                FANM = Zero
                \_SB.PCI0.SBRG.EC0.PTPT ()
                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x08, 0x05, 0x00, 0x00, 0x00         // .......
                }

                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x01, 0xC8, 0x00, 0x00, 0x00         // .......
                }

                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x03, 0x5C, 0x00, 0x00, 0x00         // ...\...
                }

                P80H = 0xC0
                If (\_SB.PCI0.SBRG.EC0.AC_P ())
                {
                    Notify (\_SB.PCI0.GPP0.PEGP, 0xD1) // Hardware-Specific
                }

                \_SB.PCI0.SBRG.EC0.WVDC ()
            }

            If ((Arg0 == One))
            {
                FANM = One
                \_SB.PCI0.SBRG.EC0.PTP1 ()
                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x08, 0x05, 0x00, 0x00, 0x00         // .......
                }

                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x01, 0xC8, 0x00, 0x00, 0x00         // .......
                }

                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x03, 0x5C, 0x00, 0x00, 0x00         // ...\...
                }

                P80H = 0xC1
                If (\_SB.PCI0.SBRG.EC0.AC_P ())
                {
                    Notify (\_SB.PCI0.GPP0.PEGP, 0xD1) // Hardware-Specific
                }

                \_SB.PCI0.SBRG.EC0.WVDC ()
            }

            If ((Arg0 == 0x02))
            {
                FANM = 0x02
                \_SB.PCI0.SBRG.EC0.PTP2 ()
                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x08, 0x05, 0x00, 0x00, 0x00         // .......
                }

                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x01, 0xC8, 0x00, 0x00, 0x00         // .......
                }

                \_SB.ALIB (0x0C)
                Buffer (0x07)
                {
                     0x07, 0x00, 0x03, 0x5C, 0x00, 0x00, 0x00         // ...\...
                }

                P80H = 0xC2
                If (\_SB.PCI0.SBRG.EC0.AC_P ())
                {
                    Notify (\_SB.PCI0.GPP0.PEGP, 0xD1) // Hardware-Specific
                }

                \_SB.PCI0.SBRG.EC0.WVDC ()
            }
        }

        Method (PCNS, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (PCDS, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (FCT3, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (BRC4, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (MVNS, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (MVDS, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (DV47, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (PCS4, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (FCC9, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (SAWB, 1, NotSerialized)
        {
            If ((Arg0 & One))
            {
                \_SB.BBAT = Arg0
                Notify (\_SB.PCI0.AC0, 0x80) // Status Change
                Return (One)
            }
            Else
            {
                \_SB.BBAT = Arg0
                Notify (\_SB.PCI0.AC0, 0x80) // Status Change
                Return (One)
            }

            Return (Zero)
        }

        Method (GDKS, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (GDKA, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (GUSB, 0, NotSerialized)
        {
            Local0 = Zero
            Return (Local0)
        }

        Method (GITS, 0, NotSerialized)
        {
            If ((\_SB.PCI0.SBRG.EC0.RR_M (0x04FE) == 0x34))
            {
                Local0 = 0x05
            }
            Else
            {
                Local0 = Zero
            }

            Return (Local0)
        }
    }

    Scope (_SB)
    {
        Name (ATKP, Zero)
        Name (AITM, Zero)
        Name (PLMD, Zero)
        Name (MUTX, One)
        Name (LEDS, Zero)
        Name (PWKY, Zero)
        Name (BLCT, Zero)
        Name (BBAT, Zero)
        OperationRegion (WSMI, SystemIO, 0xB2, 0x02)
        Field (WSMI, ByteAcc, NoLock, Preserve)
        {
            WSCP,   8, 
            WSSP,   8
        }

        Mutex (MMTX, 0x00)
        Method (WISM, 1, NotSerialized)
        {
            Acquire (MMTX, 0xFFFF)
            WSCP = Arg0
            Release (MMTX)
        }

        Method (ASMI, 1, Serialized)
        {
            ALPR = Arg0
            WSCP = EXSI /* \EXSI */
            Return (ALPR) /* \ALPR */
        }

        Device (ASHS)
        {
            Name (_HID, "ATK4002")  // _HID: Hardware ID
            Method (HSWC, 1, Serialized)
            {
                If ((Arg0 < 0x02))
                {
                    OWGD (Arg0)
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    Local0 = OWGS ()
                    If (Local0)
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (0x05)
                    }
                }

                If ((Arg0 == 0x03))
                {
                    Return (OHWS ())
                }

                If ((Arg0 == 0x04))
                {
                    OWGD (Zero)
                    Return (One)
                }

                If ((Arg0 == 0x05))
                {
                    OWGD (One)
                    Return (One)
                }

                If ((Arg0 == 0x80))
                {
                    Return (One)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OSYS >= 0x07DC))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (OWGD, 1, NotSerialized)
            {
                ^^ATKD.WLED (Arg0)
                ^^ATKD.BLED (Arg0)
                ^^ATKD.WMXC (Arg0)
            }

            Method (OWGS, 0, NotSerialized)
            {
                Local0 = Zero
                Return (Local0)
            }

            Method (OHWS, 0, NotSerialized)
            {
                Return (0xFF)
            }
        }

        Device (ATKD)
        {
            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, "ATK")  // _UID: Unique ID
            Name (ATKQ, Package (0x10)
            {
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Name (AQHI, Zero)
            Name (AQTI, 0x0F)
            Name (AQNO, Zero)
            Name (WAPF, Zero)
            Name (PCDV, Zero)
            Name (SWKP, Zero)
            Method (IANQ, 1, Serialized)
            {
                P8XH (Zero, 0xD3)
                If ((AQNO >= 0x10))
                {
                    Local0 = 0x64
                    While ((Local0 && (AQNO >= 0x10)))
                    {
                        Local0--
                        Sleep (0x0A)
                    }

                    If ((Local0 && (AQNO >= 0x10)))
                    {
                        Return (Zero)
                    }
                }

                AQTI++
                AQTI &= 0x0F
                ATKQ [AQTI] = Arg0
                AQNO++
                Return (One)
            }

            Method (GANQ, 0, Serialized)
            {
                P8XH (Zero, 0xF2)
                If (AQNO)
                {
                    AQNO--
                    Local0 = DerefOf (ATKQ [AQHI])
                    AQHI++
                    AQHI &= 0x0F
                    Return (Local0)
                }

                Return (One)
            }

            Method (IANE, 1, Serialized)
            {
                P8XH (Zero, 0xF1)
                IANQ (Arg0)
                Notify (ATKD, 0xFF) // Hardware-Specific
            }

            Name (_WDG, Buffer (0x3C)
            {
                /* 0000 */  0xD0, 0x5E, 0x84, 0x97, 0x6D, 0x4E, 0xDE, 0x11,  // .^..mN..
                /* 0008 */  0x8A, 0x39, 0x08, 0x00, 0x20, 0x0C, 0x9A, 0x66,  // .9.. ..f
                /* 0010 */  0x4E, 0x42, 0x01, 0x02, 0x35, 0xBB, 0x3C, 0x0B,  // NB..5.<.
                /* 0018 */  0xC2, 0xE3, 0xED, 0x45, 0x91, 0xC2, 0x4C, 0x5A,  // ...E..LZ
                /* 0020 */  0x6D, 0x19, 0x5D, 0x1C, 0xFF, 0x00, 0x01, 0x08,  // m.].....
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0038 */  0x4D, 0x4F, 0x01, 0x00                           // MO..
            })
            Method (OFBD, 1, NotSerialized)
            {
                Name (FBDT, Package (0x53)
                {
                    0x88, 
                    0x89, 
                    0x8A, 
                    0x8B, 
                    0x8C, 
                    0x8D, 
                    0x8E, 
                    0x8F, 
                    0x70, 
                    0x71, 
                    0x72, 
                    0x73, 
                    0x74, 
                    0x75, 
                    0x76, 
                    0x77, 
                    0x78, 
                    0x79, 
                    0x7A, 
                    0x7B, 
                    0x7C, 
                    0x7D, 
                    0x7E, 
                    0x7F, 
                    0x60, 
                    0x61, 
                    0x62, 
                    0x63, 
                    0x64, 
                    0x65, 
                    0x66, 
                    0x67, 
                    0x91, 
                    0x92, 
                    0x93, 
                    0x96, 
                    0xE0, 
                    0xE1, 
                    0xE2, 
                    0xE3, 
                    0xE4, 
                    0xE5, 
                    0xE6, 
                    0xE7, 
                    0xE8, 
                    0xE9, 
                    0xEA, 
                    0xEB, 
                    0xEC, 
                    0xED, 
                    0xEE, 
                    0xEF, 
                    0xD0, 
                    0xD1, 
                    0xD2, 
                    0xD3, 
                    0xD4, 
                    0xD5, 
                    0xD6, 
                    0xD7, 
                    0xD8, 
                    0xD9, 
                    0xDA, 
                    0xDB, 
                    0xDC, 
                    0xDD, 
                    0xDE, 
                    0xDF, 
                    0xC0, 
                    0xC1, 
                    0xC2, 
                    0xC3, 
                    0xC4, 
                    0xC5, 
                    0xC6, 
                    0xC7, 
                    0xF0, 
                    0xF1, 
                    0xF2, 
                    0xF3, 
                    0xF6, 
                    0xF7, 
                    0xFA
                })
                Local0 = Match (FBDT, MEQ, Arg0, MTR, Zero, Zero)
                Local0++
                Return (Local0)
            }

            Method (WMNB, 3, Serialized)
            {
                P8XH (Zero, 0x11)
                CreateDWordField (Arg2, Zero, IIA0)
                CreateDWordField (Arg2, 0x04, IIA1)
                CreateDWordField (Arg2, 0x08, IIA2)
                Local0 = (Arg1 & 0xFFFFFFFF)
                If ((Local0 == 0x54494E49))
                {
                    INIT (IIA0)
                    Return (One)
                }

                If ((Local0 == 0x53545342))
                {
                    Return (BSTS ())
                }

                If ((Local0 == 0x4E554653))
                {
                    Return (SFUN ())
                }

                If ((Local0 == 0x4E464741))
                {
                    Return (AGFN (IIA0))
                }

                If ((Local0 == 0x4647574D))
                {
                    Return (MWGF (IIA0, IIA1, Local0))
                }

                If ((Local0 == 0x44434C47))
                {
                    Return (GLCD ())
                }

                If ((Local0 == 0x474F4457))
                {
                    Return (WDOG (IIA0))
                }

                If ((Local0 == 0x494E424B))
                {
                    Return (KBNI ())
                }

                If ((Local0 == 0x47444353))
                {
                    Return (SCDG (IIA0))
                }

                If ((Local0 == 0x43455053))
                {
                    Return (SPEC (IIA0))
                }

                If ((Local0 == 0x5256534F))
                {
                    OSVR (IIA0)
                    Return (Zero)
                }

                If ((Local0 == 0x53524556))
                {
                    Return (VERS (IIA0, IIA1))
                }

                If ((Local0 == 0x4C425053))
                {
                    Return (SPBL (IIA0))
                }

                If ((Local0 == 0x50534453))
                {
                    BRTN (IIA0)
                    Return (One)
                }

                If ((Local0 == 0x50534447))
                {
                    Return (GDSP (IIA0))
                }

                If ((Local0 == 0x49564E41))
                {
                    Return (ANVI (IIA0))
                }

                If ((Local0 == 0x46494243))
                {
                    Return (CBIF (IIA0))
                }

                If ((Local0 == 0x53545344))
                {
                    If ((IIA0 == 0x00010001))
                    {
                        Return (0x00040000)
                    }

                    If ((IIA0 == 0x00010002))
                    {
                        Return (0x00050002)
                    }

                    If ((IIA0 == 0x00010003))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010011))
                    {
                        If (WLDP)
                        {
                            Return (0x00030001)
                        }
                        Else
                        {
                            Return (0x02)
                        }
                    }

                    If ((IIA0 == 0x00010012))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010013))
                    {
                        If (BTDP)
                        {
                            Return (0x00030001)
                        }
                        Else
                        {
                            Return (0x02)
                        }
                    }

                    If ((IIA0 == 0x00010014))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010015))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010016))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010019))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010020))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010021))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010022))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010023))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010024))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010025))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00010026))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00020013))
                    {
                        Return ((GALE (0x04) | 0x00050000))
                    }

                    If ((IIA0 == 0x00020019))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00020023))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00030001))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00030011))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00030012))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00030021))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00030022))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00040015))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00040016))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050001))
                    {
                        GALS ()
                    }

                    If ((IIA0 == 0x00050011))
                    {
                        Return (GPBL ())
                    }

                    If ((IIA0 == 0x00050012))
                    {
                        If ((OSYS >= 0x07DC))
                        {
                            Local0 = (0x64 - Zero)
                            Local0 <<= 0x08
                            Local1 = (Local0 + 0x64)
                        }
                        Else
                        {
                        }

                        Return (Local1)
                    }

                    If ((IIA0 == 0x00050013))
                    {
                        Local0 = (GALS () & 0x0F0F)
                        Return (Local0)
                    }

                    If ((IIA0 == 0x00050014))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050015))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050016))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050017))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050018))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050019))
                    {
                        If (One)
                        {
                            Local0 = 0x00010000
                        }
                        Else
                        {
                            Local0 = 0x00010001
                        }

                        Return (Local0)
                    }

                    If ((IIA0 == 0x00050020)){}
                    If ((IIA0 == 0x00050021))
                    {
                        If (GLKB (One))
                        {
                            Local0 = One
                            Local0 <<= 0x08
                            Local0 += GLKB (0x02)
                            Local0 |= 0x00150000
                        }

                        Return (Local0)
                    }

                    If ((IIA0 == 0x00050022))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050023))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050024))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00050025))
                    {
                        Return (GLBS ())
                    }

                    If ((IIA0 == 0x00050026))
                    {
                        Return (GLBL ())
                    }

                    If ((IIA0 == 0x00060013))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060023))
                    {
                        Return (GAC3 ())
                    }

                    If ((IIA0 == 0x00060024))
                    {
                        Return (Package (0x03)
                        {
                            0x8C318086, 
                            One, 
                            0xFFFFFFFF
                        })
                    }

                    If ((IIA0 == 0x00060025))
                    {
                        Return (Package (0x03)
                        {
                            0x04, 
                            0x1D00, 
                            0xFFFFFFFF
                        })
                    }

                    If ((IIA0 == 0x00060026))
                    {
                        Return (GAC6 ())
                    }

                    If ((IIA0 == 0x00060031))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060041))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060051))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060054))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060055))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060056))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060057))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060061))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060062))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060064))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060065))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060072))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060073))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060081))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060091))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060092))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00080041))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00080043))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00080044))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00090014))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00090015))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100012))
                    {
                        CPTL (One)
                    }

                    If ((IIA0 == 0x00100013))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100021))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100022))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100031))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100033))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100041))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100051))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100052))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100053))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100054))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100055))
                    {
                        Local1 = ^^PCI0.SBRG.EC0.RP_N (0x07, 0x07)
                        If (Local1)
                        {
                            Local0 = 0x04
                        }
                        Else
                        {
                            Local0 = Zero
                        }

                        Local0 |= 0x00010000
                        Return (Local0)
                    }

                    If ((IIA0 == 0x00100056))
                    {
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00100057))
                    {
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00100058))
                    {
                        Return (0x0200)
                    }

                    If ((IIA0 == 0x00100061))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100062))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00110011))
                    {
                        Return ((TMPR () & 0xFFFF))
                    }

                    If ((IIA0 == 0x00110013))
                    {
                        Local0 = ^^PCI0.SBRG.EC0.F0TS /* \_SB_.PCI0.SBRG.EC0_.F0TS */
                        Divide (0x008C6180, 0x80, Local1, Local2)
                        Local3 = (0x3C * Local2)
                        Local0 *= 0x02
                        Divide (Local3, Local0, Local4, Local0)
                        Divide (Local0, 0x64, Local4, Local0)
                        If ((Local4 >= 0x32))
                        {
                            Local0 += One
                        }

                        Local0 |= 0x00010000
                        Local5 = ^^PCI0.SBRG.EC0.RR_M (0x0521)
                        Local5 &= 0x40
                        If ((Local5 != Zero))
                        {
                            Local0 |= 0x00090000
                        }

                        Return (Local0)
                    }

                    If ((IIA0 == 0x00110014))
                    {
                        Local0 = ^^PCI0.SBRG.EC0.F1TS /* \_SB_.PCI0.SBRG.EC0_.F1TS */
                        Divide (0x008C6180, 0x80, Local1, Local2)
                        Local3 = (0x3C * Local2)
                        Local0 *= 0x02
                        Divide (Local3, Local0, Local4, Local0)
                        Divide (Local0, 0x64, Local4, Local0)
                        If ((Local4 >= 0x32))
                        {
                            Local0 += One
                        }

                        Local0 |= 0x00010000
                        Local5 = ^^PCI0.SBRG.EC0.RR_M (0x0522)
                        Local5 &= 0x40
                        If ((Local5 != Zero))
                        {
                            Local0 |= 0x00090000
                        }

                        Return (Local0)
                    }

                    If ((IIA0 == 0x00110015))
                    {
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00110016))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00110017))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00110018))
                    {
                        Return (GFBM ())
                    }

                    If ((IIA0 == 0x00120075))
                    {
                        Return (GFBM ())
                    }

                    If ((IIA0 == 0x00120012))
                    {
                        Return (PSTC (Zero))
                    }

                    If ((IIA0 == 0x00120013))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120015))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120031))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120041))
                    {
                        Return (PCNS ())
                    }

                    If ((IIA0 == 0x00120042))
                    {
                        Return (PCDS ())
                    }

                    If ((IIA0 == 0x00120043))
                    {
                        Return (FCT3 ())
                    }

                    If ((IIA0 == 0x00120044))
                    {
                        Return (BRC4 ())
                    }

                    If ((IIA0 == 0x00120045))
                    {
                        Return (MVNS ())
                    }

                    If ((IIA0 == 0x00120046))
                    {
                        Return (MVDS ())
                    }

                    If ((IIA0 == 0x00120047))
                    {
                        Return (DV47 ())
                    }

                    If ((IIA0 == 0x00120048))
                    {
                        Return (PCS4 ())
                    }

                    If ((IIA0 == 0x00120049))
                    {
                        Return (FCC9 ())
                    }

                    If ((IIA0 == 0x0012004A))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120050))
                    {
                        Return (Package (0x05)
                        {
                            0x0001FFFF, 
                            Zero, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                    }

                    If ((IIA0 == 0x00120051))
                    {
                        Return (Package (0x05)
                        {
                            0x0001FFFF, 
                            Zero, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                    }

                    If ((IIA0 == 0x00120052))
                    {
                        Return (Package (0x05)
                        {
                            0x0001FFFF, 
                            Zero, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                    }

                    If ((IIA0 == 0x00120053))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120054))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120055))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120057))
                    {
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00120061))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120062))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120063))
                    {
                        Return (GDKS ())
                    }

                    If ((IIA0 == 0x00120064))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120065))
                    {
                        Return (GDKA ())
                    }

                    If ((IIA0 == 0x00120067))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120068))
                    {
                        Return (GUSB ())
                    }

                    If ((IIA0 == 0x00120069))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120072))
                    {
                        Return (Local0)
                    }

                    If ((IIA0 == 0x00120073))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120074))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00130011))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120057))
                    {
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00130021))
                    {
                        Local0 = 0x00010000
                        Local0 |= 0x04
                        Return (Local0)
                    }

                    If ((IIA0 == 0x00130022))
                    {
                        WNVA = 0x9601
                        WNVB = 0x00130022
                        WNVC = Zero
                        WNVD = Zero
                        Return (W15H ())
                    }

                    Return (Zero)
                }

                If ((Local0 == 0x53564544))
                {
                    If ((IIA0 == 0x00010001))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00010002))
                    {
                        OWGD (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010003))
                    {
                        Return (CWAP (IIA1))
                    }

                    If ((IIA0 == 0x00010011))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00010012))
                    {
                        WLED (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010013))
                    {
                        BLED (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010014))
                    {
                        BLED (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010015))
                    {
                        GPSC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010016))
                    {
                        GLED (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010017))
                    {
                        WMXC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010018))
                    {
                        WMXL (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010019))
                    {
                        GSMC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010020))
                    {
                        SMCL (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010021))
                    {
                        UWBC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010022))
                    {
                        UWBL (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010023))
                    {
                        IDAC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010024))
                    {
                        IDAL (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010025))
                    {
                        LTEC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00010026))
                    {
                        LTEL (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00020013))
                    {
                        Return (SALE ((IIA1 + 0x08)))
                    }

                    If ((IIA0 == 0x00020019))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00020023))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00030001))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00030011))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00030012))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00030021))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00030022))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00040015))
                    {
                        Return (SALE ((IIA1 + 0x10)))
                    }

                    If ((IIA0 == 0x00040016))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00050001))
                    {
                        Return (ALSC (IIA1))
                    }

                    If ((IIA0 == 0x00050011))
                    {
                        SPBI (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00050012))
                    {
                        SPLV (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00050013))
                    {
                        Return (ALSL (IIA1))
                    }

                    If ((IIA0 == 0x00050016))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00050017))
                    {
                        SWKP = One
                        Return (One)
                    }

                    If ((IIA0 == 0x00050018))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00050019))
                    {
                        Local0 = (IIA1 & 0xFF)
                        If ((Local0 == Zero)){}
                        Else
                        {
                        }

                        Return (One)
                    }

                    If ((IIA0 == 0x00050021))
                    {
                        SLKB (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00050023))
                    {
                        RLKB (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00050024))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00050025))
                    {
                        SLBS (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00050026))
                    {
                        SLBL (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00060013))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00060023))
                    {
                        SAIC (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00060024))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060025))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060026))
                    {
                        SUCP (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00060031))
                    {
                        Return (0x00010000)
                    }

                    If ((IIA0 == 0x00060054))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060057))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060061))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060062))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060063))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060064))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060066))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060073))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060091))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00060092))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00090014))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00090015))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00100012))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00100013))
                    {
                        SPTP (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00100021))
                    {
                        ^^PCI0.SBRG.EC0.SKEY (IIA1)
                    }

                    If ((IIA0 == 0x00100022))
                    {
                        If ((IIA1 & 0x02))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100031))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00100033))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00100041))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00100051))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100052))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00100054))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00100055))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00100056))
                    {
                        Local0 = (IIA1 & 0xFF)
                        Local1 = (IIA1 & 0xFF00)
                        Local1 >>= 0x08
                        Local2 = (IIA1 & 0x00FF0000)
                        Local2 >>= 0x10
                        Local3 = (IIA1 & 0xFF000000)
                        Local3 >>= 0x18
                        Local4 = (IIA2 & 0xFF)
                        Local5 = (IIA2 & 0xFF00)
                        Local5 >>= 0x08
                        If ((Local0 == 0xB3))
                        {
                            ^^PCI0.SBRG.EC0.AEIC = 0xC8
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local1
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local2
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local3
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local4
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local5
                            ^^PCI0.SBRG.EC0.WE_O ()
                        }
                        ElseIf ((Local0 == 0xB4))
                        {
                            ^^PCI0.SBRG.EC0.AEIC = 0xC8
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local1
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local2
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local3
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local4
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local5
                            ^^PCI0.SBRG.EC0.WE_O ()
                            KBBE = Local1
                            KBBR = Local2
                            KBBG = Local3
                            KBBB = Local4
                            KBBS = Local5
                            KBE1 = One
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (One)
                    }

                    If ((IIA0 == 0x00100057))
                    {
                        Local0 = (IIA1 & 0xFF)
                        Local1 = (IIA1 & 0xFF00)
                        Local1 >>= 0x08
                        Local2 = (IIA1 & 0x00FF0000)
                        Local2 >>= 0x10
                        If ((Local0 == 0xBD))
                        {
                            ^^PCI0.SBRG.EC0.AEIC = 0xC9
                            ^^PCI0.SBRG.EC0.WE_I ()
                            ^^PCI0.SBRG.EC0.AEID = Local2
                            ^^PCI0.SBRG.EC0.WE_O ()
                            If ((Local1 == One))
                            {
                                KBST = Local2
                                KBE2 = One
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (One)
                    }

                    If ((IIA0 == 0x00100061))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00110013))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00110014))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00110015))
                    {
                        SFSS (IIA1)
                    }

                    If ((IIA0 == 0x00110016))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00110017))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00110018))
                    {
                        SFBM (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00120075))
                    {
                        SFBM (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00120012))
                    {
                        Return (PSTC ((IIA1 + One)))
                    }

                    If ((IIA0 == 0x00120013))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00120031))
                    {
                        DESP (IIA1)
                        Return (One)
                    }

                    If ((IIA0 == 0x00120053))
                    {
                        SAWB (IIA1)
                    }

                    If ((IIA0 == 0x00120055))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00120057))
                    {
                        Local0 = IIA1 /* \_SB_.ATKD.WMNB.IIA1 */
                        If ((Local0 > 0x50))
                        {
                            ^^PCI0.SBRG.EC0.WR_M (0x07E8, 0x5F)
                            ^^PCI0.SBRG.EC0.WR_M (0x07E9, 0x64)
                        }
                        ElseIf ((Local0 > 0x3C))
                        {
                            ^^PCI0.SBRG.EC0.WR_M (0x07E8, 0x4E)
                            ^^PCI0.SBRG.EC0.WR_M (0x07E9, 0x50)
                        }
                        Else
                        {
                            ^^PCI0.SBRG.EC0.WR_M (0x07E8, 0x3A)
                            ^^PCI0.SBRG.EC0.WR_M (0x07E9, 0x3C)
                        }

                        Return (One)
                    }

                    If ((IIA0 == 0x00120062))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00120064))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00120072))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120073))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00120074))
                    {
                        Return (Zero)
                    }

                    If ((IIA0 == 0x00130011))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00120057))
                    {
                        Return (One)
                    }

                    If ((IIA0 == 0x00130022))
                    {
                        WNVA = 0x9602
                        WNVB = 0x00130022
                        WNVC = IIA1 /* \_SB_.ATKD.WMNB.IIA1 */
                        WNVD = Zero
                        Return (W15H ())
                    }

                    Return (Zero)
                }
            }

            Method (SPEC, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (0x00080001)
                }

                If ((Arg0 == One))
                {
                    Return (One)
                }

                Return (One)
            }

            Method (SCDG, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                If ((Arg0 == 0xFF))
                {
                    Return (GANQ ())
                }

                Return (One)
            }

            Method (INIT, 1, NotSerialized)
            {
                ATKP = One
            }

            Method (BSTS, 0, NotSerialized)
            {
                If (ACPF)
                {
                    Local0 = Zero
                }
                Else
                {
                    Local0 = GITS ()
                }

                Return (Local0)
            }

            Method (SFUN, 0, NotSerialized)
            {
                Local0 = 0x21
                Local0 |= 0x40
                Local0 |= 0x00020000
                Local0 |= 0x00080000
                Local0 |= 0x00400000
                Return (Local0)
            }

            Method (WDOG, 1, NotSerialized)
            {
                Return (Zero)
            }

            Method (KBNI, 0, NotSerialized)
            {
                Return (One)
            }

            Method (OSVR, 1, NotSerialized)
            {
                OSFG = Arg0
            }

            Method (VERS, 2, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (0x00090000)
                }

                Return (0xFFFFFFFE)
            }

            Method (GALE, 1, NotSerialized)
            {
                If ((Arg0 == 0x04))
                {
                    If ((LEDS && 0x04))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If ((Arg0 == 0x08))
                {
                    If ((LEDS && 0x08))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                If ((Arg0 == 0x10))
                {
                    If ((LEDS && 0x10))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (0x02)
            }

            Method (SALE, 1, NotSerialized)
            {
                If ((Arg0 == 0x02))
                {
                    Return (One)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Return (One)
                }

                If ((Arg0 == 0x04))
                {
                    Return (One)
                }
                ElseIf ((Arg0 == 0x05))
                {
                    Return (One)
                }

                If ((Arg0 == 0x08))
                {
                    Return (One)
                }
                ElseIf ((Arg0 == 0x09))
                {
                    Return (One)
                }

                If ((Arg0 == 0x10))
                {
                    Return (One)
                }
                ElseIf ((Arg0 == 0x11))
                {
                    Return (One)
                }

                If ((Arg0 == 0x20))
                {
                    Return (One)
                }
                ElseIf ((Arg0 == 0x21))
                {
                    Return (One)
                }

                If ((Arg0 == 0x40))
                {
                    Return (One)
                }
                ElseIf ((Arg0 == 0x41))
                {
                    Return (One)
                }

                If ((Arg0 == 0x80))
                {
                    Return (One)
                }
                ElseIf ((Arg0 == 0x81))
                {
                    Return (One)
                }

                Return (One)
            }

            Method (TMPR, 0, NotSerialized)
            {
                Return (One)
            }

            Method (GALS, 0, NotSerialized)
            {
                Local0 = Zero
                Local0 |= 0x20
                If (ALAE)
                {
                    Local0 |= 0x10
                }

                Local1 = (0x0B - One)
                Local1 <<= 0x08
                Local0 |= Local1
                Return (Local0)
            }

            Method (SPLV, 1, Serialized)
            {
                Local0 = Arg0
                Switch (Local0)
                {
                    Case (Zero)
                    {
                        Local1 = 0x33
                    }
                    Case (One)
                    {
                        Local1 = 0x40
                    }
                    Case (0x02)
                    {
                        Local1 = 0x4D
                    }
                    Case (0x03)
                    {
                        Local1 = 0x59
                    }
                    Case (0x04)
                    {
                        Local1 = 0x66
                    }
                    Case (0x05)
                    {
                        Local1 = 0x73
                    }
                    Case (0x06)
                    {
                        Local1 = 0x80
                    }
                    Case (0x07)
                    {
                        Local1 = 0x8C
                    }
                    Case (0x08)
                    {
                        Local1 = 0xA6
                    }
                    Case (0x09)
                    {
                        Local1 = 0xCC
                    }
                    Case (0x0A)
                    {
                        Local1 = 0xFF
                    }

                }

                LBTN = Local0
                Return (Local1)
            }

            Method (SPBL, 1, NotSerialized)
            {
                If ((Arg0 == 0x0100))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x80))
                {
                    Return (One)
                }

                If ((Arg0 > 0x0F))
                {
                    Return (Zero)
                }

                If ((Arg0 < Zero))
                {
                    Return (Zero)
                }

                Return (One)
            }

            Method (ALSC, 1, NotSerialized)
            {
                SALS (Arg0)
                Return (One)
            }

            Method (ALSL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (CWAP, 1, NotSerialized)
            {
                WAPF |= Arg0 /* \_SB_.ATKD.WAPF */
                Return (One)
            }

            Method (BLED, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GPSC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GLED, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GSMC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (SMCL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WMXC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WMXL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (UWBC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (UWBL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WLED, 1, NotSerialized)
            {
                SWLL (Arg0)
                Return (One)
            }

            Method (IDAC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (IDAL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (LTEC, 1, NotSerialized)
            {
                Return (One)
            }

            Method (LTEL, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GDSP, 1, NotSerialized)
            {
                If ((Arg0 == Zero)){}
                If ((Arg0 == One)){}
                If ((Arg0 == 0x02)){}
                If ((Arg0 == 0x03)){}
                If ((Arg0 == 0x04)){}
                If ((Arg0 == 0x05)){}
                If ((Arg0 == 0x06)){}
                If ((Arg0 == 0x80))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (QMOD, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (Zero)
                }

                If ((Arg0 == One)){}
                If ((Arg0 == 0x02)){}
                Return (One)
            }

            Method (ANVI, 1, Serialized)
            {
                FSMI = 0x04
                Return (ASMI (Arg0))
            }

            Method (CBIF, 1, Serialized)
            {
                Return (One)
            }

            Method (DESP, 1, Serialized)
            {
                Return (One)
            }

            Method (TLED, 1, NotSerialized)
            {
                Return (One)
            }

            Method (CPTL, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (Zero)
                }

                If ((Arg0 == One))
                {
                    Return (Zero)
                }
            }

            Method (GLKB, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (GKLS ())
                }
                ElseIf ((Arg0 == 0x02))
                {
                    ^^PCI0.SBRG.EC0.WE_I ()
                    ^^PCI0.SBRG.EC0.AEIC = 0xCA
                    ^^PCI0.SBRG.EC0.WE_I ()
                    ^^PCI0.SBRG.EC0.AEID = One
                    ^^PCI0.SBRG.EC0.WE_I ()
                    ^^PCI0.SBRG.EC0.AEID = Zero
                    ^^PCI0.SBRG.EC0.WE_O ()
                    Local0 = ^^PCI0.SBRG.EC0.AEID /* \_SB_.PCI0.SBRG.EC0_.AEID */
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Return (GALL ())
                }

                Return (One)
            }

            Method (SLKB, 1, NotSerialized)
            {
                Return (SLKI (Arg0))
            }

            Method (RLKB, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (One)
                }

                If ((Arg0 == One))
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    Return (One)
                }

                If ((Arg0 == 0x0100))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (GNIC, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == One))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x02))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x03))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x04))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x05))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x06))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x07))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x08))
                {
                    Return (Zero)
                }
                ElseIf ((Arg0 == 0x09))
                {
                    Return (Zero)
                }
            }

            Method (OWGD, 1, Serialized)
            {
                If ((Arg0 == Zero)){}
                ElseIf ((Arg0 == One)){}
                ElseIf ((Arg0 == 0x04)){}
                ElseIf ((Arg0 == 0x05)){}
            }

            Method (SPRK, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    PWKY = Zero
                    Return (One)
                }

                If ((Arg0 == One))
                {
                    PWKY = One
                    Return (One)
                }

                Return (Zero)
            }

            Method (SNIC, 2, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (One)
                }

                If ((Arg0 == One))
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    Return (One)
                }

                If ((Arg0 == 0x03))
                {
                    Return (One)
                }

                If ((Arg0 == 0x04))
                {
                    Return (One)
                }

                If ((Arg0 == 0x05))
                {
                    Return (One)
                }

                If ((Arg0 == 0x06))
                {
                    Return (One)
                }

                If ((Arg0 == 0x07))
                {
                    Return (One)
                }

                If ((Arg0 == 0x08))
                {
                    Return (One)
                }

                If ((Arg0 == 0x09))
                {
                    Return (One)
                }

                If ((Arg0 == 0x10))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (SVGA, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (One)
                }

                If ((Arg0 == One))
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    Return (One)
                }

                If ((Arg0 == 0x0256))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (CASG, 1, NotSerialized)
            {
                If ((Arg0 == Zero))
                {
                    Return (One)
                }

                If ((Arg0 == One))
                {
                    Return (One)
                }

                If ((Arg0 == 0x02))
                {
                    Return (One)
                }

                If ((Arg0 == 0x03))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (DPWR, 1, NotSerialized)
            {
                Return (One)
            }

            Method (QDEV, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (0x02)
                }

                If ((Arg0 == 0x02))
                {
                    Return (0x02)
                }

                If ((Arg0 == 0x04))
                {
                    Return (0x02)
                }

                If ((Arg0 == 0x08))
                {
                    Return (0x02)
                }

                Return (0x02)
            }

            Method (SDON, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x02))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x04))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x08))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (SDOF, 1, NotSerialized)
            {
                If ((Arg0 == One))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x02))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x04))
                {
                    Return (Zero)
                }

                If ((Arg0 == 0x08))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (CPCS, 1, NotSerialized)
            {
                Return (One)
            }

            Method (GSEC, 0, NotSerialized)
            {
                Return (One)
            }
        }
    }

    Name (FNF8, Zero)
    Scope (_SB.PCI0.SBRG.EC0)
    {
        Name (HDMI, Zero)
        Name (F8FG, Zero)
        Method (_Q6F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x20
            If (ATKP)
            {
                ^^^^ATKD.IANE (0xB5)
            }
        }
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x11
            If ((OSYS >= 0x07DC))
            {
                WE_I ()
                AEIC = 0xB8
                WE_I ()
                AEID = 0x03
                WE_O ()
            }
        }

        Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x12
            If ((OSYS >= 0x07DC))
            {
                WR_M (0x0470, 0xE0)
                WR_M (0x0471, 0x21)
                WE_I ()
                AEIC = 0xC1
                WE_I ()
                AEID = 0x02
                WE_O ()
            }
        }

        Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x13
            If ((OSYS >= 0x07DC))
            {
                WR_M (0x0470, 0xE0)
                WR_M (0x0471, 0x32)
                WE_I ()
                AEIC = 0xC1
                WE_I ()
                AEID = 0x02
                WE_O ()
            }
        }

        Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x14
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x7C)
            }
        }

        Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x15
            If (ATKP)
            {
                ^^^^ATKD.IANE (0xAE)
            }
        }

        Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x16
            If ((BLCT == Zero))
            {
                Local0 = One
                If (ATKP)
                {
                    Local0 = (0x34 - Local0)
                    ^^^^ATKD.IANE (Local0)
                }
            }
            ElseIf ((BLCT == One))
            {
                If (ATKP)
                {
                    ^^^^ATKD.IANE (0x35)
                }
            }
        }

        Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x17
            If ((OSYS >= 0x07DC))
            {
                Notify (^^^GP17.VGA.LCD, 0x87) // Device-Specific
            }
        }

        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x18
            If ((OSYS >= 0x07DC))
            {
                Notify (^^^GP17.VGA.LCD, 0x86) // Device-Specific
            }
        }

        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x19
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x84)
            }
        }

        Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x1A
            If (ATKP)
            {
                If (TPME)
                {
                    ^^^^ATKD.IANE (0x6B)
                }
                Else
                {
                    ^^^^ATKD.IANE (0x6F)
                }
            }
        }

        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x1B
            Notify (SLPB, 0x80) // Status Change
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x1C
            If ((OSYS >= 0x07DC))
            {
                Notify (ASHS, 0x88) // Device-Specific
            }
        }

        Method (_Q6B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x50
            If (ATKP)
            {
                ^^^^ATKD.IANE (0xC4)
            }
        }

        Method (_Q6C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x51
            If (ATKP)
            {
                ^^^^ATKD.IANE (0xC5)
            }
        }

        Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            P80H = 0x46
            If (ATKP)
            {
                ^^^^ATKD.IANE (0x8A)
            }
        }
    }

    Scope (_SB.ATKD)
    {
        Method (AGFN, 1, Serialized)
        {
            If ((Arg0 == Zero))
            {
                P80H = 0xAC
                Return (AMLA) /* \AMLA */
            }

            P80H = 0xAA
            Local0 = Zero
            OperationRegion (\PARM, SystemMemory, Arg0, 0x08)
            Field (PARM, DWordAcc, NoLock, Preserve)
            {
                MFUN,   16, 
                SFUN,   16, 
                LEN,    16, 
                STAS,   8, 
                EROR,   8
            }

            WNVA = 0x9600
            WNVB = One
            WNVC = MFUN /* \_SB_.ATKD.AGFN.MFUN */
            WNVD = Arg0
            Return (W15H ())
        }
    }

    Scope (_SB.ATKD)
    {
        Method (MWGF, 3, Serialized)
        {
            If ((Arg0 == 0x00020013))
            {
                If ((Arg1 == Zero))
                {
                    Return (Arg2)
                }
            }

            If ((Arg0 == 0x00010016))
            {
                Arg2 = OFBD (Arg1)
                If (Arg2)
                {
                    FSMI = One
                    Return (ASMI (Arg1))
                }
                Else
                {
                    Return (Zero)
                }
            }

            If ((Arg0 == 0x0006001F))
            {
                FSMI = 0x02
                Return (ASMI (Zero))
            }

            If ((Arg0 == 0x0010001F))
            {
                FSMI = 0x03
                Return (ASMI (Arg1))
            }
        }
    }

    Scope (_SB.ATKD)
    {
        Method (GLCD, 0, NotSerialized)
        {
            Return (EDID) /* \EDID */
        }
    }

    Scope (_SB.ATKD)
    {
        Name (WQMO, Buffer (0x0A40)
        {
            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
            /* 0008 */  0x30, 0x0A, 0x00, 0x00, 0xCE, 0x35, 0x00, 0x00,  // 0....5..
            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
            /* 0018 */  0xA8, 0xD4, 0x99, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
            /* 0020 */  0x10, 0x05, 0x10, 0xCA, 0xE7, 0x8B, 0x42, 0x04,  // ......B.
            /* 0028 */  0x0A, 0x0D, 0xA1, 0x38, 0x44, 0x86, 0xA1, 0x12,  // ...8D...
            /* 0030 */  0x20, 0x24, 0x09, 0x42, 0x2E, 0x98, 0x98, 0x00,  //  $.B....
            /* 0038 */  0x21, 0x10, 0x92, 0x28, 0xC0, 0xBC, 0x00, 0xDD,  // !..(....
            /* 0040 */  0x02, 0x0C, 0x0B, 0xB0, 0x2D, 0xC0, 0xB4, 0x00,  // ....-...
            /* 0048 */  0xC7, 0x40, 0xEA, 0xDF, 0x1F, 0xA2, 0x34, 0x10,  // .@....4.
            /* 0050 */  0x89, 0x80, 0xA4, 0x52, 0x20, 0x24, 0x54, 0x80,  // ...R $T.
            /* 0058 */  0x72, 0x01, 0xBE, 0x05, 0x68, 0x47, 0x94, 0x64,  // r...hG.d
            /* 0060 */  0x01, 0x96, 0x61, 0x44, 0x60, 0xAF, 0xC8, 0x04,  // ..aD`...
            /* 0068 */  0x8D, 0x13, 0x94, 0x33, 0x0C, 0x14, 0xBC, 0x01,  // ...3....
            /* 0070 */  0xDB, 0x14, 0x60, 0x72, 0x10, 0x54, 0xF6, 0x20,  // ..`r.T. 
            /* 0078 */  0x50, 0x32, 0x20, 0xE4, 0x51, 0x80, 0x55, 0x38,  // P2 .Q.U8
            /* 0080 */  0x4D, 0x27, 0x81, 0xDD, 0x0B, 0x30, 0x27, 0xC0,  // M'...0'.
            /* 0088 */  0x9B, 0x00, 0x71, 0xA3, 0x91, 0x35, 0x01, 0x16,  // ..q..5..
            /* 0090 */  0xA1, 0x24, 0x4C, 0x80, 0x2D, 0x18, 0xA1, 0xD4,  // .$L.-...
            /* 0098 */  0x06, 0x23, 0x94, 0xC6, 0x10, 0x04, 0x12, 0x27,  // .#.....'
            /* 00A0 */  0x4A, 0xC4, 0x06, 0x05, 0xEC, 0x34, 0x6C, 0x94,  // J....4l.
            /* 00A8 */  0x88, 0x61, 0x42, 0x44, 0xA8, 0x0C, 0x83, 0x38,  // .aBD...8
            /* 00B0 */  0x84, 0x12, 0x5A, 0xDC, 0x08, 0xED, 0x0F, 0x82,  // ..Z.....
            /* 00B8 */  0x44, 0x5B, 0xB1, 0x86, 0xEA, 0x48, 0xA3, 0x41,  // D[...H.A
            /* 00C0 */  0x8D, 0x28, 0xC1, 0x81, 0x79, 0x34, 0xA7, 0xDA,  // .(..y4..
            /* 00C8 */  0xB9, 0x00, 0xE9, 0x73, 0x15, 0xC8, 0xB1, 0x9E,  // ...s....
            /* 00D0 */  0x62, 0x9D, 0xC3, 0x25, 0x20, 0x09, 0x8C, 0x95,  // b..% ...
            /* 00D8 */  0xA0, 0x83, 0x21, 0x42, 0x71, 0x0D, 0xA8, 0x89,  // ..!Bq...
            /* 00E0 */  0x1F, 0x22, 0x13, 0x04, 0x87, 0x1A, 0xA2, 0xC7,  // ."......
            /* 00E8 */  0x1B, 0xEE, 0x04, 0x8E, 0xFA, 0x48, 0x18, 0xC4,  // .....H..
            /* 00F0 */  0x39, 0x1D, 0x0D, 0xE6, 0x1C, 0xE0, 0x71, 0x9D,  // 9.....q.
            /* 00F8 */  0xCC, 0x19, 0x97, 0x2A, 0xC0, 0xEC, 0xD0, 0x35,  // ...*...5
            /* 0100 */  0xC2, 0x04, 0xC7, 0x63, 0xE8, 0xB3, 0x3F, 0x9F,  // ...c..?.
            /* 0108 */  0x9E, 0x21, 0x89, 0xFC, 0x41, 0xA0, 0x46, 0x66,  // .!..A.Ff
            /* 0110 */  0x68, 0x8F, 0xF1, 0xB4, 0x62, 0x86, 0x7C, 0x0A,  // h...b.|.
            /* 0118 */  0x38, 0x2C, 0x26, 0xF6, 0x94, 0x40, 0xC7, 0x03,  // 8,&..@..
            /* 0120 */  0xEF, 0xFF, 0x3F, 0x1E, 0xF0, 0x28, 0x3E, 0x1A,  // ..?..(>.
            /* 0128 */  0x08, 0xE1, 0x95, 0x20, 0xB6, 0x07, 0xF4, 0xB8,  // ... ....
            /* 0130 */  0x60, 0x60, 0xEC, 0x80, 0xEC, 0x57, 0x00, 0x42,  // ``...W.B
            /* 0138 */  0xF0, 0x32, 0x47, 0x24, 0xA7, 0x08, 0x1A, 0x93,  // .2G$....
            /* 0140 */  0x27, 0xD7, 0x3A, 0x84, 0x40, 0x4E, 0xEA, 0x90,  // '.:.@N..
            /* 0148 */  0x5F, 0x16, 0x18, 0xE2, 0x6B, 0x82, 0xA7, 0x5F,  // _...k.._
            /* 0150 */  0x21, 0xA0, 0x44, 0x8E, 0x00, 0x25, 0x66, 0x04,  // !.D..%f.
            /* 0158 */  0x28, 0xBC, 0xC8, 0x21, 0xCF, 0xE6, 0x08, 0x8E,  // (..!....
            /* 0160 */  0x27, 0xCA, 0x49, 0x1C, 0x90, 0x8F, 0x0E, 0x46,  // '.I....F
            /* 0168 */  0x38, 0x84, 0x72, 0x4F, 0x10, 0x44, 0xF3, 0x8C,  // 8.rO.D..
            /* 0170 */  0x34, 0x8D, 0x73, 0x7A, 0x1B, 0x30, 0x41, 0x1D,  // 4.sz.0A.
            /* 0178 */  0xAF, 0x84, 0x02, 0x94, 0x40, 0x7A, 0xA9, 0xB2,  // ....@z..
            /* 0180 */  0xB1, 0x54, 0x8F, 0x94, 0xE6, 0x3F, 0x23, 0x68,  // .T...?#h
            /* 0188 */  0x86, 0xE7, 0x10, 0xE2, 0x10, 0x13, 0x38, 0x39,  // ......89
            /* 0190 */  0x90, 0x4E, 0x1A, 0x3C, 0x33, 0x89, 0x52, 0x8F,  // .N.<3.R.
            /* 0198 */  0x86, 0xC2, 0x39, 0xE7, 0x81, 0x83, 0x82, 0x18,  // ..9.....
            /* 01A0 */  0xD0, 0x21, 0x20, 0xE4, 0xE4, 0x1C, 0x80, 0x1A,  // .! .....
            /* 01A8 */  0x84, 0x07, 0xF5, 0xBC, 0x60, 0x88, 0xD7, 0x00,  // ....`...
            /* 01B0 */  0x8B, 0x3E, 0x2C, 0xD0, 0xE1, 0xF9, 0x18, 0xC0,  // .>,.....
            /* 01B8 */  0x35, 0x40, 0xE8, 0x5E, 0x60, 0x64, 0xAB, 0x01,  // 5@.^`d..
            /* 01C0 */  0xA4, 0x60, 0xFC, 0x70, 0xC1, 0x09, 0xEA, 0xBA,  // .`.p....
            /* 01C8 */  0x0A, 0x40, 0x1F, 0xE6, 0x11, 0x78, 0x26, 0xEF,  // .@...x&.
            /* 01D0 */  0x16, 0x2F, 0x16, 0x09, 0xEA, 0x3B, 0x0A, 0x80,  // ./...;..
            /* 01D8 */  0x02, 0xC8, 0x53, 0xB7, 0xD2, 0xE1, 0xD3, 0x31,  // ..S....1
            /* 01E0 */  0x84, 0x08, 0x13, 0xCD, 0xE8, 0x3C, 0xFC, 0x54,  // .....<.T
            /* 01E8 */  0x51, 0x71, 0xA7, 0x4A, 0x41, 0x3C, 0xD5, 0xFF,  // Qq.JA<..
            /* 01F0 */  0x7F, 0x82, 0x51, 0xA6, 0x8A, 0x9E, 0x89, 0xA7,  // ..Q.....
            /* 01F8 */  0xCA, 0xEF, 0x07, 0x26, 0xB0, 0xF0, 0x7B, 0x06,  // ...&..{.
            /* 0200 */  0xB4, 0x4B, 0x41, 0xC4, 0x27, 0x02, 0x4F, 0xC3,  // .KA.'.O.
            /* 0208 */  0x70, 0x9E, 0x2C, 0x87, 0xF3, 0x64, 0xF9, 0x58,  // p.,..d.X
            /* 0210 */  0x7C, 0x8F, 0x80, 0x3F, 0x5A, 0x2C, 0x41, 0x81,  // |..?Z,A.
            /* 0218 */  0xB3, 0x05, 0x39, 0x3C, 0x46, 0xF0, 0x48, 0xA9,  // ..9<F.H.
            /* 0220 */  0xAC, 0x71, 0xA1, 0x2E, 0x07, 0x3E, 0x53, 0x30,  // .q...>S0
            /* 0228 */  0xEC, 0x57, 0x84, 0xA3, 0x79, 0x45, 0x38, 0xC3,  // .W..yE8.
            /* 0230 */  0xA7, 0x88, 0x83, 0x7A, 0xE6, 0xB0, 0x49, 0x9D,  // ...z..I.
            /* 0238 */  0x26, 0xA5, 0xC2, 0x7A, 0xA4, 0x1C, 0xD6, 0x68,  // &..z...h
            /* 0240 */  0x61, 0x0F, 0xF8, 0x75, 0xC3, 0x67, 0x15, 0xCF,  // a..u.g..
            /* 0248 */  0xCC, 0x18, 0x61, 0x3D, 0x5A, 0x07, 0x5A, 0xA7,  // ..a=Z.Z.
            /* 0250 */  0x2E, 0x13, 0x38, 0x59, 0x40, 0xBA, 0x66, 0x1C,  // ..8Y@.f.
            /* 0258 */  0xD1, 0x31, 0x1D, 0x12, 0x13, 0x74, 0x99, 0xA0,  // .1...t..
            /* 0260 */  0x10, 0x96, 0x42, 0x21, 0x21, 0x10, 0x3A, 0x12,  // ..B!!.:.
            /* 0268 */  0xF0, 0xE8, 0x60, 0x14, 0xC4, 0x23, 0x73, 0xAC,  // ..`..#s.
            /* 0270 */  0x23, 0x01, 0x5A, 0xD4, 0x1D, 0x82, 0x5E, 0x66,  // #.Z...^f
            /* 0278 */  0x70, 0x93, 0x7D, 0x88, 0x61, 0x20, 0xB1, 0xD8,  // p.}.a ..
            /* 0280 */  0xC5, 0x80, 0x1F, 0x0C, 0xC0, 0xFC, 0xFF, 0x27,  // .......'
            /* 0288 */  0x60, 0x07, 0x03, 0xC0, 0x93, 0x42, 0xA7, 0x52,  // `....B.R
            /* 0290 */  0x9D, 0x1E, 0x0C, 0xC0, 0x15, 0xF2, 0x60, 0x80,  // ......`.
            /* 0298 */  0x96, 0x0A, 0xA4, 0x09, 0xD5, 0x78, 0x80, 0xD2,  // .....x..
            /* 02A0 */  0xAD, 0x25, 0x81, 0x45, 0x1E, 0x0C, 0x50, 0xF2,  // .%.E..P.
            /* 02A8 */  0x28, 0x24, 0xEE, 0x60, 0x80, 0x92, 0x03, 0x47,  // ($.`...G
            /* 02B0 */  0x41, 0x3C, 0x32, 0x47, 0x3D, 0x18, 0xA0, 0xC7,  // A<2G=...
            /* 02B8 */  0x99, 0xE0, 0x20, 0x8F, 0xE5, 0x78, 0x0E, 0xEC,  // .. ..x..
            /* 02C0 */  0xBD, 0xE6, 0x6C, 0x9E, 0x0A, 0x3C, 0xF4, 0x38,  // ..l..<.8
            /* 02C8 */  0x81, 0xF8, 0x8C, 0x0C, 0xF5, 0x6A, 0x13, 0xEA,  // .....j..
            /* 02D0 */  0xF9, 0xC0, 0xA7, 0x22, 0x83, 0xBD, 0x23, 0x18,  // ..."..#.
            /* 02D8 */  0xEA, 0xF1, 0x20, 0xA6, 0x27, 0xF7, 0xF2, 0xE5,  // .. .'...
            /* 02E0 */  0x13, 0x82, 0xD1, 0xF8, 0x11, 0x01, 0x38, 0xFF,  // ......8.
            /* 02E8 */  0xFF, 0x8F, 0x08, 0xC0, 0xDA, 0xA9, 0x46, 0xAB,  // ......F.
            /* 02F0 */  0x3A, 0x8F, 0x08, 0xE0, 0x8A, 0x74, 0x4D, 0x42,  // :....tMB
            /* 02F8 */  0x0B, 0x03, 0xD2, 0x38, 0x0E, 0xB7, 0xCF, 0x33,  // ...8...3
            /* 0300 */  0x9B, 0x08, 0x2C, 0x09, 0x48, 0xD7, 0x24, 0x2E,  // ..,.H.$.
            /* 0308 */  0x86, 0x42, 0x32, 0x8E, 0x08, 0xA8, 0xE0, 0x07,  // .B2.....
            /* 0310 */  0x05, 0x0A, 0x62, 0x40, 0xA7, 0x3A, 0x22, 0xA0,  // ..b@.:".
            /* 0318 */  0x0F, 0x45, 0xF6, 0x7E, 0x24, 0x20, 0x77, 0x82,  // .E.~$ w.
            /* 0320 */  0x23, 0x3B, 0x99, 0x33, 0x7B, 0x0F, 0x3B, 0xD9,  // #;.3{.;.
            /* 0328 */  0xB7, 0x02, 0x0F, 0xC9, 0x57, 0x84, 0x30, 0xC1,  // ....W.0.
            /* 0330 */  0x1E, 0x0C, 0x7C, 0x1E, 0xF3, 0x85, 0xCB, 0xE7,  // ..|.....
            /* 0338 */  0x25, 0xC0, 0x97, 0x88, 0x31, 0xA3, 0x62, 0x8F,  // %...1.b.
            /* 0340 */  0x99, 0x82, 0x78, 0xCC, 0xBE, 0xE9, 0xFD, 0xFF,  // ..x.....
            /* 0348 */  0x8F, 0x19, 0xFB, 0x11, 0xF0, 0x74, 0x71, 0x57,  // .....tqW
            /* 0350 */  0x0C, 0x9F, 0x65, 0x80, 0xCB, 0x99, 0x09, 0x70,  // ..e....p
            /* 0358 */  0xE5, 0x55, 0xA2, 0x4F, 0x8F, 0x27, 0x0B, 0x70,  // .U.O.'.p
            /* 0360 */  0x85, 0x3B, 0xCB, 0xA0, 0x25, 0x02, 0xC9, 0xE5,  // .;..%...
            /* 0368 */  0x9D, 0x49, 0x07, 0x3A, 0x13, 0xF8, 0x1C, 0xE3,  // .I.:....
            /* 0370 */  0xB3, 0x0C, 0x3F, 0x3A, 0x59, 0xD4, 0xB1, 0x00,  // ..?:Y...
            /* 0378 */  0x75, 0xB8, 0x30, 0x98, 0x41, 0x3C, 0x32, 0x47,  // u.0.A<2G
            /* 0380 */  0x3C, 0x16, 0xA0, 0x47, 0xEC, 0xF3, 0xC0, 0x63,  // <..G...c
            /* 0388 */  0x81, 0x6F, 0x7B, 0x3E, 0xD1, 0xB1, 0x7B, 0x8C,  // .o{>..{.
            /* 0390 */  0xEF, 0x4C, 0xEC, 0x5C, 0x68, 0xA8, 0x57, 0x83,  // .L.\h.W.
            /* 0398 */  0x48, 0x1E, 0xD5, 0x9B, 0x9F, 0x51, 0x1F, 0x67,  // H....Q.g
            /* 03A0 */  0xDE, 0x63, 0xB0, 0xC7, 0x03, 0x78, 0xFF, 0xFF,  // .c...x..
            /* 03A8 */  0x73, 0x0C, 0x60, 0xD4, 0xA5, 0xC2, 0x17, 0xDA,  // s.`.....
            /* 03B0 */  0xE3, 0x01, 0xB8, 0x44, 0xAD, 0x42, 0xC7, 0x03,  // ...D.B..
            /* 03B8 */  0x5C, 0xB4, 0xB5, 0x68, 0x42, 0x67, 0x76, 0xBA,  // \..hBgv.
            /* 03C0 */  0xCF, 0x31, 0x2C, 0xD4, 0x39, 0x06, 0x75, 0xE7,  // .1,.9.u.
            /* 03C8 */  0x75, 0xA4, 0xE3, 0x01, 0x2A, 0xC4, 0xF1, 0x80,  // u...*...
            /* 03D0 */  0x82, 0x78, 0x5C, 0x0E, 0x77, 0x3C, 0x40, 0xCB,  // .x\.w<@.
            /* 03D8 */  0xBB, 0xDB, 0x92, 0x89, 0xF9, 0x06, 0xE2, 0x09,  // ........
            /* 03E0 */  0x45, 0x79, 0x2A, 0x78, 0x2E, 0xE0, 0xC7, 0x18,  // Ey*x....
            /* 03E8 */  0x1F, 0x0C, 0xDE, 0x98, 0x7C, 0x40, 0x78, 0x3E,  // ....|@x>
            /* 03F0 */  0x78, 0x35, 0xC0, 0x80, 0x9D, 0x56, 0x1C, 0x43,  // x5...V.C
            /* 03F8 */  0xBC, 0xCA, 0x00, 0xC7, 0xFF, 0xFF, 0xDD, 0x80,  // ........
            /* 0400 */  0xA5, 0x18, 0x1E, 0x5A, 0xC7, 0xB1, 0x81, 0x0C,  // ...Z....
            /* 0408 */  0x2D, 0xC2, 0xD9, 0x9D, 0x9F, 0xA7, 0x04, 0xDE,  // -.......
            /* 0410 */  0x71, 0xFB, 0xB4, 0x03, 0x9C, 0x4F, 0x81, 0x3E,  // q....O.>
            /* 0418 */  0x19, 0xF0, 0xB0, 0x43, 0xA2, 0x20, 0x3E, 0x21,  // ...C. >!
            /* 0420 */  0x38, 0xC8, 0x35, 0x15, 0xCA, 0x65, 0x00, 0x73,  // 8.5..e.s
            /* 0428 */  0xF4, 0x00, 0xFB, 0x40, 0x7C, 0x22, 0x03, 0x44,  // ...@|".D
            /* 0430 */  0x39, 0x94, 0x78, 0xD0, 0xD1, 0xFF, 0xFF, 0xE8,  // 9.x.....
            /* 0438 */  0x01, 0xA6, 0x4C, 0x27, 0x32, 0xB4, 0xB2, 0xA3,  // ..L'2...
            /* 0440 */  0x07, 0x19, 0xA5, 0xA7, 0x96, 0xC0, 0x9A, 0x8E,  // ........
            /* 0448 */  0x1E, 0x28, 0x35, 0x14, 0xD2, 0x73, 0xF4, 0x40,  // .(5..s.@
            /* 0450 */  0x29, 0xB8, 0x0E, 0xF3, 0x83, 0x0E, 0x8D, 0x77,  // )......w
            /* 0458 */  0xD0, 0x81, 0x72, 0xF4, 0x80, 0x77, 0xED, 0xC0,  // ..r..w..
            /* 0460 */  0x1D, 0xAA, 0xD8, 0xB8, 0xCE, 0xD0, 0x90, 0x87,  // ........
            /* 0468 */  0xF6, 0x68, 0xE6, 0x03, 0x4F, 0x60, 0x5F, 0x8A,  // .h..O`_.
            /* 0470 */  0x01, 0xBF, 0x87, 0x73, 0x1F, 0x24, 0x7D, 0xDA,  // ...s.$}.
            /* 0478 */  0xE6, 0x37, 0x32, 0xE0, 0xF1, 0xFF, 0xBF, 0x59,  // .72....Y
            /* 0480 */  0x00, 0x82, 0x84, 0x5A, 0x74, 0x78, 0x75, 0x04,  // ...Ztxu.
            /* 0488 */  0xFF, 0xCD, 0xF1, 0x88, 0x6A, 0x9D, 0x92, 0xAE,  // ....j...
            /* 0490 */  0x8E, 0x70, 0xEE, 0xA9, 0x3E, 0x12, 0x70, 0x32,  // .p..>.p2
            /* 0498 */  0xC3, 0x99, 0xC2, 0x80, 0x4E, 0x77, 0x24, 0x40,  // ....Nw$@
            /* 04A0 */  0x5F, 0x17, 0x3C, 0x9E, 0x83, 0x79, 0xAC, 0x78,  // _.<..y.x
            /* 04A8 */  0xA4, 0xF0, 0x78, 0xCE, 0xF5, 0x3D, 0x2D, 0xD0,  // ..x..=-.
            /* 04B0 */  0x79, 0xF8, 0x8C, 0xE4, 0xC9, 0x87, 0x7A, 0x33,  // y.....z3
            /* 04B8 */  0xF0, 0xA0, 0x0C, 0x14, 0x8B, 0x69, 0x3F, 0x02,  // .....i?.
            /* 04C0 */  0x92, 0xEB, 0x99, 0x4F, 0x64, 0xEC, 0x64, 0x01,  // ...Od.d.
            /* 04C8 */  0x18, 0xF9, 0xFF, 0xDF, 0xDE, 0x01, 0x0E, 0xF9,  // ........
            /* 04D0 */  0x74, 0xAA, 0x55, 0xE9, 0xC9, 0x02, 0x5C, 0x8A,  // t.U...\.
            /* 04D8 */  0x2F, 0x73, 0xE8, 0xDC, 0x6B, 0xD1, 0xC1, 0xE2,  // /s..k...
            /* 04E0 */  0x90, 0x30, 0x89, 0x4F, 0x16, 0xA8, 0xAC, 0x14,  // .0.O....
            /* 04E8 */  0x4A, 0x76, 0xB2, 0x40, 0x65, 0x39, 0x59, 0x50,  // Jv.@e9YP
            /* 04F0 */  0x10, 0x8F, 0xCB, 0xB7, 0x77, 0xFC, 0xE8, 0x7D,  // ....w..}
            /* 04F8 */  0xC0, 0x7D, 0x05, 0x62, 0x87, 0x47, 0x8F, 0x08,  // .}.b.G..
            /* 0500 */  0xC6, 0xAD, 0x02, 0xFB, 0xFF, 0xBF, 0x55, 0x00,  // ......U.
            /* 0508 */  0xD7, 0xBB, 0x2C, 0xFE, 0xA2, 0xEF, 0x1B, 0xC1,  // ..,.....
            /* 0510 */  0x33, 0x37, 0x9C, 0x91, 0x01, 0x8F, 0x03, 0x1D,  // 37......
            /* 0518 */  0xF0, 0x16, 0x74, 0x39, 0x40, 0x49, 0xB8, 0x1C,  // ..t9@I..
            /* 0520 */  0x50, 0x10, 0x9F, 0xB7, 0xE0, 0x88, 0x9B, 0x21,  // P......!
            /* 0528 */  0xB9, 0x1A, 0x80, 0xE3, 0x92, 0x60, 0x0C, 0xDF,  // .....`..
            /* 0530 */  0x66, 0xF8, 0xD9, 0x0E, 0x38, 0xFC, 0xFF, 0x2F,  // f...8../
            /* 0538 */  0x22, 0x80, 0x25, 0xAD, 0x16, 0x95, 0x3A, 0xBD,  // ".%...:.
            /* 0540 */  0x88, 0x80, 0x2B, 0xCC, 0x8D, 0x09, 0x7D, 0x5B,  // ..+...}[
            /* 0548 */  0xF2, 0xD9, 0xCE, 0xD3, 0x3F, 0xB4, 0x03, 0x20,  // ....?.. 
            /* 0550 */  0x17, 0x11, 0x94, 0x0C, 0x0A, 0x09, 0x39, 0x1C,  // ......9.
            /* 0558 */  0xA0, 0xCE, 0x8F, 0x86, 0x33, 0x88, 0x01, 0x9D,  // ....3...
            /* 0560 */  0xEB, 0x70, 0x80, 0x9E, 0xB2, 0x87, 0x72, 0x66,  // .p....rf
            /* 0568 */  0x8F, 0x76, 0x3E, 0x13, 0xFB, 0x40, 0x77, 0xB0,  // .v>..@w.
            /* 0570 */  0x2F, 0xA8, 0x46, 0x7A, 0x1C, 0x39, 0xBA, 0x33,  // /.Fz.9.3
            /* 0578 */  0x3A, 0xA5, 0x57, 0x33, 0x23, 0xC4, 0x3A, 0x2E,  // :.W3#.:.
            /* 0580 */  0x5F, 0x10, 0x7C, 0x7A, 0x07, 0xDC, 0xFC, 0xFF,  // _.|z....
            /* 0588 */  0xEF, 0x75, 0x00, 0x7F, 0x14, 0xCA, 0x3C, 0x56,  // .u....<V
            /* 0590 */  0x80, 0x2B, 0xC0, 0xB1, 0x02, 0x7D, 0x9E, 0xF0,  // .+...}..
            /* 0598 */  0x84, 0x0E, 0xF7, 0xB9, 0xC2, 0xAF, 0x12, 0x7E,  // .......~
            /* 05A0 */  0xAC, 0xE0, 0xD1, 0x49, 0x74, 0x24, 0x80, 0x9B,  // ...It$..
            /* 05A8 */  0xE5, 0x48, 0x80, 0xBE, 0x40, 0xF8, 0x58, 0x81,  // .H..@.X.
            /* 05B0 */  0xBF, 0x7A, 0xF2, 0x03, 0x05, 0xCC, 0xFF, 0xFF,  // .z......
            /* 05B8 */  0x75, 0x0E, 0x60, 0xAF, 0x53, 0x89, 0x17, 0x8A,  // u.`.S...
            /* 05C0 */  0x07, 0x0A, 0x70, 0x85, 0x38, 0x50, 0xA0, 0xA5,  // ..p.8P..
            /* 05C8 */  0x28, 0xF8, 0xFF, 0x1F, 0x87, 0x7D, 0xA0, 0xC0,  // (....}..
            /* 05D0 */  0x88, 0x38, 0x50, 0xA0, 0xE2, 0x93, 0xF8, 0xD8,  // .8P.....
            /* 05D8 */  0x83, 0x8A, 0x3C, 0x6E, 0x0A, 0x62, 0x40, 0xE7,  // ..<n.b@.
            /* 05E0 */  0x39, 0x12, 0xA0, 0x15, 0x5D, 0xE7, 0x50, 0x47,  // 9...].PG
            /* 05E8 */  0x0A, 0x80, 0xA9, 0xFF, 0xFF, 0x23, 0x05, 0xB0,  // .....#..
            /* 05F0 */  0xF0, 0x78, 0xA4, 0x00, 0x5D, 0x9C, 0x75, 0xEA,  // .x..].u.
            /* 05F8 */  0x48, 0x81, 0x13, 0x05, 0xA4, 0x23, 0xC5, 0x91,  // H....#..
            /* 0600 */  0x1D, 0xDA, 0xF1, 0xB2, 0x5B, 0xB1, 0xFF, 0x13,  // ....[...
            /* 0608 */  0xF4, 0x5C, 0x46, 0x64, 0x1C, 0x29, 0x50, 0xC1,  // .\Fd.)P.
            /* 0610 */  0xC1, 0x28, 0x88, 0x47, 0xE6, 0x50, 0x47, 0x02,  // .(.G.PG.
            /* 0618 */  0xB4, 0xA4, 0x43, 0x15, 0xBD, 0x11, 0x18, 0xE4,  // ..C.....
            /* 0620 */  0xE1, 0xCF, 0x33, 0x7A, 0x2A, 0x78, 0x2B, 0xF3,  // ..3z*x+.
            /* 0628 */  0xE1, 0xDD, 0x63, 0x3D, 0x91, 0x17, 0x01, 0x76,  // ..c=...v
            /* 0630 */  0x2E, 0x00, 0x37, 0x81, 0xCF, 0x05, 0x80, 0x28,  // ..7....(
            /* 0638 */  0x99, 0x0E, 0x25, 0x9E, 0x0B, 0x60, 0xFE, 0xFF,  // ..%..`..
            /* 0640 */  0xCF, 0x05, 0x30, 0xC4, 0x9F, 0x5C, 0xD0, 0x12,  // ..0..\..
            /* 0648 */  0x80, 0x34, 0xA7, 0x3A, 0x2F, 0xB6, 0xC2, 0x7E,  // .4.:/..~
            /* 0650 */  0xEA, 0x20, 0xE7, 0x02, 0x3A, 0x22, 0xC7, 0x26,  // . ..:".&
            /* 0658 */  0xD1, 0x91, 0xC0, 0xE7, 0x02, 0x1E, 0xF5, 0x5C,  // .......\
            /* 0660 */  0x40, 0x41, 0x0C, 0xE8, 0x1C, 0xE7, 0x02, 0xB4,  // @A......
            /* 0668 */  0x92, 0x93, 0x07, 0x19, 0xEC, 0x91, 0x3E, 0xB5,  // ......>.
            /* 0670 */  0x00, 0xA6, 0xCF, 0x7D, 0x80, 0x9D, 0xFF, 0xFF,  // ...}....
            /* 0678 */  0x71, 0x02, 0x98, 0x19, 0xD4, 0xA9, 0xD5, 0xE4,  // q.......
            /* 0680 */  0x71, 0x02, 0x5C, 0x79, 0x8E, 0x13, 0x68, 0x55,  // q.\y..hU
            /* 0688 */  0x40, 0x1A, 0xD9, 0xB3, 0xAE, 0x35, 0x42, 0x11,  // @....5B.
            /* 0690 */  0x3D, 0xE7, 0x2A, 0x94, 0x12, 0x0A, 0x69, 0x39,  // =.*...i9
            /* 0698 */  0xB5, 0xA0, 0xD2, 0x8F, 0x9B, 0x82, 0x18, 0xD0,  // ........
            /* 06A0 */  0xD1, 0x4E, 0xC2, 0x50, 0xC6, 0xF0, 0x04, 0xEC,  // .N.P....
            /* 06A8 */  0xC9, 0x3C, 0x14, 0x04, 0x79, 0x65, 0xF1, 0x0D,  // .<..ye..
            /* 06B0 */  0x98, 0xDF, 0x82, 0xD9, 0x94, 0x7C, 0x77, 0xF1,  // .....|w.
            /* 06B8 */  0xD5, 0x25, 0x9C, 0x35, 0x5F, 0xAF, 0xC8, 0x1D,  // .%.5_...
            /* 06C0 */  0xEB, 0x0D, 0xC9, 0xF7, 0x0A, 0xC0, 0xEE, 0xFF,  // ........
            /* 06C8 */  0xFF, 0x72, 0x05, 0x78, 0x77, 0xA8, 0xD0, 0xA4,  // .r.xw...
            /* 06D0 */  0xC6, 0x7B, 0x05, 0xB8, 0x84, 0xAC, 0x42, 0xF7,  // .{....B.
            /* 06D8 */  0x0A, 0x5C, 0x9C, 0xB5, 0x68, 0x16, 0xE7, 0xF1,  // .\..h...
            /* 06E0 */  0x76, 0xF5, 0x5E, 0xC1, 0x82, 0xDC, 0x2B, 0x50,  // v.^...+P
            /* 06E8 */  0x11, 0x28, 0x14, 0xE2, 0x5E, 0x81, 0x92, 0x7D,  // .(..^..}
            /* 06F0 */  0xF9, 0xA1, 0x20, 0x1E, 0x97, 0x83, 0x1C, 0x09,  // .. .....
            /* 06F8 */  0xD0, 0x52, 0x40, 0x74, 0x01, 0x78, 0x76, 0xF6,  // .R@t.xv.
            /* 0700 */  0x8D, 0xDF, 0x20, 0xE7, 0xFA, 0x12, 0xC0, 0xAE,  // .. .....
            /* 0708 */  0x13, 0xC0, 0xF1, 0xFF, 0x7F, 0x23, 0xF0, 0x15,  // .....#..
            /* 0710 */  0x16, 0xCE, 0xDD, 0x03, 0x3F, 0xD3, 0x97, 0x0E,  // ....?...
            /* 0718 */  0x36, 0x2B, 0xF0, 0x0E, 0xD8, 0x77, 0x23, 0xC0,  // 6+...w#.
            /* 0720 */  0xF7, 0x48, 0x7C, 0xE8, 0x00, 0xFC, 0xFC, 0xFF,  // .H|.....
            /* 0728 */  0x0F, 0x1D, 0xDC, 0xA6, 0x57, 0x8F, 0x87, 0x0E,  // ....W...
            /* 0730 */  0x90, 0x65, 0xB8, 0x1B, 0xA1, 0x2F, 0x45, 0x3E,  // .e.../E>
            /* 0738 */  0xC2, 0x7A, 0x4C, 0x87, 0xC4, 0x34, 0x1C, 0x3A,  // .zL..4.:
            /* 0740 */  0x50, 0xE9, 0x49, 0x94, 0xFC, 0x48, 0x80, 0xCA,  // P.I..H..
            /* 0748 */  0x7A, 0x24, 0xA0, 0x20, 0x06, 0xF4, 0xA1, 0x03,  // z$. ....
            /* 0750 */  0xF0, 0x71, 0x9D, 0x00, 0x16, 0x12, 0x2E, 0x2C,  // .q.....,
            /* 0758 */  0xA8, 0xD0, 0x93, 0xA5, 0x20, 0x9E, 0xAC, 0x03,  // .... ...
            /* 0760 */  0x4D, 0x16, 0x7D, 0x81, 0xF0, 0x99, 0xCF, 0x93,  // M.}.....
            /* 0768 */  0xC5, 0x9C, 0x28, 0x1E, 0x8B, 0x70, 0xB7, 0x22,  // ..(..p."
            /* 0770 */  0x60, 0xF6, 0xFF, 0xBF, 0x51, 0x00, 0x36, 0x7E,  // `...Q.6~
            /* 0778 */  0xB0, 0xA5, 0x3A, 0xBD, 0x51, 0x80, 0x4B, 0xCA,  // ..:.Q.K.
            /* 0780 */  0xAD, 0x08, 0x1D, 0xE8, 0x46, 0x41, 0x86, 0xF4,  // ....FA..
            /* 0788 */  0x6C, 0x79, 0x48, 0x2C, 0xCA, 0x8D, 0x02, 0x75,  // lyH,...u
            /* 0790 */  0xDE, 0x76, 0x8C, 0x53, 0x01, 0x4A, 0xF8, 0xAD,  // .v.S.J..
            /* 0798 */  0x88, 0x82, 0xF8, 0x56, 0x04, 0x38, 0x49, 0x33,  // ...V.8I3
            /* 07A0 */  0x28, 0xB4, 0x9E, 0x5B, 0x11, 0x94, 0x9B, 0x03,  // (..[....
            /* 07A8 */  0x76, 0x5A, 0xE0, 0xFC, 0xFF, 0x5F, 0x8B, 0x00,  // vZ..._..
            /* 07B0 */  0x86, 0x4A, 0xB4, 0xA8, 0xF5, 0xD4, 0x01, 0xB2,  // .J......
            /* 07B8 */  0x00, 0xAB, 0xA0, 0x67, 0x19, 0x4B, 0x86, 0x41,  // ...g.K.A
            /* 07C0 */  0x49, 0x80, 0xD0, 0xB9, 0xDB, 0x43, 0xE0, 0x23,  // I....C.#
            /* 07C8 */  0xF4, 0x9C, 0xFF, 0xFF, 0xCD, 0x9F, 0x36, 0xC9,  // ......6.
            /* 07D0 */  0x74, 0x7C, 0xD2, 0x38, 0x00, 0x26, 0x6D, 0x6C,  // t|.8.&ml
            /* 07D8 */  0xA8, 0x13, 0x87, 0x07, 0xF9, 0x2E, 0xE1, 0x1B,  // ........
            /* 07E0 */  0x87, 0x2F, 0x36, 0x86, 0x49, 0xE0, 0xB1, 0x31,  // ./6.I..1
            /* 07E8 */  0x34, 0x7E, 0x22, 0x80, 0x01, 0x78, 0x88, 0xEF,  // 4~"..x..
            /* 07F0 */  0xCE, 0x1E, 0x84, 0x67, 0x76, 0x10, 0x98, 0x93,  // ...gv...
            /* 07F8 */  0x89, 0x2F, 0x7F, 0xAD, 0x1E, 0x09, 0x10, 0xEE,  // ./......
            /* 0800 */  0x6F, 0x04, 0x3A, 0x92, 0xBE, 0x08, 0x3C, 0xAA,  // o.:...<.
            /* 0808 */  0x1A, 0xC4, 0xD6, 0x04, 0xD8, 0x9A, 0xBC, 0x80,  // ........
            /* 0810 */  0x7C, 0x1A, 0x88, 0x72, 0x4A, 0x81, 0x1E, 0xCE,  // |..rJ...
            /* 0818 */  0x8D, 0xD2, 0x9C, 0x00, 0x63, 0x50, 0x08, 0x90,  // ....cP..
            /* 0820 */  0x58, 0xEF, 0x01, 0xB5, 0x81, 0x09, 0x2A, 0x58,  // X.....*X
            /* 0828 */  0x98, 0x20, 0x86, 0x6A, 0x7F, 0x10, 0x44, 0xFE,  // . .j..D.
            /* 0830 */  0x33, 0x40, 0xD7, 0x0C, 0x47, 0x1A, 0x0D, 0xEA,  // 3@..G...
            /* 0838 */  0x20, 0xC4, 0x47, 0x73, 0xAA, 0x0F, 0x1F, 0x0C,  //  .Gs....
            /* 0840 */  0xE4, 0x21, 0xC5, 0x97, 0xEC, 0xC3, 0xF5, 0x81,  // .!......
            /* 0848 */  0xDA, 0x04, 0x0F, 0x0F, 0x3E, 0x43, 0xC0, 0x71,  // ....>C.q
            /* 0850 */  0x0D, 0xA8, 0x89, 0x1F, 0x22, 0xFB, 0xC9, 0x18,  // ...."...
            /* 0858 */  0x8E, 0x0F, 0xD1, 0x87, 0x0A, 0x4F, 0xE0, 0x6D,  // .....O.m
            /* 0860 */  0xC0, 0x80, 0xEC, 0x10, 0x01, 0x7F, 0x3C, 0x86,  // ......<.
            /* 0868 */  0x7E, 0x8A, 0xF0, 0x0D, 0xD0, 0x63, 0xD3, 0x20,  // ~....c. 
            /* 0870 */  0x50, 0x27, 0x0D, 0x3E, 0xCC, 0xD3, 0x8A, 0x19,  // P'.>....
            /* 0878 */  0xF2, 0x29, 0xE0, 0xB0, 0x98, 0xD8, 0xB3, 0x03,  // .)......
            /* 0880 */  0x1D, 0x0F, 0xF8, 0x15, 0x1F, 0x0D, 0x74, 0x79,  // ......ty
            /* 0888 */  0x31, 0xB6, 0xCF, 0x2C, 0x8E, 0x70, 0x10, 0x41,  // 1..,.p.A
            /* 0890 */  0xFC, 0xFF, 0xC7, 0x83, 0x01, 0x3D, 0x1B, 0x9F,  // .....=..
            /* 0898 */  0x21, 0x7C, 0x2F, 0x60, 0x47, 0x0B, 0x2E, 0xEA,  // !|/`G...
            /* 08A0 */  0x68, 0x81, 0x3A, 0x34, 0xF8, 0xBC, 0xC0, 0x10,  // h.:4....
            /* 08A8 */  0x1F, 0x67, 0x0C, 0xF1, 0x64, 0xC1, 0x4E, 0x52,  // .g..d.NR
            /* 08B0 */  0xE0, 0x1C, 0x89, 0x0F, 0x21, 0xF0, 0x41, 0x5E,  // ....!.A^
            /* 08B8 */  0x56, 0x0C, 0x11, 0x24, 0xF8, 0x33, 0xC1, 0xE9,  // V..$.3..
            /* 08C0 */  0xB0, 0xA1, 0x61, 0x08, 0x8A, 0x1C, 0x01, 0xEA,  // ..a.....
            /* 08C8 */  0xD8, 0xE1, 0x11, 0xF0, 0x73, 0xC2, 0x03, 0x09,  // ....s...
            /* 08D0 */  0x1B, 0xC1, 0x3B, 0x89, 0x27, 0x71, 0x40, 0x3E,  // ..;.'q@>
            /* 08D8 */  0x5B, 0x18, 0x21, 0x76, 0xB9, 0x47, 0x0C, 0x72,  // [.!v.G.r
            /* 08E0 */  0x51, 0x3E, 0xBE, 0x67, 0x18, 0xCC, 0x98, 0x70,  // Q>.g...p
            /* 08E8 */  0x27, 0x06, 0x0F, 0x81, 0x0F, 0xE0, 0xD9, 0xE2,  // '.......
            /* 08F0 */  0xFC, 0x7C, 0x42, 0x39, 0x2B, 0xDC, 0x88, 0xF9,  // .|B9+...
            /* 08F8 */  0x94, 0x70, 0x03, 0xC0, 0x28, 0xB4, 0xE9, 0x53,  // .p..(..S
            /* 0900 */  0xA3, 0x51, 0xAB, 0x06, 0x65, 0x6A, 0x94, 0x69,  // .Q..ej.i
            /* 0908 */  0x50, 0xAB, 0x4F, 0xA5, 0xC6, 0x8C, 0x0D, 0xE9,  // P.O.....
            /* 0910 */  0x71, 0x8A, 0x9D, 0x00, 0x2C, 0xE2, 0x11, 0x20,  // q...,.. 
            /* 0918 */  0x10, 0x8B, 0xA5, 0x90, 0x91, 0x51, 0x19, 0x44,  // .....Q.D
            /* 0920 */  0x40, 0x56, 0xF9, 0x2E, 0x11, 0x90, 0x35, 0x83,  // @V....5.
            /* 0928 */  0x08, 0xC8, 0xA9, 0x2D, 0x00, 0x31, 0x0D, 0x6F,  // ...-.1.o
            /* 0930 */  0x0C, 0x01, 0x39, 0x99, 0x07, 0x20, 0x96, 0x13,  // ..9.. ..
            /* 0938 */  0x44, 0x40, 0x96, 0x6A, 0x02, 0x88, 0xE9, 0x06,  // D@.j....
            /* 0940 */  0x11, 0x90, 0xB5, 0xAA, 0x18, 0x04, 0x05, 0x11,  // ........
            /* 0948 */  0x90, 0x75, 0xBC, 0x1C, 0x04, 0x64, 0x55, 0x20,  // .u...dU 
            /* 0950 */  0x02, 0x72, 0x3E, 0x1B, 0x40, 0x2C, 0x2C, 0x88,  // .r>.@,,.
            /* 0958 */  0x80, 0x2C, 0x52, 0x07, 0x10, 0x53, 0xAC, 0xE3,  // .,R..S..
            /* 0960 */  0xFF, 0x0F, 0xC4, 0xB4, 0xF9, 0x00, 0x62, 0x4A,  // ......bJ
            /* 0968 */  0x41, 0x34, 0x20, 0xF2, 0x28, 0x10, 0x90, 0x25,  // A4 .(..%
            /* 0970 */  0x50, 0x08, 0xC8, 0x71, 0x41, 0x04, 0xE4, 0xF0,  // P..qA...
            /* 0978 */  0x40, 0x34, 0xC7, 0xFB, 0x41, 0x40, 0x0E, 0x05,  // @4..A@..
            /* 0980 */  0x22, 0x20, 0x07, 0x78, 0x36, 0x08, 0xC8, 0x71,  // " .x6..q
            /* 0988 */  0x40, 0x04, 0x64, 0x49, 0x5A, 0x80, 0x98, 0x3E,  // @.dIZ..>
            /* 0990 */  0x10, 0x01, 0x39, 0x24, 0x10, 0x4D, 0x0C, 0x44,  // ..9$.M.D
            /* 0998 */  0x13, 0x7B, 0x01, 0x62, 0xF9, 0x41, 0x04, 0xE4,  // .{.b.A..
            /* 09A0 */  0x10, 0x66, 0x80, 0x58, 0x22, 0x10, 0x01, 0x59,  // .f.X"..Y
            /* 09A8 */  0xFD, 0xD7, 0x4A, 0x40, 0xCE, 0x02, 0xA2, 0xE1,  // ..J@....
            /* 09B0 */  0x93, 0x57, 0x81, 0x80, 0xAC, 0x08, 0x44, 0x40,  // .W....D@
            /* 09B8 */  0x4E, 0x0F, 0x44, 0xB5, 0xD8, 0x39, 0x9F, 0xD1,  // N.D..9..
            /* 09C0 */  0x77, 0x97, 0x80, 0x9C, 0x0A, 0x44, 0x40, 0x4E,  // w....D@N
            /* 09C8 */  0xE0, 0x07, 0x88, 0xE5, 0x01, 0x11, 0x90, 0xF5,  // ........
            /* 09D0 */  0x18, 0x02, 0x62, 0xEA, 0x40, 0x04, 0xE4, 0x48,  // ..b.@..H
            /* 09D8 */  0x8A, 0x80, 0x58, 0x3E, 0x10, 0x01, 0x39, 0x8B,  // ..X>..9.
            /* 09E0 */  0x23, 0x20, 0x96, 0x0C, 0x44, 0x40, 0x56, 0x68,  // # ..D@Vh
            /* 09E8 */  0x09, 0x88, 0xC9, 0x05, 0x11, 0x90, 0xA5, 0x69,  // .......i
            /* 09F0 */  0x02, 0x62, 0x42, 0x41, 0x04, 0xE4, 0x78, 0x9E,  // .bBA..x.
            /* 09F8 */  0x80, 0x58, 0x56, 0x10, 0x01, 0x59, 0xE9, 0xCB,  // .XV..Y..
            /* 0A00 */  0x43, 0x40, 0x96, 0x0D, 0x22, 0x20, 0x4B, 0x34,  // C@.." K4
            /* 0A08 */  0x05, 0xC4, 0x04, 0x83, 0x08, 0xC8, 0x31, 0x55,  // ......1U
            /* 0A10 */  0x01, 0xB1, 0xCC, 0x20, 0x02, 0x72, 0x4A, 0x57,  // ... .rJW
            /* 0A18 */  0x40, 0x14, 0x44, 0x03, 0x20, 0xCF, 0x9C, 0x03,  // @.D. ...
            /* 0A20 */  0x60, 0x20, 0x02, 0x72, 0x6C, 0x20, 0xAA, 0xE1,  // ` .rl ..
            /* 0A28 */  0x59, 0x26, 0x20, 0xE7, 0x05, 0x11, 0x90, 0xD3,  // Y& .....
            /* 0A30 */  0x03, 0x51, 0x95, 0x9F, 0x9D, 0x20, 0x24, 0x23,  // .Q... $#
            /* 0A38 */  0x08, 0x55, 0xF9, 0x09, 0x11, 0x88, 0xFF, 0xFF   // .U......
        })
    }

    Scope (_SB)
    {
        Device (ASUP)
        {
            Name (_HID, "ASUS2018")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Method (XPTS, 1, NotSerialized)
    {
    }

    Method (XWAK, 1, NotSerialized)
    {
    }

    Scope (_SB.PCI0.SBRG.EC0)
    {
        Name (CULV, Zero)
        Method (SPLV, 1, NotSerialized)
        {
            Name (GPUL, Package (0x05)
            {
                0xD5, 
                0xD4, 
                0xD3, 
                0xD2, 
                0xD1
            })
            Name (PL1L, Package (0x05)
            {
                0xA0, 
                0xF0, 
                0x0118, 
                0x0140, 
                0x0168
            })
            Name (GPTL, Package (0x05)
            {
                Zero, 
                One, 
                One, 
                One, 
                One
            })
            Name (PWLV, Zero)
            If (((Arg0 < 0x06) && (Arg0 >= One)))
            {
                PWLV = (Arg0 - One)
                Notify (^^^GPP0.PEGP, DerefOf (GPUL [PWLV]))
                M010 (0x54)
                DerefOf (GPTL [PWLV])
            }
        }

        Method (_QDA, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If ((THOT == Zero))
            {
                Notify (^^^GPP0.PEGP, 0xD4) // Hardware-Specific
            }

            WVDC ()
        }

        Method (_QDB, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If ((THOT == Zero))
            {
                Notify (^^^GPP0.PEGP, 0xD4) // Hardware-Specific
            }

            WVDC ()
        }

        Method (_QDC, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (^^^GPP0.PEGP, 0xD5) // Hardware-Specific
        }

        Method (_QDD, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Local0 = RR_M (0x07E5)
            Local0 &= One
            If (((Local0 == One) && (THOT == Zero)))
            {
                Notify (^^^GPP0.PEGP, 0xD4) // Hardware-Specific
            }

            WVDC ()
        }
    }
}

