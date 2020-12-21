Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOP7QD7QKGQELD2U5MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 092BB2DF93B
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 07:24:59 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id x14sf8498744ilg.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 22:24:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608531898; cv=pass;
        d=google.com; s=arc-20160816;
        b=eufLVVtOzv0I6++qOEx51VDjz8oILzrKE818gglcrfR6zoozPwhJ9v7tqkE/p0lGcY
         cx55kkAW0i796rUhh2/ML7wUYCG4EAjBe9ZudlnvmQ4gIIha+0lx/1Uo5S+kg5lxUQeX
         2J1MOIDMim4nO5O7wtn2hIKHYpSr+fmbJZuHMoTYjzfr9h5O3PlpDz1rx6YQcgAL5fIE
         oKPVmK/vqZjWR0stdP5D966uuaCOjuVla0PXO7hERoBazTMyLsa6W7Q0nMtIzt/hWb5b
         aC1wXc1UVYRSECY0Shjap22RMIBCRn9/XiQIdZyskFlkLMw1L+ZxXSIYP2FNTLM/Dvk1
         qskQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XkBfqtiGfYoLFVpAr/xyoU/UUQOpGeIduaxhQqs8SlA=;
        b=sk5Pw5wVJjnT/WNq19zWwYcdbspgpOfydCuA7cuxlb8k/q4Y3MJTKUitNHjcfrB0ZK
         r5iLeEmNAbzMyMhiCpxMQUztxgcxcp1TqaFOaWq7rqL0Mnfa+AJPrk8t4YtVqi9YGS81
         xZl2vgFZrQSPAGK9m2EjvsjFSqNrtR20wHHzTMGMBqh3gBzvdnrEnS2GQ7rF3jEJmfXQ
         h3onSBUBSIjKjxh6FQqHMmYfZIq1uY/yuIyKAhn9CgWFEdRrwtGquZFcw4nrFamzsDnt
         RwujQgKNcD7NloDwWaCX1u6zWXqjyNMb9e4L2JKC6obsXTLlSMPtH3XKUgOv3Mj2dg4X
         QhRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XkBfqtiGfYoLFVpAr/xyoU/UUQOpGeIduaxhQqs8SlA=;
        b=CgH5FgpR+//FEhaXfS3Zc4SHEVX7HnL9O9IOq8mQ6BJJ722IhUhFHXzNej9zuTNbJT
         dkfD0O0CF249KXn76aiD19LCCJgyjPWHjtQWNKzoEfSpfeAMZDUNe+BASuNx1GL2WBYq
         ePHM3KcERVpRGf+7J8GwAzlZFXJaMIQgkGtEH9mJvXUZVPYH4K56b7TLAT7tl3WIW5++
         TYXjOoezhE7kbI8Tx2fROFcMrOuU/CJ717m3u1kmhH8a1MsmY4pKN6A2hk28xKc4Zo0T
         oP7M9LshHkbbr9FlDqqzUSJu6qBcn0z1Xiz5ufK1TPB9E5om7LEjMawWZkXMm4k62O4b
         853Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XkBfqtiGfYoLFVpAr/xyoU/UUQOpGeIduaxhQqs8SlA=;
        b=mZtgQpObgFIgtkxgGYEDGJ3lnNUyDB7wL9ONxtCjidJfq+Htgp5VV3dz2Mg1BK9cEx
         fTudXvIz01+UP9sIcMiD37+H3BqMobo943WTR4ruUjClGhw0vXddW37aUBeewelw5qA5
         FpG9JhvMQypZUi+mkhvcqQEvZcvOny3XY1vTEofp7Pj2indBboGwcmdBau6IKWLIqbzA
         ZVym3WCb0S6rjQDNvMd/+Vdqo2V4Zbb3gRLgiobcVvti2kCMR7vXEuNx4A01Vf6pV5rF
         nRbenJbztKt20JSveyI4e1J8o4RSzDakEKqaNaUuhn6ImRox4PXGa43N6gQR/4W69xus
         7McQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oVEs6byAlwhGLwzk0ve3QgKeGJNCb8hOi2dtBS1fwzfXjJ0V9
	LrwVzezAONrZ7s9yOpkinA8=
