# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=habluetooth
PKG_VERSION:=2.4.2
PKG_RELEASE:=1

PYPI_NAME:=habluetooth
PKG_HASH:=89dc8c4e9d79a25c2666dafde0f49241144ac29e69d9d9f5bbf1122733c7f42c

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-habluetooth
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=High availability Bluetooth
  URL:=https://github.com/bluetooth-devices/habluetooth
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-bleak \
	+python3-bleak-retry-connector \
	+python3-bluetooth-adapters \
	+python3-bluetooth-auto-recovery \
	+python3-bluetooth-data-tools
endef

define Package/python3-habluetooth/description
  High availability Bluetooth.
endef

$(eval $(call Py3Package,python3-habluetooth))
$(eval $(call BuildPackage,python3-habluetooth))
#$(eval $(call BuildPackage,python3-habluetooth-src))
