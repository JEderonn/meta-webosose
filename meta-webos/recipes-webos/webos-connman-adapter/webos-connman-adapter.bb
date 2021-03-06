# Copyright (c) 2012-2020 LG Electronics, Inc.

DESCRIPTION = "webOS component for managing network connections using connman"
AUTHOR = "Seokhee Lee <seokhee.lee@lge.com>"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = " \
    file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10 \
    file://oss-pkg-info.yaml;md5=b0cf0d697c8340cbfa56b94bdc2539fb \
"

SECTION = "webos/services"

DEPENDS = "luna-service2 libpbnjson glib-2.0 luna-prefs openssl glib-2.0-native wca-support-api wca-support"
RDEPENDS_${PN} = "connman connman-client"

WEBOS_VERSION = "1.1.0-26_aa5596bcdee63ba6ef944d192913e881562aafe3"
PR = "r6"

inherit webos_component
inherit webos_public_repo
inherit webos_enhanced_submissions
inherit webos_cmake
inherit webos_daemon
inherit webos_system_bus
inherit webos_machine_dep

# Set EXTRA_OECMAKE in webos-connman-adapter.bbappend to override default value for wifi and wired interfaces, for eg.
# EXTRA_OECMAKE += "-DWIFI_IFACE_NAME=wlan0 -DWIRED_IFACE_NAME=eth1"

EXTRA_OECMAKE += "-DENABLE_SCAN_ON_SOFTAP=true"

SRC_URI = "${WEBOSOSE_GIT_REPO_COMPLETE}"
S = "${WORKDIR}/git"
