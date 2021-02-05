# homeassistant
packages for homeassistant (python3; core)

1. https://github.com/Entware/Entware/wiki/Compile-packages-from-sources

2. To use these packages, add the following line to the feeds.conf in the Entware buildroot, e.g.:

```echo 'src-git homeassistant https://github.com/The-BB/homeassistant.git' >> feeds.conf```

To install all its package definitions, run:

```./scripts/feeds update homeassistant```

```./scripts/feeds install -a -p homeassistant```

The homeassistant packages should now appear in menuconfig.

3. Some packages from https://github.com/Entware/entware-packages needs manually changing.
