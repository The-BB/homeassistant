# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=chacha20poly1305-reuseable
PKG_VERSION:=0.0.4
PKG_RELEASE:=3

PYPI_NAME:=chacha20poly1305-reuseable
PKG_HASH:=bfb307f1db956c4fe80387a229641de37594b0381d6f4af49a5ea5fbf8ea3492

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-chacha20poly1305-reuseable
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ChaCha20Poly1305 that is reuseable for asyncio
  URL:=https://github.com/bdraco/chacha20poly1305-reuseable
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-chacha20poly1305-reuseable/description
  A reusable version of ChaCha20Poly1305 for use with cryptography and asyncio.
endef

$(eval $(call Py3Package,python3-chacha20poly1305-reuseable))
$(eval $(call BuildPackage,python3-chacha20poly1305-reuseable))
#$(eval $(call BuildPackage,python3-chacha20poly1305-reuseable-src))
