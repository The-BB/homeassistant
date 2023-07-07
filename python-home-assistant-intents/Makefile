# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=home-assistant-intents
PKG_VERSION:=2023.6.28
PKG_RELEASE:=1

PYPI_NAME:=home-assistant-intents
PKG_HASH:=e3dd22b7dcfa6a7c1dc66c313b26c3eb6cb887a07a5691021666daf830b3b662

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
