#!/bin/sh

if [ ! -d ./feeds/homeassistant ]; then
  echo "error: change the directory" && exit 1
fi

PACKAGES_FEED="./feeds/packages"
PATCH_DIR="./feeds/homeassistant/_patches"
PATCH_PACKAGES="\
$PATCH_DIR/lang-python-numpy-fix.patch
$PATCH_DIR/lang-python-pillow-bump-to-10.1.0.patch
$PATCH_DIR/lang-python-python-aiohttp-bump-to-3.9.1.patch
$PATCH_DIR/lang-python-python-async-timeout-bump-to-4.0.3.patch
$PATCH_DIR/lang-python-python-awesomeversion-bump-to-23.11.0.patch
$PATCH_DIR/lang-python-python-bleak-bump-to-0.21.1.patch
$PATCH_DIR/lang-python-python-cython-bump-to-3.0.5.patch
$PATCH_DIR/lang-python-python-dbus-fast-bump-to-2.14.0.patch
$PATCH_DIR/lang-python-python-jsonschema-bump-to-4.19.1.patch
$PATCH_DIR/lang-python-python-psutil-bump-to-5.9.6.patch
$PATCH_DIR/lang-python-python-pyopenssl-bump-to-23.2.0.patch
$PATCH_DIR/lang-python-python-pyotp-bump-to-2.8.0.patch
$PATCH_DIR/lang-python-python-pyparsing-bump-to-3.1.1.patch
$PATCH_DIR/lang-python-python-pyserial-bump-to-3.5.patch
$PATCH_DIR/lang-python-python-sqlalchemy-bump-to-2.0.23.patch
$PATCH_DIR/lang-python-python-typing-extensions-bump-to-4.8.0.patch
$PATCH_DIR/lang-python-python-urllib3-bump-to-1.26.5.patch
$PATCH_DIR/lang-python-python-voluptuous-bump-to-0.13.1.patch
$PATCH_DIR/lang-python-python-voluptuous-serialize-bump-to-2.6.0.patch
$PATCH_DIR/lang-python-python-websockets-bump-to-11.0.1.patch
$PATCH_DIR/lang-python-python-yaml-bump-to-6.0.1.patch
$PATCH_DIR/lang-python-python-zeroconf-bump-to-0.128.4.patch
$PATCH_DIR/lang-python-xmltodict-bump-to-0.13.0.patch
$PATCH_DIR/libs-libjpeg-turbo-add-libturbojpeg.patch
$PATCH_DIR/libs-libgpiod-disable-python3-gpiod.patch
$PATCH_DIR/multimedia-yt-dlp-bump-to-2023.11.16.patch
"
STAMP_PACKAGES="$PATCH_DIR/.packages-patched"

backup() {
if [ ! -f $STAMP_PACKAGES ]; then
  for PATCH in $PATCH_PACKAGES; do patch -p1 -b -d $PACKAGES_FEED < "$PATCH"; done
  touch $STAMP_PACKAGES
fi
}

check() {
for PATCH in $PATCH_PACKAGES; do patch -p1 --dry-run -d $PACKAGES_FEED < "$PATCH"; done
}

recovery() {
if [ -f $STAMP_PACKAGES ]; then
  for PATCH in $PATCH_PACKAGES; do patch -p1 -R -d $PACKAGES_FEED < "$PATCH"; done
  find $PACKAGES_FEED/lang/python $PACKAGES_FEED/libs $PACKAGES_FEED/multimedia -type f -name "*.orig" -delete
  rm $STAMP_PACKAGES
fi
}

case "$1" in
    backup)
	backup
	[ $? -eq 0 ] && echo "Done"
    ;;
    check)
	check
    ;;
    recovery)
	recovery
	[ $? -eq 0 ] && echo "Done"
    ;;
    *)
	echo "Usage: $0 {backup|check|recovery}"
	exit 1
    ;;
esac

exit 0
