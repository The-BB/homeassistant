# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=colorzero
PKG_VERSION:=2.0
PKG_RELEASE:=1

PYPI_NAME:=colorzero
PKG_HASH:=e7d5a5c26cd0dc37b164ebefc609f388de24f8593b659191e12d85f8f9d5eb58

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-colorzero
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Yet another Python color library
  URL:=https://colorzero.readthedocs.io
  DEPENDS:=+python3-light
endef

define Package/python3-colorzero/description
  colorzero is a color manipulation library for Python (yes, another one)
  which aims to be reasonably simple to use and “pythonic” in nature.
endef

$(eval $(call Py3Package,python3-colorzero))
$(eval $(call BuildPackage,python3-colorzero))
#$(eval $(call BuildPackage,python3-colorzero-src))
