# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-version
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-version
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=Version
  URL:=https://www.home-assistant.io/integrations/version
  PKG_DEFAULT_DEPENDS:=+python3-pyhaversion
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-version/install
	true
endef

$(eval $(call BuildPackage,ha-component-version))
