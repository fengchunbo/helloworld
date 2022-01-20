# buildroot remote app test

 1 拷贝工程中helloworld文件夹到buildroot/package目录下
 2 编辑buildroot/package/Config.in,增加以下代码
``
menu "Private package"
        source "package/helloworld/Config.in"
endmenu
``
 3 运行make menuconfig配置buildroot软件包,添加helloworld软件
 4 运行make helloworld-rebuild编译helloworld软件
 
### Key point
package/helloworld/helloworld.mk文件中配置远程代码链接

	HELLOWORLD_VERSION:=master
	HELLOWORLD_SITE:=$(call github,fengchunbo,helloworld,master)
