# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=radios
PKG_VERSION:=0.1.1
PKG_RELEASE:=2

PYPI_NAME:=radios
PKG_HASH:=9ac0aaffc1476d47d6766b2adb35aea5039713aec6d20669ff008bffaa4d599e

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-radios
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Radio Browser API Client
  URL:=https://github.com/frenck/python-radios
  DEPENDS:= \
	+python3-aiodns \
	+python3-aiohttp \
	+python3-asyncio \
	+python3-awesomeversion \
	+python3-backoff \
	+python3-cachetools \
	+python3-pycountry \
	+python3-pydantic \
	+python3-yarl
endef

define Package/python3-radios/description
  Asynchronous Python client for the Radio Browser API.
endef

$(eval $(call Py3Package,python3-radios))
$(eval $(call BuildPackage,python3-radios))
#$(eval $(call BuildPackage,python3-radios-src))
