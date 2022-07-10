# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-grpcio
PKG_VERSION:=1.46.1
PKG_RELEASE:=2

PYPI_NAME:=grpcio
PKG_HASH:=4835b0f5fedbee3a3d6eea48f4e65dffd30b52c078690fa97ddc9fcea1e3b35d

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
	+python3-asyncio \
	+python3-distutils \
	+python3-grpcio-tools \
	+python3-logging \
	+python3-multiprocessing \
	+python3-readline \
	+python3-six \
	+python3-unittest \
	+python3-urllib \
	+python3-xml
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
