#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-snitun
PKG_VERSION:=0.20
PKG_RELEASE:=1

PYPI_NAME:=snitun
PKG_HASH:=c74f4ff82f8e106859652d0f7207e0533137742ab300693198909b37c097c27b

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
	+python3-attrs \
	+python3-cryptography
endef

define Package/python3-snitun/description
  End-to-End encryption with SNI proxy on top of a TCP multiplexer.
endef

$(eval $(call Py3Package,python3-snitun))
$(eval $(call BuildPackage,python3-snitun))
$(eval $(call BuildPackage,python3-snitun-src))
