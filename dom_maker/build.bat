rem Domination Build Batch, really shitty batch file :D
rem needs makepbo from mikero https://mikero.bytex.digital/Downloads needs makePBO and dePBO
rem just copy MakePBO.exe and DePbo.dll in the dom_maker folder

set BASE_MASTER=co30_Domination.Altis
set MASTER=co30_Domination.Altis
set D_VER=4_55
set D_BNVER=4.55
set D_NUM_PLAYERS=40
set D_NUM_PLAYERS_TT=50
set D_NUM_PLAYERS_CO=40

set CUR_DIR=%cd%
set WORK_DIR=E:\DomSQFC

del *.pbo

rmdir /S /Q %WORK_DIR%

md %MASTER%
xcopy ..\%BASE_MASTER%\*.* %MASTER% /E /Y

rem Blufor RHS Altis
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_rhs_blufor.Altis
set MISSION_SQM=..\mission_sqm\mission_blufor_rhs_altis_bin.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_rhs_altis.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
rmdir /S /Q %WORK_DIR%

rem Blufor RHS Malden
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_rhs_blufor.Malden
set MISSION_SQM=..\mission_sqm\mission_blufor_rhs_malden.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_malden.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
rmdir /S /Q %WORK_DIR%

rem Blufor RHS Chernatus
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_rhs_blufor.Chernarus
set MISSION_SQM=..\mission_sqm\mission_blufor_chernarus.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_chernarus.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
rmdir /S /Q %WORK_DIR%

rem Blufor RHS Takistan
set NEW_VER=co%D_NUM_PLAYERS%_domination_%D_VER%_rhs_blufor.Takistan
set MISSION_SQM=..\mission_sqm\mission_blufor_takistan.sqm
set X_SETUP=..\mission_sqm\x_setup_blufor_takistan.sqf
md %WORK_DIR%
xcopy %MASTER%\*.* %WORK_DIR% /E /Y
echo d | xcopy %MISSION_SQM% %WORK_DIR%\mission.sqm /Y
echo d | xcopy %X_SETUP% %WORK_DIR%\x_setup.sqf /Y
cd %WORK_DIR%
del i_weapons_default.sqf
del i_weapons_CUP.sqf
del i_weapons_IFA3.sqf
del i_weapons_UNSUNG.sqf
del i_weapons_gmcwg.sqf
del i_weapons_csla.sqf
del i_weapons_vn.sqf
cd missions
rmdir /S /Q m
rmdir /S /Q moa
rmdir /S /Q msara
rmdir /S /Q ma3t
rmdir /S /Q ma3s
rmdir /S /Q mifa3
rmdir /S /Q ma3m
cd CUR_DIR
rem ArmaScriptCompiler.exe
md %NEW_VER%
xcopy %WORK_DIR%\*.* %NEW_VER% /E /Y
rmdir /S /Q %WORK_DIR%