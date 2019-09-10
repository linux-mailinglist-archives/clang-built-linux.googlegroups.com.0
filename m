Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7N64DVQKGQE2DE6YKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD17AF2CB
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 00:11:11 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id d33sf14558936yba.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 15:11:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568153470; cv=pass;
        d=google.com; s=arc-20160816;
        b=mv8IHfwyEnIM7bDX1W/7SG9TbP1U2JmJ/63HNlCJB0abzku0cTZ2yF96yx/+MDoajP
         lC4IxtJW+TmNU1ELjzlMopunrhdawqvzPVQ8yIkNwrGyIhGOgIPvrVMQk13tXv1Qqsr/
         vBLmDAZBxFCI0bYy8/y3WNWwQ6PBcxf8fHhW3ccO5Z2xL4W1n5if8mHaJ8GVPBkI+hbh
         CsOcjNPSGg2UuDYo62xWps76MlkPsBuHFVMFzAx9JVq+YMK5b2ehrPRkzQQM7iDBl5yv
         rPqTn6jizAtFKD3betOP0Bat94B20XuKTg88YHo+KZ3ROaT/JD1a5pqOy/e0uaIRxbjh
         bEkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=M1Oz3jJ3VRr4ukbDHqlFjhHEXSNFk9U88EnDMDBe43s=;
        b=YQ5CLADckPqjaQ3iM+YAr7dC6p6N/dzJIF+MjV18OirHjkvyUDTIleTFCvrie9v6xi
         jJZu2YpGDyuJw96L3s6Jyvkpd1DBILn7VbHfx5ke34fDnhTaSei9lNbhKZewwoW51Wac
         AAbNkGf26vgQs60NMnXh3xP4b7oIhknArcaceGicu9rR8QyUEvMRL8CEuLux4Ee6h3S1
         RmmXdEOEUcEyBQpr4IJE24dpBsWGH7hOAYM69mPu1fJQ9L7EbVQUYONnb7Sq/BTyAWdV
         yCWWRMZDMQekGGMuMdU4rm9dSva864M3WIKx9p54H9icLTO4CTw5mnLI5CVsw+LC++a6
         Qt5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=M1Oz3jJ3VRr4ukbDHqlFjhHEXSNFk9U88EnDMDBe43s=;
        b=PNvXXdsAWqJw/Pj0LCk/S/PqQDb8CscLJNPpdQATjf145QmBxtwsMzqHXIIXZEskZy
         5gYU7h5+Kr6FpJNoPVIeQzX3moAy85AHqs8i4kpTS+pOs4LhiQGA1gEcUz51mLwQ3TjM
         pcXWTekhvlgJjrle4l4xbaADE7YJo+O+7gTWU0krBNGtTdErRN57GvrNAnjwd9cLdMes
         oQwaepy1H0uhB7GkEipATjhR4C18aLT5c1oM4+0LTbVemHoGesJCn9H55MgeCzClcjbZ
         ahKtmyfm/d/nSrsSwP2BqTh1yPH0R2GKqTbyPWmDZ+wcmiE4T7rOjIPNtS7Uhjl/oop/
         g1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M1Oz3jJ3VRr4ukbDHqlFjhHEXSNFk9U88EnDMDBe43s=;
        b=VKm/TTva1BVM5pKrh4+1Oy3RIJn/1yq2177OJSzpGGeFMAWNtl40XFYhoOj/9RDKx4
         JRFvHPB4sCj3VXXZKvT7FxaYmZP5tRj6aqPkkJ5Zg/HglKFdjn0awLjLJ07T9Kc62GIO
         8dw5j/RFGwV0Oqkdp4mBlUR1RpAApDxQ2BDnWuzZ1c5KXuI5WdxCSvnDJSCOyKTrKEVs
         mhoigoW05UXncMCnvdfoStJ0ZlHPQY4+ZA6AwI8W2Sh4+b0uYXbwDMVoSLA4rxtVBVUW
         g7ku1l9PADDiWzW2sIU0wWeDafO19G9FnVIE3NDZSliBDAsH4/mb/TqvHKFTAbfkEowd
         1WUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPeX7yNlSNW6++dMG4AgMqCcUDSIu8F8QtYg6A/hoN+jnZ3hWg
	YfidFFzqc0lHXZO8mdS3v0Q=
