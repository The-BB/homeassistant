# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=anyio
PKG_VERSION:=4.0.0
PKG_RELEASE:=1

PYPI_NAME:=anyio
PKG_HASH:=f7ed51751b2c2add651e5747c891b47e26d2a21be5d32d9311dfe9692f3e5d7a

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-anyio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=high level asynchronous concurrency and networking framework
  URL:=https://github.com/aio-libs/anyio
  DEPENDS:= \
	+python3-asyncio \
	+python3-idna \
	+python3-logging \
	+python3-openssl \
	+python3-sniffio
endef

define Package/python3-anyio/description
  AnyIO is an asynchronous networking and concurrency library that works
  on top of either asyncio or trio. It implements trio-like structured
  concurrency (SC) on top of asyncio, and works in harmony with the native
  SC of trio itself..
endef

$(eval $(call Py3Package,python3-anyio))
$(eval $(call BuildPackage,python3-anyio))
#$(eval $(call BuildPackage,python3-anyio-src))
