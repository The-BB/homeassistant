# SPDX-License-Identifier: WTFPL

include $(TOPDIR)/rules.mk

PKG_NAME:=brotli
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=Brotli
PKG_HASH:=81de08ac11bcb85841e440c13611c00b67d3bf82698314928d0b676362546724

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-brotli
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Brotli compression format
  URL:=https://github.com/google/brotli
  DEPENDS:=+libpython3
endef

define Package/python3-brotli/description
  Python bindings for the Brotli compression library.
endef

PYTHON3_PKG_SETUP_GLOBAL_ARGS += build_ext --inplace

$(eval $(call Py3Package,python3-brotli))
$(eval $(call BuildPackage,python3-brotli))
#$(eval $(call BuildPackage,python3-brotli-src))
