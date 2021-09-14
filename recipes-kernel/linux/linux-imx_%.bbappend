# Copyright (C) 2020-2021 Einfochips


PATCHTOOL = "git"

FILESEXTRAPATHS_append := "${THISDIR}/linux-imx"

# Other patches have been applied with commit ab2492cf6ab740065368cb6f44ffabbe6fcf6870 on linux-imx branch thor96-zeus
SRC_URI_append_imx8mqthor96 += "file://imx8mqthor96/arrow.cfg \
				                file://imx8mqthor96/0001-change-max-frequency-for-sd-card.patch \
						"

DELTA_KERNEL_DEFCONFIG +="${WORKDIR}/${MACHINE}/arrow.cfg"
