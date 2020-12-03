Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRXNUP7AKGQEFBLD6BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4E22CD930
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 15:31:36 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id 185sf1477450pfw.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 06:31:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607005895; cv=pass;
        d=google.com; s=arc-20160816;
        b=t9dfVsbIVketMeMLxAEFrmyfO5jRX1dXYAsghAxqG2TPTuYc03YDTJItiexJ3J6SI2
         TFDQfFZgTdzVRsTMDjHOEE0zCCg8/3BnZX5D5/10Eq5brZdCgRGWBUIXDgIevw5G7v9a
         YgDPkbe2WWx7h3X9b8zYoI5Mho4PSTRpVkMl0H3IVYZG4i55cbJyzbLU4CtrTzpuNFD4
         0x10o45fZiAZLpOCU2N04s5cFM2ldWrde7yNK46RbTvpr6Le794f4gxjq/iWYbIh6Dcr
         xfnL0FJR21rtoSyEYPr05PQruXsVvdNcmUDODcrkc8kJk4yg2jVS5XNEwvp2cr20e+TV
         Gu8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ynnTanHN3KcWCGL2gdlAUn8ICxPX0nxP1jEtnCbfpCY=;
        b=CEM2v6xRkN++u7/U2CGi3PCNDrE/6WHRCwNHeivAZufFbpPl0QgGQWTRnILZLSK4h2
         8n/vVGwuKHRa164hxM7MWpiqxI2qM8Pyqk4+lqmB+IscxJPFfyK5/mGLLslzglNtOXLG
         aCyyG2oRW6MJ67oiyDzF5BQjFkmtwG6BCl/M6htED6DOdcYJ52c0JhENhagKUOkNWnkv
         GMRMPup1XQVvww3B5/mAFVuifRUzK5ZjOlAhFC3bsU+0K2temcHuNDV46RBiIrQERXzS
         TR0vbixhCQoghY6YQDLLJQpsRsjy/qeexdn8/PvY63qOdkso0Gd4xVVZZqwhN7w89iP8
         fWdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ynnTanHN3KcWCGL2gdlAUn8ICxPX0nxP1jEtnCbfpCY=;
        b=sTbJVBfsl2ESaQ6AWaBaoUO5R8YTYJ/kpKxJ1YYSqZ7e/6Wn7Ga3nLHMOWXf6os/CC
         qnXUfP4f9orlbq6abGSb46ReKeenumWuOorjMDAf79twzc17312+A/loartIO1JghzXZ
         525QA4ISLoJYmW6KNMIiHQlkZsKjRxAivxDJR+L9l31EXVPGIiSW9d+Pw2vWN9tKFrgb
         x9DzGS+rNLAju8uSa5PO+OS5EeryEa81D8yDT7kjiP1cHABkL+LMJ9q3PKAdAq8nXWAo
         qch6d5QQexcAm2rCYFYaeVp7TInTvBC3HCz5WpWh95F/IamEr2PJ+uvDHl5Ztui75Vn9
         feCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ynnTanHN3KcWCGL2gdlAUn8ICxPX0nxP1jEtnCbfpCY=;
        b=q0yP0q4OmUGV2MyYtm2kSqZ/hbmZPnZGx5NYQXTIZxIE6s7YIAKpxD8Kbt54aYSxjE
         s7lU+iK13Gph6gDRaJ1DypjZIcsrWB9zk5LzEQOC3/3QXWkbN0v7B/G8z6XDP4ULBYVZ
         DKvo6MzwGeJnkArLCBzCEqXLAiN+gJNY1z359xXKDjuGpCa7vIFuyDXNfwUzSJNwUk4Z
         NZ10zawBgALeBNqytMT9bCcDfUq3mjxu8tF8zl7dtdOyLoIIiBR2rlZVikY+Nnsis1ON
         STIlEnYxWP8l1rZ7PhvmPDZ5JgD1+mKGrBciGM6sMlDjQdGswXVlC1c4qcKtmdRFdzmM
         rf0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QjIsnwQgz5+nJ2HrbhilB4Rah4MdxgUqqhndyiiJwsCZsw2mg
	z1Tj3ou1O8mweKF1sYMhH/c=
X-Google-Smtp-Source: ABdhPJzUSSv+oSaW65y4psw1JPBi6/HBkLZxCZOiiSMDykWMo/Jt+jGfQVhmqCiyhYkDLGtzXUQE3A==
X-Received: by 2002:a17:90a:d790:: with SMTP id z16mr3375518pju.88.1607005894749;
        Thu, 03 Dec 2020 06:31:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a47:: with SMTP id x7ls2752653plv.1.gmail; Thu, 03
 Dec 2020 06:31:34 -0800 (PST)
