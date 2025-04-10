@echo off

REM Set JMeter bin path to a SYSTEM-accessible location
set JMETER_PATH=C:\apache-jmeter-5.6.3\bin

REM Get full path to JMX file in Jenkins workspace
set TEST_PATH=%cd%\ThreadGroup.jmx

echo Running test from: %TEST_PATH%

REM Run the JMeter test
"%JMETER_PATH%\jmeter.bat" -n -t "%TEST_PATH%" -l results.jtl -e -o report

echo JMeter test executed.
