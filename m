Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBONUXSDQMGQEZ5Q2HSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE303C8961
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 19:09:14 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id 6-20020a9f24060000b029027872bb5b5dsf413737uaq.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 10:09:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626282553; cv=pass;
        d=google.com; s=arc-20160816;
        b=b2dANlKCbgOuJfAsYLQdFo+BUO40A7FQ54C8Te872M8t+R4iBv5fEXZZlMQOycIpO3
         wL0azO01qB6/GDRcdx77yA2sqm4FQmJsTdlooKWWZeZc4DIbmjFKWNQ0Ra7MXZm0OJbc
         +QWc6ZT1U2ztYqGloIJRvj8dBfeM+Y0RfnNnJkex+6YjSRDVEFYu7msFOpC0Pe3+/pUh
         ru9h6Y827/8Evz49+B0/VG0s27mbd/rHjA7XN1v08nbbjtQBl6F+CliI9cFoDMC+pBeV
         Hpk3OBbDEQ5FNtDLRVZbLGwMIK6Y97LWTI5l80Tx26d4nUY8UAmSDlCYaHdtTPT1MUlR
         z0OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x4XKwz79+jgTAbiBSYFzIhcGt3E+nZ3AZ98BCg9lOnw=;
        b=lsLD/jA2sKid6DK8ll7KFZunM/zjdAaXK8vO2ZEU8naHO+6VANRifS6LM7jtPhHAM5
         jM11ld04V8bfqKpUrIRYRtsIWqDfh670LidVPmFDvpS5SJWYFvRsn2ZT5+HQpkVCs7kF
         3BMugSbp4fpEbVLrrMyqiPVR2hxSUEf1fI5AQmqE4PkuCgwNvwWuunJmL6LT33spiwMA
         CmJ6Hju66fsd3fXqhLfIbEZGkH8szGOx0asasMsdLI8WiE3hEODfQKpsaTRUzXgk9WBA
         aVjyfBAmESfHTGM27ax0uvVWbwIrEHBKDkJiN4lSEztjO33pYbd0INm8M0JaL56U/Ksa
         ZbAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x4XKwz79+jgTAbiBSYFzIhcGt3E+nZ3AZ98BCg9lOnw=;
        b=O7EG1eWzPKzOjJ1aPpxZzaj6JzLN/zLGB3C+AGMpwTso9rccCxUsspLdiqLA4hkHYf
         dVRgmlC3hyPqU/3VpZrIwCHNGP/jYHu7yKk0tZH08g5sgWqLW6PyQe/4o0Oev8l5H8Gw
         /drl4uLDrYeyK63hRBSIrjzC4hRxe5aPSnM6IiiH6MEYCQ/3+HDwSKr1mYyt+ChShNVB
         ncTopTxTJ/SJJ/huXZ7TNE1OML3SjZOQymCLK5//VFM5Dx6WPnVq+R4l8/kKYmhR+PMV
         5r50BUsgx4KCegn/U+TDRPfFSviRB3tPj8FamgtVMbPcqCoS2mdGw1GCXEEXfrl8rm6a
         1djQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x4XKwz79+jgTAbiBSYFzIhcGt3E+nZ3AZ98BCg9lOnw=;
        b=pDmp5opU3wzqW1j0kv2uhktWGE/asK2As0qDAd/0/4+1N62C+xSN7kv0135CZgMd/b
         Ond1SNeo3vLHrbRYYXwlMaO/r1pUkJwyclQA4rEhWJA+ntms1Hk9PnrfB4qnEll/gHfF
         WMQ9uXjGkzuKvu2boMXeh6D02vhZzGAFdkK4xJdwQQjB5fD72WBqor64N15J4ZdMlu4s
         BCLsSlRtLYehrDT1CAYQSRmYCj1FEnujX4VU2R1fVoQTMl2YkH5Gg4bIRzq9b8MhbBPL
         Ptefwnig5GNbWnf/Bf3HIZyHudYeTyd4YbW+CbR8yFnP9WRU3XtCw4yiXFb90t47OQs5
         AXiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304JWgNCZa4M52Yb5Gs5NpM1epG/0Pn5ipriSoXwsfCsnjUGDWw
	B8ryFbdWmaVVvKUFyVrpxYE=
