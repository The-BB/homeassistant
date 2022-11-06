# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-backoff
PKG_VERSION:=2.2.1
PKG_RELEASE:=1

PYPI_NAME:=backoff
PKG_HASH:=03f829f5bb1923180821643f8753b0502c3b682293992485b0eef2807afa5cba

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-backoff
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Function decoration for backoff and retry
  URL:=https://github.com/litl/backoff
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging
endef

define Package/python3-backoff/description
  Python library providing function decorators for configurable
  backoff and retry.
endef

$(eval $(call Py3Package,python3-backoff))
$(eval $(call BuildPackage,python3-backoff))
#$(eval $(call BuildPackage,python3-backoff-src))
