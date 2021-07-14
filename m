Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTNZXSDQMGQEYPJKZVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D663C89A1
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 19:20:15 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id w191-20020a62ddc80000b0290318fa423788sf2259350pff.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 10:20:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626283213; cv=pass;
        d=google.com; s=arc-20160816;
        b=epH5noaGKOrdBG62wYq7gQp8o1fqBtl9ZYphEYEwXuERqgUB42SPB1HnRHmdaeyoKY
         ohaIqSoKRLPvM9mInZySjUYF/ITe2yVOJLmlUEW8Dtm2qdLJjDk75P7fCumzfSrMTIt8
         tC2PWsM63WVMXWf9sPeUHggQX9Z6qwM5rQpOyshCP/eebS9DwIkGQF7m1FOlVRZwX0Qw
         f+kbEeKq6EbO/V30/RJgr+gcND4TEoJGLCjp3h+4lKjS2CY12utcHdWlw14YJuS2Y4k7
         HWYt6MiG6iGJBJXpzwkVb86QZ9jv9r43rhZ10htBK/M6i1Fj06FoH6I+Q5grU8WhNMx3
         hGiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Gy9irbqlSPM06To06zqu3zK8wTmKTFuYJLw/U+iVM/k=;
        b=pjezcYTY/b9igCpLlSZT0ksOeZqC1oG26qBbV2+KoIr+IEMonjOrvoWAsCXNO+rc54
         7iJw8JtW9X1AplCea9baefmmYgdpEoNDmXMx9JbLuQ6cN1RSH2SGEttY5RzvLudaN95v
         pTstLD4nDB1AHNt+099d7Ic7azdDc6/p9H8Ctrev0+Dr0aMUIc/2yqxDlVnt2phOzygW
         U0rxa8fOpT5iNds8VRYZ+o3kHW3NLAtNfMbnp4Je2Ih+Fwe4UJMuHtPsihxql6ACwBKR
         Nwver6RdivuEByjKWkEDn2MzZXs6x1OIqPB9bXiadh+4EQuhl1DRVL7tZbkz3J/9ZC+l
         ZCUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gy9irbqlSPM06To06zqu3zK8wTmKTFuYJLw/U+iVM/k=;
        b=nXk2YFfRSWIlMVkGT7NgPOrgrMbgEt7o0DgwLvgNWdMkF9DoImvU5fS0fUOVxPpZNi
         1Nv7DiLBrw0FtKPbVM+Thu6uKEl9n/2OPMh4muiV9l2K3hay8ex8ZsS7+uXemsXa7SwD
         ziSvJMppxpgF4ABdlDr87m8gsReBzvmr0Vgjn90ibvFQGkjWjlHjDDYDbCRs59HOYuar
         iTobsLFogn6pc/FA3a0S3PSeOQx51pb9sEhk6SRNYGI96zbMtTeFChEGBTVlAfLvbR1p
         BCRvA1uRFRgbuiqktt1BHj79kL+G8tLMQiDteebsDD3fHB7z5r8Om9Wm9jy5srkOLpCn
         J8ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gy9irbqlSPM06To06zqu3zK8wTmKTFuYJLw/U+iVM/k=;
        b=kCUYYGX3cngTCuM9WQnAgAKtfg4JNdRgOwCrSgt50yUnjqh+8T9MfYCsxKoYcP3aT8
         bwI13ImuHZNl8aN724iKr0UnDVmPm8thg7HIiGAVTZbAQuNw6RQDU1D55tNFveE3AYqn
         MzprcqBUP9QYknhjeMqjZiBoN4xnK03q5FlAiuBZVV7xGXisOSR0gPpYBSSAaXw/e70Z
         7HwswxcMlgarPgrUxcMdI7TiSc93jwLb7ssI7LVIltVKhsIgsHo0xuOYm/7JkebCYmWr
         qwqZg8HFz7dtd0YhL2qojdpkkM6WdwfakeZnjzrRCJPXltC9kpIJvXBwHmLaWBlkOfyU
         SDfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KH6fPH/A4/ZYe3KlxPSVdJZtfYQW35ANB1Z6Qpv3GSl8xmxd1
	UXlJEMFawn5sjbwRHajmYHc=
X-Google-Smtp-Source: ABdhPJzJ4BUlDWbWkW/PaUpFd4+EGB+Y8Oe8VNgGLYpRRTi4h+e5WRMYZuDN6y52fUaxVqgyU79y2g==
X-Received: by 2002:a05:6a00:a1e:b029:30e:f6eb:c30b with SMTP id p30-20020a056a000a1eb029030ef6ebc30bmr11349439pfh.72.1626283213521;
        Wed, 14 Jul 2021 10:20:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:d69:: with SMTP id n41ls1588264pfv.9.gmail; Wed, 14
 Jul 2021 10:20:13 -0700 (PDT)
X-Received: by 2002:a63:b48:: with SMTP id a8mr10656387pgl.169.1626283212718;
        Wed, 14 Jul 2021 10:20:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626283212; cv=none;
        d=google.com; s=arc-20160816;
        b=JK3cXdUQe7tsxtjY2rHtzVScRe5bpJImRLwo0i6CQRlE54Gtqa3oE5D9Pz7XB07ors
         y5QR1Um75XYxWARFvU54TZJnFF5FRGztNxYJ/uHqFbMbVrqDqQ8NflIYGe22PT2LYIs8
         hUJx2hzD/hePZDyPDYzZ+Sz1CP3XzOFhBA6rVZbD9pY/KER6i0V1D137AVqjj3smsAlF
         ZFYP3SgOGo1dZy7MBm0yVtpmDz6394jfBwktK+akmemJZWHEAb1v2CDgGfmUbs6e99/G
         aa/HSqfLhSf52cmWJbPhoB2hUoUXfGXOjV8fum/NmAhQxGakhDq+1CafR613OZWqU8kb
         fX+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Ae9Hf/5xTjXR0nU/dXHqiaZX8NVPG7N8UE0tk09dA4A=;
        b=A2FfBXGqq9aEgU2ocZCBXQiG0BWD0TZS9/LON4NIM/KSvkbKg/+jk+oF/uyd5gL11s
         TaCkgsz6JCCfaVac1PkxZG29QDpekS72gQ0BvtwIMQzg8J+zx6LK9QJF+02J5tawIBIT
         mVhH2w5mGwyB18vSaqPoby9Zzzf9jH3wHC30YWVTrHxlSoJWzcb4/GFw5KnSgrBqJkrk
         /2Au1VBM7aK96FMhWu6IMstpwqyYhUsprlpNTQ7oTSRuyBfRMg8Na1uy8Uh3nWIXDYfz
         dxmtTH40dGJqtptk5EXu6uaqIgkcrJxg1UjwXofIc9X7kHwkuYK1xjQHLbozv5IJpHXI
         w/MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id mq7si261928pjb.1.2021.07.14.10.20.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 10:20:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="210438483"
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; 
   d="gz'50?scan'50,208,50";a="210438483"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2021 10:20:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,239,1620716400"; 
   d="gz'50?scan'50,208,50";a="412858810"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 14 Jul 2021 10:20:07 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m3iYI-000Itr-Ng; Wed, 14 Jul 2021 17:20:06 +0000
Date: Thu, 15 Jul 2021 01:19:25 +0800
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
Message-ID: <202107150116.Q5CQ7MRF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="azLHFNyN32YCQGCU"
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


--azLHFNyN32YCQGCU
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107150116.Q5CQ7MRF-lkp%40intel.com.

--azLHFNyN32YCQGCU
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--azLHFNyN32YCQGCU--
