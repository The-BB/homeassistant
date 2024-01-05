# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=home-assistant-intents
PKG_VERSION:=2024.1.2
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_intents
PKG_SOURCE:=$(PYPI_NAME)-$(PKG_VERSION)-py3-none-any.whl
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/77/ab/5e7d9de239e595221913bf7d3b6a395be6dbebbb1b5d65133aece617a74b
PKG_HASH:=10fdb16fe060e6a324098d5a8bab31477ea5e901a3052a297501d70242c931f3

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PYPI_NAME)-$(PKG_VERSION)

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-version.mk

define Package/python3-home-assistant-intents
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Intents for Home Assistant
  URL:=https://github.com/home-assistant/intents
  DEPENDS:=+python3-light
endef

define Package/python3-home-assistant-intents/description
  Intents to be used with Home Assistant.
endef

PYTHON3_PKG_DIR:=/opt/lib/python$(PYTHON3_VERSION)/site-packages

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)
endef

Build/Configure:=:
Build/Compile:=:

define Package/python3-home-assistant-intents/install
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)
	unzip $(DL_DIR)/$(PKG_SOURCE) -d $(1)$(PYTHON3_PKG_DIR)
endef

#$(eval $(call Py3Package,python3-home-assistant-intents))
$(eval $(call BuildPackage,python3-home-assistant-intents))
#$(eval $(call BuildPackage,python3-home-assistant-intents-src))
