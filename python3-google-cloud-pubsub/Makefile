# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-google-cloud-pubsub
PKG_VERSION:=2.9.0
PKG_RELEASE:=2

PYPI_NAME:=google-cloud-pubsub
PKG_HASH:=2b3d9336afab0e5df67201234976519a28da3ccb7c9a0e463be28e2827a9fdaa

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
	+python3-google-api-core \
	+python3-grpc-google-iam-v1 \
	+python3-grpcio \
	+python3-libcst \
	+python3-logging \
	+python3-proto-plus
endef

define Package/python3-google-cloud-pubsub/description
  Google Cloud Pub / Sub is a fully-managed real-time messaging service that
  allows you to send and receive messages between independent applications.
endef

define Build/Prepare
	$(Build/Prepare/Default)
	mv $(PKG_BUILD_DIR)/scripts/fixup_pubsub_v1_keywords.py \
		$(PKG_BUILD_DIR)/scripts/fixup_pubsub_v1_keywords
endef


$(eval $(call Py3Package,python3-google-cloud-pubsub))
$(eval $(call BuildPackage,python3-google-cloud-pubsub))
#$(eval $(call BuildPackage,python3-google-cloud-pubsub-src))
