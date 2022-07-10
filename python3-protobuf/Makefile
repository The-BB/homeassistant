# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-protobuf
PKG_VERSION:=3.19.3
PKG_RELEASE:=2

PYPI_NAME:=protobuf
PKG_HASH:=d975a6314fbf5c524d4981e24294739216b5fb81ef3c14b86fb4b045d6690907

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-protobuf
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Protocol Buffers
  URL:=https://developers.google.com/protocol-buffers/
  DEPENDS:= \
	+python3-ctypes
endef

define Package/python3-protobuf/description
  Protocol Buffers (a.k.a., protobuf) are Google's language-neutral,
  platform-neutral, extensible mechanism for serializing structured
  data.
endef

$(eval $(call Py3Package,python3-protobuf))
$(eval $(call BuildPackage,python3-protobuf))
#$(eval $(call BuildPackage,python3-protobuf-src))
