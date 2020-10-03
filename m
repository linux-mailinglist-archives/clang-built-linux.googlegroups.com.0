Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBI444P5QKGQEQ3ST4EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1764A282614
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 21:16:53 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id u64sf5502652ybb.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 12:16:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601752612; cv=pass;
        d=google.com; s=arc-20160816;
        b=taMDe3CZL20Zm1Fxi9QueJI0o8cf6bEAT4G46nFjrZrGj1Qxj4oIkf0+gaaNSkLjOa
         FSneu9vcZX+gDQCwkNwVfbOqHNAJ116KYCJVQaK5Fpk4RePT+5E89jSO8X3op9u8LH/I
         6Y5rKkmlartCBT+j2N5ip4HUPoDy0KrgfIjArvH6/+pk0A3b7+c71gOzmFNhRxF1N8Vz
         wcVEbhvwPqENM4AW7g5fVyDz4i2ZWrW+zgAGKSbVkQ+SZSJXfv/Fu/YXtaRo5EC8OZLh
         2DB+OPbc7gqAqbkLOtHOUhsSuoExu0MoQs/xBVEvpkW0yUxmFh46MyDgLq8rP10vbhaH
         ucNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=UEfe0EB6tPsYVWbwryBJaFpys9QvTxz52xHoqHfHtUE=;
        b=eVu1R4QgpJOrrh4aK+w/BRkAoJChYgc+mY5mL9uX2UaqFb+BBvtj6oHbsP+FIHO0ni
         GZARd8M8HcDQlihyZCpOyz1De2yFPXAAR7ze8Kf9Fvh0mUK8PqPFhmjJZRSv3sHoQ5sR
         O5LvFqTotzMLlMUb+4uAfthE3fPrrAiV7JXpN7OPcibVW7KE+p9wLbTYWena0Nt3k2Io
         +fawHMLcYAcZT1s00cWRo3SSTVKapNQGHbnNhTQI6lUcOMJyY1Od/ZIVzbMk9SrELKgB
         e0hZjX3LAaQFezSnoMFIsTfTkhHd6/416CjGPtLR/fkik9Bi6eo6pOx6qtxLGte911Ct
         Lc1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UEfe0EB6tPsYVWbwryBJaFpys9QvTxz52xHoqHfHtUE=;
        b=L597+KufJb2goQJzw6yitPOCDi9RBQzzeP0tzZCP4HcmAWrx5BCHLQki6OoiLcagtm
         0qS0FMBZuFad49jV/732yPG0DXpG+kDtCh9R0khlEphEuXWxd0E1BEqib1f6sNp37ltS
         ayH9nWYpnxhZIbNLO1Ma/FeCWg0DUvS27xYY7lgHbporLoOMquITiw8U4cOGum7ZcRA7
         izutG349lpo2889MJ7m02WItvsWUtKjeW6XP+8TAT+Cj1Y15Iwl05CdeTyDVClnV1Nbu
         Hgf51O+DkdugNNxtOYgMHcS10HfEGLC9OUo354ZV9ll3WrdxOvsB/0CoD12z3a1QXEvE
         9bcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UEfe0EB6tPsYVWbwryBJaFpys9QvTxz52xHoqHfHtUE=;
        b=jSG+BQq2jznskegqCZRa6fMUs2FHVLq+XrJhPJfLYYtpggQSkQzRVq83EJf26Z10EG
         fpKbvlDIguM0fWLNeN24CumP9bHwMUQiu3NuEl5hbGbU5Hp45t78FoJ0/Kr7Nkn1GP0P
         p2qrUvFeHdg6maj6wIu6fp2QfkIGBd53/Q7K3VYWG3jsK3P1IaHb3UkUBem9+q/V3nDL
         pZ6+IDRsiTSqn42bNFgu+eyOzJGkpo6sY/ERABKQCnTxjbWFgqCl8KbNwl0PuN+y/nb5
         D/Uk9w7eDj0oygbYW0goJA5FVA+2HSFR5Ic95uSnfkb9ZXU/EbmDkD4Yt+Y0eK2zfQdr
         eptA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AHmbZrvh0VITG288kpigXG/mDNbXkXwCNoIvEDK+Ipqk3NHFO
	J5wVytmvLajVHRSrVEWc8P4=
