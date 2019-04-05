/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of iASLQOOC8z.aml, Sun Nov 22 09:50:28 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002DA (730)
 *     Revision         0x01
 *     Checksum         0xCD
 *     OEM ID           "sample"
 *     OEM Table ID     "USBFix"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140926 (538183974)
 */
DefinitionBlock ("SSDT-USB.aml", "SSDT", 1, "sample", "USBFix", 0x00003000)
{
    // "USBInjectAllConfiguration" : override settings for USBInjectAll.kext
    Device (UIAC)
    {
        Name (_HID, "UIA00000")
        // "RehabManConFiguration"
        Name (RMCF, Package ()
        {
            // XHC overrides for 300-series boards
            "8086_a36d", Package()
            {
                "port-count", Buffer() { 0x1A, 0, 0, 0}, // Highest port number is SS10 at 0x1A
                "ports", Package()
                {   "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x01, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x02, 0, 0, 0 },
                    },
                    "HS03", Package() 
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x03, 0, 0, 0 },
                    },
                    "HS06", Package() // USB2 on the top of the IO panel
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 0x06, 0, 0, 0 },
                    },
                    "HS07", Package() // Frontal USB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },               
                    "HS08", Package() // Frontal USB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x08, 0, 0, 0 },
                    },
                    "HS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x0a, 0, 0, 0 },
                    },
                    "HS13", Package() // USB2 on the top of the IO panel
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 0x0d, 0, 0, 0 },
                    },
                    "HS14", Package() // Board integrated bluetooth (works natively)
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 0x0e, 0, 0, 0 },
                    },
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x11, 0, 0, 0 },
                    },
                    "SS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x12, 0, 0, 0 },
                    },
                    "SS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 0x13, 0, 0, 0 },
                    },
                    "SS07", Package() // Frontal USB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 23, 0, 0, 0 },
                    },
                    "SS08", Package() // Frontal USB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 24, 0, 0, 0 },
                    },
                    "SS10", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 26, 0, 0, 0 },
                    },
                }
            }
        })
    }
}

