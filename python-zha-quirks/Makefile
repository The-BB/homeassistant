# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zha-quirks
PKG_VERSION:=0.0.106
PKG_RELEASE:=1

PYPI_NAME:=zha-quirks
PKG_HASH:=a7efc739a908dbf941bb73b347ddfe0c836f878567ed5a6090a7d20082f14fb3

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
