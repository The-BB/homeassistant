# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=home-assistant-frontend
PKG_VERSION:=20240103.3
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_frontend
PKG_SOURCE:=$(PYPI_NAME)-$(PKG_VERSION)-py3-none-any.whl
PKG_SOURCE_URL:=https://github.com/home-assistant/frontend/releases/download/$(PKG_VERSION)
PKG_HASH:=c426001a283cb0a6476b6231f97851df7c5c28fb9cc2f4058a4b988d7a6accd3

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PYPI_NAME)-$(PKG_VERSION)

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-version.mk

define Package/home-assistant-frontend
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Home Assistant Integrations
  TITLE:=The Home Assistant frontend
  URL:=https://github.com/home-assistant/frontend
endef

define Package/home-assistant-frontend/description
  Frontend for Home Assistant.
endef

PYTHON3_PKG_DIR:=/opt/lib/python$(PYTHON3_VERSION)/site-packages

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)
endef

Build/Configure:=:
Build/Compile:=:

define Package/home-assistant-frontend/install
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)
	unzip $(DL_DIR)/$(PKG_SOURCE) -d $(1)$(PYTHON3_PKG_DIR)
	# Installed-Size: 50379783 => 38063414 (rm map) => 18679784 (+ rm gz)
	# size (du (-h)): 146180 (143M) => 108312 (106M) => 85328 (84M)
	# total files (find . -type f | wc -l): 6855 => 5578 => 3106
	$(FIND) $(1)$(PYTHON3_PKG_DIR) -type f -iname "*.gz" -delete
	$(SED) '/\.gz,sha/d' \
		$(1)$(PYTHON3_PKG_DIR)/$(PYPI_NAME)-$(PKG_VERSION)*/RECORD
	$(FIND) $(1)$(PYTHON3_PKG_DIR) -type f -iname "*.map" -delete
	$(SED) '/\.map,sha/d' \
		$(1)$(PYTHON3_PKG_DIR)/$(PYPI_NAME)-$(PKG_VERSION)*/RECORD
endef

define Package/home-assistant-frontend/postinst
#!/bin/sh

### speedup upgrade
echo "$(PYTHON3_PKG_DIR)/hass_frontend/py.typed" > /opt/lib/opkg/info/$(PKG_NAME).list
endef

define Package/home-assistant-frontend/postrm
#!/bin/sh

rm -rf $(PYTHON3_PKG_DIR)/hass_frontend
rm -rf $(PYTHON3_PKG_DIR)/$(PYPI_NAME)-$(PKG_VERSION).dist-info
endef

$(eval $(call BuildPackage,home-assistant-frontend))
