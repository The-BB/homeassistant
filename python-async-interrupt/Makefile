# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=async-interrupt
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PYPI_NAME:=async_interrupt
PKG_HASH:=1e5999f0980b5db21293e4cd022518eeaf52284c0499631932a1df250cb99215

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-async-interrupt
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Interrupt context manager for asyncio
  URL:=https://github.com/bdraco/async_interrupt
  DEPENDS:=+python3-asyncio
endef

define Package/python3-async-interrupt/description
  Context manager to raise an exception when a future is done.
endef

$(eval $(call Py3Package,python3-async-interrupt))
$(eval $(call BuildPackage,python3-async-interrupt))
#$(eval $(call BuildPackage,python3-async-interrupt-src))
