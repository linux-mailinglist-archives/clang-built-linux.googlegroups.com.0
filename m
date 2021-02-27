Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXNV5KAQMGQEAYZQDJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id F31E9326EBC
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 20:17:50 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id b20sf9178728pjh.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 11:17:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614453469; cv=pass;
        d=google.com; s=arc-20160816;
        b=cXoqZ2eQzN/7aPpjm+YtBenHolp5e0V7coQhlPZ8aV2Fcza6xiS4awAfwOvDoqd414
         7S6OYxCZAdUEeRUMKdsekScRoJGuvQTrHUkqPWO8wPNEbfm1pn+sy4GMyY+c0xjnCu1f
         pPNmVf1frSz9KhSBBwedFoEWBQLKPRIAD+ukxhGfpyuNS5RhZzIVbpFjr+VCi1neKEIS
         mxA/XWEWKRwDPVJXHn7qjG5Bt1tUFNIxdeBPPmO4pOxEKHuvIGx4yA59/wKL3/bdTN8Q
         2KF3odO1OsHeO60dKs/rO3lIFre1sjDAQaUpii1J16GeNiVUmyTwom/KowXKUZE8h7wQ
         G7SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=lDdcI4cJOkVvn0EEy7p7qlGJGCJglIQVh5TPFI9I30s=;
        b=ECWYmPr7zjdEK0Txqn7Z6y4eWmctT7X6HmMrppdbEuIlRwimFvqgmYqUfL1htszbUh
         Yawz+ZWJwEM76qD+wBSZjs9FxsOO/dPlU7OZY8/s5tkt6PvhwVLl0M5eEbcvH6P+6KZb
         8bOr/OgcZfawkuFsDsy9g50ISty8En686Gyl8K7l8Y8nibUds07rEfSkIEeu3UrCO3id
         MMqvtizOdTh7NQesa7gBWEVRBzyJGG+jRSr0drt06weNyImTjFJZht0ZF32ICCJ6Dctk
         ScfFAopu8ThS3ihjzOAl0er0waycUaEZfxZCfHefNAjg//ECEQCwHl4Bt9HwjL80SmHt
         0GMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lDdcI4cJOkVvn0EEy7p7qlGJGCJglIQVh5TPFI9I30s=;
        b=qi8hscgVp8uOmmPAtQANrvDBvudakxpRjDD8fsjZDGQXDUv9lDIiF7ki1LkYdaq1C2
         RI8wslYBwdFXeed+eLEIVhYMMmroSZ9SNpoG2UuvcYZ7tsBUnujyV/NVFMaSnpdyYjZD
         dqwIuL8CTnEc4UtNJ0CcQKas8ahgGjR/xoF6eaKB+E0fDP9BtGm+X1YD5FPovqTF+pNl
         YOQJU9ZMZ672PpnoEtHu9tngzXOW2Y8ibG042weVeifv27YrZC023ndoiZ0VzxI3rUFs
         Uu2CxFFl2W2kYQMYm/f5XrM2YuNkj0aD/w6iAfZLRbHzloPpHQv4S/epIPaIfHor2SNd
         3Jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lDdcI4cJOkVvn0EEy7p7qlGJGCJglIQVh5TPFI9I30s=;
        b=nvAkNldVK7LYirkzbgGFRxo+vmXSZp3cFrSPzFoxNTSu+vjJ7/xR0vaeh9SST1byly
         sXpZtQx6Uw8FIv+lfztTIb+lnp0aG6tUZOMoNlRBd8cbAFvQKBNdtIikgKb0u6o7RIGD
         te5jJi5WQpqFqXfoQgS94j6qUgnLWlvGoWvITyaWzPJ4R8FEyRonxDs6vrnOQ+Vk7f4z
         g7W21xw2KbwMJmocx92G+3oOuWM+LDYMuLl7OOgG1Xk1Hh086dFyU3FK7X3VPF61vLgi
         fzu1/Omm9TTspZKyeDFzB3sP8/RccqK7fMyTiD35rFFCJv9JAujQdOjQkzPiZjSV54Wv
         wbsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531a3mvafe67Cs6o6EQeOM26E8Z+KuymK5efzcn6gOh/tXSRMMXq
	dBpuxIFS3AZf+ymNErzF8Yo=
X-Google-Smtp-Source: ABdhPJyRvMRMLkEVqC0Qce6n8MhCnhP5xTrk4H0khhqFzR7WfLsG+94cvdM4Dh/DnnnGABA/6oLyXQ==
X-Received: by 2002:a05:6a00:148c:b029:1eb:aa7d:b1b4 with SMTP id v12-20020a056a00148cb02901ebaa7db1b4mr8675614pfu.8.1614453469333;
        Sat, 27 Feb 2021 11:17:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:953:: with SMTP id dw19ls2803413pjb.1.canary-gmail;
 Sat, 27 Feb 2021 11:17:48 -0800 (PST)
X-Received: by 2002:a17:90a:6587:: with SMTP id k7mr9492803pjj.34.1614453468797;
        Sat, 27 Feb 2021 11:17:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614453468; cv=none;
        d=google.com; s=arc-20160816;
        b=AqADCNohjd2jNcAL0CFLk7ZHgSuHJa8+D0CubiifrtcAIlv3dCOdV/DNhc/jGOkhiZ
         hwh68yoDNdW39ZesVLvnUp3ozhER7v2Li4aSLLP56mhSbDt5S6Y5+gv7G/6BcSu24qDL
         VZtY2iyFz4bvEL/iawntLgjw1uQQpuJ5V0g3EPA5zdjkiYPP73aZAHIC4Pr5tuNvOgx6
         K1RmmcY84zqAZuFbMUz+LDyBAKahwwe3U6PXYcE3tWT1q1p7b6AeKWBQ8N4QzjeJh05v
         f6aa/nc5bMiGNTxD/5Az8MmkaC3+JjQvGZACqLEq250pYTRuhXC/v/nfKQT2Nrp/kOF6
         W9Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=moF6SHoqcZgKlhx0zC4gV0ywItIY1S6f7mcpYE+5Rt8=;
        b=olqAwdxsSCXcMawzgVY46g4F20srjEWfJKHRGxWFVMWmV/y4FeQmybEq84eAQI+lko
         YSLIHjLTBCePIEmH2ZjYpzew5YUfxrfmCblxM3FxKo1oIPtk8PK79KFgYelsndca80KC
         JlJOgZdp//EIsEgSQ6P2b0HmvXk85pY3URNpwEf53iJ4z3hqYZR2EhiJwiXf9aYLDR5S
         RlcToMWTaYIiIiCjgIEItAEG0vWJUAs3p/i7vN0JZZ6uNkKBLaPCjOV3r2ldQJddmfBJ
         HSzUqhf+b91ZcxOF16xVcM+PNDXP2q1JhLDpzd4teqvqnGIgycCvAoBYlOoGWmposRVz
         VbXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id e130si637709pfh.3.2021.02.27.11.17.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 11:17:48 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: Ubyqz8UnlPHWDZIienwVKt3p9H1RWmJfw9WzH5zHRFm4pT7Igf5Rs/emi/xQ9BhUn97ySCgbON
 dgCCi9gYCahQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9908"; a="173790238"
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; 
   d="gz'50?scan'50,208,50";a="173790238"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Feb 2021 11:17:47 -0800
IronPort-SDR: mIUsg10z+rwUXk33OIb7EH+TlbZ+DOUJY7zkSgYknQFDVfk6jaLlbZIEhzgU1kbQXaYXQPPWlz
 dftEvkgJGw0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,211,1610438400"; 
   d="gz'50?scan'50,208,50";a="394391491"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 27 Feb 2021 11:17:44 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lG560-0003p5-8m; Sat, 27 Feb 2021 19:17:44 +0000
Date: Sun, 28 Feb 2021 03:17:35 +0800
From: kernel test robot <lkp@intel.com>
To: Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>
Subject: drivers/leds/blink/leds-lgm-sso.c:123:19: error: field has
 incomplete type 'struct gpio_chip'
Message-ID: <202102280329.hv7RoHLA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="/04w6evG8XlLl3ft"
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


--/04w6evG8XlLl3ft
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   5695e51619745d4fe3ec2506a2f0cd982c5e27a4
commit: c3987cd2bca34ddfec69027acedb2fae5ffcf7a0 leds: lgm: Add LED controller driver for LGM SoC
date:   8 days ago
config: powerpc64-randconfig-r002-20210227 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 83bc7815c4235786111aa2abf7193292e4a602f5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c3987cd2bca34ddfec69027acedb2fae5ffcf7a0
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout c3987cd2bca34ddfec69027acedb2fae5ffcf7a0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:62:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/leds/blink/leds-lgm-sso.c:18:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:64:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/leds/blink/leds-lgm-sso.c:18:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:66:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/leds/blink/leds-lgm-sso.c:18:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:68:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/leds/blink/leds-lgm-sso.c:18:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:70:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/leds/blink/leds-lgm-sso.c:18:
   In file included from include/linux/regmap.h:20:
   In file included from include/linux/iopoll.h:14:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:72:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/leds/blink/leds-lgm-sso.c:123:19: error: field has incomplete type 'struct gpio_chip'
           struct gpio_chip chip;
                            ^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
>> drivers/leds/blink/leds-lgm-sso.c:263:3: error: implicit declaration of function 'gpiod_set_value' [-Werror,-Wimplicit-function-declaration]
                   gpiod_set_value(led->gpiod, val);
                   ^
   drivers/leds/blink/leds-lgm-sso.c:263:3: note: did you mean 'gpio_set_value'?
   include/linux/gpio.h:168:20: note: 'gpio_set_value' declared here
   static inline void gpio_set_value(unsigned gpio, int value)
                      ^
   drivers/leds/blink/leds-lgm-sso.c:345:3: error: implicit declaration of function 'gpiod_set_value' [-Werror,-Wimplicit-function-declaration]
                   gpiod_set_value(led->gpiod, 1);
                   ^
