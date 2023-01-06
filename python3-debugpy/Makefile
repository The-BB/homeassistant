# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-debugpy
PKG_VERSION:=1.6.4
PKG_RELEASE:=1

PYPI_NAME:=debugpy
PYPI_SOURCE_EXT:=zip
PKG_HASH:=d5ab9bd3f4e7faf3765fd52c7c43c074104ab1e109621dc73219099ed1a5399d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

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

PYTHON3_PKG_SETUP_GLOBAL_ARGS += build_ext --inplace

$(eval $(call Py3Package,python3-debugpy))
$(eval $(call BuildPackage,python3-debugpy))
#$(eval $(call BuildPackage,python3-debugpy-src))
