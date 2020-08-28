Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTESU35AKGQELQ62YVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E211256336
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 Aug 2020 00:46:38 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id v16sf430005qka.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 15:46:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598654797; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZydXAEggLYQNOv9fpNLvRiAi2aG4hTyurz+KLrAIniSgC5ztQErGmQ5/LGO/p4mjPi
         5QrBzYj2Z3wmP9lKE7IeH/rDSGBNba4LxzNQ2BQBLwekdXQT72a3dC2UfUAxRdHSm+R6
         Ag19iW2ccMj9c7fzQwJdcP37nWAo95EDes/nl0nyZXte4qMoVlAyz5vERCWu3ByVEool
         9I7cRFWLSVHq7ITSJx+/uzw8cIqj46fbVhgW76oDNshYp4uT5+Jze4163kfR4VlIpl14
         OAOP/d+hTCBg8q9nt7vgZ7jfrarbxjlKWlscbi0JrES3tc3F83PpRo2iA9aoFlepa5JL
         hZfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Vku/jOFMGtx1WPlB4da4mr9cuDTHf06aZlUWOIvKjhA=;
        b=t7bbFN/InE4HZq5+yx6hVlMrWtOGxhIijEXxaCR9lDMdfLQP3UDVrwkGgxguL9mspT
         /r81qDv5JnUWM2mAeH2AUwztuFiSBqGSBonki3QzZ7tB8Xxc0sFqiOwRDodPWTjjuSfr
         gYi0QwIF2tnT/qkfswTxOovz01gM5sYtQd3OqD12Idsnnz4ZV5Zvo61FaYWT3uZ/ZEH8
         pUWNSHHiQvyDPWkB3/1VsOr0sBL6leXYQ4Vr90fV25Sw1sh6PXQJr4esQLFuP5cH+AH3
         2gCHB6lZIBC/rqns86pTYcjey1/RXbqRMZwHQana5TRcKYXyfLI96zduNL9ZiVX4deNB
         e9Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vku/jOFMGtx1WPlB4da4mr9cuDTHf06aZlUWOIvKjhA=;
        b=jLB0oYsK3vcXitG0Cnz6bRoyU3oaBAu4GjKyTLDgdfZEOHCvz16J/2GkRW7As5Z9p5
         u+WYoLkPC+5zz09eH2VgJuUel8m1drlDdIOzvDM4geFE1khNbwrbkKBeqrcmXhDyLYzV
         vkqddDHAxvBvr3efKQskNkQqWoTV1uL+GmcqOLXylmuLi9pyDmMHX/MBhdulBXgQ2A1/
         8X0ag27vxSgjzF4mphroYIz2EeOmhKJIiguwxgVI3TaG8kzLJh525p12Xk3ZWzf7/959
         kiSW2VidRduCFCOVcfwxV6MRmaGDovxKcuwd47FwTpRBlMt4d+h8Liqv+c1Mis6PGa+o
         jphA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vku/jOFMGtx1WPlB4da4mr9cuDTHf06aZlUWOIvKjhA=;
        b=JI+r52EA56f7vyZYqHuXpiIAZdCdO1vBDYspKDKZNuMod09M4xX6LLeR0kbNGgVcKZ
         pkG5dF+CQ3NhuEpHY5jx8KjAVxD6yWUKvEaAKegM0SHYDTE5BSVqRdgr/mAw03u9CuAX
         BY1lXT0PFfgRn5uC8fNZxVl5yT+oZUzyNwbq6CgphKkzi8FRsBIU+vDdgIR0Mxfm5DMH
         rAnFQcckv8T+n6ewaT3M/YzWIGFx+eCrUD52yg0YsgUz8nf7rAtxuw1+PntBk7Lu1hSJ
         35773DMFJSEmzDOWYbv/mFa6zZM62Xp5dGpHI/cRzCmA295J/blSAfpNopGQRKQxODB2
         Zp3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333uwhy3Lvu143d0UN+xx5sVCjxnVt4t6gRRblfzrYqD0kCRRUu
	3VLrsh+yXjqqKypHk5FeGCc=
