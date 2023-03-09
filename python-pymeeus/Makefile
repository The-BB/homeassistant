# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymeeus
PKG_VERSION:=0.5.11
PKG_RELEASE:=2

PYPI_NAME:=PyMeeus
PKG_HASH:=bb9d670818d8b0594317b48a7dadea02a0594e5344263bf2054e1a011c8fed55

PKG_LICENSE:=GPL-3.0-or-later LGPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING.LESSER LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pymeeus
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library of astronomical algorithms
  URL:=https://github.com/architest/pymeeus
  DEPENDS:= \
	+python3-light
endef

define Package/python3-pymeeus/description
   Python implementation of Jean Meeus astronomical routines.
endef

$(eval $(call Py3Package,python3-pymeeus))
$(eval $(call BuildPackage,python3-pymeeus))
#$(eval $(call BuildPackage,python3-pymeeus-src))
