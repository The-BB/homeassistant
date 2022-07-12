# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-debugpy
PKG_VERSION:=1.6.0
PKG_RELEASE:=1

PYPI_NAME:=debugpy
PYPI_SOURCE_EXT:=zip
PKG_HASH:=7b79c40852991f7b6c3ea65845ed0f5f6b731c37f4f9ad9c61e2ab4bd48a9275

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
	+python3-ctypes \
	+python3-distutils \
	+python3-readline \
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
