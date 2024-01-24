# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=versioneer
PKG_VERSION:=0.29
PKG_RELEASE:=1

PYPI_NAME:=versioneer
PKG_HASH:=5ab283b9857211d61b53318b7c792cf68e798e765ee17c27ade9f6c924235731

PKG_LICENSE:=
PKG_LICENSE_FILES:=LICENSE

PKG_HOST_ONLY:=1

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-versioneer
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=version-string management for VCS-controlled trees
  URL:=https://github.com/mesonbuild/python-versioneer
  DEPENDS:=+python3
  BUILDONLY:=1
endef

define Package/python3-versioneer/description
  Easy VCS-based management of project version strings.
endef

$(eval $(call Py3Package,python3-versioneer))
$(eval $(call BuildPackage,python3-versioneer))
#$(eval $(call BuildPackage,python3-versioneer-src))
$(eval $(call HostBuild))
