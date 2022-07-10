# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyhap
PKG_VERSION:=4.5.0
PKG_RELEASE:=2

PYPI_NAME:=HAP-python
PKG_HASH:=83d5c43f4bc42f82578d7099dd68052e9f73d33d5ab7f6b9a37ff89a58b17c58

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
  HomeKit Accessory Protocol implementation in python 3. With this project,
  you can integrate your own smart devices and add them to your iOS Home app.
  Since Siri is integrated with the Home app, you can start voice-control your
  accessories right away.
endef

$(eval $(call Py3Package,python3-pyhap))
$(eval $(call BuildPackage,python3-pyhap))
#$(eval $(call BuildPackage,python3-pyhap-src))