X-Google-Smtp-Source: APXvYqxt/A0HeVgsnnKCr/w67G8v0f1GBFJq2S4WE/pahlbb+D55WLnELSC78FNz0Tkoz5FI4JGlfQ==
X-Received: by 2002:a0d:d848:: with SMTP id a69mr2390645ywe.462.1568153469862;
        Tue, 10 Sep 2019 15:11:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:42c8:: with SMTP id p191ls3041761yba.4.gmail; Tue, 10
 Sep 2019 15:11:09 -0700 (PDT)
X-Received: by 2002:a25:6944:: with SMTP id e65mr22056072ybc.213.1568153469545;
        Tue, 10 Sep 2019 15:11:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568153469; cv=none;
        d=google.com; s=arc-20160816;
        b=H5bMbL1fx7IZPamaATaUD8uMNGbOlGRSCPTDbCF8TLHVy/rwUITSiaDrjFoExhNaSr
         02H5t1MmqC27yY4XTsJzJpgVjlSjurTOb8SErLSA+Bw9PSmOhtev3tufdbFAfWNmQBSc
         nOWy5qoC0zKsGueGvPNEP+esy/vlHRzNGbcxt3c7wfmifwYrqzrz/ysVaIp9ZTjj7JpV
         G9n0JfXe1WmZS9dsOFBgMI1VF6O1H2D2BK5YNzW3uh7oqxjwcrDVRiLECGX0S2Cj5e5X
         hESGnN1s4CNtSb2l2JmevNpmRNzBscjrthCPEbWHk0DM7u9qG7eBvhth9RBKM4VcMTNL
         ibgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=E2NGiuYILUS9O4XZEk7NqFVy5lVDnfgseMA8CwmJcDo=;
        b=tLVVRnTXTBqc4gPaaTqiaNzQE0CMWLv5TMXE9xTvg2syQrtq9r5KGF+iDokrNFbEmV
         2RtPwksfyQsoELWXPIsk26Y7ixs6Ye1Vvan1774FUCHeVj1krxsAUG00YaFlM3BFSNZc
         vHRLDVB4CYwQt76tc3KEj1H5RS2AYfq2cdS6L2X6ZU76js/BshGEGuG6hA7Aw1cyhmuL
         41ba3QR4DUwjLOEXj26Yn9S6U5qtl/prchx8AajsPK+iX8+IPiZJTSi8fstgb7z3wKPA
         lkMc5e5InCpa8dnlajZvPxS1coGqNP3O3KUVrgjhACAnxsuC6BYvtvrv9nn6rKc4XgsR
         FwMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id f78si1198474yba.1.2019.09.10.15.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2019 15:11:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2019 15:11:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; 
   d="scan'208";a="175457589"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 10 Sep 2019 15:11:07 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i7oLq-0009zY-GK; Wed, 11 Sep 2019 06:11:06 +0800
Date: Wed, 11 Sep 2019 06:11:02 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [hch-misc:kendryte-support 29/30] drivers/clk/Kconfig:324: can't
 open file "drivers/clk/kendryte/Kconfig"
Message-ID: <201909110600.fWcoFd9V%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

CC: kbuild-all@01.org
TO: Christoph Hellwig <hch@lst.de>

