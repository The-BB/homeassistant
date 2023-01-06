# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=homeassistant-cli
PKG_VERSION:=0.9.6
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=9b9b705eaf6ee40dc6a732f3458c78ba37b62b7330bc17b132e6fee385ec8606

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/homeassistant-cli
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Home Assistant Command-line Interface (hass-cli)
  URL:=https://github.com/home-assistant-ecosystem/home-assistant-cli
  DEPENDS:= \
	+python3-aiohttp \
	+python3-click-log \
	+python3-click \
	+python3-dateparser \
	+python3-jinja2 \
	+python3-jsonpath-ng \
	+python3-netdisco \
	+python3-regex \
	+python3-requests \
	+python3-ruamel-yaml \
	+python3-tabulate
# ext
  DEPENDS+= \
	+python3-aiohttp-cors \
	+python3-astral \
	+python3-async-timeout \
	+python3-attrs \
	+python3-awesomeversion \
	+python3-btlewrap \
	+python3-certifi \
	+python3-ciso8601 \
	+python3-cryptodome \
	+python3-h11 \
	+python3-httpcore \
	+python3-httpx \
	+python3-pip \
	+python3-pyjwt \
	+python3-pytz \
	+python3-urllib3 \
	+python3-voluptuous-serialize \
	+python3-voluptuous \
	+python3-yaml \
	+python3-yarl \
	+python3-zeroconf

# rust-lang pkg
  EXTRA_DEPENDS:=python3-cryptography
endef

define Package/homeassistant-cli/description
  The Home Assistant Command-line interface (hass-cli) allows one to work with
  a local or a remote Home Assistant Core or Home Assistant (former Hass.io)
  instance directly from the command-line.
endef

define Package/homeassistant-cli/postinst
#!/bin/sh

echo -e "\n\t *** Please install homeassistant package manually ***\n"
endef

$(eval $(call Py3Package,homeassistant-cli))
$(eval $(call BuildPackage,homeassistant-cli))
#$(eval $(call BuildPackage,homeassistant-cli-src))
