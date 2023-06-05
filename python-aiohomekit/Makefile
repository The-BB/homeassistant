# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiohomekit
PKG_VERSION:=2.6.3
PKG_RELEASE:=2

PYPI_NAME:=aiohomekit
PKG_HASH:=bc4ee71400df03b033320b33e03495d55deb744be180ca6fc7fda7907220e693

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
	+python3-async-timeout \
	+python3-asyncio \
	+python3-bleak-retry-connector \
	+python3-bleak \
	+python3-chacha20poly1305-reuseable \
	+python3-chacha20poly1305 \
	+python3-commentjson \
	+python3-decimal \
	+python3-logging \
	+python3-zeroconf
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography python3-orjson
endef

define Package/python3-aiohomekit/description
  This library implements the HomeKit protocol for controlling Homekit
  accessories using asyncio.
  .
  It's primary use is for with Home Assistant. We target the same versions
  of python as them and try to follow their code standards.
endef

$(eval $(call Py3Package,python3-aiohomekit))
$(eval $(call BuildPackage,python3-aiohomekit))
#$(eval $(call BuildPackage,python3-aiohomekit-src))