# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=convertdate
PKG_VERSION:=2.4.0
PKG_RELEASE:=2

PYPI_NAME:=convertdate
PKG_HASH:=770c6b2195544d3e451e230b3f1c9b121ed02680b877f896306a04cf6f26b48f

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-convertdate
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Converts Gregorian dates
  URL:=https://github.com/fitnr/convertdate
  DEPENDS:=+python3-light +python3-pymeeus
endef

define Package/python3-convertdate/description
  Converts between Gregorian dates and other calendar systems.
endef

$(eval $(call Py3Package,python3-convertdate))
$(eval $(call BuildPackage,python3-convertdate))
#$(eval $(call BuildPackage,python3-convertdate-src))
