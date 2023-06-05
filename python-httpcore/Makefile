# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=httpcore
PKG_VERSION:=0.17.0
PKG_RELEASE:=2

PYPI_NAME:=httpcore
PKG_HASH:=cc045a3241afbf60ce056202301b4d8b6af08845e3294055eb26b09913ef903c

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-httpcore
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a minimal low-level HTTP client
  URL:=https://github.com/encode/httpcore
  DEPENDS:= \
	+python3-anyio \
	+python3-h11 \
	+python3-logging \
	+python3-openssl \
	+python3-certifi \
	+python3-sniffio \
	+python3-urllib
endef

define Package/python3-httpcore/description
  The HTTP Core package provides a minimal low-level HTTP client, which does one
  thing only. Sending HTTP requests.
endef

$(eval $(call Py3Package,python3-httpcore))
$(eval $(call BuildPackage,python3-httpcore))
#$(eval $(call BuildPackage,python3-httpcore-src))
