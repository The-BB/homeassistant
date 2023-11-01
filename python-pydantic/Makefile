# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pydantic
PKG_VERSION:=1.10.12
PKG_RELEASE:=2

PYPI_NAME:=pydantic
PKG_HASH:=0fe8a415cea8f340e7a9af9c54fc71a649b43e8ca3cc732986116b3cb135d303

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

#PKG_BUILD_DEPENDS:=python-cython/host # broken cpython>=3

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pydantic
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Data parsing and validation using Python type hints
  URL:=https://github.com/samuelcolvin/pydantic
  DEPENDS:=+python3-decimal +python3-typing-extensions
endef

define Package/python3-pydantic/description
  Data parsing and validation using Python type hints.
endef

PYTHON3_PKG_SETUP_VARS += SKIP_CYTHON=1

$(eval $(call Py3Package,python3-pydantic))
$(eval $(call BuildPackage,python3-pydantic))
#$(eval $(call BuildPackage,python3-pydantic-src))
