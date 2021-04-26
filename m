Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL7ETKCAMGQEQEBFMDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CF936B312
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 14:29:37 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id a4-20020a056a000c84b029025d788a548fsf14191118pfv.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 05:29:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619440176; cv=pass;
        d=google.com; s=arc-20160816;
        b=POA6+N+nUEJA49W3gLqDzLv01/fMnOuctsB3BaTJuQxDstvgpFDEbk1Y4M6PVZDk/T
         mbF4BFyZwRN0lN4cUTWyPQkjWE7g4x09nnD6vbXf48pvyo3GXC/b3khHk4ZOPQI5a7rM
         6NfMCIX0IHfcbfCfDKBzCwTrdWyM6TQsaIgnBW1dJJAX4duDlLf9mA8ZB2PwTU5inOob
         pWM5ANKJLp8jrPZH6UqjBWaO1joZKajQ+rwcauHoKt5IwCpf+/mF3VEHW2HH0H0UpdkB
         a1sOeJzgY1E4pPUUyLDuHFaBF0INxRXG09WbRgvHx+/xYRVzq60YAZg8+11BvANzTaXu
         oKGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=O7SCrC5R8nFlbvjQxxOCK2R55dvqYTBw/pEtNd8Cy7M=;
        b=EJ0Fq8Mkv6ZtF6Bg0GFijucugXXfGAbm7ykdGNQ6GO9lUO3Jj7GaIq30dW2sukJw6j
         la3n7Y7ruk7D1Q8L8PvEC0/XS+1HBFnszMQPCc0dSZRdUNvI9GP+X+QLDQSo2IhBSoOc
         etgmf3qNScfHX09HNDVJxEgxd2D+U/BaXskiBE0HcwQueAtnzTQxob17jkX793DCsZYV
         E/43FVF9MKUabAU7XX3Ma29AfOiB1oJU/DyNIg3fnAd2zU9np9ROhnM1NIUyZw2jB6l0
         uU3R8A0TvE+1c+bf1DvurkjMmXzmBPvlZqi2X98fq2WnB1levgREH4U1/+oVI77J/IJW
         T6Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O7SCrC5R8nFlbvjQxxOCK2R55dvqYTBw/pEtNd8Cy7M=;
        b=YAYOVZcKxLx8qYx2XEC4jPOi7WZ0CqfZFQeu4BUR/r7QFKiRFo7XCrECCdLR+crYEc
         26DM710gU44zWgkSKbr+C7+62U6ywQBjNBJMJqB/MiUA01fbQtFsgKbHAMUHjfxa33hF
         a8c+gc0dSh1SqqpsTPBqBEfIUHbpb6XJkOZir9JrngUhBE1zdytGipTxIiHcA7dDVHFk
         u7tBoqsfqepWx0ssaOOxtnnOlQ6UmFcQm4qF25PbdutbOm0i1wi8QaMvod2pfyXXvmks
         XOI/ov3BEtO775VqoTBmQ4gNLWzFP65L4E75EQDJS93x1YpZhhz/jcx01C2CeH9UF8u4
         LPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O7SCrC5R8nFlbvjQxxOCK2R55dvqYTBw/pEtNd8Cy7M=;
        b=du7uVO6/n/5HQiD77EK5magdwuoqL23awGB0MyZ00oKfx6JPcjpconLAZuYRJZP+mQ
         VBvt7hPWuI2E2LwKQhn49/anTC9Ho+Fr6tybn2UD1gU0P7gChZQvpnPLL/5FoU3LkJi9
         K3fWVhwHQiyouchMRuUQIlU+scgdjD0MvGZqYktkwYV3/e02I79YShz4Dc9NzEWaFTBf
         ImPONYq9uOkwp7uPq5WBazUIBdWBIlMRKO8IL2CpzwwIYdtBQxD0l2bkQ4cC+XQLOtc1
         3RhmPyKypI2tmNCR9Eq8eAy5b8jBA5moia3PuOU73QTDLZA23xE4Zvc5xVUGJ5OU6a0p
         elzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Pbq2Q9QXwJCIpXV1uA3Q+jY20Jinr4NYsu7i2Xzuc/A3DDUlc
	61aTpWXaY1Pw/I7zKV9nzLw=
