# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=webrtcvad
PKG_VERSION:=2.0.10
PKG_RELEASE:=2

PYPI_NAME:=webrtcvad
PKG_HASH:=f1bed2fb25b63fb7b1a55d64090c993c9c9167b28485ae0bcdd81cf6ede96aea

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-webrtcvad
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python interface to the WebRTC Voice Activity Detector
  URL:=https://github.com/wiseman/py-webrtcvad
  DEPENDS:=+python3-light
endef

define Package/python3-webrtcvad/description
  This is a python interface to the WebRTC Voice Activity Detector (VAD).
  It is compatible with Python 2 and Python 3.
endef

$(eval $(call Py3Package,python3-webrtcvad))
$(eval $(call BuildPackage,python3-webrtcvad))
#$(eval $(call BuildPackage,python3-webrtcvad-src))
