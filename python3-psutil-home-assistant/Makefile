# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-psutil-home-assistant
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PYPI_NAME:=psutil-home-assistant
PKG_HASH:=ebe4f3a98d76d93a3140da2823e9ef59ca50a59761fdc453b30b4407c4c1bdb8

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-psutil-home-assistant
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Wrapper for psutil
  URL:=https://psutil-home-assistant.pydata.org/
  DEPENDS:= \
	+python3-psutil
endef

define Package/python3-psutil-home-assistant/description
  Wrapper of psutil that removes reliance on globals.
endef

$(eval $(call Py3Package,python3-psutil-home-assistant))
$(eval $(call BuildPackage,python3-psutil-home-assistant))
#$(eval $(call BuildPackage,python3-psutil-home-assistant-src))
