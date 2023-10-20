# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=webrtc-noise-gain
PKG_VERSION:=1.2.3
PKG_RELEASE:=1

PYPI_NAME:=webrtc_noise_gain
PKG_HASH:=4282f79066774ebc30242d7174f0c53cdcfa984b68c88f586cd52cb2356c5e75

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-pybind11/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-webrtc-noise-gain
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Noise suppression and automatic gain with webrtc
  URL:=https://github.com/rhasspy/webrtc-noise-gain
  DEPENDS:=+libstdcpp +python3-xml
endef

define Package/python3-webrtc-noise-gain/description
  Tiny wrapper around webrtc-audio-processing for noise suppression/auto gain only.
endef

$(eval $(call Py3Package,python3-webrtc-noise-gain))
$(eval $(call BuildPackage,python3-webrtc-noise-gain))
#$(eval $(call BuildPackage,python3-webrtc-noise-gain-src))
