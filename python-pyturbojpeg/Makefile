# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pyturbojpeg
PKG_VERSION:=1.7.1
PKG_RELEASE:=1

PYPI_NAME:=PyTurboJPEG
PKG_HASH:=477bdda455ba628ee361e49e15caf777ea1770127c4d29af4d0afb1e3f9b6cc0

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyturbojpeg
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a wrapper of libjpeg-turbo
  URL:=https://github.com/lilohuang/PyTurboJPEG
  DEPENDS:=+libturbojpeg +python3-ctypes +python3-numpy
endef

define Package/python3-pyturbojpeg/description
  A Python wrapper of libjpeg-turbo for decoding and encoding JPEG image.
endef

$(eval $(call Py3Package,python3-pyturbojpeg))
$(eval $(call BuildPackage,python3-pyturbojpeg))
#$(eval $(call BuildPackage,python3-pyturbojpeg-src))
