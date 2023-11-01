# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pypng
PKG_VERSION:=0.20220715.0
PKG_RELEASE:=1

PYPI_NAME:=pypng
PKG_HASH:=739c433ba96f078315de54c0db975aee537cbc3e1d0ae4ed9aab0ca1e427e2c1

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pypng
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pure Python PNG image encoder/decoder
  URL:=https://gitlab.com/drj11/pypng
  DEPENDS:=+python3-light
endef

define Package/python3-pypng/description
  PyPNG allows PNG image files to be read and written using pure Python.
endef

$(eval $(call Py3Package,python3-pypng))
$(eval $(call BuildPackage,python3-pypng))
#$(eval $(call BuildPackage,python3-pypng-src))
