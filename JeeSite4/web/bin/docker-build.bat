@echo off
rem /**
rem  * Copyright (c) 2013-Now http://jeesite.com All rights reserved.
rem  * No deletion without permission, or be held responsible to law.
rem  *
rem  * Author: ThinkGem@163.com
rem  */
echo.
echo [信息] 打包Web工程，导入到Docker服务。
echo.

%~d0
cd %~dp0

cd ..
call mvn clean package docker:stop docker:remove docker:build docker:run -Dmaven.test.skip=true -U

cd bin
pause