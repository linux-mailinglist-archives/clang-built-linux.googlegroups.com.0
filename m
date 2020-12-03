Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUNFUL7AKGQEZU57R5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD6F2CD054
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 08:25:07 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id n62sf1495470ybf.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 23:25:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606980306; cv=pass;
        d=google.com; s=arc-20160816;
        b=zEQge7f0QM14hd3frNdjKzoT5QC7KVmFdaio0z7gg9+NdK4F3+Cb2F0xIbhCMabKlH
         D54B7frFXXamk9DOXzf7UXYPh5czT+wZmQDCpLHgwuPf1gFRwvl+tYeOzLFynRha80f9
         vPZKOLNZfEOlUXEA5Cxymzge8zu/FDrn6FBLM3hRzS8A0JM+uUxuC7k1cZ/UbQulHFcH
         oilrMHg11VvgR7vuDttuWZk/z+5WI6ls7HgbsVlwDq32Wev1xQfXVK4JcEWGscRvV5NF
         ZePvcNYTe8sY3o7LICHynRt0CdK4PY//pKt/qFbOA+cPLCb9lAfG/IKm7KekVqq4X3Ti
         2jVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=p9Cky/yYW9j0Kp8gBGTaZARcw4B2u9+t77l1pAglzLs=;
        b=lA1fSx3DR+fxuGuzl40ugkQjZmHl73X/uTgo+Fav9fVIJRPPlf8i1bDPPFzMWZ38V6
         dtwj3VFK14xVYmBOEaXjjSEjR3JuOFWstOGpWFzxA4QeviXQWF04kwH17DKqGs6Op5TU
         YXv6IqiRB/SOofHVhLrr77ayCwMD1L6ji59Bk8Seig5db3Rsn1LS4oZrIm/MCHZ6x4Hi
         Qgbk03iYr/1RPGtVprSCxpH8cwUjsgAAg4J83omI2EcEhv/vU3e4H8PySfvXim/cI5mm
         j50oFNV0wE1dzyaTXrBoX43Msuy8pp2HFB1sU/ltBPzqIAjF8z0Pa6t+HrGZD2SzCIk8
         DgRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p9Cky/yYW9j0Kp8gBGTaZARcw4B2u9+t77l1pAglzLs=;
        b=QD3QGd5kIxFzKvlfBAIdVbrJZdFZA8sm44FqePeiMkty/4wHpZUmdj/yxSD0Aw9dUC
         m5w0rq75HPUfGBPTFagZny96ONfaeVJuTR4MxxUDz7wZtW54VKDBPpZhc2Z2nCg3T8lk
         iGeEfDuqcvpL6QXrkgq8/sGwVlVIVlZG6RdSKBKO+dtybdLj+WAxUKamyk9HhcwGpJXC
         dM5QcGF67U1pb9knzZLvqbqM6FLEdS29m2w5Q0MRcl2khNFgCCIt9SA7LBb01bmwx0rx
         yAFI0MEqHgWbF+eCoop3PF17hFcmnQQH44D1y717z7X0meDPStjbk0cyEPAGzUG8VW96
         lq+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p9Cky/yYW9j0Kp8gBGTaZARcw4B2u9+t77l1pAglzLs=;
        b=VN206zr97zAQAr0r/yqQxN1sSmaJ5r2ZsSCnvuc64VoUW1PeE3aZix7zasPY2Kssz+
         wIyVWXy2KdPisDhY2n0A1YO4R67t1bkB79CpOW4dZThrbgzFQUUnZyN51oL12W9wg2ge
         g7piSujSadjnYtiQ03AfdCS0Im08KXk5Ab7Ni3q1T99EubHLW5zhvLVnwywCDn+P5MA0
         QlY0ZDhOup03v4OAxSuF4v5vMXWa7PIF7xms8yA8DC6GQ22PDP2Uk46V5CHebqhtMfD6
         Xr7syUGitGhFynpWrl+5bMgSOo28GBKzTfFiykffp/iSBPWjmacGUyJALvKGN7Dbzhpp
         o0wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MkbFZgruVu+oxKATH/Ez3rviTMH9rFAZa90tSZalmvbie3e5p
	kQmseh3NX6rOHbv5/WfM9x8=
X-Google-Smtp-Source: ABdhPJwWwloR1aovfQayfk77HZtzNfvPJT2o0Mxll5l1V2MS6zQ6ksOIJU9WzbAAt2xJcutPCTagFQ==
X-Received: by 2002:a25:b814:: with SMTP id v20mr2709755ybj.323.1606980306077;
        Wed, 02 Dec 2020 23:25:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:19c3:: with SMTP id 186ls2260431ybz.7.gmail; Wed, 02 Dec
 2020 23:25:05 -0800 (PST)
