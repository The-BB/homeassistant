# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-terminaltables
PKG_VERSION:=3.1.0
PKG_RELEASE:=2

PYPI_NAME:=terminaltables
PKG_HASH:=f3eb0eb92e3833972ac36796293ca0906e998dc3be91fbe1f8615b331b853b81

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-terminaltables
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Generate simple tables in terminals
  URL:=https://github.com/Robpol86/terminaltables
  DEPENDS:=+python3-light
endef

define Package/python3-terminaltables/description
  Generate simple tables in terminals from a nested list of strings.
endef

$(eval $(call Py3Package,python3-terminaltables))
$(eval $(call BuildPackage,python3-terminaltables))
#$(eval $(call BuildPackage,python3-terminaltables-src))
