# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiohttp-fast-url-dispatcher
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_fast_url_dispatcher
PKG_HASH:=0fc11c60a4209429340d9d2d07b6b0819a45ebd0d47ceb78bea915dbe042addd

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiohttp-fast-url-dispatcher
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A faster URL dispatcher for aiohttp
  URL:=https://github.com/bdraco/aiohttp-fast-url-dispatcher
  DEPENDS:=+python3-aiohttp
endef

define Package/python3-aiohttp-fast-url-dispatcher/description
  A faster URL dispatcher for aiohttp.
endef

$(eval $(call Py3Package,python3-aiohttp-fast-url-dispatcher))
$(eval $(call BuildPackage,python3-aiohttp-fast-url-dispatcher))
#$(eval $(call BuildPackage,python3-aiohttp-fast-url-dispatcher-src))
