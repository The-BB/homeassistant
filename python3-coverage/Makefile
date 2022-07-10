# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-coverage
PKG_VERSION:=6.2
PKG_RELEASE:=2

PYPI_NAME:=coverage
PKG_HASH:=e2cad8093172b7d1595b4ad66f24270808658e11acf43a8f95b41276162eb5b8

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-coverage
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Code coverage measurement for Python
  URL:=https://github.com/nedbat/coveragepy
  DEPENDS:= \
	+python3-multiprocessing \
	+python3-sqlite3 \
	+python3-xml
endef

define Package/python3-coverage/description
  Coverage.py measures code coverage, typically during test execution.
  It uses the code analysis tools and tracing hooks provided in the
  Python standard library to determine which lines are executable, and
  which have been executed.
endef

$(eval $(call Py3Package,python3-coverage))
$(eval $(call BuildPackage,python3-coverage))
#$(eval $(call BuildPackage,python3-coverage-src))
