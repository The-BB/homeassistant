# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-proto-plus
PKG_VERSION:=1.19.8
PKG_RELEASE:=1

PYPI_NAME:=proto-plus
PKG_HASH:=bdf45f0e0be71510eb2ec9db4da78afde7b5fb8b0a507a36340a9b6ce8e48e58

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-proto-plus
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Beautiful, Pythonic protocol buffers
  URL:=https://github.com/googleapis/proto-plus-python.git
  DEPENDS:= \
	+protobuf \
	+python3-google-api-core
endef

define Package/python3-proto-plus/description
  Beautiful, idiomatic protocol buffers in Python.
endef

$(eval $(call Py3Package,python3-proto-plus))
$(eval $(call BuildPackage,python3-proto-plus))
#$(eval $(call BuildPackage,python3-proto-plus-src))
