# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pycares
PKG_VERSION:=4.1.2
PKG_RELEASE:=2

PYPI_NAME:=pycares
PKG_HASH:=03490be0e7b51a0c8073f877bec347eff31003f64f57d9518d419d9369452837

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pycares
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python interface for c-ares
  URL:=https://github.com/saghul/pycares
  DEPENDS:= \
	+python3-asyncio \
	+python3-cffi \
	+python3-distutils \
	+python3-idna
endef

define Package/python3-pycares/description
  pycares is a Python module which provides an interface to c-ares.
endef

$(eval $(call Py3Package,python3-pycares))
$(eval $(call BuildPackage,python3-pycares))
#$(eval $(call BuildPackage,python3-pycares-src))
