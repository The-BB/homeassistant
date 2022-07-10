# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-colorlog
PKG_VERSION:=6.6.0
PKG_RELEASE:=2

PYPI_NAME:=colorlog
PKG_HASH:=344f73204009e4c83c5b6beb00b3c45dc70fcdae3c80db919e0a4171d006fde8

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-colorlog
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Log formatting with colors
  URL:=https://github.com/borntyping/python-colorlog
  DEPENDS:= \
	+python3-logging
endef

define Package/python3-colorlog/description
  Add colours to the output of Python's logging module.
endef

$(eval $(call Py3Package,python3-colorlog))
$(eval $(call BuildPackage,python3-colorlog))
#$(eval $(call BuildPackage,python3-colorlog-src))
