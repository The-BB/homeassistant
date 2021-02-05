#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-httplib2
PKG_VERSION:=0.18.1
PKG_RELEASE:=1

PYPI_NAME:=httplib2
PKG_HASH:=8af66c1c52c7ffe1aa5dc4bcd7c769885254b0756e6e69f953c7f0ab49a70ba3

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
$(eval $(call BuildPackage,python3-httplib2-src))
