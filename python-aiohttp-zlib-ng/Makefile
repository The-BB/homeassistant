# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiohttp-zlib-ng
PKG_VERSION:=0.3.1
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_zlib_ng
PKG_HASH:=e8ac72b855a194da4c869e89f69a9dc9339229d2366931dfea34cff93fb960fa

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
