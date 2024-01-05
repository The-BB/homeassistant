# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=expandvars
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PYPI_NAME:=expandvars
PKG_HASH:=7d1adfa55728cf4b5d812ece3d087703faea953e0c0a1a78415de9df5024d844

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_HOST_ONLY:=1
HOST_BUILD_DEPENDS:=python-hatchling/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-expandvars
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Expand system variables Unix style
  URL:=https://github.com/sayanarijit/expandvars
  DEPENDS:=+python3
  BUILDONLY:=1
endef

define Package/python3-expandvars/description
  Expand system variables Unix style.
endef

$(eval $(call Py3Package,python3-expandvars))
$(eval $(call BuildPackage,python3-expandvars))
$(eval $(call BuildPackage,python3-expandvars-src))
$(eval $(call HostBuild))
