# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-awesomeversion
PKG_VERSION:=21.2.3
PKG_RELEASE:=1

PYPI_NAME:=awesomeversion
PKG_HASH:=40e7b258b279b618cacc277b2d85e61c564088f4f9c7e71bb0ecb7d779bed16c

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-awesomeversion
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=AwesomeVersion
  URL:=https://github.com/ludeeus/awesomeversion
  DEPENDS:=+python3-light
endef

define Package/python3-awesomeversion/description
  One version package to rule them all, One version package to find them,
  One version package to bring them all, and in the darkness bind them.
endef

$(eval $(call Py3Package,python3-awesomeversion))
$(eval $(call BuildPackage,python3-awesomeversion))
$(eval $(call BuildPackage,python3-awesomeversion-src))
