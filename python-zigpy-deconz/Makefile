# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zigpy-deconz
PKG_VERSION:=0.22.2
PKG_RELEASE:=1

PYPI_NAME:=zigpy-deconz
PKG_HASH:=2d4d247840d4cc50f08572b57798310618d874b3f3d77d2a2fb7cb33382fa29d

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-zigpy-deconz
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library which communicates with Deconz radios
  URL:=https://github.com/zigpy/zigpy-deconz
  DEPENDS:=+python3-asyncio +python3-logging +python3-voluptuous +python3-zigpy
endef

define Package/python3-zigpy-deconz/description
  zigpy-deconz is a Python 3 implementation for the Zigpy
  project to implement deCONZ based Zigbee radio devices.
endef

$(eval $(call Py3Package,python3-zigpy-deconz))
$(eval $(call BuildPackage,python3-zigpy-deconz))
#$(eval $(call BuildPackage,python3-zigpy-deconz-src))
