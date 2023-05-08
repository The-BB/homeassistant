# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pysnmplib
PKG_VERSION:=5.0.21
PKG_RELEASE:=1

PYPI_NAME:=pysnmplib
PKG_HASH:=4fd3cfd47ab33c7b633996e28cd1486c04effcf9fc11621fb186eacc48a6134d

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pysnmplib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=SNMP library for Python
  URL:=https://github.com/pysnmp/pysnmp
  DEPENDS:= \
	+python3-asyncio \
	+python3-ctypes \
	+python3-logging \
	+python3-cryptodomex \
	+python3-pysnmp-pyasn1 \
	+python3-pysnmp-pysmi
endef

define Package/python3-pysnmplib/description
  This is a pure-Python, open source and free implementation of
  v1/v2c/v3 SNMP engine distributed under 2-clause BSD license.
endef

$(eval $(call Py3Package,python3-pysnmplib))
$(eval $(call BuildPackage,python3-pysnmplib))
#$(eval $(call BuildPackage,python3-pysnmplib-src))
