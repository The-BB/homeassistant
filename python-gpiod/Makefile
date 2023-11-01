# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=gpiod
PKG_VERSION:=1.5.4
PKG_RELEASE:=1

PYPI_NAME:=gpiod
PKG_HASH:=d8e4daa655dee75c33a49f5859b2e36c72385021c06c5552968294b1ad5c2dd0

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-gpiod
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=library with almost the same usage as libgpiodcxx
  URL:=https://github.com/hhk7734/python3-gpiod
  DEPENDS:=+python3-ctypes
endef

define Package/python3-gpiod/description
  It is a pure Python library and has no dependencies on other packages!!
endef

$(eval $(call Py3Package,python3-gpiod))
$(eval $(call BuildPackage,python3-gpiod))
#$(eval $(call BuildPackage,python3-gpiod-src))
