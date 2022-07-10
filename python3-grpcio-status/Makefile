# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-grpcio-status
PKG_VERSION:=1.46.1
PKG_RELEASE:=1

PYPI_NAME:=grpcio-status
PKG_HASH:=700ad7bdc2da6b1d873ae9abffd957b3df6b74c8ca4b34c50bf1b062ae10a620

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
  DEPENDS:= \
	+python3-googleapis-common-protos \
	+python3-grpcio \
	+python3-protobuf
endef

define Package/python3-grpcio-status/description
  Reference package for GRPC Python status proto mapping.
endef

$(eval $(call Py3Package,python3-grpcio-status))
$(eval $(call BuildPackage,python3-grpcio-status))
#$(eval $(call BuildPackage,python3-grpcio-status-src))
