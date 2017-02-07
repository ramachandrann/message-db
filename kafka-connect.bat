@echo off
rem ...

SetLocal
IF ["%KAFKA_LOG4J_OPTS%"] EQU [""] (
    set KAFKA_LOG4J_OPTS=-Dlog4j.configuration=file:%~dp0../../config/connect-log4j.properties
)

%~dp0kafka-run-class.bat org.apache.kafka.connect.cli.ConnectStandalone %*
EndLocal