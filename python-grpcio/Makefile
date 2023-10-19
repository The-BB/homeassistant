# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=grpcio
PKG_VERSION:=1.58.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio
PKG_HASH:=532410c51ccd851b706d1fbc00a87be0f5312bd6f8e5dbf89d4e99c7f79d7499

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-wheel/host

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
	+python3-asyncio \
	+python3-distutils \
	+python3-grpcio-tools \
	+python3-logging \
	+python3-multiprocessing \
	+python3-protobuf \
	+python3-readline \
	+python3-unittest \
	+python3-urllib \
	+python3-xml \
	+python3-yaml
endef

define Package/python3-grpcio/description
  gRPC is a modern, open source, high-performance remote procedure call
  (RPC) framework that can run anywhere. gRPC enables client and server
  applications to communicate transparently, and simplifies the building
  of connected systems.
endef

PYTHON3_PKG_SETUP_VARS += \
	GRPC_BUILD_WITH_BORING_SSL_ASM="False" \
	GRPC_PYTHON_BUILD_SYSTEM_OPENSSL="True" \
	GRPC_PYTHON_BUILD_SYSTEM_ZLIB="True" \
	GRPC_PYTHON_BUILD_SYSTEM_CARES="False" \
	GRPC_PYTHON_BUILD_SYSTEM_RE2="False" \
	GRPC_PYTHON_BUILD_SYSTEM_ABSL="False"

TARGET_CPPFLAGS += -I$(PKG_BUILD_DIR)/third_party/abseil-cpp

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) 's,@STAGING_DIR@,$(STAGING_DIR)/opt,g' $(PKG_BUILD_DIR)/setup.py
endef

$(eval $(call Py3Package,python3-grpcio))
$(eval $(call BuildPackage,python3-grpcio))
#$(eval $(call BuildPackage,python3-grpcio-src))
