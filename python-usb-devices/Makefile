# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=usb-devices
PKG_VERSION:=0.4.1
PKG_RELEASE:=2

PYPI_NAME:=usb_devices
PKG_HASH:=2ad810ba1fd29817d014fe244179fbd06866b92a3285e2bb3a8442f99a8e47b6

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-usb-devices
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Tools for mapping, describing, and resetting USB devices
  URL:=https://github.com/bluetooth-devices/usb-devices
  DEPENDS:=+python3-asyncio
endef

define Package/python3-usb-devices/description
  Tools for mapping, describing, and resetting USB devices.
endef

$(eval $(call Py3Package,python3-usb-devices))
$(eval $(call BuildPackage,python3-usb-devices))
#$(eval $(call BuildPackage,python3-usb-devices-src))
