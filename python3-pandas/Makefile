# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-pandas
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=pandas
PKG_HASH:=c554e6c9cf2d5ea1aba5979cc837b3649539ced0e18ece186f055450c86622e2

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

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
	+python3-dateutil \
	+python3-numpy \
	+python3-pytz \
	+python3-six
endef

define Package/python3-pandas/description
  Flexible and powerful data analysis / manipulation library for
  Python, providing labeled data structures similar to R data.frame
  objects, statistical functions, and much more.
endef

$(eval $(call Py3Package,python3-pandas))
$(eval $(call BuildPackage,python3-pandas))
#$(eval $(call BuildPackage,python3-pandas-src))
