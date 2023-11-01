# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-dnsip
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-dnsip
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=DNS IP
  URL:=https://www.home-assistant.io/integrations/dnsip
  PKG_DEFAULT_DEPENDS:=+python3-aiodns
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-dnsip/install
	true
endef

$(eval $(call BuildPackage,ha-component-dnsip))
