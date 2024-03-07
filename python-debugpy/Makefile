# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=debugpy
PKG_VERSION:=1.8.1
PKG_RELEASE:=1

PYPI_NAME:=debugpy
PYPI_SOURCE_EXT:=zip
PKG_HASH:=f696d6be15be87aef621917585f9bb94b1dc9e8aced570db1b8a6fc14e8f9b42

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-debugpy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An implementation of the Debug Adapter Protocol
  URL:=https://aka.ms/debugpy
  DEPENDS:= \
	+python3-asyncio \
	+python3-ctypes \
	+python3-distutils \
	+python3-readline \
	+python3-sqlalchemy \
	+python3-sqlite3 \
	+python3-unittest \
	+python3-urllib \
	+python3-xml
endef

define Package/python3-debugpy/description
  debugpy - a debugger for Python.
endef

$(eval $(call Py3Package,python3-debugpy))
$(eval $(call BuildPackage,python3-debugpy))
#$(eval $(call BuildPackage,python3-debugpy-src))
