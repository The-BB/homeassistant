# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-btlewrap
PKG_VERSION:=0.1.0
PKG_RELEASE:=2

PYPI_NAME:=btlewrap
PKG_HASH:=1b3fc4d6ed23d887c3c251f50ad20b46c9994531b1a9fb7c34320916431b773f

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-btlewrap
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=wrapper around different bluetooth low energy backends
  URL:=https://github.com/ChristianKuehnel/btlewrap
  DEPENDS:= \
	+python3-logging
endef

define Package/python3-btlewrap/description
  Bluetooth LowEnergy wrapper for different python backends. This gives
  you a nice API so that you can use different Bluetooth implementations
  on different platforms.
endef

$(eval $(call Py3Package,python3-btlewrap))
$(eval $(call BuildPackage,python3-btlewrap))
#$(eval $(call BuildPackage,python3-btlewrap-src))
