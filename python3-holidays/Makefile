# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-holidays
PKG_VERSION:=0.14.2
PKG_RELEASE:=1

PYPI_NAME:=holidays
PKG_HASH:=0e70fd174804aea1c870b151319faebcd5cdb0d955b78230434e1afd1778498e

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
  DEPENDS:= \
	+python3-convertdate \
	+python3-dateutil \
	+python3-hijri-converter \
	+python3-korean-lunar-calendar
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
