# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pydantic
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=pydantic
PKG_HASH:=742645059757a56ecd886faf4ed2441b9c0cd406079c2b4bee51bcc3fbcd510a

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pydantic
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Data parsing and validation using Python type hints
  URL:=https://github.com/samuelcolvin/pydantic
  DEPENDS:= \
	+python3-decimal \
	+python3-typing-extensions
endef

define Package/python3-pydantic/description
  Data parsing and validation using Python type hints.
endef

$(eval $(call Py3Package,python3-pydantic))
$(eval $(call BuildPackage,python3-pydantic))
#$(eval $(call BuildPackage,python3-pydantic-src))
