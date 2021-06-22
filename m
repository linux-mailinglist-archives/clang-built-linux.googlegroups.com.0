Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB34VY2DAMGQEZHKNMFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id E43223AFD83
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 09:02:08 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id y14-20020a6bc80e0000b02904dc72726661sf11760771iof.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 00:02:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624345327; cv=pass;
        d=google.com; s=arc-20160816;
        b=BrwnhBBM9SLog7C0SDsdLEIw1Ci9mzy8yN/AdcAeyG0Ti6Zf2idf7A1Q3Oe95oWbAz
         fdjpEugjYJqImiKxHA0mRcYzc/24a7M19qWKik/gvSa1XDZtC6KzE9cIje0QMTdstVqt
         tPnFT8/TXHRDImMvzqq1V5tMqNC2WfTwpPWuCi8dEmluLumjNdtsngIgU0UHjxO2aBzm
         S7VJ4kFRkYYGUGeSk/CmZ/Fgk2iupv9nZq7JxjOxrNZKns+1HRj+cG/MMl5u5ATD89oK
         XxAF3VPXvgN33eBjMLJMTCFJC4DBuke5kw1OynkfzrVYoRvEmBcYAuxLRd94BjyGFyXX
         WaUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=u/nD19DLiPDsa6tsH/uAAmUmfIZa/IwmsmxI2/uPrTc=;
        b=Vx2RO7Y0RY21r2EQJglTbB7OiPrXEbEO/4abLBVF9tA79Avm2O2bOUlhXU+Pzb0XbP
         +Vqdcm5lNHEl9+j0ybcuvKNPbUlCphtXJsjSYL5F/+cVp5QQBXqud1yv7MayoTm9oT0o
         OcjvNUEWp1m1jqpxSZl0VXyOaji8xXPO5LC30YpX3umGYRknDJXtq2oIFKazHobP5AvO
         mrEOnBbqVcbgKf3ZnigCy+evWtVkVtmK0/hqmrkNztGA5y+7p2YwOld++NtgUAWq0haZ
         1l+mxFlM5Fs2v8w5tA0ZAzZc9rYeRkO6XTbSGbLa21bj4emKqgMh73ELrqjKSPGGd2cz
         Pmuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u/nD19DLiPDsa6tsH/uAAmUmfIZa/IwmsmxI2/uPrTc=;
        b=UjreglEjbulwDQ/fgnpKDl6g6OybM6kZAsYIVCPycpJFgG/vJOYmLdq3jOmTxX4TCz
         861D8j2t0Vrqf3upZQZTSJlR8N9vvsveWIdBylL+FiUIS5QoDz7k+Bny+BqHFZjQO6Gt
         N+8Ajd5zpXHA0CsfMf/zmcft0qTMpEaguAcGacMK2v/1s2J8vynqcudfKR6aJLUQ88rQ
         v7ffPLpT2sqjURMiRT83G1NHBU9px0FSANb1HTGHfQt8KDP2o3iCh0H8hkGwB7ESNPXR
         w5n2Vdx+X7ncnP8l3RfhcYG8Qtb7Ngz2O7j3gSCQLkFNYOOlr9pXNYytrCIlmq1jRY4T
         8QrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u/nD19DLiPDsa6tsH/uAAmUmfIZa/IwmsmxI2/uPrTc=;
        b=reEMmbPDi0DdqNtqeVx8cjGn5NhmNANl3/oxE+ISgoc8OGYowUpquuEZGlQfVVWVIV
         snS7Ik0Xmw76bW2iOJrFmKO79hO7lHs2YsYWq5bnRrGM890aTlWJ1hMpmqQpRxsIvTaG
         TpGSuCyeuW8b4lFtLMG89xfcaXHjNdC3YeOLVnZqlSeLZIlz8lih/EC13DTG6RiyIpYG
         49AAvxF7zJABOX0P0F5VWgkQYB7afcJkZS5Wc6eR/PBYRbxCtsyJA+yjZOTnp6ABzTW4
         E0SQkQm4Qw2QIfeyxaVpuYQTuphJG2N1E8hXyoDqbWk1gHFxwM4GCxKMAQCBcRodXQcn
         HC3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mYXBp+LRFMQv3mumUtmd/eC9JsVnK4vhGk3xrVAk91WkW6rrw
	HC6RjPJmr5KKXxxB7Ie0ihw=
X-Google-Smtp-Source: ABdhPJwY1wCVLm8Cgxr/1d7RrRwpezIfn2l3DN2nvNgUVsHPOZQ1DJBBw5hx21VectW0EeqDRHEEyw==
X-Received: by 2002:a6b:7617:: with SMTP id g23mr1734506iom.63.1624345327610;
        Tue, 22 Jun 2021 00:02:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d785:: with SMTP id d5ls3034885iln.10.gmail; Tue, 22 Jun
 2021 00:02:07 -0700 (PDT)
