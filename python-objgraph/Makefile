# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=objgraph
PKG_VERSION:=3.5.0
PKG_RELEASE:=2

PYPI_NAME:=objgraph
PKG_HASH:=4752ca5bcc0e0512e41b8cc4d2780ac2fd3b3eabd03b7e950a5594c06203dfc4

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-objgraph
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Visually explore Python object graphs
  URL:=https://mg.pov.lt/objgraph/
  DEPENDS:=+python3-graphviz +python3-pydoc +python3-unittest
endef

define Package/python3-objgraph/description
  objgraph is a module that lets you visually explore Python object graphs.
endef

$(eval $(call Py3Package,python3-objgraph))
$(eval $(call BuildPackage,python3-objgraph))
#$(eval $(call BuildPackage,python3-objgraph-src))
