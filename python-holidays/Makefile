# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=holidays
PKG_VERSION:=0.36
PKG_RELEASE:=1

PYPI_NAME:=holidays
PKG_HASH:=54bbaba40adcfb39cd182fb29a1f96114129ff13778342c7ad12bb9fbccef973

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-holidays
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Generate and work with holidays in Python
  URL:=https://github.com/dr-prodigy/python-holidays
  DEPENDS:=+python3-dateutil
endef

define Package/python3-holidays/description
  A fast, efficient Python library for generating country- and subdivision-
  (e.g. state or province) specific sets of government-designated holidays
  on the fly. It aims to make determining whether a specific date is a holiday
  as fast and flexible as possible.
endef

$(eval $(call Py3Package,python3-holidays))
$(eval $(call BuildPackage,python3-holidays))
#$(eval $(call BuildPackage,python3-holidays-src))
