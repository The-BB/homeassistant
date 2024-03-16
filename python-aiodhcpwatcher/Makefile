# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiodhcpwatcher
PKG_VERSION:=0.8.1
PKG_RELEASE:=1

PYPI_NAME:=aiodhcpwatcher
PKG_HASH:=9b5f8bd0361455714e400dbc8ecfe2a9cdf7d3e26292f4fa2433aa3111c9fa43

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiodhcpwatcher
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Watch for DHCP packets with asyncio
  URL:=https://github.com/bdraco/aiodhcpwatcher
  DEPENDS:=+python3-asyncio +python3-logging +scapy
endef

define Package/python3-aiodhcpwatcher/description
  Watch for DHCP packets with asyncio.
endef

$(eval $(call Py3Package,python3-aiodhcpwatcher))
$(eval $(call BuildPackage,python3-aiodhcpwatcher))
#$(eval $(call BuildPackage,python3-aiodhcpwatcher-src))
