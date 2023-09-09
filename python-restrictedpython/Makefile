# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=restrictedpython
PKG_VERSION:=6.1
PKG_RELEASE:=1

PYPI_NAME:=RestrictedPython
PKG_HASH:=7e58ea15cc92a0b916e0c8ca295e8b2c6d40fee4d12e1a2b5063d86efc279a9c

PKG_LICENSE:=ZPL-2.1
PKG_LICENSE_FILES:=COPYRIGHT.txt LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-restrictedpython
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A restricted execution environment
  URL:=https://github.com/zopefoundation/RestrictedPython
  DEPENDS:=+python3-light
endef

define Package/python3-restrictedpython/description
  RestrictedPython is a defined subset of the Python language which
  allows to provide a program input into a trusted environment.
endef

$(eval $(call Py3Package,python3-restrictedpython))
$(eval $(call BuildPackage,python3-restrictedpython))
#$(eval $(call BuildPackage,python3-restrictedpython-src))
