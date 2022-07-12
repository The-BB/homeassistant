# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-securetar
PKG_VERSION:=2022.2.0
PKG_RELEASE:=1

PYPI_NAME:=securetar
PKG_HASH:=dba5275229a5e3c2bf71101e6ac083606408ba4705b5fd54b41b4b15a879016c

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-securetar
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=module to handle tarfile backups
  URL:=https://github.com/pvizeli/securetar
  DEPENDS:= \
	+python3-logging
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-securetar/description
  Secure Tarfile library.
endef

$(eval $(call Py3Package,python3-securetar))
$(eval $(call BuildPackage,python3-securetar))
#$(eval $(call BuildPackage,python3-securetar-src))