X-Google-Smtp-Source: ABdhPJwMVrStH2OMzDcS6x2lSFmNL0zMubOBSI3Xz3NZWbepu/N+0ThJADfK4cpJIAEebWfsG1bfcA==
X-Received: by 2002:a37:71c6:: with SMTP id m189mr1330064qkc.327.1598654796849;
        Fri, 28 Aug 2020 15:46:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c20d:: with SMTP id j13ls289752qkg.2.gmail; Fri, 28 Aug
 2020 15:46:36 -0700 (PDT)
X-Received: by 2002:a05:620a:55d:: with SMTP id o29mr1370499qko.12.1598654796336;
        Fri, 28 Aug 2020 15:46:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598654796; cv=none;
        d=google.com; s=arc-20160816;
        b=aw1eGjBndY6LaOg6ylF/4/IKhegjVbe7jPJxZWfD2Y/2SAsfv3HgCOXXKYSzFnIcMb
         tydFoi9cwSBoEgjuXhd9LElgCANKoRxZsuCdCZyaQDF5R8xeh/KcoKUgnwrzYt0nwifN
         PkSei5dmfxdy4nea2X6+FKu4aFrChMudSXOX71KUItseB2WKIVWr2a3lq7bqMI3vxCzc
         bm2TA+KQkMnP/ny+BDgBXha+iQx6W7PoFR85upGnHY8uIxhw0hu5pPhHmpjFIeyBNTt9
         JZhji1ibe8IATpIPtjc0WNBPf853W3LRbRQGKL5wWdMDS1iXI/l7h94FN9GyJMXJbE5C
         Ha0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=wptE1RVI72cjYS+s1LJ8Itq1PXaYrxpB701UqgzkT6c=;
        b=U9qMZMu7wvNTzsbr9lCZtAgTbtw5FFugaJqGfAVnzHsGkDCi98wYHJP6Xj/4pn+MEF
         BjZr+Ptv38F1fzXrNE8omLZTGEvLbMsGjvpw8POhsoGy/5xZ19i+RBHmKbQ2m3gPAAFV
         uraIGBfLpObXGdYgBTWp8CqNiDgTff4lnb4q/Sotsahqln25JsMeS7mCx8wqveaaOIu5
         1mmcj6UbTVDQfTRnU/IjVWAfp4afKwZtEw8Dlqk4E6OLXx9tVpc2xHW5man5tzUqyKnh
         uET8vRYwX6LLhXSFZg87qPm7MRaqhO8N0Ez+dmok3tvG90l0P32ud0+El+WW0UpyWj+A
         fKsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id b21si35599qtq.1.2020.08.28.15.46.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 15:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 89zi54kMKOsBRljwnmyGlmoW1cqZ3/GL9XTwL8Vje6y+pRFdE/VJjeIvKivewRKKyNLVkfO6Yi
 0zx3L2Wjx8Nw==
X-IronPort-AV: E=McAfee;i="6000,8403,9727"; a="144503450"
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; 
   d="gz'50?scan'50,208,50";a="144503450"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Aug 2020 15:46:32 -0700
IronPort-SDR: NskBHbY9DxgcmELzLhbgwhQYhSD2A8kvOtgsvOcWE+59GbOS37KqbLfDEfOeZTwWU6ugF9iEHm
 0S/0VV/qH6sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; 
   d="gz'50?scan'50,208,50";a="332694306"
