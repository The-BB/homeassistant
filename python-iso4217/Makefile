# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-iso4217
PKG_VERSION:=1.11.20220401
PKG_RELEASE:=1

PYPI_NAME:=iso4217
PKG_HASH:=03b5c1493f47c3fb4fb066135d66115340ddab55633b85d0ed39acacab3a090e

PKG_LICENSE:=PD
PKG_LICENSE_FILES:=

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-iso4217
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ISO 4217 currency data package
  URL:=https://github.com/dahlia/iso4217
  DEPENDS:= \
	+python3-xml
endef

define Package/python3-iso4217/description
  ISO 4217 currency data package for Python.
endef

$(eval $(call Py3Package,python3-iso4217))
$(eval $(call BuildPackage,python3-iso4217))
#$(eval $(call BuildPackage,python3-iso4217-src))
