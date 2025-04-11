@echo off

REM Set JMeter path
set JMETER_PATH=C:\apache-jmeter-5.6.3\bin
set TEST_PATH=%cd%\ThreadGroup.jmx
set REPORT_PATH=%cd%\report

REM Clean report folder if it exists
if exist "%REPORT_PATH%" (
    echo Deleting existing report directory...
    rmdir /s /q "%REPORT_PATH%"
)

REM Run JMeter test
echo Running JMeter test...
"%JMETER_PATH%\jmeter.bat" -n -t "%TEST_PATH%" -l results.jtl -e -o report

echo JMeter test completed.
