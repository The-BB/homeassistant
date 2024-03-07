# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=securetar
PKG_VERSION:=2024.2.1
PKG_RELEASE:=1

PYPI_NAME:=securetar
PKG_HASH:=0475d5d515b52195e1c4095629834dbcf7038be39dea5b734faa59e4286ed068

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
  DEPENDS:=+python3-cryptography +python3-logging
endef

define Package/python3-securetar/description
  Secure Tarfile library.
endef

$(eval $(call Py3Package,python3-securetar))
$(eval $(call BuildPackage,python3-securetar))
#$(eval $(call BuildPackage,python3-securetar-src))
