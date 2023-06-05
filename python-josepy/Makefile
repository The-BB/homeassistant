# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=josepy
PKG_VERSION:=1.13.0
PKG_RELEASE:=2

PYPI_NAME:=josepy
PKG_HASH:=8931daf38f8a4c85274a0e8b7cb25addfd8d1f28f9fb8fbed053dd51aec75dc9

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-josepy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=JOSE protocol implementation in Python
  URL:=https://github.com/certbot/josepy
  DEPENDS:=+python3-logging +python3-pyopenssl +python3-setuptools
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-josepy/description
  JOSE protocol implementation in Python using cryptography.
endef

$(eval $(call Py3Package,python3-josepy))
$(eval $(call BuildPackage,python3-josepy))
#$(eval $(call BuildPackage,python3-josepy-src))
