# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-httplib2
PKG_VERSION:=0.20.4
PKG_RELEASE:=2

PYPI_NAME:=httplib2
PKG_HASH:=58a98e45b4b1a48273073f905d2961666ecf0fbac4250ea5b47aef259eb5c585

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
  DEPENDS:= \
	+python3-email \
	+python3-openssl \
	+python3-pyparsing \
	+python3-unittest \
	+python3-urllib
endef

define Package/python3-httplib2/description
  Small, fast HTTP client library for Python. Features persistent connections,
  cache, and Google App Engine support. Originally written by Joe Gregorio,
  now supported by community. 
endef

$(eval $(call Py3Package,python3-httplib2))
$(eval $(call BuildPackage,python3-httplib2))
#$(eval $(call BuildPackage,python3-httplib2-src))
