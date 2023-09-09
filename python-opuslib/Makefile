# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=opuslib
PKG_VERSION:=3.0.1
PKG_RELEASE:=1

PYPI_NAME:=opuslib
PKG_HASH:=2cb045e5b03e7fc50dfefe431e3404dddddbd8f5961c10c51e32dfb69a044c97

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-opuslib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=bindings to the libopus
  URL:=https://github.com/onbeep/opuslib
  DEPENDS:=+libopus +python3-ctypes
endef

define Package/python3-opuslib/description
  Python bindings to the libopus, IETF low-delay audio codec.
endef

$(eval $(call Py3Package,python3-opuslib))
$(eval $(call BuildPackage,python3-opuslib))
#$(eval $(call BuildPackage,python3-opuslib-src))
