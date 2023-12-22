# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=mashumaro
PKG_VERSION:=3.11
PKG_RELEASE:=1

PYPI_NAME:=mashumaro
PKG_HASH:=b0b2443be4bdad29bb209d91fe4a2a918fbd7b63cccfeb457c7eeb567db02f5e

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-mashumaro
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Fast and well tested serialization library
  URL:=https://github.com/Fatal1ty/mashumaro
  DEPENDS:=+python3-decimal +python3-typing-extensions +python3-uuid
endef

define Package/python3-mashumaro/description
  Fast and well tested serialization library.
endef

$(eval $(call Py3Package,python3-mashumaro))
$(eval $(call BuildPackage,python3-mashumaro))
#$(eval $(call BuildPackage,python3-mashumaro-src))
