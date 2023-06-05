# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pysnmp-pysmi
PKG_VERSION:=1.1.10
PKG_RELEASE:=2

PYPI_NAME:=pysnmp-pysmi
PKG_HASH:=0149c5772e6151f6286f546058da3e1203771d46c9b8b53b568bf1c44267506f

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pysnmp-pysmi
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=SNMP MIB parser
  URL:=https://github.com/pysnmp/pysmi
  DEPENDS:=+python3-logging +python3-urllib +python3-ply +python3-requests
endef

define Package/python3-pysnmp-pysmi/description
  PySMI is a pure-Python implementation of SNMP SMI MIB parser.
endef

$(eval $(call Py3Package,python3-pysnmp-pysmi))
$(eval $(call BuildPackage,python3-pysnmp-pysmi))
#$(eval $(call BuildPackage,python3-pysnmp-pysmi-src))
