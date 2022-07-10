# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-google-auth
PKG_VERSION:=2.3.3
PKG_RELEASE:=2

PYPI_NAME:=google-auth
PKG_HASH:=d83570a664c10b97a1dc6f8df87e5fdfff012f48f62be131e449c20dfc32630e

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-google-auth
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Google Authentication Library
  URL:=https://github.com/googleapis/google-auth-library-python
  DEPENDS:= \
	+python3-asyncio \
	+python3-cachetools \
	+python3-logging \
	+python3-pyasn1-modules \
	+python3-rsa \
	+python3-setuptools \
	+python3-six \
	+python3-urllib
endef

define Package/python3-google-auth/description
  This library simplifies using Google's various server-to-server
  authentication mechanisms to access Google APIs.
endef

$(eval $(call Py3Package,python3-google-auth))
$(eval $(call BuildPackage,python3-google-auth))
