# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-sense
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-sense
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=Sense
  URL:=https://www.home-assistant.io/integrations/sense
  PKG_DEFAULT_DEPENDS:=+python3-sense-energy
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-sense/install
	true
endef

$(eval $(call BuildPackage,ha-component-sense))
