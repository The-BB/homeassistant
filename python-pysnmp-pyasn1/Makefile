# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pysnmp-pyasn1
PKG_VERSION:=1.1.3
PKG_RELEASE:=3

PYPI_NAME:=pysnmp-pyasn1
PKG_HASH:=fc559133ec6717e9d96dd4bd69c981310b23364dc2280a9b5f40f684fb6b4b8a

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pysnmp-pyasn1
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ASN.1 types and codecs
  URL:=https://github.com/pysnmp/pyasn1
  DEPENDS:=+python3-logging
  PROVIDES:=python3-pyasn1
endef

define Package/python3-pysnmp-pyasn1/description
  This is a free and open source implementation
  of ASN.1 types and codecs as a Python package.
endef

# XXX fix "check_data_file_clashes"
define Package/python3-pysnmp-pyasn1/install
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/* $(1)$(PYTHON3_PKG_DIR)
endef

$(eval $(call Py3Package,python3-pysnmp-pyasn1))
$(eval $(call BuildPackage,python3-pysnmp-pyasn1))
#$(eval $(call BuildPackage,python3-pysnmp-pyasn1-src))
