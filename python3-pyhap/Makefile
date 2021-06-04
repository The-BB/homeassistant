# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pyhap
PKG_VERSION:=3.5.0
PKG_RELEASE:=1

PYPI_NAME:=HAP-python
PKG_HASH:=3423a9dd41fe52e25a6e6507817002b2b2998e1604642fdd4ca069fddd013904

PKG_LICENSE:=Apache-2.0

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
	+python3-cryptography \
	+python3-curve25519-donna \
	+python3-ed25519 \
	+python3-h11 \
	+python3-zeroconf
endef

define Package/python3-pyhap/description
  HomeKit Accessory Protocol implementation in python 3. With this project,
  you can integrate your own smart devices and add them to your iOS Home app.
  Since Siri is integrated with the Home app, you can start voice-control your
  accessories right away.
endef

$(eval $(call Py3Package,python3-pyhap))
$(eval $(call BuildPackage,python3-pyhap))
$(eval $(call BuildPackage,python3-pyhap-src))
