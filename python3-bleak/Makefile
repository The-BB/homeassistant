# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bleak
PKG_VERSION:=0.19.2
PKG_RELEASE:=1

PYPI_NAME:=bleak
PKG_HASH:=4201c5ed76d26d416680872670c7406a8d0214ecf2e6bd8ba66c84bc82258bd2

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
	+python3-dbus-fast \
	+python3-logging \
	+python3-typing-extensions
endef

define Package/python3-bleak/description
  Bleak is an acronym for Bluetooth Low Energy platform Agnostic Klient.
endef

$(eval $(call Py3Package,python3-bleak))
$(eval $(call BuildPackage,python3-bleak))
#$(eval $(call BuildPackage,python3-bleak-src))
