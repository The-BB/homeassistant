# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aioesphomeapi
PKG_VERSION:=23.0.0
PKG_RELEASE:=1

PYPI_NAME:=aioesphomeapi
PKG_HASH:=bbf13e4486371d326fb9f81807aed415fd58f54e1c60389aae53f3c7db2c9388

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aioesphomeapi
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=API for interacting with ESPHome devices
  URL:=https://esphome.io
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-uuid \
	+python3-aiohappyeyeballs \
	+python3-async-interrupt \
	+python3-chacha20poly1305-reuseable \
	+python3-cryptography \
	+python3-noiseprotocol \
	+python3-protobuf \
	+python3-zeroconf
endef

define Package/python3-aioesphomeapi/description
  Python Client for ESPHome native API. Used by Home Assistant.
endef

$(eval $(call Py3Package,python3-aioesphomeapi))
$(eval $(call BuildPackage,python3-aioesphomeapi))
#$(eval $(call BuildPackage,python3-aioesphomeapi-src))
