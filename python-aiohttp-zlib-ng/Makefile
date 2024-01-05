# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiohttp-zlib-ng
PKG_VERSION:=0.1.3
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_zlib_ng
PKG_HASH:=2aafeb911de5075b1374736c7830b5d203988937d25b015e89c22390f4a6856a

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
