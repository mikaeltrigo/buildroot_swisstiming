################################################################################
#
# pwrt3_lua
#
################################################################################

PWRT3_LUA_VERSION = d013e014a848372548b618025d12a26c63881b08
PWRT3_LUA_SITE_METHOD = git
PWRT3_LUA_SITE = https://github.com/mikaeltrigo/pwrt3_lua.git
PWRT3_LUA_INSTALL_TARGET = YES

INSTALL_PREFIX=$(TARGET_DIR)/opt/powertime/lua

define PWRT3_LUA_INSTALL_TARGET_CMDS
        #$(INSTALL) -D -m 775 $(@D) ${INSTALL_PREFIX}
	rm -rf $(INSTALL_PREFIX)
	mkdir -p $(INSTALL_PREFIX)
	tar cf - -C $(@D) --exclude=.stamp* --exclude=.applied_patches_list . | tar xvf - -C $(INSTALL_PREFIX)
	find $(INSTALL_PREFIX) | xargs chmod 775
endef

$(eval $(generic-package))
