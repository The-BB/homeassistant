# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=termcolor
PKG_VERSION:=1.1.0
PKG_RELEASE:=2

PYPI_NAME:=termcolor
PKG_HASH:=1d6d69ce66211143803fbc56652b41d73b4a400a2891d7bf7a1cdf4c02de613b

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-termcolor
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ANSII Color formatting for output in terminal
  URL:=http://pypi.python.org/pypi/termcolor
  DEPENDS:=+python3-light
endef

define Package/python3-termcolor/description
  ANSII Color formatting for output in terminal.
endef

$(eval $(call Py3Package,python3-termcolor))
$(eval $(call BuildPackage,python3-termcolor))
#$(eval $(call BuildPackage,python3-termcolor-src))