X-Google-Smtp-Source: ABdhPJyVGNaem5siIgmEo9wUcnKhw6I5KxU29m6cIrIsgt6/Znc9WqDc0IWlYEQdwiD5eh7OtpSitQ==
X-Received: by 2002:a05:6102:949:: with SMTP id a9mr15258073vsi.54.1626282553607;
        Wed, 14 Jul 2021 10:09:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:74d9:: with SMTP id f25ls640923uaq.1.gmail; Wed, 14 Jul
 2021 10:09:13 -0700 (PDT)
X-Received: by 2002:ab0:5a2e:: with SMTP id l43mr15319948uad.4.1626282552845;
        Wed, 14 Jul 2021 10:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626282552; cv=none;
        d=google.com; s=arc-20160816;
        b=ZPQ5NUsuHF+nujaNRKqR5Soovj3BMNGaCtDFRXHYY1PunHRSHgFVXJgAQoJUqlG9np
         E4pfeesbxZTwEUi5LEWib50ZCJwG3g5mbHL06tqkUCzkNznvR1Qj+dWDh4INK0kO4+Hq
         q60ZCN4yXj7ZN2LeIq9CknBRZgwJ6KGCfmHu1sXaaO8mV5nzivf0oHOrGN+eZt43kuEK
         mqbwp1CKqwR7usg1b1aO/SItiSO+2YY9yi7luHI64U88LSdIlZ8+lEgOGDsWH5StLMWK
         cPTP6p3oyx20hZpFtSxccIyyxDbarp/VIV9y4e3En2LFKHDB20VwW4CcTpu3qqgDwf+z
         S6LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=WInwUcSszXRWUvG9QthAIW50laIHG0NJdOPfnoq3m1c=;
        b=R5qCSmdSd0OgrmFxD7gavUepmkbOSSxa+wFYM4cYkJ2CoBSTrf8Oi26y3G8WAZBcok
         ioATN1d7gPXw1UpRMxaAaDlfg23fpVdwQ2gpDS5xBDDx9ZUrGI/vGh4vZ6XzNc2owICU
         HGXABrMJ+alFDtqqJo/oZd/lm8NUfoDUd5z6CqKrGsaf2phFH+FkyyAu7v4NyEFfR6pR
         rJ9NsYpVFLbiSVXGuJPBdvLqjNZqmrWnMgjFOzWWA6x/FmTOzYIoEl5zmlykGD1W7ZJM
         muleSVF51xavzCITK1gwVawUMpwOFNvU8DEXfNFq62I8t4g7rTS7PpGMLrOXNZBh78G8
         pi/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id x20si331343vso.2.2021.07.14.10.09.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 10:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="210435782"
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; 
   d="gz'50?scan'50,208,50";a="210435782"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2021 10:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; 
   d="gz'50?scan'50,208,50";a="630444624"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 14 Jul 2021 10:09:06 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m3iNe-000ItW-4e; Wed, 14 Jul 2021 17:09:06 +0000
Date: Thu, 15 Jul 2021 01:08:19 +0800
From: kernel test robot <lkp@intel.com>
To: Walter Wu <walter-zh.wu@mediatek.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: drivers/usb/misc/sisusbvga/sisusb.c:1878:12: warning: stack frame
 size (16672) exceeds limit (8192) in function 'sisusb_init_gfxcore'
