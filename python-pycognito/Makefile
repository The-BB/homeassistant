# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pycognito
PKG_VERSION:=2022.12.0
PKG_RELEASE:=1

PYPI_NAME:=pycognito
PKG_HASH:=49cc07420f3862942ee7e6903633d7a12f7dd12c3bd2e7546beff5815513d92f

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
  DEPENDS:=+python3-boto3 +python3-envs +python3-jose +python3-requests
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
