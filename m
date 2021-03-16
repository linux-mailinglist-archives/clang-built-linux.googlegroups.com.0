Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5HSYGBAMGQEPI7HSCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D856733D0B5
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 10:25:09 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id h6sf15057086plr.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 02:25:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615886708; cv=pass;
        d=google.com; s=arc-20160816;
        b=mr/tzTT9w5XCbq8aAePVA6puN47CvbiDu2LesZMLK+ep0mmgtl7a50pwjx4MuhsHde
         oeZOOYOOArew2D8AyLSyDUnYLlNTl4COgk99OvuJjezrxRjR2JAX/8Ei5kJ0dL9tt041
         fmuNGhExo2V8J0o6xsMkQEW2rEis02mNG5fOomxr9i3eLPktY6JO3cnv27kAkOExcnrE
         tIbG1sUBNjDeF/lwzihyJtUzONQ8PUanYLilPI25y7ZafBwMWVa4mRUvs5tFmmM4oMIx
         zDSVPf3v8QMNgVzSV5Awkc3Btzb+B6mERm4abZewK24w2B5LEdx8yDt/Xc/HchfnHrVk
         kaBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ewsxg8o2kX35Bn+sbEzOeeb8sJyWHIJW/+cOJihvJho=;
        b=lXj8DzyIkPWB38usgVeNtjmPn9mtCdAsgk/K5RBaBGirR3B3sM9AW+e4rYhbwo/2Bs
         cZEIH8Pdpil5RlPpq4xl/OxT525ZndNR4KvwXwEcfEwF0YcwvUyz3K50ymk3PLTiyzWz
         eWPJ6cOTmO8zS4F8C0OapeWiKNaxwmH3Dt4zkaEfnKiobxzDUfSTvghAM/lM0cVBL23P
         fjg86oAAD5E9VuhqafK5OZAJ7xaXRc0nQpphHz+XoMAORvVqgPaWg8kHC/+NspxDhm6q
         LyTHS1B3dQt7Z1JSNL74HB1AdrnyIr+2nVjaNXjrQdvlC0Cok7tymqoUOSi9S2pyHwFC
         fFJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ewsxg8o2kX35Bn+sbEzOeeb8sJyWHIJW/+cOJihvJho=;
        b=QN4hL60OdQ5M8gcmu3HW15GWwKKYGbl0AVBaiNe8mCS0KOI6o9lk/L7c2m06Ghn3V8
         Kk4yAIVgqELxGOT42PZ0k7+yhTOJ/xu159h3xOKKd2tkBAHIfy5zLlIRB6VGC2/rSnf8
         1HHDNh3AqNOrfLt/3S9RP1g/KXAg1a8bkM5JGu+FQKZ5jX1wvRuL4YssXW7S67bgzvnb
         cYe3L7ATJMRVb1E3oE2HhGi3AK9SXMCB7jCFK5L0qkoxrREkyIpqvsoNaMb9/Lv/RQGm
         Mkoay682QRLXkxZnSaURdRfiNANj0kxQRQ4Z7Mfaom961pKql1ms74wOahAtBVJa0obE
         hasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ewsxg8o2kX35Bn+sbEzOeeb8sJyWHIJW/+cOJihvJho=;
        b=Bl2jq8/5wpXdiJAHiJ7Pw2Wz7ike8cADY+CqlLORgwPPJ7nUhgEj/Q5umtQUcsMRc1
         UaA3tod8OoAkeublJA8YYduFQ/aavdCGr38QQy2D3BYs9QwMGLYFucAVMJ9FGwZKBkCg
         nBR65EVhGauYEJ3CUqyKeKxfNVN31rD4kBVJ11pT4ycnDEkx6Sm3fkr479r4N9yfLsDl
         BNZHDtSxB74Xs6w5qCsuU+UuGKJOpXxFqYXW/RHHf3aURdF2vPk2uxAGOs/qpgSC2ZeI
         IB2Q5PT+jO5bM6UJi7r2EMJFzEZPmOLPNht7ndC0BA4zQoVbWpjZwX1LooGG2cWhqJsl
         j2Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531t6mvFlTVGu+vmgUa07e23lJSRjkLu1Q72Dwb02A4J9UcPjkxX
	cQerszJ6oFPMTbqLE8gUxvc=
X-Google-Smtp-Source: ABdhPJx1GW0fMHSpXtvtPvpwJQgftKAfkVKdO0R9V5Bx0o44FvrAphnI2v21X/fbdKiSzgTNOInMOQ==
X-Received: by 2002:aa7:8ad2:0:b029:1ee:16f0:7c70 with SMTP id b18-20020aa78ad20000b02901ee16f07c70mr14093905pfd.58.1615886708495;
        Tue, 16 Mar 2021 02:25:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:972f:: with SMTP id k15ls7738928pfg.10.gmail; Tue, 16
 Mar 2021 02:25:08 -0700 (PDT)
