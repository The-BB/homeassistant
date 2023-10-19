# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pybind11
PKG_VERSION:=2.11.1
PKG_RELEASE:=1

PYPI_NAME:=pybind11
PKG_HASH:=00cd59116a6e8155aecd9174f37ba299d1d397ed4a6b86ac1dfe01b3e40f2cc4

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-wheel/host

PKG_HOST_ONLY:=1

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pybind11
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Seamless operability between C++11 and Python
  URL:=https://github.com/pybind/pybind11
  DEPENDS:=+python3
  BUILDONLY:=1
endef

define Package/python3-pybind11/description
  pybind11 is a lightweight header-only library that exposes C++ types in
  Python and vice versa, mainly to create Python bindings of existing C++
  code.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pybind11))
$(eval $(call BuildPackage,python3-pybind11))
#$(eval $(call BuildPackage,python3-pybind11-src))
