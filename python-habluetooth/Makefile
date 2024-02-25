# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=habluetooth
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=habluetooth
PKG_HASH:=42edf66b6bc76de8213b4ad2a4163c7a64a8dd2a59b6a7792f98c2da64e00e69

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