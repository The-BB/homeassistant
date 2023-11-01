# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-zha
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-zha
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=Zigbee Home Automation
  URL:=https://www.home-assistant.io/integrations/zha
  PKG_DEFAULT_DEPENDS:= \
	+python3-bellows \
	+python3-pyserial \
	+python3-pyserial-asyncio \
	+python3-pyserial-asyncio-fast \
	+python3-universal-silabs-flasher \
	+python3-zha-quirks \
	+python3-zigpy \
	+python3-zigpy-deconz \
	+python3-zigpy-xbee \
	+python3-zigpy-zigate \
	+python3-zigpy-znp
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-zha/install
	true
endef

$(eval $(call BuildPackage,ha-component-zha))
