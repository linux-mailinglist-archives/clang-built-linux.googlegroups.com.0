Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMFS7D7AKGQEQIVD6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id E46082DF028
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 16:16:01 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id t17sf4310309qvv.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 07:16:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608390960; cv=pass;
        d=google.com; s=arc-20160816;
        b=qiQnsXZl+707cndOfT9VNvh7GUjzQ0TjmQHuip4JaFQC9tKWZFJ9zkbiQ0BGhUSRgc
         CrMAYZdI7mLCNPJ//v19OPF+nrcij5ckEEF0AVYln4ab+HaV7AQZnUc/UGC5dhMy+nq6
         1CraBGQ4reNEheAcVAZwItfCq4SWkFio/MSks5ScnhYRi/FO3s/jjx4u61hPwhtKtkOS
         oNmaWsyTl30LQJ9QInbcUeeyRAvUVRaauaGMfGUIOzv1VQnZkFRAsacH/f/1bSeV1bjg
         Bh+cchX2WdlPTTkUbUuvpHXICwJA+RWCfIXL7ArjIik5r3c0z3slgrB12ueaK5XKBh4V
         XLhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=JC5jKUFW+dH2vVEHdsnC8S+bLKBUiICmlo62X5FjL1g=;
        b=BEj4LwmfMxvvK9c8nSFj0oVemGfRnf/DaO0rQBCIXz4Vi9lEtNfmQI+sgjKlIVUZlF
         U2UV3av4+uRobfQcihUnYlTrw2veXNo+mdbHV8sobo1JvJNytp6+wjsAPctkXseFFNX1
         IMCIhlRQX7+9RtUWWHdEOK06NVOrsJ7RXlO1wtgXTJ9+ygEx1aGqBBNWmZ647EF7Mvy4
         VmUUBezBNgy+HfTG7F8S60IgSGPgw+BIcUr6vKzSx2JT+xI81ESV3zvYzxVp8fddVYJd
         WlbN1s125tJBzPZnP91fDJ94g8z1SEHDVoNLPD72YMyeQacIupPHMdUGDd8OtN9xBmiQ
         oVVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JC5jKUFW+dH2vVEHdsnC8S+bLKBUiICmlo62X5FjL1g=;
        b=mt5z5MK+EXR3TSuOlgRe0iGOp5QFX7+vzvf0ctgurOwL+1oV2WPtKGanzQauOmITSb
         d4dXKSLSr693cZTkaH8ZJmaZ78K8WNgk5K2BTNu0a2dsfimQX3gJ/4bLRjRruaKuyr3+
         vzyQa80aNbZ6EkoPCZ6zWPBxMSgc1iKkDl0Cd3thx0RscD3pEiF4++r6VyNC+1J8XkDi
         YwZBknRSbkKJTB2U8nzAHouOL68sE1NCkyZjIGqa1GQKbw3UazieV5EBz+OZMtWSe174
         5b/+py3gZ1uMvoXNsKSRrJs7ku8CfJR28XNBajLCjC8ALQXrNvX3iQW8fDIYEl49/S3Q
         WNrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JC5jKUFW+dH2vVEHdsnC8S+bLKBUiICmlo62X5FjL1g=;
        b=UrQRoqvobO5iNcOfU+m6jeQmQusL5XNJSOp7bTgxiWP3vSjfPXbsk6xncHkEAsKv5C
         WDctIkddo3AlMPZL74tNkeDJfX1GX/AaDaAbMkLQOq+QLeok2h7VT7xWM/W/hafQV0p2
         t7LrsmZ0pAP/UWEgxXGC2rF4NOYFLyctflhc9U61k+UNzo39fv7mG061LJF5jLg+Z1Zb
         DBm5QbTV2L/QG83bF1psgckiZR6RaDCjhRSmw2qe0jxSdO+urn+0ZDvIhJ+ILljVZbpG
         qfKsOi+i4kixJyRG5bjCkRVpcnAAMWHKQ+SsE7xI3wuAsxPVjsCCKxgoeiLd+unVN1Sy
         fabQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nmlOlSGhs/U9IKvIIQCijUArsv9RDzjj0b8dbTkG8EEk/HhH3
	+3hYf51vG3VuaN1zV6oP4Wk=
X-Google-Smtp-Source: ABdhPJx+y7ZQJUBnGaUe/AvBARyEa6+61XCRkgL97ySfTnHMeNep/AlWgYCqpe7lLiO6LzNsV30U0A==
X-Received: by 2002:a05:620a:1526:: with SMTP id n6mr10420859qkk.334.1608390960559;
        Sat, 19 Dec 2020 07:16:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edd6:: with SMTP id c205ls16778637qkg.10.gmail; Sat, 19
 Dec 2020 07:16:00 -0800 (PST)
