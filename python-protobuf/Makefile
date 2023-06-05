# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=protobuf
PKG_VERSION:=4.22.3
PKG_RELEASE:=2

PYPI_NAME:=protobuf
PKG_HASH:=23452f2fdea754a8251d0fc88c0317735ae47217e0d27bf330a30eec2848811a

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
  DEPENDS:=+python3-ctypes +python3-unittest
endef

define Package/python3-protobuf/description
  Protocol Buffers (a.k.a., protobuf) are Google's language-neutral,
  platform-neutral, extensible mechanism for serializing structured
  data.
endef

$(eval $(call Py3Package,python3-protobuf))
$(eval $(call BuildPackage,python3-protobuf))
#$(eval $(call BuildPackage,python3-protobuf-src))
