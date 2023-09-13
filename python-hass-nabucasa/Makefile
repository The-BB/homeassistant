# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=hass-nabucasa
PKG_VERSION:=0.71.0
PKG_RELEASE:=1

PYPI_NAME:=hass-nabucasa
PKG_HASH:=0b90601de1c35256aa0e824be58fe19a53015ac9d17f7ea117999c4fccd82b59

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
	+python3-asyncio \
	+python3-atomicwrites-homeassistant \
	+python3-attrs \
	+python3-logging \
	+python3-openssl \
	+python3-pycognito \
	+python3-pyjwt \
	+python3-snitun \
	+python3-urllib \
	+python3-uuid \
	+python3-xml
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-hass-nabucasa/description
  Home Assistant cloud integration by Nabu Casa, Inc.
endef

$(eval $(call Py3Package,python3-hass-nabucasa))
$(eval $(call BuildPackage,python3-hass-nabucasa))
#$(eval $(call BuildPackage,python3-hass-nabucasa-src))
