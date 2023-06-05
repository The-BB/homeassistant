# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=ephem
PKG_VERSION:=4.1.2
PKG_RELEASE:=2

PYPI_NAME:=ephem
PKG_HASH:=d65bf7c85d96ca830de82729d9ce54ba854a9625916d8765c1954c1f29680b76

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-ephem
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Compute positions of the planets and stars
  URL:=http://rhodesmill.org/pyephem/
  DEPENDS:=+python3-urllib
endef

define Package/python3-ephem/description
  Compute positions of the planets and stars.
endef

define Py3Package/python3-ephem/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/ephem/doc
-|$(PYTHON3_PKG_DIR)/ephem/tests
endef

$(eval $(call Py3Package,python3-ephem))
$(eval $(call BuildPackage,python3-ephem))
#$(eval $(call BuildPackage,python3-ephem-src))
