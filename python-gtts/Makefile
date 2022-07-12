# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python-gtts
PKG_VERSION:=2.2.4
PKG_RELEASE:=1

#PYPI_NAME:=gTTS
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/pndurette/gTTS/tar.gz/refs/tags/v$(PKG_VERSION)?
PKG_HASH:=e0b688ff777928afe280c3cf4d36bc7b794e93e86851b680d54ba2fb68e88456

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/gTTS-$(PKG_VERSION)

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

#include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
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

define Py3Package/python3-gtts/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/gtts/tests
endef

$(eval $(call Py3Package,python3-gtts))
$(eval $(call BuildPackage,python3-gtts))
#$(eval $(call BuildPackage,python3-gtts-src))
