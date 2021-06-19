Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3FDWWDAMGQEPYAPLHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 719D93AD697
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 04:09:50 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id z4-20020ac87f840000b02902488809b6d6sf8990937qtj.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 19:09:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624068589; cv=pass;
        d=google.com; s=arc-20160816;
        b=QVOhcXnAsI7etsdvpTdVYsuO5gEnl5W3lH/U8AUDBHCtUnNQdGNqYIcB4enAbEoQDI
         IGaGOKnyzCj5/Dn+7+L1XoS1eTMr+QafdbWl2g1g8Np8SdWueeSNwSfY/JkEdaZ4tSEU
         vmEFNsNiqm98aB4nIv7BazOF8b4Mf0/ZpHKFFi7sb6XygmvjYZVJ4UGWToqNFAt6CgDw
         IKjdCbOVnto4eO97FHDh2ll6PYE+XbB/S0pag3uo0C1mum5qrEiw2jqLps48G8o8NKnB
         7CiTWmOLrmL4SAXwGL7zKXIkbSXjxydkviQM5eIlMttTGY52qH6gZ+5L43n+iYaXFMj9
         rXPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=S4kJRyvaK4VU8la7SA56wM6vBzGHuWQfusu+rIGuauA=;
        b=hEpf+MYbgEGEbeQkx0g12DwpLwX6jBawIErcZJH3lyRP+N0928w6HpcNHsC0sma4FT
         I5yuiUe1J4LsO7kf8GDR647owYMIVSTC6L837v+DE2iOMc43NVP+9xnxcB6mBrNWu4XV
         EIJY5vhBODls01T6pICa1iRMM8UXvTVq7OzSTAdggmr46/RbxIlTIH/rP8FVmL3drIGZ
         5Yntrez9HHbevFtcGhbKtoUxFwiWxf5OV28LqhaQKfhD/HLjsmL6j08v24u1FbNyueA0
         SNNwIWsiI951pQZ1SF1lj6N3n2IHFYtrY09yBn3BhhaDd/3bEX+AqBE7yh3yemsUY0cx
         E6Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S4kJRyvaK4VU8la7SA56wM6vBzGHuWQfusu+rIGuauA=;
        b=mUfuwbhCmjxqX6aoiOEU6QkdeCHdtdvgsYL51PQpYlOWZzL60N3RFHGgK4zIcH2EnM
         EAeF45KEfqmvcfpF4eo+PwmwPCCPhaR1A605zo5s/3TUmoYTzYQCLdEIxaS8QXFhtXi8
         xppiPdB0nFpgezyFzsHhKnDooLRUd+wfc1yT392HLzX5QaZBktgaKczYbX07aFefp4Tu
         oHgI4L486c4h3skM5OdoaMbHGCH4ywv81D8MhTXlm8wTiEAZr89G20IAthtS7SAbfJEk
         k2OfS6yDAUvX3Q0CZkQZwi+gWJhESy8NbHVGhhEiKgb3yhbfJVQX6/2A3TRtXfRE3yUu
         63FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S4kJRyvaK4VU8la7SA56wM6vBzGHuWQfusu+rIGuauA=;
        b=FUO4ExHXEcecGlHjXI2GqH5cGlY8ooM1ebFkf0yvE/2DVawwUNJWR0+hoQI7mVW5/j
         muiBsXC5Qh6iy5UTZkwLVpOzjkeqdKJYVDV9PECfKLkRCtIe5tMBMMgtOR/5BK4CV/Rp
         HlCzpop9PUIHejsMkNbBGCLpUA/FUeMzMeVHN+0sUr8PlcVmN2/N5Y7OieK1dr3ChqYL
         QvXbynKo0egH1WLRh8mKn0AuZ0I5Am/Si8pKMR9Rfw6X7B0dLZAucK+PkQinDcd9kAzV
         URqZ/qAiPPNxHgcADPP1H5bWPNn5MPLXvpGcvODzkM0cE35B8eRNGloz64fY83CQ/8fv
         D/nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532N2ha4elWSNt/ugjfpkoOE36W43k1z1chPr5bYFpcsw14xF59z
	t6DotJZabyNhSD3rrpw1oqU=
X-Google-Smtp-Source: ABdhPJwPUZejHH09Sphi5zAhInz5hdLsg1v8waHtNSUyJnmWObMj+wRyhV7ipOncE/DI9ZqoKGexnQ==
X-Received: by 2002:ac8:7e81:: with SMTP id w1mr13335721qtj.130.1624068588931;
        Fri, 18 Jun 2021 19:09:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e407:: with SMTP id q7ls7967998qkc.9.gmail; Fri, 18 Jun
 2021 19:09:48 -0700 (PDT)
X-Received: by 2002:a37:f717:: with SMTP id q23mr12352861qkj.463.1624068588269;
        Fri, 18 Jun 2021 19:09:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624068588; cv=none;
        d=google.com; s=arc-20160816;
        b=IHvU7GBoSbeC3jW9+9ojD619nlGCjuGTVSeiaLxFwKdbmBo3UG0Rwb6qhXHPtr7l3c
         /xJIkaav46kdhM+Vmk9IxPNmeZ1ClxFYbQMU+AzuxOj5aAU8LPApGI9qPtF9Vp+UCWqO
         AL+aBmJ31IcQXGyewFIpEV5lO1mx0fjHXHOSejWHpgZeszxlrAIm++WsX2OsXAVRSqLm
         nO5SGKmSUomzID0h5n0pg1k1mlxaNf4jry/w+j3kbSnD3We+wI+xv1Tay48KEAgSPdnN
         4HESDig8hYsorR6piOzJgnbfD9juMgXreVmqgAfqO7Ah/JoBpefhKiLmyWbmqM6pwaPT
         jw1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=5edMgFbVlLiNFUvgYxxE0w6rDqPHDGBMBi8AaQ1ThGM=;
        b=zFR6D7//y6hHu0CpbAm0B5xShTzzJx+BbH/Ag3AV1aMRca/Zg5PfpF5Q7oRAbvrZi1
         Xu/VWK5uixmrjAqoXRNkJb7IOn0Rfb9mfLTUZECfHaPbigqylsgMQOshS/z7FGDWfWJ0
         D45mQFg9JIa3+6GYtDIzQpUgB8JF+kq61fjEqsOjBx/m5Z/wxDAjfst4kJWVw5BwQJxf
         CcOLr36pL5qKwfUlFI90HdNIn+EHewjEk81xy9/UnB5+IZRLIxA2PII4Bt1I5ag82Jui
         ckUl3E9wSMiBq3th0wh3ggCgssdcMTigZUrne4Qs24zPbvLbNRiAi50UQJidBS54cnuD
         RgBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id s19si397945qtk.0.2021.06.18.19.09.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 19:09:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: V4b+JxFUTWn2IU4qE7SXO+mja8yphfYVykh044OL1nX/QI9VpfJkLDShd58QqcqkEE25mMAjrI
 PsiyE69FqWGw==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="206685195"
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; 
   d="gz'50?scan'50,208,50";a="206685195"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jun 2021 19:09:46 -0700
