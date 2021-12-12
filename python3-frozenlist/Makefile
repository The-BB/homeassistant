# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-frozenlist
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=frozenlist
PKG_HASH:=68201be60ac56aff972dc18085800b6ee07973c49103a8aba669dee3d71079de

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-frozenlist
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a list-like structure which implements collections.abc.MutableSequence
  URL:=https://github.com/aio-libs/frozenlist
  DEPENDS:= \
	+python3-light
endef

define Package/python3-frozenlist/description
  FrozenList is a list-like structure which
  implements collections.abc.MutableSequence,
  and which can be made immutable. 
endef

$(eval $(call Py3Package,python3-frozenlist))
$(eval $(call BuildPackage,python3-frozenlist))
#$(eval $(call BuildPackage,python3-frozenlist-src))
