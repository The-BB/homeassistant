#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-home-assistant-frontend
PKG_VERSION:=20201229.1
PKG_RELEASE:=1

PYPI_NAME:=home-assistant-frontend
PKG_HASH:=dc9316ba0022543abf341817f1fb7605c8629b6838f778f2ef066fbd7ad7f96b

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

define Package/python3-home-assistant-frontend/postrm
rm -rf $(1)$(PYTHON3_PKG_DIR)/home_assistant_frontend-$(PKG_VERSION)-py$(PYTHON3_VERSION).egg-info
endef

$(eval $(call Py3Package,python3-home-assistant-frontend))
$(eval $(call BuildPackage,python3-home-assistant-frontend))
$(eval $(call BuildPackage,python3-home-assistant-frontend-src))
