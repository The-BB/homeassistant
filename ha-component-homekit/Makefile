# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-homekit
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-homekit
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=HomeKit Bridge
  URL:=https://www.home-assistant.io/integrations/homekit
  PKG_DEFAULT_DEPENDS:= \
	+python3-base36 \
	+python3-fnv-hash-fast \
	+python3-pyhap \
	+python3-pyqrcode
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-homekit/install
	true
endef

$(eval $(call BuildPackage,ha-component-homekit))
