# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=httpcore
PKG_VERSION:=1.0.4
PKG_RELEASE:=1

PYPI_NAME:=httpcore
PKG_HASH:=cb2839ccfcba0d2d3c1131d3c3e26dfc327326fbe7a5dc0dbfe9f6c9151bb022

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host

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
	+python3-certifi \
	+python3-h11 \
	+python3-logging \
	+python3-openssl \
	+python3-urllib
endef

define Package/python3-httpcore/description
  The HTTP Core package provides a minimal low-level HTTP client, which does one
  thing only. Sending HTTP requests.
endef

$(eval $(call Py3Package,python3-httpcore))
$(eval $(call BuildPackage,python3-httpcore))
#$(eval $(call BuildPackage,python3-httpcore-src))
