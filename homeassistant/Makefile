# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=homeassistant
PKG_VERSION:=2022.3.0
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=3493235f493eca5bedfdea6d4abab48bbe3d807beb4bd423adb9db6b0120db3e

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
	+python3-dev \
	+python3-pip
# core
  DEPENDS+= \
	+python3-aiohttp \
	+python3-astral \
	+python3-async-timeout \
	+python3-atomicwrites \
	+python3-attrs \
	+python3-awesomeversion \
	+python3-bcrypt \
	+python3-certifi \
	+python3-ciso8601 \
	+python3-cryptography \
	+python3-httpx \
	+python3-ifaddr \
	+python3-jinja2 \
	+python3-pyjwt \
	+python3-requests \
	+python3-slugify \
	+python3-typing-extensions \
	+python3-voluptuous \
	+python3-voluptuous-serialize \
	+python3-yaml \
	+python3-yarl
# base
  DEPENDS+= \
	+python3-aiodiscover \
	+python3-aiohttp-cors \
	+python3-anyio \
	+python3-async-upnp-client \
	+python3-hass-nabucasa \
	+python3-pillow \
	+python3-pynacl \
	+python3-pyserial \
	+python3-pyudev \
	+python3-sqlalchemy \
	+python3-zeroconf \
	+scapy
# ext
  DEPENDS+= \
	+python3-colorlog \
	+python3-cryptodome \
	+python3-gtts \
	+python3-h11 \
	+python3-httpcore \
	+python3-httplib2 \
	+python3-libcst \
	+python3-mutagen \
	+python3-paho-mqtt \
	+python3-pymetno \
	+python3-pyotp \
	+python3-pyqrcode \
	+python3-regex \
	+python3-urllib3 \
	+python3-websocket-client \
	+python3-websockets \
	+python3-xmltodict
# ? btlewrap, grpcio, pandas ?
  DEPENDS+= \
	+python3-btlewrap \
	+python3-grpcio \
	+python3-hyperframe \
	+python3-pytest-asyncio \
	+python3-engineio \
	+python3-socketio \
	+python3-multidict
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

define Package/homeassistant/postinst
#!/bin/sh

echo -e "\n\t *** Prepare your device to use the Home Assistant ***\n\n\t
	Please read the wiki:\n\t\t
	https://github.com/Entware/Entware/wiki/Self-installation-of-python-modules\n"
endef

define Package/homeassistant/postrm
#!/bin/sh

rm -rf $(1)$(PYTHON3_PKG_DIR)/$(PKG_NAME)-$(PKG_VERSION)-py$(PYTHON3_VERSION).egg-info
endef

$(eval $(call Py3Package,homeassistant))
$(eval $(call BuildPackage,homeassistant))
#$(eval $(call BuildPackage,homeassistant-src))
