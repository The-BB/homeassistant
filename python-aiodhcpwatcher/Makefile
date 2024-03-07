# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiodhcpwatcher
PKG_VERSION:=0.8.0
PKG_RELEASE:=1

PYPI_NAME:=aiodhcpwatcher
PKG_HASH:=3f01b66334178accbbdd8d38c749607fc40c296eb6b043784d90005dd0e08042

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
