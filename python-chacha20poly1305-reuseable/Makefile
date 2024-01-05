# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=chacha20poly1305-reuseable
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PYPI_NAME:=chacha20poly1305_reuseable
PKG_HASH:=238a1d5af6473a8ed249e6ddad327190b3567a673ad54766c9cb2da5c78a4c9b

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
  DEPENDS:=+libpython3
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-chacha20poly1305-reuseable/description
  A reusable version of ChaCha20Poly1305 for use with cryptography and asyncio.
endef

$(eval $(call Py3Package,python3-chacha20poly1305-reuseable))
$(eval $(call BuildPackage,python3-chacha20poly1305-reuseable))
#$(eval $(call BuildPackage,python3-chacha20poly1305-reuseable-src))
