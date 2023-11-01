# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ndms2-client
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PYPI_NAME:=ndms2_client
PKG_HASH:=6c1ad93b23db30f9603da33e014e19d7e52aa020fa179d7731e36b2ce8b850b5

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-ndms2-client
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Keenetic NDMS 2.x and 3.x client
  URL:=https://github.com/foxel/python_ndms2_client
  DEPENDS:=+python3-logging
endef

define Package/python3-ndms2-client/description
  Keenetic NDMS v2 client library.
endef

$(eval $(call Py3Package,python3-ndms2-client))
$(eval $(call BuildPackage,python3-ndms2-client))
#$(eval $(call BuildPackage,python3-ndms2-client-src))
