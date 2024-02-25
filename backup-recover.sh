#!/bin/sh

if [ ! -d ./feeds/homeassistant ]; then
  echo "error: change the directory" && exit 1
fi

PACKAGES_FEED="./feeds/packages"
PATCH_DIR="./feeds/homeassistant/_patches"
PATCH_PACKAGES="\
$PATCH_DIR/lang-python-numpy-fix.patch
$PATCH_DIR/lang-python-pillow-bump-to-10.2.0.patch
$PATCH_DIR/lang-python-python-aiohttp-bump-to-3.9.3.patch
$PATCH_DIR/lang-python-python-async-timeout-bump-to-4.0.3.patch
$PATCH_DIR/lang-python-python-attrs-bump-to-23.2.0.patch
$PATCH_DIR/lang-python-python-awesomeversion-bump-to-24.2.0.patch
$PATCH_DIR/lang-python-python-boto3-bump-to-1.33.13.patch
$PATCH_DIR/lang-python-python-botocore-bump-to-1.33.13.patch
$PATCH_DIR/lang-python-python-hatch-fancy-pypi-readme-bump-to-23.2.0.patch
$PATCH_DIR/lang-python-python-jinja2-bump-to-3.1.3.patch
$PATCH_DIR/lang-python-python-lxml-bump-to-4.9.4.patch
$PATCH_DIR/lang-python-python-psutil-bump-to-5.9.8.patch
$PATCH_DIR/lang-python-python-pyopenssl-bump-to-24.0.0.patch
$PATCH_DIR/lang-python-python-s3transfer-bump-to-0.8.2.patch
$PATCH_DIR/lang-python-python-sqlalchemy-bump-to-2.0.25.patch
$PATCH_DIR/lang-python-python-yarl-bump-to-1.9.4.patch
$PATCH_DIR/libs-libgpiod-disable-python3-gpiod.patch
$PATCH_DIR/libs-libjpeg-turbo-add-libturbojpeg.patch
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
  find $PACKAGES_FEED/lang/python $PACKAGES_FEED/libs -type f -name "*.orig" -delete
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
