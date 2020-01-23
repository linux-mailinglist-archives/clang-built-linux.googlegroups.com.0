Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBY6UUPYQKGQEQTVCMZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A4E145FFB
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 01:35:48 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id e13sf892235iob.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jan 2020 16:35:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579739747; cv=pass;
        d=google.com; s=arc-20160816;
        b=wAR0rW9Gv2dU5SbuaX01xKnwCi5HRdbBvYlG7r/zC+mrkMwpCitihWR09cI9ty5nES
         bUOIgiWD5n+ElO59B5Jwugq+A8L+BlZl4A6AySg1XDXXApFIGNCw9sq5LDRs0oZGlsJC
         kNFDj+Dia9e2SbJc3qdVqogXU6ORjSFoTxYz6UVjGJjDQvHyf+rz9h0zzMKj9qXhSZ+Y
         yqrUSyLrjdBnw0m0/QglSiDJt6ExUgsD0wWVzT5cW3yq7AYF32AQvlhJqirVpvifh5Zy
         iLm7LBp32Xmt8GH9EsIwsqXoVmc867VQVYVSoW9s/l0zekQG6MkZvE670f8j+bRroDPb
         Q7Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=r1/uLiuijlr/v3CD3ylcTpt2EuEO9o5Ri6SdsVwt5Nc=;
        b=Nem0bvurpep+jc+snwdsRrr6lt/5f2ZWwmrUb4mLw6zdWYEdPDh6UmZWzYFK5Neuus
         SNw4Um+uPLoGtGhH1mnVdYFzk0ONaABKlqBvMBxqeU7u7pag5nQBzPRajFpqJInnrUxG
         dXifvMqlh8boJJTZTJxPEuK18nWJbbDWD25NTdMM1IGd9cCAvoBB3511stGoCZ1+CsUV
         2+iPpLxt6dCmri1WYI4dLluVRYv/8BNKplWxXXj1ZAXNxuKJiorgpCIbOsABjtMfB0mg
         X7wARpnzZM3grg255ObJJfgaayJtyz0fnV/IaI0MvsBnHgHmouoCD3gzQ8UEicpg5m1K
         9i1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r1/uLiuijlr/v3CD3ylcTpt2EuEO9o5Ri6SdsVwt5Nc=;
        b=N9NwHWSiPx51eH9jwaGWOA+HQll/790/O8cL68jiiahh5JyqYcTK3X3+yp2Tz/LtB1
         AJNzF2dc0oOguZ6cQTJ7erU1M7ZEDNNOtVd+R2hfz8M4vqgwfevMREGO7IRN8B9tPQAL
         wZiCQkr8FAKo4OxXw0oEOODZMGjX3VY6x4pIatO0hdW/PXrZXr+FF/V3TcTSM2erI19U
         zyqGLujDtr8Wo7qOS8QfksKMkB98HOT7nSEW5B32u7zMbQiClDYhEb566TQDMSp0KOy3
         KKiglM2O85RvCj6+9d9yI01S/l8VhGuK21H4OZGZqutVtcxjcpTpHjHMvnC/deMOY915
         rs/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r1/uLiuijlr/v3CD3ylcTpt2EuEO9o5Ri6SdsVwt5Nc=;
        b=n4bwwaUqxnnVzliYihWlcLx3/XpR7q08caOq5UdqDKtDir7TBYXG/eYNzBWt+O8kyE
         O0pnPR9E9nVztOGu7eLGaYsPQ804vkGUldP8YleWTubAlpTASnrMkMW6IxeKz2TucahD
         irUw8EiL6enSjzpi21piRuCsI8shc73zzh7YHRJ5sOpGuBZtbx6n8zZ0sHsQQW1VrV41
         4U9E3Sb3GA2hJjiXd5rSJP66KZ/AqCEPn5hAeojOJ2hvuT/fXOkeZ7OLmUpxIayzG9EJ
         +ejIzYeQcNeJW4YzHufZSnwj1394W6mPO1QZ/YAVPv6IvfOOKmWOhy+hNsoWgKaQU1Mh
         kE0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVT6ySE1hTC9EqJB1EkTIa3jEJZJSGQZuzO+GrpZLBGUghfK70l
	7vQfZ9dc4Aq6TDyBgna2fOY=
