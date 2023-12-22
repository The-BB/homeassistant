# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=radios
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PYPI_NAME:=radios
PKG_HASH:=617c8f3dfb5824fd268cfb9662967e76e4b7467285f4e22de90973296ca5bd10

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
	+python3-mashumaro \
	+python3-pycountry \
	+python3-yarl
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-orjson
endef

define Package/python3-radios/description
  Asynchronous Python client for the Radio Browser API.
endef

$(eval $(call Py3Package,python3-radios))
$(eval $(call BuildPackage,python3-radios))
#$(eval $(call BuildPackage,python3-radios-src))
