# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-folder-watcher
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-folder-watcher
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=Folder Watcher
  URL:=https://www.home-assistant.io/integrations/folder_watcher
  PKG_DEFAULT_DEPENDS:=+python3-watchdog
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-folder-watcher/install
	true
endef

$(eval $(call BuildPackage,ha-component-folder-watcher))
