# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ulid-transform
PKG_VERSION:=0.9.0
PKG_RELEASE:=1

PYPI_NAME:=ulid_transform
PKG_HASH:=e50c78ddb89629d1d7b5e7436b51bb49ac3ddca7a278a78640299d4cd49105bc

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
  DEPENDS:=+libstdcpp +python3-light
endef

define Package/python3-ulid-transform/description
  Fast ULID transformations.
endef

$(eval $(call Py3Package,python3-ulid-transform))
$(eval $(call BuildPackage,python3-ulid-transform))
#$(eval $(call BuildPackage,python3-ulid-transform-src))
