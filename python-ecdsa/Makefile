# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-ecdsa
PKG_VERSION:=0.16.0
PKG_RELEASE:=2

PYPI_NAME:=ecdsa
PKG_HASH:=494c6a853e9ed2e9be33d160b41d47afc50a6629b993d2b9c5ad7bb226add892

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-ecdsa
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ECDSA cryptographic signature library
  URL:=http://github.com/warner/python-ecdsa
  DEPENDS:=+python3-six
endef

define Package/python3-ecdsa/description
  ECDSA cryptographic signature library (pure python).
endef

$(eval $(call Py3Package,python3-ecdsa))
$(eval $(call BuildPackage,python3-ecdsa))
#$(eval $(call BuildPackage,python3-ecdsa-src))
