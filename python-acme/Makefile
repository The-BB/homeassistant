# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=acme
PKG_VERSION:=1.31.0
PKG_RELEASE:=2

PYPI_NAME:=acme
PKG_HASH:=f5e13262fa1101c38dd865378ac8b4639f819120eb66c5538fc6c09b7576fc53

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
	+python3-email \
	+python3-josepy \
	+python3-logging \
	+python3-pyopenssl \
	+python3-pyrfc3339 \
	+python3-pytz \
	+python3-requests-toolbelt \
	+python3-requests \
	+python3-setuptools
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-acme/description
  ACME protocol implementation in Python.
endef

$(eval $(call Py3Package,python3-acme))
$(eval $(call BuildPackage,python3-acme))
#$(eval $(call BuildPackage,python3-acme-src))
