Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSF7USCQMGQENTMSFGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFB938D64C
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 17:14:17 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id d4-20020a25b5c40000b02904f8e3c8c6c9sf31090934ybg.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 08:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621696456; cv=pass;
        d=google.com; s=arc-20160816;
        b=ixt/kjVA8vhD9sg2EruLCewMKY4mAMTyXA3qFRovLABeFrHf0wGtelcDGnl1bzJIgL
         kIeh/spmdI8Wa2EST9a1J0kE3mOS2hJPeKDv6Ebwc5rq0MArOSlzb9tLwEagxj3iDsqe
         jDLi8el4DWrB/xtPiHpLZlMx0XhLRCbm43HPkfZYnLBCQbOfVJ7Ckh/bg+VCo0ofYdjY
         pu8yBIg/wI62SqWxIv/768whl9EMcJzJJBJbnGQvagMSCXdymSpM5JHM1gjfGjxcYAaj
         yDtc7J2hhUiQPkapvuebzEuF9VL5JKVBfVk9XTfKG8lLR4YYCuF665x4cFWSFyhQLwNd
         Q5rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=BhPXl02hONmUC6krxl1RxdDfqArg4weiqhdgBtthwmU=;
        b=q/QDXB688lGBm08HXfszG3KXU5+XcSDHltec8jnNzH/kt+RPiZJps38F3kt5PCqHJD
         edjMRpLSQpaujeaubjll5OjaQfddU1yasSqBU1VpHXdZyH311ff108rLYFGxth9jAlJE
         dJVVrWvQcdAvxmA27bY1Tf7sRiEJLnNC9BlhNMe6Wjc5RC9VlRc9fEWtiddHKCOsfoFB
         59O8OuMgHO7y9rs2mvaRwJaXUXriPAhhPdlZvtCpYcE3iqVrJkLAlap3Tv2D17nOTBnJ
         TUdQDlXK935umOZhxuLVnCG1WIC1TcULoZZrFAZa+wjMC5HoFH6aoE7WswPDnuimcFKZ
         J2Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BhPXl02hONmUC6krxl1RxdDfqArg4weiqhdgBtthwmU=;
        b=TBour7dQHpRMeomRU7kHLjKUUhYS/GM5IJPHi0ldrQKt0BXpDOZFTKVIWJbmr9g9u7
         r+0Z0jn5J3A+nnM4mjS4i0ZrHUSAOfqdeLsKbGrdsYu6bwR4NAU/pTdKpQdv6TsOzAr/
         AYsYcEu4me1KcdYK8MCN0cRl6nTEaYenG1lyP9mwv0o9wsLNeXLE133xbV5tononQ3L9
         qByIDoYRBNnSxLgnZh9VuJFInY3o6ngX1phJAMnhIVB/iIKqhhWvw9vLJiMpDgTmKMbf
         yTUZJUbXCWRqbxmuQY+Kq07lO9YEy6gmFGUOCyhvuMw1MMM1hsRoQGEG2az+hyMc3SSl
         Utkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BhPXl02hONmUC6krxl1RxdDfqArg4weiqhdgBtthwmU=;
        b=bUzDeLkzuTZktsh4qGvLjEwU9T03mON8OpI1q4s64Bdo3r8S2tNLq5CFs0Si3qgs04
         cxL/H6v6RF96GS6cOnDKDSVnKydJTdXNRhQzfnFL0dzSR4TqmSj8ViHCiLX8pl3CSrS5
         imjZBuokAxmnhx8ypM/+9fSW0BBvLIZYPlr3ZAqnOKuNS/gHaZNLKauu7bPvd7cLvDpO
         4Cjsr9PR1v0nra4VYaCsh+1YdqHgiNBdbi8bDDleOA05P9Q2O6aFbndGKFYTkwgFUHjE
         5yyXbYavHCpAmSZT5sM1QLwVo+r56N0BgkLw8FKg3y3Pl/4vwWVrFA0vxGSEvYVcQIx/
         AkGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53005hmPd4IQRAoAqUt88wkN9Q8T0KIO0WiGp476U76kqllrLKS+
	dvK115i2jGH9vKwmveiKsuE=
X-Google-Smtp-Source: ABdhPJw+1gPPwgyolBP1PsrgoYyiSml/Z4NPtTEibCMxZLAVKQ0niFcOHWyetNsRPv+9+ic/z8iU1g==
X-Received: by 2002:a25:68c9:: with SMTP id d192mr4423859ybc.502.1621696456442;
        Sat, 22 May 2021 08:14:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls4878552ybc.2.gmail; Sat, 22
 May 2021 08:14:16 -0700 (PDT)
X-Received: by 2002:a5b:406:: with SMTP id m6mr21658879ybp.191.1621696455771;
        Sat, 22 May 2021 08:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621696455; cv=none;
        d=google.com; s=arc-20160816;
        b=L5AsG/C6acr4kTx6MRYx6MOilmESmzVbD51Re9FwwCDuxcvDutZNOM2UJKWKX3v3cW
         WKTaG/BDq4UQE8lBxzzazOvuPZIg8xsHSY5yBioVv2ngd+qUjN9L2e0Mq2GD9qPRFDc1
         g6gsMGKg5tUlzV/XD6N6KXxZ3ux6A4YcgXQUCkXJpP64alwpmi8Lj/SgT1Nr95b3xycC
         9CbZszvxZTeEZjrXO9zlo0qX8A+6WAzcvYUG0k8wl9xZiFSikC69reN9l6uqfVvrtOXT
         LO0kGZtjUKCizR7GhYitvBzgHUx8HHMcM/S4co+N+n/Jij5uk3h2wltRuurwlDyrD2hM
         3AOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3tecXkbSE8fV2WwL1Btxl7FJDKVgEtf0wpS5N/HBUi4=;
        b=uumSDwsL/4om1jq4ySpYQ47MqDcx6NJD638lr5EGWijlUsMHHGTyZHOseIie6Gagjx
         HH+UxiAis8JBLavoiTBELXxp464xy7FhJmmw4svlHfM14BmxaynYyxtpxNDrj5EkhXn8
         N6U5Z61g5qF7FWWdq0R31XIymE0LRe4KG7W5auxM45hh2/5g+WrhCrhJVuRhWmktOlvF
         J/90w75p73/uZSSBdlvUPffTzj6E/VALPFoyxjUl0W5MDxbC7kAbHQF0q19K29KcftK0
         7h8pFbnkILCzpk/zQKBjnIz4oH92QZLZPNELoeAjFY3UZ+N8oZOOE6QHvYFhxee6F3b8
         U4/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id l14si1193550ybp.4.2021.05.22.08.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 May 2021 08:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: boIX4RNirlF7/jujo5NoR26mVxTfY7uRA6+eGBHMK8GHyVFc+bVthQT31FzR/0Wqt/nNNHFlCJ
 7u0RY+ST1Ylg==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="189063821"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="189063821"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2021 08:14:12 -0700
IronPort-SDR: 44ReznxrF2He1Siy8OSw4RzKoZ3UUuCtW3dH5bokP9jxbnMvad7lPzh9I7wTuCVfAezwCo8UgH
 YCJIEEykQ74w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="475011247"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 22 May 2021 08:14:10 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lkTKL-0000Gx-Tj; Sat, 22 May 2021 15:14:09 +0000
Date: Sat, 22 May 2021 23:14:00 +0800
From: kernel test robot <lkp@intel.com>
To: Huan Feng <huan.feng@starfivetech.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Emil Renner Berthing <kernel@esmil.dk>
Subject: [stffrdhrn:starfive-bad-dcache-flush 2/39]
 drivers/gpio/gpio-starfive-vic.c:522:8: error: implicit declaration of
 function 'devm_request_irq'
Message-ID: <202105222357.YzsLZZiy-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/stffrdhrn/linux.git starfive-bad-dcache-flush
head:   a5c948a9cc2b8944f00056c067fb7bde19b34843
commit: 4482cc40078eac952205e48d9937419f5808d6a2 [2/39] gpio: starfive-vic: Add StarFive VIC GPIO driver
config: powerpc64-randconfig-r012-20210522 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e84a9b9bb3051c35dea993cdad7b3d2575638f85)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/stffrdhrn/linux/commit/4482cc40078eac952205e48d9937419f5808d6a2
        git remote add stffrdhrn https://github.com/stffrdhrn/linux.git
        git fetch --no-tags stffrdhrn starfive-bad-dcache-flush
        git checkout 4482cc40078eac952205e48d9937419f5808d6a2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:202:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpio/gpio-starfive-vic.c:22:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:204:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpio/gpio-starfive-vic.c:22:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:206:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpio/gpio-starfive-vic.c:22:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:208:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpio/gpio-starfive-vic.c:22:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:210:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpio/gpio-starfive-vic.c:22:
   In file included from include/linux/gpio/driver.h:7:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:212:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/gpio/gpio-starfive-vic.c:348:6: warning: no previous prototype for function 'sf_vic_gpio_dout_reverse' [-Wmissing-prototypes]
   void sf_vic_gpio_dout_reverse(int gpio, int en)
        ^
   drivers/gpio/gpio-starfive-vic.c:348:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_dout_reverse(int gpio, int en)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:367:6: warning: no previous prototype for function 'sf_vic_gpio_dout_value' [-Wmissing-prototypes]
   void sf_vic_gpio_dout_value(int gpio, int v)
        ^
   drivers/gpio/gpio-starfive-vic.c:367:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_dout_value(int gpio, int v)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:385:6: warning: no previous prototype for function 'sf_vic_gpio_dout_low' [-Wmissing-prototypes]
   void sf_vic_gpio_dout_low(int gpio)
        ^
   drivers/gpio/gpio-starfive-vic.c:385:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_dout_low(int gpio)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:391:6: warning: no previous prototype for function 'sf_vic_gpio_dout_high' [-Wmissing-prototypes]
   void sf_vic_gpio_dout_high(int gpio)
        ^
   drivers/gpio/gpio-starfive-vic.c:391:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_dout_high(int gpio)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:397:6: warning: no previous prototype for function 'sf_vic_gpio_doen_reverse' [-Wmissing-prototypes]
   void sf_vic_gpio_doen_reverse(int gpio, int en)
        ^
   drivers/gpio/gpio-starfive-vic.c:397:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_doen_reverse(int gpio, int en)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:416:6: warning: no previous prototype for function 'sf_vic_gpio_doen_value' [-Wmissing-prototypes]
   void sf_vic_gpio_doen_value(int gpio, int v)
        ^
   drivers/gpio/gpio-starfive-vic.c:416:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_doen_value(int gpio, int v)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:435:6: warning: no previous prototype for function 'sf_vic_gpio_doen_low' [-Wmissing-prototypes]
   void sf_vic_gpio_doen_low(int gpio)
        ^
   drivers/gpio/gpio-starfive-vic.c:435:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_doen_low(int gpio)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:441:6: warning: no previous prototype for function 'sf_vic_gpio_doen_high' [-Wmissing-prototypes]
   void sf_vic_gpio_doen_high(int gpio)
        ^
   drivers/gpio/gpio-starfive-vic.c:441:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_doen_high(int gpio)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:447:6: warning: no previous prototype for function 'sf_vic_gpio_manual' [-Wmissing-prototypes]
   void sf_vic_gpio_manual(int offset, int v)
        ^
   drivers/gpio/gpio-starfive-vic.c:447:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sf_vic_gpio_manual(int offset, int v)
   ^
   static 
