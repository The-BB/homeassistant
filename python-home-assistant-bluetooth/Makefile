# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=home-assistant-bluetooth
PKG_VERSION:=1.12.0
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_bluetooth
PKG_HASH:=9cac369fea11f67c1165df527f918a8c56630cbccb3c5cbe24b72f06aeb9f59b

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-home-assistant-bluetooth
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Home Assistant Bluetooth Models and Helpers
  URL:=https://github.com/home-assistant-libs/home-assistant-bluetooth
  DEPENDS:=+python3-bleak +python3-habluetooth
endef

define Package/python3-home-assistant-bluetooth/description
  Basic bluetooth models used by Home Assistant.
endef

$(eval $(call Py3Package,python3-home-assistant-bluetooth))
$(eval $(call BuildPackage,python3-home-assistant-bluetooth))
#$(eval $(call BuildPackage,python3-home-assistant-bluetooth-src))
