# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=referencing
PKG_VERSION:=0.30.2
PKG_RELEASE:=1

PYPI_NAME:=referencing
PKG_HASH:=794ad8003c65938edcdbc027f1933215e0d0ccc0291e3ce20a4d87432b59efc0

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-referencing
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=JSON Referencing + Python
  URL:=https://github.com/python-jsonschema/referencing
  DEPENDS:=+python3-attrs +python3-urllib
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-rpds-py
endef

define Package/python3-referencing/description
  An implementation-agnostic implementation of JSON reference resolution.
endef

$(eval $(call Py3Package,python3-referencing))
$(eval $(call BuildPackage,python3-referencing))
#$(eval $(call BuildPackage,python3-referencing-src))
