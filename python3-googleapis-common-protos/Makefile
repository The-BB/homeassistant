# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-googleapis-common-protos
PKG_VERSION:=1.54.0
PKG_RELEASE:=1

PYPI_NAME:=googleapis-common-protos
PKG_HASH:=a4031d6ec6c2b1b6dc3e0be7e10a1bd72fb0b18b07ef9be7b51f2c1004ce2437

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-googleapis-common-protos
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Common protobufs used in Google APIs
  URL:=https://github.com/googleapis/python-api-common-protos
  DEPENDS:= \
	+python3-grpcio \
	+python3-protobuf
endef

define Package/python3-googleapis-common-protos/description
  Google APIs common protos.
endef

$(eval $(call Py3Package,python3-googleapis-common-protos))
$(eval $(call BuildPackage,python3-googleapis-common-protos))
#$(eval $(call BuildPackage,python3-googleapis-common-protos-src))
