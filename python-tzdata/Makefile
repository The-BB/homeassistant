# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=tzdata
PKG_VERSION:=2023.4
PKG_RELEASE:=1

PYPI_NAME:=tzdata
PKG_HASH:=dd54c94f294765522c77399649b4fefd95522479a664a0cec87f41bebc6148c9

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=licenses/LICENSE_APACHE LICENSE

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-tzdata
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Provider of IANA time zone data
  URL:=https://github.com/python/tzdata
  DEPENDS:=+python3-light
endef

define Package/python3-tzdata/description
  Python package wrapping the IANA time zone database.
endef

$(eval $(call Py3Package,python3-tzdata))
$(eval $(call BuildPackage,python3-tzdata))
#$(eval $(call BuildPackage,python3-tzdata-src))
