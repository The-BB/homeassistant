# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-contextvars
PKG_VERSION:=2.4
PKG_RELEASE:=1

PYPI_NAME:=contextvars
PKG_HASH:=f38c908aaa59c14335eeea12abea5f443646216c4e29380d7bf34d2018e2c39e

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-contextvars
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=PEP 567 Backport
  URL:=http://github.com/MagicStack/contextvars
  DEPENDS:=+python3-immutables
endef

define Package/python3-contextvars/description
  This package implements a backport of Python 3.7 contextvars module 
  (see PEP 567) for Python 3.6.
endef

$(eval $(call Py3Package,python3-contextvars))
$(eval $(call BuildPackage,python3-contextvars))
#$(eval $(call BuildPackage,python3-contextvars-src))
