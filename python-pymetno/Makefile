# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymetno
PKG_VERSION:=0.9.0
PKG_RELEASE:=2

PYPI_NAME:=PyMetno
PKG_HASH:=9845a900577cea3803cb6002a1108bf1aab6c89fcff8d8fe46682351fb82a3ed

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pymetno
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library to communicate with the met.no api
  URL:=https://github.com/Danielhiversen/pyMetno
  DEPENDS:= \
	+python3-asyncio \
	+python3-aiohttp \
	+python3-async-timeout \
	+python3-logging \
	+python3-pytz \
	+python3-xmltodict
endef

define Package/python3-pymetno/description
  A library to communicate with the met.no api.
endef

$(eval $(call Py3Package,python3-pymetno))
$(eval $(call BuildPackage,python3-pymetno))
#$(eval $(call BuildPackage,python3-pymetno-src))
