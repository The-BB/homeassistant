# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bleak
PKG_VERSION:=0.17.0
PKG_RELEASE:=1

PYPI_NAME:=bleak
PKG_HASH:=16f4decdc12d8dde5bef45496b7a4b1ef2de27f6a302119cd606eae16d54d483

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
