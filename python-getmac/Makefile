# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=getmac
PKG_VERSION:=0.9.4
PKG_RELEASE:=1

PYPI_NAME:=getmac
PKG_HASH:=8477755b69ff93a3b514b54e1fbb8ebb57d8f4e5c37e7c18bcef3a0f1f149232

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-getmac
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Get MAC address
  URL:=https://github.com/GhostofGoes/getmac
  DEPENDS:=+python3-ctypes +python3-logging
endef

define Package/python3-getmac/description
  Pure-Python package to get the MAC address of network interfaces
  and hosts on the local network.
endef

$(eval $(call Py3Package,python3-getmac))
$(eval $(call BuildPackage,python3-getmac))
#$(eval $(call BuildPackage,python3-getmac-src))
