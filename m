Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM77XWAQMGQEUXCJ6TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DD331F636
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 10:07:01 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id t14sf3120459plr.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 01:07:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613725620; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2z+rC0GSV+pVM+AiWv4cdBSj6noFpZXIj/pU43aUKn7rHAr3e//+t4TgA+aZaNA8L
         2SYaiB/Sj6S/1g6WvqMwUp2vkD7V8XLNSgVYkMf7R904igqoxSOYqIuBrxQbjRrteW9U
         sytzVOroefMcURri1EfGB3Ie7h6VbF9RlAF3UADTLp/D/JCBIcaQSiFmhX0wjC/x4y3a
         pTBHdFXOfrv2nPknRcWHOCdUlv4tDRD9vDrveOrc5ZZG+Be/m7a03LDNesry6mZdHwPB
         P9+h9qqhby9RQiwzps+xJqCeWvYFTHEr/7oMTBHMAXWQ/xZOiTopDbFrZGSfpv2YkTq3
         /4Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=bN4FN++zKOi65hpNAcOdtv/fjgVNP+dus766qG3oAkM=;
        b=yJ4fUkBk8WrmTmuxLTkHbH7eC7dRJ2Wgzhv2vAxW1QBcElPfScxz8IDqzQ26dm8XLU
         q2Qll6Cvctga6Yv8Sb7pevA7eXceM+tZUPKrORSjVGdIn5en1TP1xLcCJdH5/vklNBqv
         UcW/n7kSS57HiRe+yhTD9Zw7l2fRWzGpJwuQ3Fl78uQx6C5nBEjtuoeeARh+iP7+sbYZ
         kzg7pA6UFaIxqfiElet8cRF9m4RuuTOoOpnCta7Dy/nv9FSElUc/2C+1aU4y5kX5hMUR
         QT1MLml7K/m7boBQIBmtmGfWESiwKHDhX/bYVjZYRM3Uqj2af9DlphrEEUVbHjPRiMaj
         z2/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bN4FN++zKOi65hpNAcOdtv/fjgVNP+dus766qG3oAkM=;
        b=WiO3RCzmfDnV8R25tUmzu+xs9qnCSS+kUmy/P6H2yFW34Hn9cpzTSjupZ3flMhXgW1
         /Xsk2qnQMab4FiKJ58PTVFQze9IvLnmovNC+Phnmr26dtjTPSGKb4IKXE/VTTiL2K0Rw
         Hgi4n2Yhspcyy01SVa3+EKzDifX3XVYjRiHc4yF6c9K231OPjtBaKfTHbJYjmEB5ZoG2
         m+vC//021lcXpS9It+wizUf/f5DqXlL36aTEsa6AMOTVY6tIh8adrlffY7Mz2ifIZ9N5
         0wjK98Qd95xtxe510yXu6eWVa6WvCXSeguvbmKo/2q9mtydQon2w7Caq3SgPH4RSsReu
         iFrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bN4FN++zKOi65hpNAcOdtv/fjgVNP+dus766qG3oAkM=;
        b=JEeMU8uDtKtrT3r3e0Ueru2mGefWU2ZVIIKJtE4kuxNkqb9K0bKV/6FMb7X8LVRALL
         ZEreA4+zrid1u/6b9DUnV8qZxlUXVJLcgmiCwSsVclAMiVtP8lCiU1ZppOE6/2BBWN9i
         xjrJdcy8x/3juqrzlvMdOx++SICOO4C4M7Dk47rBFb0bCvOoFtAoyDCMfXjx+fb2hq+A
         vdpCf1g9OQj9+11n22VTIKSTVLTu5uyMTbKyMtfUtQQHrmFNJpiKpeN9wf8WOci4oIR0
         oUs34urOPVGTwNQDf1z/qsdewR6X75hyUvDpTS+3hsMP9uEsDB2bNx3erZjux9bYPql4
         Ra4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d/vZFiqiCyrwZ8pqGkaJvM9DtYRqa2mdaX4n6cQaAEmpZixPZ
	RoMQ08OcVNBLyNY1RBrwfaI=
