@echo off

REM Set JMeter bin path (no quotes inside variable)
set JMETER_PATH=C:\Users\VINIT\Downloads\apache-jmeter-5.6.3\apache-jmeter-5.6.3\bin

REM Run the JMeter test (quote paths where needed)
"%JMETER_PATH%\jmeter.bat" -n -t "ThreadGroup.jmx" -l results.jtl -e -o report

echo JMeter test executed.
