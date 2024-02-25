# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=colorlog
PKG_VERSION:=6.8.2
PKG_RELEASE:=1

PYPI_NAME:=colorlog
PKG_HASH:=3e3e079a41feb5a1b64f978b5ea4f46040a94f11f0e8bbb8261e3dbbeca64d44

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
  DEPENDS:=+python3-logging
endef

define Package/python3-colorlog/description
  Add colours to the output of Python's logging module.
endef

$(eval $(call Py3Package,python3-colorlog))
$(eval $(call BuildPackage,python3-colorlog))
#$(eval $(call BuildPackage,python3-colorlog-src))
