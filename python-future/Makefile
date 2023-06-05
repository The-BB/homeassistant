# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=future
PKG_VERSION:=0.18.2
PKG_RELEASE:=2

PYPI_NAME:=future
PKG_HASH:=b1bead90b70cf6ec3f0710ae53a525360fa360d306a86583adc6bf83a4db537d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-future
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Clean single-source support for Python
  URL:=https://python-future.org/
  DEPENDS:= \
	+python3-dbm \
	+python3-decimal \
	+python3-distutils \
	+python3-email \
	+python3-logging \
	+python3-openssl \
	+python3-pydoc \
	+python3-urllib \
	+python3-xml
endef

define Package/python3-future/description
  Easy, clean, reliable Python 2/3 compatibility.
endef

$(eval $(call Py3Package,python3-future))
$(eval $(call BuildPackage,python3-future))
#$(eval $(call BuildPackage,python3-future-src))
