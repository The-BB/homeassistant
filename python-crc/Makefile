# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=crc
PKG_VERSION:=4.3.0
PKG_RELEASE:=1

PYPI_NAME:=crc
PKG_HASH:=02be8a4e1b8aaa7f8685f05699b577286983aee2394e223d7aa894825954a8c6

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-crc
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Calculate and verify predefined & custom CRC's
  URL:=https://nicoretti.github.io/crc
  DEPENDS:=+python3-light
endef

define Package/python3-crc/description
  Calculate CRC checksums, verify CRC checksum, predefined
  CRC configurations, custom CRC configurations.
endef

$(eval $(call Py3Package,python3-crc))
$(eval $(call BuildPackage,python3-crc))
#$(eval $(call BuildPackage,python3-crc-src))
