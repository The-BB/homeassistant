# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pycognito
PKG_VERSION:=2022.1.0
PKG_RELEASE:=2

PYPI_NAME:=pycognito
PKG_HASH:=4deeef59bdee15b946d07ab48c6b7a8201b2a872d9040a27baeacd84674e7d0f

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
	+python3-envs \
	+python3-jose \
	+python3-requests
# (rust-lang pkgs): python-jose[cryptography]
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-pycognito/description
  Python class to integrate Boto3's Cognito client so it is easy to login users.
 With SRP support.
endef

$(eval $(call Py3Package,python3-pycognito))
$(eval $(call BuildPackage,python3-pycognito))
#$(eval $(call BuildPackage,python3-pycognito-src))
