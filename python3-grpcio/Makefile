# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-grpcio
PKG_VERSION:=1.45.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio
PKG_HASH:=ff2c8b965b0fc25cf281961aa46619c10900543effe3f806ef818231c40aaff3

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
	+libopenssl \
	+libstdcpp \
	+python3-coverage \
	+python3-grpcio-tools \
	+python3-protobuf \
	+python3-six
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
	GRPC_PYTHON_BUILD_SYSTEM_ZLIB="False" \
	GRPC_PYTHON_BUILD_SYSTEM_CARES="False" \
	GRPC_PYTHON_BUILD_SYSTEM_RE2="False"

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) "s,STAGING_DIR,$(STAGING_DIR),g" $(PKG_BUILD_DIR)/setup.py
endef

$(eval $(call Py3Package,python3-grpcio))
$(eval $(call BuildPackage,python3-grpcio))
#$(eval $(call BuildPackage,python3-grpcio-src))
