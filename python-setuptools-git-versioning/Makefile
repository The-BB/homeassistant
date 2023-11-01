# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=setuptools-git-versioning
PKG_VERSION:=1.13.5
PKG_RELEASE:=1

PYPI_NAME:=setuptools-git-versioning
PKG_HASH:=af9ad1e8103b5abb5b128c2db4fef99407328ac9c12f65d3ff9550c4bb39ad1c

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-packaging/host

PKG_HOST_ONLY:=1

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-setuptools-git-versioning
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=use git repo data
  URL:=https://setuptools-git-versioning.readthedocs.io
  DEPENDS:= \
	+python3-distutils \
	+python3-logging \
	+python3-packaging \
	+python3-setuptools
  BUILDONLY:=1
endef

define Package/python3-setuptools-git-versioning/description
  Use git repo data for building a version number according PEP-440.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-setuptools-git-versioning))
$(eval $(call BuildPackage,python3-setuptools-git-versioning))
#$(eval $(call BuildPackage,python3-setuptools-git-versioning-src))
