# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zigpy-zigate
PKG_VERSION:=0.11.0
PKG_RELEASE:=1

PYPI_NAME:=zigpy-zigate
PKG_HASH:=da2d3b3a1a53cfbcc50505f782d477d355943b061dc6956c94ad0debdee66e86

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-zigpy-zigate
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library which communicates with ZiGate radios
  URL:=https://github.com/zigpy/zigpy-zigate
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-urllib \
	+python3-gpiozero \
	+python3-pyserial \
	+python3-pyserial-asyncio \
	+python3-pyusb \
	+python3-zigpy
endef

define Package/python3-zigpy-zigate/description
  zigpy-zigate is a Python 3 implementation for the Zigpy
  project to implement ZiGate based Zigbee radio devices.
endef

$(eval $(call Py3Package,python3-zigpy-zigate))
$(eval $(call BuildPackage,python3-zigpy-zigate))
#$(eval $(call BuildPackage,python3-zigpy-zigate-src))
