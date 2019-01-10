@echo off
echo ----------------------------------------
echo UpdateTime: 16点21分 2018-11-13
echo From: 魏泯
echo Version: v1.1

echo 关闭回显
echo 使用方法 在Django虚拟环境内使用
echo 详情见博客园发布教程 https://home.cnblogs.com/u/Asterism-2012/

echo ----------------------------------------

rem 初始化变量
rem 从date（日期）中获取年月日，初始化三个变量
set Y=%date:~0,4%
set m=%date:~5,2%
set d=%date:~8,2%



rem 建立项目 进入项目
django-admin startproject projectname%Y%_%m%_%d%

rem 建立apps （应用）文件夹与 docs文件夹 libs(第三方)文件夹 utils（自己写的）文件夹 还有script
cd projectname%Y%_%m%_%d%


md docs
cd docs
echo.> __init__.py
cd..


md script
cd script
echo.> __init__.py
cd..

md logs
cd logs
echo.> __init__.py
cd..

rem 建立settings文件夹，我不会替你改manage.py 文件的

cd projectname%Y%_%m%_%d%
md settings


rem 生成dev 文件
copy settings.py settings\dev.py


rem 进入settings 文件夹建立包 __init__.py 与 prod.py
cd settings
echo.> __init__.py
echo.> prod.py


rem 回到项目配置目录删除settings.py
cd..
del settings.py

rem 创建apps
md apps
cd apps
echo.> __init__.py
cd ..


md libs
cd libs
echo.> __init__.py
cd..


md utils
cd utils
echo.> __init__.py
cd..
cd..


rem version 1.0
pause
