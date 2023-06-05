# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyhaversion
PKG_VERSION:=22.8.0
PKG_RELEASE:=2

PYPI_NAME:=pyhaversion
PKG_HASH:=7ff95ef1165ecd950dacb32b5627709fc4af7c7db780a2a479c9db6c9f6779fd

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyhaversion
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Get the latest HA version from various sources
  URL:=https://github.com/ludeeus/pyhaversion
  DEPENDS:= \
	+python3-aiohttp \
	+python3-asyncio \
	+python3-awesomeversion \
	+python3-logging
endef

define Package/python3-pyhaversion/description
  Get the latest Home Assistant version from various sources.
endef

$(eval $(call Py3Package,python3-pyhaversion))
$(eval $(call BuildPackage,python3-pyhaversion))
#$(eval $(call BuildPackage,python3-pyhaversion-src))
