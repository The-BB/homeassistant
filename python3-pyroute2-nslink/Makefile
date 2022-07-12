# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyroute2-nslink
PKG_VERSION:=0.6.13
PKG_RELEASE:=1

PYPI_NAME:=pyroute2.nslink
PKG_HASH:=86ed506cadccb154cd27aebb3dbf73ebb723c391104e7f0f3bc2c4a39c62366c

PKG_LICENSE:=Apache-2.0 GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.Apache.v2 LICENSE.GPL.v2

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyroute2-nslink
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Netlink library: NetNS, NSPopen...
  URL:=https://github.com/svinota/pyroute2
  DEPENDS:= \
	+python3-logging \
	+python3-pyroute2-core
endef

define Package/python3-pyroute2-nslink/description
  This module provides NetNS, NSPopen and RemoteSocket classes.
endef

$(eval $(call Py3Package,python3-pyroute2-nslink))
$(eval $(call BuildPackage,python3-pyroute2-nslink))
#$(eval $(call BuildPackage,python3-pyroute2-nslink-src))
