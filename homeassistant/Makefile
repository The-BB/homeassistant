# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=homeassistant
PKG_VERSION:=2021.6.6
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=5fd0aa0b24b39da12f09fbda113415c3c740e71f282eac9f4c28d4d9ea8b039b

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md
PKG_CPE_ID:=cpe:/a:home-assistant:home-assistant

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/homeassistant
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=home automation platform
  URL:=https://www.home-assistant.io
  DEPENDS:= \
	+python3-aiodiscover \
	+python3-aiohomekit \
	+python3-aiohttp-cors \
	+python3-astral \
	+python3-async-upnp-client \
	+python3-attrs \
	+python3-awesomeversion \
	+python3-base36 \
	+python3-bcrypt \
	+python3-ciso8601 \
	+python3-distro \
	+python3-emoji \
	+python3-fnvhash \
	+python3-gtts \
	+python3-ha-ffmpeg \
	+python3-hass-nabucasa \
	+python3-home-assistant-frontend \
	+python3-httpx \
	+python3-httplib2 \
	+python3-jinja2 \
	+python3-mutagen \
	+python3-netdisco \
	+python3-paho-mqtt \
	+python3-pillow \
	+python3-pip \
	+python3-pyhap \
	+python3-pyjwt \
	+python3-pymetno \
	+python3-pynacl \
	+python3-pyotp \
	+python3-pyqrcode \
	+python3-pyroute2 \
	+python3-pyturbojpeg \
	+python3-ruamel-yaml \
	+python3-slugify \
	+python3-sqlalchemy \
	+python3-voluptuous-serialize \
	+python3-yaml \
	+scapy
endef

define Package/homeassistant/description
 Open source home automation that puts local control and privacy first.
 Powered by a worldwide community of tinkerers and DIY enthusiasts.
endef

define Py3Package/homeassistant/install
	$(INSTALL_DIR) $(1)/opt/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/opt/bin/hass $(1)/opt/bin

	$(INSTALL_DIR) $(1)/opt/etc/init.d
	$(INSTALL_BIN) ./files/S99hass $(1)/opt/etc/init.d
endef

define Package/homeassistant/postrm
rm -rf $(1)$(PYTHON3_PKG_DIR)/$(PKG_NAME)-$(PKG_VERSION)-py$(PYTHON3_VERSION).egg-info
endef

$(eval $(call Py3Package,homeassistant))
$(eval $(call BuildPackage,homeassistant))
$(eval $(call BuildPackage,homeassistant-src))
