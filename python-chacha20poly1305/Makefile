# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-chacha20poly1305
PKG_VERSION:=0.0.3
PKG_RELEASE:=1

PYPI_NAME:=chacha20poly1305
PKG_HASH:=f2f005c7cf4638ffa4ff06c02c78748068b642916795c6d16c7cc5e355e70edf

PKG_LICENSE:=LGPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-chacha20poly1305
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ChaCha20Poly1305
  URL:=https://github.com/bdraco/chacha20poly1305-reuseable
  DEPENDS:=+python3-light
endef

define Package/python3-chacha20poly1305/description
  Pure python ChaCha20Poly1305 implementation.
endef

$(eval $(call Py3Package,python3-chacha20poly1305))
$(eval $(call BuildPackage,python3-chacha20poly1305))
#$(eval $(call BuildPackage,python3-chacha20poly1305-src))
