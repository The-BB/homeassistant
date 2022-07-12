# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-natsort
PKG_VERSION:=8.1.0
PKG_RELEASE:=1

PYPI_NAME:=natsort
PKG_HASH:=c7c1f3f27c375719a4dfcab353909fe39f26c2032a062a8c80cc844eaaca0445

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-natsort
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Simple yet flexible natural sorting
  URL:=https://github.com/SethMMorton/natsort
  DEPENDS:= \
	+python3-codecs \
	+python3-ctypes
endef

define Package/python3-natsort/description
  Simple yet flexible natural sorting in Python.
endef

$(eval $(call Py3Package,python3-natsort))
$(eval $(call BuildPackage,python3-natsort))
#$(eval $(call BuildPackage,python3-natsort-src))
