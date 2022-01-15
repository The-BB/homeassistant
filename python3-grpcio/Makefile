# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-grpcio
PKG_VERSION:=1.43.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio
PKG_HASH:=735d9a437c262ab039d02defddcb9f8f545d7009ae61c0114e19dda3843febe5

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-grpcio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=HTTP/2-based RPC framework
  URL:=https://grpc.io/
  DEPENDS:= \
	+libatomic \
	+libcares \
	+libopenssl \
	+libstdcpp \
	+python3-coverage \
	+python3-grpcio-tools \
	+python3-protobuf \
	+python3-six \
	+re2
endef

define Package/python3-grpcio/description
  gRPC is a modern, open source, high-performance remote procedure call
  (RPC) framework that can run anywhere. gRPC enables client and server
  applications to communicate transparently, and simplifies the building
  of connected systems.
endef

PYTHON3_PKG_SETUP_VARS+= \
	GRPC_BUILD_WITH_BORING_SSL_ASM="False" \
	GRPC_PYTHON_BUILD_SYSTEM_OPENSSL="True" \
	GRPC_PYTHON_BUILD_SYSTEM_ZLIB="True" \
	GRPC_PYTHON_BUILD_SYSTEM_CARES="True" \
	GRPC_PYTHON_BUILD_SYSTEM_RE2="True"

$(eval $(call Py3Package,python3-grpcio))
$(eval $(call BuildPackage,python3-grpcio))
#$(eval $(call BuildPackage,python3-grpcio-src))
