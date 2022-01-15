# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpc-google-iam-v1
PKG_VERSION:=0.12.3
PKG_RELEASE:=1

PYPI_NAME:=grpc-google-iam-v1
PKG_HASH:=0bfb5b56f648f457021a91c0df0db4934b6e0c300bd0f2de2333383fe958aa72

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-grpc-google-iam-v1
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=GRPC library for the google-iam-v1 service
  URL:=https://github.com/googleapis/googleapis
  DEPENDS:= \
	+python3-googleapis-common-protos \
	+python3-grpcio
endef

define Package/python3-grpc-google-iam-v1/description
  Public interface definitions of Google APIs.
endef

$(eval $(call Py3Package,python3-grpc-google-iam-v1))
$(eval $(call BuildPackage,python3-grpc-google-iam-v1))
#$(eval $(call BuildPackage,python3-grpc-google-iam-v1-src))
