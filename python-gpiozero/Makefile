# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=gpiozero
PKG_VERSION:=1.6.2
PKG_RELEASE:=1

PYPI_NAME:=gpiozero
PKG_HASH:=0eb95a9db372146813276f92de7f43c883a3e9fe69597fc3d29c04ef3d5d5f9e

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-gpiozero
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A simple interface to GPIO devices with Raspberry Pi
  URL:=https://gpiozero.readthedocs.io
  DEPENDS:=+python3-colorzero
endef

define Package/python3-gpiozero/description
  A simple interface to GPIO devices with Raspberry Pi,
  developed and maintained by Ben Nuttall and Dave Jones.
endef

$(eval $(call Py3Package,python3-gpiozero))
$(eval $(call BuildPackage,python3-gpiozero))
#$(eval $(call BuildPackage,python3-gpiozero-src))
