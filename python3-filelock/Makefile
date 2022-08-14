# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-filelock
PKG_VERSION:=3.8.0
PKG_RELEASE:=1

PYPI_NAME:=filelock
PKG_HASH:=55447caa666f2198c5b6b13a26d2084d26fa5b115c00d065664b2124680c4edc

PKG_LICENSE:=PD
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-filelock
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A platform independent file lock
  URL:=https://github.com/tox-dev/py-filelock
  DEPENDS:= \
	+python3-logging
endef

define Package/python3-filelock/description
  A platform-independent file lock for Python.
endef

$(eval $(call Py3Package,python3-filelock))
$(eval $(call BuildPackage,python3-filelock))
#$(eval $(call BuildPackage,python3-filelock-src))