X-Received: by 2002:a25:31d6:: with SMTP id x205mr2531802ybx.501.1606980305580;
        Wed, 02 Dec 2020 23:25:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606980305; cv=none;
        d=google.com; s=arc-20160816;
        b=R51FTYxRmr7ZMa5WFGcelybfTNaT7PzdZduuRLgMWujZF3Rc3cq1o2XM3pPB7UHVt+
         faTraagYR3GwWuImc81A1uaKlzJxpGgZ6Qn9I2CKna9/4vIzfXW9/vGsGMErpAw4hMjO
         dOd/HRs1pfUi+WLfQD/8KCz6rD4Q0jzj9Kp/5zMz+xP/QzSWkXrlgRWrSWxRd45n5qoC
         lElvNabSdyGo6PbFvuHxefsDPF/mbykfuhEs3ob6K16H4VkvoK0OgCuhlxdNM/DvuuzO
         lpxoN0LZYbGJGhMz2FH7j4+ebl+ZbXxzRFBNh0Jhtj1g6h2GUCsBy5I+g6uvlMgLGfgp
         fXHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=rVnp3AvrOk4mmfpHcVyNdDi+rIw6VQCvTm9rg5Keq4Q=;
        b=0gl7hkQvSiyLNBXKW4ght5wcZg2bWKd8IcSAGjNMiR0Ti/N7sUtgil2xBt1FbH9DP/
         Mm8Pm92dvz3e3i8pnsSLfDGTolV4Q+0UdPjxq7eqP0l2AAJrc5DfOdYjzBFPp5sGa7fl
         QeungX03nS//LyskAbIhFjMj9ZxX9bh6Hup5z3DJd1vgXz03ng/HHp9kVz22pLUcB4lQ
         sue59NXFpj/2zsiUJ4Hga4TKfqFLDc7/e1I608LEZMv4TTrVNmu1L3Ek4sMRScsAynUJ
         CLN7uYYTdRJncnwcX0hRFAAm8edhzPcwwp4xaN1qLhnSmiDx2Jsb0mvFfr7QshqRNTY2
         GnWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id m3si23619ybf.1.2020.12.02.23.25.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Dec 2020 23:25:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: I+SkGgrg0sgfjYmI+7k3Jxx8qCEgYqS2hBwP4Qqgz7qAbK2iTSM9Sxpa7VrVmoGGv1LAPSzjFk
 lvhoF4zEr6Pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="170581306"
X-IronPort-AV: E=Sophos;i="5.78,388,1599548400"; 
   d="gz'50?scan'50,208,50";a="170581306"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Dec 2020 23:25:04 -0800
IronPort-SDR: ZdFm+nC6xEsBVqgIf6A6Xdgmj2cN82OMf+/Rx2O5ZmyNGhTdNkGwSUg1GScwe2I0MLQvSnNqAL
 N/kYQdgTe4+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,388,1599548400"; 
   d="gz'50?scan'50,208,50";a="373801213"
Received: from lkp-server01.sh.intel.com (HELO c4fb854e61c6) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 02 Dec 2020 23:25:02 -0800
Received: from kbuild by c4fb854e61c6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kkiz7-00006e-Fv; Thu, 03 Dec 2020 07:25:01 +0000
Date: Thu, 3 Dec 2020 15:24:02 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: arch/mips/kernel/cmpxchg.c:44:12: warning: converting the result of
 '<<' to a boolean always evaluates to true