X-Received: by 2002:a63:4708:: with SMTP id u8mr3162895pga.102.1615886707782;
        Tue, 16 Mar 2021 02:25:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615886707; cv=none;
        d=google.com; s=arc-20160816;
        b=iIrXK7QuFcrNcilzrG4LmjgHkPx7U481+7HG572k/hRRd3tP5OqSUy94nw51blG0ba
         xgMZ7bM0xEsBca1Pv3/KH2n56ta+UeF6ZNF37p2z26r9nwAINp9uQEo2dGvxgOL2N0wp
         B7p2jWQ7dkJOq8wAgLPaCs3T9N3SJeBdkYsBzAwia8wiFkBjbFtaG38OvMQSdh5t9hv1
         XseEa9VcdUAORDV9Cuh2wrHnmyTCjpB+RGz+dACL7HvtovwQKskHd2hE7YgWM6WiOERx
         KgzKXP1fVuJjTP7InL0aszO4Lf/tigYkQb6jmSxYo2XVkMxA/frZHEa9PLMYFAup9nEJ
         RsTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=87DTzt/0T+6tyScaT/43BWWaed8CnNjWcMdcAr6U4Yw=;
        b=g948Aa8s5yVxk2cJr+OIAvk6m8O8iTtWyZQitbB4P44pW5+OCEj+r/cTDHMHiRaSgH
         ljjWJKsy78L6h+ayQpvyLxV0aBIoq77JyUdo40hOFlRtng8KAMO3pv29ltvMzOBRKiOs
         jOguW7gRImUR10CojlQRnkWK6Q5E+HI63bZv3TiRPxg1Q3Sm9fZZrSBvD9AX+v2xgtz3
         QpPVkDg/KdseWXZ9Xxrb1ZUA7wFyFH8dD3wQuptKUXwtv8kI+E8qXMB/PPZBQOSHyZpS
         fJeW6pLuNnB9BTK3lW6p5rEv+F1Hus6ttnwYR8wXGnYYYe0W9HgtKGZyXHDaSzr2XCXj
         WUkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id k3si158571pll.1.2021.03.16.02.25.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Mar 2021 02:25:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: ut8QNSxOrYMhyFnnuMkRbk0WvvFrsJwKvzvvgOwz+To4OwkJHcPVonOnBOCA1VMloYHk3qmzHg
 WI6IRUuxjAvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="188588207"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; 
   d="gz'50?scan'50,208,50";a="188588207"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2021 02:25:06 -0700
IronPort-SDR: eCy2+Bjwo0cfrehYaqZHY8dToMTXIDcQXAV+LVj4CnYtmO+c0Ywr1QkO5ZnbQXYQs035Q1r5I3
 i6BVGfch9Z3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; 
   d="gz'50?scan'50,208,50";a="432964013"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 16 Mar 2021 02:25:05 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lM5wm-00005M-Cw; Tue, 16 Mar 2021 09:25:04 +0000
Date: Tue, 16 Mar 2021 17:24:51 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-misc:vgaarb-cleanups 8/8] include/linux/vgaarb.h:86:2: error:
 void function 'vga_client_unregister' should not return a value
Message-ID: <202103161749.PQHjGGAn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/misc.git vgaarb-cleanups
head:   1b5803735663928e9ddb2ca5ad9d4602d5ac18d0
commit: 1b5803735663928e9ddb2ca5ad9d4602d5ac18d0 [8/8] vgaarb: replace vga_set_legacy_decoding with a flag to vga_client_{,un}register
config: powerpc-randconfig-r031-20210316 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 50c7504a93fdb90c26870db8c8ea7add895c7725)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git remote add hch-misc git://git.infradead.org/users/hch/misc.git
        git fetch --no-tags hch-misc vgaarb-cleanups
        git checkout 1b5803735663928e9ddb2ca5ad9d4602d5ac18d0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
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
   <scratch space>:59:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_crtc_helper.c:36:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
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
   <scratch space>:63:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_crtc_helper.c:36:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
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
   <scratch space>:67:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_crtc_helper.c:36:
   In file included from include/drm/drm_atomic.h:31:
   In file included from include/drm/drm_crtc.h:31:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:29:
   In file included from include/linux/ftrace.h:10:
   In file included from include/linux/trace_recursion.h:5:
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
   <scratch space>:71:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_crtc_helper.c:45:
   In file included from include/drm/drm_fb_helper.h:39:
