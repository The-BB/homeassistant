# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bluetooth-auto-recovery
PKG_VERSION:=1.2.2
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_auto_recovery
PKG_HASH:=e0b4f360d7a19bbdf6044b0a5fc91ea5073cca245f2abb16196d16c218e98492

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

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
	+python3-pyric \
	+python3-usb-devices
endef

define Package/python3-bluetooth-auto-recovery/description
  Recover bluetooth adapters that are in an stuck state.
endef

$(eval $(call Py3Package,python3-bluetooth-auto-recovery))
$(eval $(call BuildPackage,python3-bluetooth-auto-recovery))
#$(eval $(call BuildPackage,python3-bluetooth-auto-recovery-src))
