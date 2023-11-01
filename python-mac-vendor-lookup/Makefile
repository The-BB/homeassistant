# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=mac-vendor-lookup
PKG_VERSION:=0.1.12
PKG_RELEASE:=3

PYPI_NAME:=mac_vendor_lookup
PYPI_SOURCE_NAME:=mac_vendor_lookup
#PKG_HASH:=skip

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=90dbea48f8a9d567b5f9039ebd151ddfe7d12a19
PKG_SOURCE_URL:=https://github.com/bauerj/mac_vendor_lookup
PKG_MIRROR_HASH:=d0390e3367b88d0ac8464d803397743196453df2e5cda668babb6f4beb2770a3

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PKG_NAME)-$(PKG_VERSION)

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

#include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

PKG_UNPACK:=$(TAR) -C $(PKG_BUILD_DIR) --strip-components 1 -xJf $(DL_DIR)/$(PKG_SOURCE)

define Package/python3-mac-vendor-lookup
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Find the vendor for a given MAC address
  URL:=https://github.com/bauerj/mac_vendor_lookup
  DEPENDS:=+python3-aiofiles +python3-aiohttp +python3-asyncio +python3-logging
endef

define Package/python3-mac-vendor-lookup/description
  This library provides an easy way to get
  vendor information from a MAC address.
endef

define Py3Package/python3-mac-vendor-lookup/install
	$(INSTALL_DIR) $(1)/opt/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/opt/bin/mac_vendor_lookup $(1)/opt/bin
	$(INSTALL_DIR) $(1)/opt/var/cache
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/opt/var/cache/*.txt $(1)/opt/var/cache
endef

#define Package/python3-mac-vendor-lookup/postinst
##!/bin/sh
#
#exec python3 -c "from mac_vendor_lookup import MacLookup; MacLookup().update_vendors()" &
#endef

$(eval $(call Py3Package,python3-mac-vendor-lookup))
$(eval $(call BuildPackage,python3-mac-vendor-lookup))
#$(eval $(call BuildPackage,python3-mac-vendor-lookup-src))
