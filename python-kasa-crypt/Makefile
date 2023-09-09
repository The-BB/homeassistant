# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=kasa-crypt
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=kasa_crypt
PKG_HASH:=80c866a1f5d4ad419fcd454b2343a6ecfff8814195ab2caf108941971150ccd8

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-kasa-crypt
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Fast kasa crypt
  URL:=https://github.com/bdraco/kasa-crypt
  DEPENDS:=+python3-distutils
endef

define Package/python3-kasa-crypt/description
  Fast kasa crypt.
endef

$(eval $(call Py3Package,python3-kasa-crypt))
$(eval $(call BuildPackage,python3-kasa-crypt))
#$(eval $(call BuildPackage,python3-kasa-crypt-src))
