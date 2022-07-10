# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-authlib
PKG_VERSION:=0.15.5
PKG_RELEASE:=2

PYPI_NAME:=Authlib
PKG_HASH:=b83cf6360c8e92b0e9df0d1f32d675790bcc4e3c03977499b1eed24dcdef4252

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-authlib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a library in building OAuth, OpenID Connect clients and servers
  URL:=https://authlib.org
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-urllib
# [client]
  DEPENDS+= \
	+python3-requests
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-authlib/description
  The ultimate Python library in building OAuth and OpenID Connect servers.
  JWS, JWK, JWA, JWT are included.
endef

$(eval $(call Py3Package,python3-authlib))
$(eval $(call BuildPackage,python3-authlib))
#$(eval $(call BuildPackage,python3-authlib-src))
