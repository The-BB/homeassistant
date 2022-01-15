# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-typing-inspect
PKG_VERSION:=0.7.1
PKG_RELEASE:=1

PYPI_NAME:=typing_inspect
PKG_HASH:=047d4097d9b17f46531bf6f014356111a1b6fb821a24fe7ac909853ca2a782aa

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-typing-inspect
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Runtime inspection utilities for typing module
  URL:=https://github.com/ilevkivskyi/typing_inspect
  DEPENDS:= \
	+python3-mypy-extensions \
	+python3-typing-extensions
endef

define Package/python3-typing-inspect/description
  The typing_inspect module defines experimental API for runtime inspection
  of types defined in the Python standard typing module.
endef

$(eval $(call Py3Package,python3-typing-inspect))
$(eval $(call BuildPackage,python3-typing-inspect))
#$(eval $(call BuildPackage,python3-typing-inspect-src))
