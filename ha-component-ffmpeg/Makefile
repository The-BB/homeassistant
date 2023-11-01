# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-component-ffmpeg
PKG_VERSION:=$(shell grep ^PKG_VERSION ../homeassistant/Makefile | cut -d= -f2)
PKG_RELEASE:=1

PKG_SOURCE:=
PKG_SOURCE_URL:=
PKG_HASH:=unknown

include $(INCLUDE_DIR)/package.mk

define Package/ha-component-ffmpeg
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=FFmpeg
  URL:=https://www.home-assistant.io/integrations/ffmpeg
  PKG_DEFAULT_DEPENDS:=+python3-ha-ffmpeg
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/ha-component-ffmpeg/install
	true
endef

$(eval $(call BuildPackage,ha-component-ffmpeg))
