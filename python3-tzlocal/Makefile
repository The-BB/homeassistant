# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-tzlocal
PKG_VERSION:=3.0
PKG_RELEASE:=2

PYPI_NAME:=tzlocal
PKG_HASH:=f4e6e36db50499e0d92f79b67361041f048e2609d166e93456b50746dc4aef12

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-tzlocal
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=tzinfo object for the local timezone
  URL:=https://github.com/regebro/tzlocal
  DEPENDS:= \
	+python3-logging \
	+python3-urllib \
	+python3-xml
endef

define Package/python3-tzlocal/description
  A Python module that tries to figure out what your local timezone is.
endef

define Py3Package/python3-tzlocal/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/$(PYPI_NAME)/win*.py
endef

$(eval $(call Py3Package,python3-tzlocal))
$(eval $(call BuildPackage,python3-tzlocal))
#$(eval $(call BuildPackage,python3-tzlocal-src))
