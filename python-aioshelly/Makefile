# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aioshelly
PKG_VERSION:=8.1.1
PKG_RELEASE:=1

PYPI_NAME:=aioshelly
PKG_HASH:=8a75cecc9aa910defbd2935b4fffec6007b7baf1b243f143a172c051b841b465

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aioshelly
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asynchronous library to control Shelly devices
  URL:=https://github.com/home-assistant-libs/aioshelly
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-aiohttp \
	+python3-bluetooth-data-tools \
	+python3-habluetooth \
	+python3-orjson \
	+python3-yarl
endef

define Package/python3-aioshelly/description
  Asynchronous library to control Shelly devices.
endef

$(eval $(call Py3Package,python3-aioshelly))
$(eval $(call BuildPackage,python3-aioshelly))
#$(eval $(call BuildPackage,python3-aioshelly-src))