X-Google-Smtp-Source: ABdhPJy9y+WdzKgIobfNj9XaoUCRH9luu63mj2XH+/v6Wsxfwm/aoZHUvKY8CAC8KeajNZm/ZXalAg==
X-Received: by 2002:a17:902:dac9:b029:ea:c77e:dc62 with SMTP id q9-20020a170902dac9b02900eac77edc62mr18635296plx.30.1619440175796;
        Mon, 26 Apr 2021 05:29:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d3d8:: with SMTP id d24ls2255492pjw.2.canary-gmail;
 Mon, 26 Apr 2021 05:29:35 -0700 (PDT)
X-Received: by 2002:a17:902:6a87:b029:e6:6a3d:29e8 with SMTP id n7-20020a1709026a87b02900e66a3d29e8mr17882036plk.10.1619440175087;
        Mon, 26 Apr 2021 05:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619440175; cv=none;
        d=google.com; s=arc-20160816;
        b=T+dJu+pZzG74M2GgWadnAqL583XILG3LRCYxJBEPbRSLUi4sMTKnGqdWOtolBYLXI9
         XaiKYpwi/kq8yL1m70UEMMsXQ69VsbniM8EkNLYN5mUesPcoXUtU6KSuUGzRO+wElYt6
         BUuS01A5pi+x8OLgDogL7s+dOl3iqlQ/nKhDGw1/EjP4RQbBB/6S0DGYk/39l3OKv11m
         X76UH6QAWQFfJ9AD+6UO7iG75Stbk4yAbkKpE0CICraLinUdCLGubwk0+Lynu8psml1+
         SVBLLCQzCJ+mr1SeiYLyKFX6DeIH/RWI4ye4KrZPPfwVjTrPR3qV9iISCibX0SGspEvP
         Yo3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Nf1iYJwmGYl3rObFQ2DhxRW3Lhrt9DXQ/zaBTQbuzn4=;
        b=DhXKQws5HsF6tRDfgroNoendKC7om6ViO96TyZeCkt4HingDK210y6chSYKTQPb2Sk
         Z2SmOTB4yxGbBPczyy/RN0Tgdzwif1L8q0xiupx3kJTrrzTyHRuqk/gEh/9zGFkEeAx/
         8Ev9SdqcRIDPc8o/Y1755rbS+Rp/OJIWH4R6VwWHII2fcpJc/0+Fdoi/xsaLo8Ek8S7a
         /DcQooQfEx7XkTMgYOkPgRkyRmvN0rxYrld2xGu7Tjb9rbaX8uY9UR6gCOcaZZXghcnk
         grpNCgECa0jj60EU+omXDMPC1qdT0sBsACuwDAnJLo5cLfeo3STOmBaZHCkzWISoq02w
         SX2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id o12si395934pjt.2.2021.04.26.05.29.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 05:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: RyvE6Q8QVdBHWrTkNh3MBdsnHpGtAVcmPm7XnzvWFubNx4RWxgQ9gB28xZjdM+QNCWJxisaDdU
 jMkIlT+82OrQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9965"; a="260277439"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; 
   d="gz'50?scan'50,208,50";a="260277439"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Apr 2021 05:29:32 -0700
IronPort-SDR: 5h3OXz2yCivO/78ndV+hPOm0wLGhwnzU6WHp/HL2Ey5lBi9N8+zAd6rkO/Mbcr39TWma7Zvd5j
 u28Q3A+U4y3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; 
   d="gz'50?scan'50,208,50";a="525729044"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 26 Apr 2021 05:29:29 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lb0Mi-0005wr-Dv; Mon, 26 Apr 2021 12:29:28 +0000
Date: Mon, 26 Apr 2021 20:29:03 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [tglx-devel:hrtimer 8/8] kernel/time/hrtimer.c:972:7: error:
 implicit declaration of function 'update_needs_ipi'
