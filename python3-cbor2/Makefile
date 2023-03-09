# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-cbor2
PKG_VERSION:=5.4.3
PKG_RELEASE:=2

PYPI_NAME:=cbor2
PKG_HASH:=62b863c5ee6ced4032afe948f3c1484f375550995d3b8498145237fe28e546c2

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=Cython

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-cbor2
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=(de)serializer with extensive tag support
  URL:=http://cbor2.com/
  DEPENDS:= \
	+python3-decimal \
	+python3-email
endef

define Package/python3-cbor2/description
  This library provides encoding and decoding for the Concise Binary
  Object Representation (CBOR) (RFC 8949) serialization format.
  The specification is fully compatible with the original RFC 7049.
endef

PYTHON3_PKG_SETUP_VARS += \
	CBOR2_BUILD_C_EXTENSION=1

$(eval $(call Py3Package,python3-cbor2))
$(eval $(call BuildPackage,python3-cbor2))
#$(eval $(call BuildPackage,python3-cbor2-src))
