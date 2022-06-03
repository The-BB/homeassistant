# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-async-upnp-client
PKG_VERSION:=0.30.1
PKG_RELEASE:=1

PYPI_NAME:=async_upnp_client
PKG_HASH:=36a70e531112aa9ebe8df025a066b764c0915af8dfaab08b235d29ca900ffa78

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
#$(eval $(call BuildPackage,python3-async-upnp-client-src))
