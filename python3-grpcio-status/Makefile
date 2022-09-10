# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-grpcio-status
PKG_VERSION:=1.48.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio-status
PKG_HASH:=afac961fc3713889d3c48c11461aba49842ca62a54dfe8f346442046036e9856

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
