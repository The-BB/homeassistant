# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyproject-metadata
PKG_VERSION:=0.7.1
PKG_RELEASE:=1

PYPI_NAME:=pyproject-metadata
PKG_HASH:=0a94f18b108b9b21f3a26a3d541f056c34edcb17dc872a144a15618fed7aef67

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_HOST_ONLY:=1
HOST_BUILD_DEPENDS:=python-flit-core/host python-packaging/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pyproject-metadata
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=PEP 621 metadata parsing
  URL:=https://github.com/pypa/pyproject-metadata
  DEPENDS:=+python3-packaging
  BUILDONLY:=1
endef

define Package/python3-pyproject-metadata/description
  PEP 621 metadata parsing.
endef

$(eval $(call Py3Package,python3-pyproject-metadata))
$(eval $(call BuildPackage,python3-pyproject-metadata))
#$(eval $(call BuildPackage,python3-pyproject-metadata-src))
$(eval $(call HostBuild))
