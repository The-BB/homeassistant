# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-mypy-extensions
PKG_VERSION:=0.4.3
PKG_RELEASE:=1

PYPI_NAME:=mypy_extensions
PKG_HASH:=2d82818f5bb3e369420cb3c4060a7970edba416647068eb4c5343488a6c604a8

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-mypy-extensions
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Experimental type system extensions
  URL:=https://github.com/python/mypy_extensions
  DEPENDS:= \
	+python3-light
endef

define Package/python3-mypy-extensions/description
  The "mypy_extensions" module defines experimental extensions to the
  standard "typing" module that are supported by the mypy typechecker.
endef

$(eval $(call Py3Package,python3-mypy-extensions))
$(eval $(call BuildPackage,python3-mypy-extensions))
#$(eval $(call BuildPackage,python3-mypy-extensions-src))
