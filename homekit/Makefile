# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=homekit
PKG_VERSION:=0.0.1
PKG_RELEASE:=8

include $(INCLUDE_DIR)/package.mk

define Package/homekit
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HomeKit (metapackage)
  URL:=https://www.home-assistant.io/integrations/homekit
  PKG_DEFAULT_DEPENDS:= \
	+python3-aiohomekit \
	+python3-base36 \
	+python3-fnvhash \
	+python3-ha-ffmpeg \
	+python3-pyhap \
	+python3-pyqrcode \
	+python3-pyturbojpeg
endef

define Package/homekit/description
  Metapackage of integration HomeKit.
endef

Build/Prepare:=:
Build/Configure:=:
Build/Compile:=:

define Package/homekit/install
	true
endef

$(eval $(call BuildPackage,homekit))
