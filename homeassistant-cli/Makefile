# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=homeassistant-cli
PKG_VERSION:=0.9.4
PKG_RELEASE:=2

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=4e74591d6400c7b1ba93e8967d39ce00c2789523508406c6cbc8fd712ff6710e

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
	+python3-ruamel-yaml \
	+python3-requests \
	+python3-tabulate
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
