# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pandas
PKG_VERSION:=1.4.3
PKG_RELEASE:=2

PYPI_NAME:=pandas
PKG_HASH:=2ff7788468e75917574f080cd4681b27e1a7bf36461fe968b49a87b5a54d007c

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pandas
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=powerful Python data analysis toolkit
  URL:=https://pandas.pydata.org/
  DEPENDS:= \
	+libstdcpp \
	+python3-codecs \
	+python3-ctypes \
	+python3-dateutil \
	+python3-decimal \
	+python3-distutils \
	+python3-jinja2 \
	+python3-logging \
	+python3-lxml \
	+python3-lzma \
	+python3-markupsafe \
	+python3-numpy \
	+python3-pydoc \
	+python3-pytz \
	+python3-sqlalchemy \
	+python3-sqlite3 \
	+python3-urllib \
	+python3-xml
endef

define Package/python3-pandas/description
  Flexible and powerful data analysis / manipulation library for
  Python, providing labeled data structures similar to R data.frame
  objects, statistical functions, and much more.
endef

$(eval $(call Py3Package,python3-pandas))
$(eval $(call BuildPackage,python3-pandas))
#$(eval $(call BuildPackage,python3-pandas-src))