X-Google-Smtp-Source: ABdhPJwdyWhKGJIZxWxQjGkl3gjBWjIv4FdHB8rhFNshjIYWDiUPtNRwQH4YLzXr2+LbKD0k1VYQTg==
X-Received: by 2002:a17:902:8ec1:b029:dc:8ae1:7a22 with SMTP id x1-20020a1709028ec1b02900dc8ae17a22mr980881plo.6.1613725619640;
        Fri, 19 Feb 2021 01:06:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:778b:: with SMTP id o11ls4254063pll.0.gmail; Fri, 19
 Feb 2021 01:06:59 -0800 (PST)
X-Received: by 2002:a17:90a:ad97:: with SMTP id s23mr8272255pjq.212.1613725618787;
        Fri, 19 Feb 2021 01:06:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613725618; cv=none;
        d=google.com; s=arc-20160816;
        b=J6gSrSDG55CH8hlj9pnZjL8gzC4WeDJa4qpsd2K2edwLYD+UTPQiwKx9HMiTMCUUh0
         /9t7Gx2e1W7NuTl4IgeJ+m8Cotm48idqwjcWHkQwvYAfWT6StY+PjC9NqQOWWUFEasOd
         D5l/qLDpRMi5PbFl3VYwJiQxthElHsc/jR+qI6gQ+CIqauip4K4j2cgKhQk+QgdtWNOn
         YHJ6sSHlwntEP8hrEBOg7Tkhd5w6t0FT/useycUMhbjz+KbUvVKALdIQ0wmEn4g0LQNW
         5WRkfx/ZdSwPzMZjrvAZJIzDkZWNOr+ZweAQc9hFWHZZC9byutxFTuc3LVzs/sww6GqI
         g8XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=7+dea/LrxmA4aAFje4/fOkvK3+pg9+7dMLtjmawtjq8=;
        b=Mx3Teg/7fZGcumyzOCe4fxnIsafb/5E8Y+i/v8XPbSkkKH4T8dby0yi6IjI2OI/9L0
         bcq9kvPGceSj72RAR6nfz4w9nkcMm+Yb1/gt5piU6ajpPhBJRlYErGdcoLSq9TApQcVq
         DwNbvXTFyJ08VJ9dr4+m1VrmhBq3N/CKvCGzcabGr2ORTb+tYPSYW0ScraN+mKaV9FKe
         2uWfU6iDdSPSk73KAnn20tCOho3p8R266FFIVWVvL3PSrMUsdtPYNM58YMJTyD433h5b
         HtKM9KfoNQ/V4aBZUXhZaRgb7udJ38hbA4LtpIga1y/UeQFBvBFTDtKWXHb39dytdlr5
         KLLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id d13si337378pgm.5.2021.02.19.01.06.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2021 01:06:58 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: pmpzpScr17lmfdEdFIqNIEGmS4RHPTj28I2gWEz2TaI/RFqPkNsm2AWhDYwjP+RTyu9RkqEQth
 af0yURWKaOFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="170918801"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; 
   d="gz'50?scan'50,208,50";a="170918801"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2021 01:06:57 -0800
IronPort-SDR: WEmuUeKuJOX1cYhAd31X89NL3f3/T7OOKoK7m9dEgMqUI5iZBVNWu4JNLBgWjYavCjsryP4feW
 63P1n5Xft8PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; 
   d="gz'50?scan'50,208,50";a="594484770"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 19 Feb 2021 01:06:54 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lD1kS-000AH0-Ey; Fri, 19 Feb 2021 09:06:52 +0000
