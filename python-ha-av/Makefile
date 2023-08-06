# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ha-av
PKG_VERSION:=10.1.1
PKG_RELEASE:=1

PYPI_NAME:=ha-av
PKG_HASH:=41a30556f8258a9374906d7e65034a93b593c9d4b220f9f6a9adf652dbcb89dc

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-cython/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-ha-av
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pythonic bindings for FFmpeg's libraries
  URL:=https://github.com/PyAV-Org/PyAV
  DEPENDS:=+libffmpeg +python3-logging +python3-urllib +python3-xml
endef

define Package/python3-ha-av/description
  ha-av is a fork of PyAV which is used for providing hotfixes for
  or troubleshooting issues with PyAV in Home Assistant.
endef

$(eval $(call Py3Package,python3-ha-av))
$(eval $(call BuildPackage,python3-ha-av))
#$(eval $(call BuildPackage,python3-ha-av-src))
