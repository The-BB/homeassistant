# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-charset-normalizer
PKG_VERSION:=2.0.4
PKG_RELEASE:=3

PYPI_NAME:=charset-normalizer
PKG_HASH:=f23667ebe1084be45f6ae0538e4a5a865206544097e4e8bbcacf42cd02a348f3

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
  DEPENDS:= \
	+python3-codecs \
	+python3-logging
endef

define Package/python3-charset-normalizer/description
  The Real First Universal Charset Detector. Open, modern and actively
  maintained alternative to Chardet.
endef

$(eval $(call Py3Package,python3-charset-normalizer))
$(eval $(call BuildPackage,python3-charset-normalizer))
#$(eval $(call BuildPackage,python3-charset-normalizer-src))
