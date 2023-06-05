# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=croniter
PKG_VERSION:=1.0.6
PKG_RELEASE:=2

PYPI_NAME:=croniter
PKG_HASH:=e79bcc9681d2345e71360241aebe19ed6c5475fec40cc59a7998fe1a2ca568d0

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-croniter
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=provides iteration with cron like format
  URL:=https://github.com/kiorky/croniter
  DEPENDS:=+python3-dateutil +python3-future +python3-natsort
endef

define Package/python3-croniter/description
  croniter provides iteration for the datetime object with a cron like format.
endef

$(eval $(call Py3Package,python3-croniter))
$(eval $(call BuildPackage,python3-croniter))
#$(eval $(call BuildPackage,python3-croniter-src))
