# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=grpcio-tools
PKG_VERSION:=1.59.0
PKG_RELEASE:=1

PYPI_NAME:=grpcio-tools
PKG_HASH:=aa4018f2d8662ac4d9830445d3d253a11b3e096e8afe20865547137aa1160e93

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
	+libstdcpp \
	+python3-multiprocessing \
	+python3-protobuf \
	+python3-setuptools
  EXTRA_DEPENDS:=python3-grpcio (>=$(PKG_VERSION)-$(PKG_RELEASE))
endef

define Package/python3-grpcio-tools/description
  Package for gRPC Python tools.
endef

$(eval $(call Py3Package,python3-grpcio-tools))
$(eval $(call BuildPackage,python3-grpcio-tools))
#$(eval $(call BuildPackage,python3-grpcio-tools-src))
