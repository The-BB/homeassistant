# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyudev
PKG_VERSION:=0.23.2
PKG_RELEASE:=1

PYPI_NAME:=pyudev
PKG_HASH:=32ae3585b320a51bc283e0a04000fd8a25599edb44541e2f5034f6afee5d15cc

PKG_LICENSE:=LGPL-2.1-or-later
PKG_LICENSE_FILES:=COPYING

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyudev
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A libudev binding
  URL:=http://pyudev.readthedocs.org/
  DEPENDS:= \
	+libudev \
	+python3-ctypes \
	+python3-six
endef

define Package/python3-pyudev/description
  Python bindings to libudev (with support for PyQt4, PySide, pygobject and wx).
endef

$(eval $(call Py3Package,python3-pyudev))
$(eval $(call BuildPackage,python3-pyudev))
#$(eval $(call BuildPackage,python3-pyudev-src))
