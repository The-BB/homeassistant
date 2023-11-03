# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=httpx
PKG_VERSION:=0.25.0
PKG_RELEASE:=1

PYPI_NAME:=httpx
PKG_HASH:=47ecda285389cb32bb2691cc6e069e3ab0205956f681c5b2ad2325719751d875

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host

define Package/python3-httpx
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=the next generation HTTP client
  URL:=https://github.com/encode/httpx
  DEPENDS:= \
	+python3-asyncio \
	+python3-brotli \
	+python3-certifi \
	+python3-cgi \
	+python3-email \
	+python3-httpcore \
	+python3-logging \
	+python3-openssl \
	+python3-rfc3986 \
	+python3-sniffio \
	+python3-urllib
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
