# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-josepy
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=josepy
PKG_HASH:=c37ff4b93606e6a452b72cdb992da5e0544be12912fac01b31ddbdd61f6d5bd0

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
  DEPENDS:= \
	+python3-cryptography \
	+python3-pyopenssl \
	+python3-setuptools \
	+python3-six
endef

define Package/python3-josepy/description
  JOSE protocol implementation in Python using cryptography.
endef

$(eval $(call Py3Package,python3-josepy))
$(eval $(call BuildPackage,python3-josepy))
$(eval $(call BuildPackage,python3-josepy-src))
