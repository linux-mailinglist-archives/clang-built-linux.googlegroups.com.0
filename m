Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2UUUP6QKGQEA7B6ECY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEC82AB052
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 05:49:47 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id 11sf1903065qtx.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Nov 2020 20:49:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604897387; cv=pass;
        d=google.com; s=arc-20160816;
        b=LBi1jte5Y6GA+5SNAgCDNiSrjQqNgcdo8G7zAyQPxi8rLKmoVogSG6ALytYjdUjSSi
         UqBC9CMd5XoJeev4TPc68urbs3bNIY9/WU413jKDsXZ5vw+0N8ERLvND1RPMSjqLZzFC
         w62oigTxsywwuyzPxx/LkOL9vu67ubv28RDXkukHxjKMfGaJlko74wE0cpoqYP51nbQ8
         io+DfmU3EnEh4AdTro7rBuyrSd1w6REP61TvAAn0tPswmz63sx2I62RPyXoX/kgkQPNO
         /ZL9EG3ja4qVRTQCoTyq2ZIRXgC8xIWtiV5nXoqDE9iHoNPbin3ffnjN0/TQlAEJpSM1
         IJ0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=8g7xq2uG9pZtD5TIDBubW8ZBralZL6+XUFMA9udVi80=;
        b=FnqaO4lrz5nw//M5kYDwOuxpVOg8ECEqMJcpMfHl4woSWGuQCwCHykdHUkfd5Oj0F9
         20krM0Pc2U9AjXFRFhqUvKj3N7QnGJNr73f3XQECGTKJH58qqaIZI6uix76xdCusB4cE
         whpro5iXzE+SccgPWF1VCYxr8b2pqjb+DgqHRm4zVqV95IjRnlbjczUHR4p68QqDaDAB
         lY0rfI5f51o4Yq13uiymGZ24x5rJ0i8aR/xEi1OvhfLYm/aR604hbG1wCyTPZod5Ec0X
         mz6PeCJNVLd959eK36Q1GXVmUBd2m7tEmFV/QWs3WgV73GoBwBcLJUxOVJV6yyQRumsr
         guWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8g7xq2uG9pZtD5TIDBubW8ZBralZL6+XUFMA9udVi80=;
        b=THmQceR6EqX1vkjtUgAMqd1bsz1gno+iSqOGjhvHGb2YufzjxC5U9MOI4GeELcnPmh
         EF07JJ4LSB8TkOEgz2Wg7MPJyp5tvreTUzKAAuPIIC/CWg7G9QESew/WIhxrC+jD/LgT
         sAscpk4bnQj2472pSVKJoDcEpBMshRyrHArKUvDno817wwS+SsXX1ai5Puo3KE4AmUKW
         A6H6PHu/Ur/xDy/FgH0AApPgwRwl6GDWWqqiIxtiRGZLPcljCw7ziRiBjQZ1be+JLe31
         /R0kFbzn8+DvWMk6FUf5h8DZfNMC85Hz5c41qHTIbdmHMMJSSCAoOPM759HqF6vxoOhX
         x7pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8g7xq2uG9pZtD5TIDBubW8ZBralZL6+XUFMA9udVi80=;
        b=Qgg/W6sATzBzwisOpTtaxGRDQ52TlwUrSsvlr9JBAGHhtfj9fKWzRHSEKhWQFFG9x1
         OMc3so9x02J8me+9RYn9z6fBT5fwh3yeCO9NLBseVMzfCz4eIezfSHcFQFAdcKqRbdi2
         ooX7PuB2keVx4JMQ7UbpOq/bS9PpbHcejoTlZhCmm8WxVKow1B9IXyZzDw0bw7mR1y9C
         pk/TTVyCM8tpt5wyYEi+LNcD88anq7XhVgfOOcSnc09upnwullp7LBYlz06UoZXk0HAF
         ghyZS8V+MH70Gcf8Z+Nrbir9Vkw0gOlBHKTV81vRYoFaO0Jel26dCVbJu3qPPHKygJqP
         eR8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SNT4bQ7QueuoOoSkoQhvFAheyqiFt8yMjeoHZZatEyurYN4OP
	hw6SeSqYA+RrN8NSEMrYGo8=
