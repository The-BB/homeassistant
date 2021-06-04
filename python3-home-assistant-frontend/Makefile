# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-home-assistant-frontend
PKG_VERSION:=20210603.0
PKG_RELEASE:=1

PYPI_NAME:=home-assistant-frontend
PKG_HASH:=d9485bb5ac4470e903f59e60f6066cf908ee54b5d918211c98aa3146d204631c

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-home-assistant-frontend
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The Home Assistant frontend
  URL:=https://github.com/home-assistant/home-assistant-polymer
  DEPENDS:=+python3-light
endef

define Package/python3-home-assistant-frontend/description
  The Home Assistant frontend.
endef

$(eval $(call Py3Package,python3-home-assistant-frontend))
$(eval $(call BuildPackage,python3-home-assistant-frontend))
$(eval $(call BuildPackage,python3-home-assistant-frontend-src))