Received: from lkp-server02.sh.intel.com (HELO 301dc1beeb51) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2020 15:46:30 -0700
Received: from kbuild by 301dc1beeb51 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kBn8f-0000Ep-JD; Fri, 28 Aug 2020 22:46:29 +0000
Date: Sat, 29 Aug 2020 06:45:51 +0800
From: kernel test robot <lkp@intel.com>
To: "Joel Fernandes (Google)" <joel@joelfernandes.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Vineeth Pillai <viremana@linux.microsoft.com>
Subject: [digitalocean-linux-coresched:coresched/v7-v5.9-rc 30/39]
 arch/powerpc/kernel/time.c:529:20: error: redefinition of 'irq_work_pending'
 as different kind of symbol
Message-ID: <202008290641.0R2SYcET%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="HcAYCG3uE/tztfnV"
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


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/digitalocean/linux-coresched coresched/v7-v5.9-rc
head:   1dba1ec6f0846402eb80755b5f7b44efb6237e6d
commit: c283856632af132e32b87a7ba0fc8b71f01c8508 [30/39] irq_work: Add support to detect if work is pending
config: powerpc64-randconfig-r002-20200828 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        git checkout c283856632af132e32b87a7ba0fc8b71f01c8508
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
   In file included from arch/powerpc/kernel/time.c:38:
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
   <scratch space>:177:1: note: expanded from here
   __do_insw
   ^
   arch/powerpc/include/asm/io.h:542:56: note: expanded from macro '__do_insw'
   #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/time.c:38:
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
   <scratch space>:179:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:543:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/time.c:38:
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
   <scratch space>:181:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:544:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/time.c:38:
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
   <scratch space>:183:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:545:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from arch/powerpc/kernel/time.c:38:
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
   <scratch space>:185:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:546:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
>> arch/powerpc/kernel/time.c:529:20: error: redefinition of 'irq_work_pending' as different kind of symbol
   DEFINE_PER_CPU(u8, irq_work_pending);
                      ^
   include/linux/irq_work.h:45:6: note: previous definition is here
   bool irq_work_pending(struct irq_work *work);
        ^
