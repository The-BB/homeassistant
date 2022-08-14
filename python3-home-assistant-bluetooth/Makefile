# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-home-assistant-bluetooth
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=home-assistant-bluetooth
PKG_HASH:=da9fd3ba1e2231f69540f45d85636c2250a8fbe1ff74de216f9917a6afbe6d8b

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-home-assistant-bluetooth
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Home Assistant Bluetooth Models and Helpers
  URL:=https://github.com/home-assistant-libs/home-assistant-bluetooth
  DEPENDS:= \
	+python3-bleak
endef

define Package/python3-home-assistant-bluetooth/description
  Basic bluetooth models used by Home Assistant.
endef

$(eval $(call Py3Package,python3-home-assistant-bluetooth))
$(eval $(call BuildPackage,python3-home-assistant-bluetooth))
#$(eval $(call BuildPackage,python3-home-assistant-bluetooth-src))
