# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=grpcio-reflection
PKG_VERSION:=1.59.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio-reflection
PKG_HASH:=1fe8f0dd6c180fdcf4e12ced2a8f784d9c741ccbc0b198585b1df024b7f8f3f2

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-grpcio-reflection
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Standard Protobuf Reflection Service for gRPC
  URL:=https://grpc.io
  DEPENDS:=+python3-logging +python3-protobuf
  EXTRA_DEPENDS:=python3-grpcio (>=$(PKG_VERSION)-$(PKG_RELEASE))
endef

define Package/python3-grpcio-reflection/description
  Reference package for reflection in GRPC Python.
endef

$(eval $(call Py3Package,python3-grpcio-reflection))
$(eval $(call BuildPackage,python3-grpcio-reflection))
#$(eval $(call BuildPackage,python3-grpcio-reflection-src))