X-Google-Smtp-Source: ABdhPJzV/xkY0U+klHNIyJ3aMTSqLJG+SdQtpdxqVsLOx+oIBGXIR1V73hDf4ugzl1+op3OvvLJI0g==
X-Received: by 2002:ac8:6b59:: with SMTP id x25mr3311020qts.144.1604897386803;
        Sun, 08 Nov 2020 20:49:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4085:: with SMTP id f5ls3646893qko.7.gmail; Sun, 08
 Nov 2020 20:49:46 -0800 (PST)
X-Received: by 2002:a05:620a:1426:: with SMTP id k6mr12471679qkj.438.1604897386217;
        Sun, 08 Nov 2020 20:49:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604897386; cv=none;
        d=google.com; s=arc-20160816;
        b=orDNC0BUyNhoRZBPPFVqCfplJoHQvxjz4fBQuduAFF833CCfQYd09iL9qOq2w4cFm6
         zLAR/rk70nSFA4ikzVdduR1AuYLfp8rHQShN1BZQk+63ooFeybvWqg6ms8JoZMTT8zxa
         fex0PTTm/oBOYKYnmm/bBd+U78L74MaLMv6ntz2BVhectltz7hN0KlvO/McCoCaM/X5k
         US4Q5UJ5Hd/7juBXRp+uS7Lla5xqdovAIs7IFjHlWUIWxMr1hxSyr90T8JcO8/Hs3Bzh
         QSOiFSqvGGfbadgMgFWalTYBcySS/+FEo5PAtftm+azvZ5t2divcw8GevQ95UivhaKWr
         ZYlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TzQgl91P7tEVVIQcbPXykkY5IeMOU+C6NQ1RlWcZ3AM=;
        b=S1Qz613wxGCIo+VMNxuE7H0BmZOiO8reh8P33HLkcwHBHzehqJ9g9uG48D1yZ/bRhn
         zaI2U9+mthu6xjNUCm1Lhd2/poLu+Pe8Z8m62IlD0DO7JyqIfHc17AUeVZHsN0YP/XN7
         bo3AedpUckHoHvgCqBVoT2FWlAmNPOgcnYbDlvX7WFeLXISlR/KTlDN8fAnDtmat8SnH
         89emmK1pSz3RqLFqUwb2KM4f/IMInqucD2uea+UZFOkzBaK8wANn2nLO2faAmcGVi54y
         +7dLSWeuWjMdrsLp4G8u93c24zI6O47QdgvrOpBcgw9wu/lYm+ysbZfQKQ81hruBRJtr
         EO9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id s190si562243qkf.4.2020.11.08.20.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Nov 2020 20:49:46 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: wtt+Pk6QwqYCCQo65g5is2HUJPv6moHLirZZavXZqncTmZ1FA5ehpO6IJPPNExwAvoHittIlmt
 kq7PRlop8msw==
X-IronPort-AV: E=McAfee;i="6000,8403,9799"; a="167163025"
X-IronPort-AV: E=Sophos;i="5.77,462,1596524400"; 
   d="gz'50?scan'50,208,50";a="167163025"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2020 20:49:44 -0800
IronPort-SDR: IRyGO8V8ruT545Q2vm8tP7cG8bOg3z5IvKO4URyWYXR7T07m8oled1iKkpJs8+RIdYigQb2P+C
 V8FBAFm4Ww3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,462,1596524400"; 
   d="gz'50?scan'50,208,50";a="307862900"
Received: from lkp-server02.sh.intel.com (HELO defa7f6e4f65) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 08 Nov 2020 20:49:42 -0800
Received: from kbuild by defa7f6e4f65 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kbz7e-0000Ch-AB; Mon, 09 Nov 2020 04:49:42 +0000
Date: Mon, 9 Nov 2020 12:48:45 +0800
From: kernel test robot <lkp@intel.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [superna9999:amlogic/v5.10/vim3-mipi-dsi 25/36]
 drivers/clk/meson/g12a.c:4565:17: warning: initializer overrides prior
 initialization of this subobject
