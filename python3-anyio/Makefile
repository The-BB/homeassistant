# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-anyio
PKG_VERSION:=3.5.0
PKG_RELEASE:=1

PYPI_NAME:=anyio
PKG_HASH:=a0aeffe2fb1fdf374a8e4b471444f0f3ac4fb9f5a5b542b48824475e0042a5a6

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

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
	+python3-idna \
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
