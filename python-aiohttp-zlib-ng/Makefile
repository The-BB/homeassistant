# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiohttp-zlib-ng
PKG_VERSION:=0.1.1
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_zlib_ng
PKG_HASH:=8f3a9a9b4e8bfa9c3cfa7fb619b1268d6e986a66e452de067a81017717bb6962

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiohttp-zlib-ng
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Enable zlib_ng on aiohttp
  URL:=https://github.com/bdraco/aiohttp-zlib-ng
  DEPENDS:=+python3-aiohttp +python3-zlib-ng
endef

define Package/python3-aiohttp-zlib-ng/description
  Enable zlib_ng on aiohttp.
endef

$(eval $(call Py3Package,python3-aiohttp-zlib-ng))
$(eval $(call BuildPackage,python3-aiohttp-zlib-ng))
#$(eval $(call BuildPackage,python3-aiohttp-zlib-ng-src))
