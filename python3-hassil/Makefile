# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-hassil
PKG_VERSION:=0.2.6
PKG_RELEASE:=1

PYPI_NAME:=hassil
PKG_HASH:=29bcc664b5be1eb1b899e39ad265538778e6b78de047197dc8df5ab16303c626

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
  DEPENDS:= \
	+python3-antlr4-python3-runtime \
	+python3-codecs \
	+python3-logging \
	+python3-yaml
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
