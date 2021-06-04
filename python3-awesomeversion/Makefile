# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-awesomeversion
PKG_VERSION:=21.4.0
PKG_RELEASE:=1

PYPI_NAME:=awesomeversion
PKG_HASH:=0bf85034f3f03d52d45f661206a1f0f6f187f08762835d7b703954995bfe2eb0

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
