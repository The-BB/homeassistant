# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-async-upnp-client
PKG_VERSION:=0.14.14
PKG_RELEASE:=2

PYPI_NAME:=async_upnp_client
PKG_HASH:=18b828d8cb95925ca476cd66ab7409b40a644217d8154ed311d12c6e4c34eea8

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
	+python3-defusedxml \
	+python3-didl-lite \
	+python3-voluptuous
endef

define Package/python3-async-upnp-client/description
  Asyncio UPnP Client library for Python/asyncio.
endef

$(eval $(call Py3Package,python3-async-upnp-client))
$(eval $(call BuildPackage,python3-async-upnp-client))
$(eval $(call BuildPackage,python3-async-upnp-client-src))
