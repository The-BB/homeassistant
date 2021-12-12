# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-httpx
PKG_VERSION:=0.21.0
PKG_RELEASE:=1

PYPI_NAME:=httpx
PKG_HASH:=5ae1d9deb30fe074596551b3ab98f94dfd9d7efe3ecd2d08662a5c29f6fba0e4

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-httpx
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=the next generation HTTP client
  URL:=https://github.com/encode/httpx
  DEPENDS:= \
	+python3-certifi \
	+python3-charset-normalizer \
	+python3-httpcore \
	+python3-rfc3986 \
	+python3-sniffio
endef

define Package/python3-httpx/description
  HTTPX - A next-generation HTTP client for Python.
  .
  HTTPX is a fully featured HTTP client for Python 3, which provides sync and
  async APIs, and support for both HTTP/1.1 and HTTP/2.
endef

$(eval $(call Py3Package,python3-httpx))
$(eval $(call BuildPackage,python3-httpx))
#$(eval $(call BuildPackage,python3-httpx-src))
