# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=graphviz
PKG_VERSION:=0.20
PKG_RELEASE:=2

PYPI_NAME:=graphviz
PKG_HASH:=76bdfb73f42e72564ffe9c7299482f9d72f8e6cb8d54bce7b48ab323755e9ba5

PKG_LICENSE:=MIT
PYPI_SOURCE_EXT:=zip
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-graphviz
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Simple Python interface for Graphviz
  URL:=https://github.com/xflr6/graphviz
  DEPENDS:=+python3-logging +python3-pydoc +python3-unittest
endef

define Package/python3-graphviz/description
   Simple Python interface for Graphviz.
endef

$(eval $(call Py3Package,python3-graphviz))
$(eval $(call BuildPackage,python3-graphviz))
#$(eval $(call BuildPackage,python3-graphviz-src))
