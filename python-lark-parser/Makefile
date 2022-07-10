# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-lark-parser
PKG_VERSION:=0.7.8
PKG_RELEASE:=3

PYPI_NAME:=lark-parser
PKG_HASH:=26215ebb157e6fb2ee74319aa4445b9f3b7e456e26be215ce19fdaaa901c20a4

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-lark-parser
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a modern parsing library
  URL:=https://github.com/erezsh/lark
  DEPENDS:= \
	+python3-logging
endef

define Package/python3-lark-parser/description
  Lark is a parsing toolkit for Python, built with a focus on ergonomics,
  performance and modularity.
endef

$(eval $(call Py3Package,python3-lark-parser))
$(eval $(call BuildPackage,python3-lark-parser))
#$(eval $(call BuildPackage,python3-lark-parser-src))
