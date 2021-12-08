# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-h11
PKG_VERSION:=0.12.0
PKG_RELEASE:=2

PYPI_NAME:=h11
PKG_HASH:=47222cb6067e4a307d535814917cd98fd0a57b6788ce715755fa2b6c28b56042

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-h11
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a pure-Python, bring-your-own-I/O implementation of HTTP/1.1
  URL:=https://github.com/python-hyper/h11
  DEPENDS:=+python3-light
endef

define Package/python3-h11/description
  This is a little HTTP/1.1 library written from scratch in Python, heavily
  inspired by hyper-h2.
endef

$(eval $(call Py3Package,python3-h11))
$(eval $(call BuildPackage,python3-h11))
#$(eval $(call BuildPackage,python3-h11-src))
