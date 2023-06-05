# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=grpcio-reflection
PKG_VERSION:=1.51.1
PKG_RELEASE:=2

PYPI_NAME:=grpcio-reflection
PKG_HASH:=c07a93c0c36ef88fe475744289863b4787005eff4de0cc04213ecad718b01aae

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
  DEPENDS:=+python3-grpcio +python3-logging +python3-protobuf
endef

define Package/python3-grpcio-reflection/description
  Reference package for reflection in GRPC Python.
endef

$(eval $(call Py3Package,python3-grpcio-reflection))
$(eval $(call BuildPackage,python3-grpcio-reflection))
#$(eval $(call BuildPackage,python3-grpcio-reflection-src))