Message-ID: <202104262057.8yn5bkXV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git hrtimer
head:   764bc0ee49e04c95aeb6e56bef47b2ffac9ef1ce
commit: 764bc0ee49e04c95aeb6e56bef47b2ffac9ef1ce [8/8] hrtimer: Avoid more SMP function calls in clock_was_set()
config: powerpc-randconfig-r002-20210426 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d941863de2becb3d8d2e00676fc7125974934c7f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git/commit/?id=764bc0ee49e04c95aeb6e56bef47b2ffac9ef1ce
        git remote add tglx-devel https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git
        git fetch --no-tags tglx-devel hrtimer
        git checkout 764bc0ee49e04c95aeb6e56bef47b2ffac9ef1ce
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/powerpc/include/asm/io.h:619:
   arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
   DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
                   __do_##name al;                                 \
                   ^~~~~~~~~~~~~~
   <scratch space>:97:1: note: expanded from here
   __do_insl
   ^
   arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
   #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
                                          ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/time/hrtimer.c:30:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:99:1: note: expanded from here
   __do_outsb
   ^
   arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
   #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/time/hrtimer.c:30:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:101:1: note: expanded from here
   __do_outsw
   ^
   arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
   #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   In file included from kernel/time/hrtimer.c:30:
   In file included from include/linux/syscalls.h:85:
   In file included from include/trace/syscall.h:7:
   In file included from include/linux/trace_events.h:9:
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
   <scratch space>:103:1: note: expanded from here
   __do_outsl
   ^
   arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
   #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
                                           ~~~~~~~~~~~~~~~~~~~~~^
   kernel/time/hrtimer.c:120:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_REALTIME]        = HRTIMER_BASE_REALTIME,
                                     ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:121:22: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_MONOTONIC]       = HRTIMER_BASE_MONOTONIC,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:122:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_BOOTTIME]        = HRTIMER_BASE_BOOTTIME,
                                     ^~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:123:17: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [CLOCK_TAI]             = HRTIMER_BASE_TAI,
                                     ^~~~~~~~~~~~~~~~
   kernel/time/hrtimer.c:118:27: note: previous initialization is here
           [0 ... MAX_CLOCKS - 1]  = HRTIMER_MAX_CLOCK_BASES,
                                     ^~~~~~~~~~~~~~~~~~~~~~~
