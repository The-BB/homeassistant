# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiohappyeyeballs
PKG_VERSION:=2.3.1
PKG_RELEASE:=1

PYPI_NAME:=aiohappyeyeballs
PKG_HASH:=ff2148f2a64b8cea9c8f6bd94dbf813adb30a8f6bc516e6ecc25bca8be2930f8

PKG_LICENSE:=Python-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiohappyeyeballs
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Happy Eyeballs
  URL:=https://github.com/bdraco/aiohappyeyeballs
  DEPENDS:=+python3-asyncio
endef

define Package/python3-aiohappyeyeballs/description
  Happy Eyeballs for pre-resolved hosts.
endef

$(eval $(call Py3Package,python3-aiohappyeyeballs))
$(eval $(call BuildPackage,python3-aiohappyeyeballs))
#$(eval $(call BuildPackage,python3-aiohappyeyeballs-src))
