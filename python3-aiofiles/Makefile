# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-aiofiles
PKG_VERSION:=22.1.0
PKG_RELEASE:=1

PYPI_NAME:=aiofiles
PKG_HASH:=9107f1ca0b2a5553987a94a3c9959fe5b491fdf731389aa5b7b1bd0733e32de6

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiofiles
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=File support for asyncio
  URL:=https://github.com/Tinche/aiofiles
  DEPENDS:=+python3-asyncio
endef

define Package/python3-aiofiles/description
  aiofiles is an Apache2 licensed library, written in Python,
  for handling local disk files in asyncio applications.
endef

$(eval $(call Py3Package,python3-aiofiles))
$(eval $(call BuildPackage,python3-aiofiles))
#$(eval $(call BuildPackage,python3-aiofiles-src))
