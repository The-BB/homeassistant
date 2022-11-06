# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-bleak-retry-connector
PKG_VERSION:=2.8.2
PKG_RELEASE:=1

PYPI_NAME:=bleak_retry_connector
PKG_HASH:=f0692620c5ace3d05b05c8ae0c156fb2bfece0a3c20c7fb2156295e5f48a570b

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

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
	+python3-async-timeout \
	+python3-bleak \
	+python3-dbus-fast \
	+python3-logging
endef

define Package/python3-bleak-retry-connector/description
  A connector for Bleak Clients that handles transient connection failures.
endef

$(eval $(call Py3Package,python3-bleak-retry-connector))
$(eval $(call BuildPackage,python3-bleak-retry-connector))
#$(eval $(call BuildPackage,python3-bleak-retry-connector-src))