X-Received: by 2002:a17:902:8a8e:b029:da:3d4f:abe1 with SMTP id p14-20020a1709028a8eb02900da3d4fabe1mr3323656plo.16.1607005894013;
        Thu, 03 Dec 2020 06:31:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607005894; cv=none;
        d=google.com; s=arc-20160816;
        b=lO1SGo9aKYqvQZN0uvFuFMr2JucYVwqV1G/Qiu5ILpkIL9mN6sGr20hdxs8xnS/Cwr
         C2/A+aNDlembTQMwitnZShobCP6AhH53DzX5LunRoBA+jNNLpWRUZNnNnoLKLKhIMlsw
         IHdVjKs1Z/gyVfLmf9oZdiVFsNpjvZC8oq8Cl02gWdRw/rDCrNeKWIaRm6TR0a8N8mJm
         TKshOff6drl5Zxt3FcZsQXllqk0ksSeR2/ZdDWEdkO2aX36rG/xR89uutHT4iRb4oKMx
         rnq1+cZFZJFS5NrPQRS94rI0oMkMYZiYx5TN0MHUUVafrQNAsp3dC44B+ckOoBPqKYXQ
         o+Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=0iaw3GMHPyhjaUEweaAtuxH5nKRJA/iKm9oJBxCD9rI=;
        b=rMM3vNE5DP9YGIyeGzO4Axz/iFdrycXIJYnIKuxBixIcx1hadVaLa5SjPS3q4o74fC
         gOMEVzPaCdIAEKPUTWbwbznkubPz9q7m96Ph6hD7b177ZAAdtTTiZIorSN/mRYAbsaOk
         xxhbDVhbqH9EMtU98hhuwCtWk9SHPXg10Jqkiqmf+MdYuATvO5ewwki/BCn5fHHHWY/A
         xsPj5kuJd94L8StJggIVyzv/HyFiNr+qeBL+EgPnB8jAiI3ySpt2of0aRFD+0LNzba/5
         Zohgz0ZIUIwsDkiAhoUFyb1qDQa36O0J95vPm+Ek+rooilJ5DNi3OhhzdRYTA5DLBzjF
         N5IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id n194si149074pfd.1.2020.12.03.06.31.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 06:31:34 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: p7Zu9GGFYXoLOnRqf72Sho49p8vWQZ5wt+34tuKHb7HM/BeR9kILO4jHPZrX7IgYDQG/1u//zo
 UH9/pYusOxig==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="170631683"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; 
   d="gz'50?scan'50,208,50";a="170631683"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Dec 2020 06:31:33 -0800
IronPort-SDR: 4DWYQo3Sj3ZDnAC17F6vhP8q6T1Eq+1q8EP26FR0BJTwAaMpidC6rhw9cTquvw+eCUJfCrXaem
 xzDaBXAa5ViA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; 
   d="gz'50?scan'50,208,50";a="315700724"
Received: from lkp-server01.sh.intel.com (HELO c4fb854e61c6) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 03 Dec 2020 06:31:31 -0800
Received: from kbuild by c4fb854e61c6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kkpdq-0000IG-DW; Thu, 03 Dec 2020 14:31:30 +0000
Date: Thu, 3 Dec 2020 22:30:44 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, x86@kernel.org,
	Ingo Molnar <mingo@kernel.org>
Subject: [tip:perf/kprobes 24/25] include/linux/freelist.h:52:8: warning:
 converting the result of '<<' to a boolean always evaluates to true
Message-ID: <202012032217.g0RdkfWh-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git perf/kprobes
head:   a70a04b3844f59c29573a8581d5c263225060dd6
commit: 666fab4a3ea143315a9c059fad9f3a0f1365d54b [24/25] Merge branch 'linus' into perf/kprobes
config: mips-randconfig-r021-20201203 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501dd88b62787d3a5ffda7aabcf4650dbe3cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=666fab4a3ea143315a9c059fad9f3a0f1365d54b
        git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
        git fetch --no-tags tip perf/kprobes
        git checkout 666fab4a3ea143315a9c059fad9f3a0f1365d54b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:257:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:251:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:24:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:261:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:251:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:24:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   In file included from include/linux/smp_types.h:5:
   include/linux/llist.h:237:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:24:
   In file included from include/linux/module.h:16:
   In file included from include/linux/kmod.h:9:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
   In file included from include/linux/seqlock.h:19:
   In file included from include/linux/mutex.h:21:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:29:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:29:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:31:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:31:
