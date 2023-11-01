# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zigpy-xbee
PKG_VERSION:=0.18.3
PKG_RELEASE:=1

PYPI_NAME:=zigpy-xbee
PKG_HASH:=a810b2a3c952a9512bcdb0ac43c64147daa00f81d62f3ebe186c7c3e57b5090a

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-zigpy-xbee
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library which communicates with XBee radios
  URL:=https://github.com/zigpy/zigpy-xbee
  DEPENDS:=+python3-asyncio +python3-logging +python3-zigpy
endef

define Package/python3-zigpy-xbee/description
  zigpy-xbee is a Python implementation for the Zigpy project
  to implement XBee based Zigbee radio devices from Digi.
endef

$(eval $(call Py3Package,python3-zigpy-xbee))
$(eval $(call BuildPackage,python3-zigpy-xbee))
#$(eval $(call BuildPackage,python3-zigpy-xbee-src))
