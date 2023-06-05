# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=dtlssocket
PKG_VERSION:=0.1.12
PKG_RELEASE:=2

PYPI_NAME:=DTLSSocket
PKG_HASH:=909a8f52f1890ec9e92fd46ef609daa8875c2a1c262c0b61200e73c6c2dd5099

PKG_LICENSE:=EPL-1.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-dtlssocket
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a cython wrapper for tinydtls
  URL:=https://git.fslab.de/jkonra2m/tinydtls-cython
  DEPENDS:=+libpython3 +python3-light
endef

define Package/python3-dtlssocket/description
  DTLSSocket is a cython wrapper for tinydtls with a Socket like interface.
endef

PYTHON3_PKG_SETUP_GLOBAL_ARGS += build_ext

$(eval $(call Py3Package,python3-dtlssocket))
$(eval $(call BuildPackage,python3-dtlssocket))
#$(eval $(call BuildPackage,python3-dtlssocket-src))
