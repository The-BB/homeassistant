# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-libcst
PKG_VERSION:=0.3.23
PKG_RELEASE:=1

PYPI_NAME:=libcst
PKG_HASH:=330f9082a309bad808e283e80845a843200303bb256690185b98ca458a62c4f8

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-libcst
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Concrete Syntax Tree (CST) parser and serializer library
  URL:=https://github.com/Instagram/LibCST
  DEPENDS:= \
	+python3-typing-extensions \
	+python3-typing-inspect \
	+python3-yaml
endef

define Package/python3-libcst/description
  A concrete syntax tree parser and serializer library for Python that
  preserves many aspects of Python's abstract syntax tree.
endef

$(eval $(call Py3Package,python3-libcst))
$(eval $(call BuildPackage,python3-libcst))
#$(eval $(call BuildPackage,python3-libcst-src))
