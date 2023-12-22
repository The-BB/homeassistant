# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=hassil
PKG_VERSION:=1.5.1
PKG_RELEASE:=1

PYPI_NAME:=hassil
PKG_HASH:=18bbc34fc05406f133822a8a697a2417dd768377ce1fe2ac5e799e3972307bd5

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-hassil
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The Home Assistant Intent Language parser
  URL:=https://github.com/home-assistant/hassil
  DEPENDS:=+python3-codecs +python3-logging +python3-unicode-rbnf +python3-yaml
endef

define Package/python3-hassil/description
  The Home Assistant Intent Language (HassIL) parser for intents.
endef

define Py3Package/python3-hassil/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/tests
endef

$(eval $(call Py3Package,python3-hassil))
$(eval $(call BuildPackage,python3-hassil))
#$(eval $(call BuildPackage,python3-hassil-src))