Date: Fri, 19 Feb 2021 17:06:49 +0800
From: kernel test robot <lkp@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: [linux-stable-rc:linux-4.19.y 4058/6859]
 lib/mpi/generic_mpih-mul1.c:50:24: error: invalid use of a cast in a inline
 asm context requiring an lvalue: remove the cast or build with
 -fheinous-gnu-extensions
Message-ID: <202102191740.If404oCV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
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


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
head:   3a10b2060ca30843d9251b80a2e1ca71e68035bd
commit: f66a52d991de7ca6c6dc7db768b50e6a28916d1f [4058/6859] kbuild: clang: choose GCC_TOOLCHAIN_DIR not on LD
config: mips-randconfig-r022-20210219 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=f66a52d991de7ca6c6dc7db768b50e6a28916d1f
        git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
        git fetch --no-tags linux-stable-rc linux-4.19.y
        git checkout f66a52d991de7ca6c6dc7db768b50e6a28916d1f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from lib/mpi/generic_mpih-mul1.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:9:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:19:
   In file included from arch/mips/include/asm/bitops.h:19:
   In file included from arch/mips/include/uapi/asm/byteorder.h:15:
   In file included from include/linux/byteorder/little_endian.h:11:
   include/linux/byteorder/generic.h:195:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   include/linux/byteorder/generic.h:203:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   In file included from lib/mpi/generic_mpih-mul1.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:81:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   include/linux/thread_info.h:141:29: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           if (unlikely(sz >= 0 && sz < bytes)) {
                                   ~~ ^ ~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from lib/mpi/generic_mpih-mul1.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:88:
   In file included from arch/mips/include/asm/spinlock.h:13:
   In file included from ./arch/mips/include/generated/asm/qrwlock.h:1:
   include/asm-generic/qrwlock.h:75:36: warning: comparison of integers of different signs: 'int' and 'u32' (aka 'unsigned int') [-Wsign-compare]
                                                cnts, cnts | _QW_LOCKED) == cnts);
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from lib/mpi/generic_mpih-mul1.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:13:
   In file included from include/linux/kmod.h:22:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   include/linux/mmzone.h:984:44: warning: comparison of integers of different signs: 'int' and 'enum zone_type' [-Wsign-compare]
           if (likely(!nodes && zonelist_zone_idx(z) <= highest_zoneidx))
                                ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from lib/mpi/generic_mpih-mul1.c:29:
   In file included from lib/mpi/mpi-internal.h:37:
   In file included from include/linux/mpi.h:34:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:26:
   In file included from include/linux/page_ref.h:7:
   include/linux/page-flags.h:162:21: warning: comparison of integers of different signs: 'const unsigned long' and 'long' [-Wsign-compare]
           return page->flags == PAGE_POISON_PATTERN;
                  ~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   In file included from lib/mpi/generic_mpih-mul1.c:29:
   In file included from lib/mpi/mpi-internal.h:37:
   In file included from include/linux/mpi.h:34:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:1154:
   include/linux/vmstat.h:221:2: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for_each_online_cpu(cpu)
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:778:36: note: expanded from macro 'for_each_online_cpu'
   #define for_each_online_cpu(cpu)   for_each_cpu((cpu), cpu_online_mask)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:243:9: note: expanded from macro 'for_each_cpu'
                   (cpu) < nr_cpu_ids;)
                    ~~~  ^ ~~~~~~~~~~
>> lib/mpi/generic_mpih-mul1.c:50:24: error: invalid use of a cast in a inline asm context requiring an lvalue: remove the cast or build with -fheinous-gnu-extensions
                   umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                   ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
           : "=l" ((USItype)(w0)), \
                   ~~~~~~~~~~^~~
>> lib/mpi/generic_mpih-mul1.c:50:3: error: invalid output constraint '=h' in asm
                   umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                   ^
   lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
                "=h" ((USItype)(w1)) \
                ^
   7 warnings and 2 errors generated.
