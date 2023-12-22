# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-esphome
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-esphome
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=ESPHome
  URL:=https://www.home-assistant.io/integrations/esphome
  PKG_DEFAULT_DEPENDS:= \
	+python3-base36 \
	+python3-aioesphomeapi \
	+python3-bluetooth-data-tools \
	+python3-esphome-dashboard-api
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-esphome/install
	true
endef

$(eval $(call BuildPackage,ha-component-esphome))