IronPort-SDR: hAAhvy44+Hhr8mGShmMn7jDU3Z++7wUNJ9QxJBXIEKhETGstHJ20qXhYqpTT8THxh+tU4megRy
 wohl24YyvfKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; 
   d="gz'50?scan'50,208,50";a="555744426"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2021 19:09:44 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1luQQZ-0003Ga-ML; Sat, 19 Jun 2021 02:09:43 +0000
Date: Sat, 19 Jun 2021 10:08:42 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
Subject: drivers/net/usb/r8152.c:7474:13: warning: stack frame size of 8736
 bytes in function 'r8156b_hw_phy_cfg'
Message-ID: <202106191051.M5WbPoQW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   728a748b3ff70326f652ab92081d639dc51269ea
commit: 8203c7ce4ef2840929d38b447b4ccd384727f92b Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
date:   9 weeks ago
config: powerpc-randconfig-r023-20210619 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d1baf2895467735ab14f4b3415fce204c0cc8e7f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8203c7ce4ef2840929d38b447b4ccd384727f92b
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 8203c7ce4ef2840929d38b447b4ccd384727f92b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/net/usb/r8152.c:6:
   In file included from include/linux/signal.h:5:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:109:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:308:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/net/usb/r8152.c:7474:13: warning: stack frame size of 8736 bytes in function 'r8156b_hw_phy_cfg' [-Wframe-larger-than]
   static void r8156b_hw_phy_cfg(struct r8152 *tp)
               ^
   2 warnings generated.


vim +/r8156b_hw_phy_cfg +7474 drivers/net/usb/r8152.c

