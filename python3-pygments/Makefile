# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pygments
PKG_VERSION:=2.12.0
PKG_RELEASE:=1

PYPI_NAME:=Pygments
PKG_HASH:=5eb116118f9612ff1ee89ac96437bb6b49e8f04d8a13b514ba26f620208e26eb

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pygments
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=a generic syntax highlighter
  URL:=https://pygments.org/
  DEPENDS:= \
	+python3-codecs \
	+python3-urllib \
	+python3-pillow \
	+python3-numpy
endef

define Package/python3-pygments/description
  Pygments is a generic syntax highlighter written in Python.
endef

$(eval $(call Py3Package,python3-pygments))
$(eval $(call BuildPackage,python3-pygments))
#$(eval $(call BuildPackage,python3-pygments-src))
