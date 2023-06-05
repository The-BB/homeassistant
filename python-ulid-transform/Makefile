# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ulid-transform
PKG_VERSION:=0.7.2
PKG_RELEASE:=2

PYPI_NAME:=ulid_transform
PKG_HASH:=5f78a9f9e7f71bb775cb74c2b4b2f085ddcf556c925d7d56d2d2e401bea6af5b

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-ulid-transform
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Create and transform ULIDs
  URL:=https://github.com/bdraco/ulid-transform
  DEPENDS:=+libstdcpp +python3-distutils
endef

define Package/python3-ulid-transform/description
  Fast ULID transformations.
endef

$(eval $(call Py3Package,python3-ulid-transform))
$(eval $(call BuildPackage,python3-ulid-transform))
#$(eval $(call BuildPackage,python3-ulid-transform-src))
