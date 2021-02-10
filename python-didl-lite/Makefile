# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-didl-lite
PKG_VERSION:=1.2.5
PKG_RELEASE:=1

PYPI_NAME:=python-didl-lite
PKG_HASH:=8f001fad706250534586af21c1a9c69bf34ad0e2b0e921725f15d9d3efe5b768

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-didl-lite
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=DIDL-Lite (Digital Item Declaration Language) tools
  URL:=https://github.com/StevenLooman/python-didl-lite
  DEPENDS:=+python3-defusedxml
endef

define Package/python3-didl-lite/description
  DIDL-Lite tools for Python to read and write DIDL-Lite-xml.
endef

$(eval $(call Py3Package,python3-didl-lite))
$(eval $(call BuildPackage,python3-didl-lite))
$(eval $(call BuildPackage,python3-didl-lite-src))
