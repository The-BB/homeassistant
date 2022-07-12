# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyhaversion
PKG_VERSION:=22.4.1
PKG_RELEASE:=1

PYPI_NAME:=pyhaversion
PKG_HASH:=99a23c640e6f7b5d759a53ece1544d07754528cfadf25cfebdde1861d39df22b

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
