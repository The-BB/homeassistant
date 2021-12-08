# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-tabulate
PKG_VERSION:=0.8.9
PKG_RELEASE:=2

PYPI_NAME:=tabulate
PKG_HASH:=eb1d13f25760052e8931f2ef80aaf6045a6cceb47514db8beab24cded16f13a7

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-tabulate
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pretty-print tabular data
  URL:=https://github.com/astanin/python-tabulate
  DEPENDS:=+python3-light
endef

define Package/python3-tabulate/description
  Pretty-print tabular data in Python, a library and a command-line utility.
endef

$(eval $(call Py3Package,python3-tabulate))
$(eval $(call BuildPackage,python3-tabulate))
#$(eval $(call BuildPackage,python3-tabulate-src))
