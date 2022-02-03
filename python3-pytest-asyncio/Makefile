# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pytest-asyncio
PKG_VERSION:=0.17.2
PKG_RELEASE:=1

PYPI_NAME:=pytest-asyncio
PKG_HASH:=6d895b02432c028e6957d25fc936494e78c6305736e785d9fee408b1efbc7ff4

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pytest-asyncio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pytest support for asyncio
  URL:=https://github.com/pytest-dev/pytest-asyncio
  DEPENDS:= \
	+python3-pytest
endef

define Package/python3-pytest-asyncio/description
  Pytest support for asyncio.
endef

$(eval $(call Py3Package,python3-pytest-asyncio))
$(eval $(call BuildPackage,python3-pytest-asyncio))
#$(eval $(call BuildPackage,python3-pytest-asyncio-src))
