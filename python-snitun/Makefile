# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=snitun
PKG_VERSION:=0.35.0
PKG_RELEASE:=1

PYPI_NAME:=snitun
PKG_HASH:=cb32bacc55c73c68d2285e9d1f43b096238901fd0ff72c03f26e1c01e1fbd84f

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-snitun
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=SNI proxy with TCP multiplexer
  URL:=https://www.nabucasa.com
  DEPENDS:= \
	+python3-async-timeout \
	+python3-asyncio \
	+python3-attrs \
	+python3-logging \
	+python3-multiprocessing \
	+python3-openssl
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-snitun/description
  End-to-End encryption with SNI proxy on top of a TCP multiplexer.
endef

$(eval $(call Py3Package,python3-snitun))
$(eval $(call BuildPackage,python3-snitun))
#$(eval $(call BuildPackage,python3-snitun-src))
