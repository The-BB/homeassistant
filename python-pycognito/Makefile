# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pycognito
PKG_VERSION:=2023.5.0
PKG_RELEASE:=1

PYPI_NAME:=pycognito
PKG_HASH:=3843cfff56969f7c4b0b2fd499877941d0bf33e39c4541dc896c2b83bef5db24

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pycognito
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=class to integrate Boto3's Cognito client
  URL:=https://github.com/pvizeli/pycognito
  DEPENDS:= \
	+python3-boto3 \
	+python3-cryptography \
	+python3-envs \
	+python3-jose \
	+python3-requests
endef

define Package/python3-pycognito/description
  Python class to integrate Boto3's Cognito client so it is easy to login users.
 With SRP support.
endef

$(eval $(call Py3Package,python3-pycognito))
$(eval $(call BuildPackage,python3-pycognito))
#$(eval $(call BuildPackage,python3-pycognito-src))
