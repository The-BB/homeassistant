# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-upnp
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-upnp
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=UPnP/IGD
  URL:=https://www.home-assistant.io/integrations/upnp
  PKG_DEFAULT_DEPENDS:=+python3-async-upnp-client +python3-getmac
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-upnp/install
	true
endef

$(eval $(call BuildPackage,ha-component-upnp))
