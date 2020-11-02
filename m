Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPUY7X6AKGQEDQQXKOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 094332A227B
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 01:01:05 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id 144sf1147204pfv.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Nov 2020 16:01:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604275263; cv=pass;
        d=google.com; s=arc-20160816;
        b=BI6aIqkyaLnkdURdEWTo0nqPrSG/Sg5lbAOvINgQxm/RBlfq3dTLy/7wQgorzwYBQl
         1yRdRVqzQZbvB9wVZkky79j2tbAozYxhMVa6Lf2mazF8Ink0H+ybJnw0mQy4wKSvEDVM
         xslsMNDhGVUSc+w72lvJvzBdz4xq6dlPMmo5dK8VQEgYJ3sM4wLcNO7zKO5XpZ/KNlQh
         eHgQ4K/T6sMzA3Z3KIHDP3G0FhN0QszDkMP9ZKZ5Vu5xEAR76n44fv9MC8vJbL1OQGOc
         YwEuR0jYu+B8IHxWLu2Et4cvoAXWAkt0c7UevASmEmgDZKlxWnOTuKBvJgvXaK7PELHZ
         zd8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=X2z4LunTtppwILOO8YfWCOCqLXjehPHEm8W6SAoKGxE=;
        b=i7NiV0obI/BSnzcxb3Gw270+4JeW77CGEGcRh3tb0LFP5pcPxZnEzFK1R3Cfm22wGB
         S2ptuSji/w8YqOlEMtx3Qi8X19YvsmqKwlaCP1NFfneQHeVNgsUssbvic/HannEvW8bL
         btrsRxgkCqcvQqWHhVD9BuHZLbuqE/QCtjYnSFvoeIKOkS7TVPytzxkCsMT6SeYKRRVP
         tlOEyTr66qPNB5g+ceZ7T0b3atXQQGmunWlK8GGXWxlfNN7bqEqFfdXAzZE20eelqSoC
         t4ap8OsDGF3h7ubswyCPNSHrd45USSX6D+WZGKhFbCvIQnqXGiRvdj2HBivEUcmU6Qfy
         K9tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X2z4LunTtppwILOO8YfWCOCqLXjehPHEm8W6SAoKGxE=;
        b=ge5aaDwDQOaOLWtnMDfSN6IWYmE9W6QHlUEoVUdzvUtSAKi6ecL9wbIwt2UGwZbU7v
         8d960NNWLn6Y3lcRgc6yYiHVIJH2ookHk6yGqORD5hQrSmpM37xDRexOVGwtyfFDqJIA
         LKuOL5ow/+i1A6tOaPE+Ebb1w71HqM90nYKZxgPlaHXmX6o5wjMkTfhxViNDoGBIWwtm
         UB6vBWhf4tCT6PsMAZdC6u+PWty9+46BMOVzmfRp9jdl9TIcLEZHMIo4YmmfOlR9hsE7
         sEMXf5LDkNotM5QoTZR5yywfO4bTRTB9OuLf19nALMOtgm0DsJWHwL1X1c+tdl01tADS
         8U2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X2z4LunTtppwILOO8YfWCOCqLXjehPHEm8W6SAoKGxE=;
        b=QhtBSK+BFzVeJtldOTEpLLOGqi9V+SwbcVRM2eKQ8oGUT2nrbGMPdy4n0fGqFa73Tz
         m5WPMHlWwPoGdbc/cAkO+m522j34db1DW8Acofb0aSssy468ebGQcQWUh5QwZkWByych
         OtSDRvRniD4BJ82Jg84koFUqO38oh0Ff6untWMTdqtR+BN9pp+tLiAI5rt6Fq/ZIaXKG
         zSsIMAmJ/eHUB4A/0M5Tb6RP2sC3564EKFis/NbMjdWncXMsSZZZ5D5NZ4RUvzDDG7SW
         ZAz94lGWxzeja9/eGBgMruCYBgarXDYJdWOSpQh+YzZTNrfwSTHmxMMIckh27sQ/f/Cq
         tExg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53335F2Q3BUJUhzkpWTYzDsrNq9f3ifAfptmPhpYrDJcQ3uzA+hC
	47e/oZVQjO8S7drECjt4obE=
