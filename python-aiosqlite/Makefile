# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiosqlite
PKG_VERSION:=0.19.0
PKG_RELEASE:=1

PYPI_NAME:=aiosqlite
PKG_HASH:=95ee77b91c8d2808bd08a59fbebf66270e9090c3d92ffbf260dc0db0b979577d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiosqlite
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=asyncio bridge to the standard sqlite3 module
  URL:=https://github.com/omnilib/aiosqlite
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-sqlite3 \
	+python3-typing-extensions
endef

define Package/python3-aiosqlite/description
  aiosqlite provides a friendly, async interface to sqlite databases.
endef

$(eval $(call Py3Package,python3-aiosqlite))
$(eval $(call BuildPackage,python3-aiosqlite))
#$(eval $(call BuildPackage,python3-aiosqlite-src))
