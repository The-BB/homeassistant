# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=dacite
PKG_VERSION:=1.8.1
PKG_RELEASE:=1

PYPI_NAME:=dacite
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/konradhalas/dacite/tar.gz/refs/tags/v$(PKG_VERSION)?
PKG_HASH:=791ac3da85a040684a96df59e2320dc7b3cac000ff536e3f4b00fb3b67520b86

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PYPI_NAME)-$(PKG_VERSION)

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-dacite
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Simple creation of data classes from dictionaries
  URL:=https://github.com/konradhalas/dacite
  DEPENDS:=+python3-light
endef

define Package/python3-dacite/description
  This module simplifies creation of data classes (PEP 557) from dictionaries.
endef

$(eval $(call Py3Package,python3-dacite))
$(eval $(call BuildPackage,python3-dacite))
#$(eval $(call BuildPackage,python3-dacite-src))
