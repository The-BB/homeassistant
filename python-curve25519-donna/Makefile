# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-curve25519-donna
PKG_VERSION:=1.3
PKG_RELEASE:=1

PYPI_NAME:=curve25519-donna
PKG_HASH:=1818a9d5356a05c022cd504f44fe1d2f641a5c020f8a4c51b2294e02bd9c1bf0

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

# XXX error: option --single-version-externally-managed not recognized
PYTHON3_PKG_SETUP_ARGS:=

define Package/python3-curve25519-donna
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=wrapper for the Curve25519 cryptographic library
  URL:=http://code.google.com/p/curve25519-donna
  DEPENDS:=+python3-light
endef

define Package/python3-curve25519-donna/description
  Curve25519 is a fast elliptic-curve key-agreement protocol, in which two
  parties Alice and Bob each generate a (public,private) keypair, exchange
  public keys, and can then compute the same shared key. Specifically, Alice
  computes F(Aprivate, Bpublic), Bob computes F(Bprivate, Apublic), and both
  get the same value (and nobody else can guess that shared value, even if
  they know Apublic and Bpublic).
endef

$(eval $(call Py3Package,python3-curve25519-donna))
$(eval $(call BuildPackage,python3-curve25519-donna))
$(eval $(call BuildPackage,python3-curve25519-donna-src))
