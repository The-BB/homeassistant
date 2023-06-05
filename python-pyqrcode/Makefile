# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyqrcode
PKG_VERSION:=1.2.1
PKG_RELEASE:=4

PYPI_NAME:=PyQRCode
PYPI_SOURCE_EXT:=zip
PKG_HASH:=1b2812775fa6ff5c527977c4cd2ccb07051ca7d0bc0aecf937a43864abe5eff6

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=License

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyqrcode
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A QR code generator
  URL:=https://github.com/mnooner256/pyqrcode
  DEPENDS:=+python3-urllib +python3-xml
# [PNG]
  DEPENDS+=+python3-pypng
endef

define Package/python3-pyqrcode/description
  A QR code generator written purely in Python with SVG, EPS, PNG and terminal
 output.
endef

$(eval $(call Py3Package,python3-pyqrcode))
$(eval $(call BuildPackage,python3-pyqrcode))
#$(eval $(call BuildPackage,python3-pyqrcode-src))
