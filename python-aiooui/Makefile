# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiooui
PKG_VERSION:=0.1.5
PKG_RELEASE:=1

PYPI_NAME:=aiooui
PKG_HASH:=68015a428c46521cdf82896d920376ebac885711a937179cf1deca20b8e1f3ea

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiooui
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Async OUI lookups
  URL:=https://github.com/bluetooth-devices/aiooui
  DEPENDS:=+python3-asyncio
endef

define Package/python3-aiooui/description
  Async OUI lookups.
endef

$(eval $(call Py3Package,python3-aiooui))
$(eval $(call BuildPackage,python3-aiooui))
#$(eval $(call BuildPackage,python3-aiooui-src))
