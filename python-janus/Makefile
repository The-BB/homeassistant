# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=janus
PKG_VERSION:=1.0.0
PKG_RELEASE:=2

PYPI_NAME:=janus
PKG_HASH:=df976f2cdcfb034b147a2d51edfc34ff6bfb12d4e2643d3ad0e10de058cb1612

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-janus
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Thread-safe asyncio-aware queue
  URL:=https://github.com/aio-libs/janus
  DEPENDS:=+python3-asyncio +python3-typing-extensions
endef

define Package/python3-janus/description
  Mixed sync-async queue, supposed to be used for communicating
  between classic synchronous (threaded) code and asynchronous
  (in terms of asyncio) one.
endef

$(eval $(call Py3Package,python3-janus))
$(eval $(call BuildPackage,python3-janus))
#$(eval $(call BuildPackage,python3-janus-src))
