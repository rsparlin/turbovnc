# Microsoft Developer Studio Generated NMAKE File, Based on VNCHooks.dsp
!IF "$(CFG)" == ""
CFG=VNCHooks - Win32 No_CORBA
!MESSAGE No configuration specified. Defaulting to VNCHooks - Win32 No_CORBA.
!ENDIF 

!IF "$(CFG)" != "VNCHooks - Win32 Release" && "$(CFG)" != "VNCHooks - Win32 Debug" && "$(CFG)" != "VNCHooks - Win32 Purify" && "$(CFG)" != "VNCHooks - Win32 No_CORBA" && "$(CFG)" != "VNCHooks - Win32 Profile" && "$(CFG)" != "VNCHooks - Win32 Alpha No_CORBA" && "$(CFG)" != "VNCHooks - Win32 Alpha Debug No_CORBA"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "VNCHooks.mak" CFG="VNCHooks - Win32 Profile"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "VNCHooks - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "VNCHooks - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "VNCHooks - Win32 Purify" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "VNCHooks - Win32 No_CORBA" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "VNCHooks - Win32 Profile" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "VNCHooks - Win32 Alpha No_CORBA" (based on "Win32 (ALPHA) Dynamic-Link Library")
!MESSAGE "VNCHooks - Win32 Alpha Debug No_CORBA" (based on "Win32 (ALPHA) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "VNCHooks - Win32 Release"

OUTDIR=.\../Release
INTDIR=.\../Release
# Begin Custom Macros
OutDir=.\../Release
# End Custom Macros

ALL : "$(OUTDIR)\VNCHooks.dll"


CLEAN :
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\VNCHooks.dll"
	-@erase "$(OUTDIR)\VNCHooks.exp"
	-@erase "$(OUTDIR)\VNCHooks.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /I "\\shallot\omni\release\include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D _WIN32_WINNT=0x0400 /Fp"$(INTDIR)\VNCHooks.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\VNCHooks.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VNCHooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\VNCHooks.pdb" /machine:I386 /def:".\VNCHooks.def" /out:"$(OUTDIR)\VNCHooks.dll" /implib:"$(OUTDIR)\VNCHooks.lib" /libpath:"\\shallot\omni\release\lib\x86_nt_4.0" 
DEF_FILE= \
	".\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\VNCHooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Debug"

OUTDIR=.\../Debug
INTDIR=.\../Debug
# Begin Custom Macros
OutDir=.\../Debug
# End Custom Macros

ALL : "$(OUTDIR)\VNCHooks.dll"


CLEAN :
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\VNCHooks.dll"
	-@erase "$(OUTDIR)\VNCHooks.exp"
	-@erase "$(OUTDIR)\VNCHooks.ilk"
	-@erase "$(OUTDIR)\VNCHooks.lib"
	-@erase "$(OUTDIR)\VNCHooks.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /I "\\shallot\omni\release\include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D _WIN32_WINNT=0x0400 /Fp"$(INTDIR)\VNCHooks.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\VNCHooks.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VNCHooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\VNCHooks.pdb" /debug /machine:I386 /def:".\VNCHooks.def" /out:"$(OUTDIR)\VNCHooks.dll" /implib:"$(OUTDIR)\VNCHooks.lib" /pdbtype:sept 
DEF_FILE= \
	".\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\VNCHooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Purify"

OUTDIR=.\../Purify
INTDIR=.\../Purify
# Begin Custom Macros
OutDir=.\../Purify
# End Custom Macros

ALL : "$(OUTDIR)\VNCHooks.dll"


CLEAN :
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\VNCHooks.dll"
	-@erase "$(OUTDIR)\VNCHooks.exp"
	-@erase "$(OUTDIR)\VNCHooks.ilk"
	-@erase "$(OUTDIR)\VNCHooks.lib"
	-@erase "$(OUTDIR)\VNCHooks.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D _WIN32_WINNT=0x0400 /Fp"$(INTDIR)\VNCHooks.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\VNCHooks.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VNCHooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)\VNCHooks.pdb" /debug /machine:I386 /def:".\VNCHooks.def" /out:"$(OUTDIR)\VNCHooks.dll" /implib:"$(OUTDIR)\VNCHooks.lib" /pdbtype:sept 
DEF_FILE= \
	".\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\VNCHooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "VNCHooks - Win32 No_CORBA"

OUTDIR=.\..\No_CORBA
INTDIR=.\..\No_CORBA
# Begin Custom Macros
OutDir=.\..\No_CORBA
# End Custom Macros

ALL : "$(OUTDIR)\VNCHooks.dll"


