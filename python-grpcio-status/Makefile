# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=grpcio-status
PKG_VERSION:=1.59.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio-status
PKG_HASH:=f93b9c33e0a26162ef8431bfcffcc3e1fb217ccd8d7b5b3061b6e9f813e698b5

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-grpcio-status
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Status proto mapping for gRPC
  URL:=https://grpc.io
  DEPENDS:=+python3-googleapis-common-protos +python3-protobuf
  EXTRA_DEPENDS:=python3-grpcio (>=$(PKG_VERSION)-$(PKG_RELEASE))
endef

define Package/python3-grpcio-status/description
  Reference package for GRPC Python status proto mapping.
endef

$(eval $(call Py3Package,python3-grpcio-status))
$(eval $(call BuildPackage,python3-grpcio-status))
#$(eval $(call BuildPackage,python3-grpcio-status-src))
