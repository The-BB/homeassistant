# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyhap
PKG_VERSION:=4.5.2
PKG_RELEASE:=1

PYPI_NAME:=ha-HAP-python
PKG_HASH:=cd9023c65b21c65b8cb5ffe1cdad96dee97379a0e71f6fc0c7bbfe25c1f9372f

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyhap
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HomeKit Accessory Protocol implementation
  URL:=https://github.com/ikalchev/HAP-python
  DEPENDS:= \
	+python3-asyncio \
	+python3-chacha20poly1305-reuseable \
	+python3-h11 \
	+python3-logging \
	+python3-urllib \
	+python3-zeroconf
#[QRCode]
  DEPENDS+= \
	+python3-base36 \
	+python3-pyqrcode
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography, python3-orjson
endef

define Package/python3-pyhap/description
  This is a fork of HAP-python which is used for providing hotfixes for or
  troubleshooting issues with HAP-python in Home Assistant.
  HomeKit Accessory Protocol implementation in python 3. With this project,
  you can integrate your own smart devices and add them to your iOS Home app.
  Since Siri is integrated with the Home app, you can start voice-control your
  accessories right away.
endef

$(eval $(call Py3Package,python3-pyhap))
$(eval $(call BuildPackage,python3-pyhap))
#$(eval $(call BuildPackage,python3-pyhap-src))
