# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=icmplib
PKG_VERSION:=3.0
PKG_RELEASE:=2

PYPI_NAME:=icmplib
PKG_HASH:=859e9ca693b5550c1b06a879dd9d03d52b6648c362b19d3ccb49d6673b7d12c7

PKG_LICENSE:=LGPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-icmplib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=implementation of the ICMP protocol
  URL:=https://github.com/ValentinBELYN/icmplib
  DEPENDS:=+python3-asyncio
endef

define Package/python3-icmplib/description
  Easily forge ICMP packets and make your own ping and traceroute.
endef

$(eval $(call Py3Package,python3-icmplib))
$(eval $(call BuildPackage,python3-icmplib))
#$(eval $(call BuildPackage,python3-icmplib-src))
