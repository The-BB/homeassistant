*** Make these changes

➜ git diff
diff --git a/lang/python/Jinja2/Makefile b/lang/python/Jinja2/Makefile
index ad727d0..650c537 100644
--- a/lang/python/Jinja2/Makefile
+++ b/lang/python/Jinja2/Makefile
@@ -1,15 +1,16 @@
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=Jinja2
-PKG_VERSION:=2.11.2
+PKG_VERSION:=2.11.3
 PKG_RELEASE:=1
 
 PYPI_NAME:=$(PKG_NAME)
-PKG_HASH:=89aab215427ef59c34ad58735269eb58b1a5808103067f7bb9d5836c651b3bb0
+PKG_HASH:=a6d58433de0ae800347cab1fa3043cebbabe8baa9d29e668f1c768cb87a333c6
 
 PKG_MAINTAINER:=Daniel Golle <daniel@makrotopia.org>
 PKG_LICENSE:=BSD-3-Clause
diff --git a/lang/python/numpy/Makefile b/lang/python/numpy/Makefile
index 31d4989..4d8dd7e 100644
--- a/lang/python/numpy/Makefile
+++ b/lang/python/numpy/Makefile
@@ -26,13 +26,18 @@ include ../pypi.mk
 include $(INCLUDE_DIR)/package.mk
 include ../python3-package.mk
 
+PYTHON3_PKG_SETUP_GLOBAL_ARGS += \
+       build_ext \
+       --fcompiler=none
+
 define Package/python3-numpy
   SUBMENU:=Python
   SECTION:=lang
   CATEGORY:=Languages
   TITLE:=The fundamental package for scientific computing with Python
   URL:=https://www.numpy.org/
-  DEPENDS:=@!SOFT_FLOAT +INSTALL_GFORTRAN:libgfortran +python3
+#  DEPENDS:=@!SOFT_FLOAT +INSTALL_GFORTRAN:libgfortran +python3
+  DEPENDS:=+python3
 endef
 
 define Package/python3-numpy/description
@@ -43,6 +48,15 @@ For some modules to be available, the INSTALL_GFORTRAN symbol needs
 to be enabled in the OpenWrt core/toolchain.
 endef
 
+define Build/Prepare
+       $(call Build/Prepare/Default)
+       ( \
+               echo '[DEFAULT]'; \
+               echo 'library_dirs = "$(STAGING_DIR)/opt/lib:$(TOOLCHAIN_DIR)/lib"'; \
+               echo 'include_dirs = "$(STAGING_DIR)/opt/include:$(TOOLCHAIN_DIR)/include"'; \
+       ) > $(PKG_BUILD_DIR)/site.cfg
+endef
+
 $(eval $(call Py3Package,python3-numpy))
 $(eval $(call BuildPackage,python3-numpy))
 $(eval $(call BuildPackage,python3-numpy-src))
diff --git a/lang/python/pillow/Makefile b/lang/python/pillow/Makefile
index 8652f84..f1e0a52 100644
--- a/lang/python/pillow/Makefile
+++ b/lang/python/pillow/Makefile
@@ -3,15 +3,16 @@
 # Copyright © 1995-2011 by Fredrik Lundh
 # Copyright © 2016 by Alex Clark and contributors
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=pillow
-PKG_VERSION:=8.1.0
+PKG_VERSION:=8.1.1
 PKG_RELEASE:=1
 
 PYPI_NAME:=Pillow
-PKG_HASH:=887668e792b7edbfb1d3c9d8b5d8c859269a0f0eba4dda562adb95500f60dbba
+PKG_HASH:=f6fc18f9c9c7959bf58e6faf801d14fafb6d4717faaf6f79a68c8bb2a13dcf20
 
 PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
 PKG_LICENSE:=HPND
diff --git a/lang/python/python-aiohttp/Makefile b/lang/python/python-aiohttp/Makefile
index 60baf9e..85e404b 100644
--- a/lang/python/python-aiohttp/Makefile
+++ b/lang/python/python-aiohttp/Makefile
@@ -1,18 +1,19 @@
 #
-# Copyright (C) 2019-2020 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
+# Copyright (C) 2019-2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
 #
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=aiohttp
-PKG_VERSION:=3.7.1
+PKG_VERSION:=3.7.4
 PKG_RELEASE:=1
 
 PYPI_NAME:=$(PKG_NAME)
-PKG_HASH:=04f9d70f6c4d089be5068d7df6281e638f6820d4f1b1ec3dc012b0b43fa997d2
+PKG_HASH:=5d84ecc73141d0a0d61ece0742bb7ff5751b0657dab8405f899d3ceb104cc7de
 
 PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
 PKG_LICENSE:=Apache-2.0
