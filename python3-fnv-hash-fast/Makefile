# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-fnv-hash-fast
PKG_VERSION:=0.3.1
PKG_RELEASE:=1

PYPI_NAME:=fnv_hash_fast
PKG_HASH:=f8627166b781d2062b4a91cea14036170e778de548e5de0559f4e79cf5176f3d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-fnv-hash-fast
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=FNV Hash Fast
  URL:=https://github.com/bdraco/fnv-hash-fast
  DEPENDS:= \
	+libstdcpp \
	+python3-distutils \
	+python3-fnvhash
endef

define Package/python3-fnv-hash-fast/description
  A fast version of fnv1a.
  .
  This library will use a CPP implementation of fnv1a (32)
  if cython is available, and will fallback to pure python
  from the fnvhash package if it is not.
endef

$(eval $(call Py3Package,python3-fnv-hash-fast))
$(eval $(call BuildPackage,python3-fnv-hash-fast))
#$(eval $(call BuildPackage,python3-fnv-hash-fast-src))
