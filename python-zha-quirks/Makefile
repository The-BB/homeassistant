# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zha-quirks
PKG_VERSION:=0.0.112
PKG_RELEASE:=1

PYPI_NAME:=zha-quirks
PKG_HASH:=719fe19cdfa4ab9f7e13c9c0fe3e7d4f216deea4e7f245dfd111f028b1d480b7

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-zha-quirks
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library implementing Zigpy quirks for ZHA
  URL:=https://github.com/zigpy/zha-device-handlers
  DEPENDS:=+python3-asyncio +python3-logging +python3-zigpy
endef

define Package/python3-zha-quirks/description
  ZHA Device Handlers are custom quirks implementations
  for Zigpy, the library that provides the Zigbee support
  for the ZHA component in Home Assistant.
endef

$(eval $(call Py3Package,python3-zha-quirks))
$(eval $(call BuildPackage,python3-zha-quirks))
#$(eval $(call BuildPackage,python3-zha-quirks-src))
