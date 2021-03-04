# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-typing-extensions
PKG_VERSION:=3.7.4.3
PKG_RELEASE:=1

PYPI_NAME:=typing_extensions
PKG_HASH:=99d4073b617d30288f569d3f13d2bd7548c3a7e4c8de87db09a9d29bb3a4a60c

PKG_LICENSE:=PSF
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-typing-extensions
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Backported and Experimental Type Hints
  URL:=https://github.com/python/typing/tree/master/typing_extensions
  DEPENDS:=+python3-light
endef

define Package/python3-typing-extensions/description
  Typing Extensions – Backported and Experimental Type Hints for Python.
endef

$(eval $(call Py3Package,python3-typing-extensions))
$(eval $(call BuildPackage,python3-typing-extensions))
$(eval $(call BuildPackage,python3-typing-extensions-src))