X-Google-Smtp-Source: ABdhPJxBLGLNq+1yu3tWRC7dlt9SVltlGGPnHTVPAxPlurUcazS9BpK7LSMbzcjVCx36SBl/3ig4uw==
X-Received: by 2002:a02:ccdc:: with SMTP id k28mr12185192jaq.137.1608531897365;
        Sun, 20 Dec 2020 22:24:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:12d0:: with SMTP id v16ls4545555jas.11.gmail; Sun,
 20 Dec 2020 22:24:57 -0800 (PST)
X-Received: by 2002:a02:3e86:: with SMTP id s128mr13820667jas.131.1608531896905;
        Sun, 20 Dec 2020 22:24:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608531896; cv=none;
        d=google.com; s=arc-20160816;
        b=JXkHJRFv1CSIhtiD6aVrYwnBnVjoy2GlhfKZClYTDPSAErRBo9VFOKsDRJ0Bqcp2UA
         L8GflE1cR9WdROMrOycms24QH2EhRwQueU89xvp1GiuT699B/naOX1NZw97gUAxqI4VW
         9BXpkJ/xw/JeCE6KlNaFMsQuo42xLt5Tt+aiKWyZl4c3lxuCccz5HtMdwys+sFRttMnJ
         UGJD7PgAu6Ukwz6DKiPMD1iftSM12V/G5nZF91d+2leTC24xQvzZ+DJ7w3JF7ZWm76WZ
         8jDo4gGX1gY0/8nW295iRvj1osMwIEvNXyiNj0oVhv3BVWUf1bT6kz6xt+6zv/56eLna
         /7Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=xdm1E4/f8cgGqdqfwL5enNHiU7NiXbNLU83R6Kqfurg=;
        b=OMHQN0OmgP6e/tYjuyzCbCzWn4/CnnES2VSEx4lTqBFB4V3q1Vh7gnOLnSwq8WA4p3
         kMiE74hAsygEf7ioCE5eOk3tNJl3Ed0DXZ/yOg4q2GU5R5+c17ZHpohrQvHZLI0qvkxW
         rC8ysZ4xytpLd7O99d/ocQKzellnn29DIgtXhrjXnjMRG5+rbsqumPQC2QVNWTxfUrq0
         Bng65ouig5TdgScMV0NlcIA3wbmywgX4V5F7++iK/3hj50xAnjlBv72CIrcPr5Lq+mXL
         9DF5YO4tJ2d/KPo9SANiLHBiyVyTY73B8zQi+nyg/lRb7da0UruoGbQIHmEqMt6drzQ4
         3bRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id j18si944792iow.0.2020.12.20.22.24.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Dec 2020 22:24:56 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: +CB3EwOYtb6+p1oe1I6CNACtDJTO/BAXoIukEfCHAA0/lbr/rMqBJ1bOydlb0Mapxj8tmSnkKi
 BNUZifUUl10w==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="175834670"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; 
   d="gz'50?scan'50,208,50";a="175834670"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Dec 2020 22:24:55 -0800
IronPort-SDR: Xfo0fQr0V3IRbNzG8tdbmWLFCb1oq5y2o0qTNF2R8XqV7yUyvxvFkqlNUIkZ/bedm+KHZWeyjL
 UAO2erjhjhCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; 
   d="gz'50?scan'50,208,50";a="340543531"
Received: from lkp-server01.sh.intel.com (HELO 65587561063d) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 20 Dec 2020 22:24:52 -0800
Received: from kbuild by 65587561063d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1krEcl-0000GU-Ne; Mon, 21 Dec 2020 06:24:51 +0000
Date: Mon, 21 Dec 2020 14:24:36 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: mm/filemap.c:2439:9: warning: stack frame size of 2096 bytes in
 function 'generic_file_buffered_read'