X-Google-Smtp-Source: ABdhPJy5HQIp1rZFMbW42nRQLPLt4aNyopAePYALsUVh6yCOQ8bi+8yqEDekVqFmWB0pYX51QMD0Mw==
X-Received: by 2002:a17:90a:3e4a:: with SMTP id t10mr14332796pjm.151.1604275263100;
        Sun, 01 Nov 2020 16:01:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls1943667pga.5.gmail; Sun, 01 Nov
 2020 16:01:02 -0800 (PST)
X-Received: by 2002:a63:af08:: with SMTP id w8mr11466346pge.419.1604275262373;
        Sun, 01 Nov 2020 16:01:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604275262; cv=none;
        d=google.com; s=arc-20160816;
        b=zvUg1OBRvQ+1dLx7Z0Ito0vRu6tAIxyMzcdc1Jbt+2xMNim6HKWrdjy3HhbN2szQr9
         JXXo6dJTnM9fc87dJF7lXcpjLTuBdFqf1MoREZDqFkdrO1+2R2i3fH/0T07R+UvjMHAk
         kimpprrNzhD6blbuXylk8ouSIKQkEixIHe1d0yybO8ykVf53fTmkByOmpdsr7vWJv3PK
         z4J0FISc+VuNdIU+/rjzTMjHrmIeabj1pT3ugDOygh1nSVD5mDeMasOuwmhE0fk/gfhP
         3bX2WRVyAJ42pCS7+y6Qr6pCIFwiC1uBf0FlvPZ5V0tHB9R8530xaFVUnSGSZxcb/4tu
         GURQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=W0XQNgTZFrK5FuxV/pqCoWn/sCmVMP4xN6OJEHzQgY0=;
        b=h+hzB2W3rHUgGGCZoJRwCaUP8wjqzlyTPVb4hYL3FEt8FpMDNSe8n6/kU5PZHzQ/j8
         RPj8zrkAmYDcVXoG4TcwIX8tLf5qSiZM7poVaryw2cWjgsX9R7zCOjREET8TvvedW67w
         jCAI/MxhmMQEyLBlIcoZeiSK5ODvS/TJKFTn1x9SzQLX+5tnfzf7LruBTX6rz0TXpsW4
         m7wNCTOENq/L/VcDdcwQ38qmWlIb/9CuERa+YLqMYh+n/BUSkJau3IgfNQ6qqut0tAvq
         DkLYqopfihSljbUp2i+7YohnxCx4WQP6ZdFvbFRBIL2DqpLF3Dp7ouX21cdyUTsDWNk0
         UPPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id i5si161580pjz.1.2020.11.01.16.01.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2020 16:01:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: nSnSIZoY3k5ZsT2qWE9tblh3sHuy/g+uJvbjMJuUI+2l3o0VHC7uxSBtd9vAj1jQPR2zcriqAT
 3GcCwm0uIWUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="155802785"
X-IronPort-AV: E=Sophos;i="5.77,443,1596524400"; 
   d="gz'50?scan'50,208,50";a="155802785"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Nov 2020 16:01:00 -0800
IronPort-SDR: BO+DCIOmwny7VPzAZntQeCBnsGBZQCPEDW3EwvvxvBnlOeRxpsNzbfPKadd0OF5VD9BnT+Gusd
 qpVlzES7NgXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,443,1596524400"; 
   d="gz'50?scan'50,208,50";a="319895351"