>> drivers/leds/blink/leds-lgm-sso.c:405:30: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                       ^
>> drivers/leds/blink/leds-lgm-sso.c:405:23: warning: incompatible integer to pointer conversion initializing 'struct sso_led_priv *' with an expression of type 'int' [-Wint-conversion]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                ^      ~~~~~~~~~~~~~~~~~~~~~~~
   drivers/leds/blink/leds-lgm-sso.c:418:30: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                       ^
   drivers/leds/blink/leds-lgm-sso.c:418:23: warning: incompatible integer to pointer conversion initializing 'struct sso_led_priv *' with an expression of type 'int' [-Wint-conversion]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                ^      ~~~~~~~~~~~~~~~~~~~~~~~
   drivers/leds/blink/leds-lgm-sso.c:432:30: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                       ^
   drivers/leds/blink/leds-lgm-sso.c:432:23: warning: incompatible integer to pointer conversion initializing 'struct sso_led_priv *' with an expression of type 'int' [-Wint-conversion]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                ^      ~~~~~~~~~~~~~~~~~~~~~~~
   drivers/leds/blink/leds-lgm-sso.c:445:30: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                       ^
   drivers/leds/blink/leds-lgm-sso.c:445:23: warning: incompatible integer to pointer conversion initializing 'struct sso_led_priv *' with an expression of type 'int' [-Wint-conversion]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                ^      ~~~~~~~~~~~~~~~~~~~~~~~
   drivers/leds/blink/leds-lgm-sso.c:455:30: error: implicit declaration of function 'gpiochip_get_data' [-Werror,-Wimplicit-function-declaration]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                       ^
   drivers/leds/blink/leds-lgm-sso.c:455:23: warning: incompatible integer to pointer conversion initializing 'struct sso_led_priv *' with an expression of type 'int' [-Wint-conversion]
           struct sso_led_priv *priv = gpiochip_get_data(chip);
                                ^      ~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/leds/blink/leds-lgm-sso.c:467:4: error: incomplete definition of type 'struct gpio_chip'
           gc->request             = sso_gpio_request;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:468:4: error: incomplete definition of type 'struct gpio_chip'
           gc->free                = sso_gpio_free;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:469:4: error: incomplete definition of type 'struct gpio_chip'
           gc->get_direction       = sso_gpio_get_dir;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:470:4: error: incomplete definition of type 'struct gpio_chip'
           gc->direction_output    = sso_gpio_dir_out;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:471:4: error: incomplete definition of type 'struct gpio_chip'
           gc->get                 = sso_gpio_get;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:472:4: error: incomplete definition of type 'struct gpio_chip'
           gc->set                 = sso_gpio_set;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:474:4: error: incomplete definition of type 'struct gpio_chip'
           gc->label               = "lgm-sso";
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:475:4: error: incomplete definition of type 'struct gpio_chip'
           gc->base                = -1;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:477:4: error: incomplete definition of type 'struct gpio_chip'
           gc->ngpio               = priv->gpio.pins;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:478:4: error: incomplete definition of type 'struct gpio_chip'
           gc->parent              = dev;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   drivers/leds/blink/leds-lgm-sso.c:479:4: error: incomplete definition of type 'struct gpio_chip'
           gc->owner               = THIS_MODULE;
           ~~^
   include/linux/gpio.h:107:8: note: forward declaration of 'struct gpio_chip'
   struct gpio_chip;
          ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   17 warnings and 20 errors generated.


vim +123 drivers/leds/blink/leds-lgm-sso.c

   121	
   122	struct sso_gpio {
 > 123		struct gpio_chip chip;
   124		int shift_clk_freq;
   125		int edge;
   126		int freq;
   127		u32 pins;
   128		u32 alloc_bitmap;
   129	};
   130	
   131	struct sso_led_priv {
   132		struct regmap *mmap;
   133		struct device *dev;
   134		struct platform_device *pdev;
   135		struct clk *gclk;
   136		struct clk *fpid_clk;
   137		u32 fpid_clkrate;
   138		u32 gptc_clkrate;
   139		u32 freq[MAX_FREQ_RANK];
   140		struct list_head led_list;
   141		struct sso_gpio gpio;
   142	};
   143	
   144	static int sso_get_blink_rate_idx(struct sso_led_priv *priv, u32 rate)
   145	{
   146		int i;
   147	
   148		for (i = 0; i < MAX_FREQ_RANK; i++) {
   149			if (rate <= priv->freq[i])
   150				return i;
   151		}
   152	
   153		return -1;
   154	}
   155	
   156	static unsigned int sso_led_pin_to_group(u32 pin)
   157	{
   158		if (pin < LED_GRP0_PIN_MAX)
   159			return LED_GRP0_0_23;
   160		else if (pin < LED_GRP1_PIN_MAX)
   161			return LED_GRP1_24_28;
   162		else
   163			return LED_GRP2_29_31;
   164	}
   165	
   166	static u32 sso_led_get_freq_src(int freq_idx)
   167	{
   168		if (freq_idx < MAX_FPID_FREQ_RANK)
   169			return CLK_SRC_FPID;
   170		else if (freq_idx < MAX_GPTC_FREQ_RANK)
   171			return CLK_SRC_GPTC;
   172		else
   173			return CLK_SRC_GPTC_HS;
   174	}
   175	
   176	static u32 sso_led_pin_blink_off(u32 pin, unsigned int group)
   177	{
   178		if (group == LED_GRP2_29_31)
   179			return pin - LED_GRP1_PIN_MAX;
   180		else if (group == LED_GRP1_24_28)
   181			return pin - LED_GRP0_PIN_MAX;
   182		else	/* led 0 - 23 in led 32 location */
   183			return SSO_LED_MAX_NUM - LED_GRP1_PIN_MAX;
   184	}
   185	
   186	static struct sso_led
   187	*cdev_to_sso_led_data(struct led_classdev *led_cdev)
   188	{
   189		return container_of(led_cdev, struct sso_led, cdev);
   190	}
   191	
   192	static void sso_led_freq_set(struct sso_led_priv *priv, u32 pin, int freq_idx)
   193	{
   194		u32 reg, off, freq_src, val_freq;
   195		u32 low, high, val;
   196		unsigned int group;
   197	
   198		if (!freq_idx)
   199			return;
   200	
   201		group = sso_led_pin_to_group(pin);
   202		freq_src = sso_led_get_freq_src(freq_idx);
   203		off = sso_led_pin_blink_off(pin, group);
   204	
   205		if (group == LED_GRP0_0_23)
   206			return;
   207		else if (group == LED_GRP1_24_28)
   208			reg = LED_BLINK_H8_0;
   209		else
   210			reg = LED_BLINK_H8_1;
   211	
   212		if (freq_src == CLK_SRC_FPID)
   213			val_freq = freq_idx - 1;
   214		else if (freq_src == CLK_SRC_GPTC)
   215			val_freq = freq_idx - MAX_FPID_FREQ_RANK;
   216	
   217		/* set blink rate idx */
   218		if (freq_src != CLK_SRC_GPTC_HS) {
   219			low = GET_FREQ_OFFSET(off, freq_src);
   220			high = low + 2;
   221			val = val_freq << high;
   222			regmap_update_bits(priv->mmap, reg, GENMASK(high, low), val);
   223		}
   224	
   225		/* select clock source */
   226		low = GET_SRC_OFFSET(off);
   227		high = low + 2;
   228		val = freq_src << high;
   229		regmap_update_bits(priv->mmap, reg, GENMASK(high, low), val);
   230	}
   231	
   232	static void sso_led_brightness_set(struct led_classdev *led_cdev,
   233					   enum led_brightness brightness)
   234	{
   235		struct sso_led_priv *priv;
   236		struct sso_led_desc *desc;
   237		struct sso_led *led;
   238		int val;
   239	
   240		led = cdev_to_sso_led_data(led_cdev);
   241		priv = led->priv;
   242		desc = &led->desc;
   243	
   244		desc->brightness = brightness;
   245		regmap_write(priv->mmap, DUTY_CYCLE(desc->pin), brightness);
   246	
   247		if (brightness == LED_OFF)
   248			val = 0;
   249		else
   250			val = 1;
   251	
   252		/* HW blink off */
   253		if (desc->hw_blink && !val && desc->blinking) {
   254			desc->blinking = 0;
   255			regmap_update_bits(priv->mmap, SSO_CON2, BIT(desc->pin), 0);
   256		} else if (desc->hw_blink && val && !desc->blinking) {
   257			desc->blinking = 1;
   258			regmap_update_bits(priv->mmap, SSO_CON2, BIT(desc->pin),
   259					   1 << desc->pin);
   260		}
   261	
   262		if (!desc->hw_trig && led->gpiod)
 > 263			gpiod_set_value(led->gpiod, val);
   264	}
   265	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102280329.hv7RoHLA-lkp%40intel.com.

