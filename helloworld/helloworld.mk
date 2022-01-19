##################################################
###########
#
### helloworld_demo
#
##################################################
###########
ifeq ($(BR2_PACKAGE_HELLOWORLD), y)

	HELLOWORLD_VERSION:=master
	HELLOWORLD_SITE:=$(call github,fengchunbo,helloworld,master)

define HELLOWORLD_BUILD_CMDS
        $(TARGET_MAKE_ENV) $(MAKE) CC=$(TARGET_CC) CXX=$(TARGET_CXX) -C $(@D)
endef

define HELLOWORLD_CLEAN_CMDS
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D) clean
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D) install
endef

define HELLOWORLD_UNINSTALL_TARGET_CMDS
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D) uninstall
endef

$(eval $(generic-package))
endif
