# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=zigpy
PKG_VERSION:=0.60.4
PKG_RELEASE:=1

PYPI_NAME:=zigpy
PKG_HASH:=767652fc92174c87e98443ec2e5728b3f46aee82e5af4fecc66c390f70b0e30c

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-zigpy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library implementing a Zigbee stack
  URL:=https://github.com/zigpy/zigpy
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-sqlite3 \
	+python3-urllib \
	+python3-attrs \
	+python3-aiohttp \
	+python3-aiosqlite \
	+python3-async-timeout \
	+python3-crccheck \
	+python3-pyserial-asyncio \
	+python3-typing-extensions \
	+python3-voluptuous
# (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/python3-zigpy/description
  zigpy is a hardware independent Zigbee protocol stack integration project
  to implement Zigbee standard specifications as a Python 3 library.
endef

$(eval $(call Py3Package,python3-zigpy))
$(eval $(call BuildPackage,python3-zigpy))
#$(eval $(call BuildPackage,python3-zigpy-src))