--
   In file included from lib/mpi/generic_mpih-mul2.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:9:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:19:
   In file included from arch/mips/include/asm/bitops.h:19:
   In file included from arch/mips/include/uapi/asm/byteorder.h:15:
   In file included from include/linux/byteorder/little_endian.h:11:
   include/linux/byteorder/generic.h:195:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   include/linux/byteorder/generic.h:203:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   In file included from lib/mpi/generic_mpih-mul2.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:81:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   include/linux/thread_info.h:141:29: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           if (unlikely(sz >= 0 && sz < bytes)) {
                                   ~~ ^ ~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from lib/mpi/generic_mpih-mul2.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:88:
   In file included from arch/mips/include/asm/spinlock.h:13:
   In file included from ./arch/mips/include/generated/asm/qrwlock.h:1:
   include/asm-generic/qrwlock.h:75:36: warning: comparison of integers of different signs: 'int' and 'u32' (aka 'unsigned int') [-Wsign-compare]
                                                cnts, cnts | _QW_LOCKED) == cnts);
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from lib/mpi/generic_mpih-mul2.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:13:
   In file included from include/linux/kmod.h:22:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   include/linux/mmzone.h:984:44: warning: comparison of integers of different signs: 'int' and 'enum zone_type' [-Wsign-compare]
           if (likely(!nodes && zonelist_zone_idx(z) <= highest_zoneidx))
                                ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from lib/mpi/generic_mpih-mul2.c:29:
   In file included from lib/mpi/mpi-internal.h:37:
   In file included from include/linux/mpi.h:34:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:26:
   In file included from include/linux/page_ref.h:7:
   include/linux/page-flags.h:162:21: warning: comparison of integers of different signs: 'const unsigned long' and 'long' [-Wsign-compare]
           return page->flags == PAGE_POISON_PATTERN;
                  ~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   In file included from lib/mpi/generic_mpih-mul2.c:29:
   In file included from lib/mpi/mpi-internal.h:37:
   In file included from include/linux/mpi.h:34:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:1154:
   include/linux/vmstat.h:221:2: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for_each_online_cpu(cpu)
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:778:36: note: expanded from macro 'for_each_online_cpu'
   #define for_each_online_cpu(cpu)   for_each_cpu((cpu), cpu_online_mask)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:243:9: note: expanded from macro 'for_each_cpu'
                   (cpu) < nr_cpu_ids;)
                    ~~~  ^ ~~~~~~~~~~
>> lib/mpi/generic_mpih-mul2.c:49:24: error: invalid use of a cast in a inline asm context requiring an lvalue: remove the cast or build with -fheinous-gnu-extensions
                   umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                   ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
           : "=l" ((USItype)(w0)), \
                   ~~~~~~~~~~^~~
>> lib/mpi/generic_mpih-mul2.c:49:3: error: invalid output constraint '=h' in asm
                   umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                   ^
   lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
                "=h" ((USItype)(w1)) \
                ^
   7 warnings and 2 errors generated.