Message-ID: <202012211424.jmyaIlqN-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kees,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   467f8165a2b0e6accf3d0dd9c8089b1dbde29f7f
commit: cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68 ubsan: move cc-option tests into Kconfig
date:   5 days ago
config: powerpc-randconfig-r002-20201220 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout cdf8a76fda4ae3b53c5a09e5a8c79e27b7b65d68
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:156:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:160:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:164:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:168:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from mm/filemap.c:20:
   In file included from include/linux/kernel_stat.h:9:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:172:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   mm/filemap.c:830:14: warning: no previous prototype for function '__add_to_page_cache_locked' [-Wmissing-prototypes]
   noinline int __add_to_page_cache_locked(struct page *page,
                ^
   mm/filemap.c:830:10: note: declare 'static' if the function is not intended to be used outside of this translation unit
   noinline int __add_to_page_cache_locked(struct page *page,
            ^
            static 
>> mm/filemap.c:2439:9: warning: stack frame size of 2096 bytes in function 'generic_file_buffered_read' [-Wframe-larger-than=]
   ssize_t generic_file_buffered_read(struct kiocb *iocb,
           ^
   14 warnings generated.
--
   In file included from kernel/debug/gdbstub.c:35:
   In file included from include/linux/serial_core.h:13:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:85:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/debug/gdbstub.c:35:
   In file included from include/linux/serial_core.h:13:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:89:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/debug/gdbstub.c:35:
   In file included from include/linux/serial_core.h:13:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:93:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/debug/gdbstub.c:35:
   In file included from include/linux/serial_core.h:13:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:97:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/debug/gdbstub.c:35:
   In file included from include/linux/serial_core.h:13:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:10:
   In file included from arch/powerpc/include/asm/hardirq.h:6:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/powerpc/include/asm/io.h:604:
   arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:601:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:101:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> kernel/debug/gdbstub.c:957:5: warning: stack frame size of 2192 bytes in function 'gdb_serial_stub' [-Wframe-larger-than=]
   int gdb_serial_stub(struct kgdb_state *ks)
       ^
   13 warnings generated.


vim +/generic_file_buffered_read +2439 mm/filemap.c

06c0444290cecf0 Kent Overstreet   2020-12-14  2422  
723ef24b9b379e5 Kent Overstreet   2020-12-14  2423  /**
723ef24b9b379e5 Kent Overstreet   2020-12-14  2424   * generic_file_buffered_read - generic file read routine
723ef24b9b379e5 Kent Overstreet   2020-12-14  2425   * @iocb:	the iocb to read
723ef24b9b379e5 Kent Overstreet   2020-12-14  2426   * @iter:	data destination
723ef24b9b379e5 Kent Overstreet   2020-12-14  2427   * @written:	already copied
723ef24b9b379e5 Kent Overstreet   2020-12-14  2428   *
723ef24b9b379e5 Kent Overstreet   2020-12-14  2429   * This is a generic file read routine, and uses the
723ef24b9b379e5 Kent Overstreet   2020-12-14  2430   * mapping->a_ops->readpage() function for the actual low-level stuff.
723ef24b9b379e5 Kent Overstreet   2020-12-14  2431   *
723ef24b9b379e5 Kent Overstreet   2020-12-14  2432   * This is really ugly. But the goto's actually try to clarify some
723ef24b9b379e5 Kent Overstreet   2020-12-14  2433   * of the logic when it comes to error handling etc.
723ef24b9b379e5 Kent Overstreet   2020-12-14  2434   *
723ef24b9b379e5 Kent Overstreet   2020-12-14  2435   * Return:
723ef24b9b379e5 Kent Overstreet   2020-12-14  2436   * * total number of bytes copied, including those the were already @written
723ef24b9b379e5 Kent Overstreet   2020-12-14  2437   * * negative error code if nothing was copied
723ef24b9b379e5 Kent Overstreet   2020-12-14  2438   */
723ef24b9b379e5 Kent Overstreet   2020-12-14 @2439  ssize_t generic_file_buffered_read(struct kiocb *iocb,
723ef24b9b379e5 Kent Overstreet   2020-12-14  2440  		struct iov_iter *iter, ssize_t written)
723ef24b9b379e5 Kent Overstreet   2020-12-14  2441  {
723ef24b9b379e5 Kent Overstreet   2020-12-14  2442  	struct file *filp = iocb->ki_filp;
06c0444290cecf0 Kent Overstreet   2020-12-14  2443  	struct file_ra_state *ra = &filp->f_ra;
723ef24b9b379e5 Kent Overstreet   2020-12-14  2444  	struct address_space *mapping = filp->f_mapping;
723ef24b9b379e5 Kent Overstreet   2020-12-14  2445  	struct inode *inode = mapping->host;
06c0444290cecf0 Kent Overstreet   2020-12-14  2446  	struct page *pages_onstack[PAGEVEC_SIZE], **pages = NULL;
06c0444290cecf0 Kent Overstreet   2020-12-14  2447  	unsigned int nr_pages = min_t(unsigned int, 512,
06c0444290cecf0 Kent Overstreet   2020-12-14  2448  			((iocb->ki_pos + iter->count + PAGE_SIZE - 1) >> PAGE_SHIFT) -
06c0444290cecf0 Kent Overstreet   2020-12-14  2449  			(iocb->ki_pos >> PAGE_SHIFT));
06c0444290cecf0 Kent Overstreet   2020-12-14  2450  	int i, pg_nr, error = 0;
06c0444290cecf0 Kent Overstreet   2020-12-14  2451  	bool writably_mapped;
06c0444290cecf0 Kent Overstreet   2020-12-14  2452  	loff_t isize, end_offset;
723ef24b9b379e5 Kent Overstreet   2020-12-14  2453  
723ef24b9b379e5 Kent Overstreet   2020-12-14  2454  	if (unlikely(iocb->ki_pos >= inode->i_sb->s_maxbytes))
723ef24b9b379e5 Kent Overstreet   2020-12-14  2455  		return 0;
723ef24b9b379e5 Kent Overstreet   2020-12-14  2456  	iov_iter_truncate(iter, inode->i_sb->s_maxbytes);
723ef24b9b379e5 Kent Overstreet   2020-12-14  2457  
06c0444290cecf0 Kent Overstreet   2020-12-14  2458  	if (nr_pages > ARRAY_SIZE(pages_onstack))
06c0444290cecf0 Kent Overstreet   2020-12-14  2459  		pages = kmalloc_array(nr_pages, sizeof(void *), GFP_KERNEL);
06c0444290cecf0 Kent Overstreet   2020-12-14  2460  
06c0444290cecf0 Kent Overstreet   2020-12-14  2461  	if (!pages) {
06c0444290cecf0 Kent Overstreet   2020-12-14  2462  		pages = pages_onstack;
06c0444290cecf0 Kent Overstreet   2020-12-14  2463  		nr_pages = min_t(unsigned int, nr_pages, ARRAY_SIZE(pages_onstack));
06c0444290cecf0 Kent Overstreet   2020-12-14  2464  	}
06c0444290cecf0 Kent Overstreet   2020-12-14  2465  
06c0444290cecf0 Kent Overstreet   2020-12-14  2466  	do {
06c0444290cecf0 Kent Overstreet   2020-12-14  2467  		cond_resched();
723ef24b9b379e5 Kent Overstreet   2020-12-14  2468  
^1da177e4c3f415 Linus Torvalds    2005-04-16  2469  		/*
723ef24b9b379e5 Kent Overstreet   2020-12-14  2470  		 * If we've already successfully copied some data, then we
723ef24b9b379e5 Kent Overstreet   2020-12-14  2471  		 * can no longer safely return -EIOCBQUEUED. Hence mark
723ef24b9b379e5 Kent Overstreet   2020-12-14  2472  		 * an async read NOWAIT at that point.
^1da177e4c3f415 Linus Torvalds    2005-04-16  2473  		 */
06c0444290cecf0 Kent Overstreet   2020-12-14  2474  		if ((iocb->ki_flags & IOCB_WAITQ) && written)
723ef24b9b379e5 Kent Overstreet   2020-12-14  2475  			iocb->ki_flags |= IOCB_NOWAIT;
^1da177e4c3f415 Linus Torvalds    2005-04-16  2476  
06c0444290cecf0 Kent Overstreet   2020-12-14  2477  		i = 0;
06c0444290cecf0 Kent Overstreet   2020-12-14  2478  		pg_nr = generic_file_buffered_read_get_pages(iocb, iter,
06c0444290cecf0 Kent Overstreet   2020-12-14  2479  							     pages, nr_pages);
06c0444290cecf0 Kent Overstreet   2020-12-14  2480  		if (pg_nr < 0) {
06c0444290cecf0 Kent Overstreet   2020-12-14  2481  			error = pg_nr;
06c0444290cecf0 Kent Overstreet   2020-12-14  2482  			break;
723ef24b9b379e5 Kent Overstreet   2020-12-14  2483  		}
^1da177e4c3f415 Linus Torvalds    2005-04-16  2484  
^1da177e4c3f415 Linus Torvalds    2005-04-16  2485  		/*
06c0444290cecf0 Kent Overstreet   2020-12-14  2486  		 * i_size must be checked after we know the pages are Uptodate.
06c0444290cecf0 Kent Overstreet   2020-12-14  2487  		 *
06c0444290cecf0 Kent Overstreet   2020-12-14  2488  		 * Checking i_size after the check allows us to calculate
06c0444290cecf0 Kent Overstreet   2020-12-14  2489  		 * the correct value for "nr", which means the zero-filled
06c0444290cecf0 Kent Overstreet   2020-12-14  2490  		 * part of the page is not copied back to userspace (unless
06c0444290cecf0 Kent Overstreet   2020-12-14  2491  		 * another truncate extends the file - this is desired though).
^1da177e4c3f415 Linus Torvalds    2005-04-16  2492  		 */
06c0444290cecf0 Kent Overstreet   2020-12-14  2493  		isize = i_size_read(inode);
06c0444290cecf0 Kent Overstreet   2020-12-14  2494  		if (unlikely(iocb->ki_pos >= isize))
06c0444290cecf0 Kent Overstreet   2020-12-14  2495  			goto put_pages;
723ef24b9b379e5 Kent Overstreet   2020-12-14  2496  
06c0444290cecf0 Kent Overstreet   2020-12-14  2497  		end_offset = min_t(loff_t, isize, iocb->ki_pos + iter->count);
723ef24b9b379e5 Kent Overstreet   2020-12-14  2498  
06c0444290cecf0 Kent Overstreet   2020-12-14  2499  		while ((iocb->ki_pos >> PAGE_SHIFT) + pg_nr >
06c0444290cecf0 Kent Overstreet   2020-12-14  2500  		       (end_offset + PAGE_SIZE - 1) >> PAGE_SHIFT)
06c0444290cecf0 Kent Overstreet   2020-12-14  2501  			put_page(pages[--pg_nr]);
723ef24b9b379e5 Kent Overstreet   2020-12-14  2502  
06c0444290cecf0 Kent Overstreet   2020-12-14  2503  		/*
06c0444290cecf0 Kent Overstreet   2020-12-14  2504  		 * Once we start copying data, we don't want to be touching any
06c0444290cecf0 Kent Overstreet   2020-12-14  2505  		 * cachelines that might be contended:
06c0444290cecf0 Kent Overstreet   2020-12-14  2506  		 */
06c0444290cecf0 Kent Overstreet   2020-12-14  2507  		writably_mapped = mapping_writably_mapped(mapping);
06c0444290cecf0 Kent Overstreet   2020-12-14  2508  
06c0444290cecf0 Kent Overstreet   2020-12-14  2509  		/*
06c0444290cecf0 Kent Overstreet   2020-12-14  2510  		 * When a sequential read accesses a page several times, only
06c0444290cecf0 Kent Overstreet   2020-12-14  2511  		 * mark it as accessed the first time.
06c0444290cecf0 Kent Overstreet   2020-12-14  2512  		 */
06c0444290cecf0 Kent Overstreet   2020-12-14  2513  		if (iocb->ki_pos >> PAGE_SHIFT !=
06c0444290cecf0 Kent Overstreet   2020-12-14  2514  		    ra->prev_pos >> PAGE_SHIFT)
06c0444290cecf0 Kent Overstreet   2020-12-14  2515  			mark_page_accessed(pages[0]);
06c0444290cecf0 Kent Overstreet   2020-12-14  2516  		for (i = 1; i < pg_nr; i++)
06c0444290cecf0 Kent Overstreet   2020-12-14  2517  			mark_page_accessed(pages[i]);
06c0444290cecf0 Kent Overstreet   2020-12-14  2518  
06c0444290cecf0 Kent Overstreet   2020-12-14  2519  		for (i = 0; i < pg_nr; i++) {
06c0444290cecf0 Kent Overstreet   2020-12-14  2520  			unsigned int offset = iocb->ki_pos & ~PAGE_MASK;
06c0444290cecf0 Kent Overstreet   2020-12-14  2521  			unsigned int bytes = min_t(loff_t, end_offset - iocb->ki_pos,
06c0444290cecf0 Kent Overstreet   2020-12-14  2522  						   PAGE_SIZE - offset);
06c0444290cecf0 Kent Overstreet   2020-12-14  2523  			unsigned int copied;
06c0444290cecf0 Kent Overstreet   2020-12-14  2524  
06c0444290cecf0 Kent Overstreet   2020-12-14  2525  			/*
06c0444290cecf0 Kent Overstreet   2020-12-14  2526  			 * If users can be writing to this page using arbitrary
06c0444290cecf0 Kent Overstreet   2020-12-14  2527  			 * virtual addresses, take care about potential aliasing
06c0444290cecf0 Kent Overstreet   2020-12-14  2528  			 * before reading the page on the kernel side.
06c0444290cecf0 Kent Overstreet   2020-12-14  2529  			 */
06c0444290cecf0 Kent Overstreet   2020-12-14  2530  			if (writably_mapped)
06c0444290cecf0 Kent Overstreet   2020-12-14  2531  				flush_dcache_page(pages[i]);
06c0444290cecf0 Kent Overstreet   2020-12-14  2532  
06c0444290cecf0 Kent Overstreet   2020-12-14  2533  			copied = copy_page_to_iter(pages[i], offset, bytes, iter);
06c0444290cecf0 Kent Overstreet   2020-12-14  2534  
06c0444290cecf0 Kent Overstreet   2020-12-14  2535  			written += copied;
06c0444290cecf0 Kent Overstreet   2020-12-14  2536  			iocb->ki_pos += copied;
06c0444290cecf0 Kent Overstreet   2020-12-14  2537  			ra->prev_pos = iocb->ki_pos;
06c0444290cecf0 Kent Overstreet   2020-12-14  2538  
06c0444290cecf0 Kent Overstreet   2020-12-14  2539  			if (copied < bytes) {
06c0444290cecf0 Kent Overstreet   2020-12-14  2540  				error = -EFAULT;
06c0444290cecf0 Kent Overstreet   2020-12-14  2541  				break;
^1da177e4c3f415 Linus Torvalds    2005-04-16  2542  			}
^1da177e4c3f415 Linus Torvalds    2005-04-16  2543  		}
06c0444290cecf0 Kent Overstreet   2020-12-14  2544  put_pages:
06c0444290cecf0 Kent Overstreet   2020-12-14  2545  		for (i = 0; i < pg_nr; i++)
06c0444290cecf0 Kent Overstreet   2020-12-14  2546  			put_page(pages[i]);
06c0444290cecf0 Kent Overstreet   2020-12-14  2547  	} while (iov_iter_count(iter) && iocb->ki_pos < isize && !error);
^1da177e4c3f415 Linus Torvalds    2005-04-16  2548  
^1da177e4c3f415 Linus Torvalds    2005-04-16  2549  	file_accessed(filp);
06c0444290cecf0 Kent Overstreet   2020-12-14  2550  
06c0444290cecf0 Kent Overstreet   2020-12-14  2551  	if (pages != pages_onstack)
06c0444290cecf0 Kent Overstreet   2020-12-14  2552  		kfree(pages);
723ef24b9b379e5 Kent Overstreet   2020-12-14  2553  
6e58e79db8a1622 Al Viro           2014-02-03  2554  	return written ? written : error;
^1da177e4c3f415 Linus Torvalds    2005-04-16  2555  }
d85dc2e116fdce7 Goldwyn Rodrigues 2019-08-30  2556  EXPORT_SYMBOL_GPL(generic_file_buffered_read);
^1da177e4c3f415 Linus Torvalds    2005-04-16  2557  

:::::: The code at line 2439 was first introduced by commit
:::::: 723ef24b9b379e59facc65de8c065c8b89d479cd mm/filemap/c: break generic_file_buffered_read up into multiple functions

:::::: TO: Kent Overstreet <kent.overstreet@gmail.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012211424.jmyaIlqN-lkp%40intel.com.

--YiEDa0DAkWCtVeE4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
KnwXtdYj0I5qH0+e1J7DlVJG/h9Wijoz/RMBAA==

--YiEDa0DAkWCtVeE4--
