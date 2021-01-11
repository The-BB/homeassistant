#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-emoji
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=emoji
PKG_HASH:=e42da4f8d648f8ef10691bc246f682a1ec6b18373abfd9be10ec0b398823bd11

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-emoji
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Emoji for Python
  URL:=https://github.com/carpedm20/emoji
  DEPENDS:=+python3-light
endef

define Package/python3-emoji/description
  Emoji for Python.
endef

$(eval $(call Py3Package,python3-emoji))
$(eval $(call BuildPackage,python3-emoji))
$(eval $(call BuildPackage,python3-emoji-src))