--
   In file included from lib/mpi/generic_mpih-mul3.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:9:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:19:
   In file included from arch/mips/include/asm/bitops.h:19:
   In file included from arch/mips/include/uapi/asm/byteorder.h:15:
   In file included from include/linux/byteorder/little_endian.h:11:
   include/linux/byteorder/generic.h:195:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   include/linux/byteorder/generic.h:203:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   In file included from lib/mpi/generic_mpih-mul3.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:81:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   include/linux/thread_info.h:141:29: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           if (unlikely(sz >= 0 && sz < bytes)) {
                                   ~~ ^ ~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from lib/mpi/generic_mpih-mul3.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:88:
   In file included from arch/mips/include/asm/spinlock.h:13:
   In file included from ./arch/mips/include/generated/asm/qrwlock.h:1:
   include/asm-generic/qrwlock.h:75:36: warning: comparison of integers of different signs: 'int' and 'u32' (aka 'unsigned int') [-Wsign-compare]
                                                cnts, cnts | _QW_LOCKED) == cnts);
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from lib/mpi/generic_mpih-mul3.c:29:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:13:
   In file included from include/linux/kmod.h:22:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   include/linux/mmzone.h:984:44: warning: comparison of integers of different signs: 'int' and 'enum zone_type' [-Wsign-compare]
           if (likely(!nodes && zonelist_zone_idx(z) <= highest_zoneidx))
                                ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from lib/mpi/generic_mpih-mul3.c:29:
   In file included from lib/mpi/mpi-internal.h:37:
   In file included from include/linux/mpi.h:34:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:26:
   In file included from include/linux/page_ref.h:7:
   include/linux/page-flags.h:162:21: warning: comparison of integers of different signs: 'const unsigned long' and 'long' [-Wsign-compare]
           return page->flags == PAGE_POISON_PATTERN;
                  ~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   In file included from lib/mpi/generic_mpih-mul3.c:29:
   In file included from lib/mpi/mpi-internal.h:37:
   In file included from include/linux/mpi.h:34:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:1154:
   include/linux/vmstat.h:221:2: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for_each_online_cpu(cpu)
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:778:36: note: expanded from macro 'for_each_online_cpu'
   #define for_each_online_cpu(cpu)   for_each_cpu((cpu), cpu_online_mask)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:243:9: note: expanded from macro 'for_each_cpu'
                   (cpu) < nr_cpu_ids;)
                    ~~~  ^ ~~~~~~~~~~
>> lib/mpi/generic_mpih-mul3.c:49:24: error: invalid use of a cast in a inline asm context requiring an lvalue: remove the cast or build with -fheinous-gnu-extensions
                   umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                   ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
           : "=l" ((USItype)(w0)), \
                   ~~~~~~~~~~^~~
>> lib/mpi/generic_mpih-mul3.c:49:3: error: invalid output constraint '=h' in asm
                   umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                   ^
   lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
                "=h" ((USItype)(w1)) \
                ^
   7 warnings and 2 errors generated.
--
   In file included from lib/mpi/mpih-div.c:30:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:9:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:11:
   In file included from include/linux/bitops.h:19:
   In file included from arch/mips/include/asm/bitops.h:19:
   In file included from arch/mips/include/uapi/asm/byteorder.h:15:
   In file included from include/linux/byteorder/little_endian.h:11:
   include/linux/byteorder/generic.h:195:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   include/linux/byteorder/generic.h:203:16: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           for (i = 0; i < len; i++)
                       ~ ^ ~~~
   In file included from lib/mpi/mpih-div.c:30:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:81:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   include/linux/thread_info.h:141:29: warning: comparison of integers of different signs: 'int' and 'size_t' (aka 'unsigned int') [-Wsign-compare]
           if (unlikely(sz >= 0 && sz < bytes)) {
                                   ~~ ^ ~~~~~
   include/linux/compiler.h:77:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   In file included from lib/mpi/mpih-div.c:30:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:88:
   In file included from arch/mips/include/asm/spinlock.h:13:
   In file included from ./arch/mips/include/generated/asm/qrwlock.h:1:
   include/asm-generic/qrwlock.h:75:36: warning: comparison of integers of different signs: 'int' and 'u32' (aka 'unsigned int') [-Wsign-compare]
                                                cnts, cnts | _QW_LOCKED) == cnts);
                                                ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from lib/mpi/mpih-div.c:30:
   In file included from lib/mpi/mpi-internal.h:33:
   In file included from include/linux/module.h:13:
   In file included from include/linux/kmod.h:22:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   include/linux/mmzone.h:984:44: warning: comparison of integers of different signs: 'int' and 'enum zone_type' [-Wsign-compare]
           if (likely(!nodes && zonelist_zone_idx(z) <= highest_zoneidx))
                                ~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~
   include/linux/compiler.h:76:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   In file included from lib/mpi/mpih-div.c:30:
   In file included from lib/mpi/mpi-internal.h:37:
   In file included from include/linux/mpi.h:34:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:26:
   In file included from include/linux/page_ref.h:7:
   include/linux/page-flags.h:162:21: warning: comparison of integers of different signs: 'const unsigned long' and 'long' [-Wsign-compare]
           return page->flags == PAGE_POISON_PATTERN;
                  ~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~
   In file included from lib/mpi/mpih-div.c:30:
   In file included from lib/mpi/mpi-internal.h:37:
   In file included from include/linux/mpi.h:34:
   In file included from include/linux/scatterlist.h:8:
   In file included from include/linux/mm.h:1154:
   include/linux/vmstat.h:221:2: warning: comparison of integers of different signs: 'int' and 'unsigned int' [-Wsign-compare]
           for_each_online_cpu(cpu)
           ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:778:36: note: expanded from macro 'for_each_online_cpu'
   #define for_each_online_cpu(cpu)   for_each_cpu((cpu), cpu_online_mask)
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/cpumask.h:243:9: note: expanded from macro 'for_each_cpu'
                   (cpu) < nr_cpu_ids;)
                    ~~~  ^ ~~~~~~~~~~
