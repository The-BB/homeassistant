# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiohomekit
PKG_VERSION:=3.1.4
PKG_RELEASE:=1

PYPI_NAME:=aiohomekit
PKG_HASH:=622ef435e0273ee0faf5022bdf3a756ff18d636247f8a145cdc7f4f20644e5ce

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiohomekit
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=an asyncio HomeKit client
  URL:=https://github.com/Jc2k/aiohomekit
  DEPENDS:= \
	+python3-aiocoap \
	+python3-aiohappyeyeballs \
	+python3-async-interrupt \
	+python3-asyncio \
	+python3-bleak-retry-connector \
	+python3-bleak \
	+python3-chacha20poly1305-reuseable \
	+python3-chacha20poly1305 \
	+python3-commentjson \
	+python3-cryptography \
	+python3-decimal \
	+python3-logging \
	+python3-orjson \
	+python3-uuid \
	+python3-zeroconf
endef

define Package/python3-aiohomekit/description
  This library implements the HomeKit protocol for controlling Homekit
  accessories using asyncio.
  It's primary use is for with Home Assistant. We target the same versions
  of python as them and try to follow their code standards.
endef

$(eval $(call Py3Package,python3-aiohomekit))
$(eval $(call BuildPackage,python3-aiohomekit))
#$(eval $(call BuildPackage,python3-aiohomekit-src))
