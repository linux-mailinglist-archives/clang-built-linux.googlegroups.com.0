Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIGZ3KBAMGQEFQUCGPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D14734309F
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Mar 2021 03:17:05 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id f2sf24396586pjt.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 19:17:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616293024; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAeaaTFasu0fcNQml8tisgiQ/bG5Y69GaNNsj6rPblc3QOXf5gm3vzoNCrtjbfatHp
         ZVZmMuTfliBnlmjVeyvzNCI885LQadetdItn7Gx1tcjCKWj3JgmHK/iMWVB4WGSApLf3
         t+VTgjL1hMqOhOdXe2LUkCpUAIyZSxsP0zQNnRRTuT/ExIJmS3hD7XioOXdbJutuX8hx
         2dxLP4M7NetPNFjPLvf9u+qk9JacrdAoofFnPBrHLIe/sNwkxCkyWRJqlvu0Pd7fFL8r
         TVFOkk5fn6HNb7uvLUbPZ8lX4OhKleh+TA7LfEGV9k5rRnTxJRHfoQLI4GP8QRie0NRn
         9oAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=3XMJAQAUPkS318BYiYcbLO4tcEtqOax6UG7pUtG28xQ=;
        b=OQhemfHnaDdToqkM53bgFK4CLsQ9Fyh7PGtDl/KwsY3YAhGZNQ37qfiBsCCL98Zutb
         9IKsBQe3xA4ZI7ofXsN0lZp5gql31RhWNWdhvdszGfRdAKNcEP+bQ3TuzJYe/4D5pr1h
         SyKK353GAklnRBnBxGO+jqoPbpKynBRZaZ36S2xuW3h2cfp3xhffrfO52Wonst8Y2c1O
         VZ5+cwrmYQNAYTwIeo+Gc7vOiZgxy6tRFc9qknk18muISW/0PRwiSPh+k0IMoy5Jl/sd
         JOnhT0esOzECRV2HPeYMrmwU8c6jlEILW7veGfNbPJH6U4NwOCo9A7Ts8BqQEQDmW3Lw
         OM7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3XMJAQAUPkS318BYiYcbLO4tcEtqOax6UG7pUtG28xQ=;
        b=bh22T/sTa//tl1gAX29n2p3C7gLi87CQSwWeTAM3qOJeznOBHQ0S9Wp7VglfzxfVv5
         Nc+rRlTwMrXzZrmW7zlJCkxCpOjqzYYMHshUD1gXc9Q3IygHyB+U6/1iJcz7uddvnLHi
         IwoEHCH3eR1ySwle13z+YpvAFL6rbb/W7x9t6c3J6iDCqPHG5VX6KDMzW44BKD7pCYIL
         tjGUwGwcKNLfq7Q59kXVaPdRKL+IN+DvmsauHGQnTiGLGF8pCewMXmn6BcLcTK4k7Cwa
         E4OfX+Uae4M6OaWhR4kfFY3xrSzzlSxcmIm2+cBVSw+1q5i8ZEF5Q3QRTIy9uHIhSwUG
         Dz1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3XMJAQAUPkS318BYiYcbLO4tcEtqOax6UG7pUtG28xQ=;
        b=CQuFwI22fh1Th2AUwS/JHBCSe3Xg4X01DG6nCNUg+fq6LpClAJzaoGLVM/Gp5zGuDQ
         2jiYDhxHS6YRFT9dkXWkB7HTfrjIOwlKmIolkKZE/J70KuwFC+cNgOTwLxoAGltDp+sl
         J2D290r0+1x2AfRN29vxGGoXShbulhsUsxQDMPEsICgGT8Ke1x5adRLHaduLkKadvpuY
         eubL0yNKw3d7vmx1A0EtEX3N+7o1fHUc9MWzQnN9sRi3fCJJxEs56rmaiQAZZxwWl+Yb
         5wW1JpkLUDrRZRz13kgIF1os1Hpk4TLo5iW/28h9/sYDnVvyd/AoqQoqwIOE9oeYugy5
         MxKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jI7TrpXK40+luu71zM1MayG9ESYgC1hCWOhxfdc7FK3aLmvIl
	C3HPkp1mXO2KM3mmysosU2I=
X-Google-Smtp-Source: ABdhPJyCNvjCTh1xMCz9cvhuLkavuk7MpLeF5XK0sT7FKe9/W4imvP3kQUEU+wNHhrS+NViXq6/erQ==
X-Received: by 2002:a63:5f0f:: with SMTP id t15mr3695823pgb.225.1616293024096;
        Sat, 20 Mar 2021 19:17:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9106:: with SMTP id k6ls5424432pjo.0.canary-gmail;
 Sat, 20 Mar 2021 19:17:03 -0700 (PDT)
X-Received: by 2002:a17:90b:1198:: with SMTP id gk24mr6108035pjb.73.1616293023430;
        Sat, 20 Mar 2021 19:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616293023; cv=none;
        d=google.com; s=arc-20160816;
        b=Y19MAoTX27ji8io9y8nU68CBfCWIKnTZ4oq+oRtsYfN0bf9IXGyewX4pJ1cxXqlWgn
         kYptjAqvIhMnzjDHQpbGLKya7LhKLZH6bb8cp2rURol3UWVoHMxN5LA9/4U5hNr0jwGS
         hnUVAl9YpsrSb2ck74U9dpDxJWDcvWbUzYAEns+uIZx3qot6mZ8xBQAZwdE0muCeK/UP
         CrHthwSK/BcdAakr8PRzv5pSweYUfT0p2Gwddt9uYDzaRJXUFvEEFzlHkSGxTaV2hob9
         vnL0d2j2xVrdcUFTNPl8JcWZBoGeQp1K9uW9QVe0hPfNFNx4B3qZVoArCO0W3SZAGS5w
         ieHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=JN2vxmb0l8SRQtIE4CFKX4s/7kuVth9FhDXfQ5E3TIg=;
        b=EmBZasrlWqyj+Rmr2SXhiUqhz5zgQrA4cZQFk/zWDYbexfRka3oYZDM9gWE4sNk01+
         fXZZo+9rUJ8jwkjNvBiXh27Xh3SJ6oGxyZEWX84IFGSvwuE7k97jgk2H3POzsbSqe9f+
         x6XiUzi5TZV/NNdW2+yYWOpvkJL05XhzZYE4SUwRmkfTtWmI/wG9EnFBRPmIVAwOkbXz
         yD1eXyVnWktluEfOczzuxCI1+KdC/bLrGZsgwl4MPQLrOoRJivRN8ZEm/HuyF3BNhnAZ
         bI2mfDVioFPRkjEz12Jic/HZRfU0pFwRrajQntWr4dbUus50h4tg9jf9Pxv8/QAFHXBg
         pr2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id z16si661141pju.0.2021.03.20.19.17.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 19:17:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: d+zzi4vX6B9jG06vlVRT3pGZx/oprQEaajuJ6O+6Le4xHRzrQohjL99PCPCUMEUqhavs19Ofgo
 KdKq3V9cI5ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9929"; a="210145875"
X-IronPort-AV: E=Sophos;i="5.81,265,1610438400"; 
   d="gz'50?scan'50,208,50";a="210145875"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2021 19:17:02 -0700
IronPort-SDR: WNDHP95OS0KN6cBiYwDh434CbhxMcm4/ohKgW7yUphaRd8lEBYy+Db6Kt4Uc8as4OH7yjouD6k
 O9/avTZ0b7TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,265,1610438400"; 
   d="gz'50?scan'50,208,50";a="434709420"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 20 Mar 2021 19:17:00 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lNneF-0002sk-O5; Sun, 21 Mar 2021 02:16:59 +0000
Date: Sun, 21 Mar 2021 10:16:24 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Lutomirski <luto@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [luto:x86/kentry 1/10] kernel/sched/core.c:5394:49: error: use of
 undeclared identifier 'irqentry_exit_cond_resched'; did you mean
Message-ID: <202103211022.2GTCWTw0-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git x86/kentry
head:   b0d7a5e5a9b11a6ddb50b90e31877e3cb1f93362
commit: 5dcab84f1c3db061936e3d79f78222f9e89a33e2 [1/10] kentry: Rename irqentry to kentry
config: x86_64-randconfig-a015-20210321 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git/commit/?id=5dcab84f1c3db061936e3d79f78222f9e89a33e2
        git remote add luto https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git
        git fetch --no-tags luto x86/kentry
        git checkout 5dcab84f1c3db061936e3d79f78222f9e89a33e2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   kernel/sched/core.c:2831:6: warning: no previous prototype for function 'sched_set_stop_task' [-Wmissing-prototypes]
   void sched_set_stop_task(int cpu, struct task_struct *stop)
        ^
   kernel/sched/core.c:2831:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sched_set_stop_task(int cpu, struct task_struct *stop)
   ^
   static 
>> kernel/sched/core.c:5394:49: error: use of undeclared identifier 'irqentry_exit_cond_resched'; did you mean 'kentry_exit_cond_resched'?
           static_call_update(irqentry_exit_cond_resched, irqentry_exit_cond_resched);
                                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~
                                                          kentry_exit_cond_resched
   include/linux/static_call.h:116:30: note: expanded from macro 'static_call_update'
           BUILD_BUG_ON(!__same_type(*(func), STATIC_CALL_TRAMP(name)));   \
                                       ^
   include/linux/compiler_types.h:256:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   include/linux/build_bug.h:50:19: note: expanded from macro 'BUILD_BUG_ON'
           BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^
   include/linux/entry-common.h:457:6: note: 'kentry_exit_cond_resched' declared here
   void kentry_exit_cond_resched(void);
        ^
>> kernel/sched/core.c:5394:2: error: use of undeclared identifier '__SCT__irqentry_exit_cond_resched'; did you mean '__SCT__kentry_exit_cond_resched'?
           static_call_update(irqentry_exit_cond_resched, irqentry_exit_cond_resched);
           ^
   include/linux/static_call.h:116:37: note: expanded from macro 'static_call_update'
           BUILD_BUG_ON(!__same_type(*(func), STATIC_CALL_TRAMP(name)));   \
                                              ^
   include/linux/static_call_types.h:18:34: note: expanded from macro 'STATIC_CALL_TRAMP'
   #define STATIC_CALL_TRAMP(name)         __PASTE(STATIC_CALL_TRAMP_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:153:1: note: expanded from here
   __SCT__irqentry_exit_cond_resched
   ^
   include/linux/entry-common.h:459:1: note: '__SCT__kentry_exit_cond_resched' declared here
   DECLARE_STATIC_CALL(kentry_exit_cond_resched, kentry_exit_cond_resched);
   ^
   include/linux/static_call_types.h:39:22: note: expanded from macro 'DECLARE_STATIC_CALL'
           extern typeof(func) STATIC_CALL_TRAMP(name);
                               ^
   include/linux/static_call_types.h:18:34: note: expanded from macro 'STATIC_CALL_TRAMP'
   #define STATIC_CALL_TRAMP(name)         __PASTE(STATIC_CALL_TRAMP_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:124:1: note: expanded from here
   __SCT__kentry_exit_cond_resched
   ^
>> kernel/sched/core.c:5394:2: error: use of undeclared identifier '__SCK__irqentry_exit_cond_resched'; did you mean '__SCK__kentry_exit_cond_resched'?
           static_call_update(irqentry_exit_cond_resched, irqentry_exit_cond_resched);
           ^
   include/linux/static_call.h:117:24: note: expanded from macro 'static_call_update'
           __static_call_update(&STATIC_CALL_KEY(name),                    \
                                 ^
   include/linux/static_call_types.h:12:32: note: expanded from macro 'STATIC_CALL_KEY'
   #define STATIC_CALL_KEY(name)           __PASTE(STATIC_CALL_KEY_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:158:1: note: expanded from here
   __SCK__irqentry_exit_cond_resched
   ^
   include/linux/entry-common.h:459:1: note: '__SCK__kentry_exit_cond_resched' declared here
   DECLARE_STATIC_CALL(kentry_exit_cond_resched, kentry_exit_cond_resched);
   ^
   include/linux/static_call_types.h:38:32: note: expanded from macro 'DECLARE_STATIC_CALL'
           extern struct static_call_key STATIC_CALL_KEY(name);            \
                                         ^
   include/linux/static_call_types.h:12:32: note: expanded from macro 'STATIC_CALL_KEY'
   #define STATIC_CALL_KEY(name)           __PASTE(STATIC_CALL_KEY_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:123:1: note: expanded from here
   __SCK__kentry_exit_cond_resched
   ^
>> kernel/sched/core.c:5394:2: error: use of undeclared identifier '__SCT__irqentry_exit_cond_resched'; did you mean '__SCT__kentry_exit_cond_resched'?
           static_call_update(irqentry_exit_cond_resched, irqentry_exit_cond_resched);
           ^
   include/linux/static_call.h:118:9: note: expanded from macro 'static_call_update'
                                STATIC_CALL_TRAMP_ADDR(name), func);       \
                                ^
   include/linux/static_call.h:108:39: note: expanded from macro 'STATIC_CALL_TRAMP_ADDR'
   #define STATIC_CALL_TRAMP_ADDR(name) &STATIC_CALL_TRAMP(name)
                                         ^
   include/linux/static_call_types.h:18:34: note: expanded from macro 'STATIC_CALL_TRAMP'
   #define STATIC_CALL_TRAMP(name)         __PASTE(STATIC_CALL_TRAMP_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:159:1: note: expanded from here
   __SCT__irqentry_exit_cond_resched
   ^
   include/linux/entry-common.h:459:1: note: '__SCT__kentry_exit_cond_resched' declared here
   DECLARE_STATIC_CALL(kentry_exit_cond_resched, kentry_exit_cond_resched);
   ^
   include/linux/static_call_types.h:39:22: note: expanded from macro 'DECLARE_STATIC_CALL'
           extern typeof(func) STATIC_CALL_TRAMP(name);
                               ^
   include/linux/static_call_types.h:18:34: note: expanded from macro 'STATIC_CALL_TRAMP'
   #define STATIC_CALL_TRAMP(name)         __PASTE(STATIC_CALL_TRAMP_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:124:1: note: expanded from here
   __SCT__kentry_exit_cond_resched
   ^
