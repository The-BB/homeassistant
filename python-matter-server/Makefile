# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-matter-server
PKG_VERSION:=5.7.0
PKG_RELEASE:=1

PYPI_NAME:=python-matter-server
PKG_HASH:=a0e77b7f4b41de7be58fe24bbba8410fae7c346cb74811deb3e33df5a65055ce

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-matter-server
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Matter WebSocket Server
  URL:=https://www.home-assistant.io/integrations/matter
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-uuid \
	+python3-aiohttp \
	+python3-aiorun \
	+python3-async-timeout \
	+python3-coloredlogs \
	+python3-dacite \
	+python3-home-assistant-chip-clusters \
	+python3-orjson
# [server]
  DEPENDS+= \
	+python3-cryptography \
	+python3-zeroconf
endef

define Package/python3-matter-server/description
  Python Matter Server.
endef

$(eval $(call Py3Package,python3-matter-server))
$(eval $(call BuildPackage,python3-matter-server))
#$(eval $(call BuildPackage,python3-matter-server-src))
