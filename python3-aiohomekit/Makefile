# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-aiohomekit
PKG_VERSION:=0.6.4
PKG_RELEASE:=1

PYPI_NAME:=aiohomekit
PKG_HASH:=e1ecd80a30d6480fb375c865329a176fbcb7d10d6eda6e7caae5070e2d0c6469

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

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
	+python3-commentjson \
	+python3-cryptography \
	+python3-zeroconf
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
