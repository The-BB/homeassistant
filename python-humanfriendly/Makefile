# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=humanfriendly
PKG_VERSION:=10.0
PKG_RELEASE:=1

PYPI_NAME:=humanfriendly
PKG_HASH:=6b0b831ce8f15f7300721aa49829fc4e83921a9a301cc7f606be6686a2288ddc

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-humanfriendly
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Human friendly output for text interfaces
  URL:=https://humanfriendly.readthedocs.io
  DEPENDS:= \
	+python3-ctypes \
	+python3-decimal \
	+python3-distutils \
	+python3-logging \
	+python3-multiprocessing \
	+python3-readline \
	+python3-unittest
endef

define Package/python3-humanfriendly/description
  Human friendly output for text interfaces using Python.
endef

$(eval $(call Py3Package,python3-humanfriendly))
$(eval $(call BuildPackage,python3-humanfriendly))
#$(eval $(call BuildPackage,python3-humanfriendly-src))
