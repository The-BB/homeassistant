# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-google-cloud-pubsub
PKG_VERSION:=2.13.11
PKG_RELEASE:=1

PYPI_NAME:=google-cloud-pubsub
PKG_HASH:=085878ecfbb3991fea6af3a011aa2dd9f5415d19c760d0de9a58524d2aa1bade

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
