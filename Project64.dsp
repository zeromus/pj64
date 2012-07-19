# Microsoft Developer Studio Project File - Name="Project64" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=Project64 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Project64.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Project64.mak" CFG="Project64 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Project64 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Project64 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Project64 - Win32 Release External" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/Project64/Project 64 1.5", XCAAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Project64 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /G6 /W3 /GX /O2 /I "C:\Development\PJ64 Source C++ 6.0" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 Zlib113.lib htmlhelp.lib winmm.lib comctl32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386 /libpath:"C:\Development\PJ64 Source C++ 6.0"

!ELSEIF  "$(CFG)" == "Project64 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /ZI /Od /I "C:\Development\PJ64 Source C++ 6.0" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /i "c:\development\PJ64 Source C++ 6.0\\" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 zlib113.lib htmlhelp.lib winmm.lib comctl32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /nodefaultlib:"libc" /pdbtype:sept /libpath:"C:\Development\PJ64 Source C++ 6.0"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "Project64 - Win32 Release External"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Project64___Win32_Release_External"
# PROP BASE Intermediate_Dir "Project64___Win32_Release_External"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release_External"
# PROP Intermediate_Dir "Release_External"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /G6 /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /G6 /Gr /MT /W3 /O2 /Ob2 /I "C:\Development\PJ64 Source C++ 6.0" /D "EXTERNAL_RELEASE" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG" /d "EXTERNAL_RELEASE"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 winmm.lib zlib113.lib comctl32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 zlib113.lib htmlhelp.lib winmm.lib comctl32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386 /nodefaultlib:"LIBC" /libpath:"C:\Development\PJ64 Source C++ 6.0"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "Project64 - Win32 Release"
# Name "Project64 - Win32 Debug"
# Name "Project64 - Win32 Release External"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Group "Debugger Source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\BreakPoints.c
# End Source File
# Begin Source File

SOURCE=".\CPU Log.c"
# End Source File
# Begin Source File

SOURCE=.\Logging.c
# End Source File
# Begin Source File

SOURCE=.\mapping.c
# End Source File
# Begin Source File

SOURCE=".\r4300i Commands.c"
# End Source File
# Begin Source File

SOURCE=".\r4300i Memory.c"
# End Source File
# Begin Source File

SOURCE=".\r4300i Registers.c"
# End Source File
# Begin Source File

SOURCE=".\TLB Display.c"
# End Source File
# End Group
# Begin Group "General Source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Cheat.c
# End Source File
# Begin Source File

SOURCE=.\Main.c
# End Source File
# Begin Source File

SOURCE=.\main2.cpp
# End Source File
# Begin Source File

SOURCE=.\MemTest.cpp
# End Source File
# Begin Source File

SOURCE=.\Profiling.c
# End Source File
# Begin Source File

SOURCE=.\RomBrowser.c
# End Source File
# Begin Source File

SOURCE=".\Settings Api.c"
# End Source File
# Begin Source File

SOURCE=.\Settings.c
# End Source File
# Begin Source File

SOURCE=.\Win32Timer.c
# End Source File
# End Group
# Begin Group "Zlib Source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\unzip.c

!IF  "$(CFG)" == "Project64 - Win32 Release"

# ADD CPP /Gd

!ELSEIF  "$(CFG)" == "Project64 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Project64 - Win32 Release External"

# ADD BASE CPP /Gd
# ADD CPP /Gd

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\zip.c
# End Source File
# End Group
# Begin Group "CPU Source"

# PROP Default_Filter ""
# Begin Group "Save Chips"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Eeprom.c
# End Source File
# Begin Source File

SOURCE=.\FlashRam.c
# End Source File
# Begin Source File

SOURCE=.\Mempak.c
# End Source File
# Begin Source File

SOURCE=.\Sram.c
# End Source File
# End Group
# Begin Source File

SOURCE=.\CPU.c
# End Source File
# Begin Source File

SOURCE=.\DMA.c
# End Source File
# Begin Source File

SOURCE=.\Exception.c
# End Source File
# Begin Source File

SOURCE=".\Interpreter CPU.c"
# End Source File
# Begin Source File

SOURCE=".\Interpreter Ops.c"
# End Source File
# Begin Source File

SOURCE=.\Memory.c
# End Source File
# Begin Source File

SOURCE=.\pif.c
# End Source File
# Begin Source File

SOURCE=".\Recompiler CPU.c"
# End Source File
# Begin Source File

SOURCE=".\Recompiler Fpu Ops.c"
# End Source File
# Begin Source File

SOURCE=".\Recompiler Ops.c"
# End Source File
# Begin Source File

SOURCE=.\Registers.c
# End Source File
# Begin Source File

SOURCE=.\rom.c
# End Source File
# Begin Source File

