# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyserial-asyncio
PKG_VERSION:=0.6
PKG_RELEASE:=1

PYPI_NAME:=pyserial-asyncio
PKG_HASH:=b6032923e05e9d75ec17a5af9a98429c46d2839adfaf80604d52e0faacd7a32f

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyserial-asyncio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Serial Port Extension - Asynchronous I/O support
  URL:=https://github.com/pyserial/pyserial-asyncio
  DEPENDS:=+python3-asyncio +python3-pyserial
endef

define Package/python3-pyserial-asyncio/description
  Async I/O extension package for the Python
  Serial Port Extension for OSX, Linux, BSD.
endef

$(eval $(call Py3Package,python3-pyserial-asyncio))
$(eval $(call BuildPackage,python3-pyserial-asyncio))
#$(eval $(call BuildPackage,python3-pyserial-asyncio-src))