Received: from lkp-server02.sh.intel.com (HELO 5575c2e0dde6) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 01 Nov 2020 16:00:55 -0800
Received: from kbuild by 5575c2e0dde6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kZNHK-00000q-Be; Mon, 02 Nov 2020 00:00:54 +0000
Date: Mon, 2 Nov 2020 08:00:43 +0800
From: kernel test robot <lkp@intel.com>
To: Martin =?iso-8859-1?Q?Hundeb=F8ll?= <martin@geanix.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Mark Brown <broonie@kernel.org>
Subject: [linux-next:master 2181/2472] drivers/spi/spi-bcm2835.c:1264:9:
 warning: variable 'lflags' is uninitialized when used here
Message-ID: <202011020834.XFXa0TGC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   4e78c578cb987725eef1cec7d11b6437109e9a49
commit: 5e31ba0c0543a04483b53151eb5b7413efece94c [2181/2472] spi: bcm2835: fix gpio cs level inversion
config: powerpc-randconfig-r021-20201030 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project fa5a13276764a2657b3571fa3c57b07ee5d2d661)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=5e31ba0c0543a04483b53151eb5b7413efece94c
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 5e31ba0c0543a04483b53151eb5b7413efece94c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   ^
   arch/powerpc/include/asm/io.h:522:62: note: expanded from macro '__do_outl'
   #define __do_outl(val, port)    writel(val,(PCI_IO_ADDR)_IO_BASE+port);
                                              ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/spi/spi-bcm2835.c:18:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:108:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:541:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/spi/spi-bcm2835.c:18:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:110:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/spi/spi-bcm2835.c:18:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:112:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/spi/spi-bcm2835.c:18:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:114:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/spi/spi-bcm2835.c:18:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:116:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/spi/spi-bcm2835.c:18:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:118:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/spi/spi-bcm2835.c:1264:9: warning: variable 'lflags' is uninitialized when used here [-Wuninitialized]
                                                     lflags,
                                                     ^~~~~~
   drivers/spi/spi-bcm2835.c:1196:2: note: variable 'lflags' is declared here
           enum gpio_lookup_flags lflags;
           ^
   13 warnings generated.

vim +/lflags +1264 drivers/spi/spi-bcm2835.c

