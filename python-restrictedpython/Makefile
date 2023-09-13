# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=restrictedpython
PKG_VERSION:=6.2
PKG_RELEASE:=1

PYPI_NAME:=RestrictedPython
PKG_HASH:=db73eb7e3b39650f0d21d10cc8dda9c0e2986e621c94b0c5de32fb0dee3a08af

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
