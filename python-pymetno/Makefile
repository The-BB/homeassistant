# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pymetno
PKG_VERSION:=0.11.0
PKG_RELEASE:=1

PYPI_NAME:=PyMetno
PKG_HASH:=94189a8572c92f3d22114ec26318250355408167529aeca2925545de73f81029

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
