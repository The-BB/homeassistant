# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=bellows
PKG_VERSION:=0.37.4
PKG_RELEASE:=1

PYPI_NAME:=bellows
PKG_HASH:=9b58c558f5f28c0ea5760243bfa11c1b5b1d144f2caefe565fbae59d8cbe2805

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bellows
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library implementing EZSP
  URL:=https://github.com/zigpy/bellows
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-urllib \
	+python3-click \
	+python3-click-log \
	+python3-pure-pcapy3 \
	+python3-voluptuous \
	+python3-zigpy
endef

define Package/python3-bellows/description
  bellows is a Python 3 library implementation for the zigpy
  project to add Zigbee radio support for Silicon Labs EM35x
  ("Ember") and EFR32 ("Mighty Gecko") based Zigbee coordinator
  devices using the EZSP (EmberZNet Serial Protocol) interface.
endef

$(eval $(call Py3Package,python3-bellows))
$(eval $(call BuildPackage,python3-bellows))
#$(eval $(call BuildPackage,python3-bellows-src))
