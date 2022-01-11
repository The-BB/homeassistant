# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-acme
PKG_VERSION:=1.22.0
PKG_RELEASE:=1

PYPI_NAME:=acme
PKG_HASH:=05434e486a0e0958e197bd5eb28a07d87d930e0045bf00a190cf645d253a0dd9

PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-acme
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ACME protocol implementation
  URL:=https://github.com/letsencrypt/letsencrypt
  DEPENDS:= \
	+python3-cryptography \
	+python3-josepy \
	+python3-pyopenssl \
	+python3-pyrfc3339 \
	+python3-pytz \
	+python3-requests-toolbelt \
	+python3-requests \
	+python3-setuptools \
	+python3-six
endef

define Package/python3-acme/description
  ACME protocol implementation in Python.
endef

$(eval $(call Py3Package,python3-acme))
$(eval $(call BuildPackage,python3-acme))
#$(eval $(call BuildPackage,python3-acme-src))
