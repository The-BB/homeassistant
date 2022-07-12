# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-watchdog
PKG_VERSION:=2.1.9
PKG_RELEASE:=1

PYPI_NAME:=watchdog
PKG_HASH:=43ce20ebb36a51f21fa376f76d1d4692452b2527ccd601950d69ed36b9e21609

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-watchdog
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Filesystem events monitoring
  URL:=https://github.com/gorakhargosh/watchdog
  DEPENDS:= \
	+python3-codecs \
	+python3-ctypes \
	+python3-logging \
	+python3-pydoc \
	+python3-yaml
endef

define Package/python3-watchdog/description
  Python library and shell utilities to monitor filesystem events.
endef

$(eval $(call Py3Package,python3-watchdog))
$(eval $(call BuildPackage,python3-watchdog))
#$(eval $(call BuildPackage,python3-watchdog-src))
