# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyrfc3339
PKG_VERSION:=1.1
PKG_RELEASE:=3

PYPI_NAME:=pyRFC3339
PKG_HASH:=81b8cbe1519cdb79bed04910dd6fa4e181faf8c88dff1e1b987b5f7ab23a5b1a

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyrfc3339
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Generate and parse RFC 3339 timestamps
  URL:=https://github.com/kurtraschke/pyRFC3339
  DEPENDS:=+python3-pytz
endef

define Package/python3-pyrfc3339/description
  pyRFC3339 parses and generates RFC 3339-compliant timestamps using Python
 datetime.datetime objects.
endef

$(eval $(call Py3Package,python3-pyrfc3339))
$(eval $(call BuildPackage,python3-pyrfc3339))
#$(eval $(call BuildPackage,python3-pyrfc3339-src))
