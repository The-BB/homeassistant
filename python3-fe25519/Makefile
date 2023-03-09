# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-fe25519
PKG_VERSION:=1.3.0
PKG_RELEASE:=2

PYPI_NAME:=fe25519
PKG_HASH:=fe0ad70225844437930968059cd0b53a4f03e48f4c065c1dd79d354d6d322b97

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-fe25519
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=pure data structure for working with Ed25519
  URL:=https://github.com/nthparty/fe25519
  DEPENDS:= \
	+python3-pydoc
endef

define Package/python3-fe25519/description
  Pure Python data structure for working with Ed25519 (and Ristretto)
  field elements and operations.
endef

$(eval $(call Py3Package,python3-fe25519))
$(eval $(call BuildPackage,python3-fe25519))
#$(eval $(call BuildPackage,python3-fe25519-src))