@@ -39,7 +40,8 @@ define Package/python3-aiohttp
        +python3-logging \
        +python3-codecs \
        +python3-cgi \
-       +python3-openssl
+       +python3-openssl \
+       +python3-typing-extensions
 endef
 
 define Package/python3-aiohttp/description

diff --git a/lang/python/python-boto3/Makefile b/lang/python/python-boto3/Makefile
index 27f69b3..646aa91 100644
--- a/lang/python/python-boto3/Makefile
+++ b/lang/python/python-boto3/Makefile
@@ -1,11 +1,13 @@
+# XXX bump
+
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=boto3
-PKG_VERSION:=1.9.135
-PKG_RELEASE:=2
+PKG_VERSION:=1.16.3
+PKG_RELEASE:=1
 
 PYPI_NAME:=$(PKG_NAME)
-PKG_HASH:=5e5805992e873e5687b5ef3b4c56c386ccb4df1c3364f8b8601d289e2f275be1
+PKG_HASH:=e2857738affb394bbe96473de2ed01331685d6e313bb1a3328fd5f47841429cc
 
 PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
 PKG_LICENSE:=Apache-2.0
diff --git a/lang/python/python-botocore/Makefile b/lang/python/python-botocore/Makefile
index 739be11..1ee7175 100644
--- a/lang/python/python-botocore/Makefile
+++ b/lang/python/python-botocore/Makefile
@@ -1,11 +1,13 @@
+# XXX bump
+
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=botocore
-PKG_VERSION:=1.12.66
-PKG_RELEASE:=2
+PKG_VERSION:=1.19.3
+PKG_RELEASE:=1
 
 PYPI_NAME:=$(PKG_NAME)
-PKG_HASH:=25c39ecc71356287cf79d66981ec77deca374e28043b19b2f818d48aa34272a1
+PKG_HASH:=4ea4c74d244c1b4701387fd1abe6a5e1833dc621c6d39f8888f0bfa95ddd82f5
 
 PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
 PKG_LICENSE:=MIT
diff --git a/lang/python/python-certifi/Makefile b/lang/python/python-certifi/Makefile
index 35370ca..7cba1eb 100644
--- a/lang/python/python-certifi/Makefile
+++ b/lang/python/python-certifi/Makefile
@@ -2,11 +2,12 @@
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=python-certifi
-PKG_VERSION:=2020.6.20
+PKG_VERSION:=2020.12.5
 PKG_RELEASE:=1
 
 PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
@@ -14,7 +15,7 @@ PKG_LICENSE:=MPL-2.0
 PKG_LICENSE_FILES:=LICENSE
 
 PYPI_NAME:=certifi
-PKG_HASH:=5930595817496dd21bb8dc35dad090f1c2cd0adfaf21204bf6732ca5d8ee34d3
+PKG_HASH:=1a4995114262bffbc2413b159f2a1a480c969de6e6eb13ee966d470af86af59c
 
 include ../pypi.mk
 include $(INCLUDE_DIR)/package.mk
diff --git a/lang/python/python-netdisco/Makefile b/lang/python/python-netdisco/Makefile
index 377afea..fb78401 100644
--- a/lang/python/python-netdisco/Makefile
+++ b/lang/python/python-netdisco/Makefile
@@ -4,15 +4,16 @@
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=python-netdisco
-PKG_VERSION:=2.6.0
-PKG_RELEASE:=2
+PKG_VERSION:=2.8.2
+PKG_RELEASE:=1
 
 PYPI_NAME:=netdisco
-PKG_HASH:=2b3aca14a1807712a053f11fd80dc251dd821ee4899aefece515287981817762
+PKG_HASH:=dcaabf83b204282aacfb213b18799eb7af2d5a6defe529487bbd0548036392fe
 
 PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
 PKG_LICENSE:=Apache-2.0
diff --git a/lang/python/python-s3transfer/Makefile b/lang/python/python-s3transfer/Makefile
index a6e04f9..8ab5ce8 100644
--- a/lang/python/python-s3transfer/Makefile
+++ b/lang/python/python-s3transfer/Makefile
@@ -1,11 +1,13 @@
+# XXX bump
+
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=s3transfer
-PKG_VERSION:=0.2.0
-PKG_RELEASE:=2
+PKG_VERSION:=0.3.3
+PKG_RELEASE:=1
 
 PYPI_NAME:=$(PKG_NAME)