>> include/linux/freelist.h:52:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   if (!try_cmpxchg_release(&list->head, &head, node)) {
                        ^
   include/linux/atomic-fallback.h:113:9: note: expanded from macro 'try_cmpxchg_release'
           ___r = cmpxchg_release((_ptr), ___o, (_new)); \
                  ^
   include/linux/atomic-fallback.h:36:25: note: expanded from macro 'cmpxchg_release'
   #define cmpxchg_release cmpxchg
                           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:31:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:31:
>> include/linux/freelist.h:52:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   include/linux/atomic-fallback.h:113:9: note: expanded from macro 'try_cmpxchg_release'
           ___r = cmpxchg_release((_ptr), ___o, (_new)); \
                  ^
   include/linux/atomic-fallback.h:36:25: note: expanded from macro 'cmpxchg_release'
   #define cmpxchg_release cmpxchg
                           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:31:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:31:
   include/linux/freelist.h:99:7: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   if (try_cmpxchg_acquire(&list->head, &head, next)) {
                       ^
   include/linux/atomic-fallback.h:102:9: note: expanded from macro 'try_cmpxchg_acquire'
           ___r = cmpxchg_acquire((_ptr), ___o, (_new)); \
                  ^
   include/linux/atomic-fallback.h:35:25: note: expanded from macro 'cmpxchg_acquire'
   #define cmpxchg_acquire cmpxchg
                           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/s1d13xxxfb.c:31:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:31:
   include/linux/freelist.h:99:7: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   include/linux/atomic-fallback.h:102:9: note: expanded from macro 'try_cmpxchg_acquire'
           ___r = cmpxchg_acquire((_ptr), ___o, (_new)); \
                  ^
   include/linux/atomic-fallback.h:35:25: note: expanded from macro 'cmpxchg_acquire'
   #define cmpxchg_acquire cmpxchg
                           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   16 warnings generated.
--
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:257:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:251:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:14:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:261:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:251:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:14:
   In file included from include/linux/module.h:13:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   In file included from include/linux/smp_types.h:5:
   include/linux/llist.h:237:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:14:
   In file included from include/linux/module.h:16:
   In file included from include/linux/kmod.h:9:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:16:
   In file included from include/linux/seqlock.h:19:
   In file included from include/linux/mutex.h:21:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:22:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:22:
   In file included from include/linux/mm.h:33:
   In file included from include/linux/pgtable.h:6:
   arch/mips/include/asm/pgtable.h:208:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:34:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:31:
>> include/linux/freelist.h:52:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   if (!try_cmpxchg_release(&list->head, &head, node)) {
                        ^
   include/linux/atomic-fallback.h:113:9: note: expanded from macro 'try_cmpxchg_release'
           ___r = cmpxchg_release((_ptr), ___o, (_new)); \
                  ^
   include/linux/atomic-fallback.h:36:25: note: expanded from macro 'cmpxchg_release'
   #define cmpxchg_release cmpxchg
                           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:34:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:31:
>> include/linux/freelist.h:52:8: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   include/linux/atomic-fallback.h:113:9: note: expanded from macro 'try_cmpxchg_release'
           ___r = cmpxchg_release((_ptr), ___o, (_new)); \
                  ^
   include/linux/atomic-fallback.h:36:25: note: expanded from macro 'cmpxchg_release'
   #define cmpxchg_release cmpxchg
                           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:34:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:31:
   include/linux/freelist.h:99:7: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
                   if (try_cmpxchg_acquire(&list->head, &head, next)) {
                       ^
   include/linux/atomic-fallback.h:102:9: note: expanded from macro 'try_cmpxchg_acquire'
           ___r = cmpxchg_acquire((_ptr), ___o, (_new)); \
                  ^
   include/linux/atomic-fallback.h:35:25: note: expanded from macro 'cmpxchg_acquire'
   #define cmpxchg_acquire cmpxchg
                           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from drivers/video/fbdev/core/fbmem.c:34:
   In file included from include/linux/fb.h:5:
   In file included from include/linux/kgdb.h:19:
   In file included from include/linux/kprobes.h:31:
   include/linux/freelist.h:99:7: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   include/linux/atomic-fallback.h:102:9: note: expanded from macro 'try_cmpxchg_acquire'
           ___r = cmpxchg_acquire((_ptr), ___o, (_new)); \
                  ^
   include/linux/atomic-fallback.h:35:25: note: expanded from macro 'cmpxchg_acquire'
   #define cmpxchg_acquire cmpxchg
                           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   drivers/video/fbdev/core/fbmem.c:736:36: warning: unused variable 'proc_fb_seq_ops' [-Wunused-const-variable]
   static const struct seq_operations proc_fb_seq_ops = {
                                      ^
   17 warnings generated.

vim +52 include/linux/freelist.h

e563604a5f5a891 Peter Zijlstra 2020-08-29  29  
e563604a5f5a891 Peter Zijlstra 2020-08-29  30  static inline void __freelist_add(struct freelist_node *node, struct freelist_head *list)
e563604a5f5a891 Peter Zijlstra 2020-08-29  31  {
e563604a5f5a891 Peter Zijlstra 2020-08-29  32  	/*
e563604a5f5a891 Peter Zijlstra 2020-08-29  33  	 * Since the refcount is zero, and nobody can increase it once it's
e563604a5f5a891 Peter Zijlstra 2020-08-29  34  	 * zero (except us, and we run only one copy of this method per node at
e563604a5f5a891 Peter Zijlstra 2020-08-29  35  	 * a time, i.e. the single thread case), then we know we can safely
e563604a5f5a891 Peter Zijlstra 2020-08-29  36  	 * change the next pointer of the node; however, once the refcount is
e563604a5f5a891 Peter Zijlstra 2020-08-29  37  	 * back above zero, then other threads could increase it (happens under
e563604a5f5a891 Peter Zijlstra 2020-08-29  38  	 * heavy contention, when the refcount goes to zero in between a load
e563604a5f5a891 Peter Zijlstra 2020-08-29  39  	 * and a refcount increment of a node in try_get, then back up to
e563604a5f5a891 Peter Zijlstra 2020-08-29  40  	 * something non-zero, then the refcount increment is done by the other
e563604a5f5a891 Peter Zijlstra 2020-08-29  41  	 * thread) -- so if the CAS to add the node to the actual list fails,
e563604a5f5a891 Peter Zijlstra 2020-08-29  42  	 * decrese the refcount and leave the add operation to the next thread
e563604a5f5a891 Peter Zijlstra 2020-08-29  43  	 * who puts the refcount back to zero (which could be us, hence the
e563604a5f5a891 Peter Zijlstra 2020-08-29  44  	 * loop).
e563604a5f5a891 Peter Zijlstra 2020-08-29  45  	 */
e563604a5f5a891 Peter Zijlstra 2020-08-29  46  	struct freelist_node *head = READ_ONCE(list->head);
e563604a5f5a891 Peter Zijlstra 2020-08-29  47  
e563604a5f5a891 Peter Zijlstra 2020-08-29  48  	for (;;) {
e563604a5f5a891 Peter Zijlstra 2020-08-29  49  		WRITE_ONCE(node->next, head);
e563604a5f5a891 Peter Zijlstra 2020-08-29  50  		atomic_set_release(&node->refs, 1);
e563604a5f5a891 Peter Zijlstra 2020-08-29  51  
e563604a5f5a891 Peter Zijlstra 2020-08-29 @52  		if (!try_cmpxchg_release(&list->head, &head, node)) {
e563604a5f5a891 Peter Zijlstra 2020-08-29  53  			/*
e563604a5f5a891 Peter Zijlstra 2020-08-29  54  			 * Hmm, the add failed, but we can only try again when
e563604a5f5a891 Peter Zijlstra 2020-08-29  55  			 * the refcount goes back to zero.
e563604a5f5a891 Peter Zijlstra 2020-08-29  56  			 */
e563604a5f5a891 Peter Zijlstra 2020-08-29  57  			if (atomic_fetch_add_release(REFS_ON_FREELIST - 1, &node->refs) == 1)
e563604a5f5a891 Peter Zijlstra 2020-08-29  58  				continue;
e563604a5f5a891 Peter Zijlstra 2020-08-29  59  		}
e563604a5f5a891 Peter Zijlstra 2020-08-29  60  		return;
e563604a5f5a891 Peter Zijlstra 2020-08-29  61  	}
e563604a5f5a891 Peter Zijlstra 2020-08-29  62  }
e563604a5f5a891 Peter Zijlstra 2020-08-29  63  

:::::: The code at line 52 was first introduced by commit
:::::: e563604a5f5a891283b6a8db4001cee833a7c6b8 freelist: Implement lockless freelist

:::::: TO: Peter Zijlstra <peterz@infradead.org>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012032217.g0RdkfWh-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--wac7ysb48OaltWcw--
