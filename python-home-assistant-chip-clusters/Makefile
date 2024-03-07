# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=home-assistant-chip-clusters
PKG_VERSION:=2024.2.1
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_chip_clusters
PKG_SOURCE:=$(PYPI_NAME)-$(PKG_VERSION)-py3-none-any.whl
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/85/b6/faf06a3756e4e610cc8117a1ba3e4bb09f5182c360e4fa36d10c3db4e892/
PKG_HASH:=40cb1fb3d81459e6b3d4b7cc645e49d8e15508f9ee72466fbc5f71e5b439b996

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PYPI_NAME)-$(PKG_VERSION)

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-home-assistant-chip-clusters
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python-base APIs and tools for CHIP
  URL:=https://github.com/project-chip/connectedhomeip
  DEPENDS:=+python3-aenum +python3-dacite
endef

define Package/python3-home-assistant-chip-clusters/description
  Matter (formerly Project CHIP) creates more connections
  between more objects, simplifying development for manufacturers and increasing
  compatibility for consumers, guided by the Connectivity Standards Alliance.
endef

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/openwrt-build
	$(CP) $(DL_DIR)/$(PKG_SOURCE) $(PKG_BUILD_DIR)/openwrt-build
endef

Build/Compile:=:

$(eval $(call Py3Package,python3-home-assistant-chip-clusters))
$(eval $(call BuildPackage,python3-home-assistant-chip-clusters))
#$(eval $(call BuildPackage,python3-home-assistant-chip-clusters-src))
