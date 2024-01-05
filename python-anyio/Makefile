# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=anyio
PKG_VERSION:=4.1.0
PKG_RELEASE:=1

PYPI_NAME:=anyio
PKG_HASH:=5a0bec7085176715be77df87fc66d6c9d70626bd752fcc85f57cdbee5b3760da

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