X-Received: by 2002:a05:620a:2009:: with SMTP id c9mr10442531qka.159.1608390960021;
        Sat, 19 Dec 2020 07:16:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608390960; cv=none;
        d=google.com; s=arc-20160816;
        b=p8qBHD3GnZOK67G58x7IMKUZIj0Tu3RdvGMr0AWOlttIvzCsQZYzgXYQtu7SnWiSo5
         3uzVE98ni2flcJIi5/Od9ASz+CRWXj8jYhe4/on+XIW1yrlc/S/q3fJ7lOqHGgTmg38O
         UVes33FFRWOx5AxidXR8YhATsjUP5kQ7xzasgBzOw5TLMxCnz2gAcnfAfxv6kv2YBQ4z
         Pw/DDKzo3CpMRGQAdR1WDvmb1BaSYBwQ95jZhLVTZOrJ8vuZiaR2ZDe6wYd9m2O/pBsO
         ugFMbyGQuwKRJjrHX5bZSZfawHVmPYd0ANT56kvwwF4s042H82h7R2iq9d3SLSQvwQXq
         YrdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5sUyEOwFrZlCcDAcWHGOi4l7ayAKBHe29bEXwy9/p0k=;
        b=ctmN93WH2Yj0he8c/YoRr69w05KjRaH4kjxwRkfTXynllMieQtHWA43Krl0LHdYnxw
         LPo/n5ytNxwibMAktobYfSZDo5oAujm8EfItrQCXnjHcFyihoSZKNnMuj9mlOJ2tyA1K
         unA66V3o/hjgm3IqO5CKoVvzQbEiRCCL9srtJMDJ1M5u4Bai0xVBbLfajWDneAZ67Uxf
         TesyXz3TWykCGXWdJfuojweQxOg5c9LzUnzdwvpmleokJ+vBA2Ku3EmQeaoy6rXlhF1p
         iw0KCGJT/jMLFYjNM1zjngmYFPJ09qfW+PGLqJuyIPUsmI+5kOwZeg7yR/a2h/gJyxzk
         ViWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id f16si1004543qkg.3.2020.12.19.07.15.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 07:15:59 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 8kPVNZS3cWFpU3ctRUwIRNbPELItJczSLGcSi1mDyHq0lMxI96gnye3MA/j3qfqWRZPl2H6nqK
 fLomiHFxk+jA==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="174808891"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="gz'50?scan'50,208,50";a="174808891"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 07:15:57 -0800
IronPort-SDR: IGR5oE1aHODRIMYrjs1KrMDpsX3r0JhwYtpotZYw7EOOftFjdbz3I+ynCgnCiLcvl50lSqOIrA
 fcxdiBpwL+QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="gz'50?scan'50,208,50";a="343892528"
Received: from lkp-server02.sh.intel.com (HELO c4fb2a2464e8) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 19 Dec 2020 07:15:55 -0800
Received: from kbuild by c4fb2a2464e8 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kqdxa-0000th-P1; Sat, 19 Dec 2020 15:15:54 +0000
Date: Sat, 19 Dec 2020 23:15:25 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>
Subject: [peterz-queue:locking/core 23/23]
 include/linux/spinlock_api_smp.h:160:2: error: implicit declaration of
 function 'check_bogus_irq_restore'
Message-ID: <202012192314.8paQhcdc-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yrj/dFKFPuw6o+aM"
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


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/core
head:   0182cedcf7301c3d8659a10f04326945518f8652
commit: 0182cedcf7301c3d8659a10f04326945518f8652 [23/23] lockdep: report broken irq restoration
config: powerpc-randconfig-r013-20201217 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=0182cedcf7301c3d8659a10f04326945518f8652
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue locking/core
        git checkout 0182cedcf7301c3d8659a10f04326945518f8652
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:14:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:5:
   In file included from include/linux/spinlock.h:318:
>> include/linux/spinlock_api_smp.h:160:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:14:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:5:
   In file included from include/linux/spinlock.h:318:
   In file included from include/linux/spinlock_api_smp.h:190:
>> include/linux/rwlock_api_smp.h:235:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:14:
   In file included from include/linux/sem.h:5:
   In file included from include/uapi/linux/sem.h:5:
   In file included from include/linux/ipc.h:5:
   In file included from include/linux/spinlock.h:318:
   In file included from include/linux/spinlock_api_smp.h:190:
   include/linux/rwlock_api_smp.h:259:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
