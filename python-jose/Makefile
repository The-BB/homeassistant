#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-jose
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PYPI_NAME:=python-jose
PKG_HASH:=4e4192402e100b5fb09de5a8ea6bcc39c36ad4526341c123d401e2561720335b

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
  DEPENDS:= \
	+python3-cryptodome \
	+python3-ecdsa \
	+python3-pyasn1 \
	+python3-rsa \
	+python3-six
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
$(eval $(call BuildPackage,python3-jose-src))
