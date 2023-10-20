# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=home-assistant-frontend
PKG_VERSION:=20231002.0
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_frontend

PKG_SOURCE:=$(PYPI_NAME)-$(PKG_VERSION)-py3-none-any.whl
PKG_SOURCE_URL:=https://github.com/home-assistant/frontend/releases/download/$(PKG_VERSION)
PKG_HASH:=d7d1c532e47b20d1ccf34e47c16c964b6a965cf398b858e7a5fd143fdded39b8

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PYPI_NAME)-$(PKG_VERSION)

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-version.mk

define Package/home-assistant-frontend
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=The Home Assistant frontend
  URL:=https://github.com/home-assistant/frontend
endef

define Package/home-assistant-frontend/description
  Frontend for Home Assistant.
endef

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)
endef

Build/Configure:=:
Build/Compile:=:

FRONTEND_DIR=/opt/var/lib/homeassistant/deps/lib/python$(PYTHON3_VERSION)/site-packages

define Package/home-assistant-frontend/install
	$(INSTALL_DIR) $(1)$(FRONTEND_DIR)
	unzip $(DL_DIR)/$(PYPI_NAME)-$(PKG_VERSION)-*.whl -d $(1)$(FRONTEND_DIR)
	# Installed-Size: 50379783 => 38063414 (rm map) => 18679784 (+ rm gz)
	# size (du (-h)): 146180 (143M) => 108312 (106M) => 85328 (84M)
	# total files (find . -type f | wc -l): 6855 => 5578 => 3106
	$(FIND) $(1)$(FRONTEND_DIR) -type f -iname "*.gz" -delete
	$(SED) '/\.gz,sha/d' $(1)$(FRONTEND_DIR)/$(PYPI_NAME)-$(PKG_VERSION)*/RECORD
	$(FIND) $(1)$(FRONTEND_DIR) -type f -iname "*.map" -delete
	$(SED) '/\.map,sha/d' $(1)$(FRONTEND_DIR)/$(PYPI_NAME)-$(PKG_VERSION)*/RECORD
endef

define Package/home-assistant-frontend/preinst
#!/bin/sh

DIR="/opt/var/lib/homeassistant/deps/lib/python$(PYTHON3_VERSION)/site-packages"

[ ! -d "$$DIR/hass_frontend" ] || rm -rf $$DIR/hass_frontend || true
[ ! -d "$$DIR/$(PYPI_NAME)"* ] || rm -rf $$DIR/$(PYPI_NAME)-* || true
endef

define Package/home-assistant-frontend/postrm
#!/bin/sh

rm -rf $(FRONTEND_DIR)/hass_frontend
rm -rf $(FRONTEND_DIR)/$(PYPI_NAME)-$(PKG_VERSION).dist-info
endef

$(eval $(call BuildPackage,home-assistant-frontend))
