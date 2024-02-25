# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=meson-python
PKG_VERSION:=0.13.1
PKG_RELEASE:=2

PYPI_NAME:=meson_python
PKG_HASH:=63b3170001425c42fa4cfedadb9051cbd28925ff8eed7c40d36ba0099e3c7618

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=pyproject-metadata/host
PKG_HOST_ONLY:=1

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk
include $(INCLUDE_DIR)/meson.mk

define Package/meson-python
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Meson PEP 517 Python build backend
  URL:=https://github.com/mesonbuild/meson-python
  DEPENDS:=+python3-pyproject-metadata
  BUILDONLY:=1
endef

define Package/meson-python/description
  meson-python is a Python build backend built on top
  of the Meson build system. It enables to use Meson for the configuration
  and build steps of Python packages. Meson is an open source build system
  meant to be both extremely fast, and, even more importantly, as user
  friendly as possible. meson-python is best suited for building Python
  packages containing extension modules implemented in languages such as C,
  C++, Cython, Fortran, Pythran, or Rust.
endef

define FixPython
	$(SED) "s,^python.*,python = '$(STAGING_DIR_HOSTPKG)/bin/python3'," \
		$(HOST_BUILD_DIR)/openwrt-*.txt
endef
Hooks/HostCompile/Pre += FixPython

define Host/Uninstall
	rm -rf $(HOST_PYTHON3_PKG_DIR)/mesonpy
endef

$(eval $(call Py3Package,meson-python))
$(eval $(call BuildPackage,meson-python))
#$(eval $(call BuildPackage,meson-python-src))
$(eval $(call HostBuild))