Message-ID: <202107150101.mP4IZs9P-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ReaqsoxgOBHFXBhH"
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


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   40226a3d96ef8ab8980f032681c8bfd46d63874e
commit: 02c587733c8161355a43e6e110c2e29bd0acff72 kasan: remove redundant config option
date:   3 months ago
config: powerpc-randconfig-r022-20210714 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=02c587733c8161355a43e6e110c2e29bd0acff72
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 02c587733c8161355a43e6e110c2e29bd0acff72
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/usb/misc/sisusbvga/sisusb.c:50:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:216:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/misc/sisusbvga/sisusb.c:50:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:218:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/misc/sisusbvga/sisusb.c:50:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:220:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/misc/sisusbvga/sisusb.c:50:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:222:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/usb/misc/sisusbvga/sisusb.c:50:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:224:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> drivers/usb/misc/sisusbvga/sisusb.c:1878:12: warning: stack frame size (16672) exceeds limit (8192) in function 'sisusb_init_gfxcore' [-Wframe-larger-than]
   static int sisusb_init_gfxcore(struct sisusb_usb_data *sisusb)
              ^
>> drivers/usb/misc/sisusbvga/sisusb.c:1750:13: warning: stack frame size (8224) exceeds limit (8192) in function 'sisusb_set_default_mode' [-Wframe-larger-than]
   static void sisusb_set_default_mode(struct sisusb_usb_data *sisusb,
               ^
   9 warnings generated.


vim +/sisusb_init_gfxcore +1878 drivers/usb/misc/sisusbvga/sisusb.c

^1da177e4c3f41 Linus Torvalds       2005-04-16  1749  
a3fe2605a60d1d Hariprasad Kelam     2019-06-09 @1750  static void sisusb_set_default_mode(struct sisusb_usb_data *sisusb,
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1751  		int touchengines)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1752  {
a3fe2605a60d1d Hariprasad Kelam     2019-06-09  1753  	int i, j, modex, bpp, du;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1754  	u8 sr31, cr63, tmp8;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1755  	static const char attrdata[] = {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1756  		0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1757  		0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1758  		0x01, 0x00, 0x00, 0x00
^1da177e4c3f41 Linus Torvalds       2005-04-16  1759  	};
^1da177e4c3f41 Linus Torvalds       2005-04-16  1760  	static const char crtcrdata[] = {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1761  		0x5f, 0x4f, 0x50, 0x82, 0x54, 0x80, 0x0b, 0x3e,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1762  		0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1763  		0xea, 0x8c, 0xdf, 0x28, 0x40, 0xe7, 0x04, 0xa3,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1764  		0xff
^1da177e4c3f41 Linus Torvalds       2005-04-16  1765  	};
^1da177e4c3f41 Linus Torvalds       2005-04-16  1766  	static const char grcdata[] = {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1767  		0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x05, 0x0f,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1768  		0xff
^1da177e4c3f41 Linus Torvalds       2005-04-16  1769  	};
^1da177e4c3f41 Linus Torvalds       2005-04-16  1770  	static const char crtcdata[] = {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1771  		0x5f, 0x4f, 0x4f, 0x83, 0x55, 0x81, 0x0b, 0x3e,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1772  		0xe9, 0x8b, 0xdf, 0xe8, 0x0c, 0x00, 0x00, 0x05,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1773  		0x00
^1da177e4c3f41 Linus Torvalds       2005-04-16  1774  	};
^1da177e4c3f41 Linus Torvalds       2005-04-16  1775  
795a8075e9a53f Colin Ian King       2018-07-13  1776  	modex = 640; bpp = 2;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1777  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1778  	GETIREG(SISSR, 0x31, &sr31);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1779  	GETIREG(SISCR, 0x63, &cr63);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1780  	SETIREGOR(SISSR, 0x01, 0x20);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1781  	SETIREG(SISCR, 0x63, cr63 & 0xbf);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1782  	SETIREGOR(SISCR, 0x17, 0x80);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1783  	SETIREGOR(SISSR, 0x1f, 0x04);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1784  	SETIREGAND(SISSR, 0x07, 0xfb);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1785  	SETIREG(SISSR, 0x00, 0x03);	/* seq */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1786  	SETIREG(SISSR, 0x01, 0x21);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1787  	SETIREG(SISSR, 0x02, 0x0f);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1788  	SETIREG(SISSR, 0x03, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1789  	SETIREG(SISSR, 0x04, 0x0e);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1790  	SETREG(SISMISCW, 0x23);		/* misc */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1791  	for (i = 0; i <= 0x18; i++) {	/* crtc */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1792  		SETIREG(SISCR, i, crtcrdata[i]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1793  	}
^1da177e4c3f41 Linus Torvalds       2005-04-16  1794  	for (i = 0; i <= 0x13; i++) {	/* att */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1795  		GETREG(SISINPSTAT, &tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1796  		SETREG(SISAR, i);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1797  		SETREG(SISAR, attrdata[i]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1798  	}
^1da177e4c3f41 Linus Torvalds       2005-04-16  1799  	GETREG(SISINPSTAT, &tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1800  	SETREG(SISAR, 0x14);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1801  	SETREG(SISAR, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1802  	GETREG(SISINPSTAT, &tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1803  	SETREG(SISAR, 0x20);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1804  	GETREG(SISINPSTAT, &tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1805  	for (i = 0; i <= 0x08; i++) {	/* grc */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1806  		SETIREG(SISGR, i, grcdata[i]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1807  	}
^1da177e4c3f41 Linus Torvalds       2005-04-16  1808  	SETIREGAND(SISGR, 0x05, 0xbf);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1809  	for (i = 0x0A; i <= 0x0E; i++) {	/* clr ext */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1810  		SETIREG(SISSR, i, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1811  	}
^1da177e4c3f41 Linus Torvalds       2005-04-16  1812  	SETIREGAND(SISSR, 0x37, 0xfe);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1813  	SETREG(SISMISCW, 0xef);		/* sync */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1814  	SETIREG(SISCR, 0x11, 0x00);	/* crtc */
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1815  	for (j = 0x00, i = 0; i <= 7; i++, j++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1816  		SETIREG(SISCR, j, crtcdata[i]);
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1817  
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1818  	for (j = 0x10; i <= 10; i++, j++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1819  		SETIREG(SISCR, j, crtcdata[i]);
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1820  
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1821  	for (j = 0x15; i <= 12; i++, j++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1822  		SETIREG(SISCR, j, crtcdata[i]);
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1823  
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1824  	for (j = 0x0A; i <= 15; i++, j++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1825  		SETIREG(SISSR, j, crtcdata[i]);
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1826  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1827  	SETIREG(SISSR, 0x0E, (crtcdata[16] & 0xE0));
^1da177e4c3f41 Linus Torvalds       2005-04-16  1828  	SETIREGANDOR(SISCR, 0x09, 0x5f, ((crtcdata[16] & 0x01) << 5));
^1da177e4c3f41 Linus Torvalds       2005-04-16  1829  	SETIREG(SISCR, 0x14, 0x4f);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1830  	du = (modex / 16) * (bpp * 2);	/* offset/pitch */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1831  	SETIREGANDOR(SISSR, 0x0e, 0xf0, ((du >> 8) & 0x0f));
^1da177e4c3f41 Linus Torvalds       2005-04-16  1832  	SETIREG(SISCR, 0x13, (du & 0xff));
^1da177e4c3f41 Linus Torvalds       2005-04-16  1833  	du <<= 5;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1834  	tmp8 = du >> 8;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1835  	SETIREG(SISSR, 0x10, tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1836  	SETIREG(SISSR, 0x31, 0x00);	/* VCLK */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1837  	SETIREG(SISSR, 0x2b, 0x1b);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1838  	SETIREG(SISSR, 0x2c, 0xe1);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1839  	SETIREG(SISSR, 0x2d, 0x01);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1840  	SETIREGAND(SISSR, 0x3d, 0xfe);	/* FIFO */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1841  	SETIREG(SISSR, 0x08, 0xae);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1842  	SETIREGAND(SISSR, 0x09, 0xf0);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1843  	SETIREG(SISSR, 0x08, 0x34);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1844  	SETIREGOR(SISSR, 0x3d, 0x01);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1845  	SETIREGAND(SISSR, 0x1f, 0x3f);	/* mode regs */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1846  	SETIREGANDOR(SISSR, 0x06, 0xc0, 0x0a);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1847  	SETIREG(SISCR, 0x19, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1848  	SETIREGAND(SISCR, 0x1a, 0xfc);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1849  	SETIREGAND(SISSR, 0x0f, 0xb7);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1850  	SETIREGAND(SISSR, 0x31, 0xfb);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1851  	SETIREGANDOR(SISSR, 0x21, 0x1f, 0xa0);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1852  	SETIREGAND(SISSR, 0x32, 0xf3);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1853  	SETIREGANDOR(SISSR, 0x07, 0xf8, 0x03);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1854  	SETIREG(SISCR, 0x52, 0x6c);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1855  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1856  	SETIREG(SISCR, 0x0d, 0x00);	/* adjust frame */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1857  	SETIREG(SISCR, 0x0c, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1858  	SETIREG(SISSR, 0x0d, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1859  	SETIREGAND(SISSR, 0x37, 0xfe);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1860  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1861  	SETIREG(SISCR, 0x32, 0x20);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1862  	SETIREGAND(SISSR, 0x01, 0xdf);	/* enable display */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1863  	SETIREG(SISCR, 0x63, (cr63 & 0xbf));
^1da177e4c3f41 Linus Torvalds       2005-04-16  1864  	SETIREG(SISSR, 0x31, (sr31 & 0xfb));
^1da177e4c3f41 Linus Torvalds       2005-04-16  1865  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1866  	if (touchengines) {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1867  		SETIREG(SISSR, 0x20, 0xa1);	/* enable engines */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1868  		SETIREGOR(SISSR, 0x1e, 0x5a);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1869  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1870  		SETIREG(SISSR, 0x26, 0x01);	/* disable cmdqueue */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1871  		SETIREG(SISSR, 0x27, 0x1f);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1872  		SETIREG(SISSR, 0x26, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1873  	}
^1da177e4c3f41 Linus Torvalds       2005-04-16  1874  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1875  	SETIREG(SISCR, 0x34, 0x44);	/* we just set std mode #44 */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1876  }
^1da177e4c3f41 Linus Torvalds       2005-04-16  1877  
06e21efa2d344b Peter Senna Tschudin 2016-01-15 @1878  static int sisusb_init_gfxcore(struct sisusb_usb_data *sisusb)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1879  {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1880  	int ret = 0, i, j, bw, chab, iret, retry = 3;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1881  	u8 tmp8, ramtype;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1882  	u32 tmp32;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1883  	static const char mclktable[] = {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1884  		0x3b, 0x22, 0x01, 143,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1885  		0x3b, 0x22, 0x01, 143,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1886  		0x3b, 0x22, 0x01, 143,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1887  		0x3b, 0x22, 0x01, 143
^1da177e4c3f41 Linus Torvalds       2005-04-16  1888  	};
^1da177e4c3f41 Linus Torvalds       2005-04-16  1889  	static const char eclktable[] = {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1890  		0x3b, 0x22, 0x01, 143,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1891  		0x3b, 0x22, 0x01, 143,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1892  		0x3b, 0x22, 0x01, 143,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1893  		0x3b, 0x22, 0x01, 143
^1da177e4c3f41 Linus Torvalds       2005-04-16  1894  	};
^1da177e4c3f41 Linus Torvalds       2005-04-16  1895  	static const char ramtypetable1[] = {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1896  		0x00, 0x04, 0x60, 0x60,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1897  		0x0f, 0x0f, 0x1f, 0x1f,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1898  		0xba, 0xba, 0xba, 0xba,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1899  		0xa9, 0xa9, 0xac, 0xac,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1900  		0xa0, 0xa0, 0xa0, 0xa8,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1901  		0x00, 0x00, 0x02, 0x02,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1902  		0x30, 0x30, 0x40, 0x40
^1da177e4c3f41 Linus Torvalds       2005-04-16  1903  	};
^1da177e4c3f41 Linus Torvalds       2005-04-16  1904  	static const char ramtypetable2[] = {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1905  		0x77, 0x77, 0x44, 0x44,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1906  		0x77, 0x77, 0x44, 0x44,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1907  		0x00, 0x00, 0x00, 0x00,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1908  		0x5b, 0x5b, 0xab, 0xab,
^1da177e4c3f41 Linus Torvalds       2005-04-16  1909  		0x00, 0x00, 0xf0, 0xf8
^1da177e4c3f41 Linus Torvalds       2005-04-16  1910  	};
^1da177e4c3f41 Linus Torvalds       2005-04-16  1911  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1912  	while (retry--) {
^1da177e4c3f41 Linus Torvalds       2005-04-16  1913  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1914  		/* Enable VGA */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1915  		ret = GETREG(SISVGAEN, &tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1916  		ret |= SETREG(SISVGAEN, (tmp8 | 0x01));
^1da177e4c3f41 Linus Torvalds       2005-04-16  1917  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1918  		/* Enable GPU access to VRAM */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1919  		ret |= GETREG(SISMISCR, &tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1920  		ret |= SETREG(SISMISCW, (tmp8 | 0x01));
^1da177e4c3f41 Linus Torvalds       2005-04-16  1921  
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1922  		if (ret)
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1923  			continue;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1924  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1925  		/* Reset registers */
^1da177e4c3f41 Linus Torvalds       2005-04-16  1926  		ret |= SETIREGAND(SISCR, 0x5b, 0xdf);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1927  		ret |= SETIREG(SISSR, 0x05, 0x86);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1928  		ret |= SETIREGOR(SISSR, 0x20, 0x01);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1929  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1930  		ret |= SETREG(SISMISCW, 0x67);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1931  
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1932  		for (i = 0x06; i <= 0x1f; i++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1933  			ret |= SETIREG(SISSR, i, 0x00);
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1934  
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1935  		for (i = 0x21; i <= 0x27; i++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1936  			ret |= SETIREG(SISSR, i, 0x00);
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1937  
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1938  		for (i = 0x31; i <= 0x3d; i++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1939  			ret |= SETIREG(SISSR, i, 0x00);
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1940  
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1941  		for (i = 0x12; i <= 0x1b; i++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1942  			ret |= SETIREG(SISSR, i, 0x00);
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1943  
f996c49d4fa4e8 Peter Senna Tschudin 2016-01-15  1944  		for (i = 0x79; i <= 0x7c; i++)
^1da177e4c3f41 Linus Torvalds       2005-04-16  1945  			ret |= SETIREG(SISCR, i, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1946  
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1947  		if (ret)
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1948  			continue;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1949  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1950  		ret |= SETIREG(SISCR, 0x63, 0x80);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1951  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1952  		ret |= GETIREG(SISSR, 0x3a, &ramtype);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1953  		ramtype &= 0x03;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1954  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1955  		ret |= SETIREG(SISSR, 0x28, mclktable[ramtype * 4]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1956  		ret |= SETIREG(SISSR, 0x29, mclktable[(ramtype * 4) + 1]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1957  		ret |= SETIREG(SISSR, 0x2a, mclktable[(ramtype * 4) + 2]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1958  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1959  		ret |= SETIREG(SISSR, 0x2e, eclktable[ramtype * 4]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1960  		ret |= SETIREG(SISSR, 0x2f, eclktable[(ramtype * 4) + 1]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1961  		ret |= SETIREG(SISSR, 0x30, eclktable[(ramtype * 4) + 2]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1962  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1963  		ret |= SETIREG(SISSR, 0x07, 0x18);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1964  		ret |= SETIREG(SISSR, 0x11, 0x0f);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1965  
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1966  		if (ret)
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1967  			continue;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1968  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1969  		for (i = 0x15, j = 0; i <= 0x1b; i++, j++) {
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1970  			ret |= SETIREG(SISSR, i,
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1971  					ramtypetable1[(j*4) + ramtype]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1972  		}
^1da177e4c3f41 Linus Torvalds       2005-04-16  1973  		for (i = 0x40, j = 0; i <= 0x44; i++, j++) {
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1974  			ret |= SETIREG(SISCR, i,
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1975  					ramtypetable2[(j*4) + ramtype]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1976  		}
^1da177e4c3f41 Linus Torvalds       2005-04-16  1977  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1978  		ret |= SETIREG(SISCR, 0x49, 0xaa);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1979  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1980  		ret |= SETIREG(SISSR, 0x1f, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1981  		ret |= SETIREG(SISSR, 0x20, 0xa0);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1982  		ret |= SETIREG(SISSR, 0x23, 0xf6);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1983  		ret |= SETIREG(SISSR, 0x24, 0x0d);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1984  		ret |= SETIREG(SISSR, 0x25, 0x33);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1985  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1986  		ret |= SETIREG(SISSR, 0x11, 0x0f);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1987  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1988  		ret |= SETIREGOR(SISPART1, 0x2f, 0x01);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1989  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1990  		ret |= SETIREGAND(SISCAP, 0x3f, 0xef);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1991  
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1992  		if (ret)
06e21efa2d344b Peter Senna Tschudin 2016-01-15  1993  			continue;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1994  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1995  		ret |= SETIREG(SISPART1, 0x00, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1996  
^1da177e4c3f41 Linus Torvalds       2005-04-16  1997  		ret |= GETIREG(SISSR, 0x13, &tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  1998  		tmp8 >>= 4;
^1da177e4c3f41 Linus Torvalds       2005-04-16  1999  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2000  		ret |= SETIREG(SISPART1, 0x02, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2001  		ret |= SETIREG(SISPART1, 0x2e, 0x08);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2002  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2003  		ret |= sisusb_read_pci_config(sisusb, 0x50, &tmp32);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2004  		tmp32 &= 0x00f00000;
^1da177e4c3f41 Linus Torvalds       2005-04-16  2005  		tmp8 = (tmp32 == 0x100000) ? 0x33 : 0x03;
^1da177e4c3f41 Linus Torvalds       2005-04-16  2006  		ret |= SETIREG(SISSR, 0x25, tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2007  		tmp8 = (tmp32 == 0x100000) ? 0xaa : 0x88;
^1da177e4c3f41 Linus Torvalds       2005-04-16  2008  		ret |= SETIREG(SISCR, 0x49, tmp8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2009  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2010  		ret |= SETIREG(SISSR, 0x27, 0x1f);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2011  		ret |= SETIREG(SISSR, 0x31, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2012  		ret |= SETIREG(SISSR, 0x32, 0x11);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2013  		ret |= SETIREG(SISSR, 0x33, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2014  
06e21efa2d344b Peter Senna Tschudin 2016-01-15  2015  		if (ret)
06e21efa2d344b Peter Senna Tschudin 2016-01-15  2016  			continue;
^1da177e4c3f41 Linus Torvalds       2005-04-16  2017  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2018  		ret |= SETIREG(SISCR, 0x83, 0x00);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2019  
a3fe2605a60d1d Hariprasad Kelam     2019-06-09  2020  		sisusb_set_default_mode(sisusb, 0);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2021  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2022  		ret |= SETIREGAND(SISSR, 0x21, 0xdf);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2023  		ret |= SETIREGOR(SISSR, 0x01, 0x20);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2024  		ret |= SETIREGOR(SISSR, 0x16, 0x0f);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2025  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2026  		ret |= sisusb_triggersr16(sisusb, ramtype);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2027  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2028  		/* Disable refresh */
^1da177e4c3f41 Linus Torvalds       2005-04-16  2029  		ret |= SETIREGAND(SISSR, 0x17, 0xf8);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2030  		ret |= SETIREGOR(SISSR, 0x19, 0x03);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2031  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2032  		ret |= sisusb_getbuswidth(sisusb, &bw, &chab);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2033  		ret |= sisusb_verify_mclk(sisusb);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2034  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2035  		if (ramtype <= 1) {
^1da177e4c3f41 Linus Torvalds       2005-04-16  2036  			ret |= sisusb_get_sdram_size(sisusb, &iret, bw, chab);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2037  			if (iret) {
06e21efa2d344b Peter Senna Tschudin 2016-01-15  2038  				dev_err(&sisusb->sisusb_dev->dev,
06e21efa2d344b Peter Senna Tschudin 2016-01-15  2039  						"RAM size detection failed, assuming 8MB video RAM\n");
^1da177e4c3f41 Linus Torvalds       2005-04-16  2040  				ret |= SETIREG(SISSR, 0x14, 0x31);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2041  				/* TODO */
^1da177e4c3f41 Linus Torvalds       2005-04-16  2042  			}
^1da177e4c3f41 Linus Torvalds       2005-04-16  2043  		} else {
06e21efa2d344b Peter Senna Tschudin 2016-01-15  2044  			dev_err(&sisusb->sisusb_dev->dev,
06e21efa2d344b Peter Senna Tschudin 2016-01-15  2045  					"DDR RAM device found, assuming 8MB video RAM\n");
^1da177e4c3f41 Linus Torvalds       2005-04-16  2046  			ret |= SETIREG(SISSR, 0x14, 0x31);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2047  			/* *** TODO *** */
^1da177e4c3f41 Linus Torvalds       2005-04-16  2048  		}
^1da177e4c3f41 Linus Torvalds       2005-04-16  2049  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2050  		/* Enable refresh */
^1da177e4c3f41 Linus Torvalds       2005-04-16  2051  		ret |= SETIREG(SISSR, 0x16, ramtypetable1[4 + ramtype]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2052  		ret |= SETIREG(SISSR, 0x17, ramtypetable1[8 + ramtype]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2053  		ret |= SETIREG(SISSR, 0x19, ramtypetable1[16 + ramtype]);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2054  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2055  		ret |= SETIREGOR(SISSR, 0x21, 0x20);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2056  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2057  		ret |= SETIREG(SISSR, 0x22, 0xfb);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2058  		ret |= SETIREG(SISSR, 0x21, 0xa5);
^1da177e4c3f41 Linus Torvalds       2005-04-16  2059  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2060  		if (ret == 0)
^1da177e4c3f41 Linus Torvalds       2005-04-16  2061  			break;
^1da177e4c3f41 Linus Torvalds       2005-04-16  2062  	}
^1da177e4c3f41 Linus Torvalds       2005-04-16  2063  
^1da177e4c3f41 Linus Torvalds       2005-04-16  2064  	return ret;
^1da177e4c3f41 Linus Torvalds       2005-04-16  2065  }
^1da177e4c3f41 Linus Torvalds       2005-04-16  2066  

:::::: The code at line 1878 was first introduced by commit
:::::: 06e21efa2d344b5e29bf680e623fa76dbcb62580 usb-misc: sisusbvga: Fix coding style: vertical whitespace changes

:::::: TO: Peter Senna Tschudin <peter.senna@collabora.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107150101.mP4IZs9P-lkp%40intel.com.

--ReaqsoxgOBHFXBhH
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ReaqsoxgOBHFXBhH--
