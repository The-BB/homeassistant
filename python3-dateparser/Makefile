# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-dateparser
PKG_VERSION:=1.0.0
PKG_RELEASE:=2

PYPI_NAME:=dateparser
PKG_HASH:=159cc4e01a593706a15cd4e269a0b3345edf3aef8bf9278a57dac8adf5bf1e4a

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-dateparser
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=parser for human readable dates
  URL:=https://github.com/scrapinghub/dateparser
#  DEPENDS:= \
#	+python3-dateutil \
#	+python3-pytz \
#	+python3-regex \
#	+python3-tzlocal
endef

define Package/python3-dateparser/description
  Date parsing library designed to parse dates from HTML pages.
endef

$(eval $(call Py3Package,python3-dateparser))
$(eval $(call BuildPackage,python3-dateparser))
#$(eval $(call BuildPackage,python3-dateparser-src))