>> lib/mpi/mpih-div.c:142:20: error: invalid use of a cast in a inline asm context requiring an lvalue: remove the cast or build with -fheinous-gnu-extensions
                                           umul_ppmm(n1, n0, d0, q);
                                           ~~~~~~~~~~~~~~^~~~~~~~~~
   lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
           : "=l" ((USItype)(w0)), \
                   ~~~~~~~~~~^~~
>> lib/mpi/mpih-div.c:142:6: error: invalid output constraint '=h' in asm
                                           umul_ppmm(n1, n0, d0, q);
                                           ^
   lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
                "=h" ((USItype)(w1)) \
                ^
   lib/mpi/mpih-div.c:205:20: error: invalid use of a cast in a inline asm context requiring an lvalue: remove the cast or build with -fheinous-gnu-extensions
                                           umul_ppmm(n1, n0, d1, q);
                                           ~~~~~~~~~~~~~~^~~~~~~~~~
   lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
           : "=l" ((USItype)(w0)), \
                   ~~~~~~~~~~^~~
   lib/mpi/mpih-div.c:205:6: error: invalid output constraint '=h' in asm
                                           umul_ppmm(n1, n0, d1, q);
                                           ^
   lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
                "=h" ((USItype)(w1)) \
                ^
   7 warnings and 4 errors generated.


vim +50 lib/mpi/generic_mpih-mul1.c

cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  31  
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  32  mpi_limb_t
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  33  mpihelp_mul_1(mpi_ptr_t res_ptr, mpi_ptr_t s1_ptr, mpi_size_t s1_size,
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  34  	      mpi_limb_t s2_limb)
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  35  {
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  36  	mpi_limb_t cy_limb;
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  37  	mpi_size_t j;
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  38  	mpi_limb_t prod_high, prod_low;
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  39  
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  40  	/* The loop counter and index J goes from -S1_SIZE to -1.  This way
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  41  	 * the loop becomes faster.  */
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  42  	j = -s1_size;
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  43  
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  44  	/* Offset the base pointers to compensate for the negative indices.  */
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  45  	s1_ptr -= j;
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  46  	res_ptr -= j;
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  47  
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  48  	cy_limb = 0;
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31  49  	do {
cdec9cb5167ab1 Dmitry Kasatkin 2011-08-31 @50  		umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);

:::::: The code at line 50 was first introduced by commit
:::::: cdec9cb5167ab1113ba9c58e395f664d9d3f9acb crypto: GnuPG based MPI lib - source files (part 1)

:::::: TO: Dmitry Kasatkin <dmitry.kasatkin@intel.com>
:::::: CC: Dmitry Kasatkin <dmitry.kasatkin@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102191740.If404oCV-lkp%40intel.com.

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
X9N4AQA=

--y0ulUmNC+osPPQO6--