X-Received: by 2002:a05:6e02:1486:: with SMTP id n6mr1661854ilk.174.1624345327063;
        Tue, 22 Jun 2021 00:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624345327; cv=none;
        d=google.com; s=arc-20160816;
        b=HqKnbh5dc42ErzV10rPLgY6xY/9/xXtXIUqpYH9XMbJ6cdaN2rGPu0Fy6wd+/x27Au
         zmlHoujVvRGw71sYqx6cZPTnil1e+IsWJ+kIALCboEzms+ZL68SbmbaJUmsY2jGGY6N5
         78XkRw6doChSN4AXf2c8LdfzrZAonXHetSs980XvYfbY5gtqANvlntB+vclgWf0tTB6y
         RXQUyY+hMiWuof3RfGkPU4nTLohFUCEwY0BzFoML43yEMZfNEvkPFU/ngPv6YZwmp19D
         Qt4eFIzUCVJ6Wt+gjvjc8POsNSAhA3GjsGV7m77UWjg7A3xALbiPZ/El4P7CWclnKNSY
         paIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=tyDvGWoL/vfDIvUwDcQh/7Iig/NM4MGlq2+wH39NeBk=;
        b=P8PZp+UWNnydGjQd2HLfUwBqkJnHIh1e5Bcq/C2RUWQwCatOifV0XfrO2Q5shkLIG9
         52opCO6C/ps03+Q3NDM8ikwVyldkqOG4HnHvUhdjMaEFpZTw+aWS2Nzq8kdw3tiwEarn
         aAjgN9osz0dDe0eQBpguCf8DQAg212o6fZQBFOPByZf7gdM/cLe4r/RQ/5/w+mK8uC8H
         SkDeg5Fb3Jr87gYUW2FC/CB5iTm2OGYeNc6Wkw208wuglxbzjNSfp/LxGi/68Nti0Ua8
         AmWiWWQtSuDkyvRh75dM7PYFaGKP8rt9mXA3gYoZjMp3rOA6I/p81UPynL7Y/ONWQ8tM
         zajQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id v124si130651iof.2.2021.06.22.00.02.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 00:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: ey02YLg2wFGGy4Wbxl7I+qIElSv7q7a8HYFh1X+qa/9SExDutGJ2irySU1AqgD13Lv/97RMnml
 sfl+rqXWBvng==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="268135942"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; 
   d="gz'50?scan'50,208,50";a="268135942"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2021 00:02:05 -0700
IronPort-SDR: ncSP91ql9GG/bLjFhbDy7xfxh7Rfd5JO9mgqPWK1s6aIt1SgL7t4B+zKZl8KnpT6kwVC9strJ/
 KHxsnkrXPMXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; 
   d="gz'50?scan'50,208,50";a="405879035"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 22 Jun 2021 00:02:02 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lvaQ4-00050x-7f; Tue, 22 Jun 2021 07:02:00 +0000
Date: Tue, 22 Jun 2021 15:01:11 +0800
From: kernel test robot <lkp@intel.com>
To: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	Michal Simek <monstr@monstr.eu>,
	Davor Joja <davor.joja@logicbricks.com>
Subject: [xlnx:master 10742/12287] drivers/media/i2c/adv7511-v4l2.c:427:2:
 error: void function 'adv7511_set_rgb_quantization_mode' should not return a
 value
Message-ID: <202106221502.nT7EJEku-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Radhey,

FYI, the error/warning still remains.

tree:   https://github.com/Xilinx/linux-xlnx master
head:   163a7d26208a6794f595eeee3d54787df5e903d4
commit: c2644339194bd7be4ce6023d72f5e7a03f55ef6b [10742/12287] drivers: media: Customized adv7511 for Xylon LogiCVC (deprecated)
config: powerpc64-randconfig-r032-20210622 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b3634d3e88b7f26534a5057bff182b7dced584fc)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/Xilinx/linux-xlnx/commit/c2644339194bd7be4ce6023d72f5e7a03f55ef6b
        git remote add xlnx https://github.com/Xilinx/linux-xlnx
        git fetch --no-tags xlnx master
        git checkout c2644339194bd7be4ce6023d72f5e7a03f55ef6b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/media/i2c/adv7511-v4l2.c:20:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:185:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/media/i2c/adv7511-v4l2.c:20:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:189:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/media/i2c/adv7511-v4l2.c:20:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:193:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/media/i2c/adv7511-v4l2.c:20:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:197:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/media/i2c/adv7511-v4l2.c:20:
   In file included from include/linux/gpio.h:62:
   In file included from include/asm-generic/gpio.h:11:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:201:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/media/i2c/adv7511-v4l2.c:427:2: error: void function 'adv7511_set_rgb_quantization_mode' should not return a value [-Wreturn-type]
           return 0;
           ^      ~
   drivers/media/i2c/adv7511-v4l2.c:2251:21: warning: no previous prototype for function 'adv7511_subdev' [-Wmissing-prototypes]
   struct v4l2_subdev *adv7511_subdev(struct v4l2_subdev *sd)
                       ^
   drivers/media/i2c/adv7511-v4l2.c:2251:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct v4l2_subdev *adv7511_subdev(struct v4l2_subdev *sd)
   ^
   static 
   8 warnings and 1 error generated.


