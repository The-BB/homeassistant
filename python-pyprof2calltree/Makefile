# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyprof2calltree
PKG_VERSION:=1.4.5
PKG_RELEASE:=1

PYPI_NAME:=pyprof2calltree
PKG_HASH:=a635672ff31677486350b2be9a823ef92f740e6354a6aeda8fa4a8a3768e8f2f

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyprof2calltree
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Profile python programs and view them with kcachegrind
  URL:=https://github.com/pwaller/pyprof2calltree/
  DEPENDS:= \
	+python3-light
endef

define Package/python3-pyprof2calltree/description
  Help visualize profiling data from cProfile with kcachegrind and qcachegrind.
endef

$(eval $(call Py3Package,python3-pyprof2calltree))
$(eval $(call BuildPackage,python3-pyprof2calltree))
#$(eval $(call BuildPackage,python3-pyprof2calltree-src))
