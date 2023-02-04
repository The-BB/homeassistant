# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-antlr4-python3-runtime
PKG_VERSION:=4.11.1
PKG_RELEASE:=1

PYPI_NAME:=antlr4-python3-runtime
PKG_HASH:=a53de701312f9bdacc5258a6872cd6c62b90d3a90ae25e494026f76267333b60

PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-antlr4-python3-runtime
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ANTLR 4.11.1 runtime
  URL:=http://www.antlr.org/
  DEPENDS:= \
	+python3-light
endef

define Package/python3-antlr4-python3-runtime/description
  ANTLR (ANother Tool for Language Recognition) is a powerful
  parser generator for reading, processing, executing, or
  translating structured text or binary files.
endef

$(eval $(call Py3Package,python3-antlr4-python3-runtime))
$(eval $(call BuildPackage,python3-antlr4-python3-runtime))
#$(eval $(call BuildPackage,python3-antlr4-python3-runtime-src))
