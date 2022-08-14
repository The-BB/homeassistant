# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-linkheader
PKG_VERSION:=0.4.3
PKG_RELEASE:=1

PYPI_NAME:=LinkHeader
PKG_HASH:=7fbbc35c0ba3fbbc530571db7e1c886e7db3d718b29b345848ac9686f21b50c3

PKG_LICENSE:=
PKG_LICENSE_FILES:=

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-linkheader
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Parse and format link headers
  URL:=http://bitbucket.org/asplake/link_header
  DEPENDS:= \
	+python3-urllib
endef

define Package/python3-linkheader/description
  Parse and format link headers according to RFC 5988 "Web Linking".
endef

# XXX error: option --single-version-externally-managed not recognized
PYTHON3_PKG_SETUP_ARGS:=

$(eval $(call Py3Package,python3-linkheader))
$(eval $(call BuildPackage,python3-linkheader))
#$(eval $(call BuildPackage,python3-linkheader-src))
