# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bleak
PKG_VERSION:=0.16.0
PKG_RELEASE:=1

PYPI_NAME:=bleak
PKG_HASH:=a549f43e3c5d8de464c72b4b905534c3f4781746e9815ecd531b7255de2e19c7

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bleak
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Bluetooth Low Energy platform Agnostic Klient
  URL:=https://github.com/hbldh/bleak
  DEPENDS:= \
	+python3-async-timeout \
	+python3-asyncio \
	+python3-dbus-next \
	+python3-logging \
	+python3-typing-extensions
endef

define Package/python3-bleak/description
  Bleak is an acronym for Bluetooth Low Energy platform Agnostic Klient.
endef

$(eval $(call Py3Package,python3-bleak))
$(eval $(call BuildPackage,python3-bleak))
#$(eval $(call BuildPackage,python3-bleak-src))