>> arch/powerpc/kernel/time.c:551:2: error: non-object type 'typeof (*(&(irq_work_pending)))' (aka '_Bool (struct irq_work *)') is not assignable
           set_irq_work_pending_flag();
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:531:37: note: expanded from macro 'set_irq_work_pending_flag'
   #define set_irq_work_pending_flag()     __this_cpu_write(irq_work_pending, 1)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:452:2: note: expanded from macro '__this_cpu_write'
           raw_cpu_write(pcp, val);                                        \
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:421:34: note: expanded from macro 'raw_cpu_write'
   #define raw_cpu_write(pcp, val)         __pcpu_size_call(raw_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:29:1: note: expanded from here
   raw_cpu_write_1
   ^
   include/asm-generic/percpu.h:208:67: note: expanded from macro 'raw_cpu_write_1'
   #define raw_cpu_write_1(pcp, val)       raw_cpu_generic_to_op(pcp, val, =)
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   include/asm-generic/percpu.h:72:23: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ~~~~~~~~~~~~~~~~~~~~ ^
>> arch/powerpc/kernel/time.c:551:2: error: non-object type 'typeof (*(&(irq_work_pending)))' (aka '_Bool (struct irq_work *)') is not assignable
           set_irq_work_pending_flag();
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:531:37: note: expanded from macro 'set_irq_work_pending_flag'
   #define set_irq_work_pending_flag()     __this_cpu_write(irq_work_pending, 1)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:452:2: note: expanded from macro '__this_cpu_write'
           raw_cpu_write(pcp, val);                                        \
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:421:34: note: expanded from macro 'raw_cpu_write'
   #define raw_cpu_write(pcp, val)         __pcpu_size_call(raw_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:30:1: note: expanded from here
   raw_cpu_write_2
   ^
   include/asm-generic/percpu.h:211:67: note: expanded from macro 'raw_cpu_write_2'
   #define raw_cpu_write_2(pcp, val)       raw_cpu_generic_to_op(pcp, val, =)
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   include/asm-generic/percpu.h:72:23: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ~~~~~~~~~~~~~~~~~~~~ ^
>> arch/powerpc/kernel/time.c:551:2: error: non-object type 'typeof (*(&(irq_work_pending)))' (aka '_Bool (struct irq_work *)') is not assignable
           set_irq_work_pending_flag();
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:531:37: note: expanded from macro 'set_irq_work_pending_flag'
   #define set_irq_work_pending_flag()     __this_cpu_write(irq_work_pending, 1)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:452:2: note: expanded from macro '__this_cpu_write'
           raw_cpu_write(pcp, val);                                        \
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:421:34: note: expanded from macro 'raw_cpu_write'
   #define raw_cpu_write(pcp, val)         __pcpu_size_call(raw_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:31:1: note: expanded from here
   raw_cpu_write_4
   ^
   include/asm-generic/percpu.h:214:67: note: expanded from macro 'raw_cpu_write_4'
   #define raw_cpu_write_4(pcp, val)       raw_cpu_generic_to_op(pcp, val, =)
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   include/asm-generic/percpu.h:72:23: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ~~~~~~~~~~~~~~~~~~~~ ^
>> arch/powerpc/kernel/time.c:551:2: error: non-object type 'typeof (*(&(irq_work_pending)))' (aka '_Bool (struct irq_work *)') is not assignable
           set_irq_work_pending_flag();
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:531:37: note: expanded from macro 'set_irq_work_pending_flag'
   #define set_irq_work_pending_flag()     __this_cpu_write(irq_work_pending, 1)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:452:2: note: expanded from macro '__this_cpu_write'
           raw_cpu_write(pcp, val);                                        \
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:421:34: note: expanded from macro 'raw_cpu_write'
   #define raw_cpu_write(pcp, val)         __pcpu_size_call(raw_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:32:1: note: expanded from here
   raw_cpu_write_8
   ^
   include/asm-generic/percpu.h:217:67: note: expanded from macro 'raw_cpu_write_8'
   #define raw_cpu_write_8(pcp, val)       raw_cpu_generic_to_op(pcp, val, =)
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   include/asm-generic/percpu.h:72:23: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ~~~~~~~~~~~~~~~~~~~~ ^
>> arch/powerpc/kernel/time.c:612:6: error: non-object type 'typeof (irq_work_pending)' (aka '_Bool (struct irq_work *)') is not assignable
           if (test_irq_work_pending()) {
               ^~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:532:34: note: expanded from macro 'test_irq_work_pending'
   #define test_irq_work_pending()         __this_cpu_read(irq_work_pending)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
   #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:321:21: note: expanded from macro '__pcpu_size_call_return'
           case 1: pscr_ret__ = stem##1(variable); break;                  \
                   ~~~~~~~~~~ ^
>> arch/powerpc/kernel/time.c:612:6: error: non-object type 'typeof (irq_work_pending)' (aka '_Bool (struct irq_work *)') is not assignable
           if (test_irq_work_pending()) {
               ^~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:532:34: note: expanded from macro 'test_irq_work_pending'
   #define test_irq_work_pending()         __this_cpu_read(irq_work_pending)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
   #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:322:21: note: expanded from macro '__pcpu_size_call_return'
           case 2: pscr_ret__ = stem##2(variable); break;                  \
                   ~~~~~~~~~~ ^
>> arch/powerpc/kernel/time.c:612:6: error: non-object type 'typeof (irq_work_pending)' (aka '_Bool (struct irq_work *)') is not assignable
           if (test_irq_work_pending()) {
               ^~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:532:34: note: expanded from macro 'test_irq_work_pending'
   #define test_irq_work_pending()         __this_cpu_read(irq_work_pending)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
   #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:323:21: note: expanded from macro '__pcpu_size_call_return'
           case 4: pscr_ret__ = stem##4(variable); break;                  \
                   ~~~~~~~~~~ ^
>> arch/powerpc/kernel/time.c:612:6: error: non-object type 'typeof (irq_work_pending)' (aka '_Bool (struct irq_work *)') is not assignable
           if (test_irq_work_pending()) {
               ^~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:532:34: note: expanded from macro 'test_irq_work_pending'
   #define test_irq_work_pending()         __this_cpu_read(irq_work_pending)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
           raw_cpu_read(pcp);                                              \
           ^~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
   #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:324:21: note: expanded from macro '__pcpu_size_call_return'
           case 8: pscr_ret__ = stem##8(variable); break;                  \
                   ~~~~~~~~~~ ^
   arch/powerpc/kernel/time.c:613:3: error: non-object type 'typeof (*(&(irq_work_pending)))' (aka '_Bool (struct irq_work *)') is not assignable
                   clear_irq_work_pending();
                   ^~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:533:34: note: expanded from macro 'clear_irq_work_pending'
   #define clear_irq_work_pending()        __this_cpu_write(irq_work_pending, 0)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:452:2: note: expanded from macro '__this_cpu_write'
           raw_cpu_write(pcp, val);                                        \
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:421:34: note: expanded from macro 'raw_cpu_write'
   #define raw_cpu_write(pcp, val)         __pcpu_size_call(raw_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:41:1: note: expanded from here
   raw_cpu_write_1
   ^
   include/asm-generic/percpu.h:208:67: note: expanded from macro 'raw_cpu_write_1'
   #define raw_cpu_write_1(pcp, val)       raw_cpu_generic_to_op(pcp, val, =)
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   include/asm-generic/percpu.h:72:23: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ~~~~~~~~~~~~~~~~~~~~ ^
   arch/powerpc/kernel/time.c:613:3: error: non-object type 'typeof (*(&(irq_work_pending)))' (aka '_Bool (struct irq_work *)') is not assignable
                   clear_irq_work_pending();
                   ^~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:533:34: note: expanded from macro 'clear_irq_work_pending'
   #define clear_irq_work_pending()        __this_cpu_write(irq_work_pending, 0)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:452:2: note: expanded from macro '__this_cpu_write'
           raw_cpu_write(pcp, val);                                        \
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:421:34: note: expanded from macro 'raw_cpu_write'
   #define raw_cpu_write(pcp, val)         __pcpu_size_call(raw_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:42:1: note: expanded from here
   raw_cpu_write_2
   ^
   include/asm-generic/percpu.h:211:67: note: expanded from macro 'raw_cpu_write_2'
   #define raw_cpu_write_2(pcp, val)       raw_cpu_generic_to_op(pcp, val, =)
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   include/asm-generic/percpu.h:72:23: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ~~~~~~~~~~~~~~~~~~~~ ^
   arch/powerpc/kernel/time.c:613:3: error: non-object type 'typeof (*(&(irq_work_pending)))' (aka '_Bool (struct irq_work *)') is not assignable
                   clear_irq_work_pending();
                   ^~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:533:34: note: expanded from macro 'clear_irq_work_pending'
   #define clear_irq_work_pending()        __this_cpu_write(irq_work_pending, 0)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:452:2: note: expanded from macro '__this_cpu_write'
           raw_cpu_write(pcp, val);                                        \
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:421:34: note: expanded from macro 'raw_cpu_write'
   #define raw_cpu_write(pcp, val)         __pcpu_size_call(raw_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:43:1: note: expanded from here
   raw_cpu_write_4
   ^
   include/asm-generic/percpu.h:214:67: note: expanded from macro 'raw_cpu_write_4'
   #define raw_cpu_write_4(pcp, val)       raw_cpu_generic_to_op(pcp, val, =)
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   include/asm-generic/percpu.h:72:23: note: expanded from macro 'raw_cpu_generic_to_op'
           *raw_cpu_ptr(&(pcp)) op val;                                    \
           ~~~~~~~~~~~~~~~~~~~~ ^
   arch/powerpc/kernel/time.c:613:3: error: non-object type 'typeof (*(&(irq_work_pending)))' (aka '_Bool (struct irq_work *)') is not assignable
                   clear_irq_work_pending();
                   ^~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/kernel/time.c:533:34: note: expanded from macro 'clear_irq_work_pending'
   #define clear_irq_work_pending()        __this_cpu_write(irq_work_pending, 0)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:452:2: note: expanded from macro '__this_cpu_write'
           raw_cpu_write(pcp, val);                                        \
           ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:421:34: note: expanded from macro 'raw_cpu_write'
   #define raw_cpu_write(pcp, val)         __pcpu_size_call(raw_cpu_write_, pcp, val)
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   <scratch space>:44:1: note: expanded from here
   raw_cpu_write_8
   ^
   include/asm-generic/percpu.h:217:67: note: expanded from macro 'raw_cpu_write_8'
   #define raw_cpu_write_8(pcp, val)       raw_cpu_generic_to_op(pcp, val, =)
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
   include/asm-generic/percpu.h:72:23: note: expanded from macro 'raw_cpu_generic_to_op'

# https://github.com/digitalocean/linux-coresched/commit/c283856632af132e32b87a7ba0fc8b71f01c8508
git remote add digitalocean-linux-coresched https://github.com/digitalocean/linux-coresched
git fetch --no-tags digitalocean-linux-coresched coresched/v7-v5.9-rc
git checkout c283856632af132e32b87a7ba0fc8b71f01c8508
vim +/irq_work_pending +529 arch/powerpc/kernel/time.c

0fe1ac48bef018b arch/powerpc/kernel/time.c Paul Mackerras         2010-04-13  528  
e360adbe29241a0 arch/powerpc/kernel/time.c Peter Zijlstra         2010-10-14 @529  DEFINE_PER_CPU(u8, irq_work_pending);
0fe1ac48bef018b arch/powerpc/kernel/time.c Paul Mackerras         2010-04-13  530  
69111bac42f5cea arch/powerpc/kernel/time.c Christoph Lameter      2014-10-21  531  #define set_irq_work_pending_flag()	__this_cpu_write(irq_work_pending, 1)
69111bac42f5cea arch/powerpc/kernel/time.c Christoph Lameter      2014-10-21  532  #define test_irq_work_pending()		__this_cpu_read(irq_work_pending)
69111bac42f5cea arch/powerpc/kernel/time.c Christoph Lameter      2014-10-21  533  #define clear_irq_work_pending()	__this_cpu_write(irq_work_pending, 0)
105988c015943e7 arch/powerpc/kernel/time.c Paul Mackerras         2009-06-17  534  
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  535  #endif /* 32 vs 64 bit */
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  536  
4f8b50bbbe63ae4 arch/powerpc/kernel/time.c Peter Zijlstra         2011-06-27  537  void arch_irq_work_raise(void)
0fe1ac48bef018b arch/powerpc/kernel/time.c Paul Mackerras         2010-04-13  538  {
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  539  	/*
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  540  	 * 64-bit code that uses irq soft-mask can just cause an immediate
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  541  	 * interrupt here that gets soft masked, if this is called under
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  542  	 * local_irq_disable(). It might be possible to prevent that happening
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  543  	 * by noticing interrupts are disabled and setting decrementer pending
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  544  	 * to be replayed when irqs are enabled. The problem there is that
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  545  	 * tracing can call irq_work_raise, including in code that does low
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  546  	 * level manipulations of irq soft-mask state (e.g., trace_hardirqs_on)
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  547  	 * which could get tangled up if we're messing with the same state
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  548  	 * here.
abc3fce76adbdfa arch/powerpc/kernel/time.c Nicholas Piggin        2020-04-02  549  	 */
0fe1ac48bef018b arch/powerpc/kernel/time.c Paul Mackerras         2010-04-13  550  	preempt_disable();
e360adbe29241a0 arch/powerpc/kernel/time.c Peter Zijlstra         2010-10-14 @551  	set_irq_work_pending_flag();
0fe1ac48bef018b arch/powerpc/kernel/time.c Paul Mackerras         2010-04-13  552  	set_dec(1);
0fe1ac48bef018b arch/powerpc/kernel/time.c Paul Mackerras         2010-04-13  553  	preempt_enable();
0fe1ac48bef018b arch/powerpc/kernel/time.c Paul Mackerras         2010-04-13  554  }
0fe1ac48bef018b arch/powerpc/kernel/time.c Paul Mackerras         2010-04-13  555  
e360adbe29241a0 arch/powerpc/kernel/time.c Peter Zijlstra         2010-10-14  556  #else  /* CONFIG_IRQ_WORK */
105988c015943e7 arch/powerpc/kernel/time.c Paul Mackerras         2009-06-17  557  
e360adbe29241a0 arch/powerpc/kernel/time.c Peter Zijlstra         2010-10-14  558  #define test_irq_work_pending()	0
e360adbe29241a0 arch/powerpc/kernel/time.c Peter Zijlstra         2010-10-14  559  #define clear_irq_work_pending()
105988c015943e7 arch/powerpc/kernel/time.c Paul Mackerras         2009-06-17  560  
e360adbe29241a0 arch/powerpc/kernel/time.c Peter Zijlstra         2010-10-14  561  #endif /* CONFIG_IRQ_WORK */
105988c015943e7 arch/powerpc/kernel/time.c Paul Mackerras         2009-06-17  562  
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  563  /*
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  564   * timer_interrupt - gets called when the decrementer overflows,
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  565   * with interrupts disabled.
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  566   */
c7aeffc4d38f057 arch/ppc64/kernel/time.c   Kumar Gala             2005-09-19  567  void timer_interrupt(struct pt_regs *regs)
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  568  {
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  569  	struct clock_event_device *evt = this_cpu_ptr(&decrementers);
69111bac42f5cea arch/powerpc/kernel/time.c Christoph Lameter      2014-10-21  570  	u64 *next_tb = this_cpu_ptr(&decrementers_next_tb);
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  571  	struct pt_regs *old_regs;
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  572  	u64 now;
d831d0b83f20588 arch/powerpc/kernel/time.c Tony Breeds            2007-09-21  573  
963e5d3b76d657f arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2011-03-29  574  	/* Some implementations of hotplug will get timer interrupts while
689dfa894c57842 arch/powerpc/kernel/time.c Tiejun Chen            2013-01-15  575  	 * offline, just ignore these and we also need to set
689dfa894c57842 arch/powerpc/kernel/time.c Tiejun Chen            2013-01-15  576  	 * decrementers_next_tb as MAX to make sure __check_irq_replay
689dfa894c57842 arch/powerpc/kernel/time.c Tiejun Chen            2013-01-15  577  	 * don't replay timer interrupt when return, otherwise we'll trap
689dfa894c57842 arch/powerpc/kernel/time.c Tiejun Chen            2013-01-15  578  	 * here infinitely :(
963e5d3b76d657f arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2011-03-29  579  	 */
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  580  	if (unlikely(!cpu_online(smp_processor_id()))) {
689dfa894c57842 arch/powerpc/kernel/time.c Tiejun Chen            2013-01-15  581  		*next_tb = ~(u64)0;
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  582  		set_dec(decrementer_max);
963e5d3b76d657f arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2011-03-29  583  		return;
689dfa894c57842 arch/powerpc/kernel/time.c Tiejun Chen            2013-01-15  584  	}
963e5d3b76d657f arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2011-03-29  585  
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  586  	/* Ensure a positive value is written to the decrementer, or else
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  587  	 * some CPUs will continue to take decrementer exceptions. When the
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  588  	 * PPC_WATCHDOG (decrementer based) is configured, keep this at most
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  589  	 * 31 bits, which is about 4 seconds on most systems, which gives
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  590  	 * the watchdog a chance of catching timer interrupt hard lockups.
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  591  	 */
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  592  	if (IS_ENABLED(CONFIG_PPC_WATCHDOG))
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  593  		set_dec(0x7fffffff);
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  594  	else
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  595  		set_dec(decrementer_max);
a7cba02deceda96 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  596  
7230c5644188cd9 arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2012-03-06  597  	/* Conditionally hard-enable interrupts now that the DEC has been
7230c5644188cd9 arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2012-03-06  598  	 * bumped to its maximum value
7230c5644188cd9 arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2012-03-06  599  	 */
7230c5644188cd9 arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2012-03-06  600  	may_hard_irq_enable();
7230c5644188cd9 arch/powerpc/kernel/time.c Benjamin Herrenschmidt 2012-03-06  601  
89713ed10815401 arch/powerpc/kernel/time.c Anton Blanchard        2010-01-31  602  
6e0fdf9af216887 arch/powerpc/kernel/time.c Paul Bolle             2014-05-20  603  #if defined(CONFIG_PPC32) && defined(CONFIG_PPC_PMAC)
f2783c15007468c arch/powerpc/kernel/time.c Paul Mackerras         2005-10-20  604  	if (atomic_read(&ppc_n_lost_interrupts) != 0)
f2783c15007468c arch/powerpc/kernel/time.c Paul Mackerras         2005-10-20  605  		do_IRQ(regs);
f2783c15007468c arch/powerpc/kernel/time.c Paul Mackerras         2005-10-20  606  #endif
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  607  
7d12e780e003f93 arch/powerpc/kernel/time.c David Howells          2006-10-05  608  	old_regs = set_irq_regs(regs);
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  609  	irq_enter();
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  610  	trace_timer_interrupt_entry(regs);
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  611  
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05 @612  	if (test_irq_work_pending()) {
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  613  		clear_irq_work_pending();
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  614  		irq_work_run();
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  615  	}
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  616  
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  617  	now = get_tb_or_rtc();
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  618  	if (now >= *next_tb) {
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  619  		*next_tb = ~(u64)0;
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  620  		if (evt->event_handler)
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  621  			evt->event_handler(evt);
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  622  		__this_cpu_inc(irq_stat.timer_irqs_event);
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  623  	} else {
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  624  		now = *next_tb - now;
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  625  		if (now <= decrementer_max)
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  626  			set_dec(now);
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  627  		/* We may have raced with new irq work */
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  628  		if (test_irq_work_pending())
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  629  			set_dec(1);
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  630  		__this_cpu_inc(irq_stat.timer_irqs_others);
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  631  	}
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  632  
3f984620f9a4fe0 arch/powerpc/kernel/time.c Nicholas Piggin        2018-05-05  633  	trace_timer_interrupt_exit(regs);
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  634  	irq_exit();
7d12e780e003f93 arch/powerpc/kernel/time.c David Howells          2006-10-05  635  	set_irq_regs(old_regs);
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  636  }
9445aa1a3062a75 arch/powerpc/kernel/time.c Al Viro                2016-01-13  637  EXPORT_SYMBOL(timer_interrupt);
^1da177e4c3f415 arch/ppc64/kernel/time.c   Linus Torvalds         2005-04-16  638  

:::::: The code at line 529 was first introduced by commit
:::::: e360adbe29241a0194e10e20595360dd7b98a2b3 irq_work: Add generic hardirq context callbacks

:::::: TO: Peter Zijlstra <a.p.zijlstra@chello.nl>
:::::: CC: Ingo Molnar <mingo@elte.hu>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008290641.0R2SYcET%25lkp%40intel.com.

--HcAYCG3uE/tztfnV
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--HcAYCG3uE/tztfnV--
