# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=hijri-converter
PKG_VERSION:=2.2.4
PKG_RELEASE:=2

PYPI_NAME:=hijri-converter
PKG_HASH:=9e1d9fa4c220f6867da2abb1a96240675ae974abba951c686a781f4ef6ac218f

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-hijri-converter
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Hijri-Gregorian dates converter
  URL:=https://github.com/mhalshehri/hijri-converter
  DEPENDS:=+python3-light
endef

define Package/python3-hijri-converter/description
  A Python package to convert accurately between Hijri and Gregorian dates
  using the Umm al-Qura calendar.
endef

$(eval $(call Py3Package,python3-hijri-converter))
$(eval $(call BuildPackage,python3-hijri-converter))
#$(eval $(call BuildPackage,python3-hijri-converter-src))
