# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=sense-energy
PKG_VERSION:=0.11.1
PKG_RELEASE:=2

PYPI_NAME:=sense_energy
PKG_HASH:=7357db170ecf10479d22f447cb7a34c4bc2eb6b41047a6a8171d33ccf685a138

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-sense-energy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Sense Energy Monitor API
  URL:=https://github.com/scottbonline/sense
  DEPENDS:= \
	+python3-aiohttp \
	+python3-asyncio \
	+python3-logging \
	+python3-openssl \
	+python3-requests \
	+python3-websocket-client \
	+python3-websockets
endef

define Package/python3-sense-energy/description
  Sense Energy Monitor API Interface.
endef

$(eval $(call Py3Package,python3-sense-energy))
$(eval $(call BuildPackage,python3-sense-energy))
#$(eval $(call BuildPackage,python3-sense-energy-src))
