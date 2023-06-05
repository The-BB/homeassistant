# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyric
PKG_VERSION:=0.1.6.3
PKG_RELEASE:=2

PYPI_NAME:=PyRIC
PKG_HASH:=b539b01cafebd2406c00097f94525ea0f8ecd1dd92f7731f43eac0ef16c2ccc9

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyric
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Radio Interface Controller
  URL:=http://wraith-wireless.github.io/PyRIC/
  DEPENDS:=+python3-urllib
endef

define Package/python3-pyric/description
  PyRIC (is a Linux only) library providing wireless developers and
  pentesters the ability to identify, enumerate and manipulate their
  system's wireless cards programmatically in Python.
endef

$(eval $(call Py3Package,python3-pyric))
$(eval $(call BuildPackage,python3-pyric))
#$(eval $(call BuildPackage,python3-pyric-src))
