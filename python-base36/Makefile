# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=base36
PKG_VERSION:=0.1.1
PKG_RELEASE:=3

PYPI_NAME:=base36
PKG_HASH:=6f221783c5499bd5fd4a1102054df9638d6232ff5ca850c21fd1efe5070c1a96

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-base36
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=implementation for the positional numeral system using 36
  URL:=https://github.com/tonyseek/python-base36
  DEPENDS:=+python3-light
endef

define Package/python3-base36/description
  Yet another implementation for the positional numeral system using 36 as
  the radix.
endef

$(eval $(call Py3Package,python3-base36))
$(eval $(call BuildPackage,python3-base36))
#$(eval $(call BuildPackage,python3-base36-src))
