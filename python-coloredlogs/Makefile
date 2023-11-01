# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=coloredlogs
PKG_VERSION:=15.0.1
PKG_RELEASE:=1

PYPI_NAME:=coloredlogs
PKG_HASH:=7c991aa71a4577af2f82600d8f8f3a89f936baeaf9b50a9c197da014e5bf16b0

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-coloredlogs
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Colored terminal output for Python's logging module
  URL:=https://coloredlogs.readthedocs.io
  DEPENDS:=+python3-humanfriendly +python3-logging
endef

define Package/python3-coloredlogs/description
  The coloredlogs package enables colored terminal
  output for Python’s logging module.
endef

$(eval $(call Py3Package,python3-coloredlogs))
$(eval $(call BuildPackage,python3-coloredlogs))
#$(eval $(call BuildPackage,python3-coloredlogs-src))
