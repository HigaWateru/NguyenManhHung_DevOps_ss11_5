@if "%DEBUG%"=="" @echo off
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

if defined JAVA_HOME goto findJavaFromJavaHome
set JAVACMD=java.exe
goto checkJava

:findJavaFromJavaHome
set JAVACMD=%JAVA_HOME%\bin\java.exe

:checkJava
set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

if not exist "%CLASSPATH%" (
    gradle %*
    goto end
)

"%JAVACMD%" -jar "%CLASSPATH%" %*

:end
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal
