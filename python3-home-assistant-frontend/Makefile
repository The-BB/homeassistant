# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=frontend
PKG_VERSION:=20220203.1
PKG_RELEASE:=1

#PYPI_NAME:=home-assistant-frontend
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/home-assistant/frontend/tar.gz/refs/tags/$(PKG_VERSION)?
PKG_HASH:=74fa1f70c7318e9c01f55a8e2b35ca3e0800771c278159bbd858b4ad23fb2af8

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=node-yarn/host

#include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-home-assistant-frontend
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The Home Assistant frontend
  URL:=https://github.com/home-assistant/frontend
  DEPENDS:=+python3-light
endef

define Package/python3-home-assistant-frontend/description
  Home Assistant Frontend.
endef

define Build/Compile
	( \
		pushd $(PKG_BUILD_DIR); \
		script/release; \
		popd; \
	)
	$(Py3Build/Configure/Default)
	$(Py3Build/Compile/Default)
endef

$(eval $(call Py3Package,python3-home-assistant-frontend))
$(eval $(call BuildPackage,python3-home-assistant-frontend))
#$(eval $(call BuildPackage,python3-home-assistant-frontend-src))