-PKG_HASH:=f23d5cb7d862b104401d9021fc82e5fa0e0cf57b7660a1331425aab0c691d021
+PKG_HASH:=921a37e2aefc64145e7b73d50c71bb4f26f46e4c9f414dc648c6245ff92cf7db
 
 PKG_MAINTAINER:=Daniel Danzberger <daniel@dd-wrt.com>
 PKG_LICENSE:=MIT
diff --git a/lang/python/python-urllib3/Makefile b/lang/python/python-urllib3/Makefile
index 8812c0e..fefce2a 100644
--- a/lang/python/python-urllib3/Makefile
+++ b/lang/python/python-urllib3/Makefile
@@ -4,11 +4,12 @@
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=python-urllib3
-PKG_VERSION:=1.25.11
+PKG_VERSION:=1.26.2
 PKG_RELEASE:=1
 
 PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
@@ -17,7 +18,7 @@ PKG_LICENSE_FILES:=LICENSE.txt
 PKG_CPE_ID:=cpe:/a:urllib3_project:urllib3
 
 PYPI_NAME:=urllib3
-PKG_HASH:=8d7eaa5a82a1cac232164990f04874c594c9453ec55eef02eab885aa02fc17a2
+PKG_HASH:=19188f96923873c92ccb987120ec4acaa12f0461fa9ce5d3d0772bc965a39e08
 
 include ../pypi.mk
 include $(INCLUDE_DIR)/package.mk
diff --git a/lang/python/python-yaml/Makefile b/lang/python/python-yaml/Makefile
index a26b572..7c73546 100644
--- a/lang/python/python-yaml/Makefile
+++ b/lang/python/python-yaml/Makefile
@@ -4,15 +4,16 @@
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=python-yaml
-PKG_VERSION:=5.3.1
-PKG_RELEASE:=2
+PKG_VERSION:=5.4.1
+PKG_RELEASE:=1
 
 PYPI_NAME:=PyYAML
-PKG_HASH:=b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d
+PKG_HASH:=607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e
 
 PKG_MAINTAINER:=Josef Schlehofer <josef.schlehofer@nic.cz>
 PKG_LICENSE:=MIT
diff --git a/lang/python/python-yarl/Makefile b/lang/python/python-yarl/Makefile
index daab051..d5a3283 100644
--- a/lang/python/python-yarl/Makefile
+++ b/lang/python/python-yarl/Makefile
@@ -4,15 +4,16 @@
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=yarl
-PKG_VERSION:=1.6.2
+PKG_VERSION:=1.6.3
 PKG_RELEASE:=1
 
 PYPI_NAME:=$(PKG_NAME)
-PKG_HASH:=c45b49b59a5724869899798e1bbd447ac486215269511d3b76b4c235a1b766b6
+PKG_HASH:=8a9066529240171b68893d60dca86a763eae2139dd42f42106b03cf4b426bf10
 
 PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
 PKG_LICENSE:=Apache-2.0
diff --git a/lang/python/python-zeroconf/Makefile b/lang/python/python-zeroconf/Makefile
index a7fa752..afcc267 100644
--- a/lang/python/python-zeroconf/Makefile
+++ b/lang/python/python-zeroconf/Makefile
@@ -4,15 +4,16 @@
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
 #
+# XXX bump
 
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=python-zeroconf
-PKG_VERSION:=0.28.5
+PKG_VERSION:=0.28.8
 PKG_RELEASE:=1
 
 PYPI_NAME:=zeroconf
-PKG_HASH:=c08dbb90c116626cb6c5f19ebd14cd4846cffe7151f338c19215e6938d334980
+PKG_HASH:=4be24a10aa9c73406f48d42a8b3b077c217b0e8d7ed1e57639630da520c25959
 
 PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
 PKG_LICENSE:=Apache-2.0

➜ cat lang/python/python-aiohttp/patches/999-fix_versions.patch 
--- a/setup.py
+++ b/setup.py
@@ -66,7 +66,7 @@ except IndexError:
 
 install_requires = [
     "attrs>=17.3.0",
-    "chardet>=2.0,<4.0",
+    "chardet>=2.0,<=4.0.0",
     "multidict>=4.5,<7.0",
     "async_timeout>=3.0,<4.0",
     "yarl>=1.0,<2.0",
--- a/aiohttp.egg-info/requires.txt
+++ b/aiohttp.egg-info/requires.txt
@@ -1,5 +1,5 @@
 attrs>=17.3.0
-chardet<4.0,>=2.0
+chardet<=4.0.0,>=2.0
 multidict<7.0,>=4.5
 async_timeout<4.0,>=3.0
 yarl<2.0,>=1.0
