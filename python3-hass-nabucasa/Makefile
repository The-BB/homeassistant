# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-hass-nabucasa
PKG_VERSION:=0.52.0
PKG_RELEASE:=1

PYPI_NAME:=hass-nabucasa
PKG_HASH:=03c2561083722cfb4b18388509db237933c505c0ee283bef8cfed312d90d062e

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-hass-nabucasa
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Home Assistant cloud integration by Nabu Casa
  URL:=https://www.nabucasa.com
  DEPENDS:= \
	+python3-acme \
	+python3-aiohttp \
	+python3-atomicwrites \
	+python3-attrs \
	+python3-cryptography \
	+python3-pycognito \
	+python3-pytz \
	+python3-snitun
endef

define Package/python3-hass-nabucasa/description
  Home Assistant cloud integration by Nabu Casa, Inc.
endef

$(eval $(call Py3Package,python3-hass-nabucasa))
$(eval $(call BuildPackage,python3-hass-nabucasa))
#$(eval $(call BuildPackage,python3-hass-nabucasa-src))