>> include/linux/vgaarb.h:86:2: error: void function 'vga_client_unregister' should not return a value [-Wreturn-type]
           return 0;
           ^      ~
   6 warnings and 1 error generated.
--
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_irq.c:56:
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
   <scratch space>:114:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_irq.c:56:
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
   <scratch space>:118:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_irq.c:56:
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
   <scratch space>:122:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_irq.c:56:
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
   <scratch space>:126:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_irq.c:56:
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
   <scratch space>:130:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/drm_irq.c:58:
>> include/linux/vgaarb.h:86:2: error: void function 'vga_client_unregister' should not return a value [-Wreturn-type]
           return 0;
           ^      ~
>> drivers/gpu/drm/drm_irq.c:143:47: error: too many arguments provided to function-like macro invocation
                           vga_client_unregister(to_pci_dev(dev->dev, 0));
                                                                      ^
   include/linux/pci.h:522:9: note: macro 'to_pci_dev' defined here
   #define to_pci_dev(n) container_of(n, struct pci_dev, dev)
           ^
>> drivers/gpu/drm/drm_irq.c:143:26: error: use of undeclared identifier 'to_pci_dev'
                           vga_client_unregister(to_pci_dev(dev->dev, 0));
                                                 ^
   drivers/gpu/drm/drm_irq.c:206:46: error: too many arguments provided to function-like macro invocation
                   vga_client_unregister(to_pci_dev(dev->dev, 0));
                                                              ^
   include/linux/pci.h:522:9: note: macro 'to_pci_dev' defined here
   #define to_pci_dev(n) container_of(n, struct pci_dev, dev)
           ^
   drivers/gpu/drm/drm_irq.c:206:25: error: use of undeclared identifier 'to_pci_dev'
                   vga_client_unregister(to_pci_dev(dev->dev, 0));
                                         ^
   6 warnings and 5 errors generated.
--
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:43:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insb, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:138:1: note: expanded from here
   __do_insb
   ^
   arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
   #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:142:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:146:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:150:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:154:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:14:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:158:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from drivers/gpu/drm/vkms/vkms_drv.c:20:
   In file included from include/drm/drm_fb_helper.h:39:
>> include/linux/vgaarb.h:86:2: error: void function 'vga_client_unregister' should not return a value [-Wreturn-type]
           return 0;
           ^      ~
   drivers/gpu/drm/vkms/vkms_drv.c:155:9: warning: shift count >= width of type [-Wshift-count-overflow]
                                              DMA_BIT_MASK(64));
                                              ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   7 warnings and 1 error generated.


vim +/vga_client_unregister +86 include/linux/vgaarb.h

    48	
    49	#ifdef CONFIG_VGA_ARB
    50	int vga_get(struct pci_dev *pdev, unsigned int rsrc, int interruptible);
    51	void vga_put(struct pci_dev *pdev, unsigned int rsrc);
    52	struct pci_dev *vga_default_device(void);
    53	void vga_set_default_device(struct pci_dev *pdev);
    54	int vga_remove_vgacon(struct pci_dev *pdev);
    55	int vga_client_register(struct pci_dev *pdev, unsigned int flags,
    56			unsigned int (*set_decode)(struct pci_dev *pdev, bool state));
    57	void vga_client_unregister(struct pci_dev *pdev, unsigned int flags);
    58	#else /* CONFIG_VGA_ARB */
    59	static inline int vga_get(struct pci_dev *pdev, unsigned int rsrc,
    60			int interruptible)
    61	{
    62		return 0;
    63	}
    64	static inline void vga_put(struct pci_dev *pdev, unsigned int rsrc)
    65	{
    66	}
    67	static inline struct pci_dev *vga_default_device(void)
    68	{
    69		return NULL;
    70	}
    71	static inline void vga_set_default_device(struct pci_dev *pdev)
    72	{
    73	}
    74	static inline int vga_remove_vgacon(struct pci_dev *pdev)
    75	{
    76		return 0;
    77	}
    78	static inline int vga_client_register(struct pci_dev *pdev, unsigned int flags,
    79			unsigned int (*set_decode)(struct pci_dev *pdev, bool state))
    80	{
    81		return 0;
    82	}
    83	static inline void vga_client_unregister(struct pci_dev *pdev,
    84			unsigned int flags)
    85	{
  > 86		return 0;
    87	}
    88	#endif /* CONFIG_VGA_ARB */
    89	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103161749.PQHjGGAn-lkp%40intel.com.

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ydMhcHTVdgj/A8eswyyruAEA

--BOKacYhQ+x31HxR3--
