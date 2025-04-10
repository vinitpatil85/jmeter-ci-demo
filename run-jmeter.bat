@echo off

REM Set JMeter bin path
set JMETER_PATH=C:\Users\VINIT\Downloads\apache-jmeter-5.6.3\apache-jmeter-5.6.3\bin

REM Get full path to JMX file
set TEST_PATH=%cd%\ThreadGroup.jmx

REM Echo path for debugging
echo Running test from: %TEST_PATH%

REM Run the JMeter test
"%JMETER_PATH%\jmeter.bat" -n -t "%TEST_PATH%" -l results.jtl -e -o report

echo JMeter test executed.
