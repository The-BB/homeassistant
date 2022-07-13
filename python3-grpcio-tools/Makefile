# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-grpcio-tools
PKG_VERSION:=1.46.1
PKG_RELEASE:=2

PYPI_NAME:=grpcio-tools
PKG_HASH:=d54d80a4cfd7da002893711af613c9c9358dddfdd27feea44eb902c495b09105

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
	+python3-distutils \
	+python3-multiprocessing \
	+python3-protobuf \
	+python3-setuptools
endef

define Package/python3-grpcio-tools/description
  Package for gRPC Python tools.
endef

$(eval $(call Py3Package,python3-grpcio-tools))
$(eval $(call BuildPackage,python3-grpcio-tools))
#$(eval $(call BuildPackage,python3-grpcio-tools-src))
