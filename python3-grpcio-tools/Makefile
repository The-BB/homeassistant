# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-grpcio-tools
PKG_VERSION:=1.45.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio-tools
PKG_HASH:=a016cfc21e0d91b3b036d3d4f968d1fdea865dfa03524cb1fbeca84719fd45a2

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-grpcio-tools
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Protobuf code generator for gRPC
  URL:=https://grpc.io/
  DEPENDS:= \
	+libatomic \
	+libpython3 \
	+libstdcpp \
	+python3-protobuf \
	+python3-setuptools \
	+python3-six
endef

define Package/python3-grpcio-tools/description
  Package for gRPC Python tools.
endef

$(eval $(call Py3Package,python3-grpcio-tools))
$(eval $(call BuildPackage,python3-grpcio-tools))
#$(eval $(call BuildPackage,python3-grpcio-tools-src))
