# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=frozenlist
PKG_VERSION:=1.3.3
PKG_RELEASE:=1

PYPI_NAME:=frozenlist
PKG_HASH:=58bcc55721e8a90b88332d6cd441261ebb22342e238296bb330968952fbb3a6a

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-frozenlist
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a list-like structure which implements collections.abc.MutableSequence
  URL:=https://github.com/aio-libs/frozenlist
  DEPENDS:=+python3-light
endef

define Package/python3-frozenlist/description
  FrozenList is a list-like structure which
  implements collections.abc.MutableSequence,
  and which can be made immutable. 
endef

$(eval $(call Py3Package,python3-frozenlist))
$(eval $(call BuildPackage,python3-frozenlist))
#$(eval $(call BuildPackage,python3-frozenlist-src))
