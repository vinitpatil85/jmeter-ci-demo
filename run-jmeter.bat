@echo off

REM Set JMeter path
set JMETER_PATH=C:\apache-jmeter-5.6.3\bin
set TEST_PATH=%cd%\ThreadGroup.jmx
set REPORT_PATH=%cd%\report
set RESULTS_FILE=%cd%\results.jtl

REM Clean report directory
if exist "%REPORT_PATH%" (
    echo Deleting existing report directory...
    rmdir /s /q "%REPORT_PATH%"
)

REM Clean results file
if exist "%RESULTS_FILE%" (
    echo Deleting existing results.jtl file...
    del /f /q "%RESULTS_FILE%"
)

REM Run JMeter test
echo Running JMeter test...
"%JMETER_PATH%\jmeter.bat" -n -t "%TEST_PATH%" -l results.jtl -e -o report

echo JMeter test completed.
