# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-atomicwrites-homeassistant
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=atomicwrites-homeassistant
PKG_HASH:=256a672106f16745445228d966240b77b55f46a096d20305901a57aa5d1f4c2f

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-atomicwrites-homeassistant
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Atomic file writes
  URL:=https://github.com/untitaker/python-atomicwrites
  DEPENDS:= \
	+python3-ctypes
  PROVIDES:=python3-atomicwrites
endef

define Package/python3-atomicwrites-homeassistant/description
  Powerful Python library for atomic file writes.
endef

$(eval $(call Py3Package,python3-atomicwrites-homeassistant))
$(eval $(call BuildPackage,python3-atomicwrites-homeassistant))
#$(eval $(call BuildPackage,python3-atomicwrites-homeassistant-src))