X-Google-Smtp-Source: ABdhPJyyBBd4mA/ukC3ArhiNfCg8NTm+bp1+EWHACBWip0uF0/3RgcDNNmalef4T7kivefseC5mwgg==
X-Received: by 2002:a25:32c2:: with SMTP id y185mr10857370yby.101.1601752612125;
        Sat, 03 Oct 2020 12:16:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:24d4:: with SMTP id k203ls2095495ybk.3.gmail; Sat, 03
 Oct 2020 12:16:51 -0700 (PDT)
X-Received: by 2002:a25:be8d:: with SMTP id i13mr10933268ybk.71.1601752611568;
        Sat, 03 Oct 2020 12:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601752611; cv=none;
        d=google.com; s=arc-20160816;
        b=Ayr52mfQKhV3A4YFTPdjPdm+Bk43Yc0TGSvi4Cn7XLYoIqSTs6+kzXRyV3t0nSabkX
         5UsOR95iXl+q9OuY4zz6f6en/PomJAW7COjStJMDrCiWp50bpUnumCqyJmPTIO6uu99D
         AQ2qQ6kqJt3eZRvE7LdN9awxW04/mxe2kgsupgOMe7Tuy4e5j+CPL8EYJK2m04wcjAAv
         TQFUQ8mFrFptgxLM4OE4CTyv+LkAGZ64Bv59Jz3VO/XutnvOZD9okUVY3JHS93slWW3r
         rxRA5XSnM0K4U4gPofjp9WdDQcJp8FvxWeyl93fNIwP9PR7iBQYf6xe+Kp4c9qmSXhPe
         SFqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5oWpJMROqwbBs0BR+lusI7qNq0wX7+KxOyhJ4v52stw=;
        b=QwKPKc9vNQNhzk7L2++AeFaAdt4wYLZYxwOLSwv+Zb8I+ni0UbtOHEx1KbUB+cwrQs
         Acbm3mA6+91XKrv/gAkXUnkQqYr05y++8U5dbbt/58+WcUzmE3fH4RIofxBkGsqpb9Pr
         7I5RNTyiS+98Wu4bhy8ud7zHrj/YJOC1frPNBiRhYd/xCt73XORGyjHqD+lFw70X8dx5
         fxw2HV/7X45ghrhQHqasAOFrMRBcu6qq6Hm0YXmOYA0LOdChF5GSI0EkBpd+6ef4uIxK
         W5Um/zD/WpzzLrgzaywzMJ1Lvvpw7xh38xyTjLk2teuI+y2DgR4yPvLw7r3itkNtqBfi
         3dUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id s69si314774ybc.4.2020.10.03.12.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2020 12:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: mzzNQmbsTQxXwaiz7Qs80UQOT/Sutfsq/hYJeX+QGUvRgYqmQhssV1oACZaJ8jLvctgvC+Izpa
 1cSOSA67Ibjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9763"; a="160554211"
X-IronPort-AV: E=Sophos;i="5.77,332,1596524400"; 
   d="scan'208";a="160554211"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2020 12:16:50 -0700
IronPort-SDR: 0BM00xjHVf1bgnf4b1RV5n1kUnIKByJvaPFuf6zAXzVALRpGxQzGFxok9Fg2JxytGZTm5QiBe/
 7XvkmG7Km+5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,332,1596524400"; 
   d="scan'208";a="295677626"
Received: from lkp-server02.sh.intel.com (HELO b5ae2f167493) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2020 12:16:47 -0700
Received: from kbuild by b5ae2f167493 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kOn1T-0000DQ-8l; Sat, 03 Oct 2020 19:16:47 +0000
Date: Sun, 4 Oct 2020 03:16:25 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [frank-w-bpi-r2-4.14:5.9-hdmisnd 40/58]
 drivers/misc/mediatek/connectivity/Kconfig:268: syntax error
Message-ID: <202010040323.rDZMnVSy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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

