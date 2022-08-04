# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=homeassistant
PKG_VERSION:=2022.7.7
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=6e60fa28a4c1b59abaf6e827ba9316f20532a6066eb92e60857d317825452159

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
	+python3-bcrypt \
	+python3-certifi \
	+python3-ciso8601 \
	+python3-httpx \
	+python3-ifaddr \
	+python3-jinja2 \
	+python3-pip \
	+python3-pyjwt \
	+python3-requests \
	+python3-slugify \
	+python3-typing-extensions \
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
	+python3-btlewrap \
	+python3-cryptodome \
	+python3-engineio \
	+python3-fnvhash \
	+python3-grpcio \
	+python3-grpcio-status \
	+python3-h11 \
	+python3-hass-nabucasa \
	+python3-httpcore \
	+python3-httplib2 \
	+python3-hyperframe \
	+python3-libcst \
	+python3-lru-dict \
	+python3-multidict \
	+python3-numpy \
	+python3-paho-mqtt \
	+python3-pillow \
	+python3-pydantic \
	+python3-pynacl \
	+python3-pyserial \
	+python3-pyudev \
	+python3-regex \
	+python3-socketio \
	+python3-sqlalchemy \
	+python3-urllib3 \
	+python3-zeroconf \
	+scapy
# home-assistant-frontend==20220707.0

# from internal
  DEPENDS+= \
	+python3-colorlog \
	+python3-croniter \
	+python3-debugpy \
	+python3-ephem \
	+python3-guppy3 \
	+python3-ha-av \
	+python3-holidays \
	+python3-icmplib \
	+python3-mutagen \
	+python3-netdisco \
	+python3-objgraph \
	+python3-pyhaversion \
	+python3-pyotp \
	+python3-pyprof2calltree \
	+python3-pyqrcode \
	+python3-pyturbojpeg \
	+python3-restrictedpython \
	+python3-securetar \
	+python3-sense-energy \
	+python3-watchdog \
	+youtube-dl
# ext
  DEPENDS+= \
	+homekit \
	+python3-getmac \
	+python3-gtts \
	+python3-pymetno \
	+python3-radios

# core (rust-lang pkgs)
  EXTRA_DEPENDS:=python3-cryptography, python3-orjson
endef

define Package/homeassistant/description
 Open source home automation that puts local control and privacy first.
 Powered by a worldwide community of tinkerers and DIY enthusiasts.
endef

# FIXME remove a fucking code
define Build/Prepare
	$(call Build/Prepare/Default)
	$(RM) -r $(PKG_BUILD_DIR)/$(PKG_NAME)/components/ukraine_alarm
endef

define Py3Package/homeassistant/install
	$(INSTALL_DIR) $(1)/opt/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/opt/bin/hass $(1)/opt/bin

	$(INSTALL_DIR) $(1)/opt/etc/init.d
	$(INSTALL_BIN) ./files/S99hass $(1)/opt/etc/init.d
endef

define Package/homeassistant/postinst
#!/bin/sh

echo -e "\n\t*** Prepare your device to use the Home Assistant ***\n\n
	\tPlease read the wiki:\n
	\t\thttps://github.com/Entware/Entware/wiki/Self-installation-of-python-modules\n"
endef

define Package/homeassistant/postrm
#!/bin/sh

rm -rf $(1)$(PYTHON3_PKG_DIR)/$(PKG_NAME)-$(PKG_VERSION)-py$(PYTHON3_VERSION).egg-info
endef

$(eval $(call Py3Package,homeassistant))
$(eval $(call BuildPackage,homeassistant))
#$(eval $(call BuildPackage,homeassistant-src))
