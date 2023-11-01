# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyserial-asyncio-fast
PKG_VERSION:=0.11
PKG_RELEASE:=1

PYPI_NAME:=pyserial-asyncio-fast
PKG_HASH:=ce7a26d90fb7da827f6221fcb6506b8b73f724b7a3a59a7ac43257f34c0c84e6

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyserial-asyncio-fast
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Serial Port Extension - Asynchronous I/O support
  URL:=https://github.com/home-assistant-libs/pyserial-asyncio-fast
  DEPENDS:=+python3-asyncio +python3-pyserial +python3-urllib
endef

define Package/python3-pyserial-asyncio-fast/description
  fast asyncio extension package for pyserial that implements eager writes.
endef

$(eval $(call Py3Package,python3-pyserial-asyncio-fast))
$(eval $(call BuildPackage,python3-pyserial-asyncio-fast))
#$(eval $(call BuildPackage,python3-pyserial-asyncio-fast-src))
