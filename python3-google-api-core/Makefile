# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-google-api-core
PKG_VERSION:=1.31.2
PKG_RELEASE:=1

PYPI_NAME:=google-api-core
PKG_HASH:=8500aded318fdb235130bf183c726a05a9cb7c4b09c266bd5119b86cdb8a4d10

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-google-api-core
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Google API client core library
  URL:=https://github.com/googleapis/python-api-core
  DEPENDS:= \
	+python3-protobuf \
	+python3-googleapis-common-protos \
	+python3-google-auth \
	+python3-grpcio \
	+python3-packaging \
	+python3-protobuf \
	+python3-pytz \
	+python3-requests \
	+python3-setuptools \
	+python3-six
endef

define Package/python3-google-api-core/description
  This library is not meant to stand-alone. Instead it defines common
  helpers used by all Google API clients.
endef

$(eval $(call Py3Package,python3-google-api-core))
$(eval $(call BuildPackage,python3-google-api-core))
#$(eval $(call BuildPackage,python3-google-api-core-src))
