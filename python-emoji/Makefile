# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-emoji
PKG_VERSION:=1.6.3
PKG_RELEASE:=1

PYPI_NAME:=emoji
PKG_HASH:=cc28bdc1010b1c03c241f69c7af1e8715144ef45a273bfadc14dc89319ba26d0

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-emoji
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Emoji for Python
  URL:=https://github.com/carpedm20/emoji
  DEPENDS:=+python3-light
endef

define Package/python3-emoji/description
  Emoji for Python.
endef

$(eval $(call Py3Package,python3-emoji))
$(eval $(call BuildPackage,python3-emoji))
#$(eval $(call BuildPackage,python3-emoji-src))
