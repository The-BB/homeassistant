# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-gtts
PKG_VERSION:=2.2.3
PKG_RELEASE:=3

PYPI_NAME:=gTTS
PKG_HASH:=88cfaa112471867009a0450a696e5bc69cf1671fa0fa683fe17d0650023c863c

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-gtts
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Google Text to Speech
  URL:=https://github.com/pndurette/gTTS
  DEPENDS:= \
	+python3-click \
	+python3-logging \
	+python3-requests \
	+python3-six \
	+python3-urllib
endef

define Package/python3-gtts/description
  gTTS (Google Text-to-Speech), a Python library and CLI tool to interface with
  Google Translate text-to-speech API.
endef

$(eval $(call Py3Package,python3-gtts))
$(eval $(call BuildPackage,python3-gtts))
#$(eval $(call BuildPackage,python3-gtts-src))
