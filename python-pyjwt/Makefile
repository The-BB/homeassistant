# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyjwt
PKG_VERSION:=2.6.0
PKG_RELEASE:=2

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=PyJWT
PKG_HASH:=69285c7e31fc44f68a1feb309e948e0df53259d579295e6cfe2b1792329f05fd

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyjwt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JSON Web Token implementation in Python
  URL:=http://github.com/jpadilla/pyjwt
  DEPENDS:=+python3-urllib
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-pyjwt/description
  A Python implementation of RFC 7519.
endef

$(eval $(call Py3Package,python3-pyjwt))
$(eval $(call BuildPackage,python3-pyjwt))
#$(eval $(call BuildPackage,python3-pyjwt-src))