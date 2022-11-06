# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-home-assistant-bluetooth
PKG_VERSION:=1.6.0
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_bluetooth
PKG_HASH:=82487a7e6bdcf59a703def06b1659c9d7ed1bd8d8742129f5bc198d00360c8c7

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
