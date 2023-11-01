# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-profiler
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-profiler
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=Profiler
  URL:=https://www.home-assistant.io/integrations/profiler
  PKG_DEFAULT_DEPENDS:=+python3-guppy3 +python3-objgraph +python3-pyprof2calltree
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-profiler/install
	true
endef

$(eval $(call BuildPackage,ha-component-profiler))
