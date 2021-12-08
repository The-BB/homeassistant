# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-httplib2
PKG_VERSION:=0.19.0
PKG_RELEASE:=2

PYPI_NAME:=httplib2
PKG_HASH:=e0d428dad43c72dbce7d163b7753ffc7a39c097e6788ef10f4198db69b92f08e

PKG_LICENSE:=MIT

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-httplib2
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A comprehensive HTTP client library
  URL:=https://github.com/pndurette/gTTS
  DEPENDS:=+python3-light
endef

define Package/python3-httplib2/description
  Small, fast HTTP client library for Python. Features persistent connections,
  cache, and Google App Engine support. Originally written by Joe Gregorio,
  now supported by community. 
endef

$(eval $(call Py3Package,python3-httplib2))
$(eval $(call BuildPackage,python3-httplib2))
#$(eval $(call BuildPackage,python3-httplib2-src))