CLEAN :
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\VNCHooks.dll"
	-@erase "$(OUTDIR)\VNCHooks.exp"
	-@erase "$(OUTDIR)\VNCHooks.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D _WIN32_WINNT=0x0400 /Fp"$(INTDIR)\VNCHooks.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\VNCHooks.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VNCHooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\VNCHooks.pdb" /machine:I386 /def:".\VNCHooks.def" /out:"$(OUTDIR)\VNCHooks.dll" /implib:"$(OUTDIR)\VNCHooks.lib" 
DEF_FILE= \
	".\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\VNCHooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Profile"

OUTDIR=.\../Profile
INTDIR=.\../Profile
# Begin Custom Macros
OutDir=.\../Profile
# End Custom Macros

ALL : "$(OUTDIR)\VNCHooks.dll"


CLEAN :
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(INTDIR)\VNCHooks.obj"
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\VNCHooks.dll"
	-@erase "$(OUTDIR)\VNCHooks.exp"
	-@erase "$(OUTDIR)\VNCHooks.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D _WIN32_WINNT=0x0400 /Fp"$(INTDIR)\VNCHooks.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x809 /fo"$(INTDIR)\VNCHooks.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VNCHooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /profile /debug /machine:I386 /def:".\VNCHooks.def" /out:"$(OUTDIR)\VNCHooks.dll" /implib:"$(OUTDIR)\VNCHooks.lib" 
DEF_FILE= \
	".\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.obj" \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\VNCHooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Alpha No_CORBA"

OUTDIR=.\..\Alpha_No_CORBA
INTDIR=.\..\Alpha_No_CORBA
# Begin Custom Macros
OutDir=.\..\Alpha_No_CORBA
# End Custom Macros

ALL : "$(OUTDIR)\VNCHooks.dll"


CLEAN :
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\VNCHooks.dll"
	-@erase "$(OUTDIR)\VNCHooks.exp"
	-@erase "$(OUTDIR)\VNCHooks.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\VNCHooks.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VNCHooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\VNCHooks.pdb" /machine:ALPHA /def:".\VNCHooks.def" /out:"$(OUTDIR)\VNCHooks.dll" /implib:"$(OUTDIR)\VNCHooks.lib" 
DEF_FILE= \
	".\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\VNCHooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Alpha Debug No_CORBA"

OUTDIR=.\..\AlphaDbg_No_CORBA
INTDIR=.\..\AlphaDbg_No_CORBA
# Begin Custom Macros
OutDir=.\..\AlphaDbg_No_CORBA
# End Custom Macros

ALL : "$(OUTDIR)\VNCHooks.dll"


CLEAN :
	-@erase "$(INTDIR)\VNCHooks.res"
	-@erase "$(OUTDIR)\VNCHooks.dll"
	-@erase "$(OUTDIR)\VNCHooks.exp"
	-@erase "$(OUTDIR)\VNCHooks.lib"
	-@erase "$(OUTDIR)\VNCHooks.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\VNCHooks.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\VNCHooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\VNCHooks.pdb" /debug /machine:ALPHA /def:".\VNCHooks.def" /out:"$(OUTDIR)\VNCHooks.dll" /implib:"$(OUTDIR)\VNCHooks.lib" /pdbtype:sept 
DEF_FILE= \
	".\VNCHooks.def"
LINK32_OBJS= \
	"$(INTDIR)\VNCHooks.res"

"$(OUTDIR)\VNCHooks.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("VNCHooks.dep")
!INCLUDE "VNCHooks.dep"
!ELSE 
!MESSAGE Warning: cannot find "VNCHooks.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "VNCHooks - Win32 Release" || "$(CFG)" == "VNCHooks - Win32 Debug" || "$(CFG)" == "VNCHooks - Win32 Purify" || "$(CFG)" == "VNCHooks - Win32 No_CORBA" || "$(CFG)" == "VNCHooks - Win32 Profile" || "$(CFG)" == "VNCHooks - Win32 Alpha No_CORBA" || "$(CFG)" == "VNCHooks - Win32 Alpha Debug No_CORBA"
SOURCE=.\VNCHooks.cpp

!IF  "$(CFG)" == "VNCHooks - Win32 Release"


"$(INTDIR)\VNCHooks.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Debug"


"$(INTDIR)\VNCHooks.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Purify"


"$(INTDIR)\VNCHooks.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "VNCHooks - Win32 No_CORBA"


"$(INTDIR)\VNCHooks.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Profile"


"$(INTDIR)\VNCHooks.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Alpha No_CORBA"

!ELSEIF  "$(CFG)" == "VNCHooks - Win32 Alpha Debug No_CORBA"

!ENDIF 

SOURCE=.\VNCHooks.rc

"$(INTDIR)\VNCHooks.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

