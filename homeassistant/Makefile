# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=homeassistant
PKG_VERSION:=2023.5.3
PKG_RELEASE:=2

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=8afb17654e3c4710c95a781e7c0920e8c58e0f99891e02b1b81e87e04b95b61b

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
	+python3-dev \
	+python3-email \
	+python3-logging \
	+python3-multiprocessing \
	+python3-openssl \
	+python3-sqlite3 \
	+python3-unittest \
	+python3-urllib \
	+python3-xml
# core
  DEPENDS+= \
	+python3-aiohttp \
	+python3-astral \
	+python3-async-timeout \
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
	+python3-pip \
	+python3-pyjwt \
	+python3-pyopenssl \
	+python3-requests \
	+python3-slugify \
	+python3-typing-extensions \
	+python3-ulid-transform \
	+python3-voluptuous \
	+python3-voluptuous-serialize \
	+python3-yaml \
	+python3-yarl
# from package_constraints
  DEPENDS+= \
	+python3-aiodiscover \
	+python3-aiohttp-cors \
	+python3-anyio \
	+python3-async-upnp-client \
	+python3-authlib \
	+python3-backoff \
	+python3-bleak \
	+python3-bleak-retry-connector \
	+python3-bluetooth-adapters \
	+python3-bluetooth-auto-recovery \
	+python3-bluetooth-data-tools \
	+python3-btlewrap \
	+python3-cryptodome \
	+python3-dbus-fast \
	+python3-engineio \
	+python3-fnv-hash-fast \
	+python3-grpcio \
	+python3-grpcio-reflection \
	+python3-grpcio-status \
	+python3-h11 \
	+python3-ha-av \
	+python3-hass-nabucasa \
	+python3-hassil \
	+python3-home-assistant-intents \
	+python3-httpcore \
	+python3-httplib2 \
	+python3-hyperframe \
	+python3-iso4217 \
	+python3-janus \
	+python3-libcst \
	+python3-multidict \
	+python3-mutagen \
	+python3-numpy \
	+python3-paho-mqtt \
	+python3-pandas \
	+python3-pillow \
	+python3-protobuf \
	+python3-psutil-home-assistant \
	+python3-pubnub \
	+python3-pyasn1 \
	+python3-pydantic \
	+python3-pynacl \
	+python3-pyserial \
	+python3-pysnmplib \
	+python3-pyturbojpeg \
	+python3-pyudev \
	+python3-regex \
	+python3-socketio \
	+python3-sqlalchemy \
	+python3-urllib3 \
	+python3-webrtcvad \
	+python3-zeroconf \
	+scapy
# home-assistant-frontend==xxxxxxxx.x

# from internal
  DEPENDS+= \
	+python3-colorlog \
	+python3-croniter \
	+python3-debugpy \
	+python3-ephem \
	+python3-holidays \
	+python3-icmplib \
	+python3-netdisco \
	+python3-objgraph \
	+python3-pyhaversion \
	+python3-pyotp \
	+python3-pyprof2calltree \
	+python3-pyqrcode \
	+python3-restrictedpython \
	+python3-securetar \
	+python3-sense-energy \
	+python3-watchdog \
	+youtube-dl
# ext
  DEPENDS+= \
	+python3-aiohomekit \
	+python3-base36 \
	+python3-getmac \
	+python3-greenlet \
	+python3-gtts \
	+python3-ha-ffmpeg \
	+python3-pyhap \
	+python3-pymetno \
	+python3-radios

  EXTRA_DEPENDS:=libopenssl-legacy
# core (rust-lang pkgs)
  EXTRA_DEPENDS+=python3-bcrypt python3-cryptography python3-orjson
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
endef

define Package/homeassistant/postinst
#!/bin/sh

echo -e "\n\t*** Prepare your device to use the Home Assistant ***\n\n
	\tPlease read the wiki:\n
	\t\thttps://github.com/Entware/Entware/wiki/Self-installation-of-python-modules\n"
endef

define Package/homeassistant/postrm
#!/bin/sh

rm -fr $(1)$(PYTHON3_PKG_DIR)/$(PKG_NAME)-$(PKG_VERSION).dist-info
endef

$(eval $(call Py3Package,homeassistant))
$(eval $(call BuildPackage,homeassistant))
#$(eval $(call BuildPackage,homeassistant-src))
