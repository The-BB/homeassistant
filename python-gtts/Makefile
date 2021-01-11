#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-gtts
PKG_VERSION:=2.2.1
PKG_RELEASE:=1

PYPI_NAME:=gTTS
PKG_HASH:=93d8f386336c81d3b1d257ed0b4d5ef72660dc38484b0e0df7849b161cbe6324

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
	+python3-requests \
	+python3-six
endef

define Package/python3-gtts/description
  gTTS (Google Text-to-Speech), a Python library and CLI tool to interface with
  Google Translate text-to-speech API.
endef

$(eval $(call Py3Package,python3-gtts))
$(eval $(call BuildPackage,python3-gtts))
$(eval $(call BuildPackage,python3-gtts-src))
