# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=snitun
PKG_VERSION:=0.36.2
PKG_RELEASE:=1

PYPI_NAME:=snitun
PKG_HASH:=a51b4331acb77d72e6f9d6d34a9721d9411d09c804d75abbbccceb76d90076d1

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
