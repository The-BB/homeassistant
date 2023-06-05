# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=async-upnp-client
PKG_VERSION:=0.33.1
PKG_RELEASE:=2

PYPI_NAME:=async_upnp_client
PKG_HASH:=d349b57f83ca415cae671f021129647f33d5c11ef2c5d319275880413d93128f

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-async-upnp-client
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Async UPnP Client
  URL:=https://github.com/StevenLooman/async_upnp_client
  DEPENDS:= \
	+python3-aiohttp \
	+python3-async-timeout \
	+python3-asyncio \
	+python3-defusedxml \
	+python3-didl-lite \
	+python3-logging \
	+python3-urllib \
	+python3-voluptuous \
	+python3-xml
endef

define Package/python3-async-upnp-client/description
  Asyncio UPnP Client library for Python/asyncio.
endef

$(eval $(call Py3Package,python3-async-upnp-client))
$(eval $(call BuildPackage,python3-async-upnp-client))
#$(eval $(call BuildPackage,python3-async-upnp-client-src))