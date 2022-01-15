# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-google-cloud-pubsub
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=google-cloud-pubsub
PKG_HASH:=42b07d8652f0ff0d118430a04abc19ee1f6fd85ccbfe86fcbb01bf487079a80c

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-google-cloud-pubsub
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Google Cloud Pub/Sub API client library
  URL:=https://github.com/googleapis/python-pubsub
  DEPENDS:= \
	+python3-libcst \
	+python3-google-api-core \
	+python3-grpc-google-iam-v1 \
	+python3-grpcio \
	+python3-proto-plus
endef

define Package/python3-google-cloud-pubsub/description
  Google Cloud Pub / Sub is a fully-managed real-time messaging service that
  allows you to send and receive messages between independent applications.
endef

$(eval $(call Py3Package,python3-google-cloud-pubsub))
$(eval $(call BuildPackage,python3-google-cloud-pubsub))
#$(eval $(call BuildPackage,python3-google-cloud-pubsub-src))