>> kernel/sched/core.c:5394:49: error: use of undeclared identifier 'irqentry_exit_cond_resched'; did you mean 'kentry_exit_cond_resched'?
           static_call_update(irqentry_exit_cond_resched, irqentry_exit_cond_resched);
                                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~
                                                          kentry_exit_cond_resched
   include/linux/static_call.h:118:39: note: expanded from macro 'static_call_update'
                                STATIC_CALL_TRAMP_ADDR(name), func);       \
                                                              ^
   include/linux/entry-common.h:457:6: note: 'kentry_exit_cond_resched' declared here
   void kentry_exit_cond_resched(void);
        ^
   kernel/sched/core.c:5402:59: error: use of undeclared identifier 'irqentry_exit_cond_resched'; did you mean 'kentry_exit_cond_resched'?
                   static_call_update(irqentry_exit_cond_resched, (typeof(&irqentry_exit_cond_resched)) NULL);
                                                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
                                                                           kentry_exit_cond_resched
   include/linux/static_call.h:116:30: note: expanded from macro 'static_call_update'
           BUILD_BUG_ON(!__same_type(*(func), STATIC_CALL_TRAMP(name)));   \
                                       ^
   include/linux/compiler_types.h:256:63: note: expanded from macro '__same_type'
   #define __same_type(a, b) __builtin_types_compatible_p(typeof(a), typeof(b))
                                                                 ^
   include/linux/build_bug.h:50:19: note: expanded from macro 'BUILD_BUG_ON'
           BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
                            ^
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/compiler_types.h:320:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^
   include/linux/compiler_types.h:308:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^
   include/linux/compiler_types.h:300:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^
   include/linux/entry-common.h:457:6: note: 'kentry_exit_cond_resched' declared here
   void kentry_exit_cond_resched(void);
        ^
   kernel/sched/core.c:5402:3: error: use of undeclared identifier '__SCT__irqentry_exit_cond_resched'; did you mean '__SCT__kentry_exit_cond_resched'?
                   static_call_update(irqentry_exit_cond_resched, (typeof(&irqentry_exit_cond_resched)) NULL);
                   ^
   include/linux/static_call.h:116:37: note: expanded from macro 'static_call_update'
           BUILD_BUG_ON(!__same_type(*(func), STATIC_CALL_TRAMP(name)));   \
                                              ^
   include/linux/static_call_types.h:18:34: note: expanded from macro 'STATIC_CALL_TRAMP'
   #define STATIC_CALL_TRAMP(name)         __PASTE(STATIC_CALL_TRAMP_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:30:1: note: expanded from here
   __SCT__irqentry_exit_cond_resched
   ^
   include/linux/entry-common.h:459:1: note: '__SCT__kentry_exit_cond_resched' declared here
   DECLARE_STATIC_CALL(kentry_exit_cond_resched, kentry_exit_cond_resched);
   ^
   include/linux/static_call_types.h:39:22: note: expanded from macro 'DECLARE_STATIC_CALL'
           extern typeof(func) STATIC_CALL_TRAMP(name);
                               ^
   include/linux/static_call_types.h:18:34: note: expanded from macro 'STATIC_CALL_TRAMP'
   #define STATIC_CALL_TRAMP(name)         __PASTE(STATIC_CALL_TRAMP_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:124:1: note: expanded from here
   __SCT__kentry_exit_cond_resched
   ^
   kernel/sched/core.c:5402:59: error: use of undeclared identifier 'irqentry_exit_cond_resched'; did you mean 'kentry_exit_cond_resched'?
                   static_call_update(irqentry_exit_cond_resched, (typeof(&irqentry_exit_cond_resched)) NULL);
                                                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
                                                                           kentry_exit_cond_resched
   include/linux/static_call.h:118:39: note: expanded from macro 'static_call_update'
                                STATIC_CALL_TRAMP_ADDR(name), func);       \
                                                              ^
   include/linux/entry-common.h:457:6: note: 'kentry_exit_cond_resched' declared here
   void kentry_exit_cond_resched(void);
        ^
   kernel/sched/core.c:5402:3: error: use of undeclared identifier '__SCK__irqentry_exit_cond_resched'; did you mean '__SCK__kentry_exit_cond_resched'?
                   static_call_update(irqentry_exit_cond_resched, (typeof(&irqentry_exit_cond_resched)) NULL);
                   ^
   include/linux/static_call.h:117:24: note: expanded from macro 'static_call_update'
           __static_call_update(&STATIC_CALL_KEY(name),                    \
                                 ^
   include/linux/static_call_types.h:12:32: note: expanded from macro 'STATIC_CALL_KEY'
   #define STATIC_CALL_KEY(name)           __PASTE(STATIC_CALL_KEY_PREFIX, name)
                                           ^
   include/linux/compiler_types.h:60:22: note: expanded from macro '__PASTE'
   #define __PASTE(a,b) ___PASTE(a,b)
                        ^
   include/linux/compiler_types.h:59:23: note: expanded from macro '___PASTE'
   #define ___PASTE(a,b) a##b
                         ^
   <scratch space>:35:1: note: expanded from here
   __SCK__irqentry_exit_cond_resched
   ^
   include/linux/entry-common.h:459:1: note: '__SCK__kentry_exit_cond_resched' declared here


vim +5394 kernel/sched/core.c

e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5383  
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5384  static void sched_dynamic_update(int mode)
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5385) {
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5386  	/*
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5387  	 * Avoid {NONE,VOLUNTARY} -> FULL transitions from ever ending up in
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5388  	 * the ZERO state, which is invalid.
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5389  	 */
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5390  	static_call_update(cond_resched, __cond_resched);
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5391  	static_call_update(might_resched, __cond_resched);
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5392  	static_call_update(preempt_schedule, __preempt_schedule_func);
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5393  	static_call_update(preempt_schedule_notrace, __preempt_schedule_notrace_func);
e59e10f8ef63d4 Peter Zijlstra         2021-01-22 @5394  	static_call_update(irqentry_exit_cond_resched, irqentry_exit_cond_resched);
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5395  
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5396  	switch (mode) {
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5397  	case preempt_dynamic_none:
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5398) 		static_call_update(cond_resched, __cond_resched);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5399) 		static_call_update(might_resched, (typeof(&__cond_resched)) __static_call_return0);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5400) 		static_call_update(preempt_schedule, (typeof(&preempt_schedule)) NULL);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5401) 		static_call_update(preempt_schedule_notrace, (typeof(&preempt_schedule_notrace)) NULL);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5402) 		static_call_update(irqentry_exit_cond_resched, (typeof(&irqentry_exit_cond_resched)) NULL);
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5403  		pr_info("Dynamic Preempt: none\n");
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5404  		break;
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5405  
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5406  	case preempt_dynamic_voluntary:
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5407) 		static_call_update(cond_resched, __cond_resched);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5408) 		static_call_update(might_resched, __cond_resched);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5409) 		static_call_update(preempt_schedule, (typeof(&preempt_schedule)) NULL);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5410) 		static_call_update(preempt_schedule_notrace, (typeof(&preempt_schedule_notrace)) NULL);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5411) 		static_call_update(irqentry_exit_cond_resched, (typeof(&irqentry_exit_cond_resched)) NULL);
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5412  		pr_info("Dynamic Preempt: voluntary\n");
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5413  		break;
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5414  
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5415  	case preempt_dynamic_full:
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5416) 		static_call_update(cond_resched, (typeof(&__cond_resched)) __static_call_return0);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5417) 		static_call_update(might_resched, (typeof(&__cond_resched)) __static_call_return0);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5418) 		static_call_update(preempt_schedule, __preempt_schedule_func);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5419) 		static_call_update(preempt_schedule_notrace, __preempt_schedule_notrace_func);
826bfeb37bb430 Peter Zijlstra (Intel  2021-01-18  5420) 		static_call_update(irqentry_exit_cond_resched, irqentry_exit_cond_resched);
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5421  		pr_info("Dynamic Preempt: full\n");
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5422  		break;
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5423  	}
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5424  
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5425  	preempt_dynamic_mode = mode;
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5426  }
e59e10f8ef63d4 Peter Zijlstra         2021-01-22  5427  

:::::: The code at line 5394 was first introduced by commit
:::::: e59e10f8ef63d42fbb99776a5a112841e798b3b5 sched: Add /debug/sched_preempt

:::::: TO: Peter Zijlstra <peterz@infradead.org>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103211022.2GTCWTw0-lkp%40intel.com.