Message-ID: <202011091234.0XKomZ1u-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/superna9999/linux amlogic/v5.10/vim3-mipi-dsi
head:   519bcec7d9f7022be94861a90dcdf6b40c53924e
commit: ee2d1a11f2252b1b60c284e47d8ab11639a9be71 [25/36] clk: meson: g12a: add vdin meas clock
config: arm64-randconfig-r036-20201104 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a6d15d40701ad38f29e4ff93703b3ffa7b204611)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/superna9999/linux/commit/ee2d1a11f2252b1b60c284e47d8ab11639a9be71
        git remote add superna9999 https://github.com/superna9999/linux
        git fetch --no-tags superna9999 amlogic/v5.10/vim3-mipi-dsi
        git checkout ee2d1a11f2252b1b60c284e47d8ab11639a9be71
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/clk/meson/g12a.c:4565:17: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   [NR_CLKS]                       = NULL,
                                                     ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   drivers/clk/meson/g12a.c:4564:24: note: previous initialization is here
                   [CLKID_VDIN_MEAS]               = &g12a_vdin_meas.hw,
                                                     ^~~~~~~~~~~~~~~~~~
   drivers/clk/meson/g12a.c:4828:17: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   [NR_CLKS]                       = NULL,
                                                     ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   drivers/clk/meson/g12a.c:4827:24: note: previous initialization is here
                   [CLKID_VDIN_MEAS]               = &g12a_vdin_meas.hw,
                                                     ^~~~~~~~~~~~~~~~~~
   drivers/clk/meson/g12a.c:5082:17: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   [NR_CLKS]                       = NULL,
                                                     ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   drivers/clk/meson/g12a.c:5081:24: note: previous initialization is here
                   [CLKID_VDIN_MEAS]               = &g12a_vdin_meas.hw,
                                                     ^~~~~~~~~~~~~~~~~~
   3 warnings generated.

vim +4565 drivers/clk/meson/g12a.c

