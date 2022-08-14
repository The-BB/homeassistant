# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-ge25519
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=ge25519
PKG_HASH:=cbd36fe7da4b5a4d64463646dc499a953df8323c7b44b6785a4bc9951acae4b2

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-ge25519
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=pure data structure for working with Ed25519
  URL:=https://github.com/nthparty/ge25519
  DEPENDS:= \
	+python3-fe25519 \
	+python3-pydoc
endef

define Package/python3-ge25519/description
  Pure Python data structure for working with Ed25519 (and Ristretto)
  group elements and operations.
endef

$(eval $(call Py3Package,python3-ge25519))
$(eval $(call BuildPackage,python3-ge25519))
#$(eval $(call BuildPackage,python3-ge25519-src))
