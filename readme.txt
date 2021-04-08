*** Make these changes

➜ git diff
diff --git a/lang/python/Jinja2/Makefile b/lang/python/Jinja2/Makefile
index ad727d06..650c537a 100644
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
index 31d4989b..a08cbff1 100644
--- a/lang/python/numpy/Makefile
+++ b/lang/python/numpy/Makefile
@@ -6,11 +6,11 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=numpy
-PKG_VERSION:=1.20.1
+PKG_VERSION:=1.20.2
 PKG_RELEASE:=1
 
 PYPI_NAME:=$(PKG_NAME)
-PKG_HASH:=3bc63486a870294683980d76ec1e3efc786295ae00128f9ea38e2c6e74d5a60a
+PKG_HASH:=878922bf5ad7550aa044aa9301d417e2d3ae50f0f577de92051d739ac6096cee
 
 PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
 
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
index 8652f84b..9c41e371 100644
--- a/lang/python/pillow/Makefile
+++ b/lang/python/pillow/Makefile
@@ -7,11 +7,11 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=pillow
-PKG_VERSION:=8.1.0
+PKG_VERSION:=8.2.0
 PKG_RELEASE:=1
 
 PYPI_NAME:=Pillow
-PKG_HASH:=887668e792b7edbfb1d3c9d8b5d8c859269a0f0eba4dda562adb95500f60dbba
+PKG_HASH:=a787ab10d7bb5494e5f76536ac460741788f1fbce851068d73a87ca7c35fc3e1
 
 PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
 PKG_LICENSE:=HPND
diff --git a/lang/python/python-aiohttp/Makefile b/lang/python/python-aiohttp/Makefile
index 60baf9ee..d7b053e9 100644
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
+PKG_VERSION:=3.7.4.post0
 PKG_RELEASE:=1
 
 PYPI_NAME:=$(PKG_NAME)
-PKG_HASH:=04f9d70f6c4d089be5068d7df6281e638f6820d4f1b1ec3dc012b0b43fa997d2
+PKG_HASH:=493d3299ebe5f5a7c66b9819eacdcfbbaaf1a8e84911ddffcdc48888497afecf
 
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
index 27f69b3c..646aa910 100644
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
index 739be112..1ee71759 100644
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
index 35370caa..7cba1eb3 100644
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
index 377afead..fb78401c 100644
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
index a6e04f9f..8ab5ce88 100644
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
index 8812c0e4..fefce2a1 100644
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
index a26b5724..7c735464 100644
--- a/lang/python/python-yaml/Makefile
+++ b/lang/python/python-yaml/Makefile
@@ -4,21 +4,24 @@
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
index daab0519..d5a3283f 100644
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
index a7fa752d..121a3f97 100644
--- a/lang/python/python-zeroconf/Makefile
+++ b/lang/python/python-zeroconf/Makefile
@@ -1,5 +1,5 @@
 #
-# Copyright (C) 2019-2020 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
+# Copyright (C) 2019-2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
 #
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
@@ -8,11 +8,11 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=python-zeroconf
-PKG_VERSION:=0.28.5
+PKG_VERSION:=0.29.0
 PKG_RELEASE:=1
 
 PYPI_NAME:=zeroconf
-PKG_HASH:=c08dbb90c116626cb6c5f19ebd14cd4846cffe7151f338c19215e6938d334980
+PKG_HASH:=7aefbb658b452b1fd7e51124364f938c6f5e42d6ea893fa2557bea8c06c540af
 
 PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
 PKG_LICENSE:=Apache-2.0
diff --git a/lang/python/python3-pyroute2/Makefile b/lang/python/python3-pyroute2/Makefile
index 9383069f..732d4c3b 100644
--- a/lang/python/python3-pyroute2/Makefile
+++ b/lang/python/python3-pyroute2/Makefile
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
 
 PKG_NAME:=python3-pyroute2
-PKG_VERSION:=0.5.14
+PKG_VERSION:=0.5.17
 PKG_RELEASE:=1
 
 PYPI_NAME:=pyroute2
-PKG_HASH:=774c5ecf05fe40f0f601a7ab33c19ca0b24f00bf4a094e58deaa5333b7ca49b5
+PKG_HASH:=12d51066ea5628a6fa76fc244f301a8eea5d25d71a9d664016976edfa3889733
 
 PKG_MAINTAINER:=Martin Matějek <martin.matejek@nic.cz>
 PKG_LICENSE:=GPL-2.0-or-later Apache-2.0
@@ -34,7 +35,8 @@ define Package/python3-pyroute2
          +python3-logging \
          +python3-multiprocessing \
          +python3-sqlite3 \
-         +python3-ctypes
+         +python3-ctypes \
+         +python3-psutil
 endef
 
 define Package/python3-pyroute2/description
