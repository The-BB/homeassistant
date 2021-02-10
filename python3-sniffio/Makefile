# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-sniffio
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=sniffio
PKG_HASH:=c4666eecec1d3f50960c6bdf61ab7bc350648da6c126e3cf6898d8cd4ddcd3de

PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE LICENSE.APACHE2 LICENSE.MIT

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-sniffio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=sniff out which async library your code is running under
  URL:=https://github.com/python-trio/sniffio
  DEPENDS:= \
	+python3-contextvars \
	+python3-requires
endef

define Package/python3-sniffio/description
  Sniff out which async library your code is running under.
endef

$(eval $(call Py3Package,python3-sniffio))
$(eval $(call BuildPackage,python3-sniffio))
$(eval $(call BuildPackage,python3-sniffio-src))
