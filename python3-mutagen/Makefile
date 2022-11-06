# SPDX-License-Identifier: GPL-2.0-only

include $(TOPDIR)/rules.mk

PKG_NAME:=python3-mutagen
PKG_VERSION:=1.46.0
PKG_RELEASE:=1

PYPI_NAME:=mutagen
PKG_HASH:=6e5f8ba84836b99fe60be5fb27f84be4ad919bbb6b49caa6ae81e70584b55e58

PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE.md

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-mutagen
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=read and write audio tags for many formats
  URL:=https://github.com/quodlibet/mutagen
  DEPENDS:= \
	+python3-codecs \
	+python3-ctypes \
	+python3-decimal \
	+python3-urllib
endef

define Package/python3-mutagen/description
  Mutagen is a Python module to handle audio metadata. It supports ASF,
 FLAC, MP4, Monkey’s Audio, MP3, Musepack, Ogg Opus, Ogg FLAC, Ogg Speex,
 Ogg Theora, Ogg Vorbis, True Audio, WavPack, OptimFROG, and AIFF audio
 files. All versions of ID3v2 are supported, and all standard ID3v2.4
 frames are parsed. It can read Xing headers to accurately calculate the
 bitrate and length of MP3s. ID3 and APEv2 tags can be edited regardless
 of audio format. It can also manipulate Ogg streams on an individual
 packet/page level.
endef

$(eval $(call Py3Package,python3-mutagen))
$(eval $(call BuildPackage,python3-mutagen))
#$(eval $(call BuildPackage,python3-mutagen-src))
