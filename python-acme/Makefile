#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-acme
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=acme
PKG_HASH:=38a1630c98e144136c62eec4d2c545a1bdb1a3cd4eca82214be6b83a1f5a161f

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
$(eval $(call BuildPackage,python3-acme-src))
