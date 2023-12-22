# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=unicode-rbnf
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=unicode-rbnf
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/rhasspy/unicode-rbnf/tar.gz/refs/tags/v$(PKG_VERSION)?
PKG_HASH:=dc1b0791fa62d66830e8582fbc6345febf3facd92d137958d2fec8a1f8c1da19

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PYPI_NAME)-$(PKG_VERSION)

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-unicode-rbnf
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Rule-based number formatting using Unicode CLDR data
  URL:=https://github.com/rhasspy/unicode-rbnf
  DEPENDS:=+python3-logging +python3-xml
endef

define Package/python3-unicode-rbnf/description
  A pure Python implementation of ICU's rule-based number format engine.
endef

$(eval $(call Py3Package,python3-unicode-rbnf))
$(eval $(call BuildPackage,python3-unicode-rbnf))
#$(eval $(call BuildPackage,python3-unicode-rbnf-src))
