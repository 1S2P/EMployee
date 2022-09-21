@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\xampp\a\hypersonic\scripts\ctl.bat (start /MIN /B C:\xampp\a\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\xampp\a\ingres\scripts\ctl.bat (start /MIN /B C:\xampp\a\ingres\scripts\ctl.bat START)
if exist C:\xampp\a\mysql\scripts\ctl.bat (start /MIN /B C:\xampp\a\mysql\scripts\ctl.bat START)
if exist C:\xampp\a\postgresql\scripts\ctl.bat (start /MIN /B C:\xampp\a\postgresql\scripts\ctl.bat START)
if exist C:\xampp\a\apache\scripts\ctl.bat (start /MIN /B C:\xampp\a\apache\scripts\ctl.bat START)
if exist C:\xampp\a\openoffice\scripts\ctl.bat (start /MIN /B C:\xampp\a\openoffice\scripts\ctl.bat START)
if exist C:\xampp\a\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\xampp\a\apache-tomcat\scripts\ctl.bat START)
if exist C:\xampp\a\resin\scripts\ctl.bat (start /MIN /B C:\xampp\a\resin\scripts\ctl.bat START)
if exist C:\xampp\a\jetty\scripts\ctl.bat (start /MIN /B C:\xampp\a\jetty\scripts\ctl.bat START)
if exist C:\xampp\a\subversion\scripts\ctl.bat (start /MIN /B C:\xampp\a\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\xampp\a\lucene\scripts\ctl.bat (start /MIN /B C:\xampp\a\lucene\scripts\ctl.bat START)
if exist C:\xampp\a\third_application\scripts\ctl.bat (start /MIN /B C:\xampp\a\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\xampp\a\third_application\scripts\ctl.bat (start /MIN /B C:\xampp\a\third_application\scripts\ctl.bat STOP)
if exist C:\xampp\a\lucene\scripts\ctl.bat (start /MIN /B C:\xampp\a\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\xampp\a\subversion\scripts\ctl.bat (start /MIN /B C:\xampp\a\subversion\scripts\ctl.bat STOP)
if exist C:\xampp\a\jetty\scripts\ctl.bat (start /MIN /B C:\xampp\a\jetty\scripts\ctl.bat STOP)
if exist C:\xampp\a\hypersonic\scripts\ctl.bat (start /MIN /B C:\xampp\a\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\xampp\a\resin\scripts\ctl.bat (start /MIN /B C:\xampp\a\resin\scripts\ctl.bat STOP)
if exist C:\xampp\a\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\xampp\a\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\xampp\a\openoffice\scripts\ctl.bat (start /MIN /B C:\xampp\a\openoffice\scripts\ctl.bat STOP)
if exist C:\xampp\a\apache\scripts\ctl.bat (start /MIN /B C:\xampp\a\apache\scripts\ctl.bat STOP)
if exist C:\xampp\a\ingres\scripts\ctl.bat (start /MIN /B C:\xampp\a\ingres\scripts\ctl.bat STOP)
if exist C:\xampp\a\mysql\scripts\ctl.bat (start /MIN /B C:\xampp\a\mysql\scripts\ctl.bat STOP)
if exist C:\xampp\a\postgresql\scripts\ctl.bat (start /MIN /B C:\xampp\a\postgresql\scripts\ctl.bat STOP)

:end

