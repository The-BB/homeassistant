# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-async-dns
PKG_VERSION:=1.1.9
PKG_RELEASE:=3

PYPI_NAME:=async_dns
PKG_HASH:=153ced1555e0b803a4fc1ca78d33e7e46202044b603c8a3825bfa591eb3c3c84

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-async-dns
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asynchronous DNS client and server
  URL:=https://github.com/gera2ld/async_dns
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-urllib
endef

define Package/python3-async-dns/description
   DNS library based on asyncio.
endef

$(eval $(call Py3Package,python3-async-dns))
$(eval $(call BuildPackage,python3-async-dns))
#$(eval $(call BuildPackage,python3-async-dns-src))
