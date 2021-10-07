# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyturbojpeg
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PYPI_NAME:=PyTurboJPEG
PKG_HASH:=4625a40e80444cc62280075bc5d8f9c5be61b7d990e6ace27c4d689aa4d5665a

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
  DEPENDS:=+python3-numpy +libjpeg-turbo
endef

define Package/python3-pyturbojpeg/description
  A Python wrapper of libjpeg-turbo for decoding and encoding JPEG image.
endef

$(eval $(call Py3Package,python3-pyturbojpeg))
$(eval $(call BuildPackage,python3-pyturbojpeg))
#$(eval $(call BuildPackage,python3-pyturbojpeg-src))
