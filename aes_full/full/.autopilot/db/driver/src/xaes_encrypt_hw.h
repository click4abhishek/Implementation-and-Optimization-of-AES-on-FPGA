// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// CRTLSc
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x200 : Data signal of Nr
//         bit 15~0 - Nr[15:0] (Read/Write)
//         others   - reserved
// 0x204 : reserved
// 0x010 ~
// 0x01f : Memory 'newState' (4 * 8b)
//         Word n : bit [ 7: 0] - newState[4n]
//                  bit [15: 8] - newState[4n+1]
//                  bit [23:16] - newState[4n+2]
//                  bit [31:24] - newState[4n+3]
// 0x100 ~
// 0x1ff : Memory 'expandedKey' (44 * 8b)
//         Word n : bit [ 7: 0] - expandedKey[4n]
//                  bit [15: 8] - expandedKey[4n+1]
//                  bit [23:16] - expandedKey[4n+2]
//                  bit [31:24] - expandedKey[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAES_ENCRYPT_CRTLSC_ADDR_AP_CTRL          0x000
#define XAES_ENCRYPT_CRTLSC_ADDR_GIE              0x004
#define XAES_ENCRYPT_CRTLSC_ADDR_IER              0x008
#define XAES_ENCRYPT_CRTLSC_ADDR_ISR              0x00c
#define XAES_ENCRYPT_CRTLSC_ADDR_NR_DATA          0x200
#define XAES_ENCRYPT_CRTLSC_BITS_NR_DATA          16
#define XAES_ENCRYPT_CRTLSC_ADDR_NEWSTATE_BASE    0x010
#define XAES_ENCRYPT_CRTLSC_ADDR_NEWSTATE_HIGH    0x01f
#define XAES_ENCRYPT_CRTLSC_WIDTH_NEWSTATE        8
#define XAES_ENCRYPT_CRTLSC_DEPTH_NEWSTATE        4
#define XAES_ENCRYPT_CRTLSC_ADDR_EXPANDEDKEY_BASE 0x100
#define XAES_ENCRYPT_CRTLSC_ADDR_EXPANDEDKEY_HIGH 0x1ff
#define XAES_ENCRYPT_CRTLSC_WIDTH_EXPANDEDKEY     8
#define XAES_ENCRYPT_CRTLSC_DEPTH_EXPANDEDKEY     44