tree:   https://github.com/frank-w/BPI-R2-4.14 5.9-hdmisnd
head:   a811c6eb48da84b9897d5c477347f0132cc93077
commit: 3efc6d733b0475c3623d52d23dbd2ebe0fcd5eb5 [40/58] mt6625l: include wifi-folder
config: x86_64-randconfig-a001-20201003
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/frank-w/BPI-R2-4.14/commit/3efc6d733b0475c3623d52d23dbd2ebe0fcd5eb5
        git remote add frank-w-bpi-r2-4.14 https://github.com/frank-w/BPI-R2-4.14
        git fetch --no-tags frank-w-bpi-r2-4.14 5.9-hdmisnd
        git checkout 3efc6d733b0475c3623d52d23dbd2ebe0fcd5eb5
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64  randconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

Note: the frank-w-bpi-r2-4.14/5.9-hdmisnd HEAD a811c6eb48da84b9897d5c477347f0132cc93077 builds fine.
      It only hurts bisectibility.

All errors (new ones prefixed by >>):

>> drivers/misc/mediatek/connectivity/Kconfig:268: syntax error
   drivers/misc/mediatek/connectivity/Kconfig:267: unknown statement "---help---"
   drivers/misc/mediatek/connectivity/Kconfig:268:warning: ignoring unsupported character '.'
   drivers/misc/mediatek/connectivity/Kconfig:268: unknown statement "Say"
   drivers/misc/mediatek/connectivity/Kconfig:275: syntax error
   drivers/misc/mediatek/connectivity/Kconfig:274: unknown statement "---help---"
   drivers/misc/mediatek/connectivity/Kconfig:275: unknown statement "MTK"
   drivers/misc/mediatek/connectivity/Kconfig:276:warning: ignoring unsupported character '.'
   drivers/misc/mediatek/connectivity/Kconfig:276: unknown statement "To"
   drivers/misc/mediatek/connectivity/Kconfig:277:warning: ignoring unsupported character '.'
   drivers/misc/mediatek/connectivity/Kconfig:277: unknown statement "Set"
   drivers/misc/mediatek/connectivity/Kconfig:278:warning: ignoring unsupported character '.'
   drivers/misc/mediatek/connectivity/Kconfig:278: unknown statement "Set"
   make[2]: *** [scripts/kconfig/Makefile:71: oldconfig] Error 1
   make[1]: *** [Makefile:606: oldconfig] Error 2
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'oldconfig' not remade because of errors.
--
>> drivers/misc/mediatek/connectivity/Kconfig:268: syntax error
   drivers/misc/mediatek/connectivity/Kconfig:267: unknown statement "---help---"
   drivers/misc/mediatek/connectivity/Kconfig:268:warning: ignoring unsupported character '.'
   drivers/misc/mediatek/connectivity/Kconfig:268: unknown statement "Say"
   drivers/misc/mediatek/connectivity/Kconfig:275: syntax error
   drivers/misc/mediatek/connectivity/Kconfig:274: unknown statement "---help---"
   drivers/misc/mediatek/connectivity/Kconfig:275: unknown statement "MTK"
   drivers/misc/mediatek/connectivity/Kconfig:276:warning: ignoring unsupported character '.'
   drivers/misc/mediatek/connectivity/Kconfig:276: unknown statement "To"
   drivers/misc/mediatek/connectivity/Kconfig:277:warning: ignoring unsupported character '.'
   drivers/misc/mediatek/connectivity/Kconfig:277: unknown statement "Set"
   drivers/misc/mediatek/connectivity/Kconfig:278:warning: ignoring unsupported character '.'
   drivers/misc/mediatek/connectivity/Kconfig:278: unknown statement "Set"
   make[2]: *** [scripts/kconfig/Makefile:71: olddefconfig] Error 1
   make[1]: *** [Makefile:606: olddefconfig] Error 2
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'olddefconfig' not remade because of errors.

vim +268 drivers/misc/mediatek/connectivity/Kconfig