195aae321c829d Hayes Wang 2021-04-16  7473  
195aae321c829d Hayes Wang 2021-04-16 @7474  static void r8156b_hw_phy_cfg(struct r8152 *tp)
195aae321c829d Hayes Wang 2021-04-16  7475  {
195aae321c829d Hayes Wang 2021-04-16  7476  	u32 ocp_data;
195aae321c829d Hayes Wang 2021-04-16  7477  	u16 data;
195aae321c829d Hayes Wang 2021-04-16  7478  
195aae321c829d Hayes Wang 2021-04-16  7479  	switch (tp->version) {
195aae321c829d Hayes Wang 2021-04-16  7480  	case RTL_VER_12:
195aae321c829d Hayes Wang 2021-04-16  7481  		ocp_reg_write(tp, 0xbf86, 0x9000);
195aae321c829d Hayes Wang 2021-04-16  7482  		data = ocp_reg_read(tp, 0xc402);
195aae321c829d Hayes Wang 2021-04-16  7483  		data |= BIT(10);
195aae321c829d Hayes Wang 2021-04-16  7484  		ocp_reg_write(tp, 0xc402, data);
195aae321c829d Hayes Wang 2021-04-16  7485  		data &= ~BIT(10);
195aae321c829d Hayes Wang 2021-04-16  7486  		ocp_reg_write(tp, 0xc402, data);
195aae321c829d Hayes Wang 2021-04-16  7487  		ocp_reg_write(tp, 0xbd86, 0x1010);
195aae321c829d Hayes Wang 2021-04-16  7488  		ocp_reg_write(tp, 0xbd88, 0x1010);
195aae321c829d Hayes Wang 2021-04-16  7489  		data = ocp_reg_read(tp, 0xbd4e);
195aae321c829d Hayes Wang 2021-04-16  7490  		data &= ~(BIT(10) | BIT(11));
195aae321c829d Hayes Wang 2021-04-16  7491  		data |= BIT(11);
195aae321c829d Hayes Wang 2021-04-16  7492  		ocp_reg_write(tp, 0xbd4e, data);
195aae321c829d Hayes Wang 2021-04-16  7493  		data = ocp_reg_read(tp, 0xbf46);
195aae321c829d Hayes Wang 2021-04-16  7494  		data &= ~0xf00;
195aae321c829d Hayes Wang 2021-04-16  7495  		data |= 0x700;
195aae321c829d Hayes Wang 2021-04-16  7496  		ocp_reg_write(tp, 0xbf46, data);
195aae321c829d Hayes Wang 2021-04-16  7497  		break;
195aae321c829d Hayes Wang 2021-04-16  7498  	case RTL_VER_13:
195aae321c829d Hayes Wang 2021-04-16  7499  	case RTL_VER_15:
195aae321c829d Hayes Wang 2021-04-16  7500  		r8156b_wait_loading_flash(tp);
195aae321c829d Hayes Wang 2021-04-16  7501  		break;
195aae321c829d Hayes Wang 2021-04-16  7502  	default:
195aae321c829d Hayes Wang 2021-04-16  7503  		break;
195aae321c829d Hayes Wang 2021-04-16  7504  	}
195aae321c829d Hayes Wang 2021-04-16  7505  
195aae321c829d Hayes Wang 2021-04-16  7506  	ocp_data = ocp_read_word(tp, MCU_TYPE_USB, USB_MISC_0);
195aae321c829d Hayes Wang 2021-04-16  7507  	if (ocp_data & PCUT_STATUS) {
195aae321c829d Hayes Wang 2021-04-16  7508  		ocp_data &= ~PCUT_STATUS;
195aae321c829d Hayes Wang 2021-04-16  7509  		ocp_write_word(tp, MCU_TYPE_USB, USB_MISC_0, ocp_data);
195aae321c829d Hayes Wang 2021-04-16  7510  	}
195aae321c829d Hayes Wang 2021-04-16  7511  
195aae321c829d Hayes Wang 2021-04-16  7512  	data = r8153_phy_status(tp, 0);
195aae321c829d Hayes Wang 2021-04-16  7513  	switch (data) {
195aae321c829d Hayes Wang 2021-04-16  7514  	case PHY_STAT_EXT_INIT:
195aae321c829d Hayes Wang 2021-04-16  7515  		rtl8152_apply_firmware(tp, true);
195aae321c829d Hayes Wang 2021-04-16  7516  
195aae321c829d Hayes Wang 2021-04-16  7517  		data = ocp_reg_read(tp, 0xa466);
195aae321c829d Hayes Wang 2021-04-16  7518  		data &= ~BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7519  		ocp_reg_write(tp, 0xa466, data);
195aae321c829d Hayes Wang 2021-04-16  7520  
195aae321c829d Hayes Wang 2021-04-16  7521  		data = ocp_reg_read(tp, 0xa468);
195aae321c829d Hayes Wang 2021-04-16  7522  		data &= ~(BIT(3) | BIT(1));
195aae321c829d Hayes Wang 2021-04-16  7523  		ocp_reg_write(tp, 0xa468, data);
195aae321c829d Hayes Wang 2021-04-16  7524  		break;
195aae321c829d Hayes Wang 2021-04-16  7525  	case PHY_STAT_LAN_ON:
195aae321c829d Hayes Wang 2021-04-16  7526  	case PHY_STAT_PWRDN:
195aae321c829d Hayes Wang 2021-04-16  7527  	default:
195aae321c829d Hayes Wang 2021-04-16  7528  		rtl8152_apply_firmware(tp, false);
195aae321c829d Hayes Wang 2021-04-16  7529  		break;
195aae321c829d Hayes Wang 2021-04-16  7530  	}
195aae321c829d Hayes Wang 2021-04-16  7531  
195aae321c829d Hayes Wang 2021-04-16  7532  	data = r8152_mdio_read(tp, MII_BMCR);
195aae321c829d Hayes Wang 2021-04-16  7533  	if (data & BMCR_PDOWN) {
195aae321c829d Hayes Wang 2021-04-16  7534  		data &= ~BMCR_PDOWN;
195aae321c829d Hayes Wang 2021-04-16  7535  		r8152_mdio_write(tp, MII_BMCR, data);
195aae321c829d Hayes Wang 2021-04-16  7536  	}
195aae321c829d Hayes Wang 2021-04-16  7537  
195aae321c829d Hayes Wang 2021-04-16  7538  	/* disable ALDPS before updating the PHY parameters */
195aae321c829d Hayes Wang 2021-04-16  7539  	r8153_aldps_en(tp, false);
195aae321c829d Hayes Wang 2021-04-16  7540  
195aae321c829d Hayes Wang 2021-04-16  7541  	/* disable EEE before updating the PHY parameters */
195aae321c829d Hayes Wang 2021-04-16  7542  	rtl_eee_enable(tp, false);
195aae321c829d Hayes Wang 2021-04-16  7543  
195aae321c829d Hayes Wang 2021-04-16  7544  	data = r8153_phy_status(tp, PHY_STAT_LAN_ON);
195aae321c829d Hayes Wang 2021-04-16  7545  	WARN_ON_ONCE(data != PHY_STAT_LAN_ON);
195aae321c829d Hayes Wang 2021-04-16  7546  
195aae321c829d Hayes Wang 2021-04-16  7547  	ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR);
195aae321c829d Hayes Wang 2021-04-16  7548  	ocp_data |= PFM_PWM_SWITCH;
195aae321c829d Hayes Wang 2021-04-16  7549  	ocp_write_word(tp, MCU_TYPE_PLA, PLA_PHY_PWR, ocp_data);
195aae321c829d Hayes Wang 2021-04-16  7550  
195aae321c829d Hayes Wang 2021-04-16  7551  	switch (tp->version) {
195aae321c829d Hayes Wang 2021-04-16  7552  	case RTL_VER_12:
195aae321c829d Hayes Wang 2021-04-16  7553  		data = ocp_reg_read(tp, 0xbc08);
195aae321c829d Hayes Wang 2021-04-16  7554  		data |= BIT(3) | BIT(2);
195aae321c829d Hayes Wang 2021-04-16  7555  		ocp_reg_write(tp, 0xbc08, data);
195aae321c829d Hayes Wang 2021-04-16  7556  
195aae321c829d Hayes Wang 2021-04-16  7557  		data = sram_read(tp, 0x8fff);
195aae321c829d Hayes Wang 2021-04-16  7558  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7559  		data |= 0x0400;
195aae321c829d Hayes Wang 2021-04-16  7560  		sram_write(tp, 0x8fff, data);
195aae321c829d Hayes Wang 2021-04-16  7561  
195aae321c829d Hayes Wang 2021-04-16  7562  		data = ocp_reg_read(tp, 0xacda);
195aae321c829d Hayes Wang 2021-04-16  7563  		data |= 0xff00;
195aae321c829d Hayes Wang 2021-04-16  7564  		ocp_reg_write(tp, 0xacda, data);
195aae321c829d Hayes Wang 2021-04-16  7565  		data = ocp_reg_read(tp, 0xacde);
195aae321c829d Hayes Wang 2021-04-16  7566  		data |= 0xf000;
195aae321c829d Hayes Wang 2021-04-16  7567  		ocp_reg_write(tp, 0xacde, data);
195aae321c829d Hayes Wang 2021-04-16  7568  		ocp_reg_write(tp, 0xac8c, 0x0ffc);
195aae321c829d Hayes Wang 2021-04-16  7569  		ocp_reg_write(tp, 0xac46, 0xb7b4);
195aae321c829d Hayes Wang 2021-04-16  7570  		ocp_reg_write(tp, 0xac50, 0x0fbc);
195aae321c829d Hayes Wang 2021-04-16  7571  		ocp_reg_write(tp, 0xac3c, 0x9240);
195aae321c829d Hayes Wang 2021-04-16  7572  		ocp_reg_write(tp, 0xac4e, 0x0db4);
195aae321c829d Hayes Wang 2021-04-16  7573  		ocp_reg_write(tp, 0xacc6, 0x0707);
195aae321c829d Hayes Wang 2021-04-16  7574  		ocp_reg_write(tp, 0xacc8, 0xa0d3);
195aae321c829d Hayes Wang 2021-04-16  7575  		ocp_reg_write(tp, 0xad08, 0x0007);
195aae321c829d Hayes Wang 2021-04-16  7576  
195aae321c829d Hayes Wang 2021-04-16  7577  		ocp_reg_write(tp, 0xb87c, 0x8560);
195aae321c829d Hayes Wang 2021-04-16  7578  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829d Hayes Wang 2021-04-16  7579  		ocp_reg_write(tp, 0xb87c, 0x8562);
195aae321c829d Hayes Wang 2021-04-16  7580  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829d Hayes Wang 2021-04-16  7581  		ocp_reg_write(tp, 0xb87c, 0x8564);
195aae321c829d Hayes Wang 2021-04-16  7582  		ocp_reg_write(tp, 0xb87e, 0x19cc);
195aae321c829d Hayes Wang 2021-04-16  7583  		ocp_reg_write(tp, 0xb87c, 0x8566);
195aae321c829d Hayes Wang 2021-04-16  7584  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829d Hayes Wang 2021-04-16  7585  		ocp_reg_write(tp, 0xb87c, 0x8568);
195aae321c829d Hayes Wang 2021-04-16  7586  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829d Hayes Wang 2021-04-16  7587  		ocp_reg_write(tp, 0xb87c, 0x856a);
195aae321c829d Hayes Wang 2021-04-16  7588  		ocp_reg_write(tp, 0xb87e, 0x147d);
195aae321c829d Hayes Wang 2021-04-16  7589  		ocp_reg_write(tp, 0xb87c, 0x8ffe);
195aae321c829d Hayes Wang 2021-04-16  7590  		ocp_reg_write(tp, 0xb87e, 0x0907);
195aae321c829d Hayes Wang 2021-04-16  7591  		ocp_reg_write(tp, 0xb87c, 0x80d6);
195aae321c829d Hayes Wang 2021-04-16  7592  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829d Hayes Wang 2021-04-16  7593  		ocp_reg_write(tp, 0xb87c, 0x80f2);
195aae321c829d Hayes Wang 2021-04-16  7594  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829d Hayes Wang 2021-04-16  7595  		ocp_reg_write(tp, 0xb87c, 0x80f4);
195aae321c829d Hayes Wang 2021-04-16  7596  		ocp_reg_write(tp, 0xb87e, 0x6077);
195aae321c829d Hayes Wang 2021-04-16  7597  		ocp_reg_write(tp, 0xb506, 0x01e7);
195aae321c829d Hayes Wang 2021-04-16  7598  
195aae321c829d Hayes Wang 2021-04-16  7599  		ocp_reg_write(tp, 0xb87c, 0x8013);
195aae321c829d Hayes Wang 2021-04-16  7600  		ocp_reg_write(tp, 0xb87e, 0x0700);
195aae321c829d Hayes Wang 2021-04-16  7601  		ocp_reg_write(tp, 0xb87c, 0x8fb9);
195aae321c829d Hayes Wang 2021-04-16  7602  		ocp_reg_write(tp, 0xb87e, 0x2801);
195aae321c829d Hayes Wang 2021-04-16  7603  		ocp_reg_write(tp, 0xb87c, 0x8fba);
195aae321c829d Hayes Wang 2021-04-16  7604  		ocp_reg_write(tp, 0xb87e, 0x0100);
195aae321c829d Hayes Wang 2021-04-16  7605  		ocp_reg_write(tp, 0xb87c, 0x8fbc);
195aae321c829d Hayes Wang 2021-04-16  7606  		ocp_reg_write(tp, 0xb87e, 0x1900);
195aae321c829d Hayes Wang 2021-04-16  7607  		ocp_reg_write(tp, 0xb87c, 0x8fbe);
195aae321c829d Hayes Wang 2021-04-16  7608  		ocp_reg_write(tp, 0xb87e, 0xe100);
195aae321c829d Hayes Wang 2021-04-16  7609  		ocp_reg_write(tp, 0xb87c, 0x8fc0);
195aae321c829d Hayes Wang 2021-04-16  7610  		ocp_reg_write(tp, 0xb87e, 0x0800);
195aae321c829d Hayes Wang 2021-04-16  7611  		ocp_reg_write(tp, 0xb87c, 0x8fc2);
195aae321c829d Hayes Wang 2021-04-16  7612  		ocp_reg_write(tp, 0xb87e, 0xe500);
195aae321c829d Hayes Wang 2021-04-16  7613  		ocp_reg_write(tp, 0xb87c, 0x8fc4);
195aae321c829d Hayes Wang 2021-04-16  7614  		ocp_reg_write(tp, 0xb87e, 0x0f00);
195aae321c829d Hayes Wang 2021-04-16  7615  		ocp_reg_write(tp, 0xb87c, 0x8fc6);
195aae321c829d Hayes Wang 2021-04-16  7616  		ocp_reg_write(tp, 0xb87e, 0xf100);
195aae321c829d Hayes Wang 2021-04-16  7617  		ocp_reg_write(tp, 0xb87c, 0x8fc8);
195aae321c829d Hayes Wang 2021-04-16  7618  		ocp_reg_write(tp, 0xb87e, 0x0400);
195aae321c829d Hayes Wang 2021-04-16  7619  		ocp_reg_write(tp, 0xb87c, 0x8fca);
195aae321c829d Hayes Wang 2021-04-16  7620  		ocp_reg_write(tp, 0xb87e, 0xf300);
195aae321c829d Hayes Wang 2021-04-16  7621  		ocp_reg_write(tp, 0xb87c, 0x8fcc);
195aae321c829d Hayes Wang 2021-04-16  7622  		ocp_reg_write(tp, 0xb87e, 0xfd00);
195aae321c829d Hayes Wang 2021-04-16  7623  		ocp_reg_write(tp, 0xb87c, 0x8fce);
195aae321c829d Hayes Wang 2021-04-16  7624  		ocp_reg_write(tp, 0xb87e, 0xff00);
195aae321c829d Hayes Wang 2021-04-16  7625  		ocp_reg_write(tp, 0xb87c, 0x8fd0);
195aae321c829d Hayes Wang 2021-04-16  7626  		ocp_reg_write(tp, 0xb87e, 0xfb00);
195aae321c829d Hayes Wang 2021-04-16  7627  		ocp_reg_write(tp, 0xb87c, 0x8fd2);
195aae321c829d Hayes Wang 2021-04-16  7628  		ocp_reg_write(tp, 0xb87e, 0x0100);
195aae321c829d Hayes Wang 2021-04-16  7629  		ocp_reg_write(tp, 0xb87c, 0x8fd4);
195aae321c829d Hayes Wang 2021-04-16  7630  		ocp_reg_write(tp, 0xb87e, 0xf400);
195aae321c829d Hayes Wang 2021-04-16  7631  		ocp_reg_write(tp, 0xb87c, 0x8fd6);
195aae321c829d Hayes Wang 2021-04-16  7632  		ocp_reg_write(tp, 0xb87e, 0xff00);
195aae321c829d Hayes Wang 2021-04-16  7633  		ocp_reg_write(tp, 0xb87c, 0x8fd8);
195aae321c829d Hayes Wang 2021-04-16  7634  		ocp_reg_write(tp, 0xb87e, 0xf600);
195aae321c829d Hayes Wang 2021-04-16  7635  
195aae321c829d Hayes Wang 2021-04-16  7636  		ocp_data = ocp_read_byte(tp, MCU_TYPE_PLA, PLA_USB_CFG);
195aae321c829d Hayes Wang 2021-04-16  7637  		ocp_data |= EN_XG_LIP | EN_G_LIP;
195aae321c829d Hayes Wang 2021-04-16  7638  		ocp_write_byte(tp, MCU_TYPE_PLA, PLA_USB_CFG, ocp_data);
195aae321c829d Hayes Wang 2021-04-16  7639  		ocp_reg_write(tp, 0xb87c, 0x813d);
195aae321c829d Hayes Wang 2021-04-16  7640  		ocp_reg_write(tp, 0xb87e, 0x390e);
195aae321c829d Hayes Wang 2021-04-16  7641  		ocp_reg_write(tp, 0xb87c, 0x814f);
195aae321c829d Hayes Wang 2021-04-16  7642  		ocp_reg_write(tp, 0xb87e, 0x790e);
195aae321c829d Hayes Wang 2021-04-16  7643  		ocp_reg_write(tp, 0xb87c, 0x80b0);
195aae321c829d Hayes Wang 2021-04-16  7644  		ocp_reg_write(tp, 0xb87e, 0x0f31);
195aae321c829d Hayes Wang 2021-04-16  7645  		data = ocp_reg_read(tp, 0xbf4c);
195aae321c829d Hayes Wang 2021-04-16  7646  		data |= BIT(1);
195aae321c829d Hayes Wang 2021-04-16  7647  		ocp_reg_write(tp, 0xbf4c, data);
195aae321c829d Hayes Wang 2021-04-16  7648  		data = ocp_reg_read(tp, 0xbcca);
195aae321c829d Hayes Wang 2021-04-16  7649  		data |= BIT(9) | BIT(8);
195aae321c829d Hayes Wang 2021-04-16  7650  		ocp_reg_write(tp, 0xbcca, data);
195aae321c829d Hayes Wang 2021-04-16  7651  		ocp_reg_write(tp, 0xb87c, 0x8141);
195aae321c829d Hayes Wang 2021-04-16  7652  		ocp_reg_write(tp, 0xb87e, 0x320e);
195aae321c829d Hayes Wang 2021-04-16  7653  		ocp_reg_write(tp, 0xb87c, 0x8153);
195aae321c829d Hayes Wang 2021-04-16  7654  		ocp_reg_write(tp, 0xb87e, 0x720e);
195aae321c829d Hayes Wang 2021-04-16  7655  		ocp_reg_write(tp, 0xb87c, 0x8529);
195aae321c829d Hayes Wang 2021-04-16  7656  		ocp_reg_write(tp, 0xb87e, 0x050e);
195aae321c829d Hayes Wang 2021-04-16  7657  		data = ocp_reg_read(tp, OCP_EEE_CFG);
195aae321c829d Hayes Wang 2021-04-16  7658  		data &= ~CTAP_SHORT_EN;
195aae321c829d Hayes Wang 2021-04-16  7659  		ocp_reg_write(tp, OCP_EEE_CFG, data);
195aae321c829d Hayes Wang 2021-04-16  7660  
195aae321c829d Hayes Wang 2021-04-16  7661  		sram_write(tp, 0x816c, 0xc4a0);
195aae321c829d Hayes Wang 2021-04-16  7662  		sram_write(tp, 0x8170, 0xc4a0);
195aae321c829d Hayes Wang 2021-04-16  7663  		sram_write(tp, 0x8174, 0x04a0);
195aae321c829d Hayes Wang 2021-04-16  7664  		sram_write(tp, 0x8178, 0x04a0);
195aae321c829d Hayes Wang 2021-04-16  7665  		sram_write(tp, 0x817c, 0x0719);
195aae321c829d Hayes Wang 2021-04-16  7666  		sram_write(tp, 0x8ff4, 0x0400);
195aae321c829d Hayes Wang 2021-04-16  7667  		sram_write(tp, 0x8ff1, 0x0404);
195aae321c829d Hayes Wang 2021-04-16  7668  
195aae321c829d Hayes Wang 2021-04-16  7669  		ocp_reg_write(tp, 0xbf4a, 0x001b);
195aae321c829d Hayes Wang 2021-04-16  7670  		ocp_reg_write(tp, 0xb87c, 0x8033);
195aae321c829d Hayes Wang 2021-04-16  7671  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7672  		ocp_reg_write(tp, 0xb87c, 0x8037);
195aae321c829d Hayes Wang 2021-04-16  7673  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7674  		ocp_reg_write(tp, 0xb87c, 0x803b);
195aae321c829d Hayes Wang 2021-04-16  7675  		ocp_reg_write(tp, 0xb87e, 0xfc32);
195aae321c829d Hayes Wang 2021-04-16  7676  		ocp_reg_write(tp, 0xb87c, 0x803f);
195aae321c829d Hayes Wang 2021-04-16  7677  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7678  		ocp_reg_write(tp, 0xb87c, 0x8043);
195aae321c829d Hayes Wang 2021-04-16  7679  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7680  		ocp_reg_write(tp, 0xb87c, 0x8047);
195aae321c829d Hayes Wang 2021-04-16  7681  		ocp_reg_write(tp, 0xb87e, 0x7c13);
195aae321c829d Hayes Wang 2021-04-16  7682  
195aae321c829d Hayes Wang 2021-04-16  7683  		ocp_reg_write(tp, 0xb87c, 0x8145);
195aae321c829d Hayes Wang 2021-04-16  7684  		ocp_reg_write(tp, 0xb87e, 0x370e);
195aae321c829d Hayes Wang 2021-04-16  7685  		ocp_reg_write(tp, 0xb87c, 0x8157);
195aae321c829d Hayes Wang 2021-04-16  7686  		ocp_reg_write(tp, 0xb87e, 0x770e);
195aae321c829d Hayes Wang 2021-04-16  7687  		ocp_reg_write(tp, 0xb87c, 0x8169);
195aae321c829d Hayes Wang 2021-04-16  7688  		ocp_reg_write(tp, 0xb87e, 0x0d0a);
195aae321c829d Hayes Wang 2021-04-16  7689  		ocp_reg_write(tp, 0xb87c, 0x817b);
195aae321c829d Hayes Wang 2021-04-16  7690  		ocp_reg_write(tp, 0xb87e, 0x1d0a);
195aae321c829d Hayes Wang 2021-04-16  7691  
195aae321c829d Hayes Wang 2021-04-16  7692  		data = sram_read(tp, 0x8217);
195aae321c829d Hayes Wang 2021-04-16  7693  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7694  		data |= 0x5000;
195aae321c829d Hayes Wang 2021-04-16  7695  		sram_write(tp, 0x8217, data);
195aae321c829d Hayes Wang 2021-04-16  7696  		data = sram_read(tp, 0x821a);
195aae321c829d Hayes Wang 2021-04-16  7697  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7698  		data |= 0x5000;
195aae321c829d Hayes Wang 2021-04-16  7699  		sram_write(tp, 0x821a, data);
195aae321c829d Hayes Wang 2021-04-16  7700  		sram_write(tp, 0x80da, 0x0403);
195aae321c829d Hayes Wang 2021-04-16  7701  		data = sram_read(tp, 0x80dc);
195aae321c829d Hayes Wang 2021-04-16  7702  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7703  		data |= 0x1000;
195aae321c829d Hayes Wang 2021-04-16  7704  		sram_write(tp, 0x80dc, data);
195aae321c829d Hayes Wang 2021-04-16  7705  		sram_write(tp, 0x80b3, 0x0384);
195aae321c829d Hayes Wang 2021-04-16  7706  		sram_write(tp, 0x80b7, 0x2007);
195aae321c829d Hayes Wang 2021-04-16  7707  		data = sram_read(tp, 0x80ba);
195aae321c829d Hayes Wang 2021-04-16  7708  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7709  		data |= 0x6c00;
195aae321c829d Hayes Wang 2021-04-16  7710  		sram_write(tp, 0x80ba, data);
195aae321c829d Hayes Wang 2021-04-16  7711  		sram_write(tp, 0x80b5, 0xf009);
195aae321c829d Hayes Wang 2021-04-16  7712  		data = sram_read(tp, 0x80bd);
195aae321c829d Hayes Wang 2021-04-16  7713  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7714  		data |= 0x9f00;
195aae321c829d Hayes Wang 2021-04-16  7715  		sram_write(tp, 0x80bd, data);
195aae321c829d Hayes Wang 2021-04-16  7716  		sram_write(tp, 0x80c7, 0xf083);
195aae321c829d Hayes Wang 2021-04-16  7717  		sram_write(tp, 0x80dd, 0x03f0);
195aae321c829d Hayes Wang 2021-04-16  7718  		data = sram_read(tp, 0x80df);
195aae321c829d Hayes Wang 2021-04-16  7719  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7720  		data |= 0x1000;
195aae321c829d Hayes Wang 2021-04-16  7721  		sram_write(tp, 0x80df, data);
195aae321c829d Hayes Wang 2021-04-16  7722  		sram_write(tp, 0x80cb, 0x2007);
195aae321c829d Hayes Wang 2021-04-16  7723  		data = sram_read(tp, 0x80ce);
195aae321c829d Hayes Wang 2021-04-16  7724  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7725  		data |= 0x6c00;
195aae321c829d Hayes Wang 2021-04-16  7726  		sram_write(tp, 0x80ce, data);
195aae321c829d Hayes Wang 2021-04-16  7727  		sram_write(tp, 0x80c9, 0x8009);
195aae321c829d Hayes Wang 2021-04-16  7728  		data = sram_read(tp, 0x80d1);
195aae321c829d Hayes Wang 2021-04-16  7729  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7730  		data |= 0x8000;
195aae321c829d Hayes Wang 2021-04-16  7731  		sram_write(tp, 0x80d1, data);
195aae321c829d Hayes Wang 2021-04-16  7732  		sram_write(tp, 0x80a3, 0x200a);
195aae321c829d Hayes Wang 2021-04-16  7733  		sram_write(tp, 0x80a5, 0xf0ad);
195aae321c829d Hayes Wang 2021-04-16  7734  		sram_write(tp, 0x809f, 0x6073);
195aae321c829d Hayes Wang 2021-04-16  7735  		sram_write(tp, 0x80a1, 0x000b);
195aae321c829d Hayes Wang 2021-04-16  7736  		data = sram_read(tp, 0x80a9);
195aae321c829d Hayes Wang 2021-04-16  7737  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7738  		data |= 0xc000;
195aae321c829d Hayes Wang 2021-04-16  7739  		sram_write(tp, 0x80a9, data);
195aae321c829d Hayes Wang 2021-04-16  7740  
195aae321c829d Hayes Wang 2021-04-16  7741  		if (rtl_phy_patch_request(tp, true, true))
195aae321c829d Hayes Wang 2021-04-16  7742  			return;
195aae321c829d Hayes Wang 2021-04-16  7743  
195aae321c829d Hayes Wang 2021-04-16  7744  		data = ocp_reg_read(tp, 0xb896);
195aae321c829d Hayes Wang 2021-04-16  7745  		data &= ~BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7746  		ocp_reg_write(tp, 0xb896, data);
195aae321c829d Hayes Wang 2021-04-16  7747  		data = ocp_reg_read(tp, 0xb892);
195aae321c829d Hayes Wang 2021-04-16  7748  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7749  		ocp_reg_write(tp, 0xb892, data);
195aae321c829d Hayes Wang 2021-04-16  7750  		ocp_reg_write(tp, 0xb88e, 0xc23e);
195aae321c829d Hayes Wang 2021-04-16  7751  		ocp_reg_write(tp, 0xb890, 0x0000);
195aae321c829d Hayes Wang 2021-04-16  7752  		ocp_reg_write(tp, 0xb88e, 0xc240);
195aae321c829d Hayes Wang 2021-04-16  7753  		ocp_reg_write(tp, 0xb890, 0x0103);
195aae321c829d Hayes Wang 2021-04-16  7754  		ocp_reg_write(tp, 0xb88e, 0xc242);
195aae321c829d Hayes Wang 2021-04-16  7755  		ocp_reg_write(tp, 0xb890, 0x0507);
195aae321c829d Hayes Wang 2021-04-16  7756  		ocp_reg_write(tp, 0xb88e, 0xc244);
195aae321c829d Hayes Wang 2021-04-16  7757  		ocp_reg_write(tp, 0xb890, 0x090b);
195aae321c829d Hayes Wang 2021-04-16  7758  		ocp_reg_write(tp, 0xb88e, 0xc246);
195aae321c829d Hayes Wang 2021-04-16  7759  		ocp_reg_write(tp, 0xb890, 0x0c0e);
195aae321c829d Hayes Wang 2021-04-16  7760  		ocp_reg_write(tp, 0xb88e, 0xc248);
195aae321c829d Hayes Wang 2021-04-16  7761  		ocp_reg_write(tp, 0xb890, 0x1012);
195aae321c829d Hayes Wang 2021-04-16  7762  		ocp_reg_write(tp, 0xb88e, 0xc24a);
195aae321c829d Hayes Wang 2021-04-16  7763  		ocp_reg_write(tp, 0xb890, 0x1416);
195aae321c829d Hayes Wang 2021-04-16  7764  		data = ocp_reg_read(tp, 0xb896);
195aae321c829d Hayes Wang 2021-04-16  7765  		data |= BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7766  		ocp_reg_write(tp, 0xb896, data);
195aae321c829d Hayes Wang 2021-04-16  7767  
195aae321c829d Hayes Wang 2021-04-16  7768  		rtl_phy_patch_request(tp, false, true);
195aae321c829d Hayes Wang 2021-04-16  7769  
195aae321c829d Hayes Wang 2021-04-16  7770  		data = ocp_reg_read(tp, 0xa86a);
195aae321c829d Hayes Wang 2021-04-16  7771  		data |= BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7772  		ocp_reg_write(tp, 0xa86a, data);
195aae321c829d Hayes Wang 2021-04-16  7773  		data = ocp_reg_read(tp, 0xa6f0);
195aae321c829d Hayes Wang 2021-04-16  7774  		data |= BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7775  		ocp_reg_write(tp, 0xa6f0, data);
195aae321c829d Hayes Wang 2021-04-16  7776  
195aae321c829d Hayes Wang 2021-04-16  7777  		ocp_reg_write(tp, 0xbfa0, 0xd70d);
195aae321c829d Hayes Wang 2021-04-16  7778  		ocp_reg_write(tp, 0xbfa2, 0x4100);
195aae321c829d Hayes Wang 2021-04-16  7779  		ocp_reg_write(tp, 0xbfa4, 0xe868);
195aae321c829d Hayes Wang 2021-04-16  7780  		ocp_reg_write(tp, 0xbfa6, 0xdc59);
195aae321c829d Hayes Wang 2021-04-16  7781  		ocp_reg_write(tp, 0xb54c, 0x3c18);
195aae321c829d Hayes Wang 2021-04-16  7782  		data = ocp_reg_read(tp, 0xbfa4);
195aae321c829d Hayes Wang 2021-04-16  7783  		data &= ~BIT(5);
195aae321c829d Hayes Wang 2021-04-16  7784  		ocp_reg_write(tp, 0xbfa4, data);
195aae321c829d Hayes Wang 2021-04-16  7785  		data = sram_read(tp, 0x817d);
195aae321c829d Hayes Wang 2021-04-16  7786  		data |= BIT(12);
195aae321c829d Hayes Wang 2021-04-16  7787  		sram_write(tp, 0x817d, data);
195aae321c829d Hayes Wang 2021-04-16  7788  		break;
195aae321c829d Hayes Wang 2021-04-16  7789  	case RTL_VER_13:
195aae321c829d Hayes Wang 2021-04-16  7790  		/* 2.5G INRX */
195aae321c829d Hayes Wang 2021-04-16  7791  		data = ocp_reg_read(tp, 0xac46);
195aae321c829d Hayes Wang 2021-04-16  7792  		data &= ~0x00f0;
195aae321c829d Hayes Wang 2021-04-16  7793  		data |= 0x0090;
195aae321c829d Hayes Wang 2021-04-16  7794  		ocp_reg_write(tp, 0xac46, data);
195aae321c829d Hayes Wang 2021-04-16  7795  		data = ocp_reg_read(tp, 0xad30);
195aae321c829d Hayes Wang 2021-04-16  7796  		data &= ~0x0003;
195aae321c829d Hayes Wang 2021-04-16  7797  		data |= 0x0001;
195aae321c829d Hayes Wang 2021-04-16  7798  		ocp_reg_write(tp, 0xad30, data);
195aae321c829d Hayes Wang 2021-04-16  7799  		fallthrough;
195aae321c829d Hayes Wang 2021-04-16  7800  	case RTL_VER_15:
195aae321c829d Hayes Wang 2021-04-16  7801  		/* EEE parameter */
195aae321c829d Hayes Wang 2021-04-16  7802  		ocp_reg_write(tp, 0xb87c, 0x80f5);
195aae321c829d Hayes Wang 2021-04-16  7803  		ocp_reg_write(tp, 0xb87e, 0x760e);
195aae321c829d Hayes Wang 2021-04-16  7804  		ocp_reg_write(tp, 0xb87c, 0x8107);
195aae321c829d Hayes Wang 2021-04-16  7805  		ocp_reg_write(tp, 0xb87e, 0x360e);
195aae321c829d Hayes Wang 2021-04-16  7806  		ocp_reg_write(tp, 0xb87c, 0x8551);
195aae321c829d Hayes Wang 2021-04-16  7807  		data = ocp_reg_read(tp, 0xb87e);
195aae321c829d Hayes Wang 2021-04-16  7808  		data &= ~0xff00;
195aae321c829d Hayes Wang 2021-04-16  7809  		data |= 0x0800;
195aae321c829d Hayes Wang 2021-04-16  7810  		ocp_reg_write(tp, 0xb87e, data);
195aae321c829d Hayes Wang 2021-04-16  7811  
195aae321c829d Hayes Wang 2021-04-16  7812  		/* ADC_PGA parameter */
195aae321c829d Hayes Wang 2021-04-16  7813  		data = ocp_reg_read(tp, 0xbf00);
195aae321c829d Hayes Wang 2021-04-16  7814  		data &= ~0xe000;
195aae321c829d Hayes Wang 2021-04-16  7815  		data |= 0xa000;
195aae321c829d Hayes Wang 2021-04-16  7816  		ocp_reg_write(tp, 0xbf00, data);
195aae321c829d Hayes Wang 2021-04-16  7817  		data = ocp_reg_read(tp, 0xbf46);
195aae321c829d Hayes Wang 2021-04-16  7818  		data &= ~0x0f00;
195aae321c829d Hayes Wang 2021-04-16  7819  		data |= 0x0300;
195aae321c829d Hayes Wang 2021-04-16  7820  		ocp_reg_write(tp, 0xbf46, data);
195aae321c829d Hayes Wang 2021-04-16  7821  
195aae321c829d Hayes Wang 2021-04-16  7822  		/* Green Table-PGA, 1G full viterbi */
195aae321c829d Hayes Wang 2021-04-16  7823  		sram_write(tp, 0x8044, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7824  		sram_write(tp, 0x804a, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7825  		sram_write(tp, 0x8050, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7826  		sram_write(tp, 0x8056, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7827  		sram_write(tp, 0x805c, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7828  		sram_write(tp, 0x8062, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7829  		sram_write(tp, 0x8068, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7830  		sram_write(tp, 0x806e, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7831  		sram_write(tp, 0x8074, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7832  		sram_write(tp, 0x807a, 0x2417);
195aae321c829d Hayes Wang 2021-04-16  7833  
195aae321c829d Hayes Wang 2021-04-16  7834  		/* XG PLL */
195aae321c829d Hayes Wang 2021-04-16  7835  		data = ocp_reg_read(tp, 0xbf84);
195aae321c829d Hayes Wang 2021-04-16  7836  		data &= ~0xe000;
195aae321c829d Hayes Wang 2021-04-16  7837  		data |= 0xa000;
195aae321c829d Hayes Wang 2021-04-16  7838  		ocp_reg_write(tp, 0xbf84, data);
195aae321c829d Hayes Wang 2021-04-16  7839  		break;
195aae321c829d Hayes Wang 2021-04-16  7840  	default:
195aae321c829d Hayes Wang 2021-04-16  7841  		break;
195aae321c829d Hayes Wang 2021-04-16  7842  	}
195aae321c829d Hayes Wang 2021-04-16  7843  
195aae321c829d Hayes Wang 2021-04-16  7844  	if (rtl_phy_patch_request(tp, true, true))
195aae321c829d Hayes Wang 2021-04-16  7845  		return;
195aae321c829d Hayes Wang 2021-04-16  7846  
195aae321c829d Hayes Wang 2021-04-16  7847  	ocp_data = ocp_read_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL4);
195aae321c829d Hayes Wang 2021-04-16  7848  	ocp_data |= EEE_SPDWN_EN;
195aae321c829d Hayes Wang 2021-04-16  7849  	ocp_write_word(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL4, ocp_data);
195aae321c829d Hayes Wang 2021-04-16  7850  
195aae321c829d Hayes Wang 2021-04-16  7851  	data = ocp_reg_read(tp, OCP_DOWN_SPEED);
195aae321c829d Hayes Wang 2021-04-16  7852  	data &= ~(EN_EEE_100 | EN_EEE_1000);
195aae321c829d Hayes Wang 2021-04-16  7853  	data |= EN_10M_CLKDIV;
195aae321c829d Hayes Wang 2021-04-16  7854  	ocp_reg_write(tp, OCP_DOWN_SPEED, data);
195aae321c829d Hayes Wang 2021-04-16  7855  	tp->ups_info._10m_ckdiv = true;
195aae321c829d Hayes Wang 2021-04-16  7856  	tp->ups_info.eee_plloff_100 = false;
195aae321c829d Hayes Wang 2021-04-16  7857  	tp->ups_info.eee_plloff_giga = false;
195aae321c829d Hayes Wang 2021-04-16  7858  
195aae321c829d Hayes Wang 2021-04-16  7859  	data = ocp_reg_read(tp, OCP_POWER_CFG);
195aae321c829d Hayes Wang 2021-04-16  7860  	data &= ~EEE_CLKDIV_EN;
195aae321c829d Hayes Wang 2021-04-16  7861  	ocp_reg_write(tp, OCP_POWER_CFG, data);
195aae321c829d Hayes Wang 2021-04-16  7862  	tp->ups_info.eee_ckdiv = false;
195aae321c829d Hayes Wang 2021-04-16  7863  
195aae321c829d Hayes Wang 2021-04-16  7864  	rtl_phy_patch_request(tp, false, true);
195aae321c829d Hayes Wang 2021-04-16  7865  
195aae321c829d Hayes Wang 2021-04-16  7866  	rtl_green_en(tp, test_bit(GREEN_ETHERNET, &tp->flags));
195aae321c829d Hayes Wang 2021-04-16  7867  
195aae321c829d Hayes Wang 2021-04-16  7868  	data = ocp_reg_read(tp, 0xa428);
195aae321c829d Hayes Wang 2021-04-16  7869  	data &= ~BIT(9);
195aae321c829d Hayes Wang 2021-04-16  7870  	ocp_reg_write(tp, 0xa428, data);
195aae321c829d Hayes Wang 2021-04-16  7871  	data = ocp_reg_read(tp, 0xa5ea);
195aae321c829d Hayes Wang 2021-04-16  7872  	data &= ~BIT(0);
195aae321c829d Hayes Wang 2021-04-16  7873  	ocp_reg_write(tp, 0xa5ea, data);
195aae321c829d Hayes Wang 2021-04-16  7874  	tp->ups_info.lite_mode = 0;
195aae321c829d Hayes Wang 2021-04-16  7875  
195aae321c829d Hayes Wang 2021-04-16  7876  	if (tp->eee_en)
195aae321c829d Hayes Wang 2021-04-16  7877  		rtl_eee_enable(tp, true);
195aae321c829d Hayes Wang 2021-04-16  7878  
195aae321c829d Hayes Wang 2021-04-16  7879  	r8153_aldps_en(tp, true);
195aae321c829d Hayes Wang 2021-04-16  7880  	r8152b_enable_fc(tp);
195aae321c829d Hayes Wang 2021-04-16  7881  	r8153_u2p3en(tp, true);
195aae321c829d Hayes Wang 2021-04-16  7882  
195aae321c829d Hayes Wang 2021-04-16  7883  	set_bit(PHY_RESET, &tp->flags);
ac718b69301c7c hayeswang  2013-05-02  7884  }
ac718b69301c7c hayeswang  2013-05-02  7885  

:::::: The code at line 7474 was first introduced by commit
:::::: 195aae321c829dd1945900d75561e6aa79cce208 r8152: support new chips

:::::: TO: Hayes Wang <hayeswang@realtek.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106191051.M5WbPoQW-lkp%40intel.com.

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
RIQxAPi3AQA=

--y0ulUmNC+osPPQO6--