>> kernel/time/hrtimer.c:972:7: error: implicit declaration of function 'update_needs_ipi' [-Werror,-Wimplicit-function-declaration]
                   if (update_needs_ipi(cpu_base, bases))
                       ^
   kernel/time/hrtimer.c:972:7: note: did you mean 'update_set_needs_ipi'?
   kernel/time/hrtimer.c:883:13: note: 'update_set_needs_ipi' declared here
   static bool update_set_needs_ipi(struct hrtimer_cpu_base *cpu_base,
               ^
   10 warnings and 1 error generated.


vim +/update_needs_ipi +972 kernel/time/hrtimer.c

   936	
   937	/*
   938	 * Clock was set. This might affect CLOCK_REALTIME, CLOCK_TAI and
   939	 * CLOCK_BOOTTIME (for late sleep time injection).
   940	 *
   941	 * This requires to update the offsets for these clocks
   942	 * vs. CLOCK_MONOTONIC. When high resolution timers are enabled, then this
   943	 * also requires to eventually reprogram the per CPU clock event devices
   944	 * when the change moves an affected timer ahead of the first expiring
   945	 * timer on that CPU. Obviously remote per CPU clock event devices cannot
   946	 * be reprogrammed. The other reason why an IPI has to be sent is when the
   947	 * system is in !HIGH_RES and NOHZ mode. The NOHZ mode updates the offsets
   948	 * in the tick, which obviously might be stopped, so this has to bring out
   949	 * the remote CPU which might sleep in idle to get this sorted.
   950	 */
   951	void clock_was_set(unsigned int bases)
   952	{
   953		cpumask_var_t mask;
   954		int cpu;
   955	
   956		if (!hrtimer_hres_active() && !tick_nohz_active)
   957			goto out_timerfd;
   958	
   959		if (!zalloc_cpumask_var(&mask, GFP_KERNEL)) {
   960			on_each_cpu(retrigger_next_event, NULL, 1);
   961			goto out_timerfd;
   962		}
   963	
   964		/* Avoid interrupting CPUs if possible */
   965		cpus_read_lock();
   966		for_each_online_cpu(cpu) {
   967			struct hrtimer_cpu_base *cpu_base = &per_cpu(hrtimer_bases, cpu);
   968			unsigned long flags;
   969	
   970			raw_spin_lock_irqsave(&cpu_base->lock, flags);
   971	
 > 972			if (update_needs_ipi(cpu_base, bases))
   973				cpumask_set_cpu(cpu, mask);
   974	
   975			raw_spin_unlock_irqrestore(&cpu_base->lock, flags);
   976		}
   977	
   978		preempt_disable();
   979		smp_call_function_many(mask, retrigger_next_event, NULL, 1);
   980		preempt_enable();
   981		cpus_read_unlock();
   982		free_cpumask_var(mask);
   983	
   984	out_timerfd:
   985		timerfd_clock_was_set();
   986	}
   987	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104262057.8yn5bkXV-lkp%40intel.com.

--fUYQa+Pmc3FrFX/N
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKOdhmAAAy5jb25maWcAjFxLe9s2s973V+hJN+2ire9xznm8gECQQkQSMABKsjd4FFlJ
fepLPlnOl/z7MwPeAAp02kUTzQxug8HMOwMwv/7y64S87p8f1/v7zfrh4cfky/Zpu1vvt3eT
z/cP2/+dJGJSCjNhCTd/gnB+//T6/a+vz//d7r5uJud/Hp/8eTSZb3dP24cJfX76fP/lFVrf
Pz/98usvVJQpzyyldsGU5qK0hq3M1bvNw/rpy+TbdvcCcpPj0z+PoI/fvtzv/+evv+D/j/e7
3fPur4eHb4/26+75/7ab/eTuw9nx5cXp3fbk03bz6fTu8u5ke3R08f7i8+b98cn5h/dnH07P
Nu8///6uHTXrh7068qbCtaU5KbOrHx0Rf3ayx6dH8F/Ly5PDToAGneR50neRe3JhBzDijGhL
dGEzYYQ3asiwojKyMlE+L3NeMo8lSm1URY1QuqdydW2XQs17yrTieWJ4wawh05xZLZQ3gJkp
RmApZSrgfyCisSls26+TzNnAw+Rlu3/92m/kVIk5Ky3soy6kN3DJjWXlwhIFmuAFN1enJ9BL
N9tCchjdMG0m9y+Tp+c9dtypTlCSt7p7965v5zMsqYyINHYrtJrkBps2xBlZMDtnqmS5zW65
N9MoMWEpqXLjluH10pJnQpuSFOzq3W9Pz0/b370Z6iWR/qR6xo1ecEmjPCk0X9niumIVi6xo
SQydWcf1NlwJrW3BCqFuLDGG0Bkwuy4rzXI+jY5GKji3kWGcjoiCoZwETBiUnbf7D6Y0eXn9
9PLjZb997Pc/YyVTnDpL0zOx7Cc45NicLVge59OZr32kJKIgvAxpmhcxITvjTOG8b0JuKhRl
SWPT3D/dWhKlGQr5KvMnlLBplaU61N/26W7y/HmgieFy3Nla9MobsCmY8BwUURodYRZC20om
xLBW7eb+EXxiTPOzWyuhlUg49VdRCuTwJGfRzXfsKGfGs5lVTLsVqPjSD2bTTkYqxgppoHvn
lHrLbugLkVelIeombv+1VMQm2/ZUQPNWJ1RWf5n1yz+TPUxnsoapvezX+5fJerN5fn3a3z99
6bW04Apay8oS6vqo7aAb2XA6H7Ajs4h0Ykti+CJcq+ZRpf2L6bplKVpN9OE+w2g3Fnj+UPDT
shVsf0xnuhb2mw9I4Na166MxvAjrgFQlLEY3ilDWTa9ZcbiS7kzO6794p3Q+g6PJXMRyKtCb
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

--fUYQa+Pmc3FrFX/N--
