# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=homeassistant
PKG_VERSION:=2024.1.0
PKG_RELEASE:=1

PYPI_NAME:=homeassistant
PKG_HASH:=b3396f49f91c3c6e831861d9e6236dcf41016bc0d561aa066564a573b0041b52

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md
PKG_CPE_ID:=cpe:/a:home-assistant:home-assistant

PKG_BUILD_DEPENDS:=python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/homeassistant
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=home automation platform
  URL:=https://www.home-assistant.io
  DEPENDS:= \
	+python3-asyncio \
	+python3-ctypes \
	+python3-decimal \
	+python3-email \
	+python3-logging \
	+python3-multiprocessing \
	+python3-openssl \
	+python3-sqlite3 \
	+python3-unittest \
	+python3-urllib \
	+python3-uuid \
	+python3-xml
# core (pyproject.toml)
  DEPENDS+= \
	+python3-aiohttp \
	+python3-aiohttp-cors \
	+python3-aiohttp-fast-url-dispatcher \
	+python3-aiohttp-zlib-ng \
	+python3-astral \
	+python3-atomicwrites-homeassistant \
	+python3-attrs \
	+python3-awesomeversion \
	+python3-certifi \
	+python3-ciso8601 \
	+python3-home-assistant-bluetooth \
	+python3-httpx \
	+python3-ifaddr \
	+python3-jinja2 \
	+python3-lru-dict \
	+python3-packaging \
	+python3-pip \
	+python3-pyjwt \
	+python3-pyopenssl \
	+python3-requests \
	+python3-slugify \
	+python3-typing-extensions \
	+python3-ulid-transform \
	+python3-urllib3 \
	+python3-voluptuous \
	+python3-voluptuous-serialize \
	+python3-yaml \
	+python3-yarl
# package_constraints.txt
  DEPENDS+= \
	+home-assistant-frontend \
	+python3-aiodiscover \
	+python3-aiohttp-cors \
	+python3-anyio \
	+python3-async-upnp-client \
	+python3-backoff \
	+python3-bleak \
	+python3-bleak-retry-connector \
	+python3-bluetooth-adapters \
	+python3-bluetooth-auto-recovery \
	+python3-bluetooth-data-tools \
	+python3-btlewrap \
	+python3-cached-ipaddress \
	+python3-cryptodome \
	+python3-dacite \
	+python3-dbus-fast \
	+python3-engineio \
	+python3-fnv-hash-fast \
	+python3-grpcio \
	+python3-grpcio-reflection \
	+python3-grpcio-status \
	+python3-h11 \
	+python3-ha-av \
	+python3-ha-ffmpeg \
	+python3-habluetooth \
	+python3-hass-nabucasa \
	+python3-hassil \
	+python3-home-assistant-intents \
	+python3-httpcore \
	+python3-httplib2 \
	+python3-hyperframe \
	+python3-iso4217 \
	+python3-janus \
	+python3-libcst \
	+python3-lxml \
	+python3-multidict \
	+python3-mutagen \
	+python3-numpy \
	+python3-paho-mqtt \
	+python3-pillow \
	+python3-protobuf \
	+python3-psutil-home-assistant \
	+python3-pubnub \
	+python3-pydantic \
	+python3-pynacl \
	+python3-pyserial \
	+python3-pysnmplib \
	+python3-pyturbojpeg \
	+python3-pyudev \
	+python3-regex \
	+python3-socketio \
	+python3-sqlalchemy \
	+python3-webrtc-noise-gain \
	+python3-zeroconf \
	+scapy
# auth/mfa_modules/totp.py
  DEPENDS+= \
	+python3-pyotp \
	+python3-pyqrcode
# scripts/check_config.py
  DEPENDS+= \
	+python3-colorlog

  EXTRA_DEPENDS:=libpcap, libopenssl-legacy, python3-dev,
# core (rust-lang pkgs)
  EXTRA_DEPENDS+=python3-bcrypt, python3-cryptography, python3-orjson
endef

define Package/homeassistant/description
 Open source home automation that puts local control and privacy first.
 Powered by a worldwide community of tinkerers and DIY enthusiasts.
endef

# FIXME delete country "404"
define Build/Prepare
	$(call Build/Prepare/Default)
	rm -fr $(PKG_BUILD_DIR)/$(PKG_NAME)/components/ukraine_alarm
endef

define Py3Package/homeassistant/install
	$(INSTALL_DIR) $(1)/opt/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/opt/bin/hass $(1)/opt/bin
	$(INSTALL_DIR) $(1)/opt/etc/init.d
	$(INSTALL_BIN) ./files/S99hass $(1)/opt/etc/init.d
	$(INSTALL_DIR) $(1)/opt/var/lib/homeassistant
	touch $(1)/opt/var/lib/homeassistant/.keep
endef

define Package/homeassistant/postinst
#!/bin/sh

ansi_blue="\033[1;34m"
ansi_white="\033[1;37m"
ansi_std="\033[0m"

URL="https://github.com/Entware/Entware/wiki/Self-installation-of-python-modules"

### remove empty directories (httpx, orjson)
find $(PYTHON3_PKG_DIR) -type d -name "license*" -empty -delete
### remove empty directories
find $(PYTHON3_PKG_DIR) -maxdepth 1 -type d -empty -delete
### speedup upgrade
echo '/opt/bin/hass' > /opt/lib/opkg/info/$(PKG_NAME).list
echo '/opt/etc/init.d/S99hass' >> /opt/lib/opkg/info/$(PKG_NAME).list

printf "\n\t\t\t$$ansi_white %s $$ansi_std\n\n" "*** Prepare your device to use the Home Assistant ***"
printf "$$ansi_white %s $$ansi_blue %s $$ansi_std\n\n" "Please read the wiki:" "$$URL"
endef

define Package/homeassistant/postrm
#!/bin/sh

rm -fr $(PYTHON3_PKG_DIR)/$(PKG_NAME)
rm -fr $(PYTHON3_PKG_DIR)/$(PKG_NAME)-$(PKG_VERSION).dist-info
endef

$(eval $(call Py3Package,homeassistant))
$(eval $(call BuildPackage,homeassistant))
#$(eval $(call BuildPackage,homeassistant-src))