vim +/adv7511_set_rgb_quantization_mode +427 drivers/media/i2c/adv7511-v4l2.c

   421	
   422	static void adv7511_set_rgb_quantization_mode(struct v4l2_subdev *sd, struct v4l2_ctrl *ctrl)
   423	{
   424		struct adv7511_state *state = get_adv7511_state(sd);
   425	
   426	#ifdef XYLON_LOGICVC_INTG
 > 427		return 0;
   428	#endif
   429	
   430		/* Only makes sense for RGB formats */
   431		if (state->fmt_code != MEDIA_BUS_FMT_RGB888_1X24) {
   432			/* so just keep quantization */
   433			adv7511_csc_rgb_full2limit(sd, false);
   434			return;
   435		}
   436	
   437		switch (ctrl->val) {
   438		case V4L2_DV_RGB_RANGE_AUTO:
   439			/* automatic */
   440			if (state->dv_timings.bt.flags & V4L2_DV_FL_IS_CE_VIDEO) {
   441				/* CE format, RGB limited range (16-235) */
   442				adv7511_csc_rgb_full2limit(sd, true);
   443			} else {
   444				/* not CE format, RGB full range (0-255) */
   445				adv7511_csc_rgb_full2limit(sd, false);
   446			}
   447			break;
   448		case V4L2_DV_RGB_RANGE_LIMITED:
   449			/* RGB limited range (16-235) */
   450			adv7511_csc_rgb_full2limit(sd, true);
   451			break;
   452		case V4L2_DV_RGB_RANGE_FULL:
   453			/* RGB full range (0-255) */
   454			adv7511_csc_rgb_full2limit(sd, false);
   455			break;
   456		}
   457	}
   458	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106221502.nT7EJEku-lkp%40intel.com.

--jI8keyz6grp/JLjh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
FvGhGvfdvh3Y5Y3Wlo0Z2PsepENqcUfqVogeWo4jJIwPZvYDtjT+FTZze5qKNsTwvb5Z62Xb
t7zg14f/MYHyVThet7u7ulqLqIdN2UM4WbhMICQoLqZTcC+/eb/y3J5u+FTg68DjMziy8cVB
pPrtv7Q7vVZmUzuYe8/o8zcAFyvQXdXILd/mhy1rvOKlfwG/4VlowBCXYirS3NRDYXIWJgG+
Wk0s5zbwskUWStogZB5mzBtZuMKxVeX1iX72I++M0Hu6OWMl3pOy3vfW2Oj4uPh2/+3m6/Pr
w/vbC3bN3MViZk1BDsztIhG2SupQOZaHQapFsB0Iwvse/IeHkMFKOJX9xtgxx0+q7pMeZVZ2
nblxi81VRLBBO0QKgLhsKbA5uKZ69eDL/devXJIQk86yCYrvktX5bDiYCro0EVglJLwJ8fgE
Ai5OeWs022XTw3+e71mJTaPbLYlIvg5trV19wuxwAqv3XPc/EqModJ3GLDnb7Z7TPCoCPiD2
ayxIwNg5RIsj3E72fLPtaHHZDMFFdM95rD8mmVBQn3585QuZ3U+zhwtCHbwX9UrlRdO6x9L2
xJsdN1/IpgJ3DfQK/wwHZsUHKlocoRmEuAVrZkjwgAIDwyaNkoUU+rYiQep7TtHAaGE5UzbF
T7S86rQpqOsi8aLA7A9O9VOLWuSZF0UmkQuTBsmUn+VIbsNsFVrENIliM8lpfbO7MokjZ1+O
nilGY0rfkqXWZjzRFHOYnPHANxtDkNPYnoQCyMze0zhsRxWLIfZWzoqeaBr65pjlxCzTzqOQ
ESGd69h6eaTMQriaHPKZPr62W6726pHsZL/tya160UvcDBAl8X/5v+dBEqf33/RIgid/kFwv
BQtWmbbq6liKHfSpLP6J4l87fNJmBrat1CZAyqvWg73c/+dJr4JQJS5whZqqDTDQmRH+cgKg
Wh4WoErnSJE0JSBCM6+127Aahx+688VmgsYRhHiqqRc5slOP1XXAdwHuAobhhaA+GzqXo3E0
YU4FktRRyCR1FDItvZUL8RNk4AwDZJLbRJQRuDyhWeAU8qL4q7A5jWUmk4iSjB+XqKx1T4Is
Clylon1suE+ibD+XlymP2NhkfNaUWAl1pYhKTPcFro7DXQvq4tJyhPu+9Z1ZDkm1A09r6O5E
UefNtsglozJKxNotbspra6Ikj8yzZRkufgkqkvw67/kidXdJ05amsTquQdfegi2Q7/lerAzf
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

--jI8keyz6grp/JLjh--
