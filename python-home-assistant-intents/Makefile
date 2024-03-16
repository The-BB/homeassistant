# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=home-assistant-intents
PKG_VERSION:=2024.3.12
PKG_RELEASE:=1

PYPI_NAME:=home-assistant-intents
PKG_HASH:=f68327e6880772ea290275e0013bbdc6504104c79627d453e42fffc49e453812

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-home-assistant-intents
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Intents for Home Assistant
  URL:=https://github.com/home-assistant/intents
  DEPENDS:=+python3-light
endef

define Package/python3-home-assistant-intents/description
  Intents to be used with Home Assistant.
endef

$(eval $(call Py3Package,python3-home-assistant-intents))
$(eval $(call BuildPackage,python3-home-assistant-intents))
#$(eval $(call BuildPackage,python3-home-assistant-intents-src))
