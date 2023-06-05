# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=pycountry
PKG_VERSION:=22.3.5
PKG_RELEASE:=2

PYPI_NAME:=pycountry
PKG_HASH:=b2163a246c585894d808f18783e19137cb70a0c18fb36748dc01fc6f109c1646

PKG_LICENSE:=LGPL-2.1-or-later
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pycountry
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=provides the ISO databases
  URL:=https://github.com/flyingcircusio/pycountry
  DEPENDS:=+python3-codecs +python3-logging +python3-setuptools
endef

define Package/python3-pycountry/description
  ISO country, subdivision, language, currency and
  script definitions and their translations.
endef

$(eval $(call Py3Package,python3-pycountry))
$(eval $(call BuildPackage,python3-pycountry))
#$(eval $(call BuildPackage,python3-pycountry-src))
