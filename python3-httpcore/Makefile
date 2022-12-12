# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-httpcore
PKG_VERSION:=0.16.2
PKG_RELEASE:=1

PYPI_NAME:=httpcore
PKG_HASH:=c35c5176dc82db732acfd90b581a3062c999a72305df30c0fc8fafd8e4aca068

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