SOURCE=".\Sync CPU.c"
# End Source File
# Begin Source File

SOURCE=.\TLB.c
# End Source File
# End Group
# Begin Group "Plugin Source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Plugin.c

!IF  "$(CFG)" == "Project64 - Win32 Release"

# ADD CPP /Gd

!ELSEIF  "$(CFG)" == "Project64 - Win32 Debug"

!ELSEIF  "$(CFG)" == "Project64 - Win32 Release External"

# ADD BASE CPP /Gd
# ADD CPP /Gr

!ENDIF 

# End Source File
# End Group
# Begin Group "X86 Opcodes Source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\x86 fpu.c"
# End Source File
# Begin Source File

SOURCE=.\X86.c
# End Source File
# End Group
# Begin Group "Lang Source"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Language.cpp
# End Source File
# End Group
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Group "Debugger Headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\BreakPoints.h
# End Source File
# Begin Source File

SOURCE=".\CPU Log.h"
# End Source File
# Begin Source File

SOURCE=.\Debugger.h
# End Source File
# Begin Source File

SOURCE=.\Logging.h
# End Source File
# Begin Source File

SOURCE=.\Mapping.h
# End Source File
# Begin Source File

SOURCE=".\r4300i Commands.h"
# End Source File
# Begin Source File

SOURCE=".\r4300i Memory.h"
# End Source File
# Begin Source File

SOURCE=".\r4300i Registers.h"
# End Source File
# Begin Source File

SOURCE=".\tlb Display.h"
# End Source File
# End Group
# Begin Group "General Header"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Cheats.h
# End Source File
# Begin Source File

SOURCE=.\HTMLHELP.H
# End Source File
# Begin Source File

SOURCE=.\main.h
# End Source File
# Begin Source File

SOURCE=.\Profiling.h
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# Begin Source File

SOURCE=.\RomBrowser.h
# End Source File
# Begin Source File

SOURCE=".\Settings Api.h"
# End Source File
# Begin Source File

SOURCE=.\Settings.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\Types.h
# End Source File
# Begin Source File

SOURCE=.\Win32Timer.h
# End Source File
# End Group
# Begin Group "CPU Header"

# PROP Default_Filter ""
# Begin Group "Save Chips headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Eeprom.h
# End Source File
# Begin Source File

SOURCE=.\Flashram.h
# End Source File
# Begin Source File

SOURCE=.\mempak.h
# End Source File
# Begin Source File

SOURCE=.\Sram.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\CPU.h
# End Source File
# Begin Source File

SOURCE=.\DMA.h
# End Source File
# Begin Source File

SOURCE=.\Exception.h
# End Source File
# Begin Source File

SOURCE=".\Interpreter CPU.h"
# End Source File
# Begin Source File

SOURCE=".\Interpreter Ops.h"
# End Source File
# Begin Source File

SOURCE=.\Memory.h
# End Source File
# Begin Source File

SOURCE=.\OpCode.h
# End Source File
# Begin Source File

SOURCE=.\pif.h
# End Source File
# Begin Source File

SOURCE=".\Recompiler CPU.h"
# End Source File
# Begin Source File

SOURCE=".\Recompiler Ops.h"
# End Source File
# Begin Source File

SOURCE=.\Registers.h
# End Source File
# Begin Source File

SOURCE=.\Rom.h
# End Source File
# Begin Source File

SOURCE=".\Sync CPU.h"
# End Source File
# Begin Source File

SOURCE=.\tlb.h
# End Source File
# End Group
# Begin Group "Zlib Header"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\unzip.h
# End Source File
# Begin Source File

SOURCE=.\zconf.h
# End Source File
# Begin Source File

SOURCE=.\zip.h
# End Source File
# Begin Source File

SOURCE=.\zlib.h
# End Source File
# End Group
# Begin Group "Plugin Header"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Plugin.h
# End Source File
# End Group
# Begin Group "X86 Opcodes Headers"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\X86.h
# End Source File
# End Group
# Begin Group "Lang Header"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Language.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\MemTest.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\contract.ico
# End Source File
# Begin Source File

SOURCE=.\expand.ico
# End Source File
# Begin Source File

SOURCE=.\ico00001.ico
# End Source File
# Begin Source File

SOURCE=.\icon1.ico
# End Source File
# Begin Source File

SOURCE=.\left.ico
# End Source File
# Begin Source File

SOURCE=.\pj64.BMP
# End Source File
# Begin Source File

SOURCE=.\pj64.ico
# End Source File
# Begin Source File

SOURCE=.\PJ64.rc
# End Source File
# Begin Source File

SOURCE=.\right.ico
# End Source File
# Begin Source File

SOURCE=".\tri-state.bmp"
# End Source File
# End Group
# Begin Source File

SOURCE=.\about.htm
# End Source File
# End Target
# End Project
