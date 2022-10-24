# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bluetooth-auto-recovery
PKG_VERSION:=0.3.6
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_auto_recovery
PKG_HASH:=4934b17973fc477ce55f7473bd8909f06a9fb51a093789fc38e6623cdffc2e53

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bluetooth-auto-recovery
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Bluetooth Auto Recovery
  URL:=https://github.com/bluetooth-devices/bluetooth-auto-recovery
  DEPENDS:= \
	+python3-async-timeout \
	+python3-asyncio \
	+python3-btsocket \
	+python3-logging \
	+python3-pyric
endef

define Package/python3-bluetooth-auto-recovery/description
  Recover bluetooth adapters that are in an stuck state.
endef

$(eval $(call Py3Package,python3-bluetooth-auto-recovery))
$(eval $(call BuildPackage,python3-bluetooth-auto-recovery))
#$(eval $(call BuildPackage,python3-bluetooth-auto-recovery-src))
