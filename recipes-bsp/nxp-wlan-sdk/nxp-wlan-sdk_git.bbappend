FILESEXTRAPATHS_append := "${THISDIR}/files:"

SRC_URI += "file://0001-makefile-kernel-src.patch"

inherit module

do_compile () {
    # Change build folder to SDK folder
    cd ${S}/mxm_wifiex/wlan_src

    oe_runmake build
}

do_install () {
   # install ko and configs to rootfs
   install -d ${D}${datadir}/nxp_wireless
   cp -rf ${S}/mxm_wifiex/bin_mxm_wifiex ${D}${datadir}/nxp_wireless
}

FILES_${PN} = "${datadir}/nxp_wireless"

INSANE_SKIP_${PN} = "ldflags"

COMPATIBLE_MACHINE = "(mx6|mx7|mx8)"
