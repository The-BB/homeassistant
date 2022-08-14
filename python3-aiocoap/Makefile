# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-aiocoap
PKG_VERSION:=0.4.3
PKG_RELEASE:=1

PYPI_NAME:=aiocoap
PKG_HASH:=ac261b0a4425ddedc23deb4b5c8b5ad8a0911041d26bf567e33b459666adc1fc

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aiocoap
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python CoAP library
  URL:=https://github.com/chrysn/aiocoap
  DEPENDS:= \
	+python3-asyncio \
	+python3-cbor2 \
	+python3-dtlssocket \
	+python3-filelock \
	+python3-ge25519 \
	+python3-linkheader \
	+python3-logging \
	+python3-openssl \
	+python3-pygments \
	+python3-readline \
	+python3-termcolor \
	+python3-urllib \
	+python3-websockets
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-aiocoap/description
  The aiocoap package is an implementation of CoAP,
  the Constrained Application Protocol.
endef

$(eval $(call Py3Package,python3-aiocoap))
$(eval $(call BuildPackage,python3-aiocoap))
#$(eval $(call BuildPackage,python3-aiocoap-src))
