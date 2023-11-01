# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyusb
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PYPI_NAME:=pyusb
PKG_HASH:=a4cc7404a203144754164b8b40994e2849fde1cfff06b08492f12fff9d9de7b9

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyusb
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python USB access module
  URL:=https://pyusb.github.io/pyusb
  DEPENDS:=+python3-ctypes +python3-distutils +python3-logging
endef

define Package/python3-pyusb/description
  PyUSB offers easy USB devices communication in Python.
endef

$(eval $(call Py3Package,python3-pyusb))
$(eval $(call BuildPackage,python3-pyusb))
#$(eval $(call BuildPackage,python3-pyusb-src))