X-Google-Smtp-Source: APXvYqxvkXg702CKPmM3DIxTzHvkyKfAHy2L/2Zb2Xg+gxJc3QUEduzj1cYidwByr+8x0hwSH4PUiQ==
X-Received: by 2002:a5d:9ad0:: with SMTP id x16mr9203200ion.258.1579739747073;
        Wed, 22 Jan 2020 16:35:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:1444:: with SMTP id 65ls3426677jag.7.gmail; Wed, 22 Jan
 2020 16:35:46 -0800 (PST)
X-Received: by 2002:a02:cbd9:: with SMTP id u25mr762989jaq.106.1579739746646;
        Wed, 22 Jan 2020 16:35:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579739746; cv=none;
        d=google.com; s=arc-20160816;
        b=n/0aO3dQ6R4N4vWwrg5sysLfSzK/QSLrtf+qGPc1I6tG1HyKdAWulRr99AMXU5/3Tm
         egsXuqj44cbkgxu3uAA0cbBWH3eigFbuqewP+oNHd5/SrsnBwi9FooqVLY3NjCi1UpHa
         0kIy/cl5UndD3rMKzpA6MKS40HjiocJDWC1tsA0l0mX09kuOoe6EbdklEUJ8log7ThkV
         j0RS61O9PeGq4q80ZLMLyRJOtmFOptSClY9Emk4wL18geVAzTEiIm33QR7ieiFItVhKP
         M3F7x2C0u9X3YGxYHFUZ+VbBJ3BVgiNxN9TlGCnjd+AAyfsW7vk1qP2g4bnPA6aDDG4C
         Zz1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=CFG5knzOk99fNEw6TqNVixaDiYs5GjeqU2uaQEVo4xI=;
        b=03bqiNz1PTBcAmVO17JEL/i762/RtkoZWLTfHzlvVPtAxA4V5d3HMPvhBZeE9dYjuY
         KD/7YGSYaesFB4Th05Q1qZ6VoUZ/BJuTtJ8unzDw2jfe/8gFZpzbOgRJOOHQcY4OsVo6
         eCoL0kdRFLxhnEx4ZR2DYrjuNJ3GFsEm9fA3GBVSj+u5o8S3H+UDtigH8nV+uoMd6Dw6
         D/7TIhHeO5RpmURel1gZD33Qs+eycSEg9M/WH4ycDr0D9COagvtbFc/ltReyQwNnF/MG
         1UZRcFutcO3CEmF55DH2Xc2+rbdOqruL32isb1jjhEY/Ms3yj40PYf22aqwbb1oeY+hu
         Zb2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id k9si13894ili.4.2020.01.22.16.35.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jan 2020 16:35:46 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Jan 2020 16:35:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; 
   d="scan'208";a="229575667"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 22 Jan 2020 16:35:43 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iuQTH-00057B-11; Thu, 23 Jan 2020 08:35:43 +0800
Date: Thu, 23 Jan 2020 08:34:47 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] hwrng: Add support for ASPEED RNG
Message-ID: <202001230838.VWBlN1E2%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Content-Transfer-Encoding: quoted-printable
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

CC: kbuild-all@lists.01.org
In-Reply-To: <20200120150113.2565-2-linux@neuralgames.com>
References: <20200120150113.2565-2-linux@neuralgames.com>
TO: Oscar A Perez <linux@neuralgames.com>
CC: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au=
>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, J=
oel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Arnd Bergma=
nn <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Oscar =
A Perez <linux@neuralgames.com>, Krzysztof Kozlowski <krzk@kernel.org>, Dan=
iel Thompson <daniel.thompson@linaro.org>, Weili Qian <qianweili@huawei.com=
>, Sumit Garg <sumit.garg@linaro.org>, Zaibo Xu <xuzaibo@huawei.com>, Tomer=
 Maimon <tmaimon77@gmail.com>, Jens Wiklander <jens.wiklander@linaro.org>, =
linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@=
lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kerne=
l.org
CC:=20

Hi Oscar,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on char-misc/char-misc-testing]
[if your patch is applied to the wrong git tree, please drop us a note to h=
elp
improve the system. BTW, we also suggest to use '--base' option to specify =
the
base tree in git format-patch, please see https://stackoverflow.com/a/37406=
982]

url:    https://github.com/0day-ci/linux/commits/Oscar-A-Perez/hwrng-Add-su=
pport-for-ASPEED-RNG/20200121-020818
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.gi=
t c20c76acf6ec1df0af3bdd3370f7e3fef4494ba8
config: powerpc-defconfig
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 38bdb94120b76f=
8f79cd27d721892673e573895a)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        make.cross ARCH=3Dpowerpc  defconfig
        make.cross ARCH=3Dpowerpc=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/char/hw_random/Kconfig:481: syntax error
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported charact=
er ','
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported charact=
er '.'
>> drivers/char/hw_random/Kconfig:480: unknown statement "If"
   make[2]: *** [defconfig] Error 1
   make[1]: *** [defconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  0 sys  80.19% cpu 	make defconfig
--
>> drivers/char/hw_random/Kconfig:481: syntax error
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported charact=
er ','
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported charact=
er '.'
>> drivers/char/hw_random/Kconfig:480: unknown statement "If"
   make[2]: *** [oldconfig] Error 1
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  1 sys  57.03% cpu 	make oldconfig
--
>> drivers/char/hw_random/Kconfig:481: syntax error
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported charact=
er ','
   drivers/char/hw_random/Kconfig:480:warning: ignoring unsupported charact=
er '.'
>> drivers/char/hw_random/Kconfig:480: unknown statement "If"
   make[2]: *** [olddefconfig] Error 1
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
   3 real  0 user  0 sys  50.38% cpu 	make olddefconfig

vim +481 drivers/char/hw_random/Kconfig

    23=09
    24	config HW_RANDOM_TIMERIOMEM
    25		tristate "Timer IOMEM HW Random Number Generator support"
    26		depends on HAS_IOMEM
    27		---help---
    28		  This driver provides kernel-side support for a generic Random
    29		  Number Generator used by reading a 'dumb' iomem address that
    30		  is to be read no faster than, for example, once a second;
    31		  the default FPGA bitstream on the TS-7800 has such functionality.
    32=09
    33		  To compile this driver as a module, choose M here: the
    34		  module will be called timeriomem-rng.
    35=09
    36		  If unsure, say Y.
    37=09
    38	config HW_RANDOM_INTEL
    39		tristate "Intel HW Random Number Generator support"
    40		depends on (X86 || IA64) && PCI
    41		default HW_RANDOM
    42		---help---
    43		  This driver provides kernel-side support for the Random Number
    44		  Generator hardware found on Intel i8xx-based motherboards.
    45=09
    46		  To compile this driver as a module, choose M here: the
    47		  module will be called intel-rng.
    48=09
    49		  If unsure, say Y.
    50=09
    51	config HW_RANDOM_AMD
    52		tristate "AMD HW Random Number Generator support"
    53		depends on (X86 || PPC_MAPLE) && PCI
    54		default HW_RANDOM
    55		---help---
    56		  This driver provides kernel-side support for the Random Number
    57		  Generator hardware found on AMD 76x-based motherboards.
    58=09
    59		  To compile this driver as a module, choose M here: the
    60		  module will be called amd-rng.
    61=09
    62		  If unsure, say Y.
    63=09
    64	config HW_RANDOM_ATMEL
    65		tristate "Atmel Random Number Generator support"
    66		depends on ARCH_AT91 && HAVE_CLK && OF
    67		default HW_RANDOM
    68		---help---
    69		  This driver provides kernel-side support for the Random Number
    70		  Generator hardware found on Atmel AT91 devices.
    71=09
    72		  To compile this driver as a module, choose M here: the
    73		  module will be called atmel-rng.
    74=09
    75		  If unsure, say Y.
    76=09
    77	config HW_RANDOM_BCM2835
    78		tristate "Broadcom BCM2835/BCM63xx Random Number Generator support"
    79		depends on ARCH_BCM2835 || ARCH_BCM_NSP || ARCH_BCM_5301X || \
    80			   ARCH_BCM_63XX || BCM63XX || BMIPS_GENERIC
    81		default HW_RANDOM
    82		---help---
    83		  This driver provides kernel-side support for the Random Number
    84		  Generator hardware found on the Broadcom BCM2835 and BCM63xx SoCs=
.
    85=09
    86		  To compile this driver as a module, choose M here: the
    87		  module will be called bcm2835-rng
    88=09
    89		  If unsure, say Y.
    90=09
    91	config HW_RANDOM_IPROC_RNG200
    92		tristate "Broadcom iProc/STB RNG200 support"
    93		depends on ARCH_BCM_IPROC || ARCH_BRCMSTB
    94		default HW_RANDOM
    95		---help---
    96		  This driver provides kernel-side support for the RNG200
    97		  hardware found on the Broadcom iProc and STB SoCs.
    98=09
    99		  To compile this driver as a module, choose M here: the
   100		  module will be called iproc-rng200
   101=09
   102		  If unsure, say Y.
   103=09
   104	config HW_RANDOM_GEODE
   105		tristate "AMD Geode HW Random Number Generator support"
   106		depends on X86_32 && PCI
   107		default HW_RANDOM
   108		---help---
   109		  This driver provides kernel-side support for the Random Number
   110		  Generator hardware found on the AMD Geode LX.
   111=09
   112		  To compile this driver as a module, choose M here: the
   113		  module will be called geode-rng.
   114=09
   115		  If unsure, say Y.
   116=09
   117	config HW_RANDOM_N2RNG
   118		tristate "Niagara2 Random Number Generator support"
   119		depends on SPARC64
   120		default HW_RANDOM
   121		---help---
   122		  This driver provides kernel-side support for the Random Number
   123		  Generator hardware found on Niagara2 cpus.
   124=09
   125		  To compile this driver as a module, choose M here: the
   126		  module will be called n2-rng.
   127=09
   128		  If unsure, say Y.
   129=09
   130	config HW_RANDOM_VIA
   131		tristate "VIA HW Random Number Generator support"
   132		depends on X86
   133		default HW_RANDOM
   134		---help---
   135		  This driver provides kernel-side support for the Random Number
   136		  Generator hardware found on VIA based motherboards.
   137=09
   138		  To compile this driver as a module, choose M here: the
   139		  module will be called via-rng.
   140=09
   141		  If unsure, say Y.
   142=09
   143	config HW_RANDOM_IXP4XX
   144		tristate "Intel IXP4xx NPU HW Pseudo-Random Number Generator suppor=
t"
   145		depends on ARCH_IXP4XX
   146		default HW_RANDOM
   147		---help---
   148		  This driver provides kernel-side support for the Pseudo-Random
   149		  Number Generator hardware found on the Intel IXP45x/46x NPU.
   150=09
   151		  To compile this driver as a module, choose M here: the
   152		  module will be called ixp4xx-rng.
   153=09
   154		  If unsure, say Y.
   155=09
   156	config HW_RANDOM_OMAP
   157		tristate "OMAP Random Number Generator support"
   158		depends on ARCH_OMAP16XX || ARCH_OMAP2PLUS || ARCH_MVEBU
   159		default HW_RANDOM
   160	 	---help---
   161	 	  This driver provides kernel-side support for the Random Number
   162		  Generator hardware found on OMAP16xx, OMAP2/3/4/5, AM33xx/AM43xx
   163		  multimedia processors, and Marvell Armada 7k/8k SoCs.
   164=09
   165		  To compile this driver as a module, choose M here: the
   166		  module will be called omap-rng.
   167=09
   168	 	  If unsure, say Y.
   169=09
   170	config HW_RANDOM_OMAP3_ROM
   171		tristate "OMAP3 ROM Random Number Generator support"
   172		depends on ARCH_OMAP3
   173		default HW_RANDOM
   174		---help---
   175		  This driver provides kernel-side support for the Random Number
   176		  Generator hardware found on OMAP34xx processors.
   177=09
   178		  To compile this driver as a module, choose M here: the
   179		  module will be called omap3-rom-rng.
   180=09
   181		  If unsure, say Y.
   182=09
   183	config HW_RANDOM_OCTEON
   184		tristate "Octeon Random Number Generator support"
   185		depends on CAVIUM_OCTEON_SOC
   186		default HW_RANDOM
   187		---help---
   188		  This driver provides kernel-side support for the Random Number
   189		  Generator hardware found on Octeon processors.
   190=09
   191		  To compile this driver as a module, choose M here: the
   192		  module will be called octeon-rng.
   193=09
   194		  If unsure, say Y.
   195=09
   196	config HW_RANDOM_PASEMI
   197		tristate "PA Semi HW Random Number Generator support"
   198		depends on PPC_PASEMI
   199		default HW_RANDOM
   200		---help---
   201		  This driver provides kernel-side support for the Random Number
   202		  Generator hardware found on PA Semi PWRficient SoCs.
   203=09
   204		  To compile this driver as a module, choose M here: the
   205		  module will be called pasemi-rng.
   206=09
   207		  If unsure, say Y.
   208=09
   209	config HW_RANDOM_VIRTIO
   210		tristate "VirtIO Random Number Generator support"
   211		depends on VIRTIO
   212		---help---
   213		  This driver provides kernel-side support for the virtual Random N=
umber
   214		  Generator hardware.
   215=09
   216		  To compile this driver as a module, choose M here: the
   217		  module will be called virtio-rng.  If unsure, say N.
   218=09
   219	config HW_RANDOM_TX4939
   220		tristate "TX4939 Random Number Generator support"
   221		depends on SOC_TX4939
   222		default HW_RANDOM
   223		---help---
   224		  This driver provides kernel-side support for the Random Number
   225		  Generator hardware found on TX4939 SoC.
   226=09
   227		  To compile this driver as a module, choose M here: the
   228		  module will be called tx4939-rng.
   229=09
   230		  If unsure, say Y.
   231=09
   232	config HW_RANDOM_MXC_RNGA
   233		tristate "Freescale i.MX RNGA Random Number Generator"
   234		depends on SOC_IMX31
   235		default HW_RANDOM
   236		---help---
   237		  This driver provides kernel-side support for the Random Number
   238		  Generator hardware found on Freescale i.MX processors.
   239=09
   240		  To compile this driver as a module, choose M here: the
   241		  module will be called mxc-rnga.
   242=09
   243		  If unsure, say Y.
   244=09
   245	config HW_RANDOM_IMX_RNGC
   246		tristate "Freescale i.MX RNGC Random Number Generator"
   247		depends on ARCH_MXC
   248		default HW_RANDOM
   249		---help---
   250		  This driver provides kernel-side support for the Random Number
   251		  Generator Version C hardware found on some Freescale i.MX
   252		  processors. Version B is also supported by this driver.
   253=09
   254		  To compile this driver as a module, choose M here: the
   255		  module will be called imx-rngc.
   256=09
   257		  If unsure, say Y.
   258=09
   259	config HW_RANDOM_NOMADIK
   260		tristate "ST-Ericsson Nomadik Random Number Generator support"
   261		depends on ARCH_NOMADIK
   262		default HW_RANDOM
   263		---help---
   264		  This driver provides kernel-side support for the Random Number
   265		  Generator hardware found on ST-Ericsson SoCs (8815 and 8500).
   266=09
   267		  To compile this driver as a module, choose M here: the
   268		  module will be called nomadik-rng.
   269=09
   270		  If unsure, say Y.
   271=09
   272	config HW_RANDOM_PSERIES
   273		tristate "pSeries HW Random Number Generator support"
   274		depends on PPC64 && IBMVIO
   275		default HW_RANDOM
   276		---help---
   277		  This driver provides kernel-side support for the Random Number
   278		  Generator hardware found on POWER7+ machines and above
   279=09
   280		  To compile this driver as a module, choose M here: the
   281		  module will be called pseries-rng.
   282=09
   283		  If unsure, say Y.
   284=09
   285	config HW_RANDOM_POWERNV
   286		tristate "PowerNV Random Number Generator support"
   287		depends on PPC_POWERNV
   288		default HW_RANDOM
   289		---help---
   290		  This is the driver for Random Number Generator hardware found
   291		  in POWER7+ and above machines for PowerNV platform.
   292=09
   293		  To compile this driver as a module, choose M here: the
   294		  module will be called powernv-rng.
   295=09
   296		  If unsure, say Y.
   297=09
   298	config HW_RANDOM_HISI
   299		tristate "Hisilicon Random Number Generator support"
   300		depends on HW_RANDOM && ARCH_HISI
   301		default HW_RANDOM
   302		---help---
   303		  This driver provides kernel-side support for the Random Number
   304		  Generator hardware found on Hisilicon Hip04 and Hip05 SoC.
   305=09
   306		  To compile this driver as a module, choose M here: the
   307		  module will be called hisi-rng.
   308=09
   309		  If unsure, say Y.
   310=09
   311	config HW_RANDOM_HISI_V2
   312		tristate "HiSilicon True Random Number Generator V2 support"
   313		depends on HW_RANDOM && ARM64 && ACPI
   314		default HW_RANDOM
   315		help
   316		  This driver provides kernel-side support for the True Random Numb=
er
   317		  Generator V2 hardware found on HiSilicon Hi1620 SoC.
   318=09
   319		  To compile this driver as a module, choose M here: the
   320		  module will be called hisi-trng-v2.
   321=09
   322		  If unsure, say Y.
   323=09
   324	config HW_RANDOM_ST
   325		tristate "ST Microelectronics HW Random Number Generator support"
   326		depends on HW_RANDOM && ARCH_STI
   327		---help---
   328		  This driver provides kernel-side support for the Random Number
   329		  Generator hardware found on STi series of SoCs.
   330=09
   331		  To compile this driver as a module, choose M here: the
   332		  module will be called st-rng.
   333=09
   334	config HW_RANDOM_XGENE
   335		tristate "APM X-Gene True Random Number Generator (TRNG) support"
   336		depends on HW_RANDOM && ARCH_XGENE
   337		default HW_RANDOM
   338		---help---
   339		  This driver provides kernel-side support for the Random Number
   340		  Generator hardware found on APM X-Gene SoC.
   341=09
   342		  To compile this driver as a module, choose M here: the
   343		  module will be called xgene_rng.
   344=09
   345		  If unsure, say Y.
   346=09
   347	config HW_RANDOM_STM32
   348		tristate "STMicroelectronics STM32 random number generator"
   349		depends on HW_RANDOM && (ARCH_STM32 || COMPILE_TEST)
   350		depends on HAS_IOMEM
   351		default HW_RANDOM
   352		help
   353		  This driver provides kernel-side support for the Random Number
   354		  Generator hardware found on STM32 microcontrollers.
   355=09
   356		  To compile this driver as a module, choose M here: the
   357		  module will be called stm32-rng.
   358=09
   359		  If unsure, say N.
   360=09
   361	config HW_RANDOM_PIC32
   362		tristate "Microchip PIC32 Random Number Generator support"
   363		depends on HW_RANDOM && MACH_PIC32
   364		default y
   365		---help---
   366		  This driver provides kernel-side support for the Random Number
   367		  Generator hardware found on a PIC32.
   368=09
   369		  To compile this driver as a module, choose M here. the
   370		  module will be called pic32-rng.
   371=09
   372		  If unsure, say Y.
   373=09
   374	config HW_RANDOM_MESON
   375		tristate "Amlogic Meson Random Number Generator support"
   376		depends on HW_RANDOM
   377		depends on ARCH_MESON || COMPILE_TEST
   378		default y
   379		---help---
   380		  This driver provides kernel-side support for the Random Number
   381		  Generator hardware found on Amlogic Meson SoCs.
   382=09
   383		  To compile this driver as a module, choose M here. the
   384		  module will be called meson-rng.
   385=09
   386		  If unsure, say Y.
   387=09
   388	config HW_RANDOM_CAVIUM
   389		tristate "Cavium ThunderX Random Number Generator support"
   390		depends on HW_RANDOM && PCI && (ARM64 || (COMPILE_TEST && 64BIT))
   391		default HW_RANDOM
   392		---help---
   393		  This driver provides kernel-side support for the Random Number
   394		  Generator hardware found on Cavium SoCs.
   395=09
   396		  To compile this driver as a module, choose M here: the
   397		  module will be called cavium_rng.
   398=09
   399		  If unsure, say Y.
   400=09
   401	config HW_RANDOM_MTK
   402		tristate "Mediatek Random Number Generator support"
   403		depends on HW_RANDOM
   404		depends on ARCH_MEDIATEK || COMPILE_TEST
   405		default y
   406		---help---
   407		  This driver provides kernel-side support for the Random Number
   408		  Generator hardware found on Mediatek SoCs.
   409=09
   410		  To compile this driver as a module, choose M here. the
   411		  module will be called mtk-rng.
   412=09
   413		  If unsure, say Y.
   414=09
   415	config HW_RANDOM_S390
   416		tristate "S390 True Random Number Generator support"
   417		depends on S390
   418		default HW_RANDOM
   419		---help---
   420		  This driver provides kernel-side support for the True
   421		  Random Number Generator available as CPACF extension
   422		  on modern s390 hardware platforms.
   423=09
   424		  To compile this driver as a module, choose M here: the
   425		  module will be called s390-trng.
   426=09
   427		  If unsure, say Y.
   428=09
   429	config HW_RANDOM_EXYNOS
   430		tristate "Samsung Exynos True Random Number Generator support"
   431		depends on ARCH_EXYNOS || COMPILE_TEST
   432		default HW_RANDOM
   433		---help---
   434		  This driver provides support for the True Random Number
   435		  Generator available in Exynos SoCs.
   436=09
   437		  To compile this driver as a module, choose M here: the module
   438		  will be called exynos-trng.
   439=09
   440		  If unsure, say Y.
   441=09
   442	config HW_RANDOM_OPTEE
   443		tristate "OP-TEE based Random Number Generator support"
   444		depends on OPTEE
   445		default HW_RANDOM
   446		help
   447		  This  driver provides support for OP-TEE based Random Number
   448		  Generator on ARM SoCs where hardware entropy sources are not
   449		  accessible to normal world (Linux).
   450=09
   451		  To compile this driver as a module, choose M here: the module
   452		  will be called optee-rng.
   453=09
   454		  If unsure, say Y.
   455=09
   456	config HW_RANDOM_NPCM
   457		tristate "NPCM Random Number Generator support"
   458		depends on ARCH_NPCM || COMPILE_TEST
   459		default HW_RANDOM
   460		help
   461	 	  This driver provides support for the Random Number
   462		  Generator hardware available in Nuvoton NPCM SoCs.
   463=09
   464		  To compile this driver as a module, choose M here: the
   465		  module will be called npcm-rng.
   466=09
   467	 	  If unsure, say Y.
   468=09
   469	config HW_RANDOM_ASPEED
   470		tristate "Aspeed Hardware Random Number Generator support"
   471		depends on ARCH_ASPEED || COMPILE_TEST
   472		default HW_RANDOM
   473		help
   474		  If you say yes to this option, support will be included for the
   475		  Hardware Random Number Generator that comes with Aspeed SoCs.
   476=09
   477		  This driver can also be built as a module.  If so, the module
   478		  will be called aspeed-rng.
   479=09
 > 480		 If unsure, say Y.
 > 481=09

---
0-DAY kernel test infrastructure                 Open Source Technology Cen=
ter
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporat=
ion

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202001230838.VWBlN1E2%25lkp%40intel.com.