a30a555d7435a44 Martin Sperl  2015-04-06  1190  
e34ff011c70e5f4 Martin Sperl  2015-03-26  1191  static int bcm2835_spi_setup(struct spi_device *spi)
e34ff011c70e5f4 Martin Sperl  2015-03-26  1192  {
8259bf667a0f9ea Lukas Wunner  2019-09-11  1193  	struct spi_controller *ctlr = spi->controller;
8259bf667a0f9ea Lukas Wunner  2019-09-11  1194  	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
a30a555d7435a44 Martin Sperl  2015-04-06  1195  	struct gpio_chip *chip;
3bd158c56a56e87 Linus Walleij 2019-08-04  1196  	enum gpio_lookup_flags lflags;
571e31fa60b3697 Lukas Wunner  2019-09-11  1197  	u32 cs;
571e31fa60b3697 Lukas Wunner  2019-09-11  1198  
571e31fa60b3697 Lukas Wunner  2019-09-11  1199  	/*
571e31fa60b3697 Lukas Wunner  2019-09-11  1200  	 * Precalculate SPI slave's CS register value for ->prepare_message():
571e31fa60b3697 Lukas Wunner  2019-09-11  1201  	 * The driver always uses software-controlled GPIO chip select, hence
571e31fa60b3697 Lukas Wunner  2019-09-11  1202  	 * set the hardware-controlled native chip select to an invalid value
571e31fa60b3697 Lukas Wunner  2019-09-11  1203  	 * to prevent it from interfering.
571e31fa60b3697 Lukas Wunner  2019-09-11  1204  	 */
571e31fa60b3697 Lukas Wunner  2019-09-11  1205  	cs = BCM2835_SPI_CS_CS_10 | BCM2835_SPI_CS_CS_01;
571e31fa60b3697 Lukas Wunner  2019-09-11  1206  	if (spi->mode & SPI_CPOL)
571e31fa60b3697 Lukas Wunner  2019-09-11  1207  		cs |= BCM2835_SPI_CS_CPOL;
571e31fa60b3697 Lukas Wunner  2019-09-11  1208  	if (spi->mode & SPI_CPHA)
571e31fa60b3697 Lukas Wunner  2019-09-11  1209  		cs |= BCM2835_SPI_CS_CPHA;
571e31fa60b3697 Lukas Wunner  2019-09-11  1210  	bs->prepare_cs[spi->chip_select] = cs;
3bd158c56a56e87 Linus Walleij 2019-08-04  1211  
8259bf667a0f9ea Lukas Wunner  2019-09-11  1212  	/*
8259bf667a0f9ea Lukas Wunner  2019-09-11  1213  	 * Precalculate SPI slave's CS register value to clear RX FIFO
8259bf667a0f9ea Lukas Wunner  2019-09-11  1214  	 * in case of a TX-only DMA transfer.
8259bf667a0f9ea Lukas Wunner  2019-09-11  1215  	 */
8259bf667a0f9ea Lukas Wunner  2019-09-11  1216  	if (ctlr->dma_rx) {
8259bf667a0f9ea Lukas Wunner  2019-09-11  1217  		bs->clear_rx_cs[spi->chip_select] = cs |
8259bf667a0f9ea Lukas Wunner  2019-09-11  1218  						    BCM2835_SPI_CS_TA |
8259bf667a0f9ea Lukas Wunner  2019-09-11  1219  						    BCM2835_SPI_CS_DMAEN |
8259bf667a0f9ea Lukas Wunner  2019-09-11  1220  						    BCM2835_SPI_CS_CLEAR_RX;
8259bf667a0f9ea Lukas Wunner  2019-09-11  1221  		dma_sync_single_for_device(ctlr->dma_rx->device->dev,
8259bf667a0f9ea Lukas Wunner  2019-09-11  1222  					   bs->clear_rx_addr,
8259bf667a0f9ea Lukas Wunner  2019-09-11  1223  					   sizeof(bs->clear_rx_cs),
8259bf667a0f9ea Lukas Wunner  2019-09-11  1224  					   DMA_TO_DEVICE);
8259bf667a0f9ea Lukas Wunner  2019-09-11  1225  	}
8259bf667a0f9ea Lukas Wunner  2019-09-11  1226  
e34ff011c70e5f4 Martin Sperl  2015-03-26  1227  	/*
e34ff011c70e5f4 Martin Sperl  2015-03-26  1228  	 * sanity checking the native-chipselects
e34ff011c70e5f4 Martin Sperl  2015-03-26  1229  	 */
e34ff011c70e5f4 Martin Sperl  2015-03-26  1230  	if (spi->mode & SPI_NO_CS)
e34ff011c70e5f4 Martin Sperl  2015-03-26  1231  		return 0;
3bd158c56a56e87 Linus Walleij 2019-08-04  1232  	/*
3bd158c56a56e87 Linus Walleij 2019-08-04  1233  	 * The SPI core has successfully requested the CS GPIO line from the
3bd158c56a56e87 Linus Walleij 2019-08-04  1234  	 * device tree, so we are done.
3bd158c56a56e87 Linus Walleij 2019-08-04  1235  	 */
3bd158c56a56e87 Linus Walleij 2019-08-04  1236  	if (spi->cs_gpiod)
e34ff011c70e5f4 Martin Sperl  2015-03-26  1237  		return 0;
a30a555d7435a44 Martin Sperl  2015-04-06  1238  	if (spi->chip_select > 1) {
a30a555d7435a44 Martin Sperl  2015-04-06  1239  		/* error in the case of native CS requested with CS > 1
a30a555d7435a44 Martin Sperl  2015-04-06  1240  		 * officially there is a CS2, but it is not documented
a30a555d7435a44 Martin Sperl  2015-04-06  1241  		 * which GPIO is connected with that...
a30a555d7435a44 Martin Sperl  2015-04-06  1242  		 */
a30a555d7435a44 Martin Sperl  2015-04-06  1243  		dev_err(&spi->dev,
a30a555d7435a44 Martin Sperl  2015-04-06  1244  			"setup: only two native chip-selects are supported\n");
a30a555d7435a44 Martin Sperl  2015-04-06  1245  		return -EINVAL;
a30a555d7435a44 Martin Sperl  2015-04-06  1246  	}
3bd158c56a56e87 Linus Walleij 2019-08-04  1247  
3bd158c56a56e87 Linus Walleij 2019-08-04  1248  	/*
3bd158c56a56e87 Linus Walleij 2019-08-04  1249  	 * Translate native CS to GPIO
3bd158c56a56e87 Linus Walleij 2019-08-04  1250  	 *
3bd158c56a56e87 Linus Walleij 2019-08-04  1251  	 * FIXME: poking around in the gpiolib internals like this is
3bd158c56a56e87 Linus Walleij 2019-08-04  1252  	 * not very good practice. Find a way to locate the real problem
3bd158c56a56e87 Linus Walleij 2019-08-04  1253  	 * and fix it. Why is the GPIO descriptor in spi->cs_gpiod
3bd158c56a56e87 Linus Walleij 2019-08-04  1254  	 * sometimes not assigned correctly? Erroneous device trees?
3bd158c56a56e87 Linus Walleij 2019-08-04  1255  	 */
a30a555d7435a44 Martin Sperl  2015-04-06  1256  
a30a555d7435a44 Martin Sperl  2015-04-06  1257  	/* get the gpio chip for the base */
a30a555d7435a44 Martin Sperl  2015-04-06  1258  	chip = gpiochip_find("pinctrl-bcm2835", chip_match_name);
a30a555d7435a44 Martin Sperl  2015-04-06  1259  	if (!chip)
f8043872e79614a Chris Boot    2013-03-11  1260  		return 0;
e34ff011c70e5f4 Martin Sperl  2015-03-26  1261  
3bd158c56a56e87 Linus Walleij 2019-08-04  1262  	spi->cs_gpiod = gpiochip_request_own_desc(chip, 8 - spi->chip_select,
3bd158c56a56e87 Linus Walleij 2019-08-04  1263  						  DRV_NAME,
3bd158c56a56e87 Linus Walleij 2019-08-04 @1264  						  lflags,
3bd158c56a56e87 Linus Walleij 2019-08-04  1265  						  GPIOD_OUT_LOW);
3bd158c56a56e87 Linus Walleij 2019-08-04  1266  	if (IS_ERR(spi->cs_gpiod))
3bd158c56a56e87 Linus Walleij 2019-08-04  1267  		return PTR_ERR(spi->cs_gpiod);
a30a555d7435a44 Martin Sperl  2015-04-06  1268  
a30a555d7435a44 Martin Sperl  2015-04-06  1269  	/* and set up the "mode" and level */
3bd158c56a56e87 Linus Walleij 2019-08-04  1270  	dev_info(&spi->dev, "setting up native-CS%i to use GPIO\n",
3bd158c56a56e87 Linus Walleij 2019-08-04  1271  		 spi->chip_select);
a30a555d7435a44 Martin Sperl  2015-04-06  1272  
a30a555d7435a44 Martin Sperl  2015-04-06  1273  	return 0;
f8043872e79614a Chris Boot    2013-03-11  1274  }
f8043872e79614a Chris Boot    2013-03-11  1275  

:::::: The code at line 1264 was first introduced by commit
:::::: 3bd158c56a56e8767e569d7fbc66efbedc478077 spi: bcm2835: Convert to use CS GPIO descriptors

:::::: TO: Linus Walleij <linus.walleij@linaro.org>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011020834.XFXa0TGC-lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VS++wcV0S1rZb1Fb--