>> drivers/gpio/gpio-starfive-vic.c:522:8: error: implicit declaration of function 'devm_request_irq' [-Werror,-Wimplicit-function-declaration]
           ret = devm_request_irq(dev, irq, starfive_irq_handler, IRQF_SHARED,
                 ^
   drivers/gpio/gpio-starfive-vic.c:522:8: note: did you mean 'can_request_irq'?
   include/linux/irq.h:701:12: note: 'can_request_irq' declared here
   extern int can_request_irq(unsigned int irq, unsigned long irqflags);
              ^
>> drivers/gpio/gpio-starfive-vic.c:522:57: error: use of undeclared identifier 'IRQF_SHARED'
           ret = devm_request_irq(dev, irq, starfive_irq_handler, IRQF_SHARED,
                                                                  ^
   21 warnings and 2 errors generated.


vim +/devm_request_irq +522 drivers/gpio/gpio-starfive-vic.c

   347	
 > 348	void sf_vic_gpio_dout_reverse(int gpio, int en)
   349	{
   350		unsigned int value;
   351		int offset;
   352	
   353		if (!gpio_base)
   354			return;
   355	
   356		offset = gpio * 8 + GPIO_DOUT_X_REG;
   357	
   358		spin_lock(&sfg_lock);
   359		value = ioread32(gpio_base + offset);
   360		value &= ~(0x1 << 31);
   361		value |= (en & 0x1) << 31;
   362		iowrite32(value, gpio_base + offset);
   363		spin_unlock(&sfg_lock);
   364	}
   365	EXPORT_SYMBOL_GPL(sf_vic_gpio_dout_reverse);
   366	
 > 367	void sf_vic_gpio_dout_value(int gpio, int v)
   368	{
   369		unsigned int value;
   370		int offset;
   371	
   372		if (!gpio_base)
   373			return;
   374	
   375		offset = gpio * 8 + GPIO_DOUT_X_REG;
   376		spin_lock(&sfg_lock);
   377		value = ioread32(gpio_base + offset);
   378		value &= ~(0xFF);
   379		value |= (v&0xFF);
   380		iowrite32(value, gpio_base + offset);
   381		spin_unlock(&sfg_lock);
   382	}
   383	EXPORT_SYMBOL_GPL(sf_vic_gpio_dout_value);
   384	
 > 385	void sf_vic_gpio_dout_low(int gpio)
   386	{
   387		sf_vic_gpio_dout_value(gpio, 0);
   388	}
   389	EXPORT_SYMBOL_GPL(sf_vic_gpio_dout_low);
   390	
 > 391	void sf_vic_gpio_dout_high(int gpio)
   392	{
   393		sf_vic_gpio_dout_value(gpio, 1);
   394	}
   395	EXPORT_SYMBOL_GPL(sf_vic_gpio_dout_high);
   396	
 > 397	void sf_vic_gpio_doen_reverse(int gpio, int en)
   398	{
   399		unsigned int value;
   400		int offset;
   401	
   402		if (!gpio_base)
   403			return;
   404	
   405		offset = gpio * 8 + GPIO_DOEN_X_REG;
   406	
   407		spin_lock(&sfg_lock);
   408		value = ioread32(gpio_base + offset);
   409		value &= ~(0x1 << 31);
   410		value |= (en & 0x1) << 31;
   411		iowrite32(value, gpio_base + offset);
   412		spin_unlock(&sfg_lock);
   413	}
   414	EXPORT_SYMBOL_GPL(sf_vic_gpio_doen_reverse);
   415	
 > 416	void sf_vic_gpio_doen_value(int gpio, int v)
   417	{
   418		unsigned int value;
   419		int offset;
   420	
   421		if (!gpio_base)
   422			return;
   423	
   424		offset = gpio * 8 + GPIO_DOEN_X_REG;
   425	
   426		spin_lock(&sfg_lock);
   427		value = ioread32(gpio_base + offset);
   428		value &= ~(0xFF);
   429		value |= (v&0xFF);
   430		iowrite32(value, gpio_base + offset);
   431		spin_unlock(&sfg_lock);
   432	}
   433	EXPORT_SYMBOL_GPL(sf_vic_gpio_doen_value);
   434	
 > 435	void sf_vic_gpio_doen_low(int gpio)
   436	{
   437		sf_vic_gpio_doen_value(gpio, 0);
   438	}
   439	EXPORT_SYMBOL_GPL(sf_vic_gpio_doen_low);
   440	
 > 441	void sf_vic_gpio_doen_high(int gpio)
   442	{
   443		sf_vic_gpio_doen_value(gpio, 1);
   444	}
   445	EXPORT_SYMBOL_GPL(sf_vic_gpio_doen_high);
   446	
 > 447	void sf_vic_gpio_manual(int offset, int v)
   448	{
   449		unsigned int value;
   450	
   451		if (!gpio_base)
   452			return ;
   453	
   454		spin_lock(&sfg_lock);
   455		value = ioread32(gpio_base + offset);
   456		value &= ~(0xFF);
   457		value |= (v&0xFF);
   458		iowrite32(value, gpio_base + offset);
   459		spin_unlock(&sfg_lock);
   460	}
   461	EXPORT_SYMBOL_GPL(sf_vic_gpio_manual);
   462	
   463	static int starfive_gpio_probe(struct platform_device *pdev)
   464	{
   465		struct device *dev = &pdev->dev;
   466		struct starfive_gpio *chip;
   467		struct gpio_irq_chip *girq;
   468		struct resource *res;
   469		int irq, ret, ngpio;
   470	
   471		chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
   472		if (!chip) {
   473			dev_err(dev, "out of memory\n");
   474			return -ENOMEM;
   475		}
   476	
   477		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
   478		chip->base = devm_ioremap_resource(dev, res);
   479		if (IS_ERR(chip->base)) {
   480			dev_err(dev, "failed to allocate device memory\n");
   481			return PTR_ERR(chip->base);
   482		}
   483		gpio_base = chip->base ;
   484	
   485		irq = platform_get_irq(pdev, 0);
   486		if (irq < 0) {
   487			dev_err(dev, "Cannot get IRQ resource\n");
   488			return irq;
   489		}
   490	
   491		raw_spin_lock_init(&chip->lock);
   492		chip->gc.direction_input = starfive_direction_input;
   493		chip->gc.direction_output = starfive_direction_output;
   494		chip->gc.get_direction = starfive_get_direction;
   495		chip->gc.get = starfive_get_value;
   496		chip->gc.set = starfive_set_value;
   497		chip->gc.base = 0;
   498		chip->gc.ngpio = 64;
   499		chip->gc.label = dev_name(dev);
   500		chip->gc.parent = dev;
   501		chip->gc.owner = THIS_MODULE;
   502	
   503		girq = &chip->gc.irq;
   504		girq->chip = &starfive_irqchip;
   505		girq->parent_handler = NULL;
   506		girq->num_parents = 0;
   507		girq->parents = NULL;
   508		girq->default_type = IRQ_TYPE_NONE;
   509		girq->handler = handle_simple_irq;
   510	
   511		ret = gpiochip_add_data(&chip->gc, chip);
   512		if (ret) {
   513			dev_err(dev, "gpiochip_add_data ret=%d!\n", ret);
   514			return ret;
   515		}
   516	
   517		/* Disable all GPIO interrupts before enabling parent interrupts */
   518		iowrite32(0, chip->base + GPIO_IE_HIGH);
   519		iowrite32(0, chip->base + GPIO_IE_LOW);
   520		chip->enabled = 0;
   521	
 > 522		ret = devm_request_irq(dev, irq, starfive_irq_handler, IRQF_SHARED,
   523				dev_name(dev), chip);
   524		if (ret) {
   525			dev_err(dev, "IRQ handler registering failed (%d)\n", ret);
   526			return ret;
   527		}
   528	
   529		writel_relaxed(1, chip->base + GPIO_EN);
   530	
   531		dev_info(dev, "StarFive GPIO chip registered %d GPIOs\n", ngpio);
   532	
   533		return 0;
   534	}
   535	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105222357.YzsLZZiy-lkp%40intel.com.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICMUSqWAAAy5jb25maWcAnDzbctu4ku/zFazMy0zVmYlk2U68W34ASVDCiCRoApRkv7AU
mc5ox5F8JDmT7NdvN8ALQELOnE1V4rC7iUuj0Xf6559+9sjraf9lfdpu1s/P373P1a46rE/V
o/e0fa7+2wu5l3Lp0ZDJ34E43u5ev71/2f9dHV423tXv48nvo98OmwtvXh121bMX7HdP28+v
MMJ2v/vp558CnkZsWgZBuaC5YDwtJV3J23eb5/Xus/e1OhyBzsNRfh95v3zenv7r/Xv498v2
cNgf3j8/f/1Svhz2/1NtTl718XJ98+nm06fJ6Gq8mVw9Vuubm8nmcf344dPk8eLqw9X15OPT
x6tf3zWzTrtpb0fGUpgog5ik09vvLRAfW9rxZAR/GhwR+MI0LTpyADW0F5Or0UUDj8PhfACD
1+M47F6PDTp7LljcDAYnIimnXHJjgTai5IXMCunEszRmKe1QLL8rlzyfdxC/YHEoWUJLSfyY
loLnxlByllMCi04jDv8AicBX4Sx/9qZKOJ69Y3V6felO18/5nKYlHK5IMmPilMmSpouS5LBn
ljB5O2lZFfAkYzC3pMKYO+YBiRvWvHtnLbgUJJYGcEYWtJzTPKVxOX1gxsROYEgjUsRSrcoY
pQHPuJApSejtu192+13VCZFYEhzlZ695vhcLlgXe9ujt9idkRYdbEhnMyruCFtSJD3IuRJnQ
hOf3JZGSBDMnXSFozHwTZe6Z5DAJKeBGwlqAX3FzPHDS3vH10/H78VR96Y5nSlOas0AJgpjx
ZceTPqaM6YLGbnwwM7mJkJAnhKU2TLDERVTOGM1x3fc2NuJ5QMNa5Jh5I0VGckGRyGS+uaCQ
+sU0EjYDq92jt3/qcaK/HSX6i455PXQAUjgHRqRSOJAJF2WRhUTShu1y+wX0mIvzkgVzuBYU
eGsIecrL2QNegISn5uYAmMEcPGSB4+j1WyyMjasNP1CdljInwdxiXx+jOd1bQ/c4Y9NZmVOh
WJMLtaqalYPddQvOckqTTMJgKXWsuEEveFykkuT35mZr5BuvBRzeangcZMV7uT7+5Z1gOd4a
lnY8rU9Hb73Z7F93p+3uc8f1Bcvh7awoSaDG0IxpZ1aHYqOdl9AxTJkSyRauvbqIQWRsaVdy
515UJphTkP/Bvtsjh9mZ4DEsUcmV4lseFJ5wCWZ6XwLOXAI8lnQFEug6FKGJzdd7IDATQo1R
3xQHagAqQuqCo9DSdnk1J+ydtGyd6/8YjJ63csQDEzwDFaNlW3FGbP6sHl+fq4P3VK1Pr4fq
qMD1bA5sz9SyVI4vPho3bprzIhMmR0HRB27Z8uN5/YKD1xpRimBGDachIiwvbUxnVyJR+iQN
lyyUM8eIIJvOMeuZMhaKATAPE2LNocER3M4Hmp9fdkgXTGma/psgnyD70m0YNUnChNuwtmOD
yndNPaPBPONwJKjEJM8NTae2DOZScjWGgbgXwLaQgr4JQJuH5zHl4sK6KDQm945V4KHC7pWH
kRvDqWeSwJCCF6iFO+8jDxsvpRs9LH0AXTj5AMj4ISHncKuH829xl1wg4rJbKTw/CGmJls85
qmL8v4vxQckzUGvsgaKFQfsFPxKS9iSgRybgP+e8G3D0QvQ/Aw7KAcwsKSn6jmmj1jq3+h+S
8TybkRR8szy1jjiQMei7gGZShSWoczq8VoTWZQYvkYFjljtZLKZUJqC8ytqrcKlQJVWd19G+
G8HywKy7TCEXbGXa5Fa1gajPXSJYWFaFxhEwKHc7oz4B/yoqnGuNCvAeDN2Dj6AmDP5k3N6E
YNOUxFHonErtwMY146CbFZl3bwZa04i0GDdnYbws8nMGm4QLBluqOSwcs8HQPslz8EWNYAFp
7xMxhJSWd9hCFd9QB6ArYF2VLHIdv+nV5yrYcHJCefVoWLpFljiUDw6csTgXmbhPA3XOxmoD
MxIDT/rOjIRATHowGIyGoakE1WXE+1z2XeEsGI8uGzNax/1ZdXjaH76sd5vKo1+rHbgoBCxp
gE4KuI/ah6tf78Z0ujz/cETDUUv0cNpjhKviUlQQbhIJkaoRBouY+JYIx4XvvtwxP4cgPhxE
PqVNHHmeDA1nzARYKLjtPHEpCItsRvIQPClLGYtZEUUQNGcEZgTZgGgZjJ1b10iaaL0I4TSL
WNBTjOAdRSy2YgalApUVtQIAO+hv38+C61YIssN+Ux2P+wOECS8v+8PJOu8sQCsyn4jy+tKl
5Bo8La8NW9QGXJnhH3a0NiwC3zenUzGAGkkPeK33VpIUELvAZZq5ZkC0AQdapcGt80hc/hsO
EXKe+7RWkTUjh1xqo4dQ8MmF4YLBdny8lWnIiHFo15c+MwJJa4FKMSQJAc8tBReCSVARZGVk
XFwEEL6PP7oJmhvTDDT+8A/ocLyxpUEElehhojLD6AjifCMIpeBbNSilgcqI5SD7waxI52fo
lOy7yXKMssTt1bjds5CgPXU4IYoss/NcCgxvRDGZiiEeswDgAw4RjWTOlhTCZmnJjqFRSR7f
15baICFpnYDghQTed5k/xca+28oTJkElEIgb1cU0DReKWRH603J8fXU1MgQBM0PqkIZL1v7B
ENjas2aagcVhPs21c4VeiWC+mYdQJDWfMDuSc5/27iIY58bwDO5ph2MkELcXblz4Fm4BuJF1
AcnS4NUDT0FFJ4bsZVOd+1QZL3F7WSuy5/UJrY5Ljwk4IlfSqfGRRAz+fdDqGUv/3VFQH/Rq
NHJHN2C6UyqbA3HSzMHKTQsIblxOVEYy8L1JTjANYfOWR9qFxwgEfDYrM4x4UGHg2q5A1pjp
3yWZGcHjk3biDJ8Q9tvBwb2e08IKZBQyEVPLPjXJHC86VP9+rXab795xs3628jd4y8EM3tn6
ECHllC8wb5qjWjmDHubVWjRogzPhZ0PRZINxICOWcTkUzlf4Eq4Osd1CJyX6giIjwZk8sesV
noYUVuP2sJ1vAA6mWQxyVsO3/oP9/nifZ/fnImx2dfY0uy0YuUDvqS8+3uNh+7XnaQKh5on7
1O94zu4aonPZN4egNotgj89VPS2A2qUh2BbmOmlrcQphaocxAb/bHVRadAlNizPMbGkk5a1L
hkeUBe2KvNDgT+OQnKUxGaD3Y0DMfTfLuIMFZHasBtqszGXgZOxAz5qxxP4Fi4fWSc4eyvEZ
5Qmoi6uRgzOAmIxGvQQ7jOKmvZ10VThte2c5ZootjUbkDPyUQqdYnauJ4T1MSwhZ+BC+ycCV
jpvTFQ3MgRUAnBpnEgBMM/r5xLeFyACrItqZghM4t2VYOP1UbbVpTAPZ1KQSHpr1H0UB7pEE
NDijxGH0VZnGhWZxTKckbhyKckHigt6OvmHd9vFTVT2N9B/TGF3OlXvXcw+UxydmLAKHqbX/
dZWyBl+2sS1GPH1aVftAJ1b5ARziqvx2PGlvUBIqs9hl5egKrGUpCcR1EAoZFcfaCaKuwNzw
kJzAUqQkw0IQ5gjNuAJkJUTjLZm0q56Iiim1jCrAMJWp4M4TBwI0xei8uryULLGmVu6MBQGf
Ci1A6ECpSR3wIJ5bz41fqUt/VsC0vNO2o6QRhKQMg3ZH4Hx2qJYf5yl4ZIZcPY2iVIr/ejRU
jO292e5N7PcAU5mYo5sjtUEIGCxwM2BFugptuv4gxjyK0HUZfduM7D+dblC1axgjf4ssm90L
iOk7wpbAql8VJGYPA21l1fLXh82f21O1wSLHb4/VC+yt2p2GHNKqpJdlUnrLhv0BygaMmk/t
9GDDk3uBKifqaywzZOxko0hh/dMU8/dBQEU/KAEnQ7UGSJaWfl2nNwdisDAMUyEekT3UvB+j
aGhOpRPBMze8HgZbH6JeBlnhoyIN1OWnec4hPE3/oEFPQ7QVffX+DKKHYYSGTroy8lrrObKB
oOIki+6bCkNveJGgZq/7Kvp7wHisBA9MB8s1p0tiRgOazkoY9tODZZr0X1BYO9rr4Ogg1jOi
eXIxxJKkN7BmMrax1BBuTcFawxzaQmJazYnGiuUPSLT9YQ9927ckIKKYccBbDXyDJaBtSJLB
+cCagT2lIBGYjiRbBbNpfyxK5rgPisllEtwVLHdPp+whdkY0XTIOojol849oeRwa9C5GCxog
wRso9Fys1MTglVhy1SXQGyQ427+g0O5C/g8o7LK71gPO2rtJAbej8WdogNlSQxB4WMRwxVHZ
YD0Fhc0xPl0xiWpANcGgWPdoBI8k4oCEL9M+SXuP1QwqQWzJW8dyK4H3VvbPSOw53jayducG
MUl6ST3gAdOdY21+zbXWdJGTBHSnWVyOMRODrtOS5GbVGeVQsKko4ASsaFCvokaTnvassZML
WKU6YgdL0VSWIH9W+gf9I7Nq0OeCuhuD4qE2nAFf/PZpfawevb+0e/Fy2D9t6xxGF/4AWW3N
36r2KDKdjKclsRPGb87UT8//wI630QT4+ljNM02ZqmiJBGcfG9GOFnxXGa2+EhI0JnCSz82y
uo+sNR/nEE8JBjJzV1i9fk253BdTJzBm/hCOscQ0Z/L+DVQpx1bY1xCg8++qvKlmDB0EaH2Z
24MvfdkfDkBlcndmLJ2SjESPCZjOzUhsQ3WzJgRPQX6f1bJtzTQgKKM69hh4dNn6cNriaXvy
+0tluG5tcNF69+YsBPy3tKNxl1bZyk3R3F4RGSFMd5USuLJOBHitzIVISOAEi5ALC9ExSUCs
wsRcuQLOxScsheWLwn9rB9g4lTNRrj5eu+cpYBBQA9Q9WaNWwsS1fAQ3cZPRMsB+wHUIi/Jz
jO+GKc4cXuOjkzwh7i3R6EcrwGbX649vjm/cHGOGJs/TE0lLSQxqHijvyZ0y6ozbYBW36iZX
3jVnGTIO7zGuEzfYF2Inug3k/N5X99toKdAIP3LnAO35WgEW6bgbH2RDX1ORQShSpLYKtKsj
RIJtD8o8Wd4ObVWSML70HYgU/QZw42KSZejkkDDM0U1XOVYjSNXdWQ2v6Ldq83paf3quVDe/
pwrqJ4NrPkujRKLXMbCpLhQ81MFed/00mQhy5uzmrPHY2WVOkdPa62/5fG6taiNJ9WV/+O4l
6936c/XFGZ++mchqclgJSQtiB6ZtAkvjXJUd/bI9GpxISEv9ntlU1g63gH/QlernxXRcSIQs
p6bZVCc9xwQLNnY4BEiP0+xvxmUWF/0oYkAD8S834yKRxeAoZVJfv6zAwpd57D33SkU+OUXB
tXxmUOt5v58AvSyUylL2y9RzYfCuqU8o3oBmVu/cXo5urtsMilntnRuvBhAdpQGB22oKPIQQ
/Rb9wO6Qq6EPfTIFUPvGqwThebM2+Akn7C6ZnH2p12H34xc+Xrp7/N6Y4fI/fmHmaiU/+0Ld
/PcDstt3/3s8Pb7rL+Ah4zzuhvILd6XKSTyJwME/u9IesfJUzVydgwrX+GX9/LzfvLOpmlFM
2VVvGo+wdEtOzq+uXYmxPQ0bFBubsKBO6ej2gDpD1c2tsjzq2g1jYrgTeCVwYPPDhCLrfUTT
RT6S6oCWWGHFeWXabSOl59Nz2Of2B2tb88Pq63Zj1pdM4ixgJnfg0Z21DgIIB905yu2mHtvj
w8JQoWO4GY2zM0U08PxlkvW/E2n0oYRYm8S97xfMjxTU8BEDc42+n/oQabDMaHv48vf6UHnP
+/WjKgY22mkJ4RF2nRsKqwGpUwa3ozDtqyo8NLMZpYDuLZU309t1DWqg20DBPICOsrnXLoO3
LBs12wpNf48NrQqUMboybHojh3APlmdw56CqmSNnC3N3NZQucmoVEzQcZb9+pdTmzl1KuIMA
Yl7gJ2n1benG0S9n1MC/cXNVuqmQXKV+DdOKvR+FcTFzOrWutn4u2UUwgAkz2drCkiFwOR6A
0GUcTpLfuSYpycLMToYJ1spA0pQYRhbPARVB0Enbxmg74TC8lG1t5VHpA0MRQABSB+fYrVjG
ieU/ynFJMte3bgqzstRHwleSuiudMyZYzOChjDOXzbvD7h3qM6PLTrAkQ22b1OfWXRJsbVGn
6Up+zFifvgYNP0+wKkUNX1p5Ss2CBj6BD5szM0OggImcuxGC5VGH6RJPiCv8VY1yh8TSZc9C
aYhmXUhrnzDIkWeuBmDhssP7vpnRi5SjLK20OgC15XOi5tz/wwKE9ylJmLWqJvSxYJa8c0zS
YtcIyLXlt2sEjxf2rDquurcnBvlvXIWAz2hO076FTbD5r7FyGP7WXYKd9dCgsx8AgUYbmJIU
wgZPtM1njTUGaNmPvBRQfZUA4ZqrzUARzJaJ6eooWER8UGSiDw0Go+sSuFOirYXqGG173Awv
v6ApuI6ijJmYxIvRhVm8Cq8urlZlmHGLbQYYlaUreWpQWKoTrEly3/9mFHZ6M7kQl6OxayiI
7OJSmMEpaL2YiyLH3tUcv2UyGKW0SMAZKEbz2wAFxpguN0soJAvFzcfRBYmNEZiIL25Go0kf
cmF0cDY8k4CxWjsbhD8bf/jggKsZb0bGlxuzJLieXBlKLxTj64/GM15D2GNJg2xSf+djhcc5
cbWqr7B1HDRMGNmNLKiF4Z85vQdPxKXUg4v6luj8BAUjmhjNls0RKDgczoXREN4BrwZAbDUJ
rO9La0RCVtcfP1y5miY1wc0kWF0PxruZrFaXQzALIWy7mWVUrAY4Sscj9VlEl9Gwd6e/Fa6+
rY8e2x1Ph9cv6qOG45/gVT16p8N6d0Q673m7q7xHuEzbF/yv2bD1/3jbdQ/tS2NhtHfS3UWs
6xF0kzNXZoQGM6vlC7M8ZS7F6szp4weAdm/sQjVEOzWMpU+soIKFZp9R2DYGZs/V+ljBKBCN
7DeKQ+r3ULzfPlb49/fD8YR5Je/P6vnl/Xb3tPf2Ow8G0N1shtYCGOaoM8v7aAsNgBSAdWwQ
UdPQWhw841AumHkKxuCAsJiEL+CHsRAtBtJ1DEiAX7vqmoPOksKmNn9uX4CqEcD3n14/P22/
mdtsJs1AC2DvZ/M2Fmxq1g8vp6rmJNzYZU5YqNpyDT2HVPaTXYBTkN6i1bT1fN7p+0vl/QKS
/Ne/vNP6pfqXF4S/wX361Qz/mg0IlzsTzHKNNFuFG5il5Vromd/HoBbb2gVX9QAJAtX6Y9US
FTzm02nvc28FFwFJS4Ifbw3cAMUJ2VzqY4/5ypMfshuEUrTw3lQE77cPP84tXuSZ8W7zFXRv
Gb1tLXu/LoIpuGo3H34qEyjLoNdybhFFJGZBOHhNg1spPX9EQFhKVv7x4WJ89pSQxhfD00C4
qrG5PpTV8mt3vilYW6uwBwtnTpXmuledJ2LeDmxjxF9JYilj/TGXz7ETAfuJnP4M6f+qBzVW
psJsfXX2u9Nh/4zlDO/v7elPGGL3m4gibwfK8mvlbfH7uqf1xmhiVkOQWcBMTdHMiGCWrKyV
IiygC/eHygq7wnDatQFEqs7s3g4gKOtBphQre30O4U6cIY9LRWgHt9fBJgOw9L0UPMKwRG/G
2gjLbD0Xc55hyqUe2Fiwn3UwraEppd54cnPp/RJtD9US/v46VLYRy+mS2Y5/A8NBL5xy9ubY
bSBLAojKOfYHqwSIoU2WLA0jYp4yuPvWQ5n5ZtdnA2nviN7i7uX1dNaOsNT6DUbqERw5sylE
w6IIw7jYivk0Rldb5nYGVWESgqXTGqMWUxyrwzP+Ao1Wvo+9tYBRKwS1unNtOJw2KVZnsSKA
eDYtV7fj0cXl2zT3tx/+j7Eva44byRn8K3r6YiY2ZptH8ajdmAdeVUWLl5msKsovDLWt7nZ8
suWV7Z3u/fULZPLIA1nqB1sSACJvJIBEIsNYJXnXPhBFFxcSaHSy4YTdtAf+CWjkaau5WM0a
qr4WjHjqmEd8InCm60HAk66riqE9k7HvgiTN6mAfScq9AGcPSZeYDIsKNkrNFNRILmwcx4RS
yQRev5wwt+ChSTowf5jF0NSpQKtVFLNl4BjeFCBrJ0h4gCHtCJgJsLfE3LCPkHKEKmBx3NVx
6IxT28AI69gkj9ydMV8FVPVDKhimqr0zri/BUO6ufXoeBjIQYKbjBnUGHYZN0ktI68SVDdp5
PvujMwm+Ogqat9+5WK5on1YrQMO4wy6c9pab0AtdmXHKlZEmLcYoCvc+mBc40AQ63nsB3cl1
ncQ7s0044aYUTEDZqyqh8gIzV9A43hyzsVmXYTDz3xiCknvCh8IzmWAENthcM8GNKXk/Du/2
9g7FKP5aJMFSEA9FUpXNPVH72nXs/PriiNdq2t4yBH0xnLem69ihY2HgubFCoU/gsfNgoXQF
lTdjZnOtdo7v3ChnJrAM0Jn/sPdZUtV4Kmfj3mWHwAl9H++aE7g4iHbECrjW8zSzlwsklhrz
6da3mJwL7Zs2v8EmTyIvdubxMbbiPNk7gbcuEb2WMHPt8zUfK5+SUxxMCyqBUvwYAlXW0MNq
YqsZ8Z554Z7WSFeK0AtJs36ewQkma9RLnMFUPcEKhw0tn1gFv6VJb9Yq7y8eyu+5V+2dj3Rh
IPU+xSiMKEYaJTfC+PqFobIWyDIvWiSroXYNKE9dXR72dbkzvNQcaNu7ORIGkbr1xlF1qrE/
yJ7TBcI1kVaDe/ns2dLpXdeAeDrEdwzIzmjVwbckYuLIQHE6co3s9Pj6iZ+hlr+0d7phrzaB
OGHQKPifUxk7O08HgqUPepsO7ZOrYqdy4OzIHTumq3oa4ewJpPVBQQI4PI7Qy4WmTER1km6u
pFZQW+HN/o5R8kJQsHOzKyfyYy7P6Dqetf47JnWh5XWYIVPDgiAm4JXi3qVGczXAKMtHaOV/
PL4+fgQLRDoqWRsxDNSCFHq2CIuWD5hLWIWTyB3Va1A00/ldSB3O00/woAZFhGw4Nuj5lWQa
kdyNn+b2ByXykKNZaXBlrKTtcY7lCVPz1loeF1Pt4aCVcw+6eFrLRy2sw6gxhHMCgdwOs7qs
Rmkm4ynfg+CSDjKTrdz0RvNP1/naBgESGRLKVjmL3LBpsvNdCqHHwW6Ysh6nvjmqRy8rlg21
T62AjaIumHIHbUMM9zTPYnxoWmp72kiwkymeqHEO6t2fFZdlQ696RjfcWHYnEDm2oB7oTRLF
L53Qcjm5zq4OMrQJ+hPTCOp5LoYM/nU1XUdAUF4l/ASTTGtuJQ6VGS2E2hZo4GH/nLKevOUu
k3Dbi+KPyBIgTUGaDTJZc760mv6MaM7a8ukFegFd+eOD0ViYi77/oZOP8XSMqjcZWEXFg92q
elBk4ALR7v2aUlaeBmLo+jMbuLNaBEQZuzUqLabTSlHyPEz3kvQ55spWwXpoO4fxlF4XFVhz
h5I4QP/5/OPzt+enP6HaWHj2x+dvVCIaPtR9KjY7YFpVRXOkfKkzf8P5scHh/xvfVUO2852Q
+hQU+n2wc2nJrtD8eaMAsPqM3pjqasy6KpeH82bPqAXPsW8YoGUpGJTK83ZOBtyS599fXj//
+OPLd2WcQeU5tiKQWe16AIM5ZuEusIlce62MtdxVgcDoIMs4n8oxOOUePTl5Kty7XzG2SPj9
7v7x5eX7j+e/7p6+/Pr06dPTp7tfZqp/vXz9F54H/lNvImp16hiIXVCDDXvXhGDGOgwIxVyZ
IDSbQQ5R4kTjWGrc06z2Yj/QOzVFnzseB1q6FfH3baMz67OaDam2zFAcUFM+Ty5lYwlA5fgC
k1jyOE/qqEmmLI9l1laybYHgoi4ungbi+6bRXKyehTem4q5ARGm3VDhGTxItIcuaVKI4BlZy
Zwiusu38cVRh7z7sothRYfdF3VXadAAV3bvXVq6qUnBQlxmiYwiD0Spyhij0tGlWX8LdOI4G
n5E0lXH/Eqqe/kGLe7Htm1Y9QEDIVZvJsKSJsy+OqWEOdnp5XTNah6obSR8DYER4UVaqJXDo
sWg0cF+W2pD29742oMzPvJ16G5KDwbYE0Uamm+H4sh4KjTnr+tzgQzq7OAJU0MNO48CBkQY8
NyHo+d61NJg/NO/PoGSTHinA84DSKe1qbezODSiOSopXGTodVDgefCVDqebWQcS1tjjsASes
Zku9xspYuWPV7Uf7hOizxFQ/ij9Bffn6+Iyi/hfYs0DKP356/MZ1Gj3UXsikFo9Jzvo6z6tG
k0lZ54WuIZL6Nm2Hw/nDh6nVTDa5zzHxuzgFkfuw7PBYOuEThFe+/fGH2Krnmkt7lFrrbbOX
K9i3bCqgtHOjZFBB3GG2MaW9ldxHlTlWJXLI5wqaQ7coDAa6YsCr1pc84lxV6zc4bv0UfIkW
lqpM6C4+tfWpgVqdGYMAoDphg7pZcKhqHomoEjAz6sfvOIW2IADz4gYPL9EUgw2mNV9C5IdK
g/d74ddVapYMp2hPrgXxTZ3kyeRHZJ4u8X1d6AWhMnJmiezNWUknkCK50ZHJKOJoQHUWV0WV
WsxaiqUGM1Y5C57hobKnSsDpxLRztRk5vacdoBxdDmmiRQ4BOAN7hc7SJ2HpZmdVxyLXHfVZ
tWg+elH5FcO2LCUBUr19MAPTwaVgIKJ67bJkqYknPiLd3h+NWXNgtk7imZo6o6UIJruA+7/v
z01XmD0rApQOINJ8Uk1BmmbspkNVjAZjXedEGKhl8PNgq7uIm5EA78zVVXVxvHMxlZ7ZQCVH
wgLM5CRfC5Dsn5yYkggv7FOS63n4W5bpX66oA+3t5zQ2BVAgZwVQ++R+augs1zgaHY/MOauN
49COaB1skUP5HgO+rVVsxTZnKQ91RW+nL/Kh5MtYBSIpJhy818C9dg0fgdCfvsX9vmAn9p5W
/znFmHjWfgWz6l59volDu6w86PXo7SP//qwxkPVShQlonai1W/iwzI1LFjraskedlJWtUSNG
RZHMH5yIEQblxZbulKO7nr6XuiCnJLd3s821uuKIacAGnG47o554imFjhUqxxmXRhrXNfyw1
scDVYs91uPAjUK67oz5wQOxVIhO6Us0Vi6f6luqaGjdCR8zEq4G43qwXAdqxhfE4FA1L4Meh
Oyb6Zx+gR25tnoivu+lojkhSr4oqV4kk7xKV9xm7WfWTrZ92ry8/Xj6+PM9qlaZEwT/F38f7
sypCb3SM2YBap22b1S9BzVcDJQY1VJHVPMwFXYPk/D2RO2inPlkEf5rX2ERwfcfuPj5/FrcO
dLcofpZVPGff/eI/V3jOSN3vsXKen518eZWZC+zQQbkvH/9bRxRfebKI7vSAb+VhZF9TDPjQ
IeYi4F58NiQ1Zsu4+/Fyh5cCwCgBG+oTT0gChhXn+v1/KhlxjcKkZpRNNvSUExxbpezEM4Bf
CcLLWfPrh1Ji+vawqAvaJ2X/fhbV0mEHWhEWlxF3Ai/R1jIsU6beCpourgY13usSQSHa7VUO
xDgp39kc1uIi+ZfHb9+ePt3xChJZmPmXEewHXFm0NUE3OARQc0VKwImZ/SdMC7nrRFPgi7To
+wdULkc6baoI15qdjLY6In48MuGoNIqZnZG2j2e13Phs0cjt1cqv2gVZFV2UmbGrKfha66XD
gD8c16EnAuHnEuie6HFUmI0mnaqrtTZlq0+qqj2W2UWff1UHaoJqBixwn9Z0xAxN45BFoz5v
i+aD60U6tOMxgUYRQg21ljCaQ0+7I0UwAorkZYiMDzVXoDZvNbeQgsv1tcKSOglyD8RUm551
HNeJdOCQ9AieLqXZItDErH3MGhToytmNgHe9vlZB/E3jVb5bu8irTPYWcyDXNIyKCJ0lDm2V
GdgudvSZLCkkKrdLiQUPtILHKfi9hIm8vSbwiwqjACt9UoOKMR2yk+z3uSEt1yMdDn368xvs
ZpQUTfIuCOLYXvskbyhdSqzf66R42iSJrvcfh3rGKhJQ9bK1mMZ40ufr9DPURh/ppYoYR53L
AMaPF6s+7GXk93pOeMnFpnWl2LAO+d/qYo9ONS8I+vLDjT1CxEFqbVCdHBy0Hqvo4s3f73wb
86qLI5+SiXEUhIG9ziLy1LqeKy/OqMoMmR/Ee6scWKJuze8QsXcpB56M17tkeF+PcWhyE0G3
9tZd69gP6IlADPiqu78xEUBjcUM64dKyGnx379p3Ir6yXKM5deb7cXyjOV3JWkbnshHCBuQh
dAjZXqJd4vILCDSjvapglFz4KzviM87u8vn1x0/QoDWVT1kmxyPsEBjRrUuRNrs/K5nfSG7L
NzzjCS/U/dd/Ps9O/s3aWrvm6s6O8ClnHggGsv9Uoph2uGxEsNW/yca90sFGG41Fcd8I2FE5
0iDaKbefPT/+3ye96fOhxamw3I5cSZh2LqDjsV8c6X69ilCWuoaaMDO5npeUInV9G/vQyt6j
RKJMETuB9WOfEkQqhWupku/bufqgA1FnNipVTHMO5CQNMkI5f1cRlkrGhbOzYdyImFnzDJIs
W/4kA+ZMIZ9h4FjMX1mpL3hLcCr1DUXGs5FQZeSJIFTE5WyPJHk2pckAS+WBLGG5nsMZUAPC
9weTP88cZftoLnC9YbX1MIZxHTHECDQFJ5QGZfkkyYZ4vwsSE8Nv8MhVWBFXz3Gp46aFACdA
6Jgc9RmjwIm6cbhnwqviCJbixTcxTM7ps7RdAKURaJIZTI7Qwit9j5cKqC1zrR+oTz7VHk2t
kuDiQtla1jo8/L7PjaIEwcZyuSCkTxOEx/F0OBfVdEzOZKTdwhOmohs5O6IBM4ZoAsd48pHc
glmuG9WwAswxkGam0fjlKtGNqvZj4JpMlxmqgUvWYe1NBF978p2MBTHXnaocqqteRFRNJohj
k6fqf9iqwCcfWdLghwFlyW8E2c4NvYpsmLsLosjE5MVQZHhTjZOEQUh+zO8Tmhh+ZsLqNDVR
sDh2bkAIGo7YOzTCC4gqIiLyAxIRiDKMvkJUvKe2SpliH5NDiqjQEuGyyow69XfRTRJuGDg3
KzEbHRElRfnqxDH19jtq1Fe6tsoPpXrWsfDvBxDdtCm1NiTzIp/iv4mI+fqUOQDnjLmOfPS1
9mC+3+8D+S32JhhCvNI4yyNjk0EZF8imu5bqi/8Jin2ug+YoFuFlFlnHROYHwnm7ZpbKocnU
670SwU45WZLhMQWvXUeO9lMRijanoihXkEqxt3D1LcW5UWQpbg9a6c3ihmhUXRMyyidNYJli
Z/9451JTTKEIPevHEW0AqTT0NF9pTsPt+jOfzEHGMjWMc0WM5XRIGv7oSy/n292+VL39K3wY
O5dqKcaUdBfLm9szTQb/JSVubD2Z2EUj69jZrAC/NDIUdUdVImehd6ubMOEa1R3zhVlla19w
mNdiDEz4IQr8KGBUNY6MjB9bsFXgxnIabgnhOSQC1M2ELAhG91ZJ/IRBfrR6wZzKU+j65Hwv
0zoh7VKJoCtG8lM8b7BYFQvNu0y9IymgIFh716Py7mEqf1ApCESbnUDZSHoCxXcdYswEIrIi
9JRrOtpywC1T7ak2cATRbK7yBMSERITn0i3YeZ6FlWdp884L6VoBgigcdSnXtSA8ovcQHjoh
UTjHuMQewBFhTHU2ovaUSioR+KClE50gMD7RWMw9SC59jvDpGobhjpTqHKV7OSmav9EMar7U
Wec7HilmhywMbm39oJJ5fhyS39ZFc/DctM7eXKR1H4Eo8ikmICPpaKJlVtWhT8y1mtqeAErT
UtO4phUDgNNnMBtBfGtLADTZToCTIacbmhIjNbn8a3Lt13tLwfvA82+NMafYUVKDI4jOa4ZM
OCRLpjiBV3w2RLFDzvX5DseN6jQs8SnJ3WbZ1MXqLT0JR2wCeOa0V6ZuV9OJn9dPrvW8wRkV
lyMN3prv0qmLjkkHJXfiAgZ9jFSLAeHRN/EkCp+6hyfhM2JsizrDkwYS4bn0WgVUiM6sW6XV
LNtFtUvNUDYMLApIUcLqOgxvrQ8QE64X5zFtbrAo9myIiFJXoSExLRDLJvEcSwi7RGKxhyUS
3yPjDDbBGxEW1XCqMyop8FB3Lr2eOIbyBSkEROcAfOcQfYNwamMDeOAS8+Ua+1HkH6m6ISp2
qXARmWLvEuuEI7zcxnXv3+x+TnJrOgFBFcWBks5TQYUN3SLjONIY+KGoJrBHp3VflPlwoWnJ
234jXwJjKai0jJXaO+GMjGVIM3wUjCBPtcdztpvJv/38+pE/5TWntTDO/epDbqR/QdjiD6ed
90AgEnocO1jARFU5C7A1Ze1wgckKmQh+FMf3GmUyeHHkaDdXOEa+OKJWml8dwTj/rKXP1Daq
U5XZay4SjMupJBDME+A5avARh+f7IHLr68XGTnNabzDdjuCjMV+k0jLNKzQ1Xn4nE+fxPi4z
X+ti7qIfCWDg6eXPNi5twkgERNU5hnZQLOiQPr9d0ZTEm5FKEjoOUyI0EIJhQPepv1ctVo7h
d3qnqkvI11OQ5JgMBYaicrtc/x52VR9z0TFL1geZxpr1EGk6L/TobYijR6hjb19T9egF08AU
BwTCTyWYIC4fVgMRBKOGAM1h6pZpspaPUKh6V9Gx9siNZ9uidDxEmtExCOUnHnrIj4GnZPqK
DfXFI/n5tWWBLnxLINBGYLHINgIycm1Dq/r4Co939OY1E8R7h7LyVqzqPl3BpGm4YWPjoyH0
wxsNBLSd5WL4bd1dfOA5ITp1ADITpAWjSJhmGAvbfMYUgSqf5RRMklVLij0x6zedf4FbgjU4
t3qOFpV3Lp6kqC6NNd4PgePbx7DPgiGIb+DvYye2tVMcDOglsiLjG5x9ly13UTi+QTMbJZai
WR2oEU0r8FbHsfuHGNaYsTvMKeaw+4gvk3QMHIdUKBjomdQp7KxL4H3yXs5FxOFLyKnCacDL
IL4PUm1gmV1Uiqg8leF6SKkzrOqzhQ2/EHYGPW3O7C1PLh6ht8HwmMt15NNAcTYmB20LSGTo
EAJuFTzLIZtaAelcTWvOEnNoggPZ/SYxMXsF4XFok/ZLvCDBTIkSlKGqja9glPs+Mwa2Dfn0
ZzlZNzXCBZOcc/U2JyBCZ+fcXj/XyvUi36CRp03tB742leY4Sw24REPKH5v+Z66liZBUEmj2
04Iwuilju6iSUzXxFtWBZlUuUNe+M4AJpG02Jtom3gC5cwydC40q97Y6NJPYlU1hmOnN47FB
hALKK0m5xIQEuu5iVxuxvj3VoMBH+r0FGQfaLu06VBl4VuEvSMBIGGv55cBZLPoeLEwtgdmG
4gimY3guT4P8YDThmuV4nf+GLZTxVKaWVNqo1Z2SHB85zrR9ej3LntTXhHoesdjdWk6KLf1v
Odr+lsm6cFizDiulrqmIjaA2g+JQjgXoK201KOdFGwHm8DsnFX8b5KwMy0aDmSn5O843qUB9
PYIIpWs667aUMrYRoR0ehwHNIckDn1yTEkkDPzqqbrOBTaI0y13FeJ6lNkbwFkG02NBvkYkV
ebNpxIrakJqGKiGEeW2ZPNy0faNuaIqSLkCFxFOjBDTc7c8PSRP4QRBQ9ee4OCbHTY21ktJz
c+uQro7AXQIy4FYhC2TNxmAQOpb2lqwCe5wy8BSa0IvchOJP7J8SEpS8iJypHOPRmDjyLGtS
KE5vTACuRt1u0KZpWb6Pby/bSqgXZPUBFUYhhTLj31RcENs+42YzXVvKZqaI4nBH1pejQjtz
i12s0XiWvuTIN5fsbCu/TWUY/1ayPeWp0oi0ozIdS0ZFSURZ50K/21h0wc59s6pdHAe0t0kl
Ct+a83X3PtqTMTMSzRD69LbBMbYRBBx58rqRrIYW8XmXlgkdwCzRZMl+Z/H6KFTUPTyZQHdN
SLhDPDqkUO4O5w/4zKCl+heQ5eEbzUcaWuJz1J5GXWu6SB7O2nc1/WyaRsfqHGn/FikopTfb
wanQlL7oby7PBPJRrPS6Cr5xVjYP5BerX8VEDbvYIWdjP9QXm7RjXt0l5EmoSsPoic6COo5C
UgCLCFRLqbO35Xax1RHMOnqSCVshbds5rZiF4NIXh5RWmARBd7V8vRgcVOWFXTVdajJBt0QI
jXRCcpMHVOztSP2Co6KGLnvoWOCGZHoXhUjzy6g4zw/JThVOF8+3Fs09OW8WPfttbCxcSw4h
jcxzb++SlBtHx1oMQY2MvgRqEFn2pcVvc5uFedFAMq3mi+Bv1PWiJ/YgaKzHugrJjl5TXFxV
SVrKgf99pvmfAFCr94Oqkrxi1mfL+0HycwD91BQZ8bBQj+5mCzyU4GupgHl3WTkR5QMBa5sH
kidLmofWwhUfm+8ovjJRneHBW367+LHuyNJLEeBOFd5ndX2DKe/Ti/rcc59Jjykp5RSN+vec
p1krsqRDgJZ6ihc5lJbrL4wB5VBMWWntrQN6QMgnjXojJ28/5/eXJoyZ7R17qsj7ZKCUUhzD
oS+S+oM6TwF+LZu0bfJbdS2Pbd9V5yP9ODAnOCdKjmdY3gNQl9q0Va4u8d486n8bnYuw09UY
oCMuGmuFAQ0r4RYa18FNPE552xw4itVi1j0LiIrCaqVlVLa+O2mricg0YxmZXk/kqyzZczNS
qhiijPf/VuA09EnD6hLvqlg+1sZ0SJqj4m+HWo1pO075hXy0EL5oJTUuK3RhipCmHcqDkpis
LvIy4bhe9fiucLyp2vbURVhBM+PNj2cEPhM6WKTbQpjm/YWnqGdFVWRKWXNipU+fHxenJT6E
LEfZiJomNX+Ye62MgoVFVLXHabjYCDCB+YDDZKXok5w/tUMiWd7bUEvyIBueX7qV+3DNjmI0
WeqKjy+vT1RutkuZF60e3qJ2VMtvmyhP5OSXdDtXVMpXylHKX9PlvnxDj7I5IGs5yJ7ibHDg
/PPPv3/+8fh8N1xMzlhPMO+nJE+6Afd6N5RRc164qS6bVn3zmWMLfEyBwfQqYaupWobXF+gr
2kh+rgrqEvfcBqKW8kQ1742JTkEDzb6eLrtqmy7GG7RiaLesWVJdiY/WgnFq6niibGTDp6JR
LmKg7AGTp/EWLS/o3v1jfVb3n3eJSMWtDRa+zCu+NIHre7f6lJdzAAnQ49ePn5+fH1//knpW
QuMJl1l+NuYeGPAiY2B/MQtSPtMW5bnh60OM4M/vP16+fP5/TzjaP35+VWP8NnrMEt9VhbHA
OW7IEzf2lNM2FRt7+1tIOQ2QyVd202rYfSwHySvIIgmi0PYlR1q+rAdPD9XTsKTXxSDyrey9
MLTiXN9S5/eD66gnAzJ2zDyHPkZUiALFC6DidlZcPVbwoXoTzcRH9l10Jst2OzDxfCubZPRc
MubbnBOy50bGHjLHcV1bCRxLPnGsE1krORf/FpM6jnsWQo8SqsPM6JzsHdJfpK46zw0sE7Uc
9q5vWTl97NmLhvHyHbe3vJwuz7nazV3ojt1bzeWEKTRXeTOPki2y0Pn+dAci8+7wCrslfLIJ
PjzN/f7j8eunx9dPd//4/vjj6fn584+nf979JpFKQpcNqRPv96okBmDoylNaAC/O3vmTAKpr
awaHruv8ad1FBQF9GYPv5rAuyKNIjozjnPniXgXV6o883+n/uAMB/vr0/cfr58dna/vzfrzX
a7/IzszL6bBM3oLSsuJ4DZs43sknYRtwrTSA/sX+zhBlo7dzzT7mYDLfDy9s8FVvEQI/VDCq
Pm0cbXjq8WHe4uDk7jxiVnhqeNcygxzyZYL1I3PS8TlDTToNiBufo94MW4bNocO5lq889fId
V2EK5o7kwRL/aBYXueoE3lBicKi6QGG2CQwCLNROJ7aBttVfYCO1EmISmOsPJqd1+QwMNjyt
MbCejAZiitDEDelujlzDGMMJPdz94++sOtbFShjEChuN5nkR2VEApiTrOk99Y/LDSrev5irc
RbFdHIk272w92oxD6JjVhDVoOSVdFpsf2CZeXqY4IvK7vjI4M8ARgkloZ0D3RGXnJtLntUiQ
HPawuVvRRebeXO9+aExd0MM9Rzc3EbpzdSu0Hyov9h0KqElZLpdjFfYhd2HXRkuvzYni+DHf
OoWzeQOxTl6UGLG+gET3yXe9JKghHoQAjIwllAwMim/AqP7jLvny9Pr54+PXX+7B1n78ejds
6+qXjO9wYCyplVTKgEnpOWRiJ8S2feB6rlZdBLrmykmz2g/IAwq+dI754PtqeiUJbtsiZ7R8
NCXAMHymPMMlbblJyOfmOQ48b4IOuSUT9OaCkhHyu5UirSzLb8svtUZ7y1XSeYnF9t2Py1XP
YUrBqibwX2/XRp5lGUZQUdrGzl9zkC+eCYnh3cvX579m7fKXrqr0NgLILhH57gcNha3A1lCJ
Zr8uMVZki49neXP07reXV6EOGbqZvx8f3mkzpElPamTKCrVPEEB3ZPzYitS6D6Ojdo5RDAdb
GQmssdrRhrfJ+erI4mMV6IsAgKO2FyZDCoqvTwnuMAyoW8u8SqMXOMHF2JrQyPLscxSFvRx0
gbBT25+Zr63XhGXt4BU6/1NRFU1hyLfs5cuXl693Jczi198ePz7d/aNoAsfz3H/Kfj/jwuQi
qZ393pAMnbbDqgaUYSfxagwvL8/f8bEDmIBPzy/f7r4+/cdqIJzr+mE6ED5Q0/vEmR9fH7/9
8fkj8fgDPjBZdueLr3ngczmFPPwx1SX6ptKSgqpp5BGedyD/xuXVXHoJIBnPZlVT2WM2NCuq
A7r71JLvaza/F2vCDymJEuygajUbpqHt2qo9Pkx9IT+/gHSHFN9aKGo8/y3lQ7gN2V6KPqmq
Nvs37KUmuioS/pIF4zlbVQb4YvEExnaOzsV6frdL7bpMfr8RYceinvDSr63BNhx+x05QBRLL
slOxPqaCkd9PXz++fEIn9+vdH0/P3+A3fHZWnnzwlXgNGZS4UOUm3p6s3HBnwvHZLfTv7ePx
BnLOBSnlAbdVSCgmfb2+EK3U8JRXWa6Ww0HQFe11OuPzrP250adsnVQwlUvWVQl9KMg7u62L
PCFXt1wddXzSha1ap8tRnxoXGEu9WtbH2xFpPg61QOZjpHKE+SSzXPFZ3gCKOktfKPIrdJv6
WI2MW5b+LRZl07R2Jv096Fohx1s7/JxTj7bwtmdJL9VRx1SXXFvWGM6PqfS7swrvEvFQ5ayS
fP/2/PjXXff49elZ1bAW0ilJh+nBAfVydMKIun0tkWK50iulJgE7s+mD44BAqoMumBqwz4J9
SJGmbTGdSgxh9aJ9bqMYLq7jXs/11FQkFxixKaspjNljAq4fFWyYoirzZLrP/WBwlZ15pTgU
5Vg20z3UCbYaL03UMFaF8CFpjtPhAXQ3b5eXXpj4jsU4Xr8qq3Io7uHH3vdI09ukLPdx7GZ0
JXC6Vvj4uRPtP2S3R/ZdXk7VAJWtCyfQbdeVar41MzCHDD+SCMvmOEsJ6FBnH+XOjmYJe0uO
TamGe2B68t1deL3JWvoAKnrKwVDck+Oc1OwMQ1Dle5EFlyoc0KnjB+9pT4dCd9wFkU+zwVin
porBtD9V5B0IibS9JFh7vjAUVxxFEoaRl7xBs3dccmXU+LwgPmGfHJwguhZqJpuNrq3Kuhgn
3FDg1+YME5y6PSt90JcM886epnbAO/D7xMKY5fgP1srgBXE0Bf5ARzRvn8D/CWubMpsul9F1
Do6/a2gFev3EElxLV6lPHvIShElfh5G7vz1SEm3sOeRI9W2TtlOfwrLJfZJimYQszN0wf4Ok
8E+J9wZJ6L9zRscyDxW6+na/SbRxnDgT/LkLvOIgxxbT1Elyux3tAbjQJEV53047/3o5uEeS
gAflVe9hzvQuGy11EUTM8aNLlF/fINr5g1sVFqJygCGERcKGKPo7JOSmoJDE+4tlbDBIMcnG
nbdL7ilFxSQNwiC5J/e2IW+noYJpd2Un3yLbhg5ocseLB1irFkeKTrzz66FIbq8LTtodXVp4
Df25epi3/Wi6vh+PpPy6lAxMkXbE1bVXzylWGhBE+C7uNHadEwSZF3myPq1pNvLnaV/mR3KH
XzGKcrTZyunr50+/6/o3qJaMMgpR6WubYiqzJqSvvgkqmBx4MRSNDF2rWLZIADU8kbduW4EI
BxFUDfHe9VIbch+67i3ceTQUBFSOJgw/pUJ6uflQHBNsIKZBy7sR878ciymNAwds68NV59dc
q1saNCcBu6gbGn8XEhO2T/Ji6lgcehZvvkpFZkLmNmCJ67GMtWtfAlXuHTLLy4L1fENHEcri
PG8snw6nssEHT7LQh251HU+zGIeWnco0EVfro9C7ib39bXQTG+u1V/ER6SdGMtg5D52W/3lG
sCYMYEzpI7/52y53PeaoF6EQt9psSTOG/s5WvEwWxaNmUquGn+2z0AtULFriSX6JAn1pSIjZ
MaEualzs9Snv4mBnazNppc3AlacmpkwZo5Zb1raZefE146gYmuRSGtvMDKZytsnretSMIgAc
UmPk+qw7nq0r8Vi73tknr83hjSbuoRhjP4iUpDkLCo0Wz6Pzack0/o7etWSaHTkxF4q6hO3P
fz9QteiLLunIiOCFArZz5WapBI/8oDeEWGWNtkCBW5JP189b06FvdYfg/LTo8aCth6HMmTaE
x3NuyHcU39S74YoaXzQDdwlO789lf69xxRdg+6TJ23rZLw+vj1+e7n79+dtvT693ue6qOqRg
iOeYr3rjAzAe9/wgg6TfZ48h9x8qX2UHDFasqh52RQORtd0DfJUYCOjjY5GCaWxg+uIydeVY
VJjycEofBrWS7IHRxSGCLA4RdHGHti/KYzMVTV6qqVkBmbbDacYQg4ME8IP8EooZYCe69S1v
RdsxpTp5cQDrCGaSfIf+gMG8WQ37v0qMcftVeTypLUK62eOqkqMXCNsPK+NITpI/Hl8//efx
lXzOAUfm1nuzfDwpoQiIpM+UirQHdcRbLa0/wC7HRLaTAXJMC/3vCd3bOwnWXXpPG4gWlFI8
XKBtWRwGN+cJ8yxVxySMGstrDXoVtT1iDcbEVXd2nGOsAt2RFtDIj44TwLqdYDRTGDa099U+
HGo1ydAMAkMkKypqO0F2fqZ9ApD5YKIvjte+HCitCenm9F0yhGVnNdULQDWHqTI7UhB947AL
LGn4cEjn11XoOuSJlh0Hp4lIkkJ/UBdo6bW1Om/wsNmT1ZYNhmK/0EpYUHRuGhxxEIhlUw6q
qITF2bdJzk5FMeh9zpVUSz8zDMyI1NVSJ50xqxG2nFBZw+RXwuaMZ0Ps376Bgd2J194scVI2
LuUDXu4t3MH2ZYb3HLIBH3bFV4QHRrcL+VhSXCpEF1jbt9qNNELNa2vlhZuZYrdSEPUIVuTb
FWH53yCijS2FpIbt7pDdTx1/iev+3w5Jxaqi6KbkgE9AYheIB/gWkY50h1RY2vxx+2I+x8r1
U+SVKYrIHJi1XeLLFo9BsBoeVgLKulipssVwnvLLzb7YCFXVnSBYbyyRJc7HDmRmL42oOnYn
UFLBhl6czES5lLPmRsFvOmo0etU1LVsmb47qVocab7iWTHuufuZDaoV83qSPH//7+fPvf/y4
+6872G6WG1XGoT26nrMq4Wsdb71uvYSYandwwKb2Btn7xhE1A+3+eFBDSDhmuPiB856KVEK0
MEBGlRu3OOSQMwQOeevtap395Xj0dr6XUBnZEG8+Wo/QpGZ+uD8c5YPmuRmwFd4fVKcuYoQN
ZSmkxcQGnvqy46y8WTpzw4tE0LMGsBa54e+H3CPDJjcSPXfghhEJOgywnqpZxajvKS4YIkXO
huT32K9VQV3JlJq6JuEmWAAyjsn7MhqNHEi7ocwsvlIvbElVqIJFkrK3ejj0HXJ8OWpPs666
OAjotyYlEi1dqFRvtPjIHNwbDZVEdcPeSOsgdcCSio1gYEnfKtX/AiMaVR39eZqHrkMnfJTK
77Mxayg7SiqmUB6gfkOaLd+DnYF6iLTu+O1B2obSFQXYd1pSyBoRT9s3rD03yhrgsvdU5qag
PZWKowD+3J5WHfqiOQ508hwg7BPqVPZ8Up70A37zQ7mL6sC+PX3EMEisjhFzhvTJDk8S9Vol
WX+mrUKO7TR1V8WewVanjQbe4KK6L6mBR2R2wpNEtUXZqYS/dKB4o00HnpV8bggDMzup1MeK
OSm/n2SrxQOYALKujEAYgWPb4NGr7KZZYNPhoJIXGDemw0BTbmsN9uG+eNCHsE7L3pgpx4Pl
QW+OrNq+bMm3ahB9KS9JlZc6SyiaH9la2d4/UGYNYq5JpSSAFKUUV356rLXnoV8C3xTmJV7o
tbAvh0Inf5ekPf1uBGKHa9mcSMeMaGjDSlheypuYAK8y7UlNDixyHdC0l1aDtcdyXjkEFP/o
Ok2yCMyBvliH+P5cp1XRJbmnUUk0x/3OUSYWAq9glFbmfKuTY5nVMCsKHV6hHa0DHw6gthii
gCcAOZK5S/hnJWa+bA+Dxg3P3Hp9Ztfnaij5jFPhzVCqALB+i3u9JrA1om8dZjodx8NpiiGp
Hhq77OpAmODuQbcGNMeGHyZnzCi9Sh6YcNfamfcYT2VFg8Si87MIJD++V/uB+6CrsjH6goH1
QYW5zjiYDbALFEYjoISuskqJvjYkxBFjORJW2hceq5N+eNc+6HzV1VleKJWCo9qOFfqKwyO9
oyYpz7gHTh3zVfC1LOeMPEqJY9nUrbU+H4q+vdERHx5y2AH1FSLe7JlO55SEZ2c2YLo6/pdK
kVQdk1UZalfm2zVmw1E1h7XaPFd8aZ245Rp5u/BIX4Cse3358fIR7yGYDmDkeJ9SHBGzyI21
0m/w1cmUzBnoa7O0C88D+ZKnJN6GnI5tm5ejXCGdqf6RntaDosWWtqeslPz+YLcxaQejKOpa
duavFMoRgYo3MqAgcPVhKUMC28809CWdngMJzlUHtSEnr+DaNFrKXgSDxg3bUsKmkxzMrOWY
4oRNAxptVkxNcV3SYBnqbf35+8en5+fHr08vP7/zMd8ylijc8uKQgNRH/xcrLamFkO4AhXGn
a18MKLmshGqmEytZO9g7EHAgqtv8nA2VVieNKi9ZkuKQjrCbNUmlLv55tBgfLv6iN0vNUea5
fc4gyRvMY4Zh255aHS0x2LaIX77/uMu2OyM5vYSzMBodB4fV0pAR56Y+6gLaZZjRrCmY/N7E
ht38KEqJgiH0HJW6ayVQ8ott0EuRnkmGGGZt4Zf2WQ2l6Z8Vc8PsAz2ePdc5dTeJSta5bjje
6ECk8ENv7kN12sIsgSJuFoAPreIrSvYC2m2E1PrPcNQDEjqNlEo2UF5RlcTPPMXhq2CrLvM9
9UxGweMbaW+VgH5N38I/Ty5lk5UWbNdlKOnTwlr+TEEethCEJB/yNGrFivsR+odZw/gTXEjy
ZtGG95FPFGKIOYxItCTLetf3bk4uVsWuMbUUij7Gy3P76Mb8m0UA/n4yNwjeKp4gCZ0oKkr5
UtZAhCP6Lnt+/P7dpnyAutzQSeEQe821Lhzq1a3RgMb3v+54+4cWzJPi7tPTN7zYdvfy9Y5l
rLz79eePu7S6xw1sYvndl8e/lvwhj8/fX+5+fbr7+vT06enT/4ZinxROp6fnb/y65hdMAPb5
628vm8dEotP2dwHUD9JkFHpFhFUzI2cA3yC62sIvGZJDktLIAyjnwqGgTokZXbLcsxzNymTw
e2LbAxcalue9s6drgbggsFXi3bnu2Kl9q4CkSs55YmPSNoXdTyET3id9TZsqMtXs3wFplmS2
LWyhxaf/zmmopK/iCzNRpnv55fH3z19/Ny+Q8Q0gz2L1RgeHouVM24Nc5GAgHK02IkZ9NmoB
+4bgQuB0TPJjYRsCQWLhNw0lzZIODeHtGs6a+EfIUoDaBYgwK2fS5PhuSt9avI4b2U1ZWnNZ
lpNZdLlmec20iiOErDhHvFFxTkNWnM+a7vnxB0iZL3fH559Ps253x3SP8cqo1bIBrwjrhb6V
4r54gNncGLsqR/K8sNPR9Shn6Fb6wbi2teL0ecOB7xVH5wqGWRPXnYHwiKp5vOONbjs+fvr9
6ccv+c/H53+BXvwEUvrT093r0//5+fn1SVgigmQx9fAONEj7p6+YT+KTYZ5gQWCblN0Jb+Da
+8DbhtKs/ir2Td4XfL2Q2fQVTjL0SXYP4oAxsPxYe2C2AnhFwQrOjCV5KrsyL2xDiPprFGoC
bAb+f8qeZblxHMlf8bEnYntHJEWKOsyBgigJY/FhgpLlujA8LnW1o6tsh+yO6dqvXyQAkngk
KPelXMpMAonEO5EPd7cfEFz8fXudAzMQyPE/PS17Wv88gB4T/WTFNwS4ecv0nCLygnqyvyos
mg9D3MzWh/bgHHZZfmS5fxXZ59uqBaWxp9C9Lc9+tyEPC5JENk5YCzsSXgvti6eGTbvm59S9
rWIQrzKjZ/BQoIB3xYZ2m4y14EKPWtIL3i3WIXIvyY901WSGb4TgsbrPGj4cG5t5OCn6u2PH
+JARh8kNPbUHT/48OXTgFXCDPntx9AP/9mSylH8R4jk5ywm/tcPfMA5OK299O0YJ/CeK0fzo
Osk8Mb0phexoedtx0YsAkl6lAhd/xeSLz/gqym+38jxMy8LMFTLMhPr3n+/PT4/fb/aPP7Hw
EeLznaZu7xd9F1NWMvHkieSmEbvKfsmJAe9pgIgerRJtDF+22e5YTXwkLtC6uaEcJ9smM1kT
B6t9TV2IeFsyj0L//jJfLGaqAEP96BGW0Qyxdpn1qPUMOcIrjFrL7Z7XvwMr5ty3G5uEDK+D
ixbeFe//FSLY/lQK5n+rw2YDj9mhNkrOl+e3388X3vRRb2QOkvGGr68obC/mhwVVuo3D2lKH
bhsFQ++Zn7pjOmVqaOcQW5+ycIE/q4hz3RGK851GOTJyFCusrOEbcVf3lwvNwfySAbniXzuN
ADneOeODX17CcOHfolTfnihfQryHaqFDmmFyV44KR77I+c+iIsKLoyXQ5ww6dIyRQ1f8UFdX
jLbWEWjD2QMjRuxivOkMEwUJaomz5cn/blxNs3aie7ucn15/vL2+n79CLJ3fnr/9eXlEtc7w
vnNF3hu/7nhzKEWk7I1vIvubq/qyhU3WuTVsr2g8tq6s4MlrWKuMDrsuk76c9qHWA8CIn7wL
dJXDACPGdU+CmzZYBAGmNdM+gxFKnRI3MJ3NGA3qG5HsJcUntSTZrSPGotCTdl3SMMgIESRo
CDhJIazUVFbuYTy1P9/OvxIZU/Xt+/mv8+Wf67P264b99/nj6XfXgEeWCcHUaxqJtsVRaPfM
3y3dZiv7/nG+vDx+nG8KuNsgx17JBgRF2regk/PO6ukSjYHGz+Ydu6etaQyE514q8oK1lGi6
rB4y7J4qRvmP18tP9vH89Id7ZBk+OZQs24B+DPKdGpWzuqm61b4imJKkYBKFVeZ/OukPQfm9
eLoZWyAecoThJgbrHNsIDSfMGki1r3AVvaBcNXCaLeEisLuHY2C5zV2rMbCmdAQlvndtHQU4
K/n0is0IEBLR0Bw3wpJoFiXzGFeVSYL70AqFabSGFEkUphYzAhrbUCtlqoQ1sxkEK5xb8Hwf
xOHMjNMqEMLcdea0UoDxnXXEe1sBZpzz0K0pWYa2nAE6C2yoeEw52VBSrfi87O4Oun+Tjmmy
O6clkEswRhOOCbT5nitZgkT0tgABaBqGKnA8Qx2iemx8OiHP0QPWEwhyxPtlzLGJI+M6ld5H
dkmeBKY9Nk3scSHEFts9oKCY1ACVRPYHQzpwkyFpM+1jyLabVkAShHM2S2O3i+9x+z2BHPKD
eafcOkxnjiDbKF5G7uSXRte+okpml8OPqKcV3dqLC7/uRhasJRmkp3OqbPckXuIBmQW+z26K
zOv4LwtYtaGzABR5uQmDlR4VWMDBVF5GONWhlEXBZh8FS7ujFULegKwlVzz6/Of788sfvwT/
ENtns13dKAP3P1/ANQMx3Ln5ZTRY+oe+ScteA7XARLezB0Y8BmVyzBTpLPZOiWJ/4uPG6QtI
Ij5RJViPPKB+gbInKe+Vg+NgNS6OSOerTIj+SmmNJoKWDG2LKJjbHT4kgneXiW3hbJyb74/v
vwsvmvb1ws9W5kZqTTVwWcTd3xU+jYMY3Zvby/O3b+7mrOw/7JNDbxbSUiOPu4Gr+JFgV7Wu
SBV+TRl2+DFodnnWtKs8az116F7FeC2kPlyrJONXoiNtHzx1qKXW0whlBIQYujy/fYBi/v3m
Q4p2nGvl+eO3Zzi4qnvNzS/QAx+PF37tcSfaIGtINgaO9dfaI7NmeVmus5Liyd4sMjDfx4xj
TeEd1qZ4wKmXMbqCOHJYmICc7yMd3w7A0omRRrc6EijnYRCgegWCSkYhgEXGc9sVVM6rmcHD
vivcgouapFbyCpOAH/qWnhATAn/aWrFzFbJpCSgaxnYBoCDBPEmD1MX05/WhcADuSFvxJqOV
A56BZnSHdy7gffIAXHmUAVjF+OOAm+c+roi2JgAhv+dvpOBt9gSGX2zQZJ49fp0fzZb20O5A
cxFL1kRDEjkV1HYwuAT2kDWwJ+9vFH45QGK61Sr+kjM8Jv5IlFdfsJQaI8Ep1a8uPXy067I/
YNFCD1fdw9dMOVM7PEhMR/jMPzTYjNIJF3NPEckCO4H3BLuHIo31J5we4Tp09Rh+7EmWaDAA
jQJS1buFYvnpdZQv7/xI42Sdt0gaFpNoEWI1ULYPwtl0DZLGEzDKIppi48QJYrf9NdmkcYhI
WyBkBi2nOoGLkunxKogS7MpiUKRI3cU8aNMZ2icC092vsZ1nGPB3UXiLzNwhb7HNR5+h3v5A
JVTGGMEyJTtEDYEE51NzlvGb83KWYTVs+HkNPc4NpfPpHiDN4fA4DVD4DB/peRHNQjRDdf/p
kROkSJEcHqFDu4Hc9tMDhMWezPQ9fs3XGmNySGe7mlqLLjJGlp5RtfStSdFseoYJEnyr1Unm
U+NdEHjX1SWugjXWODSnzyDypRHdcez2OT4cYF2aI50qV1O0V/mMDfFUUcPHpF4srXVGBCMr
wb6W9jsndCLcI9wd1JFMFOIjTGK63T2e8tlkGVn5xZheEs/oBZxbtkt4glRTfrOjybaRokJW
HT4WQj0glwY3wrzp8BgZ7rDRpnG3yQpqemaaBNeGdJLiyTA0kkWYYmF9dIp5ii48gEqvf4ye
UcL5DJ/MQmE0tea2t8GizfCTxDxtU0/SZ40kmhYbkMTTYitYkYRoTr9xF5sbqqhhyNUxweY5
DFlkNxiUbrYUSLgwbdAHjNcMXptTwu1/kujLQ3lX1JMk4NTYmcE5xfR5ffkV7spXjtYZK5Yh
GtdgHAq9Ibw7Suh24jFh2IPZvtu0BRjONpgj4NCbZt53A9wd+U9E/hECzOtldEKO8MdmHmBw
8BRouBRmSAcDjmXF0sWM3utOg49t6gs0NTB+KBM0f8CIP1FEFkeExabI1lmUIi1z0hAPXdLy
/6HnHtbqRo/jWM0QKJi1zJEy9rX11qAhbJ+NoYYiPXlu6eOlcYtGmxiEc0J7g4O74/S5hJVH
/x1clFGdsgY3vxhI2nCBZlMdCZJoiV2e2kUSohvolOZBLGKLCFvDGIR7QQYD3olNuw6k8hlZ
G8Bcw1lYQKPMzi/vr5driwsWU20gWvNh63HZ46jVYeNmFmcPJRFmS2Mz2L2AjoCD/Fhvj4Tw
TjzmKsakjyEg8+lUFLrPyaOHwJSYXZ7VDKlXwIUqJ7fO6n3gV7O5murtcELSsvQNNdwmadXV
almizZ2JWEManAEx2nlwFKzN+X5Fum1N8IuEKLk5MNTABArfaPqd48bUHcJvLnJaFQUegVAQ
9G5ISA0CX0gVk/kRAJXPJ/YdbfQk6cOn0N4dnM7LbIsat8hUKVqLZOqUIi8NV0AFXkEmJM/p
VpGI/Oneiiz/XA3YR0jt/VodIj5qROj6fK3s6zQKYRDt8CygwuUI5Veg4TTBeudhNzSs8qh9
ury+v/72cbP7+Xa+/Hq8+fbn+f3DcJnuc3NdIe053jb5g7TUNAFdrj8AEshBRO3fthnkAJWa
fDFp6Ze8u139K5zN0wkyfmnTKWejcBRxQRnphxUqREVHWYaRmUTC2m0YohZX7TI1MwYrRCm+
S+IZrjQZi157ouIYFGBmPckgp2F0W2QIJ8fiNsVf6hVBGsax0zAAdixz4Lfyr6E2VyhrtdWh
XX7KlK+HzZ7Ec3E11aFF7VxZm221aLSUVjfvH8o3yjTwz56ezt/Pl9cf5w/jDprx1TlIQjMc
mwLOZ+habxUli395/P76TWTAU2khn15feP12ZYvUzP/LIWHqqWaqSL3SHv2f51+/Pl/OT7AF
eapvF5EeFlcBlELCAtLQCG3+ycrkGeLx7fGJk708nT8hksU80Su6/rFK5wC1D1k42c+Xj9/P
78/GISZbL1PUykUgjPzw3uKkB+j547+vlz+EEH7+3/nyPzf0x9v5q+CRoK2KlyoanCr/kyWo
sfrBxy7/8nz59vNGDDMY0ZToFeSLNJ7rvSYAQ69ZYGaHQx3Gsq8q+eZ0fn/9DsYKV3sxZEEY
GCnwrn07BNZAJq12dhFeNegapSZ/J4Jr6XvrOq+G29dQkHQAOK5dn6Ds5evl9fmrvuf1oPHz
vrJVlTWYY/OWdZt6m60q83X9UFJ+amS1R5EAUZc3+KWk3z2hxKbCDlY9hZaJ0fnaiuHi4MVD
/TRFhXsnjfiqhif/CQatqFc9GNwOHKDr/jMIQmTlWA8uGBbaE0ewR1vzYmDtfkqyxrrYAw9m
EJMeDBFPsGPsihRySA4BYkZEmEZxdyQ7eod8WNO5GVDyRPdddqLQ4RusqRua79fCoUN/zt0V
YLcJLLLOOJ5BUESF6UOo73PDvwo+rZtqw4+w2BEDXHd2NEoWMyWTfqrUhQjYIVAjuNisORSS
/QoKTbDqimlIVcG4FGpMqpBnp8iHa4d+tpC6NAegRoAFbOqCbV2w0fE9kIuiNa5GRb7fZ5DW
CLv9DFTVvibdqQrQhCy7jF9oyV57peM/RBLWqro96BHvFCHEC68zPe2qNJ1Shcjd7/vrYAIt
zMxAadecfztfzrDdfOX72jfTi4ESjxcd1MjqNMCPKJ+sSGtat2NrI7zYyP3UG7JJtbS06BqW
DzA8HqpGw0hBMfFxRO1B0DiaB15U7EXpJscmZu7F6HNGw6yKIE1xFFmTfDFLPCIBrM86RicT
2as7giUr08iEJnifn+QMwQoCCpbhF1SNbJsXtMT0pxqN1F7hggqLmpkxZfUPTxT+bnPsRQwI
7qqG3hmTrtuzYBamGSRpX9MtWqnQ5nmq3FdkV2Zbz0avEcpX9qtUHvNdjaQ6lZnnbtqTHEmM
NqQo6tA1E9NH23oRpL6b4dDT9MT3Y1P9IaQv/JmYCazu+bCIdQX9AF2g0KUNlZHaV5TfCe8b
3kscWIbprjY2dsF8Rm+zfdd67tdAwffeRRB06yM63BUF351NDmAvT4yHCR3abTMzMmCPvK1K
TOmtSZKChZZbKnnYlgfmwndN6AJLVmPAEOOIYXozQGr5NdGBw/f7OEjIMZrhS5HALz2DCg4L
Cf6oYlGhwbJNmsUyJcfQNNg1N4IQtUkXuQ7E8UT/krWHlec7jOYz7VhV4BKNcACvGXK3NvpF
RKvATqMDskQ/8Y1ggbwbVCMv384vz0837JW8uy/x/GaTQx5WsnVNsXWc/Vxk48LYOBvb6AUu
NJssxfpNJzoFhs+OiUpNz50e2ZIDiAU9x6DCQYadFtukv1VSZVQ/ef4qzl+fH9vzH1DBKHR9
PYYrrBWEVke34cKvLdSp0OcrgyZZJL7Dk0TKfcFn0uqSk6z4PPGW5J8nLuyCvZS02HJSfKuT
FEeR/lISTVW52X62TkiAOcuulwhkq79TaPC5QoO/VWiYXRGQIFpN17zATPgsGv191EHJLp2o
gZPIvvxMRaDNudKlQJSX5FNjbuFLR2pT4RYtBlUaRNh1z6JJFl7WAQkz8VOcC2JXbhPEfJyT
Da7YQYg/Mw8F5dghOImZUt1BujX5aFPc5sakioMEXe6n12dtCe+DOomr7Y/vr9/4HvGmTNre
dX3hZ8g1vQFrs4b/S6KAN7lG060JT/LtWo8NLEBNXRCCytcMgiWIszjipdvAhYQN7AioOGDX
hIFBVorbV5p0bH3S34YGJCvWwKSmZ6rv+LJPunSWzk1oUThgysFZzVhn8TjAk1mAOahRVcl8
FizN0gAKH9mlSZYS/IUNCPbXCGQJizlKwMUoCRLUMmtAL/X3mBEaLTGo7pAK0L0LXUvaZRLE
JnQ/Qg0mZScsr3C5mJs1q69ssCRe4tAELcIGK+LU5nNbHxTGw2hfXqoPSqZGhWEhyQgcWjic
33GxZsMDMWW1ItAUm0SUpoB6cQIc+goTTQoMnxQO3deZyGjX5J4yRYP9LBb8a4c/qWl2GOf9
L1uczmMTLKZHYtEKUSZm5m5BLFjCRzTIuj008EYixa3B7xLGz821iehrlywh9aRzXGkFFH07
p2hUH6ZoKmogED3gCuUk2DKDjLKxuDBGO0Q1JjAdu3uw9ZGDj7yFSlEgxUqEl5tBQu6nA8rL
FWjwIYyJ0EZTLLOaWO93G2N7uYUF+kQsRcZ2oyTNq06NyKbDgSowYU6McADmRX50dBnNl8yv
5GkWbBnammsdn2aLKMOX7x6/sG0AHDx64RqwkcOxAKNnwwG7sGQkoZktJQFdBXgN5BrfORZa
e0AvUrRY/ALQY5cz9KPlRBcJ/KQI9c1kBMYYMMHkxvc8FBrjvOKapwGdolX4Gr70aN0Hgmyi
lzgy2c488UbESWvHh6+XXZKBo/XW9GIdMNu8DAGNoyIPCqK28V8VuQUbSnTSijr51tRMYdsa
x/KlRjsN6Np+O10Ni0gyH6KI2Oo0FtdHiCU3YhEpyVC2XcSXJLMYEz/31KHQsfm5v544TCbr
iefBFXw4m2Yla4pk/ile4F7JhGCJrulTWA6vDq0h69BhbpS1wIaeek2yeTTNnuhquqHH3Bwf
EtbVjR7MX+g4yzbfd6wiYHvhaEd1JGoG5FAl5jmxbtafYNi08x9AcqIwDFNDDE7hPzCFTand
IhO/xN/YVOUEi7GgTamWQuCWvTWLDyWtd9Q0AwD4fluAehUpUgYS7I7EMFTVKnL9XxTN7p7V
tFRBtRxYH4PaRZgXXQ0B/YUjlDn9aNnA8qI72C4e2s2fvf55eTq7inIRXMNIQC8hdVOtzEHL
GmI9jfUGH32ADt0SRLwRSQzaqcqDx6Xo8b0bjx3+Y33P780rt85N2xbNjM9qX4n0VMMCaxUn
PHkSGwrvdU4NzXqqQXyUzv3N4diY8l6y6pE2XBZQuuq49Zc1KRZ9C/BNVPrWdG1LvJwo5yq3
eNXF69UJaoc5iZvHk33NFkGA8NGL9MTsJpV85Da5DYWVaiuMo3iX2kjFTk1Zm5Gd9a4rcWIW
8KM4yibfPI6LQrg4UNSYS2YRrqlh3iaBftsRUa3cu70v2r1vmU8+4pm7a2rm9kHR3k4NMVi+
J3pfsvdvuIFDu7BhuFPTmxT6fthDi/agO+moQ0zF5WzsIj156xkhuWq7nVDH5rQ+efLipRGM
/6LBAygMaFSpp7D1wV7RaHGC0dCRFhv2DPIKYzFFspZwWQbahBxGr3qHszuxR/DKKtSUvScw
ckaIfBYQiR66LpnLZ0dDG2st4cOHGd2vKsNZCppacBhSd2/Z1RU7TULSX6+LYHlp7vnYLWSJ
/Ujge45gzQRD/hW+fBVW7fI12ceAfI92PlKt8AX/lopeUNPSmhg7UFevicWXXBc4oUYJM4sU
6zunYnFq4Uf4rcWuOevsxpi6ZqgK62dwMeJca4ciCRrDD8mkDGCt/Px0I12S6sdvZxHUyU1n
Ib8G76RtC4nV7HJHDCgorqEHt7EJOrGKsqsEelFj0ucrzdLGqyhVuMygQYN7vMqFlzHW7prq
sNXyoFYbSaVB+HHLD7MddIYhbn0BG/eMDlBNXw6FHAuGGcJwoXTM+qCH9VGl1m23ouWarwX4
+9BA3yfRWz0IndPqoRcEtr5HS36tIfcuvwLTNx7btPn8sJouh7ZTEEwHpxRlXP/j9eP8dnl9
QkIj5JBm1LQKGmEdMUx8+wXyWB/4Pim/MfZIRqxNfzDRdziQnL39eP+GMGUay4qfXWmGnBIw
+XglchRwAGaEI8gGR72RIaNiTYqQ9fyeNq7xPr+43fzCfr5/nH/cVC835Pfnt3/cvEPgxN/4
XEKSGMJZtS66NR/btHT9Vvt3O/aKBKyQfuwkK4+6dlJBhRlHxg66ba7Kd3OC+yUtNxWCGXkx
ek2g89zDqkFV6MWPLgxIQ2QLpUsw2kAV3R0slvm+r90NNQQrKz0Vt8LUYYZ/grHmcqAfKZcB
fNR5PBcGPNs0Tu+tLq+PX59ef1it029a4gpWe1KqQLkirrDp4S7AMnoYypP6xC3WuOLVxQqd
hSjT0u3oVP9zczmf358e+UZw93qhd3i/wRl6XWeaF0wPgST35Fb6yBlH7lWRlb7jg8gs0OPN
Mgew2qiNMkckv4WgmQ/vDpSQLi+3VLeiustNDwJgHDRKJesTAvVeVFcEIoM8/m9xwsUEB71t
TY6hZ9aJYQdmc2g/OeVKwzp+T/7rL0998g59V2z1g7AElrXRMqSY/2/ty5YcN3YF3+crKvx0
b4R9LGor6cEPKZKS2OLWJKVS9QujXCV3K07XMrXMse/XD5ALmcgE1fbERJzjagFg7okEkEhA
Fh/LTFJX6fn9pCpffZy/Y8DKjsf5EbyTxs5VI3/KrgGgf+VBsftVFW/kG9vfpn2j/n7lOiZ6
70bBME8tUlIhEw4yUTqCJ/CLSoTrDYXK+6ibiiYm06cb75/SI4e4bLPjXE7Mw2euO7Kjnz/u
vsOGddkMEb7xDfZnOxCH8pAASQBDQEUrB4EneEuzvSh4veKc5CUuTcPQ+wCOVnbjaVwZeV/U
Wcyd0RpnvDnoNzdhXkvdMGWHjh0gus+0uswJB0a23FSWnc2SONVMErHDIC8el/LU6G4SPPN5
LQOxDFvNVd4zz1xOlhZFdWG2Yd73pfO6ClsjDTqg3h2KtJG5IhXZQNsl9cSj9grlrQh7aajy
T1a5oo/n7+cnl4t108lhu+zyf0sA6/TpDHf8uoo7x2T982rzDIRPz/ZG0qh2Uxx0QsC2yKMY
N5B1VlhEZVyhsi5IwBxCgAd0LQ4DaAxlXZdi8GtQKNTdBGm5l+4BdRG9AvRzPN1hoq3gYWSh
B/QiZfLsi/DGsY0Pcd74DZZg04y8CMsfkJSlrcxQkm57RevEXuRNKK+P1EH15/v985PJxOuN
iSJuRRS2n0ToXF9J1LoWyynr7KIJaHx9DczEMZjOrq85xGRCnTh6jAwOP1yTGwjTgJt8FtgO
DBquOCX6TGBwCQ9dNYvl9UR48DqbzWh4QY0wmc+GGwgUof/S0UZiqpqJHQcNmHxRWfG0o4gw
Dm3JjSrB5mBR6HhFRD4tEoO4tuYT662aoE1BkGs4D0e8gIqzhFyltBrQa2togdiUbJvwwg5j
17S0FJnzHRcwee2K4ilaevO4aUNSBWKSNR+gWb1GaPOYT0yD8oX9ljASC5DsYGShx75huCpD
u53K7LbOwrE7rsZizlaa2JsgwQA2JnJMb2zpoC2bcdjCR5ngSkO4K6RbWMwpA8L5nhp4Ab/D
p8mtit1kgXVgcibMDWLVP+0MddY3HqmstUZW35GMbZL6RofboV8CuC+RjFTfOMnsfIuAGzmk
3zM6dgjnSWNwlh+niI6pEwBZg9zwDA7WebsOmhv/tAkQU/tdjPpNHz5rGHngvMpCYGsySnzK
Q90yLIzzEHSVJaPFQuG4e0oxtl1oIjGxQ3nCqqui0dwFLB2AHfQO02HUMSiKlW7PxJINdsc6
Wjo/adcViPRudww/7YJRYIUSzcLJ2A6YDDL89dT2ftYAd6YM2Iu+YeEH/IMzsZja6V4AsJzN
glZHEaBQF2A3/RjCfFOv32M4H88G/CZDgfmQeFyzW0wC3h8JcSvhuhP+fwiY08rYRbClQeSl
O+d6tAwqzpEOUMF46hAHS77hGIBnzgc6RdSS39uAGNsbG34vyO/pNQmzcz0fuWF/AALHDsia
IG1UApRybrsQOmenYeScOXelJxGLNiANuKb+xQgZ8MuTKE44wuhFi2tS6tKOmI6/p0v6206J
I6LldE6+T+RDbUGzTGq7oYj4I1na/wSbgVOZBkUmZtFYl2owx3I8Ovow5FSRc0Em3+JScBji
g8PAAWIwRrfxkVgia9yUfAujNHdaFueHOC1KjBHXxGFDExwbzZQtC+WW7DieuU3YJovpQFze
7fE64BZ0kovx8egWZK4VhmYCFJhrb540TuUooF1NyxDflHvACVN32oTj6TXXVolZWLxXAuxX
BApgLTTUEUZjBxAE9lGpIAsKGNsxHxAwsdMxYCCKOY1AkIUlyNz8zSfipgMPzBC3DPjtaJ6G
4nM20HMwoCQ/5Fmct18Cd9DVFUENLIYOcC72wBI4pzj0m3GnQylEg8taKkAH1O3cx8M6ISYG
hm2PBWlZrzUlA/DDABzAdmR16bR6WxW041WOOQec0egUWX9AVBzogeUsQ0HTomq59NusiJSJ
xxXs1WjYh3UHd0HRWj7QYIgVxmmp9NwLR4uAa6lBUn83A53WozG3qRQ+GAeThf9ZMFpgaIwL
ny3q0YypL5gH9ZxNxiHxUKj9SEnBrpe2gq1gi4kdLUXD5ouFC1Op8DzoJIhHbreaNJzOpuxQ
qOwYsL2dUb9J5wgf2gOH9TwYuVN1SErM4g0y68DC0t6TR/PdP439t359fnq/ip8eaDgfUGuq
GGS5lE/W6n+s7z5fvp//OHtazmLCyhnbLJzqPBrdnWNXwP9DHEDzUOWfxQEMv50eZfp1Fc+Y
Nr1JgWuVW60hDMgTSBN/KS4RrbJ4zpqmwrBe2BpMIj67cb7KDAOccAJVHUaTkbvvJYwoJApU
x1UiyJtIbG9SJcjeN3zCu7qsaTCEw5fF8sguCW8YVZzo84OJE41h+sLnx8fnp37SLOVLaeeU
+TtoW//WtfLl23p7VusiTAi3LtAnhnEik27FEyQ45SdQl6amrhdkvwCBrslLbW4s3V4RxMDQ
OA3lcUT7dHB6Jejwlmq5w8q/U7uV3zWz0dxRdWYTVqNEhKsDzKbsaYCI6dwlnfLP3gE1W44H
9hbiJqxbLWBGbsPn42k1aAqZzRdukwBygXw5pxMBsGtbZ5e/F06R1/OBAbmeT+mn8zn9fT2q
3LKGFawJyw+A0y7saPBRWTStyrRnIPV0SlVbI1QDGS8sB+R1J8rGcyobZPPxhH0dAQLuLCAR
ChCyYJcMSLAY/cU2mZTTpZ1UTQs0wpd+RCco2Sc0gEeLMaa25eUHwM9m14H/1fVkQJLW6PmA
CUMd4M44WvFhL+zHjic9fDw+/qXvyDwGo26won2W3bJVeAWoXKOvp//9cXq6/6uLSfs/mAc2
iupfyzQ14Y2Vy6t0Ibx7f379NTq/vb+ef//A8LxORFwnfbLjNTtQhMrm8+3u7fRLCmSnh6v0
+fnl6r+gCf999UfXxDeribTa9ZR/4ioxehp1Q/5pNea7H4wUYatf/3p9frt/fjlBW8wJ0rUI
Lbcjl1cikM9DZnBz/4PxQJgoER2rejyQ6Uoip+xorbJNMCcWXvztWmcljBw066Oox6Dw2nQ9
jH5vwUkZ1mkuta0J8STIyv1kNJNNGbhxgINOfYcxTL0zUKIwQdYFNOYSNuh+azUb0Ll5w+Pw
bCvp5nT3/f2bJUMY6Ov7VXX3frrKnp/O73RxrOPpdGQbvSRg6nDJyShg0zBq1JjIQFx9FtJu
omrgx+P54fz+F7N0s/HEVqmibUMNFFvU5gYMFIAbjwKu1dbMb/dZEqm8vP2HTT1mD4Vtsx+T
6usEJGH2NT4gxkT69zqpo5gBx8WU2I+nu7eP19PjCRSYDxg0b/+SixANmjNbesqGZdW4Bdlq
SUALUJCBFa+Rzi4s6gUJdmgg7g7UUMfiu8uOrHiS5Ic2CbMpcBsSFa2HuhcTBDd0O4FEsK3n
zLZmaXhRTG/gtM7mUX30NraGszKzwZlh6KK1DS4CuwCcQ/r62Yb2N5Eq3fb567d37iz4BEt/
QjeRiPZoT2SPgnRCUjLBb2BO9OKijOrlZOCKRSL5WCyivp6MaUNW2+CaPyYAQc+vECStYME+
+c90YsH+92Q8cb6ds7sWEXP79mlTjkU5spO1KQgMwWhELt2Tz/V8HMD4sH5aRo+qUzgjbass
xdiZOCUksCVQ+2YwJUeGhSkr9tXNp1oEY5q8oyqr0WzMS5amWWk2mU04yT5tqpkt2acHWCbT
0HYiF0c4RxyTNEJIMM28EG76TY0pygYWFVkeJfRhPEIoy3GDYGKdY/ibhEFpdpOJvZRhP+4P
ST2eMSDHXtGBCfdrwnoytQMiS8D12J/dBuaSZD6WgIUDuLY/BcB0NiHd39ezYDHmYvUfwjzV
Y91L/xLGBm07xJk0/fW1KYgdpuOQzknEnS8wHzD4RK6lPEZ5zN59fTq9q4tRhvvsdISlnj8g
hL/bEbvRcsne7ujr+kxsLNuMBfT9C3rU4M212EyCgdgq1vbCMuKmyOImrkBgZC+6w8lsTGKK
KuYvq+eFQdPoS2hbVnSW1zYLZ4vpZBDhrGYHSda0QVbZJKDriWIGhASHyDnub0UmtgL+1LMJ
L9+yy0ctrI/v7+eX76c/qT86GtT2R3tREkItY91/Pz8NrUnbppeHaZJ3k8tyXuWK01ZFIzAm
ND3GmXqoyiyfEkiPTt8tp3k9f/2K+t0vmD3k6QF08qcT7eq20g9vOVcifE1dVfuy4dHmsfSF
EhTJBYIGk2tgfoyB72/rdc1ZRfmuaTnlCdQFmTL47unrx3f498vz21lm4XnzDeDymJ22ZcE/
mrMmKtzXDb5fk9Ewtnj1y664v1M/UbRfnt9BPDszeZdmY5uBRzXwT3q7OpvacokELAIXYN/q
huXUCfSHoGAyZLBSB4ZNSoS3pkxdXW2gV2yPYereyWSkWbkMPOeagZLV18rs8np6QzmXOSBW
5Wg+yjY2Wy/HVGvB366BQMIII4vSLZxotlt1WU8G/KzKKq4ttrot7XlLwhJHkfDCrEyDYDao
Q2g0rz4AEg4a27BYz+b2jYv6TXuoYQ4/ReiEy+6uzw2nXzaUVU8UxqmkmU1Z2+62HI/m5Jj9
UgoQvPkIpd6U90rKE+ZJ8ldCPVlOyF2cT6wX0/Of50dUrHEPP5zf1AUbwztM2pNstyqlnJxk
oPhzw4ei94zKnmkSiUo+LnISt5q5WAVOOvMSeA5DWK0xQZitUtTV2gnneFxOWLsFIEjCAfyS
sAcU+ia8JndIZ5N0dHSzoP1g+P5x0qwlsVJgEq3RP0mipU7C0+ML2mwpi6BnwEjAORezYXjw
SmC5oKw3ydpmG1dZoZ6YDChPAwVm6XE5mgfUJiZh7DVDk4HKaF2myN8WW2/gnKSLS0LG/PNQ
tLAFixm/rbiRMtWUN1ZQIfihjmeyQm8yP7MswUov+ctY0Ho4l2zEd85ntB0mOpAHpfkpJDCu
0iR3YMpJ3+2ICUsz0BbvbQECu6zcpCQdv2WgoG2yOjS0mMQ+sBTgGHgQ219Lg+BEduZIiSvp
xgWrJe+2NC0nyynHnBVSXaTVYeN/J33UBj+0Tw0D6SKHuIVJh6zBNSKfRCY1t63Ux36eAAk/
cnYUxMgHFFHmRV1BXBmK5XzBq5MSPxBwBnFWohAQL/nnH5IuHMiII5H6ZURT8pFxJI122Rro
nxcZUAKdGHISlo4XYZlGDhQdu1xQ5RI1iQtw4ol1QCe8ko3GgFe0GPm2yy2mSeJQ8DGaNHpb
8VnrJPomdeq4gf0ROx06JJiywu2VCqT1m3GxqD5f3X87v1gpgc2BUn3GCbEOLmAAicUrPsmQ
SiKhudz1XMOWDbEIOO+5495QQR3c1xjwVSJ5O5yeY1kJd9TU0wUq4zSJtp0hBHvNlWzq3y7q
ocLh0y58HnQ+igkfQfYFFHUT89HWEJ03SjnXMO39i+WGRbZKcrqDMWv1Bp07yxDT5LEuoSCl
ms4ardud1q4FpQh3NEOgSpWDK8XPDahwotmyIWE19lgHo6P/lQyXMBC4WVPIg+wSgR+NgcNr
Lzi3S24SOgVFf+YLVaqzZnMzWOdubCtMCpYK2GafPag6a/wmeIeDj1XpWVpRrdxS0XHXL7KL
CDdYbPde3f9Yue+ynouKgObS07DEzees4cggszKYcTqYJvEjeWoEBrUc/KzLwuM2xQpnycLb
TbqPXSQGrLRboGNZmsRRP8r9ZOjcPFJK/dreXtUfv7/J99I9S8W8chWwIJXb1AfK7Cygk9to
BBuhBV+MFs2GIk22Og1CGgzj6eRPRUoVjBEI+GNHUWDYL9OKS3RLrySKx/hQ+DjVbYRc3YuV
DDI88LUJmpNKItpbjQvG4ofICbDMJOYoxHFjcH7bJFYOAZLodHQXW9p9EDGDboLGQIO4gA1I
ovK/Ma1VOdzcVLRdHFEZp9mZJufrvGaGKa/HOqV95NQnQ86KRjBgpxFW87DdgyulC75ZVJXz
7JKh8pe+wdSwjSsxgBPpoaAo+dpXZkbjGp4lR+DxP17mOirf8DrXQf1IVBsFx1MJj3OvQ5iS
Dg6ZvGAmxogoXnnqfGkP1XGMUUi9haLxFYg2utT+wkgGMZxcz+SD8XRfoxn/wqKRRzK3CBSC
G035EhuqgKbtm4zj3zbZQobz9sZFocMyCFQpbi2gpbTjRQ6qZs0KQYTGHQSDHJ7JLCsn/rhL
KFbogDEgKbPXEb5nY/UZ7LH2Ow7gbeR3WEatkUu05i/nJKMtRXWcodd4FA/Vq16wcRMnynJb
5DEmjoFlzNnHkKwI47RodB1uGVI0vDCuOhLkZ8zYw7VBiR6woHlvzY7EiS3NELgHik+CPK/O
y7pdx1lT8BZLQryt5XJi2ywL4+9b7H5jaqELw1MJGT6PGZg+SD8eZUOfdxE75K/jiC6tPpgO
8hu9yAbxPj+ieFiH3AHXB+VxzgGOprktY2czaf0nKlXCEhYp98Ew2meIJrbCfu2t2A41LIB0
cqM/JDZqMoDym9MrjNvQmQN8GIDWiWACjA/66bKHHj/t8bRDTbKdjq4viWPSZgF4+BG6n0vz
RLCctuWYC4GJJCrghccdo2wRzBm4yOazac8vLMyn63EQtzfJlx4sLVda+aSCMYj7mBbekyCV
hraL42wlYAlkGW8l8EmHB6gzMMoz21lkPRLrclujn3b54e/7ywSiDHQlY4yikIY5S6I0huo+
xSEfajtq2DCbWUi4B/wciNpcyWg3+mHZw+vz+YF4b+dRVbjhGLunZIrcaovgLKX5IYstK638
2ZnYCVCaQhLCW3tEERYNZ2HTgVri9Z7GUFNfGjUpxuip3EBRssLOT6JQGKRd1t0j8Bg29WmQ
Om/WWInfCPl0tY4EGw/VsEGvAx2G77cqGuVt0zq3VrnDoUFsjLeO/QwMnHoTMTToXfhRZxh0
zfmhhiHdlPbTWPXI1qtNRsmVUHZ5qwIrvg96CFAVyQ+VyMxC3t5cvb/e3csb0M6E2dfI3lio
Hd1YgZINpN2wUDgxqClRw8uBIGwdAXORZDyf/Xabal3biIyAlG0qYzdhq3SJWsFeluro5GUF
wonzJtFDycsNtiGGtB70HOtIkTG2bqtdIs1EqRu1QSZhPHVdrA0uE+H2WIwZ7KpKoo3fu3UV
x19iD6sbUKIrUx9vzy6vijfGs8mcXGsbM9S9aJ06JWEsK7HeewOL8Dwpar16ShG2uRulhRvd
rDQrxmBrJ2Rr0uaxjJfU5kXEyWhIkgmpGtLwaxZiu1+xcPivCrXFoTDGB0XVIeWaEraKMaIU
Z8qPu6eS8E8uaKEN7jjWPm0SmMNj7/ltOcBxEYOzPcYE2Fwvx9w61dg6mNrvzhFKRwshOhkM
53nntbMEfl5aZ02dkID98EuGDqSV1GmSEfs9AnTYURKZWbq+wb/zOGx4KJ61w5hFll1C5peQ
zs2LhZYNLTCrKZ/blxBrWZ2ZEtikSOhVI139QtbQZDvyhXYsReoEqFC9F0LSxp9j7lzEbCaf
9yKKYhoNqktZ0YAgBhJes6/48y4r3JQqxkuMRldUDwTP309XSoa0nEsOAl1wmhi2EQYYqgnb
qjEivZ1dKT4245ZqRBrUHkXTcDdWgJ/4n0xkfUWdwL4IeVcIQ1XH4b7iPYqAZNrakqEG9CU7
1U7/ToFOCgMJ24EE1Eg/U6u2T6uIGInwt39g94OZrUI4bZwbjwSGHHBr3hLwyUOZ80Yi7KIQ
ojNgtAc+WyWSfN4XDceijkPDhoiKVycQVeRw8MXAlSv3ObxFdCMq/pYOkUMjtlnXYzK7q6Yy
vXYgfMs7rIxtrvMiORPvE1d7tF7CdN+q+WZapmjNOnGKEDXMKD9efR3xuj3EVbLmFmGepG7P
12NvuiWobkTDrw/9hdqWXkH8eBkkt0EokRrQgTWripE5RZQqOiDc6NrQlosekol9LWeQ6ZeC
A065ZgN4y2vyhuJL3XBvC6zKKnohibPMqqnOEHasAncfZUgK0q5UrrqSzmGCOWMKGXefryTO
w+q2bOjY2GAQSze102QLm6jdKX/zNeAypO80O+AlXqYpVvsEJKUco+/lAs8pEko1LxpY4j0k
6gDWmStBMqQyP3dCUTDNkKyMmFMq2OMKLFkOP6wK73B5BWyq2FbT1xmw0sAFjJ2vSBBXsW+K
dU1PJQVz9y/0mN+6BYxtKm5JET0MeEeUVCjbwJ/LBCK9EbdQb5GmxQ1RPHriJI9i/p2vRXSE
WZK9+BFhFsNwFCWZLB3h5/7byRI78rjpjyvLIqDAwNXIOvKOTQ1SlPyy0RR4kVZsKtaaYmg8
Rm4QxQrZV5smbPYLSYNb2M7d2cHcBWZhujbZYr4eITVa0S9Vkf0aHSIptXlCW1IXS7w2pCvq
U5EmMdfQL0BvL6Z9tDafmsr5CtV7haL+dS2aX+Mj/hcEY7ZJa3kQWZpMDd8RyMElwd8m+VQI
amUpQKGeTq45fAICMUqnzW8/nd+eF4vZ8pfgJ5tJ9KT7Zr1gBkE23xEWB2r4eP9j8VO3JBtv
60rQsIevRFc3FGcE80uDqTw/3k4fD89Xf3CDLCNOOhcSCNqhsYW3YSMafV6aAX9jxOPAgy4B
Ik/BSfAqk9Q2SaMqto6hXVzl9nA6RtomK72f3JmpEEZM6bUmCU7Q3DCfMo3K4mwdwbkWg+5i
bTL5p58wY0D3x9RWt+pQnsSY0zLOOI6cp7b1Oa3NoiGL0UKb1dzCaiYLx8ZdT3gvMkrEhh0g
JAs7EJ6DGQ/WvhgI7OsQcS5YlGQ+WPs8GK59zt+0OkTcraVDMr1Qx4+Hbj6/8DnnsEhIlpP5
QN+Xg3OynAzPyXL6wyoX11NaMLB2XIDtYrDUYMy+/XdpvMkSdZjwplm7Xu7NnI33emsQQ3Nr
8N7EGsTQrBq8N6UGMbzdDMXQ8HednfCDHwxMSjBz27IrkkXLMdkOuadFZSLEWxmRuyUhIoxB
+Obu6XoC0Hn3VcF+XBWiSQSnmnUkt1WSprbzisFsRJxSv+0OAyI0lxfY4BNoNEnM0iHyPU0a
TLrvNNQjAt1jl7CpxJACZQJL/skTXPl2XRrU5viIOE2+yFfIXfpN9ign9jQVO/B0//GKb76e
X/Chq3Vw7+Jb6wTBXyClf97js2Uj25rDNq5qEA8xmwqQVZjH0jorK/S+ipzitLrXw7tewe82
2oLWGVeyQ7yobNT9NsriWjq3NlUSsgZQTWkf7FtxAClbVFGcQwtQjUMFAHQP0GtpvFuP6AIK
JLo0XQmS8t2jQdZVl8JWjUGbQG2yLvZVSG8O8WF5KL/NYKK3cVryCdK1ONgPih2JLq2z3376
fvf0gDHQfsb/PDz/5+nnv+4e7+DX3cPL+ennt7s/TlDg+eHn89P76SsuiJ9/f/njJ7VGdqfX
p9P3q293rw8n+eqyXys6N9rj8+tfV+enM4auOf/PnY7MZgScEMahlrpYexD4tj7BzK1NA8KY
JQZxVF9iygckEH2+d7Dqc+5Sx6KA2bCq4cpACqxiwCYPdNJYAauiG2PWLGRI8Z7NoiQ3IvwY
GfTwEHcROt2N2hlBi0pZamyVDjcXjpxSzV7/enl/vrp/fj1dPb9efTt9f5Eh/AgxGmVIfmIC
HvvwWEQs0Cetd2FSbklGd4rwP4GlsGWBPmllv5DqYSxhJwR7DR9siRhq/K4sfeqdfbNlSkBr
oU8KB4TYMOVq+OAHXRZgx7KvqTbrYLzI9qmHyPcpDyTijobLP5zd0fRp32yBhzNfumePUhA/
fv9+vv/l36e/ru7lYvz6evfy7S9vDVa18JoY+QshttN5dzCWMGJKjMNKgd221xkv4ptB2VeH
eDybBUuvg+Lj/RvGNri/ez89XMVPspcYOOI/5/dvV+Lt7fn+LFHR3fud1+0wzPx5ZGCg7cP/
xqOySG8xVhKz/zZJHdixo0zP4s/JgRmIrQDedTCMYiXDZD4+P9hmL1P3yh/zcL3yYY2/pENm
ncah/21a3TCzUqw5DzaNLLl2HZuaKQckC0yxOVxWvh0e2AiEuWbvTwleAnTjt717+zY0fJnw
27nlgEeuRwdFaYJxnN7e/RqqcDJm5gjBfiVHlsOuUrGLx/7EKLg/iVB4E4wiO/WXWb5s+YPj
m0VTZsayiA3N1iHbsvQ7nCWwquVLBx9XZRGJMWp2x1YETPUIxiqG2wAU49mc/3Q2EIu3p+DU
yY4TTfxWoqV/Vfin3U05k/Hc1GF/fvlGQjF0rMGfPoC1TcI0H+SJm7WjmnjcUGQxKFrcvWxH
gbqCEzjdwvnLAKFzDxoxTV/Lv4MckpuSuCqdxzg+/+fMduZguylwSLwqNbzvqJqG58cXDHRC
JWHTn3WqTIBuA9IvnD+QRi6m/j52rhV76PbCqsUrRdPOChSD58er/OPx99OriZDMNVrkddKG
JSdtRdVKpmjZ8xiWyykMxyMkhjtFEOEBPyUo4MfoSW0rZ5bE2OoU7bYo/P38++sdiOOvzx/v
5yeGXWMUTW7HyOiaihmaN4yXaFicWqPW5970dUTDcyhpOnnkYlt6MhbN7S6EG14NQhmmzg4u
kVyq3uL5wx3tZZrLXR5kuFvu7bKob7MsRsuANCvgO4y+iRay3K9STVPvV4NkTZnxNMfZaNmG
MerxSYiOSa5XUrkL6wVe9R4Qi2W4FKZs7str9Eau0ebJY2UoOfi4h+PVdhy1Zayu66XbBrYs
sRgUBpr9Qwqsb1d/gFr4dv76pMLH3H873f8blNB+V6hrBtuWg1Yeqz4PX//2008ONj42lbCH
yfveo9BZ20fLuWXOKfJIVLdMY3rDiSoONmG4w4tQQ8PaxP7OQJjaV0mOVcs7+/VvXXzdIWZS
iSSat6X9Rl5D2hVoT8AYK8tYhF4PogKSfOM8ORND3harBGQCmF3bQ908rQZxIQ/RKlXJh1v2
srFJ0jg32H5PFVXE2mih41kMSmO2gjrtXuHKsmMR1E1WerlKRRVusS4QhstjuN1IN5IqJsJj
CMoQsHQCCuaUwhc5wzZp9i39ikq98LMzjVL2ITGw/ePVLXcHSwimzKeiuoGVOiBWIAVMEl+u
nXYDftJf1/bCWPnCfWgpeZ003/voiTwqMqvPTAtAnugcmfqyEIru4C78C7JfOEpTsnG/qBPE
gYIYw5SMUK5kkFZY6infDhBeGHIJJvS9v94XRLB2U0Pebr7YQV8shBKwfLiWoZwNxViQK0z4
WBdpkdEQDj0UjeH2Eic4qNLGibouwgS22yGG7VQJYo+Wrq/2SyQFkt6VxCUW4SQ7MvzQfl4U
0K5uMTF8D89l2xQeOAd5OCJxiMDHbWi7drc+4kQUVW3TzqerpKHVQU9TUQFzKLZSoLOnUH6J
r4IHHRhMvR1f5a4CNqmaob5iGLBs3yrLujWdabGiv2zeYbZg+qVtBHmEhuFsQI7hsp1mZULi
tcOPdWSVViSRfFMBLJnMKcyzWVyHqC78JbeJG3ThLtaRYOJr4DfS+7vNbbcHfJWU2hNQ49u8
InUmDNdJiS+QiGG4QwGmitVLxqwU6LuV2GGYO7o9Zi+GPbNO9/XWuTvqiOTtSBY6GGmnvxGp
dUxKUBSXRePAlLQPRxemzR51KFhoZPGXGByAvmlZfRIbflnhtVK+uXyp5p3//WbNA9zcRdQ/
yegM/UbCktCX1/PT+79V3MXH09tX/zYO/gBLQM/LTQonftpZsq8HKT7vk7j5bdqtQC1DeiV0
FCDprgoUhOOqykG7txkf7LsW/n/AlH/6fZvu/mDbOz34/P30y/v5UctTb5L0XsFf/Z6uK6ha
ukLCLE4X/8uaiRKGFF9WZk44HxFJgzgg2UncAgHmVU9yWCfs7lT9q5XfL3rXZKIJLdbmYmTz
0I2c+IWqUtZFFYLcvc9D7euaYLDvMWfDPGQg8+HzGVG6Y61KuYnFTqaDD8u9PeZ/e1TlHEit
/nxv1l50+v3j61e8ZEqe3t5fPzDHhDX+mdgk0v+qsuRWC9hdcMU5jvpvoz8DyzHJolNZ/QZH
m/qEGZhk0DetM00+GV6CSMoM38RcqEQXiNeFDl+VDGa3iSyu7P/qbln6C+oOild+q6LgTUqS
bBdx094zxlUttOM+6DnYUrsiiWU+l40HxQ8+RcabpDTC9t+abTpK6BYXp+4SRCczw7b09WVX
mOXfhzwFFDdM2GhLOBJe3OREXZU6bJHURU7UR1WfxBJ1QMGVRyuzWjTikoxLCdfKVXqgGPkS
inOlo2Q3ha20URzGotmqi9GBSmAzw142L7l+WJnaYx2rDhyGlYqVs6j1hMLRnALvcNv5Izge
6VIQUIp3MB+NRgOU3TX32puwjkZe5tchPW110+WJvccTiZPUQEaINE2cR+rtBiM0qLIO0OZN
I5mRV8+Bc6JmPhsoOamaPc1MShCDZcMIFNWtdAxgJ0h2DZ3Q18rN3R8bH6k9JHYCd75vcVNY
XJ0oseRFz1ZA5DYqEfVG6LezNz1bJ1qkunlC+qvi+eXt5yvMYffxoo6d7d3TV9vlV2A8J2CO
BdEpCBgf8e3RqtiLWsW6QYPAvuzyxQ8cAYhstxjOpBE1J+jffIYDGo7pqNjYvb7cfOUOBYfp
wweeoAyrU6vS8ZFXQG1jtmHmRUDvwcGU7Y478qBdHLsBw5WdCS9ne3b+X28v5ye8sIXePH68
n/48wT9O7/f/+te//rtvs3zCI8veSEHWfb1QVrDQzHseYnSSiErcqCJy4K+8DUqisbPuMkat
c9/ER9u+rFcX9A8/804cnvzmRmGA3xU3oGhsvZpu6jjzPpMNc/Q9hIHu4AHQSFP/FsxcsLwg
rzV27mIVg2oqAaKaIlleIpH6iaKbehUlcHaA/gtSe7w3pY3d5aGpB9mOaIoM5a80jj2JUs+x
1KPNiVnTgcCAdfggqqWabj/+nhJch+uBj8I6UmXeiKSxnqsYpekfLGZTpBpFYEzrVGwYecBg
uAMFp0F+b3ULZXh0AdvndRxHsIuV1cwveKeO4wF++G8laD3cvd9doYR1j7Zj8tBeTwD/JEcL
P4hljskBa4dEykdmiSOz9A83UYzI20g0Ag26+EY8caNzE8Y40A/azrCCkcqbRKUdU1eI4Z4V
DBUDCa1bQX6loNAk87m3rnEWMfY3bD+RCN+m9kUwgyxLotOPoPhz7S9N2h930OFsUbpZJbWy
C9Ojnk+CaIyGcL7taDbNw9umYOPfyOQ60Gbij3qwdMvL2E0lyi1PE92Cfg+MYu2MiSpA7bNM
yqgwtHgb4JDg6xzcOZISBPrc5iSSItQfqlKsJSCbg6kM3PlQtYb0XJDWly6doQbGB3Q1Rnqi
RcCfBke7vklQRXc7bhWldcL6htiFQDnIYI+A5sp2y6vP2NjcijShf9Z2o93vUdAepXVOf8M/
C6TTPWCn6o4ZNgR39RnEq7XXVCW8dNDeYnKTiuZSfXqN6HXAcVw90XUuynpb+CvAIIx5w5mN
FfBijP1dFfIGU6vvtnQi4SLPMf0WdEJ9EA/wwnQnI8Fg4iqsnmPDekvIxUWeiOXNtof2Q4T3
ijrB1WD/9VJVT8rtr/sVdtFiba9Z+8aQlgO1iFRav3FMLs5XI4CbloNc0qrOJiU82aLpAnHI
NRzFKcjj3OHbDyFuGof91wJDatcuwBy6rG6mYqZp205M1G31EEDTeCf2y/N/Tq8v9+x5VYad
a+1NXFX2JY56pK02GchfIIHOp9ZihC/jbJ/Kdeg97+24U4T398CZbIOy3fJP+6yEE2EVp+06
lg/Tld7LhkpoKpjsI8wPV1JWJ60yew9Yrq2GI79D1QvDF+0GX88fye3VUd1MOa7UCgojWIM0
vqKmUfuLtirajA/JpBQVJ5sHjq6o0uGn/UhRNhEMH7FLe1NtG+Cb09s7Cp6o/4XP/+f0evfV
yrAnQ6cQo5+MpSIbwL5/72OtWOZDCYuPajm7c6Sw8hAdiNhhxLtWLsY+LoW1LDOeqKco1vIc
Hi7POp1o9AsbkaTU0oQQZa5z1CunDPvVjPXuOUFmtYvNcyKeYSFVou6uiv0FmjVqJgNo2hhj
Eb5kkd2Fhe0mrWwqNZwsxUHz2pJ4bCE9x0hB5pHHutKaHee4dBc11i2tdN+Rbio1ERckPEty
tCiWDpihjJKD7VCwMgqPZAGuyL1CX1IXaN87u8tVxpnCY6b7kBtGqX7OpyxTko3cxkfcp9x5
KbulrtvUfWztfQ3oOiy5sBrKBQrwTXH0PlPuOkNfufeDErjfJ5EDOjr37RLoW+kkuEJV3zEt
qv47fhoSCGfoUOP8y8p1kkfYZl5uoAWvkyoDLZfjtFAC8II06lhdtwjUOzTK0WzPqrBJLSSv
1kifqx/RWN5Ow2RhFsloMHxpfWdqr6lqHkEoEYMLBiSEEOTckllo0uWKddwxX1Lbrhpv3Bvy
hZ8jtaDTE3zindMKxOrkl84pYsHIkrrGTRMV4T6jsquycKwSxfGJMdK5h/6/GMMMQrMgAgA=

--a8Wt8u1KmwUX3Y2C--