--6c2NcOVqGQ03X4Wi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICI2lVmAAAy5jb25maWcAlFxLd+O2kt7fX6HT2SSLdPxqTWfmeAGSoISIJBgAlCVvcNS2
3NcTt91XlpPufz9VAB8ACCqZLDoWqvAuVH1VKPCHf/0wI2/Hly+74+Pd7unp++zz/nl/2B33
97OHx6f9/8wyPqu4mtGMqffAXDw+v3375dvHuZ5fzT68P794f/bz4e5yttofnvdPs/Tl+eHx
8xs08Pjy/K8f/pXyKmcLnaZ6TYVkvNKKbtT1u7un3fPn2Z/7wyvwzc4v35+9P5v9+Pnx+N+/
/AL/fnk8HF4Ovzw9/flFfz28/O/+7jg7v5r/Ov+02z1c3V1dPuw/XD781+XHT3cXv158+rQ/
n/+639//enn/4f6nd12vi6Hb6zNnKEzqtCDV4vp7X4g/e97zyzP4r6MV2bgRKINGiiIbmigc
Pr8B6DEllS5YtXJ6HAq1VESx1KMtidRElnrBFZ8kaN6oulFROqugaeqQeCWVaFLFhRxKmfhd
33DhjCtpWJEpVlKtSFJQLblwOlBLQQnMvco5/AMsEqvCPv8wWxi5eZq97o9vX4edZxVTmlZr
TQSsESuZur68APZ+WGXNoBtFpZo9vs6eX47YQle7ITXTS+iSCsPiLDdPSdGt97t3sWJNGnfx
zMy0JIVy+JdkTfWKiooWenHL6oHdpSRAuYiTituSxCmb26kafIpwFSfcSuUImj/afiXdobor
GTLggE/RN7ena/PT5KtTZJxIZJczmpOmUEZWnL3pipdcqoqU9Prdj88vz3s43327civXrE6j
fdZcso0uf29oQ6MMN0SlSz1NTwWXUpe05GKriVIkXcZEVNKCJe5OkAZ0ZYTTbCkR0KfhgLGD
rBbd+YGjOHt9+/T6/fW4/zKcnwWtqGCpOam14IlzpF2SXPKbOIXmOU0Vw67zXJf2xAZ8Na0y
Vhl1EG+kZAsBOgqOmiOgIgOS1PJGCyqhBV+tZLwkrPLLJCtjTHrJqMCF2U70TpSArYTFgtMN
CizOhYMQazNKXfKM+j3lXKQ0axUYc3W/rImQtJ17v4luyxlNmkUufSHZP9/PXh6CbRvsCU9X
kjfQpxWzjDs9GhlwWYzgf49VXpOCZURRXRCpdLpNi4gAGHW9HuQpIJv26JpWSp4k6kRwkqXE
VbMxthJ2jGS/NVG+kkvd1DjkQJfZ45jWjRmukMZ4dMbHnAD1+AXwQOwQgHVcaV5RkHKnz4rr
5S1akNLIZb91UFjDYHjG4orB1mNZQSOH1BLzxl1I+B+iFq0ESVdWdhwD5tOsoE017A2TLZYo
tO16RKVrtCSOehOUlrWCdqu4+uoY1rxoKkXENjKolmeYalcp5VBnVOwpgI4124JyNvDF7CLs
8C9q9/rH7Ahjn+1gHq/H3fF1tru7e3l7Pj4+fx72dc2EMiJBUtOhdy4jRBQzdwnxcBrhH1ii
S5HIDJVnSkGfA6uKMqE8IhKT8dWULLpD/2C6vRjBXJjkRadIzXKJtJnJiMTD4mqgjZfbK4Qf
mm5A2p29kh6HaSgowomaqu2pjZBGRU1GY+Uo9nQ8JljHohiOpkOpKGhhSRdpUjBXgSAtJxUg
2uv51bhQF5Tk1xc+QarxqUJKwnkUTZr+eZrgTkxORBuEW1qL3m6yv0k+oExYdeGsIFvZP8Yl
RgLdYotrHZ1ccGw0B2POcnV9ceaWo/CUZOPQzy8G0WCVAjeC5DRo4/zS08EN+AAW1adL2Aaj
1DtBlHf/3t+/Pe0Ps4f97vh22L+a4nYFIlTPmsmmrsFTkLpqSqITAv5U6p1mw3VDKgVEZXpv
qpLUWhWJzotGLkdeDMzp/OJj0ELfT0hNF4I3tbOYNVlQq8aoAxgAzaWLsJZdDleKcsKEdmgx
YVJ6onLbaM2yuCpp6SKbAOItPYeTe0tFnKUG2DmhqdrqGV2zqCFq6dAEqsLYwKnIT7Wc1Pl0
swYruY0icgeIBbo3VmlJ01XNYTPREgK0o25VK6XoxZm2o2MC1JNL6BXUI2BDf6cGpUALEjN/
SbHCdTL4S7j4FX+TEhq2MMxxSkQW+IlQ0LmHQ3/ZyM0aKJvbEWvcpzKkq3gjvksICg9Ndqt3
hv1KNQejXbJbirDEbCwXJRzNqFwE3BL+cHRTprmol6SCQywcnY6oUzlYyeoZlp3PQx4wVCk1
GMIq2xAfprJewRjBPOIgncnV+fAjNHZBTyX4iwyOhvDEaEEV+j26RciRuVspGiHoHOabFZ5M
Whg7hmyeKnattlHNVcncQIS3S7TIYe9EbEum14SAx+KD1LwBHBr8BB3kLF3NXX7JFhUpckeK
zKTcAoP33QK5BP3pubosLrqM60YEaKyrkq0ZDL5da0dhQ9MJEYK56nqFLNtSjku0t1FDaQIA
C6aOsu5Z+Z7DLB0qBPSJPSkb7/9gtLpYBLL9xjytiUWgfQrwnaJrgeJoKucxM2K6QHM3TB/G
UaVGJJzhp6WrcyR1HHWjcruyQazKhGZZ1HTZ8waj0r1XOMh3en7m6RyDAtrobr0/PLwcvuye
7/Yz+uf+GXAuAXyQItIFP2WArxON25EaIqyKXpfGpY/i6n/YY+8slLa7zuJ73WKQkcDeiVXc
hBQkmSA0SUxZFNyL92B92D4BeKMVk3hryybPAXsZYNLHMuLKSNFSgw9NMKLMcpZ2LoPj3PGc
FfETZrSrMarSBbF+gLZjnl8lbuxhYwL73m/XLNoQMqrwjKY8c4+qjUVrY2DU9bv908P86udv
H+c/z6/c6OwKTHWH4hzFosB7thB8RCvLJjiRJQJHUSH2tuGI64uPpxjIBmPOUYZONLqGJtrx
2KC583kY+LBKfVzYqxptdsTD+33QhBQsERjlyRCoBLNF5YDoHxvaxGgEYBJeJNDAZPccICnQ
sa4XIDXOwho1ADDSQj7raoPz4wRY0FfrSEafQFMC41DLxr3L8PiMeEfZ7HhYQkVlo3RgSyVL
inDIspEYkJwiG31slo4UetmAcS+SgeWWwzoAsr504vUm3Goqh4KupatWfQ+jMeFWZ7tyMPyU
iGKbYoSROua4Xli3qgAdBCat919bT0YS3BsUcdwAmtoQplGs9eHlbv/6+nKYHb9/tfEDx/0K
5uScF3fYOJWcEtUIatG2qyiQuLkg9UQsDMllbSKgUfqCF1nOZCzwLagCRGEvmbz26EbB9qFI
tLhlsmc8EIUuahn3ZJCFlEM70z4N4zIHn515waG2zFqduEo2DgYvQTpywPv9GY3ZzC0IOCAX
AMaLxruJgsUjGKvy1HNbdqLvnkXWrDIR30ivuALLNSqIIgHxAXPQCs+wRrSK1FuBPQyGaYPO
dYNxT5DKQrVwcBjQenl6oCcibSFrF1noG/mNsGLJ0eibYUU7IqmoTpDL1cd4eS3jsl0ihIrf
hYGJ4mVkAr1GdqFjJ6miAovXqlsbXpm7LMX5NE3J1G8P4NwmXS4CU4vh87VfAkaJlU1pVGtO
SlZsnfgYMhgJA/eqlI4xZqD/jE7QnnOG/OtyM9IWA6jAECn6frSgQWwA+gfVaI/sVEzCcMCJ
PUlfbhc8JrMdPQUYRxoR6/x2SfiGxSova2oF1FkEU0bBJUTLKpSzA1npaQqw6KBQYzF7Y9Kk
FqQCo5bQBUKNOBHvvz6cj4gtIHT2rKU4JVYLydJbb1tYphNKwdxza1TrgZzySKGggqNPhF59
IviKVjZigNd3ofIuff1qjZQDwr+8PD8eXw42jN9jywkOT+5a76rdkQDP2rHXBf5DJywG+7ia
WA0r+15jRtNNWpUPxlJPtJYxAcKvFwlCGRkc0JrYdA2pWOotHgY+p/w7e8UIkAHEhEQAT0/u
xCWgm9PY3UTj3aZzpllR0AXIQmu68Mawoddn3+73u/sz579geTDwBniWS3Q0RWPiMhPrYS9W
MbR8g1I7HBsl4tFJM2g4FhmfNv0SoPVEf03pxtdo7p1V+Akb0MQdtuWtPj87myJdfDiLaY5b
fXl25nZhW4nzXl+6K7miGxo7oaYcYXcMjVti3YgF+n9bt2dLkixmW1NB5FJnjYv86uVWMlQE
IJIAQM6+nYd7jXEJ8B5R6GL2uqsPDsiigvoXZ27i0pKrumgWrTUcAh6gO9DSly5DfNWtwz/F
1s3MOlfrTDqJMSjU6TbUGh7WDFk2vCq20WGEnJN3pmmZGUcKphg3cnD4WL7VRaZORBONY1WA
z1fjVYfrg5+C+yNBIVmmAxVkaFaHdOqgXdw4j6wLwLY1YmjlXvbUL3/tDzPQ17vP+y/756MZ
CUlrNnv5ipl7jvPRemOO79G6Z+39xJggV6w2MSxHUEstC0rrcYnvykAphvs73gGDluD2regU
TK7LgHkEuwdSWjgu6c3voDdvQGvSPGcpo0Okb8orxEVyaKNfnayZIydBZ/JVE7qYJVssVZsO
hFXqLA0aaUNAdmxob6CpUWDEcJqZLtxt8Ip1GAy3zdep0COl4PPkdRa7Q7VzrFk4jtGWmVJB
15qvqRAso70/P9UqqL420yZom6SjhhOiwNjFT7tlaJSKWjRDBf9l266uZQx6HNHbcPn15UeP
bw3z4qPB5WS6Y5KN2DOQ6il+A/sFBTGV4aoMaD01EjJJZlkxSQzKfY0fb44sFoIu/DwsO7cl
IDcShs+NJrNTR43U1AtBMjpaBI86tRqjy0U7tBTFj09KK/ytCGj1qcky3kLm4JAk8aiErRsN
rNvuGgnOJahnteRZ0GWy8OME7SHJGsxNw4y6GwJuWWjHXLNiD0RNHbXjl7d3TX4XSJhc1Fo5
F2z4y0p+WAZ7mbN1uIiR7LZ2zeHv3L9aKBleMYLwTGNNUNCdF9dlE83yw/4/b/vnu++z17vd
U+d5OK4hHpCp5JxI7b5hdv+0d3LUMT3HOypdiV7wtS7AHLuL4hFLWnkQySMqGr8k85i6iEx0
3y2pi964gGKYRg8x/ta0m/knb69dwexHOEGz/fHu/U/ODQ4cKusIOdYZysrS/nDj8/gHBifO
z5b+VRLIQZVcnMEUf2/YxO0LkwR0bPyoIS0rCbq0047EVuZJdPcnpmin//i8O3yf0S9vT7sA
8JjYyaSTurm8mIawbtDZFoW/jQ/ezK8s4gaxUe5ujkdlBps/Hr78tTvsZ9nh8U/vno1m7nUt
4EWe5+6IcyZKo1IALMYdrqxkzDNJUGCvw+PMWuKzhZKkS8TJAKSNR5a3AUonWH6j07y9WPdG
5JR3cDsWiON8UdB+/M6diSVI90K9LcNwn4lrKN/HbsmY+sMryf37/BHRhlcMiDsxLowWJ02e
46VH2+2JDl2esOd17VkSs+GwpLMf6bfj/vn18dPTfhAAhreeD7u7/U8z+fb168vh6MgC7MOa
uPdLWEKlCxmxRGD4toThEQ+v2W1cnRAVt/KNIHUdXLMiHSeJN+FmXSoleEyhIWNKatnglYlh
9kfYvvTwGhYpuxhDVochA2WBEMIoLnNX0h+r/89yemvXXvaEY2ktvJTgBSK6LchWjvZQ7T8f
drOHrqt7c3TdmNkEQ0ceHXrP3K/WzvUThtwbUCi3QYo+Iq/15sP5hVckl+RcVywsu/gwD0vB
ywf34Tp44LM73P378bi/Q6/15/v9VxgvmpmR42gDFkEagwlw+GUdDLMB0O5wtIF4UJBBiMTe
ykXNwW9NWYOdTiYC1PaZlblMwZBaPvHmyKzv4A82lVHVmIiWIgIO4C1eaWAiKHgMOpE3JHxB
xGCueIscuXpdhReMthTv1WIEXsfL22YANeo8lliVN5W9sgc3DL2B6jeahk85gM1LURqeqpgW
l+DFBkQ0y3jC2aLhTeROG9x6C27si4uIUwCWUGEspU2xGzNI2sU8J4htoLYcLboduX2rZlMW
9M2SKeqnHPe3ybLLYbdvEmyNsElZYvCnfVoW7gFgWjhrGPvAW95WUhC2hHxe4o6/PfhAbrLi
8kYnMB2bKxnQSrYB6RzI0gwnYMI4AF7ZNqICqw0L7+VZhRlBEWlA7wTjLybH015imxqxRiL9
d0k/ol0iP5A57Npwhk9TIylcZdlo8EuXtI1tmAhVlIxp3jGWVrrsabD51O1FXTCYttRew0zQ
Mt5MJC+0UJDVqbZvj7p3jBFeXmQOf2xNJE2R4QSpTQBxInVhlRHjoDRbir3anIqrOV3i7hYg
isF4RukPrlp2KJNXKF0ArlA8fL07wQAawH2AhuUY+I0t1A1D3lY0DbgL5Rd1XfAG6BQZgbhp
LeCbftTiGY3xu5bwzHM8U00WLS7D4k6TV3jThEYN02YwtPxP+SJd2bMCdEzjCyOcRnQNEWPP
gC5EtCvJc6PF1XY0j6y7GqMpJsA5x5hnDUZW0fBi6izqgcjy0Q1TaBLNs8PIRmDXSAMWflOF
LL2ZMT2YmywvtWqYgpdqFjCYMUTtn19ryF6LtOuknk014rJEmmrJhh2zX8NhWqlvXxqOgQEs
MLOXCX2S3sDReu++xUKdJdmivQ+4HPnALZ0EMKR3ohNm7/Jj643CFu5WrGwACgrgiOpeIIsb
J4XuBCmsbqUuWj1GGsaLmcGXF909nA8degAJKCeGEtHcummtYdU2bRhAciq29Sizb4C705TR
dwKssR497Rsd7qn3AL4ubhN+QYOYhNf4AUN3YAiXWF8j5eufP+1e9/ezP2wi8NfDy8Pjk/d6
EJnazYs0bKg2TZa2yeKD6x3QouGjU2PwVgs/M4EeDKui+bZ/4y91TYFdKDFn3z2eJlddYpb0
8OmJVv+502kl0Lw81ZN56C1XU53i6PDtqRakSPsvLIRrF3CyeO5bS8Y9F3Qi+a/lQbm5AYgr
JZrK/jGRZqWRsGhVOJclzBNOVqZXmPQfARWdGTHvI/tbuuGOu5i4lJHV+bA/TWWPj8nhMys7
UkHDxaHi6GGI0nmnbzbcVrZ2yAVp4kbC2Z4gGtUwQevVivm0QTYkGA4s05SwsriJVx2V9wcP
Y4I2KlLXuGcky3CTtdm3mIbtXjvohOb4P/QS/Af8Dq+9wG/DTwPHcBltA2jf9ndvxx0Ge/Ar
NjOTnHR0ghMJq/JSofYZ2Z8YqdVSzsm0TDIVzFW8bTGIq/s5F443PGXthaQmBmhGX+6/vBy+
z8ohhj++lT+VEjTkE5WkakiMEmMG/ApWiMZIaxsUHKUvjThC5xbf6C78o+XnLcTeP9ikBZOw
YHPl+lS5tm6CWsGFDm2B3cIYrAjKDKYVFE+mh60j37nAHBkjw1qFjyVsVixHAOROcCVjqaXd
CyKzjvYTCpm4vjr7de4qrjH0nnKIbOBCLQH53PiR3BTcr8r4axM5LvFnp7iLAyCPdHtbc+7I
0m3i+gS3lzl3P4d0K8vO5Pc9dGUGgJzIvjVx1y5y5jYAa0iFoH1Qx2wjPtaMpYRn3VubscvW
65PavLnwHRj7csyM0dtWEOOpzxR57RmXhRTuaZ8+0F0LFe2xT7U//vVy+ANghnPsnWzsdEWj
n0qqmANA8RdoJy8vxpRljMRtsiomkvBzURqVHKXCuAGCxfMwNhnIJn42RMUMMLNTHu76avt6
E78/Er8MrPHtID5eBeuD+ayxWAEw1ZWzmfa3zpZpHXSGxSaTbaozZBBExOk4b1azU8SFQNkq
m00ssdhwaNVUFrwOwZAtKjG+YhMhbltxreL3oUjNeXOKNnQ7ceWKfCT+EsDQAH9NE1mN2nZi
t4fpuoUokEGRSuuu2G++yeppATYcgtz8DQdSYV9Ag/C42GLv8Oeil7bYE7uOJ20S1z/qlHxH
v3539/bp8e6d33qZfYjneMLOzn0xXc9bWUefLP4q3zDZl9uYlKyzCXSPs5+f2tr5yb2dRzbX
H0PJ6vk0NZBZlySZGs0ayvRcxNbekKsMIJbGBxlqW9NRbStpJ4aKmqYu2o/cTZwEw2hWf5r+
f5w9y3bjuI6/ktWcexd12pLfi7ugJdpmWa+ItC1n45Oq5HbnTKpSJ0nPnf77AUhJJinQ7jOL
6o4B8CE+QAAEQMk3s3N2vNWeJtvmjA5UMdNcZdcrAoU8CfIbzKOEttqcBdwsOhoQZ7RtBY63
vArlywFiYwkmsavqChLYS5oE+oluoUmA4daBZBkqlN6NKdq5PIsDLaxqkZLilDH4I2uQzF5J
LYis7JCx4rwYxdE9iU55UnD6GMuyhI5JYopl9Nw18ZSuilW0H3y1LUPNz0Cdrlz/xMv8cM7x
m6Z0Ej8cj0E2lMsnJ1SsdFrgbZQsMSfjv35YkwHTx1AGPpCVlRUvDvIoVEKzqwMhV9j91Gk1
g+dAXgUOP/zCQtJNbmVYAjI9BUEySJGNMfUe8vEQ1X2twg0UiaS4Z20nvKnXOrmVowiiBlU3
RmfHe9LKEYObyg2TNxlcsL2qDiR2sGiSjEkpKA6tD2JMVSTRidY2P67uHWmnzaYQqGKNlh+T
MtQVje8+nz8+PT9A3eud2nB6aeu9XJdw9pagLpTeSLdi+qB6D2GL5NbCYHnN0tB4BbbaKhAC
uYaBq0Mcb41pIIjBOoqaZ8Y14dLweoNbORr4pfSIn8/PTx93n293357hO9EU8YRmiDs4pTTB
xdjQQVAnQjVnqzNR6WBzO9RkvROk/yKO/dKSyc1vrT2L0me4y+pKzGzCRCAzEa+2sFRoblis
AwlCJRyBARd4LcyuaRx1SnfsDqPeUfO+fC1sGOiek+lkzURWGobYQrjaKlCuO9bl3yNdso7o
KUyf/+flO+ENaIiFe4rh79ChVyXWrY3/o03O6WUHEdpo4jlsWlgmq9ypRkOsqAqnLo3T3sYS
+kPPkkOG9tS/RUynOnIIQVunRQjt50oyXMRoV1Z/VK4FeifDiDULhVYu3LxE/iZEi5I+LhAH
XDqMYzRv1k227hXuaOA1HixsjlfXgcnVNIGp1Dh0mQiPN1L8rYkxhLyO8T/0adw6jaFbr8/h
EPb97efn+9srJqx76rdJu3k+Xn7/eUTPOiRM3uCPiy9lz/KvkRkj7ds3qPflFdHPwWquUBlu
/Pj0jEGzGn3pNKb8HNR1m7b3AadHoB8d/vPp19vLz0/HsAQLgxep9iAiT0enYF/Vx39ePr//
QY+3uwWOrZikOJ3x53ptFq9vMt9hvG8mYXXqLsw8ERT7Q0Jjtm2/5Mv3x/enu2/vL0+/Pzt9
P2E4Oq2ysEp45/7FUfLle8uf78qhEW9vLnW3PKtIKxbIiCqv7DioDgLyi5OYFU7kImWZ49ZS
1ab63vlbJ6rsPrX3K319g/X0fjk91seBM24P0obUFBNLWncijarZxUP7kiLvUkr7e5mvtGeF
JOh9yInxuBTorgy96ghrt+9G235uLzOZrF4H93amk7T0paONDWh5eLud1uIQ4FItAT/UARuD
IUCrclsNKEvow0OrwkjG9HVZS6w9P68Y0rWj0V6VgcThiD7sM8yksxKZUMK+e675xjGLm99n
YSc7bWEShPTVflD2DAexGADzXJTDWu3E411pWOkpirZDTJJYGX/QE1V7GOn1uXaXGiLXHA4b
48hKLpHAfu3DZJ60uGXJWflW+Hc+LeiKGNBRIC9sJ4Dsjd2ixfRKkDh9/7geuykkecetHGYI
P/UaGvqqV4/vny/41Xe/Ht8/POaNxVg9R1dF0pCP+C5uWtNY12mAgnnRQRlXUMaPV1/s6Rv0
L5HbulOFdsjWzjSkZXZIj+5XGFFnX8gMP1h/8R7+hCMbE92aPHPq/fHnh4nFucse/3KkbWyp
LF0VGmHYqsA7RMzfoXX+wXjXLP+tLvPf1q+PH3Da/fHyyzo17WFdC3fEvvKUJ95uRjgsKP91
gLY8mli0dbgsBj1FdFHi9WFoWjGiA86PE15rebeMHT6z8Feq2fAy58p25UaMcUkrdqDCpmp7
jq5iY795D0+lSiXIFte7MLvRyjiQUaj9ThFdR1PRYz1yMpw+sfD7E7qy6ktghh44nK80xPJU
DnlDolNrMEpc6tB7JTJvD7PcA5S5XzFbSR4QKq/sBCNlP/76hWaXFqgNFJrq8TsmUvC2S4n6
fNMZuoY7c3sKpB3RvczT+awhui+SLYKDg87lKr6GT3aL0eRqDTJZxed1xgKmRyQpuPp8fg10
PZtMRptm8LkJrR7qb9KZ1w417H9KANXFM6bM7F60mRuzYRKJP7/++wtK8I8vP5+f7qCq9jyj
NAPdUJ5Mp1GgFzIbrLBqOwDBPx+G+UlUqTA5ChqqtKOFiwWxR7Y5E6N40WqHLx///aX8+SXB
rxrYWZxup2WyGZOL+vYIGGsmiO7uAkaIFx2ld3zBETNgBAZscoSezsdaKEoYtEkvCf/JmjzW
QlDEDZ4zm+GuZ8dz20dzwj3+5zc4Wh9Bh3vVH3r3b7PDL2qrP566/pRjuNXVpWsGyTM0+Pi8
cXzGO/Cmci2OPYJKVejTMFgvrH+4IX/5+E5+Av5HivBm10QwCeWVza6HQshdWSRb18nAuLcl
Cay132F1WXYCvzwQESMAUFTFtwzkcPclkwDJWeaB9Hoe/cq/q+lc3YjO9oZ13AL6k7IqTeu7
/zL/j0Ehz+9+GK+ZANcwBagGb1dlj8p+5clYADgfM+23L7fo0+SxDk2w4qv2auLyTEOHQ6e3
fCgsIWqT7fmKMiwigU4x6ekVJWWK85PImDgiNzlMCHCunN3fQUEPF4yyaF+Kgaq/LqmygNJW
WdcU4hGxZrGYL2fD/gDrnQyhRdn2tIPbTj3ao0drzjmXss2Q1KVT/Xz7/vZqp6IuqjZLj2G6
h5xThjoH3m9wS/e7GAfSaTxtzmlFZhxJ93l+8h+TEqscAwgDd7WsUAHZQIl1HsoNLxK5HMdy
MrKEZlB0s1JiZkfM2CYS1018C3p2Rs0Rq1K5XIxiZl9SCJnFy9Fo7EPikWV94oUs8SknwEyn
BGK1jeZzAq5bXI4ckWWbJ7PxlJauUxnNFjRKwlkUtIJ3Bs2Q416DObSbs0zX3F5sh4oVzoOM
cbuXLvq4hsBsQ+usPseRm1vOcGleodBnW3K7edKYM1MxfdPe4oNZCFp8zprZYj51bnsMZjlO
mlm4ICgy58VyW3FpuQy2OM6j0WhiS33ed1iDsJpHo8H6bKPf//fx4078/Ph8//OHTtv+8cfj
OwhDn6hRYz13r3giPMEme/mFf9rjo1ARIXn7/6Nea6m0qy8TcoyGLGoroGOLTvFYOTckRl7O
OS2W9Fj4d4NANTTFwZhqD3lA8gHJ7XhP5j5Itq5Ig45RLEswPDckRSFJrWQTpNgy0HjZmdFv
Xjmc0blQFGmfLkCiy0Ir9g6EFESi17q9zKgClpF3L72sQebVRM75XTReTu7+sX55fz7Cv39S
O24tao62RPJrOyQaQ07kF19txhpYlsBMl5inURtoKXMZKHImjbXFa7U7hff4zarUbzLS7BAP
GRKDn7HZs5r20eH3Ok3EFV9exQPcFD4NfZ7o1V0FUYcmhEFVJGDoXsFO2Ke0lWMTsn6wRPoX
S5fvSkweFvqQ3dMdBPj5oGdGvwMaKH3gikqObpwbtFu35fVUZHlJN4bW4ZDLFoh7HqpTVT/f
X779iU81S3NvxqxQM0du7i41/2YRyy0Bw+uUu1IPcKoCdxknrqnkAAcib+ihPFXbksz5ZdXH
UlYp7uZhMyCd3nQtSDHIrmDD3S3EVTSOQu7XXaGMJag4J07qKpmBfkba1J2iirvJYVjCQW6g
J9EcLEre+oicPdjhJw7KzR2Yp4sois7eArTkHygbsFZiVv1mQ94d2Q0CuyiUcNxJ2H0gU7Bd
rk7oD8DlVDoyKVNZyBsyoy2piAikrQRMaPBvrALz8qm7nlcTWjhbJTnyLnqvroqG/p4ktDCU
2JTFOFgZvaFMflAUQUMFQ051lw9OvDSMq4Ky/FplsECROGWA61J+LU6hg9g746q2+wKvcgt8
eJh257JJDrdJVpsA27Fo6gBNJu73/i0+8RVbnknXdNSCzopepj2antoeTa+xC/pAGQDsnoEs
5/TL50BEER315uzqpDnj83m0sFGQ8UZWhanLtU2oRybIjPpWqdbT7dJQFgceaIJpDDxaZ9WH
Kfu4o1GueHyz7/wBLWwkuzIJ2kjUds+OdgpOCyUW8bRpaBRqAc5cRWSacQSPfLpRQLPY0E6P
AA/sHNGEivgnwgUzCbZOM7Wv+Y3JAqX5wN2g/PyQh7xo5W5Dty93J+pCzW4IWmFF6V6OZM3k
HHAUBtx0oNLaWHm8il4fb/RHJLW7CHZysZhGUJYO+9jJh8ViMlDV6JrLdjFf2Bsr5pPxjdNP
l5Q8pxd0fqrd1zLgdzQKTMias6y40VzBVNvYhWUYEC2+y8V4EVP7xK6TKzRAOtKYjAPL6dCQ
cSBudXVZlDm9+wu37wJEKfSuL0AAxYyeZ186GNawGC9HLsuMd7dnuDjASeXwbfOqPa2CWAXL
nfuGgtqWN84IE2YKX7IRhWdFZDr5JzmwJ46OU2vyhRa7cl5IzKnjGFjKm+fWfVZu3Lur+4yN
m4Y+2O+zoMgFdTa8OIfQ96Rjid2RPdpXckequU/QdhaK8Krzm0uiTp1Pq2ejyY01X3NUKpwj
lAW040U0XgaCshClysALtItotrzVCVgfTJL7pMYgnZpESZbDqe7cP0k8fnxthijJ7RR6NqLM
QEuEf+4bwgHnf4Cjx2FyS5eRImMuV0mW8WhMXVc7pZw9Az+XgXdJABUtb0y0zKWzNnglktA7
J0i7jKKA2oDIyS1eKssEvZcaWu2XSh8XzuepHBb+35i6feFykqo65ZwFsnXC8uC0LSrBwKMi
cFqI/Y1OnIqyAv3JkTyPybnJNt7uHZZVfLtXDis1kBul3BKY1B+ECAzElIFQT5WRLwhYdR7c
cwB+nuutCLxqgtgDJqASZF4Hq9qjePDC8g3kfJyGFlxPMCZlWatyc9liV95evyDbzEQgzLal
YY0Is9eWJstgPkI06zQN2LpFFUgvrkP7Vv5bQBcDy/YUCjlCSZZ4rbD1NZeUQ0zvBT/AWi1m
gYwDVRV4HT0jvAe2bx+fXz5enp7v9nLVWbE11fPzUxsEhpguHI49Pf76fH4fWvGPhjVavy62
vNycTBRObd0ja3vFaxaw05Bk5Faa24GPNsqy7RDYTn8mUJ26FkDVUjhy/LbEWyN6emoh8ynl
n2hXetGJKCQH0S84prbsT6Br5kaVObheiqCQUtAIO4+uDVcB+odTagsJNkobGXnhGiSOofuE
vEGrJr3D91+FkvtzOHUG7EjPM8fa6VZU3kUqlSlx5/Tz15+fwastUVR7a3D0z3PGU+nD1mtM
uePHbRqcyau0o50VDUnOVC2anXE06b2XX/G1h5curbnjt9AWw0c4QzHIhuRrefIIHDQ/AHbY
ZX7w9rA1VqGARVNyx0+r0gvc6WDASarplJRYXJLFIlx8QcmwFxK1W9Ft36toRL4Z51DMR4HC
cTS7Wjhto9Tr2WJ6WRw9OtuZfvnw1oeNAutoa04VUgmbTaIZjVlMInr0zBqjzRJ9N/PFOKY3
pEMzHl8bi5w18/F0SfQvd59ZvMCrOoopMbynKPhRuRaBHoX5BdCKQ93w9ESEjnLBqfLIjowS
py40+yK0ssS9nMWUmeQyLXl8VuU+2QKErEIds8lofHWBNcpZQRYDcOw5+lneSpKe6RpnnMOG
ZUB+z7juJC0EaaJVkk+Xc9I3X+OTE6usBL4GyPF8MKFGXnUdJuC/4RFJNy7JYA+yaRrGhnXj
FrryJaA5sAqf/fTbDtKhFHWVz2LCnsCzOJpEp6chs5sZNI69TGpuZ5C2gOirW/G6Dey6qBcW
BUvniznFHx0ilK7OeaOCtXQEZzWe36psD3xKNImoQ7Wt9nE0imieMqCLb3UexSJ8QF0kxWI6
mtIDlZwWicpZNBldw2+iaBTqdHJSSlZh2/CQdhJy7bNJU7YcjSehRjFBL8zxjTq2LK/k1omk
s9Gc21Kbg9mwDDM9dPufImmSsXdbYaNbmexGBzdlmYomVMdWpJxTgpBNBBogLIaG7qScydN8
FoUa2OyLh9uTxndqHUfx/DZhyOXFJbo1a0eGJsXjYjQKdtyQ0JzQpoPTNYoW4XrgjJ3SL946
VLmMogk9wrD915iNWlQhAv2DxomCN+7lqlNyN4/oO3WH0/FCh0bfHvgURG81bUaUf6RNqP+u
0cs61DP991HcnmyFIVfj8bTBh+BvNLtPVsCFAmyo55vUYkjVYt40/rHpkOTLecBc7nRBrnQs
VSnpiJLBGAiQdcd0r+CDNf8ITi8QxKMRJR8MqeZ0G3V+tkNLnZ0vMif7vouTbjizg1RRPI5D
nZYqX5PBsA5Rs5hNA9tBVXI2Hc2DPO+Bq1kcUyKzQ6XvfwKDUm7z9oQMTA0Ioc5NtVMzZlW1
E4q2wqOT2NjAQIKIJgNKA/UXY4urxUNZYCohLSZdkX9WcCSTGlirc46b0eUBV69slchqR+YI
bfXnZj6fLcdtL4blgWCxXM5bfLieHPSn6Yj4yooFcwJqAq2xreBoozOZXmhSnpROXgYLdxCr
mhGNqwzY8UoFMrl3RELnG1Cc5q+9ei7hU1rKYE93jfq6JGYBs/aAHhnyi0aaE9f2qSsUSR6N
KDnPYNHlNcMHaS9z6eHV/lwda/+p33YUmioeNXCA7HxMq2KFi3YEgUnY6/9d+awqWS+mpG7U
4o95u0D8lhHTtTpcFHWpWH3CcBBq3aRsHi9G3e4bYpej6fRcFkbxHOBmYxrH0iYbU3xAg11G
a1DAf+LZcvAFSc5aiZIC0xwFJETYbhgtCn+tWHg/yTLpXnRmdc2GX1gf4hmshtDgIHo2tdBe
RwzB/G+wtlq/xFFdFhfR5zoXEy8eVIPcJBwIAUXXg6zt0J0O0h/FNjxO28gInz6KBpDYh4xH
A8hkAGE+ZDqgmU47M+b28f3JvM74W3mHtlUn7b3TfSIQzqPQP89iMZrEPhD+60bIGXCiFnEy
j0Y+vGK1Z81p4YmgbScGnYkVoP3Kanb0Qa2DsCH225AxZqwNNgLjQBc0RkGye3tvpDYs536U
Uwc7F3I6XZCLuSfJaE/GHs/zfTTa0c6SPdE6By3FJWnvxahV0UdnUAZ5Y/r+4/H98TteXg2S
uCjl2NUOoZzqy8W5UieLE5iorCDQPNXzr3jax4xmOlcx5uHBJEbdMpfP7y+Pr8O8H0bZtt8e
dRGLeDoigSAmVDXXeVGshB8EnYmldFZKh4pm0+mI4TOyAp8XoO8ULfo1XoRRGZtsoqR/dZfq
jJ110EbwhtWhbuZaZ6U8j22qoj7vddKZCYXtXrLtSMiGeKN4kZL+QM7IH2GbhzqbHm8OY63i
xYIyB9tEWSUDE5qLflUVbz+/IAwq0ctLX+0S8VBtcfx4/+bdpXBPHwtoTatf69dAqGuLzjCo
gM6b3FLIJCmawI12RxHNhAwpsy3RKsln4+skLdf9qhhGTdGymkt6k6wOOBwZdF0FwlgNei1h
fKpbbWgqUawz3twixa3yEI3pBNLdYFZ+vFifyMLhUd4qyBNVZ4OUCi2ygNWhc9MFQtGK8yaw
SoryoQy5gu7RxUMF8vZjgi9Q6osr/AhTujk3AhZcfw1U7h+CAMIL/ELRCopGBSLqqip009rG
hyVX4tJElQsQa4o0C7x0ka9aFxPjjrBmbmzG9ti+XEg7VlQVxjgFgv2OXoLVFo5PpXDH7REg
u5yTV+oHJ0kIELrS1rbi3q9z7mVN6IFdzlHaf4cVm2TLk53Oa08NlUrgn52WVgOE9JhbC3Xm
viXEu6SkntJ+QDaRvggJdaGlgY0rCm4f7Ta22B9K5SML1wEQQddaoltI6pULOCjMlFuXzYn6
ZqnG44cqnoTsyzxL2vfO+qKNyLKTl5vzkr50IIv1GoBeprCB91JZL8h3Zxq2P3SzsFUgTPCg
B68ECWjjPN+EUH0bCmNSuuD+yUEbhs8ce+4NAKZfcUFMm7wSpTu3Ju/qUS+ObFOuLmmc8bt6
sRbT/l0+snUUu4NKAP7H28fnjQyrpnoRTQOcvsfP6Gu1Ht9cwefpfBp44cOgMR7xGv6cB04/
vS0Gor+NlIFLZoPMA1YWQFZCNKSFRc+2Oh8Tf7ILbVUNd9S44cPBRz+0oydfgMK0DE8F4Gdj
mpu06OWMllsQfRB0QtoW510I6mWCO2Soa+i2klw4O+2vj8/nH3ffMA1lm+brHz9gAb7+dff8
49vzE3oI/tZSfQFpE/N//dOtMsE8l66bCoJT/n+MXUl33DiS/is6zryZmiLADTzUgUkylbTI
TDrBXORLPo2d3aU3luSR5G73/PpBAFywBKg6lMoZXxA7AgEgIsDr260Mc2AKXgvkTX70o2Ok
JrvXNJZVfi+Ugdpz9mol54mAAGxVWx39w8BrLSAFkWNdYg7KIkdDTlmjoHViJWuwMnp1err6
JUTss9DaBM/vSn48DAacaP/PgYKM1Pt8xy9iuXfS373/KZKaE9cGii2Q2uZcdA2uWnqFn9UG
eOB0CQ3DxORvZAx8FbFk4TsZEEZs7516q7hC3lv8mQWE+QcsvpVQX9CmkoWGHCrg4RRBQyKI
jgrVScMNBfxYLH/Z1rBaCo5NYVim8w6zsjWD+G64+cNYW9XxHa+tKG8z+fsjhGzRhwkkAWuu
R31GQtX2nUjn5ev/2KtlJZ+wuBmMssEM0vvk0fuLSO96IwaymBrfZBxYMV9kqm//ZRhjO5lp
hau3sGNAWgwEgzoPMAkyMFgH9s4qclhMqM5xGcJUWR/V+8+2U58aXbb80ZPi91yPHi5phdJr
bNLlSCzqHCRQp0oLPWlgob9R+vTw44dYEGRZHPGiatWWnXmoKK+0Tr63iyQMhz++uo3Rq7GF
QDLUBeaHoiqxYglPz3bVqu0XQlMnoeOZxbEvKVBn1kPUCPOZR6xN1NgVI+i3AYVjzIVWW6eE
Mbucdc/cQnJ/bQUUEmKncqq3EFvGpnKSFBHTq7NY3ElfkNTrrx9ixiGd75rm6nQY3N6ukuMt
wEYhPTsJDvSlBMWam8Wh++lAtz9FmFJcYxsY4CoP19kkQ9/VBWUk8K4IVkOqWbYu/0IDU7uV
hgt2i6pu9ixi04VZFFpEZZ3AEqetJMA8qunMkRHszl7HqZv05/bM8N2Fwl17V5NhMJzxM5xa
FqLGBCOaZUbcM6Txp2cvnE6xxvfCXkhd+/fMczCphnNzqT3xQYfRJlZw8DEiCy0mn1KRXJ4w
c+quuCxCavsLak9yYC1wfHx9/ymWTEuAWW1weys243mPBhhWtdwV47PrQ4ZowuM3JzIuPuS3
fz4OamP7IDYiZu4nMr61BvbrO2znPrOUnEZMu5/TEXJqMcA+8ZwRfosHTEPKq9eDf3/4h341
JRIclNRNZa5vE8Jbj2/kxAEVC/AdqMnD8PaZOXTTLvPTxANQzxdMN781vtCvkU2A+IAQbRgF
XQrPKbzJh19p6jxx4Bk+E0fKPEVPGfGVkFWowZvJQlJ9ZphDRVND5atYYq+JmolPb2Z1jXHG
p9Nd7zuMaXNqjVfRy1zhRhWlgFV0/KQUXjBx4HHLI7YBt3CUJpa0ING6fZX3YnLdX4oTDYgR
7XJEoLVRXxudQe8ng45kJekUy4qv8F39WHofPn6/+kxTX8iCKXew+cYXspEFLHpTK0KAjwk/
wjCYKBombayTtITTzUlGoOlYSlOXbp79zMlAhAxjxEwJ9WES+wIpjSxFRBKKbbi0ckqTPiyH
wZrvo1pmDPtYdFpEYrzTDB7Uk1/noHHqyyANsb2GxhGLIritCgAzo4noUMY+KFKcnM/Yx7xd
hRHWXuPAuc0PtxV0C80igqWw77MoxlegKf8yyzLUMdaSN/Ln5ViXNmk4r1E7ZHUF/vAu9AZM
LZmiD6/q/nB72OPntw4XZoU7MZVpRAz3DAPB1taZoSUB1YSPCcR4ogDhOp/Jg1lLGhwh8WVA
UqzbNY6MRlhM57JPz8QDRH7AUw4BJbhZlcaBxpaWAN58mx7dmUw4D01vzhko0oTiAmriOUPo
9y3c6Qqt0xPUYuC9YxC+b6kkbQlhhPa390gFwe2OtwWCyGgFGL2rdLfQid6fO7T5C/Enr/eX
wrpL8DJ2qI/PyFXyhKLtCnG9USfOiaFqGiGKWvRjuZ9dLF4d34mmxA2FFAcctATx2m0beQJD
17dYzus0DtMYs/+fOHixaZEWX/dio3Do877iLnjbxIRxtK4CogHHjrQnDqEB5UiaYty61E29
SUiIdkkdx6gnkNbjFQxe9Nue4e5RI8OnIlqa00I13BOKRZiH18WE8oBlqlYgbO00OVIkVQWY
l8kGmGFlkQDSqlJFiRGJDgAlsQeg1FOtiH5UrYgmeAEFgE5s0PbokngHhiRIkLJKhGQeIGE4
kCHNLughSfHhBzHtl0WC5Agz78eLI0xyYC8VSCBLPamK4ma4rj0xFV0YLJe7Oe8rePx56+be
F4an0ETuOA1ZgoyottquKVm1ha0oTQz7VEiMEB1ZbbKk0jRtGiJjqsWXVEFfnvKCAd9mzwxs
uWkhesBieRk2s1qGdmbTftCRgsFnoTcxLBcni2mIdKYEInRWKmh5KesKlobJctmBJ/J4qI48
275Q50o19z0nObEWvZjXS5UFjhQfGAISW+6luQgcWYC01LYr2tTclcw1XLM4w6ZZ11qGfcMH
OBn0XJokHiBFBtSqai7dunIBeNylWK87JJd6y7vD/lJ3HEX3YUyxDYAAWJCgu4p63/E4Cpbk
TM2bhJEQW+5aGgdYpeWKliISfABmDyvPShUysrRSDYsK0tVq7QgwCZefaZCGuKgWCLbOKknN
0PEIWBShMRU1FpYwbCHrRCsgY6JrkzSJerRVunMllsul7D7HEf9EApaj67+Q/VEglIPFGSqY
4jAx4zc4TIeizHDvbp2DYhuHc9lVhCKqzpcmQXcafNXzGiGLjRfSfoJMUYEogPDXYqUER7G8
H0NssOwNRFsJNQSZKFVbkAhfPAVExeZ5MWfBk8BZ5ULWEIkxSlu88gOWLQlPxbQKMf1K7D3g
VAcMHFsrJK7OsagHSo4QkRW87zk6+cQuLUk8pxYFoaxkHxyH8JRRZPLlojUZKia3OQ1QPRCQ
M+5PMTGEFB96fZHit2UTw6Yt0GvEiaHtSIDMGUlHVCtJRyou6FGAl1Egi7qmYIgJkhVEgiy6
g2//JuCEJbhx4cTTE+q52ZxZGA2XWU4sTNMQu3XQORgpsWIClBHcKUfjoMj+WwLoxJbIsgom
WBqxuqCO/yZPIsNGuZCYcxvkrEEhlYTcXJ1ra8yi0510YBPtv4qZ2Pq7gKDLlFQSzbBPAwnC
5Xkdtkce3ud9zW0nWIupaqv9bbUFzzko6W69hhOf/P7S8j8CN02511lIDp5AhYhJl35fmw9z
jxyDI8HldncUJay6y6nmntAvyBdrOOqSb80vFEL/AJwsIZifEaRh4DMTxPGpiDi8yre38g8O
G7k7FYP3EnL7MZchaB88NQx2nk+Gh+KUhHrODHypy56PCeIjVLCGUXD+IDVgwdKZrj8X07IL
1hWbxcTw+o0teMr7YlPutDYdKZbZ8kTe7k75/e5gxs0dQeXBI90aLtUWRicmuCZ2iEwnrRUh
vQBJT5r2OW19enj/+ue3l7/fdK/X98en68vP95vbF1Gv5xfdZmhKpdtXQyYwUpA6mQxCXDR/
PH3EtN3tuo+T6oa3Fd2qaYz6JIJkl5rM89mYj9k+vlCUfLfuka43yFpOM8cQL8H9VAZLoDow
1Xg+vRlRpH5glRgkGTYey7yHcD9GI6q794X0hiDJWHm+1LUMR7Dw9RiuAK1Oc4biYPeM6skg
rHVOCHGMp+EicDwXns8IIoN7YKXKi88HeNTPKtmMl0cIPCtkhZejqVvwqFlkSElAvAzVqriI
zXHkZZDXD8xfSN5B4G2hlHquYVbwLG/fFRTtu7kch/0Oq+ooNlepyESNqInU5nyvz+a1WEys
QVcnYRBUfOUtfl3BPsSLimr5StSzlNC1k6Ege5PbdEsDmIs9yFTJ2RAGTsxI6E1ze7TbfgCS
QFVsbiGhV8cmBfZooxGunTFgYbpK3fqMc0HaQ9qfgQLvK+uoX3oSFDBL07VZREHMZuI8o/Ni
88U/KMWoqzqxvwyXGnxbZ0Ho1FvI5DQgzFNG8FbOKRk+Gq0tf/vvh7frt1mGFw+v3wwNAmJw
FIsTQCSIBxHnYvR2O87rlRGhgK+MH+AirUcQl18VNYT8xr8eUSuVst4tfDPCJlU9JQoJSrd7
7dO5Qxw2vN9mNo/zwKpoc6RwQDZ/XVQ1itrDPeF6MWeAo+/PSHyuh/PpWHZ4bKJo8bB7BqPP
Q0sx2WZvyuL65/f3x7/9fP4KXiFunP5xnK5LSxkECpgP6DFzurYuNAvteXYBb95TlrqvJxtM
MnZu4LEWkwxlFqekPWHRumUuMraVVUoV78qOrruGIMxltcceAZQVkVZpZ/sbqf5QXzTekSE2
i6BUIywpj3vqABOPB7YsfEHgLaCFkrQdTah2f7npwfuN10Vo0kQKXVPapVNbi8+HfH+37P7X
dIXtgmJgXk/WaVMFzY2tiQYDOK+ejJhaNloWRjj+uRJmJBGTPnohIXWXsPdN6Ymta1HJvh6j
XtuJf8q3X8R03vkefwOeu6p1HAk1mLGuZegJ94zGdr6SnAT+yQV3E1GMGkMN8GhtaFNZ5FJZ
FqTuhBNkih1RT6h+vjsTmUXskzBxRAxQUYtHCY5bEDMl0KbtdLpiHYuJid0DDj4XzuPVMinM
sUDH+zgI/dN9X8R9jF4+AsqrAhHAvI7S5IyWhrexx71conf3TPS15yna1TkOXEmtf37PC/0S
HmhGzNe8tNrZdrtRNJYy5qTStG6P5I3QzjGlseMJCWIzrKh05rEdjwwwxc7KZfaII9BM99yk
jwws8jhMjRUT9UWfJpxyYIm1do3eRSiV4lTTumdAhLTQPQvGjac7pEYkP5RWDNtTA0+0LS/g
p4bQNFzmadowRieXzF7uAuzm9zkmyuXd9v3SiG5TFDxKGxqZxFMbqwsMsy6Cih4UK9AVVZLG
HFoUOJIKDi/I0tKtTjecpODEw6mS5silU4syCyNstI0nG5PUGN2/ljTB+fRhvhi3SUrDxIB1
fa5EL+6aXtm0OQwQHuggA21t+aGt0NThdFce7i5yiVXuVk2jqTlmMC96xhL80kPjKuMww67u
NJZhfDXljmClGHGhmYA/CcoyKs9YCaTKuliCSc1EPlfq5ge1FEwUHd4WC1q/db6Nw1hXc2fM
dhebkZo3Wejx0TK4xLaeYHr5zCSESBKesexhpUk97SqxjxpGOnksNz6w4JWf1jQs4b4Irbd5
PFxJigVrn3lAU4tZghVA2nREGV4CCaKOQyZPpkcet6CYeqHM/5UuFw3IUiktjNHEU5OOsfij
pgSFkGDXxhYL2pOTjukg4BsdxTh0ZCzwfAUQ80MZDp1avAHk+6sQq2KxepILwtsflVUYktA+
592q2u/vu9p64qSvt9h7P9qnfcQCVD7s+/ZongHMGKdtl6PGIiYP90lHHrcsTXCrP42ruY29
TxnObGBRRJLwI6EwKpp/gY2GH8wwpUzSEK/dgoZqMzHP5JAoCTFzGovJUDgtzFA7HQyVAq6i
qWFKscQgW9sxEONtCANRWg8+5pt8Va/0ENH29mkPAWPMp8Nrjw/tvhgj0uOujhI/1gX6ulbh
bNyAst319brWNRigdrVhvCSfQJTAHtMThy8uYu7KFxo/aWrh9CVoH0YYQlmeTRrqRm5As1dt
+XHluYYBidIdGl4x4POy7PN6yzd5uTvZbEY55zJaVR8AoT42voiTI+Oq3B9lUDpeNVVhHMgM
4Vu+PT6MSu37v37o7udDa+UthDt1Gkyh+TZvdmITdPQxlPVt3QsN1s+xzyE0gQfk5d4HjXFf
fLh0MtbbcIrO4lRZa4qvL6/IY47HuqzkQ67OWNpJJ69GH7LlceVuItzEhwgK364vUfP4/PPX
zcsP2GG82bkeo0YbkzPN3PFodOj1SvS6eX6nGPLyuPDKquJRu5K23spVcHuLzl+ZU1u1VPxn
NoxE1k3ON/Dc5aUQ/+I2etoKsaG3D9YORq9MQQ+dVrI7Atrf301CIH4+wMhQzaOulr5fH96u
UEM5JP58eJcxoa4yktQ3twj76//+vL693+QqUFZ17qp93VZbMc71qFHeokum8vHvj+8P32/6
o1slGEFDEFSNstUDpUqW/Cw6NO/gDdo/SDL3I4DwJBgcAMt+xHpQMlXtAd71KsD+59LsOBd/
jNtz4Do0FTZohmoiFdFFi2vnM0zfoh5nJ756SLEwVs8rJJVtqxboXOb09eXpCTbrMnPPxFod
1tRagmY6MukkXYz2nW7Dr33R5k2z0/3HWrA9zre7S1v2RiTRGUEXMG0q953RGYI2iz11uYUv
vcA4Tc4FPujdv5QgyOElRtXjbfE73F3eiGTHYIO6aQ1UWz6IvTfFhRLVQ6qOSKvbwpVjx1r8
3992tai6mxDoKoU5hfCcAREfDb1mrht63CtFenj++vj9+8Prv5D7QbVI9n2uv3mmylPvBwmu
jOR+fnt8EavS1xcIr/OfNz9eX75e395eXt9kDLunx19GwiqJ/jgeR5rkMk+j0Fk0BDljusf2
RCZii3p2G7mv4LHY2D9GJQN1Umx5FxrqqSIXPAwD5mZT8Dj0OD3NDE1IsZOPoRzNMaRBXhc0
XNm5HkT1wshpDKEnWw5LMz3EnOaHQdTRlLfd2U6O77b3l1W/vihstlf8S90qR8C+5BOj3dE8
z5MxftqQssE+6xLeJMTKDzZGdsEVOcTIie6TZZBBbcUg5rbzQMa+WPVMdyOdiHHidosgJ3i4
A4Xf8QD3Zx1GZMMSUfIkdVMWTZvi59k6js0OOLUS82yhVP2xiwl62KzhsTsjj10aBO78PVHm
dkl/yjLTRUWjY8dlM2w+YjoO8LPYA7lm5mpwwZh9MIY0MlJTkjrzozjTWMkeU+VDh/D1eSFt
Pc6MRmbIXJZjO/V3rcI9H4aLPSs5UP/PGY/NgxoD8Gz8Rp4sZNkK+fiOMTRCz9CnG85ogDTy
1KBaIz8+CVn0j+vT9fn9BmI3O6196MokCkKSOxJVAix083HTnNe23xWL0Mx+vAoJCHcpaLYg
6tKYbrgjRr0pqHd0yv3N+89noe5ZyYLqAq6CY0+Pb1pY/GpBf3z7ehVr+fP1BeKtX7//0NKz
J9iGp6HHA2yQOjFN0UhAgwLg7t94L6PylsOt26h5+EulivXwdH19EBk8i4XFfeFoGDtCQ97C
rrlxx9WmjmO/qKhb0XiO3JFUR3wDNUbWeKB7/KlmBs898sQQEv/CDLB+9aCou2NAc+II2N2R
Jq4iBNTYqRFQ3WVTUpHsRCUR3jiJHKklqcylDmEJrNoD94IkkzBSnDjJEPG2O6Y0xg6aJzil
jgQXVLTN0iTFqGg7MLW2O9QEKXqG5pYl7nIpqGnojM/dkYQMG4pHniQUCzU1TNo+a62nljUA
PTyecaJfC07kzjj6nci9L5uekMVsjgG2skhguXxHpHx8H4RBV4ROs253u21ARsgRbe2uQc+F
FJyfM5qSixH+WkH7Mi9aiiSpAP+w3H+Koy1Sbx7fJbl/byBhR78V1KgqbhG1TiDxKl8vbUdQ
VzaFVT2r7gw9HRfOUm43gubuGUcdIGbuziq/S0N3npenLHUFNFATZPwLOgvSy7GwAocO5TUK
JYu5/v7w9qd3WSk7ksRO+4IxS4J0MtxPRwmasZmNWtO72l2Ex/XbxqzT38N2fjmm+Pn2/vL0
+H9XOKSSi76zR5f88NRCZ5pU6yjslOWjar7DqImNUf3a0gF1/djNICVeNGNmNBMDrvI4TTy2
bQ4fag+ocbU9Dc6eYgKWeOonsdCLGbE2LIyEnop/7klAPPmdCxro3uImFhsPyJpYFFgGSHpp
zo34FI3s5bKl7tWDQoso4izwNQaopKafvDsUUE95nW1dBNZi4KD4Fa7DhlqeuQWivryqCI8t
YWYklEPfwGFszxORhqc1+0OeBYFnhPCakjjFsbrPSOgZyXshY5ELtql3w4Ds8aXAGJ8tKYlo
Q0+EVYd1FVgP3c+LBSKodAn2dpVnq+vXl+d38cn0qoa0UXt7F9vzh9dvN//29vAu9guP79d/
v/mbxmoc+/J+FbAMNxUZcAjt4bk44P0xyIJf5pGpJJqHCgM5ISTA43jMDNjKL285xCQ7z+9N
mDX9Kh/7+I+b9+ur2BO+wzOFC3Uu92fsUUB5EDyI3oKWpVWrepinepm2jEUpxYjhWFJB+o17
+0L7rjjTiOjybSKathAyjz70TGhAvzSix0JsJzejmVW7eEOMI9yxI6lugjwOCEtkTrwZtjHT
+h77KPMOLlgjA/1McuygwDLtGJlp4hs8x4qTc2YnNciFkiD1UaDqE0wmznme7VRzMxbO3LdO
oRUZW4Pnvrf7RAzDs50lF4ufxVf+P2PX0ty4raz351e4sriVLM6NRIkSdauygEhIwpivIShZ
mo1qjuNkXPHYUx6nTvLvbzfABx4NOotMrP4ajQeBRuPVLRdErTDgCZuHeoZu2/Xc7LrtzY/B
QWUWqwaTxC0q0s5eQ0RronWAGHm9A/skuZLpBrEzQnNYXttO1sdKkbuv6jT13K5mboFgeMVe
cXDcLOJQX8jEFhu82LrJeoDa5+vwNeJEOqTTYW87BtePE1VxynRAmKdzehQvSKNQf6csgpnS
veOA1OXc9uStGiybw8SJh8uVdUY39K20U9zBXoXDNnF7tq6X6QHIoHqaUuultZc/ayVkX768
vn25YbA0e7z//Pzz7cvrw+fnm3bs8D+nambJ2lOwkNCDotns7GZcNXHQM06P05fQEN2msHJy
J4N8n7WLxexMUmOXCtOV/31xSM1CWpodkzhyZjNNu+pDUJ9+WubERDJ3Pg7M3SvlIVX7E5HZ
tF6xi7wJOFruxkBC25uDtotm0srYnov/5/3SmJ0sxdeNnmZQM/7SfrtiXe4wZN+8PD/93dl0
P9d5bmegt2W9aQiqCXrZHQcjpFaZeqnM0/6qSb+Gvvnt5VVbIYQdtNicLx8CzZeX20Pkdiuk
bdwGAGpNbtkMoNOr8BL70u2yihh5ClyTQ3oX19jeoM/3Mtnn9FnygJMewZTIdgurkIWvdlar
+C+vdOconsXUg1vVM3A1E3nzC9ttZgvHGjlUzVEumCufybRqIzL6MibiOS/5sL+hr7ugP5vX
3z7fP9z8yMt4FkXzn94JF9ur8VnYgKuto4jQOkQJbV9enr5jVD3ogA9PL99unh/+O2GMH4vi
ct05D6Ksyxb+zQolZP/6+duXx/vvVEB7tqd8xJz27MrMsMcdQV2h2tdH+/oUgvJOtOmBNxV9
0zNr/IiYDGjjLtl4dmWQ/zUmR780PIfZQODFMXX/Cv2U3A5Ka/f6+evDzX/+/O03+HaZu/u2
gw9XZOgOe6wU0NQF2otJMv4WTaFincJ6NLNSKadEMOcS1zwxH/hvJ/K84akPpFV9AZnMA0TB
9nybCzuJvEhaFgKkLARoWbuq4WJfXnkJ62vrhrCqUnvoEKI/IAP8j0wJ2bQ5n0yramHdA9vh
XbodbxqeXc0LOUAHI4h34aHtBK3IVaVaoRx3+R/9Sx8XlRi52MqiadzIoiNaF/Q6ERNetryJ
6OkTYNakTpMwKXJojIDrGvzWsg2CMJrIhcdOmXn2x+Y74WRdLsmNAUAOezstesxS0Xbt7jPP
lD8AV+wJYzeHityIUxAT60C0Hew6PJnFATfX2BO8MGRWpizjFe3MAj9Be5lHQcmAhiBJn1Aj
wk4wrIKoCHatUNxpbFdewVgV9N13wG8vgUASgC2yXbBxTlWVVRVtDyLcJqsoWNG2ERkP917W
0B4M1SAKCk1Br4P2pfsm+oLen9tlbBoAquXUe05bP3DoFWVVcKeLohFLey9VX8c9qEBisXY3
h/qzFWouUepk+/n+j6fH37+8gUWcp1l/L967AQ+Yvsrdvekws0aMimLdwVuW3uZif2hdAR5+
22ZRbBl1I1bfTcse3JJ4iIqTQgtVb2LuaFd8I5dkB9YwWkLn1mUyPfAkiXlg4kBrElJPOc1Q
Hg60IZE6ie1n/xa2TqhdAaORWZlVDZmn/y53xEJehMasT9BG67ymBG+z1dx8V2lk2aTntCzp
PLvn2mR3f6dT9zkdssKabvLKDeXdyfMMzl6CrI5mBF3184q36O175TYd3QfCSBCmHylLSpkp
z4+NTapTO8E1Kxgv96CDfEjyj94wQ3rD7gqY+GwijAEoERSu2u3yijkl+QAt7lOuoqyVn8WT
jUEd0Z+oTSzEGRaslfkMpKtQkAj65AhVs95m9rBqG6K7qTaxXj04xQBbH7R2Jn9ZRLbU/kFV
lWdXRkc/x7ybKr3uHKEn3mwryRW484o7oqJs6VlGlToQeVGJGCK725/+Kvfb48777Ef0s9gQ
vQFXWwFu/ytgCuwoV36CiZPGfCrMbj5Q1MflbH49ssaRw9LN+upcyVd1G27j222EFQi0Ecst
j6Oq2YayWFKKtmbUml1j0gm2oOrVCJZfj/NVTDv7Hqro9GPoTwUro/OSqHUXURM02CTYuzH9
ZWaPEK9WLJsngQf0unnwTGACFvEyEHVR4VIcatrbk4JbIc70bvUIq1UQHalWMR0TLyS2A0fT
cCBOpoLvAsETEPvULhYBuxrxbZsEgnkrzclm81kgCh/ChQi5yVK68nzZc9rgV6nlMkrCXwXg
VcAjnILb8y6cdcaanE206F751A/CObtMJtfiA+7ze/FhWIsP40VVBnzTq8kmjPH0UC3op48I
C1jyuxaABwe8k40M2Yd3JYQ/Wy8izAHT63x2G+4XHT4hoJTzRcAj04hPZCDnm0DE5B5eheFd
kQT8byF6yFyLzgHDKgRsnbm3/HHxiU6lnNYl53C79AzhItxWzX4eTZQhr/Jw58zPq+VqyQPv
75T9wiUsFQMxR7SdxQKvKREuiygOK6s6PR8CIQLQcBR1C4voMF7wgK+IDt2Ec1ZowOeanoJX
4d4sq1KkJ7GdaLep5b82FVgSTajSDn9nClNL+0qGtcPpHIWi+AB6KXbOXKGW54fs3+rtgxXZ
QY0FpjskuV4ZUv3LSQJ2vnqlepXiE7fNCu20sTzkjpmm6ZlyjIVEClXrmzt0st15jbQ+UOoR
tKFjB+TqkD1GO0UvoxOLmyod1iw+0lZ1BQs519ZVmRJlA9uJJqo4riLy7FATlnUmrOthLl+B
Nl1NyAcg/QTz5Dqab4rzJlnEa+VsOcjatPFqGfc8fol0TqFgSQZXw8tKhJZPrC2081C7HNu0
UF7XoTmudwch29xbkHAp9qU6XdBtRmP6W+oDy5e0ex2Jx5S714eH7/efnx5u0vo4XGvrzrVG
1u4lN5Hk/9wRItViLQfrlXxkbbJIRnQBBIqPRAdTQo8ZKFvqQyh5Mmx5DTxu1yG5OBTtXSZY
7+4EFQ/dZDqnp4YqryjOqjbHM6lJJr+SpQgijCa7iuaz0KARRdjyUrhWJbLFIZzDwnOqSiqq
jU5RoL9v/zP1YBhTYVF2eP6W5ReYm8v9tWQFJwtftLewFkhPkow21DHJajeUnRKCeMD7uMFB
q6ke8bdcelRHQK+baktXQfNA0aqaN5TrBZ+fzki3nlHRIM9B7MSV11dYBk2xsbYqet4pviGO
GcGxZZe2YSJQnG1TseyO5wH43ILRywbN1BaP968vD08P92+vL8+47wckMG/QW7l+/WoePPcj
5Z+ncovQReTwFKeBqXf+eOIJvd3bDTL4lFqhvv653dV7dPxJBq3qx0UEIwv/Hn2jqA0a/5GK
NZETmzh6lmTH67EVeWAOZUdYZ3guw2nGNR1Fz2I5z+kyzNerCcQJ+myg9htsC5nPkzByPdyF
Kqxg2r3pwHa71NJ9AbfLZUyGzhsZ4nhJFOx2uZovAiJXgVvrI0u8SMLGe8cSTxcsT+NVRJZg
m0XBo7uBp71KMvjGYA3KRZwviI+lgUUIINpKA3EIWFF1wJ2anA43bXLERC/sALoTapCsFgKr
ALAm67uM6OouoxVZ22W0noUqu56/04mR6XwmxkgHBOu7cKPRG9BySgUohg2dFL2HhNf1igcj
yZLOTXsOZaoTDatNeIJe2MGtejqX6/mCen1qMOjo0B49WcyJT470iGhpTacbet8WK3fDWttF
6JPodjFbEBnhm85klhBZKQRWMCwAxTN/W73HAv4qLZ4NHaHUyp3q9D1CN8KAyuwuhG7IzqgL
HjoNUByySDbzFXqb7lzkETkYPJ2XPJ8JFkzzlX233YTWyeadkai4NmdaMgB02yBo+cB0ADdq
iAEvZqvZ+2WCrpwQ3aVHgqVCh+R0unge/RUEQuWFvu7s/rsMOUxOxEhpWlBUCd11cKlOjVSk
07JwaU/TY0K1ID0hZgVND5XJenxhkYMp5mRhgRxOQVYDyHQKuW9z+4nmgIh9wTJJLQc6BD2b
Wi7yRga8GnNl8G/vS9RfC2keZ9XrMoVsaSmLKOSv2+RZzUIBcQyuZbxaE5Vo2SIiNxgQCZ5E
agZxlYzaGWMyiilzQgF2HB4TWq+m5ivFQZsKAKEz3unE8XpO6BkFRETHAAAsVsKSUU7PqJm4
3bFNsiZNA8Nv2LvLkIF3MadDSnt83tmvB4fU0sj0D3LK0vN8Sbe/XLAoWlN31EYWbZERBUWE
Wk0oh2qULalCK1Cm812RWE9aTHpEzNuKTmUA9ISW41xNMpFJ/a7cvQWTLqbsDmRYBpNODlHF
QFd8vSaXGIgkUysMYLCcg9l0ej5FX9EzuhibgKzNim7/Da0+EFlPaQ/FQK52EUmo4CYDg2To
DYtK+0ltmGxWdTTVZGjGrWNSMaCT+4kbEQNL+JyzY6GjCvQMJTsmC2rORCBeEk1d6psSASAi
lLsGSAO8rdkKzBg21Uh5jVc2oa1xK7WpfPma4fQO3pwH3CuG5mg7DnIb2t6FsrLQMzne6xr2
mmjYzfpMzkzGyZQ+gBOZfxn2ICxp8PO6VftyF5h9G17uWzq0GzA27I7I9UhI7E7CvCNB+e3h
Ht+TYcm8fTlMyJYY4nVsB0VLm+OZIF13OzdfdV2WKKPCjniAaMvZ8vxWlDYNX840F5cm4JdL
rI571tg06AYszx3Guqkyccsv0kmvnCs4tItzNIhEaPh9VTZWCPWRppvBYOeF9Gk5T83gn4r2
Ccpkk/a82IrG/5w78nK0gvKqEZUdiALpJ3FieUadFyAKGau4FHbutxduE+5Y3pqX47RgfqcO
zp2SXxr1EMmmCgze7JBa7pb1A9uSISMRa+9EeWCO2FteSgEjpSpdUXmqrsAFhOU8swXlvKxO
lSekghU1t0MsWn1sL9IC2tyrSAHt1QTeYWj8opybBxkarvtVWIIANYcBxUNlq0pQJW63Ko55
K4gPXpqxHZFQNS2/dQYPK1sYkdDNrG5pkKGzB0pT85bll9JRHjWM5TzNSKJ+dGZVuUeG69vB
xuk58dr2uzw8o04zTJZUOMqlzhm6goe+Lz3gIlun/xtEQlPWjQAbIlhMyaAH0pd+NVzIY0mf
iSq85hwf+FEeSxTecuZoIyDxHG+scqdykFGdHx1iUzg9Z48Bbpg09elA8rShLFjTfqgundxx
ajXo4V7VCn/IgpqSnIc/e3sAfUFfwNFwc5Stvi0dZDriBHytJfWqWGlLIYqqddTdWZRFZZM+
8aayW7SneA316ZKhXeOoPwnqr2quh+OWpKdQFQxkpH4583ZeW75RKXtAv3qHFS1pvuAxn7YA
uhARnSQ3gcvfPWrQwp/fHp5uBOhBO4uhtfWRLTBgUtKoo0Xop7RFdiN3GpDEI98CGmoXlkwm
Hy5HETXEqCzVIRX248+x3REnwrEg+ZjXAg1GssshA/xZhl7IIM6aFGrC5PWQZo7wQAp9A1w1
CDJhTQxLcKDXX/7+/ngPPSP//Df9/LusaiXwnHJxClYAy64CZZEcLTucKrewQ2NPlMPJhGV7
Tk8L7aWeCqZTwffSr7WJ5irs4AEq/MCRkfcegFWFA+ibVkcz0AENDi/f327S8Sl95jn6L1I3
zCOSZHawb+sPxHAA5YEDh+c7LHXe7miNqGojdqBCAuGSAU+368Cle0RPKvxOQfqvQfwIRRAr
aP6ZXef0o66zQTrIj24jtJU8iC0L3IdBjqI1rJgCDPJWqJdIo5iOForg/vD15fVv+fZ4/wcd
haRLfSwl23Ew2zB25qSUcC/wpaq2L+ghMzB9UKZgeV0kgfDIPWMTb6hFesnvlBE0thP+ckPu
jDQdlodElHkJNlNl7Zcrhm2DFluJL8QOd7CMw5BAvl8ffETpLUdVelYfPZlMLlbLmFowKFjF
wp05BVXEyCeulhRxZm4rKyrGJ/QFdNQ+0JcJESQVr3lJEGOvDHU8s5+dd2T3EaaNpzk/of9c
8kLfWODYl9zRJwLS91wrcltZwW7IOUV0n9ZqQXYERkUbgs2FxONtD9vflyL3V/+WUeCZku4z
/lNbm6FNGYYInGDI03hDb98rfIzW6Xw06HnxX8FURgh1ZyioW5P/eXp8/uPH+U9qMmz225vu
vfGfz78CB2G+3fw4mrs/OYNpiyuCwvkWRX5O6zzzyg10+CTh9sAbkKFawQppnWzdr67jkI83
8bx2WkXkfq9OPEYlN8lyXyz0CYbhbhgjTbQvr/dfHMXidLg2iecxqYva18fff6fStKDO9lT4
Iky1xW9FNblZV5amoAzFVoC1SPtdEPBvCdNbSV0X5bAeUHceBUzjaWOuABTk+WBp2tT2pI2E
Ip0vV8k88RFH/SPpkMJ8e6GJ/UPhH17f7mc/mAwAtmAV26k6YjiVG+0aSOUJZrL++wLh5rH3
VGTMFcgIimCHOeycoio6PrE1P8MAQFGIZlZlaU6WTYcrHMyf6E89O9tu40+cXCCOLLz6tLFL
qOnnxHTS1tMzOV/M1m7RR+Sa8rI9NnRXMlnJoWUwrEyXpD19CL3s0EHZrTZWENERcCIdm8CG
FuXqzR5qZJwu1mTI1Y5DyHwezQipGoiIKp2BHvvkOt3ZB4oWYLmltpDFakEVXWGrqY6gOBJC
bLGctwnVtIp+vctaH9t+XES3PpmIR2sidjTaEenjzXq1kmBEbWZkFPGOY1e4t/CGjwn9O7Bi
MFjihAxibMiIYko6LxYz8qbXkPS00L6+/VwBoeP6DgxJMiO/soypbfkBzWB8Jr36QJ/ztvow
VZF/eRr5cSLz1Y43dhfRgujomg5mt3Xv3eh+kY6HRDZItEknm+TceebtYmB+fgNj5et0OdOi
kgE9FpHHaQZDbF4nMukxMYBQmSXxdccKoU6CqBxX5PGwxbAJJF1HCX19x+RZ/gOe5L0yrJcR
XYZo6foAd1nA6o4npQMDpdNkeztft4zS08ukTVY0fUEoVKTHxERXyGIV0RXbflzC+J7qdnWc
zoiegB2WVDp6SeJZay/P/07r43R33bXw12zs5Go/UAfiCFgBWcGImNXap2fBtsedEUx03FW6
lCl6taOfxx67hBSmoWtRnXjnum+KLRy4t2OQPN+huRMI9qmZDpzVDkMfydWuYd+a7HjOhMSj
kPGrpQfW2Oc/2XK5hqnNfaPT0c0Pi7H6ZtSlHFHs0e2lEFdLNPwwX8bUrFHOWmr0n2iS0Z1i
B45PWztyU+H3+SW2yXovAxZwUrI9d2Upr4g99sMPYwW6ysPCAF3mEBUxGaxVkgF4h4hm3sbO
sx1+HH5e08DDQcRq7PZ7XormY5Anw6iw7/Cw0I4rhurmTVoF3MqpMqSCurxg8ZS8pbe8lIDm
KAP76YAWu1XgGf9pR26y48tsyqvMaVud9xgLmhRWiraprryE1dSJjoANYu3Yq/gbdwOs7a6O
TO9zduAWH2Wbo6ajKydLhLCiCGzxnLKadjBwOlQYWw7K5u9w4rO17y+/vd0c/v728Prv083v
Kro1caZzuNS8OZG64z0po5B9wy+hwwTZsr0InImek5URgthX0v34KfTi2h52TVXwITUd1iXP
WVmdByZj71ntolwPVYtOqTy6PUDlsdmxdDqvA/r2SXPD2IcfGLIdOsHt0byr0THiu33QbIaG
6sJeayFjPQequtwWMmAMNili511NiCtwHc7mWtID02BKs5SvybikJpNynXw1X86b+URFLe37
ngbq+Akcu49+IHlKj9QXuQNTvcwrdcCge/zTy/0fN/Llz9f7B9/AgIz4qb2KJDKNV/Xz2kkZ
Obd5NnCON9oo+UPPYiIH5WTWsE6pcxiWt7xh18JhFtAcR+qJr96Aefj68vaAkYgJy4nj8be3
0zJQ4ftxWgEQUnVu375+/53ccKkLudceGPe4w4YE2iBWjFr10VlbWfRVGZxSDKuxlz+ff717
fH0wvCmP43ZwYUG41fB4sNReu8oqvflR/v397eHrTfV8k355/PbTzXfc3v3t8d44LNIn3F+f
Xn4HMj6wNxunP8EmYO2v8/Xl86/3L19DCUlcMZTn+ufxAf/Hl1fxMSTkPVbF+/i/xTkkwMMU
yJ9VTIX88e1Bo9s/H59wD3xoJELUP0+kUn388/MTVD/YPiRufmI8NvU+7fnx6fH5r5BMCh1u
Z/yjTmGMczW37Zr/r+xZmtvIcf4rrjntITMVy3ZiH3KguimpR/1yPyzZly7H1jiqxHJKlneS
79d/AMnuBklQyW7VTiwAzTdBAAQBec1sd7luIiUm6OH8cXh42ZnF7F9Ja+JOVMldkVvRS3vM
upyw8UANflYLOEKIecnA7WsxAzTuHnlzdn71ganMvOBfNN2KY2SGCk6tMyuN6wj/+PEDzeND
EZfnZ0yNxigZrqxscpN92/20ai6vPp7xkpQhqbOLC1bPNfjeccJrMSBgicF/z+jzFhDJi8oy
dCQBES9vpryEBwKOI1b1S2pFhBn4MRjYx0W3yo4olwrLzhpikuv6w4SGqUWguiY9c6tISwzs
GfB7GAmYSMIWlbrCZO0uiG1WqVsvgLqUubJGBQhzR3LhHDzccMiXGP50aju9TQv0P2+gb6Eb
TBNHMimLqBHc3W4la9mgsxCoHakVX0djplWU1c0Uf0XUBVtj8c3XbU2YQ7m4PanfPr8qzjMy
hT68EqAttbLG3BgZgpmmTaOsWwIPQbKJ+yn87Mq16CaXedYt6oRdJ5QGCyGrBVCaN2D9svfX
MbNg94JUig7CkeBSPWSR5X0KP0M+JoBJy+HSttzs0f55vwNe+vyy2x5e9ty6OEZGRBYR9Ac7
95ah2D3uX7aP4ySJPK4KmqLBALppkseYuYyGU7Fx9OLM+cqoTJ/++LzFi+d3X/41f/x396j/
IiYOv8bBuMSKYH0fiLVJcNfs/U3gyM4QoDlSiLyrywyWd0y9XU30506iVErg+oOKXDcuVieH
/f3DdvfkO0LWDQ0t1mRoJ2pQHa+pa/yIwNvSxkb0cXWJCpuhoFiBDgiQughYBQnZQoqqmUrB
BuMZyWZNJWg8ZxOGxwoH1sMCS35AD56fLiL0cmUgqBvOaDWgs7r1WwgnbcJA+4vi0TPTn6qx
BRi+hqm5zROclZukLiqHKddOoM0enCaZHXoOAFoPiZoqtRtawd+5laskAiWgsV8VZ0VgVzii
mXZv2II0qxkaTTIViWghuxW64mv3AsvsI9IkFg2sgRotnLzXBuKKOlnD96QTco06IGULPaSb
oqba2WlMklQqBVanJBl7CPwA/XpuLQp2pUDBMo+q2xKd5vlm3sAR1NAkNT3I9R0YEdM2SZsk
x9ffuWhaO8tHPWS9GbmPb00fZlVhlO8LKUP4ZVy3RcMtOdE2xaw+t0KBa5gFmrX4rsiaxwhA
YSsg/biAfqfiNgDDNyYJptDpYvq+gSMQ6UqobDVpWlhhiQgx8njeGkuI1jBwqpu/IsxkIzCT
j3fORfcPX6wURrVa9LRRBoR2wMAlRk+BUQiLeSV4MbGnCgu1PUUx/RuHKU0CW9g0WosIr5u3
x5eTf2AHext4DA4/CikIWqLTPCcSIfImMy719jcabA5sPGE4OUdRoszX0EsQBJYC7zSKPGno
0wFtvVkkaVzJ3P0CHwOgGzqOO2WNS1nlVsR72zWnyUq7ywowsiF25DXNWjQN/0xD42G1xfID
b05ctHPZpFNWYoCTfxZ3UQXHKTkrBx/7eTIXeZPoQaJMHf/pN/Co682SG1F1M/66jFkOhGMm
tb4TRH8pyZqBc9kAv19SKiLIONwEf99MnN+WhqUh7rBT5PmnZ4f8vOOtuhVefeVuv62mqe0T
xCPvS+VcRMDTc7bzhghXGMaXzZ2+xkktpnDUtHHJvbwAEs61bl4p2zucGQW9QITjyv2Jo2FV
6F5cmvGZdDVMpE7fRfZBm1dWTEP1u5vDsf08iKhlVEsF65bV9IKOvSHv+5jkQNhiYrY8wscO
gbsR81GQpUWyXHTspoiSWU3rx9+ax3IWDIXFG6nV2DI9l9ZZhlQrKdDijluLlxsVVVvig94w
3uMFFDlKiR6UD1w34hXrxHey/IBqwt9oX73Kf0lzbENERSw8JtJzJvUti7oq+dnM6SN3+DGk
ifhj+/pyeXlx9ecp0eSQAJ/Pq1PhnI1oYZF8PLMcimzcR87qYpFcUu9xBzMJYi6CmI8hjJ3j
1sFxDmgOSbAx1KXGwZwHMRdHGsNddjkkV4GCr2ggNhsTHOers1DXrs5D9Vx+dLoG6hSupO4y
8MHpJFg/oE5tlPLpcAeoryE0VT1+wjfsLFQe5yJL8Rd8eR94sLcXegSXL9XqVrCBp7xQY5GE
ttmySC67ym6qgrU2LBMRnOGZnduyR0QSn/oEG6FJQMdtA6n6BqKqEA2fI3Mgua2SNLUjIfa4
uZDpL5qBr4+55889HsTjVNDUWQMib2myUGtIEn5UQKlcJqxHDlK0zcxyPI1TXvFo8wQ3Aisv
Wpq/vjHcPLztt4efxKlsELxvLTH8FlW6a3RW6TylCROLgvoCU4aEFSjmgZea+D5axt6B2Au7
Wms3BFblXbzA9Jo6OgRVB1A4UHp7Jmtlim6qJLIEtZ6EM8QYFBVzFQdptFRUF2n/HH9U20AO
RO1d28RCPiQo4KN+jxkbtOjGG7Uwi5aWb9Bxt6iGIULXL6bF5qAl/RZECEzr7NMfeK3/+PLv
7t3P++f7d99e7h+/b3fvXu//2UA528d3+PLhCef83efv//yhl8Fys99tvql0r5sdWr/G5UDe
IJ5sd9vD9v7b9v/uEUucESKl2qBu3qG6koDmBwOJ8WiIPMtS4aN12w4IQBjAaNnlBZvcklCA
PESq4cpACqwiVA5eQqp0FP3AFn5JeBEJbICQ8P5H/Bj16PAQDxe17l4cBg53RdGbk6P9z++H
l5OHl/3m5GV/8mXz7ftmT+ZCEUOv5oJGcbfAEx8uadY9AvRJ62WUlAuqizgI/5OF9eaTAH3S
Kp9zMJZwEDu9hgdbIkKNX5alTw1AvwRM/OGTAlsHxuGXa+CWp7JBBd6+2R8OKpryqvWKn89O
J5dWukODyNuUB3ItKdW/4baof5j10TYL4Nke3Lx3clZHksX9Ei7fPn/bPvz5dfPz5EGt5idM
b/nTW8QVTc5sYLG/kmTkt0FG8YLpqYyquOZMqn0rM258gNfeyMnFxSknc3k06CfY91S8Hb5s
doftw/1h83gid6q7sLlP/t0evpyI19eXh61CxfeHe6//UZSN2nw/4zQZTU+3gBNZTN6XRXp7
evb+gumCkPOkPmUjEToU8EedJ11dS24oanmdcG/dhvFdCGCaN33/p8rJ7PnlkZpd+1ZPI26s
Z1zQiR7Z+DssYraFjKbewKXVyqMr7EBBw3aY8lKhwa8b1sRheIa8XVXC5xv54sjsjEg17uHS
CaG4WTP8DaOGNK2/RPC56DArC3zfGpiUTPibacEB13r+bOCNptTPFbZPm9eDX0MVnU3YmVeI
I95vlO4YswI0zGHKscX12pxFbqHTVCzl5MjS0wR18NM6EM5vbFVz+l6H8w1gQm2es8cnWU08
QrkrU4NBf7DEHIxblVkCu1mq9D7hjlVZfEpDcvZ8YiFOWSAs8FqecajJxYcB6bGdhbg4nWj0
Ee6tCuHKho/5Uo+VljHNbEASnBa+jLIq+SrU5HVqYrs88Re3Fum237/Y3r09S/ZZG8C6hhHs
ZD2Uz67RYjXjlUuHwjNDu/hhWXn7UqALe3LkdO0pQktzwOsjCDjcr2sbaSeG+Fj9qL3y/UOc
v5kU1G6IT/CBbR7AyYfhRsWSYyoAPetkLH/5+Uz9GxQJgohQh0AoLa2MyzZcnU+/+Pb4xBGi
X89YnXFFNKvi+GI2BKG57tGBbtjo7mwlbsONCMxxnz3u+37z+mory/0Ez1JhR7HsBZU7Tl01
yMtzjsukd0fGEJAL/6S+q5tBHq/ud48vzyf52/Pnzf5kvtlt9r2G78mReZ10UVnlXLbwvmvV
dN6/QmIwRprwVrzCBa9xCFHE39WMFF69fydoJJDo2Vhyc6kSsYFi/Mv6B8Je2f0t4irgqeLS
ocId7pk6SZJ85loCvm0/7+/3P0/2L2+H7Y6R6dJkyh4lCl5F576oDIheqjH+mtyiG6mOaBX6
3vtGKnLNfNiGaBSpLkTiH312FYMexpcxqmnHe/Y7Oh/SxYGBHcSwSmU6PT092uqgNGcVdbzF
PdmxpTYO46gtHu/fIFO5RS24MNKivs0yiTZYZbXFu+SxSwRZttPU0NTt1CZbX7y/6iKJZtYk
Qp8z7XBmGZyXUX2J0U9vEI+lBJ3SkPRj/4h2LMrCosGis8Ioo5eXxNCz2t0MfcBUY5LRvzna
7A/4hALUd50O9HX7tLs/vO03Jw9fNg9ft7sn4uepvCuoAbxKqKXLx9fWg1+Dl+umEnRsAp7e
8Ecsqlu3Pp5aFw07GSPj1g1P3Dsj/Uan+z5NkxzbALOUN7N+1NIgs0qTXIqqq/BBtO3FJDxf
v6EGEMfxUS1ZPb1/OUjqeVTedrOqyBxXO0qSyjyAzWXjxnPvUbMkj+E/FQzWNLE8M6uY8i4M
zyu7vM2m+uGvAetbDOpCPzjFRwk+naPmgx7lgBX7QPeVKCvX0UL7lFRy5lCgwX2GUq+Krlem
Ce3pUAbsSzjY86Jxr1dAN+2iCA5PC3T6wabwFVtobtN29ldnE+fn4M/twYE1yOntpc10CCbw
xlOTiGoV2hiaAqaMZXmRK65GwXo4HwZgloNpY6Qk19eD7WFYBnlcZOw4gJTHJJhGaCx9+B3y
aRAMUsvj7E6fTg5UCYNM2QDnywYxkSFXYI5+fddZqTj1b2MSHYbQQNUjipK3tRmSRLDqgcGK
KmOKBWizgE0X/q6Gc8Bv5DT624PZ8zL2uJvfJSWLmAJiwmLWdyzYSOI9T6Ph1UVdF1ECuxLE
BFFVNP4F7mzgCTJzQSo0hcUrEB5nRHDKJZwJtYrHgcHr583CwSECilA3ma4TI+JEHFddAyqP
xf7qVVI0qWVRVcQqZ/CRwCGqqqnMI9AMKu62vZ6n+prO2p9lm4l6iQEw1F0ft6fLtqusoYiv
KddNC6ux+Jt9ZNIPTYpuYmR7p3d4U0yLSKprlMM4B8isTKxAeYWK1D+HE5fmqWijeoIHkyUd
KDGxPwhu4pq86euhc9k0cNgUs5guEvpN16jDiPqHF6jPu7H+FPTyB2XyCoT3tjVmoGicBYHL
q8RHL9aF44Bq9WuCbpa29aJ3HXCJ0F27yyIHo+Z1JewQA3pwjj8G8qQM+5a7F84U9Pt+uzt8
VVGyHp83r0++K4SSYJZq/Cy5RIPRK4+/yNOPbzARhMpTPVxXfgxSXLeJbD6dD0vGSK1eCedj
K1SMGNOUWKYiEL/nNhcY7fHIPqQUXcBnHASFaYGCu6wqzFRO+Rl+Bv8HcWxamKQWZjaCIzwY
SbbfNn8ets9GiHxVpA8avvfnQ9dlNGEPhi8P2khasUgJtgYhiPesGEjilagwj3qRqtsscs3M
FaioeUnBpeJVs3k8xSicScleK80qGOcOvs4/XZ5eTex9UMIJgW/XWO/uSopYXR0DDeElAAVp
FB1rG0HviHVjQXdQuSaypHbT2jsY1aauyGmeHF3GrFCvxdpcfyBSUKa6swnhfbpTZZHkdipx
5bNh3hpZaTBowdrlV1bI3uky++2FpJadsnJtH3qmEG8+vz09oV9Gsns97N+eN7sDja6O2VpQ
Vaqux0YR4OAcInMc8k/vf5xyVPoNLl+CeZ9bo5NVHql4T3bna38BDm7Sgj1yBiJ0IlB0Gb4d
O1JOwOdGHUCKJS9htdLv8TdnBxi4/7QWOQjledIkd7LTK250VkPs8fqi2srbgwgFU0Jpktp2
AYVhT4Tfmm573PTDAH+w8GGFZ+o13j9DudR0qlzKQHXHfEOBrDy6ZCRUcg5Lo4opVjlv5lDW
jSLBpEpUdBgL7rR26FRZFbDVRBeQeIZp1MSrtVswhQxKbINe70QLVr8776GRBqtyAv7nug79
QCoYxshMFgggKTAGv4c9Jrg/NNdp7QBsNcgpsUHJXOUTo0F1nIG5ybpyrpwG3QG6yXyIuiW3
BaEBVU39HqjSQY+bc2MQboDbxqRqWuEx/ABYh4NQDnDeYtKsF6X22qnNCJM1DDqI9LCQgaFp
pq2lcG9qfKrj3ED43GBE4LgaLaEXsLTLocb6pmWKrVcgy89rD4sPpFDezIuRiYH2Y6d3G9sx
U7ybnEoeY3AW3yJRR4r2mECik+Ll++u7k/Tl4evbd32CLe53T682R8lho8HZWhQlG3CD4vFA
baUVkDCJlDRbtCROIRqQWtyPDew2+m4PE4UFkSh+gjItMkqmavgdGtO003Egq9ipCpcbzWc0
UqgtqfoB2zQrWZpjDSZkwQa7NEODyUrGGrpFm2MmmppjM6trkJVAYooL6xmRsjrrwtkj6/hq
0O7bIOY8vqlMIOTgsViY86BZA23ZWcHUYyy6cLmy7bWLQ7+UsnSeahsuUUmZlX7sL+wJOX7/
8/p9u0MnMejk89th82MDf2wOD3/99RdNPFD0SVbmSvdzddaywvilzLNxjcCMW6qIHIY8ZAdX
BDgKQSaLdpW2kWt642N28Ri7zeaiPPlqpTFdDTJXKaj5xdS0qq23mBqqWuhwOPWUUDK81SCC
nenD/6cy9DWOtLrq5GK60kGD/YUP4rWtjDzyG7vJ6urD6ptZJXCadB3rmlYiafyoDf/LkuqL
VKEs0FyjztVxPG14l9MMdUad875RUkIfG2PsPapH6H/e5phUDnadNvgekXSWWtTx9ozmBF+1
6Pp4f7g/QZn1Aa9dPLUYr3CY3eg+L7eXrycwqlgEiXVroUQxUIZRXARZrmrL4WmExbACzXRb
FIGaLvMGVB4/0HEVtRxDM5s5at2ND6C+3/002kuy14iBDmMXcfDQIkYcSM7kO07VBiIUiZRK
PRytk1O7GLVE2OlHrLyuffMMbbh62eI+MB5DEFpj5o42HEFawqqU7BawlZoAo9rs20eCIrwG
oHl0ayVzVb4L4wbwWTNmeFMomkQQ5aXBPnAcC/0tFzxNb7Jy49IwyG6VNAs0t7pSG0dmAleg
Ye93yEXllWrQmQrVAtVGOu8pJcHACWqxIKWyhHiFoL/KrQMEDoGGKVO0g4xMVS5StyayTyhl
RZ22sxkdV3mDrllIb2mRuBRAgTVZ7rzZMGc9Gr/Z7njlGQD3rn4W3iW42ZNYqjyJp2dX5+ru
ADUUzlIpMO22HY1HgUgwcf440lR6yNRwBB7DUzptf/01nbrDCba25/9MoxerblqBEqtG9lg9
y1ky4x9NGgL9K6Bw97V5WcJdijKJZ3xaP0NQywgNNEeHBNgkZ8owaDcjuQFjiO0uw1jFWYzX
+3wswn6undBkx2hv2KfuBknkdwbRXbey5TVvFQ0sMeY12yhtGLqm8c7AH5cfuDPQkU88duvL
Lz6NFFV6298ZtDWxy6IfozHgKyWIhoKmXwXKiqfzwAc6yWdsv/iQswStFl58GefswkAreHcU
sgxgLHL38BmvhKFHeNeKMeSOiqEYlh6vT7r368v3TFUEb0/jgGjD1y8DTcC+am5P1FUO6p22
R3Apjt3bqE/VUXEEr9ZB+GZTj5KyBNupEssWX0CirnCkCW2+0kH6QMJgCh/QrtXfLwCD4fOh
buztQK/zms3rAcV+VI2jl/9u9vdPG2orWbb8CdGLuHiXVeBr1L/1BQc51jKeiDY9lw3yIpaO
HSx9TTDUdszouoyKG88eVYscwP25QzRBmxp/mcsIZSkXFZqGrXWlSPAaqGoz5ZDN3iFoKjjZ
BZw/nfJlfP/j/D38j4ivIG3g5XKj1Wsvyr8hAzZn3CncV7H8HHpPZ/W97f8DL3mtPSrgAQA=

--6c2NcOVqGQ03X4Wi--
