# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-jose
PKG_VERSION:=3.3.0
PKG_RELEASE:=3

PYPI_NAME:=python-jose
PKG_HASH:=55779b5e6ad599c6336191246e95eb2293a9ddebd555f796a65f838f07e5d78a

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-jose
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=JOSE implementation in Python
  URL:=http://github.com/mpdavis/python-jose
  DEPENDS:=+python3-cryptography +python3-ecdsa +python3-pyasn1 +python3-rsa
endef

define Package/python3-jose/description
  A JOSE implementation in Python.
  .
  The JavaScript Object Signing and Encryption (JOSE) technologies - JSON Web
 Signature (JWS), JSON Web Encryption (JWE), JSON Web Key (JWK), and JSON Web
 Algorithms (JWA) - collectively can be used to encrypt and/or sign content 
 using a variety of algorithms.
endef

$(eval $(call Py3Package,python3-jose))
$(eval $(call BuildPackage,python3-jose))
#$(eval $(call BuildPackage,python3-jose-src))