085a4ea93d5491b Jian Hu            2019-02-01  4334  
085a4ea93d5491b Jian Hu            2019-02-01  4335  /* Array of all clocks provided by this provider */
085a4ea93d5491b Jian Hu            2019-02-01  4336  static struct clk_hw_onecell_data g12a_hw_onecell_data = {
085a4ea93d5491b Jian Hu            2019-02-01  4337  	.hws = {
085a4ea93d5491b Jian Hu            2019-02-01  4338  		[CLKID_SYS_PLL]			= &g12a_sys_pll.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4339  		[CLKID_FIXED_PLL]		= &g12a_fixed_pll.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4340  		[CLKID_FCLK_DIV2]		= &g12a_fclk_div2.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4341  		[CLKID_FCLK_DIV3]		= &g12a_fclk_div3.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4342  		[CLKID_FCLK_DIV4]		= &g12a_fclk_div4.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4343  		[CLKID_FCLK_DIV5]		= &g12a_fclk_div5.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4344  		[CLKID_FCLK_DIV7]		= &g12a_fclk_div7.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4345  		[CLKID_FCLK_DIV2P5]		= &g12a_fclk_div2p5.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4346  		[CLKID_GP0_PLL]			= &g12a_gp0_pll.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4347  		[CLKID_MPEG_SEL]		= &g12a_mpeg_clk_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4348  		[CLKID_MPEG_DIV]		= &g12a_mpeg_clk_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4349  		[CLKID_CLK81]			= &g12a_clk81.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4350  		[CLKID_MPLL0]			= &g12a_mpll0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4351  		[CLKID_MPLL1]			= &g12a_mpll1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4352  		[CLKID_MPLL2]			= &g12a_mpll2.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4353  		[CLKID_MPLL3]			= &g12a_mpll3.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4354  		[CLKID_DDR]			= &g12a_ddr.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4355  		[CLKID_DOS]			= &g12a_dos.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4356  		[CLKID_AUDIO_LOCKER]		= &g12a_audio_locker.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4357  		[CLKID_MIPI_DSI_HOST]		= &g12a_mipi_dsi_host.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4358  		[CLKID_ETH_PHY]			= &g12a_eth_phy.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4359  		[CLKID_ISA]			= &g12a_isa.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4360  		[CLKID_PL301]			= &g12a_pl301.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4361  		[CLKID_PERIPHS]			= &g12a_periphs.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4362  		[CLKID_SPICC0]			= &g12a_spicc_0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4363  		[CLKID_I2C]			= &g12a_i2c.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4364  		[CLKID_SANA]			= &g12a_sana.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4365  		[CLKID_SD]			= &g12a_sd.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4366  		[CLKID_RNG0]			= &g12a_rng0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4367  		[CLKID_UART0]			= &g12a_uart0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4368  		[CLKID_SPICC1]			= &g12a_spicc_1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4369  		[CLKID_HIU_IFACE]		= &g12a_hiu_reg.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4370  		[CLKID_MIPI_DSI_PHY]		= &g12a_mipi_dsi_phy.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4371  		[CLKID_ASSIST_MISC]		= &g12a_assist_misc.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4372  		[CLKID_SD_EMMC_A]		= &g12a_emmc_a.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4373  		[CLKID_SD_EMMC_B]		= &g12a_emmc_b.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4374  		[CLKID_SD_EMMC_C]		= &g12a_emmc_c.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4375  		[CLKID_AUDIO_CODEC]		= &g12a_audio_codec.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4376  		[CLKID_AUDIO]			= &g12a_audio.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4377  		[CLKID_ETH]			= &g12a_eth_core.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4378  		[CLKID_DEMUX]			= &g12a_demux.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4379  		[CLKID_AUDIO_IFIFO]		= &g12a_audio_ififo.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4380  		[CLKID_ADC]			= &g12a_adc.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4381  		[CLKID_UART1]			= &g12a_uart1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4382  		[CLKID_G2D]			= &g12a_g2d.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4383  		[CLKID_RESET]			= &g12a_reset.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4384  		[CLKID_PCIE_COMB]		= &g12a_pcie_comb.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4385  		[CLKID_PARSER]			= &g12a_parser.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4386  		[CLKID_USB]			= &g12a_usb_general.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4387  		[CLKID_PCIE_PHY]		= &g12a_pcie_phy.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4388  		[CLKID_AHB_ARB0]		= &g12a_ahb_arb0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4389  		[CLKID_AHB_DATA_BUS]		= &g12a_ahb_data_bus.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4390  		[CLKID_AHB_CTRL_BUS]		= &g12a_ahb_ctrl_bus.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4391  		[CLKID_HTX_HDCP22]		= &g12a_htx_hdcp22.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4392  		[CLKID_HTX_PCLK]		= &g12a_htx_pclk.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4393  		[CLKID_BT656]			= &g12a_bt656.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4394  		[CLKID_USB1_DDR_BRIDGE]		= &g12a_usb1_to_ddr.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4395  		[CLKID_MMC_PCLK]		= &g12a_mmc_pclk.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4396  		[CLKID_UART2]			= &g12a_uart2.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4397  		[CLKID_VPU_INTR]		= &g12a_vpu_intr.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4398  		[CLKID_GIC]			= &g12a_gic.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4399  		[CLKID_SD_EMMC_A_CLK0_SEL]	= &g12a_sd_emmc_a_clk0_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4400  		[CLKID_SD_EMMC_A_CLK0_DIV]	= &g12a_sd_emmc_a_clk0_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4401  		[CLKID_SD_EMMC_A_CLK0]		= &g12a_sd_emmc_a_clk0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4402  		[CLKID_SD_EMMC_B_CLK0_SEL]	= &g12a_sd_emmc_b_clk0_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4403  		[CLKID_SD_EMMC_B_CLK0_DIV]	= &g12a_sd_emmc_b_clk0_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4404  		[CLKID_SD_EMMC_B_CLK0]		= &g12a_sd_emmc_b_clk0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4405  		[CLKID_SD_EMMC_C_CLK0_SEL]	= &g12a_sd_emmc_c_clk0_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4406  		[CLKID_SD_EMMC_C_CLK0_DIV]	= &g12a_sd_emmc_c_clk0_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4407  		[CLKID_SD_EMMC_C_CLK0]		= &g12a_sd_emmc_c_clk0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4408  		[CLKID_MPLL0_DIV]		= &g12a_mpll0_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4409  		[CLKID_MPLL1_DIV]		= &g12a_mpll1_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4410  		[CLKID_MPLL2_DIV]		= &g12a_mpll2_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4411  		[CLKID_MPLL3_DIV]		= &g12a_mpll3_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4412  		[CLKID_FCLK_DIV2_DIV]		= &g12a_fclk_div2_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4413  		[CLKID_FCLK_DIV3_DIV]		= &g12a_fclk_div3_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4414  		[CLKID_FCLK_DIV4_DIV]		= &g12a_fclk_div4_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4415  		[CLKID_FCLK_DIV5_DIV]		= &g12a_fclk_div5_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4416  		[CLKID_FCLK_DIV7_DIV]		= &g12a_fclk_div7_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4417  		[CLKID_FCLK_DIV2P5_DIV]		= &g12a_fclk_div2p5_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4418  		[CLKID_HIFI_PLL]		= &g12a_hifi_pll.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4419  		[CLKID_VCLK2_VENCI0]		= &g12a_vclk2_venci0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4420  		[CLKID_VCLK2_VENCI1]		= &g12a_vclk2_venci1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4421  		[CLKID_VCLK2_VENCP0]		= &g12a_vclk2_vencp0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4422  		[CLKID_VCLK2_VENCP1]		= &g12a_vclk2_vencp1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4423  		[CLKID_VCLK2_VENCT0]		= &g12a_vclk2_venct0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4424  		[CLKID_VCLK2_VENCT1]		= &g12a_vclk2_venct1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4425  		[CLKID_VCLK2_OTHER]		= &g12a_vclk2_other.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4426  		[CLKID_VCLK2_ENCI]		= &g12a_vclk2_enci.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4427  		[CLKID_VCLK2_ENCP]		= &g12a_vclk2_encp.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4428  		[CLKID_DAC_CLK]			= &g12a_dac_clk.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4429  		[CLKID_AOCLK]			= &g12a_aoclk_gate.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4430  		[CLKID_IEC958]			= &g12a_iec958_gate.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4431  		[CLKID_ENC480P]			= &g12a_enc480p.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4432  		[CLKID_RNG1]			= &g12a_rng1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4433  		[CLKID_VCLK2_ENCT]		= &g12a_vclk2_enct.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4434  		[CLKID_VCLK2_ENCL]		= &g12a_vclk2_encl.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4435  		[CLKID_VCLK2_VENCLMMC]		= &g12a_vclk2_venclmmc.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4436  		[CLKID_VCLK2_VENCL]		= &g12a_vclk2_vencl.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4437  		[CLKID_VCLK2_OTHER1]		= &g12a_vclk2_other1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4438  		[CLKID_FIXED_PLL_DCO]		= &g12a_fixed_pll_dco.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4439  		[CLKID_SYS_PLL_DCO]		= &g12a_sys_pll_dco.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4440  		[CLKID_GP0_PLL_DCO]		= &g12a_gp0_pll_dco.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4441  		[CLKID_HIFI_PLL_DCO]		= &g12a_hifi_pll_dco.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4442  		[CLKID_DMA]			= &g12a_dma.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4443  		[CLKID_EFUSE]			= &g12a_efuse.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4444  		[CLKID_ROM_BOOT]		= &g12a_rom_boot.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4445  		[CLKID_RESET_SEC]		= &g12a_reset_sec.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4446  		[CLKID_SEC_AHB_APB3]		= &g12a_sec_ahb_apb3.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4447  		[CLKID_MPLL_PREDIV]		= &g12a_mpll_prediv.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4448  		[CLKID_VPU_0_SEL]		= &g12a_vpu_0_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4449  		[CLKID_VPU_0_DIV]		= &g12a_vpu_0_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4450  		[CLKID_VPU_0]			= &g12a_vpu_0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4451  		[CLKID_VPU_1_SEL]		= &g12a_vpu_1_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4452  		[CLKID_VPU_1_DIV]		= &g12a_vpu_1_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4453  		[CLKID_VPU_1]			= &g12a_vpu_1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4454  		[CLKID_VPU]			= &g12a_vpu.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4455  		[CLKID_VAPB_0_SEL]		= &g12a_vapb_0_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4456  		[CLKID_VAPB_0_DIV]		= &g12a_vapb_0_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4457  		[CLKID_VAPB_0]			= &g12a_vapb_0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4458  		[CLKID_VAPB_1_SEL]		= &g12a_vapb_1_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4459  		[CLKID_VAPB_1_DIV]		= &g12a_vapb_1_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4460  		[CLKID_VAPB_1]			= &g12a_vapb_1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4461  		[CLKID_VAPB_SEL]		= &g12a_vapb_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4462  		[CLKID_VAPB]			= &g12a_vapb.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4463  		[CLKID_HDMI_PLL_DCO]		= &g12a_hdmi_pll_dco.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4464  		[CLKID_HDMI_PLL_OD]		= &g12a_hdmi_pll_od.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4465  		[CLKID_HDMI_PLL_OD2]		= &g12a_hdmi_pll_od2.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4466  		[CLKID_HDMI_PLL]		= &g12a_hdmi_pll.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4467  		[CLKID_VID_PLL]			= &g12a_vid_pll_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4468  		[CLKID_VID_PLL_SEL]		= &g12a_vid_pll_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4469  		[CLKID_VID_PLL_DIV]		= &g12a_vid_pll.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4470  		[CLKID_VCLK_SEL]		= &g12a_vclk_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4471  		[CLKID_VCLK2_SEL]		= &g12a_vclk2_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4472  		[CLKID_VCLK_INPUT]		= &g12a_vclk_input.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4473  		[CLKID_VCLK2_INPUT]		= &g12a_vclk2_input.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4474  		[CLKID_VCLK_DIV]		= &g12a_vclk_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4475  		[CLKID_VCLK2_DIV]		= &g12a_vclk2_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4476  		[CLKID_VCLK]			= &g12a_vclk.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4477  		[CLKID_VCLK2]			= &g12a_vclk2.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4478  		[CLKID_VCLK_DIV1]		= &g12a_vclk_div1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4479  		[CLKID_VCLK_DIV2_EN]		= &g12a_vclk_div2_en.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4480  		[CLKID_VCLK_DIV4_EN]		= &g12a_vclk_div4_en.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4481  		[CLKID_VCLK_DIV6_EN]		= &g12a_vclk_div6_en.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4482  		[CLKID_VCLK_DIV12_EN]		= &g12a_vclk_div12_en.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4483  		[CLKID_VCLK2_DIV1]		= &g12a_vclk2_div1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4484  		[CLKID_VCLK2_DIV2_EN]		= &g12a_vclk2_div2_en.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4485  		[CLKID_VCLK2_DIV4_EN]		= &g12a_vclk2_div4_en.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4486  		[CLKID_VCLK2_DIV6_EN]		= &g12a_vclk2_div6_en.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4487  		[CLKID_VCLK2_DIV12_EN]		= &g12a_vclk2_div12_en.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4488  		[CLKID_VCLK_DIV2]		= &g12a_vclk_div2.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4489  		[CLKID_VCLK_DIV4]		= &g12a_vclk_div4.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4490  		[CLKID_VCLK_DIV6]		= &g12a_vclk_div6.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4491  		[CLKID_VCLK_DIV12]		= &g12a_vclk_div12.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4492  		[CLKID_VCLK2_DIV2]		= &g12a_vclk2_div2.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4493  		[CLKID_VCLK2_DIV4]		= &g12a_vclk2_div4.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4494  		[CLKID_VCLK2_DIV6]		= &g12a_vclk2_div6.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4495  		[CLKID_VCLK2_DIV12]		= &g12a_vclk2_div12.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4496  		[CLKID_CTS_ENCI_SEL]		= &g12a_cts_enci_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4497  		[CLKID_CTS_ENCP_SEL]		= &g12a_cts_encp_sel.hw,
7e23dfe7a833421 Neil Armstrong     2020-04-06  4498  		[CLKID_CTS_ENCL_SEL]		= &g12a_cts_encl_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4499  		[CLKID_CTS_VDAC_SEL]		= &g12a_cts_vdac_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4500  		[CLKID_HDMI_TX_SEL]		= &g12a_hdmi_tx_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4501  		[CLKID_CTS_ENCI]		= &g12a_cts_enci.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4502  		[CLKID_CTS_ENCP]		= &g12a_cts_encp.hw,
7e23dfe7a833421 Neil Armstrong     2020-04-06  4503  		[CLKID_CTS_ENCL]		= &g12a_cts_encl.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4504  		[CLKID_CTS_VDAC]		= &g12a_cts_vdac.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4505  		[CLKID_HDMI_TX]			= &g12a_hdmi_tx.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4506  		[CLKID_HDMI_SEL]		= &g12a_hdmi_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4507  		[CLKID_HDMI_DIV]		= &g12a_hdmi_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4508  		[CLKID_HDMI]			= &g12a_hdmi.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4509  		[CLKID_MALI_0_SEL]		= &g12a_mali_0_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4510  		[CLKID_MALI_0_DIV]		= &g12a_mali_0_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4511  		[CLKID_MALI_0]			= &g12a_mali_0.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4512  		[CLKID_MALI_1_SEL]		= &g12a_mali_1_sel.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4513  		[CLKID_MALI_1_DIV]		= &g12a_mali_1_div.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4514  		[CLKID_MALI_1]			= &g12a_mali_1.hw,
085a4ea93d5491b Jian Hu            2019-02-01  4515  		[CLKID_MALI]			= &g12a_mali.hw,
e63b063ecd248ad Jerome Brunet      2019-05-12  4516  		[CLKID_MPLL_50M_DIV]		= &g12a_mpll_50m_div.hw,
e63b063ecd248ad Jerome Brunet      2019-05-12  4517  		[CLKID_MPLL_50M]		= &g12a_mpll_50m.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4518  		[CLKID_SYS_PLL_DIV16_EN]	= &g12a_sys_pll_div16_en.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4519  		[CLKID_SYS_PLL_DIV16]		= &g12a_sys_pll_div16.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4520  		[CLKID_CPU_CLK_DYN0_SEL]	= &g12a_cpu_clk_premux0.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4521  		[CLKID_CPU_CLK_DYN0_DIV]	= &g12a_cpu_clk_mux0_div.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4522  		[CLKID_CPU_CLK_DYN0]		= &g12a_cpu_clk_postmux0.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4523  		[CLKID_CPU_CLK_DYN1_SEL]	= &g12a_cpu_clk_premux1.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4524  		[CLKID_CPU_CLK_DYN1_DIV]	= &g12a_cpu_clk_mux1_div.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4525  		[CLKID_CPU_CLK_DYN1]		= &g12a_cpu_clk_postmux1.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4526  		[CLKID_CPU_CLK_DYN]		= &g12a_cpu_clk_dyn.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4527  		[CLKID_CPU_CLK]			= &g12a_cpu_clk.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4528  		[CLKID_CPU_CLK_DIV16_EN]	= &g12a_cpu_clk_div16_en.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4529  		[CLKID_CPU_CLK_DIV16]		= &g12a_cpu_clk_div16.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4530  		[CLKID_CPU_CLK_APB_DIV]		= &g12a_cpu_clk_apb_div.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4531  		[CLKID_CPU_CLK_APB]		= &g12a_cpu_clk_apb.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4532  		[CLKID_CPU_CLK_ATB_DIV]		= &g12a_cpu_clk_atb_div.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4533  		[CLKID_CPU_CLK_ATB]		= &g12a_cpu_clk_atb.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4534  		[CLKID_CPU_CLK_AXI_DIV]		= &g12a_cpu_clk_axi_div.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4535  		[CLKID_CPU_CLK_AXI]		= &g12a_cpu_clk_axi.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4536  		[CLKID_CPU_CLK_TRACE_DIV]	= &g12a_cpu_clk_trace_div.hw,
370294e2667fa16 Neil Armstrong     2019-03-04  4537  		[CLKID_CPU_CLK_TRACE]		= &g12a_cpu_clk_trace.hw,
34775209ba37bff Neil Armstrong     2019-03-07  4538  		[CLKID_PCIE_PLL_DCO]		= &g12a_pcie_pll_dco.hw,
34775209ba37bff Neil Armstrong     2019-03-07  4539  		[CLKID_PCIE_PLL_DCO_DIV2]	= &g12a_pcie_pll_dco_div2.hw,
34775209ba37bff Neil Armstrong     2019-03-07  4540  		[CLKID_PCIE_PLL_OD]		= &g12a_pcie_pll_od.hw,
34775209ba37bff Neil Armstrong     2019-03-07  4541  		[CLKID_PCIE_PLL]		= &g12a_pcie_pll.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4542  		[CLKID_VDEC_1_SEL]		= &g12a_vdec_1_sel.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4543  		[CLKID_VDEC_1_DIV]		= &g12a_vdec_1_div.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4544  		[CLKID_VDEC_1]			= &g12a_vdec_1.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4545  		[CLKID_VDEC_HEVC_SEL]		= &g12a_vdec_hevc_sel.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4546  		[CLKID_VDEC_HEVC_DIV]		= &g12a_vdec_hevc_div.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4547  		[CLKID_VDEC_HEVC]		= &g12a_vdec_hevc.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4548  		[CLKID_VDEC_HEVCF_SEL]		= &g12a_vdec_hevcf_sel.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4549  		[CLKID_VDEC_HEVCF_DIV]		= &g12a_vdec_hevcf_div.hw,
4b0f73055acaced Maxime Jourdan     2019-03-19  4550  		[CLKID_VDEC_HEVCF]		= &g12a_vdec_hevcf.hw,
ad517d5298cf47b Guillaume La Roque 2019-04-12  4551  		[CLKID_TS_DIV]			= &g12a_ts_div.hw,
ad517d5298cf47b Guillaume La Roque 2019-04-12  4552  		[CLKID_TS]			= &g12a_ts.hw,
a18c8e0b7697988 Neil Armstrong     2020-02-19  4553  		[CLKID_SPICC0_SCLK_SEL]		= &g12a_spicc0_sclk_sel.hw,
a18c8e0b7697988 Neil Armstrong     2020-02-19  4554  		[CLKID_SPICC0_SCLK_DIV]		= &g12a_spicc0_sclk_div.hw,
a18c8e0b7697988 Neil Armstrong     2020-02-19  4555  		[CLKID_SPICC0_SCLK]		= &g12a_spicc0_sclk.hw,
a18c8e0b7697988 Neil Armstrong     2020-02-19  4556  		[CLKID_SPICC1_SCLK_SEL]		= &g12a_spicc1_sclk_sel.hw,
a18c8e0b7697988 Neil Armstrong     2020-02-19  4557  		[CLKID_SPICC1_SCLK_DIV]		= &g12a_spicc1_sclk_div.hw,
a18c8e0b7697988 Neil Armstrong     2020-02-19  4558  		[CLKID_SPICC1_SCLK]		= &g12a_spicc1_sclk.hw,
7e23dfe7a833421 Neil Armstrong     2020-04-06  4559  		[CLKID_MIPI_DSI_PXCLK_SEL]	= &g12a_mipi_dsi_pxclk_sel.hw,
7e23dfe7a833421 Neil Armstrong     2020-04-06  4560  		[CLKID_MIPI_DSI_PXCLK_DIV]	= &g12a_mipi_dsi_pxclk_div.hw,
7e23dfe7a833421 Neil Armstrong     2020-04-06  4561  		[CLKID_MIPI_DSI_PXCLK]		= &g12a_mipi_dsi_pxclk.hw,
ee2d1a11f2252b1 Neil Armstrong     2020-04-06  4562  		[CLKID_VDIN_MEAS_SEL]		= &g12a_vdin_meas_sel.hw,
ee2d1a11f2252b1 Neil Armstrong     2020-04-06  4563  		[CLKID_VDIN_MEAS_DIV]		= &g12a_vdin_meas_div.hw,
ee2d1a11f2252b1 Neil Armstrong     2020-04-06  4564  		[CLKID_VDIN_MEAS]		= &g12a_vdin_meas.hw,
085a4ea93d5491b Jian Hu            2019-02-01 @4565  		[NR_CLKS]			= NULL,
085a4ea93d5491b Jian Hu            2019-02-01  4566  	},
085a4ea93d5491b Jian Hu            2019-02-01  4567  	.num = NR_CLKS,
085a4ea93d5491b Jian Hu            2019-02-01  4568  };
085a4ea93d5491b Jian Hu            2019-02-01  4569  

:::::: The code at line 4565 was first introduced by commit
:::::: 085a4ea93d5491b9e5274272b528a1fccf9b2546 clk: meson: g12a: add peripheral clock controller

:::::: TO: Jian Hu <jian.hu@amlogic.com>
:::::: CC: Neil Armstrong <narmstrong@baylibre.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011091234.0XKomZ1u-lkp%40intel.com.

--C7zPtVaVf+AK4Oqc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--C7zPtVaVf+AK4Oqc--