2c660696dc60461 Frank Wunderlich 2020-08-17  176  
2c660696dc60461 Frank Wunderlich 2020-08-17  177  config MTK_COMBO_COMM_UART
2c660696dc60461 Frank Wunderlich 2020-08-17  178  	depends on MTK_COMBO_COMM
2c660696dc60461 Frank Wunderlich 2020-08-17  179  	tristate "Common interface UART"
2c660696dc60461 Frank Wunderlich 2020-08-17  180  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  181  	  Use UART for common part interface type
2c660696dc60461 Frank Wunderlich 2020-08-17  182  
2c660696dc60461 Frank Wunderlich 2020-08-17  183  config MTK_COMBO_COMM_SDIO
2c660696dc60461 Frank Wunderlich 2020-08-17  184  	depends on MTK_COMBO_COMM
2c660696dc60461 Frank Wunderlich 2020-08-17  185  	tristate "Common interface SDIO"
2c660696dc60461 Frank Wunderlich 2020-08-17  186  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  187  	  Use SDIO for common part interface type
2c660696dc60461 Frank Wunderlich 2020-08-17  188  
2c660696dc60461 Frank Wunderlich 2020-08-17  189  config MTK_COMBO_COMM_NPWR
2c660696dc60461 Frank Wunderlich 2020-08-17  190  	depends on MTK_COMBO_COMM
2c660696dc60461 Frank Wunderlich 2020-08-17  191  	bool "Enable NPWR support"
2c660696dc60461 Frank Wunderlich 2020-08-17  192  	default n
2c660696dc60461 Frank Wunderlich 2020-08-17  193  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  194  	  Enable NPWR support of new power on swquence
2c660696dc60461 Frank Wunderlich 2020-08-17  195  
2c660696dc60461 Frank Wunderlich 2020-08-17  196  config MTK_COMBO_COMM_APO
2c660696dc60461 Frank Wunderlich 2020-08-17  197  	depends on MTK_COMBO_COMM
2c660696dc60461 Frank Wunderlich 2020-08-17  198  	bool "Enable always power on support"
2c660696dc60461 Frank Wunderlich 2020-08-17  199  	#default y
2c660696dc60461 Frank Wunderlich 2020-08-17  200  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  201  	  Enable chip will always power on
2c660696dc60461 Frank Wunderlich 2020-08-17  202  
2c660696dc60461 Frank Wunderlich 2020-08-17  203  config MTK_COMBO_BT
2c660696dc60461 Frank Wunderlich 2020-08-17  204  	tristate "MediaTek Combo Chip BT driver"
2c660696dc60461 Frank Wunderlich 2020-08-17  205  	depends on BT && MTK_COMBO
2c660696dc60461 Frank Wunderlich 2020-08-17  206  	select MTK_BTIF
2c660696dc60461 Frank Wunderlich 2020-08-17  207  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  208  	  MTK BT /dev/stpbt driver for Bluedroid
2c660696dc60461 Frank Wunderlich 2020-08-17  209  
2c660696dc60461 Frank Wunderlich 2020-08-17  210  config MTK_COMBO_BT_HCI
2c660696dc60461 Frank Wunderlich 2020-08-17  211  	tristate "MediaTek Combo Chip BlueZ driver"
2c660696dc60461 Frank Wunderlich 2020-08-17  212  	depends on BT && MTK_COMBO
2c660696dc60461 Frank Wunderlich 2020-08-17  213  	select MTK_BTIF
2c660696dc60461 Frank Wunderlich 2020-08-17  214  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  215  	  MTK BT driver for BlueZ
2c660696dc60461 Frank Wunderlich 2020-08-17  216  
2c660696dc60461 Frank Wunderlich 2020-08-17  217  config MTK_COMBO_WIFI
2c660696dc60461 Frank Wunderlich 2020-08-17  218  	tristate "MediaTek combo chip Wi-Fi support"
2c660696dc60461 Frank Wunderlich 2020-08-17  219  	depends on MTK_COMBO
2c660696dc60461 Frank Wunderlich 2020-08-17  220  	select MTK_BTIF
2c660696dc60461 Frank Wunderlich 2020-08-17  221  	select WIRELESS_EXT
2c660696dc60461 Frank Wunderlich 2020-08-17  222  	select WEXT_PRIV
2c660696dc60461 Frank Wunderlich 2020-08-17  223  
2c660696dc60461 Frank Wunderlich 2020-08-17  224  config MTK_WAPI_SUPPORT
2c660696dc60461 Frank Wunderlich 2020-08-17  225  	bool "MTK_WAPI_SUPPORT"
2c660696dc60461 Frank Wunderlich 2020-08-17  226  	depends on MTK_COMBO_WIFI
2c660696dc60461 Frank Wunderlich 2020-08-17  227  	#default y
2c660696dc60461 Frank Wunderlich 2020-08-17  228  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  229  	  if it is set to TRUE: Support WAPI (WLAN Authentication and
2c660696dc60461 Frank Wunderlich 2020-08-17  230  	  Privacy Infrastructure)
2c660696dc60461 Frank Wunderlich 2020-08-17  231  
2c660696dc60461 Frank Wunderlich 2020-08-17  232  config MTK_PASSPOINT_R1_SUPPORT
2c660696dc60461 Frank Wunderlich 2020-08-17  233  	bool "MTK_PASSPOINT_R1_SUPPORT"
2c660696dc60461 Frank Wunderlich 2020-08-17  234  	depends on MTK_COMBO_WIFI
2c660696dc60461 Frank Wunderlich 2020-08-17  235  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  236  	  Support Passpoint R1 (Hotspot 2.0 R1)
2c660696dc60461 Frank Wunderlich 2020-08-17  237  
2c660696dc60461 Frank Wunderlich 2020-08-17  238  config MTK_PASSPOINT_R2_SUPPORT
2c660696dc60461 Frank Wunderlich 2020-08-17  239  	bool "MTK_PASSPOINT_R2_SUPPORT"
2c660696dc60461 Frank Wunderlich 2020-08-17  240  	depends on MTK_COMBO_WIFI
2c660696dc60461 Frank Wunderlich 2020-08-17  241  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  242  	   Support Passpoint R2
2c660696dc60461 Frank Wunderlich 2020-08-17  243  
2c660696dc60461 Frank Wunderlich 2020-08-17  244  config MTK_WIFI_MCC_SUPPORT
2c660696dc60461 Frank Wunderlich 2020-08-17  245  	bool "MTK_WIFI_MCC_SUPPORT"
2c660696dc60461 Frank Wunderlich 2020-08-17  246  	depends on MTK_COMBO_WIFI
2c660696dc60461 Frank Wunderlich 2020-08-17  247  	#default y
2c660696dc60461 Frank Wunderlich 2020-08-17  248  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  249  	   if it is set to TRUE, wlan will support Multi-Channel Concurrency,
2c660696dc60461 Frank Wunderlich 2020-08-17  250  	   otherwise, only support Single Channel Concurrency
2c660696dc60461 Frank Wunderlich 2020-08-17  251  
2c660696dc60461 Frank Wunderlich 2020-08-17  252  config MTK_DHCPV6C_WIFI
2c660696dc60461 Frank Wunderlich 2020-08-17  253  	bool "MTK_DHCPV6C_WIFI"
2c660696dc60461 Frank Wunderlich 2020-08-17  254  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  255  	  no: disable this feature
2c660696dc60461 Frank Wunderlich 2020-08-17  256  
2c660696dc60461 Frank Wunderlich 2020-08-17  257  config MTK_CONN_LTE_IDC_SUPPORT
2c660696dc60461 Frank Wunderlich 2020-08-17  258  	bool "MediaTek CONN LTE IDC support"
2c660696dc60461 Frank Wunderlich 2020-08-17  259  	select MTK_CONN_MD
2c660696dc60461 Frank Wunderlich 2020-08-17  260  	#default y
2c660696dc60461 Frank Wunderlich 2020-08-17  261  	help
2c660696dc60461 Frank Wunderlich 2020-08-17  262  	  This option enables CONN LTE IDC support
2c660696dc60461 Frank Wunderlich 2020-08-17  263  
2c660696dc60461 Frank Wunderlich 2020-08-17  264  menuconfig GPS
2c660696dc60461 Frank Wunderlich 2020-08-17  265          tristate "GPS drivers"
2c660696dc60461 Frank Wunderlich 2020-08-17  266          #default y
2c660696dc60461 Frank Wunderlich 2020-08-17  267          ---help---
2c660696dc60461 Frank Wunderlich 2020-08-17 @268            Say Y here for supporting GPS.
2c660696dc60461 Frank Wunderlich 2020-08-17  269  

:::::: The code at line 268 was first introduced by commit
:::::: 2c660696dc60461c871c1901dcf540c81837a421 mt6625l: add wifi-folder from 5.8

:::::: TO: Frank Wunderlich <frank-w@public-files.de>
:::::: CC: Frank Wunderlich <frank-w@public-files.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010040323.rDZMnVSy-lkp%40intel.com.
