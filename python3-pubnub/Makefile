# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pubnub
PKG_VERSION:=6.5.1
PKG_RELEASE:=1

PYPI_NAME:=pubnub
PKG_HASH:=429b5cdfb316e6fe48f5573c8837a336b06ec0b883b55405aa977da15f862b46

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pubnub
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Real-time push service in the cloud
  URL:=http://pubnub.com/
  DEPENDS:= \
	+python3-aiohttp \
	+python3-asyncio \
	+python3-cbor2 \
	+python3-cryptodomex \
	+python3-logging \
	+python3-requests \
	+python3-urllib \
	+python3-yarl
endef

define Package/python3-pubnub/description
  PubNub Real-time push service in the cloud.
endef

$(eval $(call Py3Package,python3-pubnub))
$(eval $(call BuildPackage,python3-pubnub))
#$(eval $(call BuildPackage,python3-pubnub-src))
