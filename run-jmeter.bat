@echo off

REM JMeter path
set JMETER_PATH=C:\apache-jmeter-5.6.3\bin
set TEST_PATH=%cd%\ThreadGroup.jmx

REM Debug: confirm file exists
echo Looking for JMX file at: %TEST_PATH%

if not exist "%TEST_PATH%" (
    echo ERROR: File not found!
    dir
    exit /b 1
)

REM Run test
"%JMETER_PATH%\jmeter.bat" -n -t "%TEST_PATH%" -l results.jtl -e -o report
