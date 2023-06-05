# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=korean-lunar-calendar
PKG_VERSION:=0.2.1
PKG_RELEASE:=2

PYPI_NAME:=korean_lunar_calendar
PKG_HASH:=12ce54b1392ed45a82dc6cea85ee5f7e33630556e82488f57e37a22482c8275d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-korean-lunar-calendar
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Korean Lunar Calendar
  URL:=https://github.com/usingsky/korean_lunar_calendar_py
  DEPENDS:=+python3-light
endef

define Package/python3-korean-lunar-calendar/description
  Libraries to convert Korean lunar-calendar to Gregorian calendar
  written in python.
endef

$(eval $(call Py3Package,python3-korean-lunar-calendar))
$(eval $(call BuildPackage,python3-korean-lunar-calendar))
#$(eval $(call BuildPackage,python3-korean-lunar-calendar-src))
