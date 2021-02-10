# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-requires
PKG_VERSION:=0.4.1
PKG_RELEASE:=1

PYPI_NAME:=requires
PKG_HASH:=7ba02fd34a12bb3e163303031fc68822eb18d71321c4be1a83976b8ec37ec184

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-requires
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=require and import dependencies at runtime
  URL:=https://github.com/dynamic-graphics-inc/dgpy-libs
  DEPENDS:=+python3-light
endef

define Package/python3-requires/description
  Require and import dependencies at runtime.
endef

$(eval $(call Py3Package,python3-requires))
$(eval $(call BuildPackage,python3-requires))
$(eval $(call BuildPackage,python3-requires-src))
