# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-ulid-transform
PKG_VERSION:=0.6.3
PKG_RELEASE:=1

PYPI_NAME:=ulid_transform
PKG_HASH:=8914b5a753b98e6eaef671dbb1625eb7439732ebb5be9846bff1e7be5d025973

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-ulid-transform
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Create and transform ULIDs
  URL:=https://github.com/bdraco/ulid-transform
  DEPENDS:= \
	+libstdcpp \
	+python3-distutils
endef

define Package/python3-ulid-transform/description
  Fast ULID transformations.
endef

$(eval $(call Py3Package,python3-ulid-transform))
$(eval $(call BuildPackage,python3-ulid-transform))
#$(eval $(call BuildPackage,python3-ulid-transform-src))
