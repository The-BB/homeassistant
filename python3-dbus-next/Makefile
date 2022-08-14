# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-dbus-next
PKG_VERSION:=0.2.3
PKG_RELEASE:=1

PYPI_NAME:=dbus_next
PKG_HASH:=f4eae26909332ada528c0a3549dda8d4f088f9b365153952a408e28023a626a5

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-dbus-next
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The next great DBus library
  URL:=https://github.com/altdesktop/python-dbus-next
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-urllib \
	+python3-xml
endef

define Package/python3-dbus-next/description
  A zero-dependency DBus library for Python with asyncio support.
endef

$(eval $(call Py3Package,python3-dbus-next))
$(eval $(call BuildPackage,python3-dbus-next))
#$(eval $(call BuildPackage,python3-dbus-next-src))
