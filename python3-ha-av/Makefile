# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-ha-av
PKG_VERSION:=10.0.0b5
PKG_RELEASE:=1

PYPI_NAME:=ha-av
PKG_HASH:=5b1f0e1b89b0f03e20cbde1d1470535f3bafe487751b84ed595b9b9da4c748bc

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-ha-av
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pythonic bindings for FFmpeg's libraries
  URL:=https://github.com/PyAV-Org/PyAV
  DEPENDS:= \
	+libffmpeg \
	+python3-logging \
	+python3-urllib \
	+python3-xml
endef

define Package/python3-ha-av/description
  ha-av is a fork of PyAV which is used for providing hotfixes for
  or troubleshooting issues with PyAV in Home Assistant.
endef

$(eval $(call Py3Package,python3-ha-av))
$(eval $(call BuildPackage,python3-ha-av))
#$(eval $(call BuildPackage,python3-ha-av-src))