>> include/linux/seqlock.h:105:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           local_irq_restore(flags);
           ^
   include/linux/irqflags.h:212:3: note: expanded from macro 'local_irq_restore'
                   raw_local_irq_restore(flags);           \
                   ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
   include/linux/seqlock.h:271:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           lockdep_assert_preemption_disabled();
           ^
   include/linux/lockdep.h:592:8: note: expanded from macro 'lockdep_assert_preemption_disabled'
                        __lockdep_enabled                  &&              \
                        ^
   include/linux/lockdep.h:564:44: note: expanded from macro '__lockdep_enabled'
   #define __lockdep_enabled       (debug_locks && !this_cpu_read(lockdep_recursion))
                                                    ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(___flags);                                \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
   include/linux/seqlock.h:271:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/lockdep.h:592:8: note: expanded from macro 'lockdep_assert_preemption_disabled'
                        __lockdep_enabled                  &&              \
                        ^
   include/linux/lockdep.h:564:44: note: expanded from macro '__lockdep_enabled'
   #define __lockdep_enabled       (debug_locks && !this_cpu_read(lockdep_recursion))
                                                    ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(___flags);                                \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
   include/linux/seqlock.h:271:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/lockdep.h:592:8: note: expanded from macro 'lockdep_assert_preemption_disabled'
                        __lockdep_enabled                  &&              \
                        ^
   include/linux/lockdep.h:564:44: note: expanded from macro '__lockdep_enabled'
   #define __lockdep_enabled       (debug_locks && !this_cpu_read(lockdep_recursion))
                                                    ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(___flags);                                \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
   include/linux/seqlock.h:271:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/lockdep.h:592:8: note: expanded from macro 'lockdep_assert_preemption_disabled'
                        __lockdep_enabled                  &&              \
                        ^
   include/linux/lockdep.h:564:44: note: expanded from macro '__lockdep_enabled'
   #define __lockdep_enabled       (debug_locks && !this_cpu_read(lockdep_recursion))
                                                    ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   note: (skipping 3 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
--
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
   include/linux/seqlock.h:271:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/lockdep.h:594:9: note: expanded from macro 'lockdep_assert_preemption_disabled'
                         this_cpu_read(hardirqs_enabled)));                \
                         ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:321:23: note: expanded from macro '__pcpu_size_call_return'
           case 1: pscr_ret__ = stem##1(variable); break;                  \
                                ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(___flags);                                \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
   include/linux/seqlock.h:271:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/lockdep.h:594:9: note: expanded from macro 'lockdep_assert_preemption_disabled'
                         this_cpu_read(hardirqs_enabled)));                \
                         ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:322:23: note: expanded from macro '__pcpu_size_call_return'
           case 2: pscr_ret__ = stem##2(variable); break;                  \
                                ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(___flags);                                \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
   include/linux/seqlock.h:271:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/lockdep.h:594:9: note: expanded from macro 'lockdep_assert_preemption_disabled'
                         this_cpu_read(hardirqs_enabled)));                \
                         ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:323:23: note: expanded from macro '__pcpu_size_call_return'
           case 4: pscr_ret__ = stem##4(variable); break;                  \
                                ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(___flags);                                \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:8:
   In file included from include/linux/dcache.h:10:
   include/linux/seqlock.h:271:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/lockdep.h:594:9: note: expanded from macro 'lockdep_assert_preemption_disabled'
                         this_cpu_read(hardirqs_enabled)));                \
                         ^
   include/linux/percpu-defs.h:507:29: note: expanded from macro 'this_cpu_read'
   #define this_cpu_read(pcp)              __pcpu_size_call_return(this_cpu_read_, pcp)
                                           ^
   include/linux/percpu-defs.h:324:23: note: expanded from macro '__pcpu_size_call_return'
           case 8: pscr_ret__ = stem##8(variable); break;                  \
                                ^
   note: (skipping 2 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/asm-generic/percpu.h:140:11: note: expanded from macro 'this_cpu_generic_read'
                   __ret = __this_cpu_generic_read_noirq(pcp);             \
                           ^
   include/asm-generic/percpu.h:130:2: note: expanded from macro '__this_cpu_generic_read_noirq'
           raw_local_irq_restore(___flags);                                \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:102:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           this_cpu_write(numa_node, node);
           ^
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
                   case 1: stem##1(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:177:1: note: expanded from here
   this_cpu_write_1
   ^
   include/asm-generic/percpu.h:333:36: note: expanded from macro 'this_cpu_write_1'
   #define this_cpu_write_1(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:102:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
                   case 2: stem##2(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:178:1: note: expanded from here
   this_cpu_write_2
   ^
   include/asm-generic/percpu.h:336:36: note: expanded from macro 'this_cpu_write_2'
   #define this_cpu_write_2(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:102:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
                   case 4: stem##4(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:179:1: note: expanded from here
   this_cpu_write_4
   ^
   include/asm-generic/percpu.h:339:36: note: expanded from macro 'this_cpu_write_4'
   #define this_cpu_write_4(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:102:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:380:11: note: expanded from macro '__pcpu_size_call'
                   case 8: stem##8(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:180:1: note: expanded from here
   this_cpu_write_8
   ^
   include/asm-generic/percpu.h:342:36: note: expanded from macro 'this_cpu_write_8'
   #define this_cpu_write_8(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:137:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
           this_cpu_write(_numa_mem_, node);
           ^
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:377:11: note: expanded from macro '__pcpu_size_call'
                   case 1: stem##1(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:182:1: note: expanded from here
   this_cpu_write_1
   ^
   include/asm-generic/percpu.h:333:36: note: expanded from macro 'this_cpu_write_1'
   #define this_cpu_write_1(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:137:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:378:11: note: expanded from macro '__pcpu_size_call'
                   case 2: stem##2(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:183:1: note: expanded from here
   this_cpu_write_2
   ^
   include/asm-generic/percpu.h:336:36: note: expanded from macro 'this_cpu_write_2'
   #define this_cpu_write_2(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   In file included from arch/powerpc/kernel/asm-offsets.c:14:
   In file included from include/linux/compat.h:17:
   In file included from include/linux/fs.h:15:
   In file included from include/linux/radix-tree.h:19:
   In file included from include/linux/xarray.h:14:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:137:2: error: implicit declaration of function 'check_bogus_irq_restore' [-Werror,-Wimplicit-function-declaration]
   include/linux/percpu-defs.h:508:34: note: expanded from macro 'this_cpu_write'
   #define this_cpu_write(pcp, val)        __pcpu_size_call(this_cpu_write_, pcp, val)
                                           ^
   include/linux/percpu-defs.h:379:11: note: expanded from macro '__pcpu_size_call'
                   case 4: stem##4(variable, __VA_ARGS__);break;           \
                           ^
   <scratch space>:184:1: note: expanded from here
   this_cpu_write_4
   ^
   include/asm-generic/percpu.h:339:36: note: expanded from macro 'this_cpu_write_4'
   #define this_cpu_write_4(pcp, val)      this_cpu_generic_to_op(pcp, val, =)
                                           ^
   include/asm-generic/percpu.h:149:2: note: expanded from macro 'this_cpu_generic_to_op'
           raw_local_irq_restore(__flags);                                 \
           ^
   include/linux/irqflags.h:165:3: note: expanded from macro 'raw_local_irq_restore'
                   check_bogus_irq_restore();              \
                   ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.
..


vim +/check_bogus_irq_restore +160 include/linux/spinlock_api_smp.h

69d0ee7377eef80 Heiko Carstens  2009-08-31  154  
9c1721aa4994f66 Thomas Gleixner 2009-12-03  155  static inline void __raw_spin_unlock_irqrestore(raw_spinlock_t *lock,
69d0ee7377eef80 Heiko Carstens  2009-08-31  156  					    unsigned long flags)
69d0ee7377eef80 Heiko Carstens  2009-08-31  157  {
5facae4f3549b5c Qian Cai        2019-09-19  158  	spin_release(&lock->dep_map, _RET_IP_);
9828ea9d75c38fe Thomas Gleixner 2009-12-03  159  	do_raw_spin_unlock(lock);
69d0ee7377eef80 Heiko Carstens  2009-08-31 @160  	local_irq_restore(flags);
69d0ee7377eef80 Heiko Carstens  2009-08-31  161  	preempt_enable();
69d0ee7377eef80 Heiko Carstens  2009-08-31  162  }
69d0ee7377eef80 Heiko Carstens  2009-08-31  163  

:::::: The code at line 160 was first introduced by commit
:::::: 69d0ee7377eef808e34ba5542b554ec97244b871 locking: Move spinlock function bodies to header file

:::::: TO: Heiko Carstens <heiko.carstens@de.ibm.com>
:::::: CC: Ingo Molnar <mingo@elte.hu>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012192314.8paQhcdc-lkp%40intel.com.

--yrj/dFKFPuw6o+aM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--yrj/dFKFPuw6o+aM--
