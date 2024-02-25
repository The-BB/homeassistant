# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aiorun
PKG_VERSION:=2023.7.2
PKG_RELEASE:=1

PYPI_NAME:=aiorun
PKG_HASH:=95e689dc1b263aaf4556ef8fa73ccae68f38ba0f1c1017fe196ef7da244031f9

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiorun
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Boilerplate for asyncio applications
  URL:=https://github.com/cjrh/aiorun
  DEPENDS:=+python3-asyncio +python3-logging
endef

define Package/python3-aiorun/description
  A "run" function for asyncio-based apps that does all the boilerplate.
endef

$(eval $(call Py3Package,python3-aiorun))
$(eval $(call BuildPackage,python3-aiorun))
#$(eval $(call BuildPackage,python3-aiorun-src))