--/04w6evG8XlLl3ft
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICNGSOmAAAy5jb25maWcAnFxbk9u2kn4/v4KVvCQPcSTNxePdmgcIBEVEvA0BSpp5Qcka
2tFmRvJKmsT599sN3gASnKTWVcfH7Ma10ZevG1B+/M+PHnm7HF+3l/1u+/Lyt/e1PJSn7aV8
9r7sX8r/9vzUS1LpMZ/LD9A42h/evv/67fhXefq2824+TKcfJr+cdlNvWZ4O5YtHj4cv+69v
MML+ePjPj/+haRLwhaJUrVgueJooyTby/ofdy/bw1fuzPJ2hnTe9+jD5MPF++rq//Nevv8Lf
r/vT6Xj69eXlz1f17XT8n3J38e6uPu8+3k1vdtezq5uPd7fT6XS7nW0/f/k4/XQ1+zQrr7e3
k9mXm59/aGZddNPeTxpi5A9p0I4LRSOSLO7/NhoCMYr8jqRbtN2nVxP40zY3BrY5MHpIhCIi
VotUpsZwNkOlhcwK6eTzJOIJM1hpImReUJnmoqPy/EGt03zZUeYFj3zJY6YkmUdMiTQ3JpBh
zghsMwlS+AuaCOwKx/ajt9B68OKdy8vbt+4g53m6ZImCcxRxZkyccKlYslIkB0nwmMv7qxmM
0q42zjjMLpmQ3v7sHY4XHLgVXUpJ1Mjuhx9cZEUKU3J6W0qQSBrtQ7JiasnyhEVq8cSN5TmJ
PgtIEUm9dmOUhhymQiYkZvc//HQ4HkrQqnY74lGseEYdO8lSwTcqfihYYRzWmkgaqobYSSVP
hVAxi9P8UREpCQ3NIdt2hWARnztZpAC7dKxDi4LkMKtuAQsGUUbN2YKaeOe3z+e/z5fytTvb
BUtYzqnWIhGm624DfY6K2IpFbj4NTSEjxU9jwhObFqQ5ZX6tgNw0O5GRXDBsZMrKnMFn82IR
CFsg5eHZO37pba2/Pm0Iq04aPTYFjVvCzhIpHMw4FarIfCJZI0e5fwUH5hKl5HQJRsJAWIa5
JakKn9AY4jQxNwfEDOZIfe7SqaoX9yPb/NGPKpkTurTE1+dUkjZn0+O5dIYvQpUzoaWkvUor
1cFGW33PGYszCWMm1hwNfZVGRSJJ/ujU3rqVy47q/jSF7o24aVb8KrfnP7wLLMfbwtLOl+3l
7G13u+Pb4bI/fO0OYMVz6J0VilA9RiWjdmZ9PjbbuULHMCohkq+YY9GuxqA9tuJrFXQvKhPc
qdP/Yt9aPjktPOHSxeRRAa9bB3wotgGVM3RTWC10nx4JgoPQXWuLcLAGpMJnLjoqZ8PozsRm
KR2a4rlTJPZW7agw58nMWBxfVv+4f+1TQMtSq2EIM6Lmv1byFLvfy+e3l/LkfSm3l7dTedbk
egkObi9u80ROZ3eGaS7ytMiEuWdw/nThUKWqqRI0ZAb8CAjPlZNDA6HmJPHX3JehOQFopNFh
fKaM+9bCanLux8RpGDU/ADt9Yvn4uD5bcdv91AxQarAC+d7goKDBe3wdBxxTixSNu25DJDHE
FDK6zFI4GHR0gJ0Ml6oFpGGG7mkwHgVI12fgkyg4f3+co1YzS/YsIo+O9c2jJcpFA4/cGE5/
kxiGFGmBTrsDJbnfAy9AmAPBns9X0dPIeQFv8zTGiZ7Scda1YwfAeBLSWPo8TdFZazszz5qq
NAOPx58YxiF9omkek4S6/Ge/tYB/dFNoSAPm7aNboCk4FjxbxRBtoktODUf775uleRaSBBBa
nljnSmUELpKyTOqcBZ2Ssdss6D5aR9oZNcBHDqDNZRZiwWQMjk4NQEilTB25HS6ABULwH0Wb
Rrhu/Rpo+NJ5pD2LaeksCkBauWuWOQE4FhS9RRWAMtwjZWkUOTmCLxISBb6TqXcxwtOQbIQn
QvChjlUTnprr5akq8rEoT/wVhz3WsheO0WCOOclzznIjqcC2j7EYUpR1sC1VCxKdAuIHc3Gg
T83kjrlRk3RKEhgGp7E9BpluZQr7zwH1ifebiceE6rO2fIdgD27Zx3Pm+87QoS0STVr1MXNG
p5PrBrbVlYGsPH05nl63h13psT/LAwAYApGUIoQBcNnhFXvENt7+y2FaMBZXY1QQsmcgIirm
w/BhpatEQq7rtiERkbnLtGFQe5LUnbRhfziQfMGaZNM5GjTC8BpxAdEKXEAa26Ob/JDkPqCy
MRMpggCy74zAjKAjkFZD6HOi7jTgkZVOaM+nI6Z1GHZ1oO2f0dv22LPTcVeez8cTpA3fvh1P
lwrDty0xZiyvhLp1BZiWz5QesZ+LZQak7NratCBDDLkQA6oVtpa9XnFcQDYDJhO6ZkC25Wmh
tXbcbsHH2cje/DTN56x2qbVMhwJrAyPsZI62mPicGHHq9nrODQhfrc20/DgmgOESxMQSfADZ
YFXmnQaQpU/v3A0am2gGmn78F+1wvKnlLgSTFbKrEiXA+EZ6zABCNSztd1TAc9BuGhbJcqSd
Vmp3sxwTLnF/M233LCS4xyrDEEWW2bUwTYYeQUQWYsjH2gBAvSGjUcpwzSCDlpbaGDCB5NFj
HZmNJiSpyxJpIUH2k74TcnkGDVTTmEuwfwLZpDZPMzLpmo8+l34k4HOWVygIwYPgc7OooJvU
28NSR57OWc96IFJWftNhWR2PEyruZ26e/x5vBbyJZSdkbezrKU3AZcaGymSLqqyp61Hi/rp2
PS/bCwYJl+cRIFd3BalBNiLCDKLyDc4WS4gti8JdymQZyQDnkpxgNcByFbCdNKiQMsJ8gEk8
caI6aAieA2DkBs6ZZ9yof3jBqfzft/Kw+9s777YvVcmjUxmwBwgJvUDeVREcvZuB+fNL6T2f
9n+WJyC10yHZqOLD+HUdypoTaWqRrlREACo4s0GzVcySYnQIyaxcpDrPdM3yjLYr8ny9UCsd
H29jCqDaj0Ex920YNOTN1PLNfY0ykc3xG152nM2TCJ/UdDJxag+wZjejrCu7lzXcxEiGnu6n
xg1D5RLCHMtaViZCZAietIi0ybsq79ALEyUhARBRLFP33AFLtH3VReowlVlULP6pTQ7/shHu
km2Yq7ap6eC+B24IMWvFzIp8gXjl0Uh+mcYwZG6rokEeu2mgOQR25Rfm3UXl9ljEqGz2EEPe
GPVaQFiQwK532++ui9YuNo8itiBR46TVikQFu598v3kut8+fy/LLpPpjWv/1Uoe1nn/VkU6E
PIBA0TrQ+ganJl83ZJ3z9tvqSjAGb+1IU0CM+f30qhVN7Osrpq7owDbgp5QkAFQB/XX0zAKi
WTxaiAEWjYxot35Q2kwVCwJOOaLzGgA7gH5jVdqs5m9nw8wMTx3NLTs127U4AK/KwABofQ1k
Rl+QaBoEAErgRHYT+0+no/ryCMbI32uWhY+CQwrWNuw3wIBQkIg/NVUI655te9r9vr+UO6wk
/vJcfoMNQXIz3HSlwdQqXVWG4qJBWt+roPCYVDzzDNMK+buike7U8I3h++jgN7Ap8P9zU76t
2B8FGliARtlx00z2B9GTdcpRJCCuRYJlOUqZ6Oe1kBjrkq/kiZqLNTEv/HLmHpyDkBCqAlP2
WIMtVdSxkcaWXw+DV6RBr26k+UGRUA3AWJ6nAFGT3xi1y1K6WRLzHkXvWY8YAjQZ4k/EDDqM
Vj7B4VDBAUgePDblxd7wIka/V9+39neFcE9BElpB6Po8FMn6i8Q6Qo9k5POOXWHmitBa13Ml
wwtt3cM1iI05OzpWSOqF2a69k5tLPTHVg9ASQucqaGA67WTjdcQ/NKm8s1Wx1BOvCSgy5iHo
aEBukq+IxDxycD7VoStBAgbOONvQsB9o14wsMcoxLCQR+lDw3D2djhZ4i9pcqjskIhjFFOMd
FsZlK68YdBk07GB2zaEEoMlogNBT0tG7TM0GjcWE/KlHdl/w/UML+zqucgjOOzmzBRhFE+QZ
5YF58QWsIgJbR0+EFVQs7jnGZxtIx8Di9fU5qqnDNnV3XeUZVr2Hqfp7eb6Rwne9kxWkHOCz
jJ40wnQKC4ZrsEGDkeLTCr4QBWw48S2kXiX3VzOYR0vNVXhtdoQBUcm0TtjaMdDYzdKcq9za
qfKgRF8FTZqufvm8PZfP3h8VWvh2On7Zv1hXwNhoEPLb1WluHdZUr+Le5znzqXfX0K+T/UN0
b+tRaNgixuVMejrWV7oazUUpsU6oZhYJMpxJhuHjXYXuqr/IafvwxpZN04C77LlmoprkVbzu
92tY+jrrn0dQmyfHIFjDXKuYC1Hdx8cM8DcWb2JdunA/oknASEGvH+N56izxy5zHTaulXdc3
qWodcqmLrgYibvwAZD54JOlS3x929X3UeZeai2RqzlI98gI/A4AGT3DgKNriDCREMYT8PF47
VDuOebqeOxiAhBUkZnlEsgwlB9m6FrKWXmNb7Hu5e7tsP0NejC8APV1tvxgIdM6TIJY2tIQP
G37WjQTNeSYHZDg6w4tizzput4Yztgq9xLh8PZ7+9uLtYfu1fHXC5HfzuSaVi0kCgNwKW20e
V/Ech1Z3tkcD0fo6A4Z+Znxsh1vBX+ik++lhBQmJkGpR9HPSJWOZvrixNaHeExdp1LvPFFkE
fjmT2sVC5MOCmO276UgdQKOXnKFyWQEw5ou8NwmGa1wh3iMYqRQ6e9QnJduydJf9C9cNXfPQ
TsslBpXH7vfXk0+3beZmFnqXVtZJAQQlGly4snyzRAgfFf6wujfEwOUKkIulaXH/sevylKWp
Sx+e5oXlgZ+0/05d1Y4GqVe14DoVMUoFfnNJM4RCIAUUAmZUllsFrRmrdXSBWLIKuxDrvmHc
ijr5t2+vkvLy1/H0BwQ3V7kLFGvJ3G85wKu574nB07lWDVR8wYoAMia5Vc1qWKBrGnyAMOJs
7E4XGleo1H3jK10aKWTWvRKa59xfsP63inPjxGoaDSzdXEUAV+4ms+mDU+spivXV/lZ5WlhQ
O4qo9THrehBJzKIKviQBfx4xTe4eOWW+n/U+wftQU+E2sxsLmZHMfWGZhan7sDhjDDd6c23M
1NJUEtX/0G8k4MQSabtboy0+2hlRoZjQqtHYQY8+bvKpEQb9ROCrnxSfFBvHCqpA0PesXLTm
nyvjzDtmQp3kgbcxeGjZo48NKxm4PBJsEqABpLecGA/Z4iwSPQPRNLUQ7gc92CARoWOCUFjp
20Mu33nUhcNkOTdfsncMGhHAZUb5Qav3Rs0L8ajwbYghswfzIwvUb7zvcLxLeb401xy14xqw
egzTSXVxNs6Jr5dcXSlsd3+UFy/fPu+PCNwvx93xxcAPBG3j1fxSPoGwICJiV7Zhd3kaO6Wd
p8KKTnpisvkwu/EO9Raeyz/3u+YCwpg+XgK47ea/RQdr6Gf2wLDoYGrsI95rYR0k8DdAN3Sv
5YT+xnGmjyTW7WsZvrs+I4ASF4yYS2tqfELBfJciActEQfrTTEGBEItA/1TEpNUh27It2ZYW
3Q+epAoYkUXuqEJUpeWXt/JyPF5+Hx6GOUhI+VwWwu0gG74ADXPvFtgFloVfhzQVXvc21DDm
VLhyJKMFkeHVcqQ3Wdxu3KG3Xi6NZ5Ord1tkZDpx6UzNDkAe/R35Mpr2lECL5soFiGpmVDBK
cn/YbQX/c3eL81VkTY0EhfK3qXJZ07orgrHzbvE8n6vcTrnXHKtuwkFRloqusY5lJ0KaZD80
1iSRPQ4a8ZWFUYMFhr3pQGNbxqEsn8/e5eh9LmF3mCw9Y6Lk1QFzaviTmoIAEjFhqK+BdLmy
LTTkwZJHhlCr78YwO69WkXmSFW6LQ3//KXOyKOGBK7oFtJsWPiDMLThCBYuYUG5qSE3CbNk9
pObWRmf16ilVHW62Jy/Yly/4lOz19e2w3+mfsHk/QY+fa1WxfAKOJLgLRiIHM6npZNKfOvBd
Bq07JDdXV/aGNUlZNoZkW/Ubirudsp2OXrOsJTmgoSgHEt5kyHIftO756SbsvdJuo/G/Emmb
4QhA85EBuFGPeGAQorUsEquaFxAeYUHDKETIUEKe1gCm/tVSD2T4lQfw++E3o9ofddkXjSF7
6lZSfevim6JctKCC/rLbnp69z6f981etLd0V335XT+Olw/ypqOqhIYuykYQFUL6Ms7F3ZpIk
PsFy7tjPbPTwAc/jNeS11e8kBiYQ7E+vf21Ppfdy3D7rZyCNlNd6p6aYW5LOV30Y0XoRjffG
zWxGmazrpW9squ26BjXYcMbVq1bTB3Utm0KhUwP7O2rdLdE3zyuz8tQgPV1adPPGqPrpEjhv
+wakprMVLG/kSLEBApe6t6reTbhqk9iI6Ie7dVN9ydgppPEwUv+EoWIbDyYWVqWh+gYwy2OA
5YbLr+nmtV5Li/mgIVYaBy2rX+4NRlRkZV56+QimQ9APrTyBqQfICiBVZe27e7uePjSl9o1A
56ebwJduJLMiAPjsDOssMWYkrgp0yFUllC4BrUiuF8PGu4O+Q4P/S/R9puFHAAcMHksvkl6l
XDpTWWkgiDQw/401Ftm7Ww90WVJat5VArCpPTtYynf9mLgNI/mNCYu4CbsCsi8fWGNbRw3dV
QOq+oQPLV3DkVgG1YmBe3pu/qlW7fkKDi9MlvKqESFPIhlhiTFZdi+F7zPqeWN+I1g83jbqV
Jg3RwCpmnjAeDzYhzaRXpej9eedCB8S/md1slJ+lrroJeJD4sf8TV9D4KBWYqKCQOB1xG3h2
wFSMZlf1T27cQSEnLnCywQfeAP38gBmgCwvyKpfCSh2zlX6e6kZyM6fgGMswG3a8u6w4kLBA
dul4NllxP13Rza0lk4a+2VzfOi2vN2P1u9zy+/bs8cP5cnp71T8ROP8OYeDZu5y2hzO28172
B0D+cHj7b/hP85D/H73Ne+9EpLlQERdXfWha5f8vl/K09YJsQbwvTXx6Pv51wBjlvR7xJ4Xe
T/hOc38qYRkz+nPnzRgNDX/bHlqN/brKrqmUFgDifnvPI6jgTQrUnVezDWDirYnpe10drCId
T2SKr+t0hBqpYlW/BzRvMznvl7BGfocEJm1VTqtvNZ1NpkPi5GZIzMnaVO+aSokLkjfMNP40
+f59MFRNN7PNZhIeK+6aJoVsezJzP/zU1Rx3iTULHyNuIHuxBopVtcWf0ed8sUBUELqcZcDx
ITF2q3/YCjL3sOl4wYPE/shg+Gv9eqyG8lAAngI4bFM3d3cfP93Oa2qX2OcA3LAi1Ru+a0Dj
m+vp9eS9Bh83m83I+oB7d313N7VXg9SPVR9zMZRT4pPRmai+DhvwGydOQJWrjZhjcppFhRjp
E2Geby4MH4VGarMmjzY9AvtjkEFOp9RmxAQCKOTfvVkb8nSyGJkaAnnOot5gQEvxP9gwGK5l
yOk746WCxdwesvp1ARksEBNJ+RuZTocnZ9zK3E2uxg72wZjLePJLIsmWoyMCKGCCDE7DKNHS
ZbN/14VQLGh/SiHZdLJx1zckywmYMafjM/rZ3dXdbDamU8CV9G7aU1/d6fquvxRNvv34/ly3
n0bmWnHAjIL1B60BwgKcxCzHv8d1aSnuPn26iY3EOPZ52v3m2yRaeQbAt9gq1TX9AAf2iHMu
5/if5elRKb7V4BB0LK1FVsjBdAIGLNfCsUW8auKlRRWUYjRy1/J1k5RKZl+f2/z/Y+zJttvG
lfwVP81bzxVJbZ45eYBASkLMzQQpUXnR8U3c3TnXifvEyZ3pvx8UwAUFFOR5SLdVVSzsQKE2
iPpxuYjuQ+Uq9HaxXk67MCiLi18vP5UQ8fy/WP0/9BjEgLgtN1ATZKwuMr1tBsAUBViYD2Nx
NZc3NnyFvfZAQslYxKfT8VQjTxf187qTsL/TCwTwSmhXMmxAVVGPzoRBdFHX4W91r4DiJ0RR
hb/V9+sgVl++25bcJXI7Ml/mR+RbDdhJTUFaKTWFLBhKxwEwcFvRf60tLyG500LSIGVhBERw
zLMBIA/snLVHTFVnByY759OmzbfRaoG/NsAYA3NWbrZ9j4HqX4nv2WNFQRCINpQVAVPcX6PN
lmGuWnBKuWPssjDqglDQiJITiGOnukNYeK+2gCp2pFp36vnifr2IqI9lc78JRP1YJFsyxGci
UPvQZuV274i5JzGHfB0vGFWjEmSI7a3yQFjZ+SwLLjfbZEHxbMpUSJ0e6wZb6EfZ7WTWji5P
5CgZEoxjubp6rNZJjCcoK+NNvMCwXZY/CJRKSVM2hdoCutCUy2pZlfF2u8W8Hngc3S/8hfaJ
dQ1WB00N6LdxEi1Aer/REw8sLwQ5OI9KnjmfSUMqkBxlRX2lJMZV1EfBWSbqo1MhhJYiaxp2
pS8bQHDK1wty3PnxPr45ddkjjyJvYZg9JFF3V2pRnXOGxg9+X09ZmVaNumoUSrYLfDQR4Xw3
EPAW8jbHnxW2IcFGjTcUGsvVpbsK1VhL8++UrMPApEB+MLCYyGuo/eEg4ofKLrJUsPf7a5Ls
6eY1DJtNEM4I2wGkFDRCtqEat7RZySb5dEkZrQazqfQFNCtLRrR9MNU07MLRIqbXneWQNB6w
yB5lGZzmC59MESuTYu/7X79+BtUr2nhqOf7BT2No/YZh+z2oSnPHl9rgjHPpQ0FOHENSsLYR
PZCMUmD39vzjBVKIfYV0Gb8/OWrL4bMK/J2zU5Dvx+qi0G4DshMJBGeob3aveFY3p/iH7LKr
WEOJSlb9kMocANdaxrRsrrEyawTp0GvQxoWu6vgR3Qw0DlQS9xva/cxQnGTf94yaf0Phl5LV
+l4Ip+3fXm/KIXJ3gI8QdeixvDpQiAQ5nc7wlLr2WGhBMOPVrmEE/LCPH+zemBEN6byP8EpQ
p7/tICS2IPXiE5HeJBlviUpJkWZnUSJz5IRsi9QSgGd2JgliCIFt5y4yTmICeYZsOlVDNrFg
B7VRM/qmODcEvO6rhkolg2l2KJ3QjANXbVsunnvhLFL1g5wgn45ZqcTgW4XC6u4Co9fXjFqX
E76WQDF4EoSRamMjWlT3DSfAeynYeudujToez87foX8bAZBnnKXzBzZK1OYIm3U2M/LISnUs
UKKDRfSwUz/IYsd7lVuu2XnUjFFCxdJrBmw5kjeZHZlmAcFmCAnGRIaOAJuCpUpWx+YRkmqz
3WzoMjTu3qq4h3N9QzAFfW22afilbWUdUu37lEsvQxVFQ/v+2JRgwlQ9SDf7yIpaHkW4HIjc
Bz+p0NFh0+67j6KVHV3SoSs/ZXT/ZnkV6lg9Y65ndWGM3im8MCcXWbYos14EyygeNlH8Dvc6
KwudiJVsgP67walvPPxZBKZ3K66sSJJVf20lD1VS6zaqAvLdte/NH/23aOMoCVRXcj2ggTmh
0OqW05vpF2KgKFbuQsYxTQam1k607F1KA3VX1CAuJf3iuuvalgzTMTS85hDBfm4MncdedSl4
krRZ7KIgEr9WcrNBu7XVuRkKyG/sfHbJnFvBUI8iWty7tE12gHQjSio/aonHl1s7z3UQ1+Jc
qHt9VmeN3zuAOwklrAS/ZmmfJ1SXazA+lwxKFFJdEjq/cQySuHvUacb0GZarv3bMOn2bQvib
lgbSu5RG7ReJ5SszQNzpqeFxOtiWXfoo8iCxC0kWHmTpVXOfUN1qUKvVaDY+Pv34om3W4h/V
HdxqUNAdqjfhg+FQ6J9XsV0sralqgOq/OM2WAedip8R8lxgsuw7hYMboa3klPoCLbMMGjGW8
B5wCFoGcfObbhpMsa1yzzmnrgRWZkzhsgFxLuVptCXi+tK36VM9Pac+p66a5Wf359OPps7rr
+b5RbWu5IJ/sdwcqNdFy7X5VShNkKG3KkcDyrjz7MEU3gyHyM3XyXUNo2P32WreXgKeLOn75
xcOP2BTcH8DZbYiBNl4Nzz++Pr34ARWDDKb9nzjOvj6gtk5WJuMI9Pr9N414M3y194fvLWE4
FKxPIjtLE4L37kxjxjs3p4+0gQI7k1tAv78HpBR7SC/6zQVzXva1T63BFjO3ipJHayE3PaVN
HUjU9Xid9L3He4DfYD4sw48tO0BXhIsYCDvm7ggYB12tA6Q/LG8Q7ViXNnDMRdFKneShWmna
oe7hmg37jNpmyMphdHDQ1J7ijRjsM2VzNe2JvFrq7Ef17W5Tv7JeO7uKg+BqoTT+vKib1APC
nMSe4w5Chw/MNRs9hPDi86psMjGVKa3bgRxXJn3e8XTdXdqMH+1klxqt3ReN42wGVPw9/NUk
T/5gjfKhytO9kEfXmje7KlwPkrYCD6kjHfviuAee+OwGbMG6dHcg5j54EzseqHM57YVI4jzu
q0LdBit/Kom6EENzGwdaQ4j6kAp9Fqk0Rieg1C6plEwFJMacb1Qye2arUTRaYilWg6SgE7dr
rH4NJa1or0VTKRBEqz0VKqJOlCkXrgsyOaRFZZxLZ+X6hN+xZUIbTmYa07vvEHHeNqSeYCbp
wQ6jtWqD9R3U0Hefw6cxGJh1jCe3NAgQhgCho0skis7QpQVV15MYSb71FLZkSRHBioyfqeFG
3rnq9wMC6FQyVvez8qDz6pvut25VXP2rLSusNVB14dDB80v4xmWgHsBTRMzgK29WlH0KSIy9
BzE7qVqAdqW/kPzaJPlUxyHpXe3r+QX5tIwQcM62+tuXvybJeuiLppOtTgs6BVkYXXnMKT9a
AFM+Gja5RU2G3SH/fui4MWLZAhVM4txPANPTwMhZqleKpzdoF3/9/vPH6wu8hEGo9LXnvz5Q
6YpcWa8Dj65ZeUAvXAFsdv5B/LjqJ+cJAYRPM0g1D8EngTLTvLTld9BH4m0MQCAX7fOsdyYA
otHJYskJAtjRu8zlbES0wEdFLzium5EhXCafLuVjUV8Pj+HyWZGOlhc9XrOvEZkZFwrHVvPp
03qIkB7G3N62aj18YPlxKphXVQ2BO6H8FEDT5tk67hd41McYaxekNxh0kk4YeVGztdC5SRoy
S4cedRPOYHO2Y1qOtgVT/bhqIxS8jTbdfaW4+zzN9im+S4NfvoKr+NwvwEAJMHbwR40MkOpn
ICJZYUZ+/l0DPlPnBMRzPZgN9xuB0pcjEnOotS5wKmh47+/1h12Wwba1qsbr53+RCdzb+hqt
tlvzZpbXhExHo94Z52X9ZFEwecfPV/XZ893PP5/vnr58+QoBPUqG1AW//SfK8OvVx6qOKNWR
TD87AS123k8bMGfkrHCOYP54TYl++5+v6tINET7e5FefmH3ymsp4eb9w2E246EzLkzONPNBv
PxGl27WSL0//xhZcxXJYLEr8ID0uRgJZ2L5TExhaYms3MWIbROj3mnYouR2isPWx+NN1ABEH
vtgGq5e4I2ChKBU6pghVMEmUZMEDzUoCPbJa9DRis12EEFGgvdkCKYLw2FuLQOfWhRgrMpBA
YyGDWG6pfWyoKwbU4BoP+LlaY5whSzlkNVEz1+KloxTNBxNsIDI6a3twRgQ0fE1JbTaB3WUI
HlEsd48xBAiQK26kUffXaBNHNBHs2xBOIWQdbRbU+xQjhWKzvdc6XO9jJaCzA5kMfazDeBG1
JeRC6/OtK4cCDBdakCR8BdXTTyVyUfouE4fE0k0SWUbHGd5u+mhBI5IIraMJJZMNNVITXkly
e3UtGU5hmkWdhV4pGUjUNUDCO2dcieY3ChvJatn5jRC7gtmbmwWvs56qmADPcejsG0XmLY/v
lxuf7YDA1oURCTPNcYuzUfebGyVqzeEmjgmuzWYVLxKyj1Me0NYNtS025PCWLTeHhpDO8zA+
aa1jcG7SgK1mTzpZzRWVm+0mIoZJB8UU0eK6K/i0KMZdBqqI00gNoDHon1apDDQ6JzX4FZA5
IAeiTL/OU4LyeVBFqDWYM7VtWO9TjMQ6GNcr59yIIRN9I+qAlmcgHaNY4fkDJQzU17OQpJWT
oNdPAuo4aqoSNqVJkgz+JDdYv8/y/1tJoIO7m/6PdUZY6LlGlumh7qgRVtcLeNhiRN3sTvK9
A48KoiNocdE64m4VR6mxxnkMziDz8yrz0pCUFLqDdIP+aywAtk49IAI3UUiUhomucp+j54o0
cMgTcCgYPF1butjhpDeBKHAv/P3X9886O0cwJdU+9cybANOaFX1R5hUlb840x5ynOF5HoQrQ
edBvFgI6ZfeLVRy4Y2sCc5XHPHmUQIRg6OYONEexXsbRtabj248txItLwS3zLHz1kBW1/SC4
Lq1dJ/cbu1uyT/21puNKdS8OspAFOok6a/R9E/OWxWoR2azZrl8tFp4fDWqabIuaWpoad5Hc
zuYJMOSCwWwHOo2t5Xp1H8U01FXHadxj0W8pdyQ9FRrxqSoZrsEAxAeo7iq53OTxElOfi1W0
iN15CNCIDr4w6O09edZOyK3PcZtE3iyyCXh6j5wNAIgOrw92vs1by2xSCo7uE8g8P/lUhFzb
ZwoT7Huq8lZJn5bVfyIYnqHQ9oMO6Q9mGtiZTUrliYrg5MzjGQErIk6oTwCz2oa+ud/YU2nG
1WdqY5nxjzrDnZugxEbqwAY31clAoKcyaM6J+vqT3+pI0DhQH+kSc7YTO8tpseGjgntuIL/S
ztu5aJDfjCJMM3jLlIyq11gnql7BZjcgZJ9p1M7Xr44p5fOlkALJWgNgiJyfgQXPkMusgGsn
2FQTBMPeNhAK0GSs+GRPGijhUDXwqpDLURw6dYVCoBYy8IkG9eqoZkSEIHy2PS5cm90IkHFz
KCCFim03g/dncUn9ruqv6Sl1+rOtaDOiDsi48oyPabtvUBEUJnXUj6e//vz6+Y1SwaVYvWOy
SyiYnY1kTOpogU2upx9P357v/vnr999Ba++aova76TWgvy1YWcHrITZo7p4pt5RqToq+4urf
XuR5k3HLnjwgeFVfGDwC6CIE+FDvcoE/UacXzQsQJC9A0Lz2ajWKQ+k9qqhQuwqezRrhU4cD
RoyvMJKDqShUMa2S+n0ipxVVLVF1lKieNZANyfYZUnAdA2pSYUmEaEWuGzUk7PaH9c/RX8gT
5dTXpwOL1qgC3SmTKExNwapaXYKqUAIraEqUalEr0FAtvWCWEMXY7QMfdGmO6qTu69dD3y5X
tvVTwX3NCTTJHGwIVkB21rIqMgzdbdexHUg5w9T4FXjW102mX+aG6W6d5uQKMnmonj7/6+Xr
H3/+vPuPOyXxBoOAFM4ky/UC5gGTt6dktXi0shIDVOTiPo57TArAxA6NBGCbVvGywLDT4RAv
k5gtMRi8A+BZbnuuA5wVMlnf7w8LSpbTdSykGuAH5MQI8GO/TVYbXPOqLZI4XlmCH2zaufYO
RL2AFHojRR1QoM8U+tA952SA9Uyl8LYm9Z2hGr9XiwXUBtloN+Gv399eX3QGoL9env4eFhi1
R6svb7gQmTRQ3HXkQGD1/7wrSvlhu6DxTXWWH+KVtcjgUVCTU40qe7ZM327FNHjVwdqR4NdV
R9eqnamkEWZvoTA879o4XtrryDvhpkt01ZW2ZxL8vKpbsncJxRhYr2o+kRHcEjEs06tjQANQ
bceNA0Bmj/PUtOBKJipEKjBQ1QLUD5aJUQELJZI3gPJKGoBzU2YwBGYfRBlI+DjQ6foHKeA9
yFv4wR4Kby9UTbigQTbRzwIx2tYM1YHUdnuJW36CSy1E5ilkGIefxNU1c/wRRtD4ERr+oS/6
pitvvOkNZLzN4f1FkYaewxzGuwPvgsYdGD0RYOm996E/1PApTBbjaEXj3OKINFrG2pz+xn59
+fpqy3cTzGZ8BPMNxOzmFTepftdLNGI1d/sx6OqgcB2pvBp6H7KjOrxOfe2l9Lc/SuGVYjUt
vG7GT2eYNovUPz+PAoVAqp+TZQUuGuWBDMtXZMhbvAM23yzsqACcPCf+ev4MXo1QB0+SAnq2
BFdFzINx3o0hOaiGjDcdrTfXWAhCpSttcML2LQQgijfTkA6GHFMNaRK+YVhb1SYMD3ehOOwg
mol0vlN4flRi6gXz50ehfiE3Kg02JpoQo6o7MKc5BeNqul5wTdXmkQqIXPH467tTiL3qhlaA
mXu3WC0XToUv5n0qh6GaGYeqbGjFNhBkhUSRixoGGQwcRvD4EKkMNcjK4fBJtc6dg4W653rz
+7AnTfoalVeNqOysLgA9Vjpif+atf3ttOAm1LabCK65db5PQ+Kk6j+HSNvSSYUDH1flvO90A
8MxyNfvcXjuJ7CwrJ+OkXZ3L9BYR+g6SuIVGTLROfT4yiHVGoPYsSuRqbJpXwutiKL4K4Dl3
LNwamKUuoKxOlVtR6AnYKwJ1VddUwU1su9MzheqvhjyxDPbiWAAAqhUyB7f6JmtbtW+dhVeB
d2/mLWGdT0kPc6DsshWYUwm5CF02SnwgE1Po5c1KMLOo6Wsn3J6B3mSdohGd3q3hBZxLSV0t
NRoc4Lm3pAYw3FGC2/JEk6WUAk6TqF0AhkhwZwUq8aZgPR6EBm6lqTMxlYjEWYthavvEy1fD
CtnhQBoNVhtwsAHa6u6aRm18m7HC49hmWQ4qssD1X9N0JSQQCrBtCn9LgRBKJgVt8dEsIRHW
x+pyg6/a150tVO0mMnMXYXtUC7hwYeBu6zq32lBvvkGwyPlay8TZ2OL9p6yp3I0NEscgurMQ
gxLWAvZCzWEMAmbQ5pnhCPFqBFlR1DJ2lraxnl+P3c4bSYPhqo36KRj4FZZBctdcPUZ3EIKQ
ySmiJENSQtMx9cIZlRqLbQONk21kKtTjPYm8FtAurzpygZVwlqwH+Y/MbQYD1aAVlZdHasys
SsxCnfIsrwVOa2iSTw2vrh15igrBJbKyVHsYz65ldrbU91NO6eeXl6fvz6+/3nQPeM8bAovR
uA+aQYGz7AB6rxhrvRXsNs4atrmgS6DLpGpDrVcYLZl16lJFlA7oVEjtAZH1allBSlA1NQPc
YGedstgqgB4i3K9Knh5epDW+GB9iG23MFvN0fH37STum26O+3vSLhR4oVFQPU8gdPgNNdwf0
gtqEqLkYk40SzCwNm4XKyHI0tKkqyFa3u7YtgW0hsdtZP3pGYPcyx1UYy9EhUnbqeIwc64i+
rfoujhbH2u8lcI6L1r3fgL0ae/WNjwBvJrC5H7m3A1RDLUJLLUpin5/MIVGqV7EJDE9kUl9w
Z4iaLVuvV/cbvwRgMvhh4A0LFKzg7Qjaee+2ChNwyHHEX57e3vxro0lSUri9oFUhpMsgYM+p
l7GwLfy7cqkOm/+6061tKyUBZnfmveG3u9fvJof3P3/9vNvlDzoCTaZ3357+Hl2+n17e9GNC
8LDQ85f/1o7ZNqfj88tf+oWhb68/nu++fv/9dfwS2iy+Pf0Bb695oU168FO+9fLKCT8jCGof
T0uZBLGFHoq0oe4Lems788TtYoB5uQt9igNLD8EMeZoiBRt6Y/S2xl3+5eknvFJ7d3j5NSa3
st4QcL+v9sNLFHguKlzsjjLAvDob8+DTlz+ef/4j/fX08tsP0OV+e/3yfDclj4dBMSTjUYkf
i0JP0IwFwUuNOnSNCqOYqOzm+zxCbgoTgX7gVL/gDG8yV3s3j+lRQEiJkw10hCqJjLvFTrgb
eSknmkIWAc6i6AOYWStEYdvs0Hi7hHYfXvtB5TAsejDIfWGwU//tw3xLgYUb6+f0yxQUXtSu
GcCnYqLhcGK/S9c8JGrvD3TzGP095uYk2nFMlhGJ0Y9rHzPmHP5jyKw4CFCtZXnmCwgj7zqG
WHuyWKP1uRZbd6TG7ABFnYWm7Rh13aYQv+WeKwZ5Eig/h4URNXukEQ3ZikxtP0MTyYoOaCeF
IlHdbWTSl1Fc9pCXM5QldZxWTF3i6FEU9Tkw20TX3eY65qGpUxZgMVC8wyaXguy+h2onIHVB
S1a84K26vSVxoGhtM75dcFHJDSSjpcoG3Ha5oEvuu+DELdmpYCWJqvM4sW2sFqpqxXpre1RZ
uEfOup7GqN0b7jwkUta83vYrsjjJ9t6Ob6GuNVM3uZAUN+1FkIHWf1LRJrkUuyona2frm9Da
3mXNRxR9ZG8rZ+bd7sYOrAO2IJumKAWR3driwAPexhZZD/fuaxE6nMaaCnncVWVGj4zsogU9
6x7bmIR3dbrZ7hcbP5XzlIaACkGEIwpfQ8mz6v8ou7rn1HEl/75/BTVPM1VzdrD5fpgHYxvw
BmMfyxDOfaEY4pNQm0AWSN2b+9evWrLsltQic58SulvfstRqtX4dp8nQgGnmJH+oVyWI1uV6
a5e/Yc7VdhnPs1K3swqyqeurJT38MQqHxhcS/hDu2zoxiRR4KD6xwKIeL01Tgbhx4YfYHE6b
TbGCuktn8NaFlfK1jzHpEn5QnW7mhvqytE494HgWxgLQyvXiQtQ5q8EmnRLO6LfyhAco3OK4
Mku2EAnX0ekJAx+J2aNe7R88gbGfxv8QvbY1hl6gF/C+4kd4EY3MUJWCjMl7jmaG5S+f1+Nh
/9pZ7j/hgTw1xYxoN6ssl8fqME7cFiNHxjhfqeGbIyKpd/VXLALOaLFlNNElXIaXWmojAsvB
laRPcOuD1261TusweQzJ2Xph27XV5fj+Ul14H7RmEFPfVyf1NQkaK6pRCGXbhPSuD8yORPk2
8EfW955u7pQDzJ55vF/lBvyRovJ8hLnC7PgUakU5tgJzGoV1W/TjGrO9dkCcr/e+P3JlVg+P
/TJfVEPYOaxu1Y9JwodnYV464DlMjqD+vU0bUERjQautCxqJL5NLA+lfzSBddC3jUZlEcV+v
p5+R6We7bGouGTMRcMEgxUQlZUAAgypCDpjEGTMrsw5Cj6D5Jk3325E0zU4tSbU5xjQVw7/W
gbWmtv2hn04VOyBB8DURu+8a1so2GTU8Gl7fFCH7txFQ3ewoIaZ98DShGZ9jOzMcKy3oXBmR
jBhRV4Uku4aJ+1t5+Y6G11PCxbTmBuK1k6RZe2uTy/ulOpzf3s/X6glQI34enz8ue8KOL26R
jCVEfGvuHd0ZcGJOzRG5WDm7e7ZehaADz6wgFy3HLNIlJmbQl+W4jBUKG8tt8QMfKts2Z2Ry
34wKYUfwsmkkhnslV99G07lh+5e01ofNyEwwnejBYisNHrEqgtb/r2eRyqf8kcfIwUL83JVh
nuJJWX6+V99CjAHzR1RhRBj2z+Pt8KI5saLa/KfJzXJF2MvT/lZ1UjBRWqqerHSUA1ZQqt2N
S85qk8A7iZZL1c5RiNbf4DLLHpMSoyWnKcaReyzAJS+miCwaj8bIsVmRDUMugzBcOhwgz21X
h+iVd3xp+AeL/gDJO5dV7SuRNLzj2whcFi0cYdqBqxzmqYdskBgDQgFhs5728EkTaGu2CHWp
NS80GfIu7ep0FZVvjV/0ACP8vsCh54G0YN91QlpqMQfSOBUo8ETN4epUBM1oXY3hGlF4k1O0
nfKSab3cW57wdBEQiWQnCsmpQLlewYETkE0B+Sy246iDDzoRYU3mAJCY/pjyp2/YGApWVtDE
zpDUotv1+p5HwVMIgXgJ8JYCxFjPr3mep2cY8c3U77PumArQKyTyx9TIqn2u+GY2XtwT/fV6
PP3vr95v4ist5tNO7aD/cXqCNcP2KOj82npu/GZ1n3y96qpeutxCvDuzXfCY0ZVEgIz9wN4Z
8iY62S3TtXIL0HlsnvY8Yd9rGlxejs/P2nKG77PNuaiuuQ24PI2X8Um2yEqrLYq/iPnqMo0D
ypqkCTZPHxwFhfnaWUjAt+tNQoa80+SUI0J7BX98v8EF07Vzkz3TDvmquv08wjJdb2adX6ED
b/sL3+t+o/tPvs9LtPDeehuCNNZvXzR27gxirYnJ4MRftTUXHsYrZ2GW4tZMkil8CkYLpzqs
ekvbLefaZS9cegBAAD9vkuMR8493x79D8ORgYbFG3iaCZXm9FGUI50edkIZefzj2xjZHralN
hYC4CMuMkdjMwAVItgzvGIioHlT8crkdur/oubq3OeBCBHb72SPn6AGNUAqumc2gXHxka+jw
MMFslmDQU0HUr9go81aD0wjlt0t+g5qnk/VW8lzSvldOeneKEQIIvEfRI+b1ur6DPtCbqeh9
DStG41B2HCww6dpFpcF2OMGvfBQDQiB6ZpcKxrY/GFMgXI0AG4S9/thRFtXePJz5nk82LA3z
0YTayMQI+/xjkc8d/kR4lgBTZ4+m1SE9H4cm1OsyIjpkw8dqEhJJiu3Q85qNpDFI3S0+TDNG
Drw/HjoGeODRmLdYZHBvGnKB4XiwmwVpsvzhKGSoaw20CBUZFwmM/PGAmjnA6n+d/2hMai5a
Lj5dfb9PonwpAVY+eKMyGFOVS/vjkgS7wAI9sl3AGdzrk5SlQ79PTPzp9/64S82ofBB2PZsO
U5D4iCWEqFrIzqdvXBu4P/2Ig3szM21QVkNiVvL/umLG230h4B/urQ6jHr2uhCbSSvNiiFWn
K9dBv1iFkYMsaGR3qoBeHTe5RIBfI7w3rSpw1nQ9Q76bTSIRSxiuDojCZKpdmm1i68F9zWPx
cgY7ELM4XC3MHdQaIhVbGYwKqlTBeqsuvTBaeMo5LEwS01O+5sNFGPjITwEQS3tVhDn0LSmS
EEc0ylaimZ4hSkc9HZPiu2a2gjjiXEWoWXROArY3Xk75uVh77mmxQCncDiAC8qdWdrHWHw/B
03PqwR5iY5eRGsE9jVdri7iJcs0noiZDDLjM0X21iBVWxxQwIa8U1yxRwExB5awpnR4Pl/P1
/PPWWXy+V5dvm87zR3W9UUajr0RV6fMi1nG0a8IuNmKzlME8ITHXm88StaHB+M8TEgqJrQWU
feP0ih9tAOpmuERqOf8BrpK8/x/WuS0IjyzzAN9TyXOjkUlD04/RiC6he2CUUCGPXDNZAcau
0hNCAYHLzh8XCqVLHCo1J19J4YruNNaaxAB+RiurCQ3Le60c9jW4A7LUJmGQLKfZFg+A6thd
uliTc7IOspHydJRRSuZo3CMnvK/W6CwjfSABwPh46AhmJ9/zg6TAHmb2nPxKVC9HHERmjVd+
Ub2db9X75XwgdxOBtAPHCfJCj0gsM31/uz4T222esjnar+GnRJM2aCtmUgQOwlycK50cIJjc
eo1ChlW9bs2XA6/tH2XMPKk5n/nJ/hEAaVscGcngffEr+7zeqrdOduqEL8f33zpXMPn85GMQ
6cel4O31/MzJ7Kxv1grAhmBLsI3Lef90OL+5EpJ86Se9zf+YXarqetjzKfD9fEm+W5nUbf6+
TsKwBqgnh/ervKRR5L/TrauaFg+jaC+Pt0pypx/HV7CiNL1ozRwI0ILhQeAnPKlWoKzL+l17
Xe7fL0FU6PvH/pV3prO3SX47c0LpvSVSbI+vx9O/XD1eh83ZhGuyv6nEzTOlvzXtGgt+qrAl
VcXqn535mQuezrhzFQqlwMAUNn+u0URxys+SSOlCQnlcwCIIXj7t96YJgI8T0+DuMbvBYXNk
HzAmYz1pNbceu7SNrAEIWuPQtgzFwyc53/51O5xPdnxmTVgAY/6PBNzCVvqsoAxTCd5gAGRX
erFQtF04JclcTXXRzZgRiFuHHtOx64D/MEtmQkon1wY8vgFTNZT/YhMSSmOJilIZjH4j4iNN
GqLbqUdf5N5YS9Rp6V5FFVZjKhfSw6F6rS7nt0qHqg+4Tu8N/S5ykFCkCSZtl70RUndrgn5D
NE0DH+MN8d/9rvXbTBN6g6703m7Lw1QdLg4dyyRXD3gtuqhUrGBL3jo/bFk0aasgfta1Qrdj
wag/GLiieIRBfYHSbkV6B8tOP+35/gSPK56Oz8cbxC84n/jHYw4BXzXmAn11WQa4j0cexriE
3xMfD8rIHw713xNtjPjvscbvj4Yaf9i1fu8SqQEHBT9a4DHR2NoYcs7IqMhoON7pAKWcNqHM
fIKh2eogsvCYOvNzxgTjR8LvvjZLJ/3hCPNlGJkgQubmMPT4yHm7QPdfk8FTXSGLAU3WEUM9
Xm3iZZbHfPTKOCxxKLVFMu73kN0V8MD7k6E2zYKt1/VJ/FGBD44/H0kZ6wS/r3VzGuY9v0uq
zpwz8dBnLvS+TSDdHgx8+QY5c5e4uqQV2dAd0wpwPorMwCKxVaRZ1FwRNkcS4HTHOLC6ovVZ
1/dMsud7PdQfNbE7Zl7XysLzx6w70M6ONWPosaFPhskGPhv3+lpQ1Jo6HI/JfpFseWPqyFOC
6mqIuiXEvAn7g76Gi7eZDb2uc1K24MCOqalinQaRBjh7d1XC69bscj7duC74pOlgsMQWMV8B
HfhhduJak39/5aqWpcA3VFnGS/UmPHSlkU4reJrGwzGN5MvCqEehHzfBtoxcpS3w+KRsgbxN
nZArqOeTjuFT7zRy/67fgtPsds9vn6KT+cszEMsVyyxW7GAsRwENoFx0ntMF4Fk/UtztjLVk
ZZOttoAbvNq7ViqP9RThs2UvB5bewgbdYR+vxIPesKsv6oOeY/A4q+/TW8Og3x8aufT7E1cu
g4lPaUXAqSOltJSh3y+cuFbAHw8dez9njgYDvMvw39o2OxgNjb2PU6iLBGCMuoWedqKpYiPt
hU8QjcdYVYvyDAI4aoZ3vst4QzJ0Cuw/Q7y48j2hP/H1pZLn1h374O5hLJWcMeo57ozkQsUl
yM/v7hySl6X8+3j6eHtTaIN4ibB4NaRp9X8f1enw2WGfp9tLdT3+G9xEooj9kS+XynwgzVNz
Fcvqj+h4vV2Of32AZRsvLVxzGPg9eu24l4W8oXvZX6tvSy5WPXWW5/N751dehd86P5sqXlEV
9WJnXEFwfRWcN/LIOv2nJbbgpHc7Tfvgnz8v5+vh/F7xotVSrB0QuuOupmpxktcjSEOT5Jsr
w7Zg/oSasILVH2g3Q9N07g3pLpttA+Zzlcl3IUXV6/X8R5HR5wbJMY8N1kS2+0ZuKNX+9faC
ti5Fvdw6hXQ/PB1velfO4n6/DhSktg1KHjFxEbKAj7fj0/H2iQaqaZcGAANusqSbyKJkvo/u
B+Xv5kikyjbLkZ8u/zBu4K31Vu2vH5fqreLb/gevtzHTYeT56Y8cZcEbdv80jqD90UBfRgXR
sYtM04TPC+eSPttmbDzqugWS1WaXhGmfz05LCImk+XrY5UfTBF88YYYR+KCeWEuWDiO2JWfV
nR7EGzQ0X/fAwdTWPCE9iwR6LTEhwpRvzPSdOT5aL10YS7UAxEdtK8IbuN4kzB8QJHMW6TWT
10f751N1kydnqs61NSAN5ivn8KG6gVxcZmkMqE09Gr6rHhaRJfG9q0bUCtEiDQf8KOcyBtRS
RdrTnmHq9GZiqIswqtH/1cRdke7TV10vTOvnkjhyhBKsP8bD6/Hk7kmstIqwwmQv2cJ1rOci
K1ukvWb2EkWKMpX7Y+db53rbn574zn+q9AYJh/xinZeN/qyrueCehVhNoXTW9cw/8QVUOO3s
T88fr/z/9/NVxI/UeqSZjl+La/vi+/nGv8+jZUjjh/FBf+xpp3NOQOYI0La8nqerX55yfDC2
GKMYsgq86TetMbSAVFIu1RUWF3s3n6a5rwXSE7+dVjeJkNk2Kl96Hjrdy99W+Bc2GHqUil9/
h0ammGoa5v6RB35PP663epHZyHYtPAECja3JsN6kN8Azyxauu+/8r+MbbH4wU56OMOsOFTWh
vpCs7wyv51fwhf7SMuiziTY9vkgpv7vq7R2UVXK0RUy6sWZv4xM1SWVMqyzM1m6oWeUOE6c4
TBHEohsPhtrnSdSguXTAt9wQj8PwwQSSGXCSk1CoKJHFm80s8UWBCDPHAJijee4Cfh+Hl+O7
DUjHOSIec6uo8oSJZjSxEjdpc4Cska4KaOOooTCysCTf+IhonPjy7VPnTIswZeW0NrSYXBlL
aP5o0vkprQnkJKft4keHffx1FddebXtVLDP5iNom7tIE4iIbb6zF29J5CgJEi6ZhunuAYE1c
zNdzhhxrN7BdmRVFrIN0YnZEZ45FJE4EnTsLlhvt0RwwYRok6Xacfoe6OXIHMPYlavcbZubb
YOePVylEbw4dLGi2zpIm5TWbmo3NwniZgbmliEj8PZBpwhMtmJ4rYph1qSFAVVW0MiFCjueb
gbDUmqVNE5QQriENNzpkatb6Us636gK+qmLFe5OHF8oJ6J5YW0AR2M5zwenpcj5qCFXBKiqy
hH4wrcSRJT+gjOPCfRwPkyDIpYlsfM0H6zaLAtvzfPHYuV32B7GPmKsNK3EogTIFZboEVy5t
QFsGxIUpdYZ4Jq67QaXgglHUobnouBJIqHkooudbc2eAwxXj8w2sN6Xm4ahoOxpPvWGzcmFn
xBWCNZlZTiIXNWy1MbRnUrufVaJZjpE2ar+inCu+uRVxy2IKPyX6HMlz3aXzoknD3EdOJVrb
4enTQyPFFey+dXxsuGkQLraZK+KhEJsWSTSPrSbPijj+R9xyTWeKvBBRxGDfp6ynIusinif6
DVE2wxxXumi2tFrDabsZ6VDbsIMZCt47Y5r+x38qcNTdyoBZ1IRq2F4aXBQJyNjDWnk7BnC9
RqFsGoOLAHW1Bm8Eefdt4+a9G34Ca4fMXMPtz5x5Wtx0oArHO/qEZ/nN5Okuy5HOwhLtSM5/
gVYiwtyjj3yZpKauwklyV4HAdQ7bCO8o/v8qDqmXZSHAbuOzG1e6AEsq4vMKta9xI+SKGt+x
c4CcQeyM4Xex4Gsqdrko1WV2IR953EeGW4q0Dh9fueYptjPU73WMD76+MbjfZljtAlLGEj4w
IVK34i24FGL1VFF2U3C+3GW59vwJnLd3wKBdUuHB/CosfuT1Ibolb7jqVf4gSGjJs1jTdcIn
3gq8B1YB9CalTMyY5S5uEhJJEG5FqApBI4c83rKShugGHN4Z69PoDZKphYGZ8cI0Qijx7dVQ
SddkLJDxVkOsZYzv0dIA1z6B+G+7KNGCZFIiwfIxEMHWlsvskagvSpOsIuw4hzhb3m2iZSQ3
jcsAIs817rn7w0ul2WJmXLMPF44LSyktdapr9fF07vzkU9qa0W10nVZnA9KDeRWKmZvUDJWE
yMrUwzUMWu0TsnDKKKlzjeDmAE2UZqukxLCHgsW//2XEDwDI+yYuVloMIP04KP+oydNqkHan
IM00YfIdhXzb4NDg4vIxKx5cckpqierCf6hHrX/+cryex+PB5Jv3C2ZDNE7R/H5vpCdsOCM3
R7d3a7yx45rIEPL/jhD1HMoQcVVxjK30BsdzpvGdaXrONNqFrcGj7deGEOXRYYhMnN096Q2/
LmMyoK4zjHxcbdc8l/R6jfo6J2EZTLXd2JHA8weuUeEsT2eJxzpm36oSKBMd5vtmhykGjcaM
Jaj7b8y3pr5iuAdCSVDuU5hvDXPTXOp5oyZgzcKG456DD1ky3tFwEQ2bAkIFJoRlL7IUQw4q
chgDEoVZH8nh6teaBCdtRIosKBOMI9pwfhTJcolPnoozD2Kazg8UD3b9+K6x1DyeG8ZqnZQ2
WTSTrBJXZR4SHLcGGOtypj20XK+S0FL/1T03Vv+kw011+LiAUdYKmSAiSKF84TfXFL6vARjR
2qHVXiZjK/B+B/mCa3tomyghaEgc7erYVEpxlIqfousl7qIFBFWVcYxIl1UuI9SxJJQyaMOM
w7XUFNOYCUtgWSShZmFTIqRyJt4rLYIiildxJHRA0Ft2Ij5coO3glhAuw85hxrMAnAmyTFMY
VitA9kUaItezQSuVNgmtOXALFYq0gPojo+ASpSgAiraHAuQIumTpn7+Ac8fT+Z+n3z/3b/vf
X8/7p/fj6ffr/mfF8zk+/Q7oAc8wcX7/6/3nL3IuPVSXU/Uq4uhW4qagnVPy7Fe9nS+fnePp
CLe6x3/va28TpdGEIg4IaI78RFLIYBwKP+LzrlQdWAadyxLAggQD9Coz36DYMnw8VEGkkUUT
1IPYCCY4+YuogQjZw6wNlwGDAxIhv1BHHym2u4sbRzfzg246Dr6yrFG7L5/vt3PnAHEJzpfO
S/X6LryLNGHeqnmA/eE0sm/T4yAiibYoewgFar6TYSdZaCG7ENEWLVZzikYKNpqrVXFnTQJX
5R/y3JZ+wMYIlQMgqtmifOEP5kS+Nd1OUJ9MWy8GTb6JKCNeP5NfgZEg3pZFYIvrwvOZ54+1
qK01Y7Ve0kS74uKPFhle9cy6XPAtwV06RgXLP/56PR6+/W/12TmICf0M0XE/rXlcsMCqQYTM
rzUpDkNLLA4je9bFYRERWbLUJ1rE19hN7A8GnuafKa32H7cXuJA+7G/VUyc+iUbADfs/j7eX
TnC9ng9HwYr2t73VqhDDgaqxIWjhgu/Wgd/Ns+UPAXhitjuI5wkgYhAzicXfEwrZpemIRcCX
t40akKlwCoSoGle7utOQKCCcUWZIxSztbyHE7/ibakyJjl8Wj/fmfHav5Bxqa2e5vf8ZcW3k
sXBcC6m+hhBb5ZqGBlXNgWdq9tXJ/vri6lquHVqjukgDezpv6XZt0sCOjBMdn6vrzS6sCHu+
nbMgW5XYbhcGhlzNmC6Dh9i/MwJSgFk58nJKrxslM4szJ3cI56xPo7690EYDimbG/lWchE9/
cTtKP0RQq08aeT79KAJJOHw3Wwl/QJ/4WomeT5271Ze8CDxi5IEMzbubkBdNrQ2LYODRhpVW
gjpJNstlzxoUiEQcT7M5UVw5LzwSrbrmP+a8NuqeIRRY0PaXEsT26sFp8NDWrMp0mT3OEmJG
KYb19EHN0CCN+ckxsKduAEcnVyJW2nMPqENi1Oj78Zo5E3+pAQuWLLg3R9ROYQ/L/1d2JMuR
67Z7vmLqnXJIpvwmXc5cfNDC7qZbmynJbfdF5fF0HNe8tl1eKu/zA4BaQBJSnDnMTBMQRZEg
NoKAMpVzEXZcwpUwumZf+skz7aI8n14wEskLMh+/aZ1FjWRVDvz8UAYD+L4KeU52WEltW2kL
H+omzEhp7p5+Pp++FB+nH8fXIcTdtVV6yilq3SWVpG6mJt54GUs4pGfOwRwQzEvpIiKBaJyf
KcQI3nup0cJRGFlT3QZQ1CS7yA0p80DBwGbQZnX7EUOaMA4Eur+ulkaCRsXSFI2IqiAFuIzx
6H+JuNB2DlkDfjHYb2vfbvrj8cfrHdhpr88f749PgkTGyGOJ11BEspVsrERWoLlMWAvbQcf9
hmVppuZQhMkkoKibhniDEAVNWh/Uxe9LKEuDGYXx/EiZniohzUqjrazsRfVtjhWKdEK+IsyO
HPIljDP/F2nhb5SG9e3x4clG6d3/+3j/CwxtFqVCZyK4PJgptB4dXc5JjYtBVERVP3/7jZ1l
feKtQ5exLiJza/Nmry/GWPY5Isx0oSLTGUy4y0MIIzqAnRpiDeIWkzCxnABDuBtI4iJBb5Wh
uCq+nTlKpooZaKGarm105hxamZRTBhZ7pmIdMaZ9nTKskCuPh/dRlVg8GU3y6ibZbugs2ag1
J5EEDCLdODIq+f2cS4KkCzXHpNNN27lPuaWuqGFMIibuE0LIdKLi2+/CoxaymmFYhBKZvSf7
PAxYKvnV546wSxydNmHHVVj9ItDcE3Z0EqrqQD9pmS9/PAhgSg9Pgcon3orBM377Abcw8FMU
9NM4qLUX/2zAh3Lq2WllPbP2lTAOEvtiLyuxF1QHRMDNobNBG1OUELV0N2Iywx5IcYKu6dBD
dHQu00MPj4xsIU7gZgvbZv7VdQV7xh9/FyeXQZubM2r6+G5z4KG/DBAD4JsIwfkLOYHgMo/q
ukw07PNrBR9jIqaQoHtXlzbu0GmiCn55VLntTroT+NGHnrgNXXxbOVnOC4WFNC0cWNim2Xow
BMC7SC9QHiNCWJSmpmu681XMz3BSylaRZJHBeMOtMo7STM9hIK0fuuIAYFiSz74fT6yKBJRH
ww6a6k1mp5i5pSkjlz0AYO+/Yix1k5VOAC7+XtroBexOxx2THbom4reuzBXKd/aKvNLOvSz4
sU7ZfJRY8x59T41x1h9oYiCd65TXJB5aN6rBNG3lOuWEM5YSrzAG1XFcjyCAGIXziCQbYcSL
3hQCXmszSHfrDNP442mXgEQHNLzsAZ4wFZtxFt37E56wdo9MBiWDWl9eH5/ef9l7Eqfj20N4
OJfYWFYQg5sMBHg2OrH/OYtx1WrVXKzGtYGvw4PwoIcRwxYVhNlWxhRg0l6wMJPZEY523uMf
x7+/P556XeaNUO9t+6uU49OSPqraAu31Wnzeov28Vbxq4drA0Lp9ZIqLb2er73wlKuAyGKvM
sxUaMByoLwAxkoNWzECkC9junIL7DamoEAvGz+SRUwnDh9BAurLInCPAvrJZSSHEfVUXS3nd
P0QXGH9gr6IdpUYaUs8P6uNnJ/kvPOtfT3Dp8cfHAxWf1k9v768feLXSLaARbTSFM4k5QYdS
bcJH1sSK9vi3KMBGNDybIMwcoyQXXtJ3iAd5HpOgjbjbpA4fw99SqN24s+M6KkDhKnQDpkzn
LDfBeGcWufF8usMWS1iHMeb546ouB5KEC1DkB8UnvAHVW70WC2MSNNXX3imlbW8LoH6wsGKn
JLLtEGgRhB7G6a1hssM3toWHIi6uxS3jSwwmREtxASsuS7HIDwEV2ATBlOCGyR2BurSWVMDR
LujJoZpdgg8h/9eZm5jkU5vEJU+M0lMBw8BAu8FK6090x874LqNQJHXTKJhdMVjcdodonoD3
AAOHnM4y3XeU+0KMBCBgVeq6LBzDcOq+c6ws224XuJ5pnsTfDBzPwedglH11tmcMTAx5zgA1
SUucfHYeB0TgpsBMx/DsmZd5Uzr6POqsjX13ERFWTxGgYmTAs8NxDpDZ8dkggxblMn+6BpGX
9kBVpFYCznZynfsfdJ3T+Y6rxIwgEwuN1QaMMR67M7LPHkWbpnXr9jmABdZvUx9SUMRc0A2b
DYkjCeB57ryLcLeHPikLRYJCja0oJyYCir2qnaDaYAt7y7bFpNpDXiBE+lI+v7z97QsmIvl4
sWJ5e/f0wAOUscgKBoWUjrniNGNcfsucbejzaKspn9qkhZTrZhYIfLbBpHU5R6P3fAbHHwMG
KHmvoqydfCsEGHzxplcxxMovOfM/kftxnU0rga/qtnjNr4nqHadpG3AzgojHlC3s6G9nwotG
tNk58lDGKRq/cX8FeiBog2kpF2Yh0WS/RgwCWqYhG7cHGt/PD6p+xgSLwzC8y8K2sfdl87aB
lU0hRELf/u7DOdwpVXn3OaxfEmMAJuH517eXxyeMC4CvOX28H/88wn+O7/dfv37lFYzw1gj1
vSETyi/AUxnM8N9fIfGbsSogdVDAzDpwasUvDHT6KU24y57aRt2oQALt9xYC3L/cg+G49RHM
vlZ58Bi93hPd2JaqSkK1zd5UD2WKMpjuWa7fT4w9fwnrHdA4YCfiZZjOlc3Tl01W60gea/+h
yStZp7bXfaSFAtCT3ft/EMOouuEtS/QneEKIWL69gjkNHw0ujMsDDVWpFEjcei396d1ZsT7T
DFoOSOZauVz8l9UDf969331BBfAenfOC1Yqu/XnljRz/PvUFupYNYrW6z8QsUR0BhT5qIvSd
Y0IQPRM4uDhi91WJgXkqGh1lU7L2pJUYSb+7kjbYcKBqud8lExfiUUZEod154sQhoHLOP9Uv
/+SkhkZ1Vc/WIKchUORvtyG6AnGly5QzPPfrvY1/1dvhJiz+FoHintw2pbQtsfA6jdWJE75m
DoBlKIy12so46W0RIUdYe1vBdmA3T07KLcwkHrl4KHhJCXcMYYLyXwSabNI/aHthi0x9Jy7f
JJeXnwSaciwTvsOO4R9gNU1fUTT4vAosgxxo3FzJgwv66xuYuJiukVEPovytI8xFLl7Im9Rc
usiue++DSjkXImKyGNzlGkCsM+/5P8fXl/sZA7BKxiDNvTKmFI00QLJAPlMwM71NAFID5NH5
iuOrHJPIWrPBOdcuU8xhDJPvOCrZvF22eQWkHausWyu6PWkNDjnwDWYZ63C01ZLrOK81nl+R
O114I44Xlxx1T7x8vFuoaXeTzxR1oY+OTHY7ywjWkc6sY9x/edWEt/oGR2ewetxv2xzf3lGq
oXKWYP77u4cjX95dK1s5A7PvaFVBKbu0fkQnOUUuo0ndUSlGGZ1dPh5Yi//SyZdKirII0Fmd
RY6fjaaTPASk38jU4XY43mr4FPLg/1vaprukvA6MOjDloLlnVhXTvHrsaXkQrTfz6TzAoCNE
vGaCmOgdNi16oFxPkwUCAUdGReT2ujj7c3UGf5iUAj6KZ92NVVCDckHDTlH5uDvckH+Z1IJ7
AfYc4b/7bd8Apy4BAA==

--/04w6evG8XlLl3ft--
