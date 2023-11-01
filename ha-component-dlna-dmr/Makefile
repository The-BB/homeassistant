# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-dlna-dmr
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-dlna-dmr
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=DLNA Digital Media Renderer
  URL:=https://www.home-assistant.io/integrations/dlna_dmr
  PKG_DEFAULT_DEPENDS:=+python3-async-upnp-client +python3-getmac
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-dlna-dmr/install
	true
endef

$(eval $(call BuildPackage,ha-component-dlna-dmr))