Message-ID: <202012031558.obnesxFc-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   34816d20f173a90389c8a7e641166d8ea9dce70a
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   8 months ago
config: mips-randconfig-r021-20201203 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501dd88b62787d3a5ffda7aabcf4650dbe3cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=afe956c577b2d5a3d9834e4424587c1ebcf90c4c
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/mips/kernel/cmpxchg.c:44:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   load32 = cmpxchg(ptr32, old32, new32);
                            ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> arch/mips/kernel/cmpxchg.c:44:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   arch/mips/kernel/cmpxchg.c:100:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   load32 = cmpxchg(ptr32, old32, new32);
                            ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   arch/mips/kernel/cmpxchg.c:100:12: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   4 warnings generated.
   Assembler messages:
   Fatal error: invalid -march= option: `mips64r2'
   clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
--
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:12:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:12:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:12:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:12:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic64, s64)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:12:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:12:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:12:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:12:
   In file included from ./arch/mips/include/generated/asm/current.h:1:
   In file included from include/asm-generic/current.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:15:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:7:
   In file included from include/linux/rhashtable-types.h:14:
   In file included from include/linux/mutex.h:21:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:15:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:7:
   In file included from include/linux/rhashtable-types.h:15:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
>> include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/cpu-probe.c:12:
   In file included from include/linux/ptrace.h:6:
   In file included from include/linux/sched.h:15:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:7:
   In file included from include/linux/rhashtable-types.h:15:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:25:
   include/linux/jiffies.h:13:10: fatal error: 'generated/timeconst.h' file not found
   #include <generated/timeconst.h>
            ^~~~~~~~~~~~~~~~~~~~~~~
   10 warnings and 1 error generated.
--
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:8:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:8:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:8:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
>> arch/mips/include/asm/atomic.h:49:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:8:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_OPS(atomic64, s64)
   ^
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:8:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:40:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:8:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:53:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:45:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:8:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:8:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:8:
   In file included from include/linux/vtime.h:5:
   In file included from include/linux/context_tracking_state.h:5:
   In file included from include/linux/percpu.h:7:
   In file included from include/linux/smp.h:15:
>> include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/irq.c:14:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:9:
   In file included from arch/mips/include/asm/hardirq.h:16:
   In file included from include/asm-generic/hardirq.h:13:
   In file included from include/linux/irq.h:19:
   In file included from include/linux/topology.h:33:
   In file included from include/linux/mmzone.h:19:
   include/linux/page-flags-layout.h:6:10: fatal error: 'generated/bounds.h' file not found
   #include <generated/bounds.h>
            ^~~~~~~~~~~~~~~~~~~~
   9 warnings and 1 error generated.
..

vim +44 arch/mips/kernel/cmpxchg.c

b70eb30056dc845 Paul Burton 2017-06-09   9  
b70eb30056dc845 Paul Burton 2017-06-09  10  unsigned long __xchg_small(volatile void *ptr, unsigned long val, unsigned int size)
b70eb30056dc845 Paul Burton 2017-06-09  11  {
b70eb30056dc845 Paul Burton 2017-06-09  12  	u32 old32, new32, load32, mask;
b70eb30056dc845 Paul Burton 2017-06-09  13  	volatile u32 *ptr32;
b70eb30056dc845 Paul Burton 2017-06-09  14  	unsigned int shift;
b70eb30056dc845 Paul Burton 2017-06-09  15  
b70eb30056dc845 Paul Burton 2017-06-09  16  	/* Check that ptr is naturally aligned */
b70eb30056dc845 Paul Burton 2017-06-09  17  	WARN_ON((unsigned long)ptr & (size - 1));
b70eb30056dc845 Paul Burton 2017-06-09  18  
b70eb30056dc845 Paul Burton 2017-06-09  19  	/* Mask value to the correct size. */
b70eb30056dc845 Paul Burton 2017-06-09  20  	mask = GENMASK((size * BITS_PER_BYTE) - 1, 0);
b70eb30056dc845 Paul Burton 2017-06-09  21  	val &= mask;
b70eb30056dc845 Paul Burton 2017-06-09  22  
b70eb30056dc845 Paul Burton 2017-06-09  23  	/*
b70eb30056dc845 Paul Burton 2017-06-09  24  	 * Calculate a shift & mask that correspond to the value we wish to
b70eb30056dc845 Paul Burton 2017-06-09  25  	 * exchange within the naturally aligned 4 byte integerthat includes
b70eb30056dc845 Paul Burton 2017-06-09  26  	 * it.
b70eb30056dc845 Paul Burton 2017-06-09  27  	 */
b70eb30056dc845 Paul Burton 2017-06-09  28  	shift = (unsigned long)ptr & 0x3;
b70eb30056dc845 Paul Burton 2017-06-09  29  	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
b70eb30056dc845 Paul Burton 2017-06-09  30  		shift ^= sizeof(u32) - size;
b70eb30056dc845 Paul Burton 2017-06-09  31  	shift *= BITS_PER_BYTE;
b70eb30056dc845 Paul Burton 2017-06-09  32  	mask <<= shift;
b70eb30056dc845 Paul Burton 2017-06-09  33  
b70eb30056dc845 Paul Burton 2017-06-09  34  	/*
b70eb30056dc845 Paul Burton 2017-06-09  35  	 * Calculate a pointer to the naturally aligned 4 byte integer that
b70eb30056dc845 Paul Burton 2017-06-09  36  	 * includes our byte of interest, and load its value.
b70eb30056dc845 Paul Burton 2017-06-09  37  	 */
b70eb30056dc845 Paul Burton 2017-06-09  38  	ptr32 = (volatile u32 *)((unsigned long)ptr & ~0x3);
b70eb30056dc845 Paul Burton 2017-06-09  39  	load32 = *ptr32;
b70eb30056dc845 Paul Burton 2017-06-09  40  
b70eb30056dc845 Paul Burton 2017-06-09  41  	do {
b70eb30056dc845 Paul Burton 2017-06-09  42  		old32 = load32;
b70eb30056dc845 Paul Burton 2017-06-09  43  		new32 = (load32 & ~mask) | (val << shift);
b70eb30056dc845 Paul Burton 2017-06-09 @44  		load32 = cmpxchg(ptr32, old32, new32);
b70eb30056dc845 Paul Burton 2017-06-09  45  	} while (load32 != old32);
b70eb30056dc845 Paul Burton 2017-06-09  46  
b70eb30056dc845 Paul Burton 2017-06-09  47  	return (load32 & mask) >> shift;
b70eb30056dc845 Paul Burton 2017-06-09  48  }
3ba7f44d2b19166 Paul Burton 2017-06-09  49  

:::::: The code at line 44 was first introduced by commit
:::::: b70eb30056dc84568f3d32440d9be6a558025843 MIPS: cmpxchg: Implement 1 byte & 2 byte xchg()

:::::: TO: Paul Burton <paul.burton@imgtec.com>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012031558.obnesxFc-lkp%40intel.com.

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/gKzf07yM5IBAA==

--Dxnq1zWXvFF0Q93v--
