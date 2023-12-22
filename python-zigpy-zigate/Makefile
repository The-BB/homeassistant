# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zigpy-zigate
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PYPI_NAME:=zigpy-zigate
PKG_HASH:=49a373a8a7510eeb4adac4628c343bd1ef70a5b2a741b8c33d9068cd1d35e822

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

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
	+python3-pyusb \
	+python3-voluptuous \
	+python3-zigpy
endef

define Package/python3-zigpy-zigate/description
  zigpy-zigate is a Python 3 implementation for the Zigpy
  project to implement ZiGate based Zigbee radio devices.
endef

$(eval $(call Py3Package,python3-zigpy-zigate))
$(eval $(call BuildPackage,python3-zigpy-zigate))
#$(eval $(call BuildPackage,python3-zigpy-zigate-src))
