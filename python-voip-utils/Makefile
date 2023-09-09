# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=voip-utils
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PYPI_NAME:=voip-utils
PKG_HASH:=8a2d81fefac97a227e7dec9239952815bbe8b5291bd3a3f7de39aa38a5b21ba2

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-voip-utils
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Voice over IP Utilities
  URL:=https://github.com/home-assistant-libs/voip-utils
  DEPENDS:=+python3-asyncio +python3-logging +python3-opuslib
endef

define Package/python3-voip-utils/description
  Voice over IP utilities for the voip integration.
endef

$(eval $(call Py3Package,python3-voip-utils))
$(eval $(call BuildPackage,python3-voip-utils))
#$(eval $(call BuildPackage,python3-voip-utils-src))
