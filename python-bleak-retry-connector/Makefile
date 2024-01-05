# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bleak-retry-connector
PKG_VERSION:=3.4.0
PKG_RELEASE:=1

PYPI_NAME:=bleak_retry_connector
PKG_HASH:=71f30928180b74f0381e0752f681d18d8de888faa9c81c78cd17123718909ea0

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bleak-retry-connector
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A connector for Bleak Clients
  URL:=https://github.com/bluetooth-devices/bleak-retry-connector
  DEPENDS:= \
	+python3-asyncio \
	+python3-bleak \
	+python3-bluetooth-adapters \
	+python3-dbus-fast \
	+python3-logging
endef

define Package/python3-bleak-retry-connector/description
  A connector for Bleak Clients that handles transient connection failures.
endef

$(eval $(call Py3Package,python3-bleak-retry-connector))
$(eval $(call BuildPackage,python3-bleak-retry-connector))
#$(eval $(call BuildPackage,python3-bleak-retry-connector-src))
