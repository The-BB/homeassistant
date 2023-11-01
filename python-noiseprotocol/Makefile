# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=noiseprotocol
PKG_VERSION:=0.3.1
PKG_RELEASE:=1

PYPI_NAME:=noiseprotocol
PKG_HASH:=b092a871b60f6a8f07f17950dc9f7098c8fe7d715b049bd4c24ee3752b90d645

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-noiseprotocol
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Implementation of Noise Protocol Framework
  URL:=https://github.com/plizonczyk/noiseprotocol
  DEPENDS:=+python3-light
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-noiseprotocol/description
  Noise Protocol Framework - Python 3 implementation.
endef

$(eval $(call Py3Package,python3-noiseprotocol))
$(eval $(call BuildPackage,python3-noiseprotocol))
#$(eval $(call BuildPackage,python3-noiseprotocol-src))
