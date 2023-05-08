# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-dbus-fast
PKG_VERSION:=1.85.0
PKG_RELEASE:=1

PYPI_NAME:=dbus_fast
PKG_HASH:=af346e87e34fa52c7ae82d117303cbfe089cd5391b5a1cc0e51f67066ef426f5

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-dbus-fast
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A faster version of dbus-next
  URL:=https://github.com/bluetooth-devices/dbus-fast
  DEPENDS:= \
	+python3-asyncio \
	+python3-distutils \
	+python3-logging \
	+python3-urllib \
	+python3-xml
endef

define Package/python3-dbus-fast/description
  A faster version of dbus-next originally from the great DBus next library.
endef

$(eval $(call Py3Package,python3-dbus-fast))
$(eval $(call BuildPackage,python3-dbus-fast))
#$(eval $(call BuildPackage,python3-dbus-fast-src))
