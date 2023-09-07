# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=protobuf
PKG_VERSION:=4.24.0
PKG_RELEASE:=1

PYPI_NAME:=protobuf
PKG_HASH:=5d0ceb9de6e08311832169e601d1fc71bd8e8c779f3ee38a97a78554945ecb85

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
  DEPENDS:=+python3-ctypes +python3-unittest +python3-uuid
endef

define Package/python3-protobuf/description
  Protocol Buffers (a.k.a., protobuf) are Google's language-neutral,
  platform-neutral, extensible mechanism for serializing structured
  data.
endef

$(eval $(call Py3Package,python3-protobuf))
$(eval $(call BuildPackage,python3-protobuf))
#$(eval $(call BuildPackage,python3-protobuf-src))
