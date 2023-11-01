# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=crccheck
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=crccheck
PKG_HASH:=5384f437de610ade5c3d8689efc80ccd1267b8c452ade83411fd8500a1024f3e

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-crccheck
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Calculation library for CRCs and checksums
  URL:=https://github.com/MartinScharrer/crccheck
  DEPENDS:=+python3-light
endef

define Package/python3-crccheck/description
  The crccheck python module implements all CRCs listed in the Catalogue
  of parametrised CRC algorithms as well as simple checksums.
endef

$(eval $(call Py3Package,python3-crccheck))
$(eval $(call BuildPackage,python3-crccheck))
#$(eval $(call BuildPackage,python3-crccheck-src))
