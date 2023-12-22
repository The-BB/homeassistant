# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zigpy-znp
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PYPI_NAME:=zigpy-znp
PKG_HASH:=8842df73474d2a43d91b8162b1e3763ac60276ad2296f160be46996a82f87012

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-zigpy-znp
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library for zigpy which communicates with TI ZNP radios
  URL:=https://github.com/zigpy/zigpy-znp
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-async-timeout \
	+python3-coloredlogs \
	+python3-jsonschema \
	+python3-voluptuous \
	+python3-zigpy
endef

define Package/python3-zigpy-znp/description
  zigpy-znp is a Python library that adds support for common
  Texas Instruments ZNP (Zigbee Network Processors) Zigbee
  radio modules to zigpy, a Python Zigbee stack project.
endef

$(eval $(call Py3Package,python3-zigpy-znp))
$(eval $(call BuildPackage,python3-zigpy-znp))
#$(eval $(call BuildPackage,python3-zigpy-znp-src))
