# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyturbojpeg
PKG_VERSION:=1.6.6
PKG_RELEASE:=2

PYPI_NAME:=PyTurboJPEG
PKG_HASH:=80dd153484a8830dab4ebe7c0ee1cb43c5723a0e951375fd4ff8fa7f0d04757c

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
  DEPENDS:= \
	+libturbojpeg \
	+python3-ctypes \
	+python3-numpy
endef

define Package/python3-pyturbojpeg/description
  A Python wrapper of libjpeg-turbo for decoding and encoding JPEG image.
endef

$(eval $(call Py3Package,python3-pyturbojpeg))
$(eval $(call BuildPackage,python3-pyturbojpeg))
#$(eval $(call BuildPackage,python3-pyturbojpeg-src))
