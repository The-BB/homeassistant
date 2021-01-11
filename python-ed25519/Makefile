#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-ed25519
PKG_VERSION:=1.5
PKG_RELEASE:=1

PYPI_NAME:=ed25519
PKG_HASH:=02053ee019ceef0df97294be2d4d5a8fc120fc86e81e08bec1245fc0f9403358

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

# XXX error: option --single-version-externally-managed not recognized
PYTHON3_PKG_SETUP_ARGS:=

define Package/python3-ed25519
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Ed25519 public-key signatures
  URL:=https://github.com/warner/python-ed25519
  DEPENDS:=+python3-light
endef

define Package/python3-ed25519/description
  Python bindings to the Ed25519 public-key signature system.
endef

$(eval $(call Py3Package,python3-ed25519))
$(eval $(call BuildPackage,python3-ed25519))
$(eval $(call BuildPackage,python3-ed25519-src))
