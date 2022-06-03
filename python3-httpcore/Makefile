# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-httpcore
PKG_VERSION:=0.15.0
PKG_RELEASE:=1

PYPI_NAME:=httpcore
PKG_HASH:=18b68ab86a3ccf3e7dc0f43598eaddcf472b602aba29f9aa6ab85fe2ada3980b

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
	+python3-h11 \
	+python3-sniffio
endef

define Package/python3-httpcore/description
  The HTTP Core package provides a minimal low-level HTTP client, which does one
  thing only. Sending HTTP requests.
endef

$(eval $(call Py3Package,python3-httpcore))
$(eval $(call BuildPackage,python3-httpcore))
#$(eval $(call BuildPackage,python3-httpcore-src))
