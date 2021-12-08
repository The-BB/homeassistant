# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-rfc3986
PKG_VERSION:=1.4.0
PKG_RELEASE:=2

PYPI_NAME:=rfc3986
PKG_HASH:=112398da31a3344dc25dbf477d8df6cb34f9278a94fee2625d89e4514be8bb9d

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-rfc3986
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Validating URI References per RFC 3986
  URL:=http://rfc3986.readthedocs.io
  DEPENDS:=+python3-idna
endef

define Package/python3-rfc3986/description
 A Python implementation of RFC 3986 including validation and authority parsing.
endef

$(eval $(call Py3Package,python3-rfc3986))
$(eval $(call BuildPackage,python3-rfc3986))
#$(eval $(call BuildPackage,python3-rfc3986-src))
