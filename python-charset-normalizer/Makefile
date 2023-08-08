# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=charset-normalizer
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PYPI_NAME:=charset-normalizer
PKG_HASH:=3bb3d25a8e6c0aedd251753a79ae98a093c7e7b471faa3aa9a93a81431987ace

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-charset-normalizer
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The Real First Universal Charset Detector
  URL:=https://github.com/ousret/charset_normalizer
  DEPENDS:=+python3-codecs +python3-logging
endef

define Package/python3-charset-normalizer/description
  The Real First Universal Charset Detector. Open, modern and actively
  maintained alternative to Chardet.
endef

$(eval $(call Py3Package,python3-charset-normalizer))
$(eval $(call BuildPackage,python3-charset-normalizer))
#$(eval $(call BuildPackage,python3-charset-normalizer-src))