tree:   git://git.infradead.org/users/hch/misc.git kendryte-support
head:   4c99d0653acbf8fa07fd1fd6e15c435ae1eeb991
commit: ac05ac5546c9edf3c2b9f822616c78eec7dc5be8 [29/30] clk: add a Kendryte KD210 sysctl driver
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout ac05ac5546c9edf3c2b9f822616c78eec7dc5be8
        make.cross ARCH=powerpc  defconfig
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/clk/Kconfig:324: can't open file "drivers/clk/kendryte/Kconfig"
   make[2]: *** [defconfig] Error 1
   make[1]: *** [defconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  102.99% cpu 	make defconfig
--
>> drivers/clk/Kconfig:324: can't open file "drivers/clk/kendryte/Kconfig"
   make[2]: *** [oldconfig] Error 1
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  103.00% cpu 	make oldconfig
--
>> drivers/clk/Kconfig:324: can't open file "drivers/clk/kendryte/Kconfig"
   make[2]: *** [olddefconfig] Error 1
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  103.05% cpu 	make olddefconfig

vim +324 drivers/clk/Kconfig

    34	
    35	config CLK_HSDK
    36		bool "PLL Driver for HSDK platform"
    37		depends on OF || COMPILE_TEST
    38		---help---
    39		  This driver supports the HSDK core, system, ddr, tunnel and hdmi PLLs
    40		  control.
    41	
    42	config COMMON_CLK_MAX77686
    43		tristate "Clock driver for Maxim 77620/77686/77802 MFD"
    44		depends on MFD_MAX77686 || MFD_MAX77620 || COMPILE_TEST
    45		---help---
    46		  This driver supports Maxim 77620/77686/77802 crystal oscillator
    47		  clock.
    48	
    49	config COMMON_CLK_MAX9485
    50		tristate "Maxim 9485 Programmable Clock Generator"
    51		depends on I2C
    52		help
    53		  This driver supports Maxim 9485 Programmable Audio Clock Generator
    54	
    55	config COMMON_CLK_RK808
    56		tristate "Clock driver for RK805/RK808/RK809/RK817/RK818"
    57		depends on MFD_RK808
    58		---help---
    59		  This driver supports RK805, RK809 and RK817, RK808 and RK818 crystal oscillator clock.
    60		  These multi-function devices have two fixed-rate oscillators, clocked at 32KHz each.
    61		  Clkout1 is always on, Clkout2 can off by control register.
    62	
    63	config COMMON_CLK_HI655X
    64		tristate "Clock driver for Hi655x" if EXPERT
    65		depends on (MFD_HI655X_PMIC || COMPILE_TEST)
    66		depends on REGMAP
    67		default MFD_HI655X_PMIC
    68		---help---
    69		  This driver supports the hi655x PMIC clock. This
    70		  multi-function device has one fixed-rate oscillator, clocked
    71		  at 32KHz.
    72	
    73	config COMMON_CLK_SCMI
    74		tristate "Clock driver controlled via SCMI interface"
    75		depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
    76		  ---help---
    77		  This driver provides support for clocks that are controlled
    78		  by firmware that implements the SCMI interface.
    79	
    80		  This driver uses SCMI Message Protocol to interact with the
    81		  firmware providing all the clock controls.
    82	
    83	config COMMON_CLK_SCPI
    84		tristate "Clock driver controlled via SCPI interface"
    85		depends on ARM_SCPI_PROTOCOL || COMPILE_TEST
    86		  ---help---
    87		  This driver provides support for clocks that are controlled
    88		  by firmware that implements the SCPI interface.
    89	
    90		  This driver uses SCPI Message Protocol to interact with the
    91		  firmware providing all the clock controls.
    92	
    93	config COMMON_CLK_SI5341
    94		tristate "Clock driver for SiLabs 5341 and 5340 A/B/C/D devices"
    95		depends on I2C
    96		select REGMAP_I2C
    97		help
    98		  This driver supports Silicon Labs Si5341 and Si5340 programmable clock
    99		  generators. Not all features of these chips are currently supported
   100		  by the driver, in particular it only supports XTAL input. The chip can
   101		  be pre-programmed to support other configurations and features not yet
   102		  implemented in the driver.
   103	
   104	config COMMON_CLK_SI5351
   105		tristate "Clock driver for SiLabs 5351A/B/C"
   106		depends on I2C
   107		select REGMAP_I2C
   108		select RATIONAL
   109		---help---
   110		  This driver supports Silicon Labs 5351A/B/C programmable clock
   111		  generators.
   112	
   113	config COMMON_CLK_SI514
   114		tristate "Clock driver for SiLabs 514 devices"
   115		depends on I2C
   116		depends on OF
   117		select REGMAP_I2C
   118		help
   119		---help---
   120		  This driver supports the Silicon Labs 514 programmable clock
   121		  generator.
   122	
   123	config COMMON_CLK_SI544
   124		tristate "Clock driver for SiLabs 544 devices"
   125		depends on I2C
   126		select REGMAP_I2C
   127		help
   128		---help---
   129		  This driver supports the Silicon Labs 544 programmable clock
   130		  generator.
   131	
   132	config COMMON_CLK_SI570
   133		tristate "Clock driver for SiLabs 570 and compatible devices"
   134		depends on I2C
   135		depends on OF
   136		select REGMAP_I2C
   137		help
   138		---help---
   139		  This driver supports Silicon Labs 570/571/598/599 programmable
   140		  clock generators.
   141	
   142	config COMMON_CLK_CDCE706
   143		tristate "Clock driver for TI CDCE706 clock synthesizer"
   144		depends on I2C
   145		select REGMAP_I2C
   146		select RATIONAL
   147		---help---
   148		  This driver supports TI CDCE706 programmable 3-PLL clock synthesizer.
   149	
   150	config COMMON_CLK_CDCE925
   151		tristate "Clock driver for TI CDCE913/925/937/949 devices"
   152		depends on I2C
   153		depends on OF
   154		select REGMAP_I2C
   155		help
   156		---help---
   157		  This driver supports the TI CDCE913/925/937/949 programmable clock
   158		  synthesizer. Each chip has different number of PLLs and outputs.
   159		  For example, the CDCE925 contains two PLLs with spread-spectrum
   160		  clocking support and five output dividers. The driver only supports
   161		  the following setup, and uses a fixed setting for the output muxes.
   162		  Y1 is derived from the input clock
   163		  Y2 and Y3 derive from PLL1
   164		  Y4 and Y5 derive from PLL2
   165		  Given a target output frequency, the driver will set the PLL and
   166		  divider to best approximate the desired output.
   167	
   168	config COMMON_CLK_CS2000_CP
   169		tristate "Clock driver for CS2000 Fractional-N Clock Synthesizer & Clock Multiplier"
   170		depends on I2C
   171		help
   172		  If you say yes here you get support for the CS2000 clock multiplier.
   173	
   174	config COMMON_CLK_GEMINI
   175		bool "Clock driver for Cortina Systems Gemini SoC"
   176		depends on ARCH_GEMINI || COMPILE_TEST
   177		select MFD_SYSCON
   178		select RESET_CONTROLLER
   179		---help---
   180		  This driver supports the SoC clocks on the Cortina Systems Gemini
   181		  platform, also known as SL3516 or CS3516.
   182	
   183	config COMMON_CLK_ASPEED
   184		bool "Clock driver for Aspeed BMC SoCs"
   185		depends on ARCH_ASPEED || COMPILE_TEST
   186		default ARCH_ASPEED
   187		select MFD_SYSCON
   188		select RESET_CONTROLLER
   189		---help---
   190		  This driver supports the SoC clocks on the Aspeed BMC platforms.
   191	
   192		  The G4 and G5 series, including the ast2400 and ast2500, are supported
   193		  by this driver.
   194	
   195	config COMMON_CLK_S2MPS11
   196		tristate "Clock driver for S2MPS1X/S5M8767 MFD"
   197		depends on MFD_SEC_CORE || COMPILE_TEST
   198		---help---
   199		  This driver supports S2MPS11/S2MPS14/S5M8767 crystal oscillator
   200		  clock. These multi-function devices have two (S2MPS14) or three
   201		  (S2MPS11, S5M8767) fixed-rate oscillators, clocked at 32KHz each.
   202	
   203	config CLK_TWL6040
   204		tristate "External McPDM functional clock from twl6040"
   205		depends on TWL6040_CORE
   206		---help---
   207		  Enable the external functional clock support on OMAP4+ platforms for
   208		  McPDM. McPDM module is using the external bit clock on the McPDM bus
   209		  as functional clock.
   210	
   211	config COMMON_CLK_AXI_CLKGEN
   212		tristate "AXI clkgen driver"
   213		depends on ARCH_ZYNQ || MICROBLAZE || COMPILE_TEST
   214		help
   215		---help---
   216		  Support for the Analog Devices axi-clkgen pcore clock generator for Xilinx
   217		  FPGAs. It is commonly used in Analog Devices' reference designs.
   218	
   219	config CLK_QORIQ
   220		bool "Clock driver for Freescale QorIQ platforms"
   221		depends on (PPC_E500MC || ARM || ARM64 || COMPILE_TEST) && OF
   222		---help---
   223		  This adds the clock driver support for Freescale QorIQ platforms
   224		  using common clock framework.
   225	
   226	config COMMON_CLK_XGENE
   227		bool "Clock driver for APM XGene SoC"
   228		default ARCH_XGENE
   229		depends on ARM64 || COMPILE_TEST
   230		---help---
   231		  Sypport for the APM X-Gene SoC reference, PLL, and device clocks.
   232	
   233	config COMMON_CLK_LOCHNAGAR
   234		tristate "Cirrus Logic Lochnagar clock driver"
   235		depends on MFD_LOCHNAGAR
   236		help
   237		  This driver supports the clocking features of the Cirrus Logic
   238		  Lochnagar audio development board.
   239	
   240	config COMMON_CLK_NXP
   241		def_bool COMMON_CLK && (ARCH_LPC18XX || ARCH_LPC32XX)
   242		select REGMAP_MMIO if ARCH_LPC32XX
   243		select MFD_SYSCON if ARCH_LPC18XX
   244		---help---
   245		  Support for clock providers on NXP platforms.
   246	
   247	config COMMON_CLK_PALMAS
   248		tristate "Clock driver for TI Palmas devices"
   249		depends on MFD_PALMAS
   250		---help---
   251		  This driver supports TI Palmas devices 32KHz output KG and KG_AUDIO
   252		  using common clock framework.
   253	
   254	config COMMON_CLK_PWM
   255		tristate "Clock driver for PWMs used as clock outputs"
   256		depends on PWM
   257		---help---
   258		  Adapter driver so that any PWM output can be (mis)used as clock signal
   259		  at 50% duty cycle.
   260	
   261	config COMMON_CLK_PXA
   262		def_bool COMMON_CLK && ARCH_PXA
   263		---help---
   264		  Support for the Marvell PXA SoC.
   265	
   266	config COMMON_CLK_PIC32
   267		def_bool COMMON_CLK && MACH_PIC32
   268	
   269	config COMMON_CLK_OXNAS
   270		bool "Clock driver for the OXNAS SoC Family"
   271		depends on ARCH_OXNAS || COMPILE_TEST
   272		select MFD_SYSCON
   273		---help---
   274		  Support for the OXNAS SoC Family clocks.
   275	
   276	config COMMON_CLK_VC5
   277		tristate "Clock driver for IDT VersaClock 5,6 devices"
   278		depends on I2C
   279		depends on OF
   280		select REGMAP_I2C
   281		help
   282		---help---
   283		  This driver supports the IDT VersaClock 5 and VersaClock 6
   284		  programmable clock generators.
   285	
   286	config COMMON_CLK_STM32MP157
   287		def_bool COMMON_CLK && MACH_STM32MP157
   288		help
   289		---help---
   290		  Support for stm32mp157 SoC family clocks
   291	
   292	config COMMON_CLK_STM32F
   293		def_bool COMMON_CLK && (MACH_STM32F429 || MACH_STM32F469 || MACH_STM32F746)
   294		help
   295		---help---
   296		  Support for stm32f4 and stm32f7 SoC families clocks
   297	
   298	config COMMON_CLK_STM32H7
   299		def_bool COMMON_CLK && MACH_STM32H743
   300		help
   301		---help---
   302		  Support for stm32h7 SoC family clocks
   303	
   304	config COMMON_CLK_BD718XX
   305		tristate "Clock driver for ROHM BD718x7 PMIC"
   306		depends on MFD_ROHM_BD718XX || MFD_ROHM_BD70528
   307		help
   308		  This driver supports ROHM BD71837, ROHM BD71847 and
   309		  ROHM BD70528 PMICs clock gates.
   310	
   311	config COMMON_CLK_FIXED_MMIO
   312		bool "Clock driver for Memory Mapped Fixed values"
   313		depends on COMMON_CLK && OF
   314		help
   315		  Support for Memory Mapped IO Fixed clocks
   316	
   317	source "drivers/clk/actions/Kconfig"
   318	source "drivers/clk/analogbits/Kconfig"
   319	source "drivers/clk/bcm/Kconfig"
   320	source "drivers/clk/hisilicon/Kconfig"
   321	source "drivers/clk/imgtec/Kconfig"
   322	source "drivers/clk/imx/Kconfig"
   323	source "drivers/clk/ingenic/Kconfig"
 > 324	source "drivers/clk/kendryte/Kconfig"
   325	source "drivers/clk/keystone/Kconfig"
   326	source "drivers/clk/mediatek/Kconfig"
   327	source "drivers/clk/meson/Kconfig"
   328	source "drivers/clk/mvebu/Kconfig"
   329	source "drivers/clk/qcom/Kconfig"
   330	source "drivers/clk/renesas/Kconfig"
   331	source "drivers/clk/samsung/Kconfig"
   332	source "drivers/clk/sifive/Kconfig"
   333	source "drivers/clk/sprd/Kconfig"
   334	source "drivers/clk/sunxi/Kconfig"
   335	source "drivers/clk/sunxi-ng/Kconfig"
   336	source "drivers/clk/tegra/Kconfig"
   337	source "drivers/clk/ti/Kconfig"
   338	source "drivers/clk/uniphier/Kconfig"
   339	source "drivers/clk/zynqmp/Kconfig"
   340	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909110600.fWcoFd9V%25lkp%40intel.com.
