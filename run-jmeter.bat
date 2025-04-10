@echo off

REM Set JMeter bin path
set JMETER_PATH="C:\Users\VINIT\Downloads\apache-jmeter-5.6.3\apache-jmeter-5.6.3\bin"  <-- Change to your path

REM Run the JMeter test
%JMETER_PATH%\jmeter.bat -n -t Thread Group.jmx -l results.jtl -e -o report

echo JMeter test executed.
