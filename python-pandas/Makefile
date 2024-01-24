# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pandas
PKG_VERSION:=2.1.4
PKG_RELEASE:=1

PYPI_NAME:=pandas
PKG_HASH:=fcb68203c833cc735321512e13861358079a96c174a61f5116a1de89c58c0ef7

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:= \
	meson-python/host \
	python-cython/host \
	python-versioneer/host \
	python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/python3-pandas
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=powerful Python data analysis toolkit
  URL:=https://pandas.pydata.org
  DEPENDS:= \
	+libstdcpp \
	+python3-codecs \
	+python3-ctypes \
	+python3-decimal \
	+python3-lzma \
	+python3-sqlite3 \
	+python3-urllib \
	+python3-uuid \
	+python3-xml \
	+python3-dateutil \
	+python3-numpy \
	+python3-pytz \
	+python3-tzdata
endef

define Package/python3-pandas/description
  Flexible and powerful data analysis/manipulation library for
  Python, providing labeled data structures similar to R data.frame
  objects, statistical functions, and much more.
endef

define FixPre
	$(SED) 's,@VERSION@,$(PKG_VERSION),' $(PKG_BUILD_DIR)/meson.build
	$(SED) 's,@STAGING_DIR@,$(STAGING_DIR),' $(PKG_BUILD_DIR)/pandas/meson.build
endef
Hooks/Configure/Pre += FixPre

define FixPython
	$(SED) "s,^python.*,python = '$(STAGING_DIR_HOSTPKG)/bin/python3'," \
		$(PKG_BUILD_DIR)/openwrt-*.txt
endef
Hooks/Compile/Pre += FixPython

$(eval $(call Py3Package,python3-pandas))
$(eval $(call BuildPackage,python3-pandas))
#$(eval $(call BuildPackage,python3-pandas-src))
