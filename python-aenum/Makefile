# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=aenum
PKG_VERSION:=3.1.15
PKG_RELEASE:=1

PYPI_NAME:=aenum
PKG_HASH:=8cbd76cd18c4f870ff39b24284d3ea028fbe8731a58df3aa581e434c575b9559

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=aenum/LICENSE

PYTHON3_PKG_FORCE_DISTUTILS_SETUP:=1

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-aenum
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Advanced Enumerations for Python
  URL:=https://github.com/ethanfurman/aenum
  DEPENDS:=+python3-pydoc +python3-sqlite3 +python3-unittest +python3-uuid
endef

define Package/python3-aenum/description
  Advanced Enumerations (compatible with Python's stdlib Enum),
  NamedTuples, and NamedConstants.
endef

$(eval $(call Py3Package,python3-aenum))
$(eval $(call BuildPackage,python3-aenum))
#$(eval $(call BuildPackage,python3-aenum-src))
