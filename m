Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTO4QKCAMGQEKSI7Y7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id F215D36756E
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 00:59:26 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id x5-20020a1fae050000b02901d9ecb9b8d3sf7231715vke.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 15:59:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619045966; cv=pass;
        d=google.com; s=arc-20160816;
        b=bsP6jOVLNnXfBZ697ttho8B08evZ1sfk2r+LsSPHGaf8VMRK11eBQqZuEZYDaWRbWe
         ZMMiw9uPjOb/AlJOrfmIS0RNECo35EtDJyeiHIW6md9w4JZZ+yMaUd0gq3dDsYwyjhpp
         qTprb1mHMSURJWRHTe8fF0ZfPzCm3xXB0XuIwQbhc2fmxcJX92i/oGw6oSoh4mzsB4ZI
         8hH7hxJlnZS7IoG2PLaEZiy+lNJ5yyDCNcu6PYJ/zDNzr7fZFz2N9MPCq2NsMtb1UQU5
         L7uVyugsAT5XQy8vXHz8Nv4mXykaK7FmqnEa5CEuoXvA6pJuXlNinWeR68EA3W3rsRhg
         E5SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/4dLXqUQi9gzcqZUIBpfko/sIshNGDzy8wFvOkda/KU=;
        b=oErRhgYyYUk4yzSuIW7xwsbyfTbOxrqMbMmW725hXAe5A7aVV2uMuvbPXfqYTBAfzB
         xSkgdNmkx0YZ/Fpgykno1/136gQpr8Q5YoU9XICKN4Gnl/WEPKvW5FU3qor3BkCGQ86A
         4i8ckptk9MguBI9Cg2COP8ZGAjDbyC3V4EN2FdR9aE11ZhFmHGO+EHVKNp9g/M3wp3bS
         tOq6UueR1tPnm1mSz58EG+0iyKQ37Qia6PMxPgKGCewAz4zOEljU7EszzBFa0qxjWiHy
         wj05S1go8dedhecTw0OAQYZ+AYFI/rt7EvfEzt84+IMgazNi3AA86kDifqeBxINDt8cy
         7VZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/4dLXqUQi9gzcqZUIBpfko/sIshNGDzy8wFvOkda/KU=;
        b=VwuXLObR8g4Nme3GPETLIThvIuOe/vLDUhLEQyAahgKPgnucPBEgtYyRCi+x7caouG
         cGFGXNsThLp1N7ioNa05vTCrNMsYTSs4D321LqE4OpoMITtdd81zlfQgYTGTZJQQIPy9
         Cb5GxqFyOaKhPvv1X+cpjRYWP0ckAl5CDnCNA+2oxSKSuzcDoPks270rF+aH04LHYkfw
         qOab2AKpIkSrKKFTLbHdR14wd/IoBe5UtYf7N1fwx4DqhPDxpz3svYmlrso3i0HOFtPe
         WcsZNccN4GlQeY6c8+MUfe1qXIWkNPSoeqieN8uPDqi7+E92fQA9cAZNR0hNEYfnvmr4
         QbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/4dLXqUQi9gzcqZUIBpfko/sIshNGDzy8wFvOkda/KU=;
        b=alX+7HXaZy5vF09xSs/XTME7RjuIk8GUPQtoWqrxGH+Qu1P+sBPUaAEAoR6VXqzDza
         kROTNcVGcrbVmEic525s6+L44mZ42TJdR6pyR47Cj2shoclrsQK4CJIaCnLo0TrGlapQ
         2xlh7EXgAP65NBWLCInK10VUM+eFmX+TW6WTqc/OPq+1V/zWNDp4QA7rDSw2dxiLeJz3
         pL73pduKO9lMinmRfw0OD3NiTBCbdKG57zaszaf8BJRiRHBs6ReLrbkAj0GKhQRgrl0J
         SnsJ6DDkDlc1HOC+pFHsVTUylYKnKdLHShxK85e9+BJcI1DP7aUC/7X08Y8L326pBSNj
         fm+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53333367OKQevRgiVN+o8Dz5iYcHdASgtpyuZZFtfukSRIVZpDVQ
	qR7kLEVNBYl/RQunfVKCY3s=
X-Google-Smtp-Source: ABdhPJyCcbGGZ0+HgyLTYmxKmcGONBo9NZuw4w50jFYwtVyh9mxSwQm/s5ZlC5azqAJt3Gw5numuJw==
X-Received: by 2002:a67:790c:: with SMTP id u12mr230845vsc.19.1619045965923;
        Wed, 21 Apr 2021 15:59:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f301:: with SMTP id p1ls651699vsf.10.gmail; Wed, 21 Apr
 2021 15:59:25 -0700 (PDT)
X-Received: by 2002:a67:7946:: with SMTP id u67mr185772vsc.48.1619045965203;
        Wed, 21 Apr 2021 15:59:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619045965; cv=none;
        d=google.com; s=arc-20160816;
        b=Vw95zbWxFMPMBj2SeKT/5+M8ICn8QdqUq4v1+5FnsYzyCNcyE6T30Z1wVs/zmyt6nM
         +ZYjqQoEoSMzhrpnUAFwIMkIdDq8ak3z6mI9Xzt59ws3hmKMIshkqwou/iq8BD6dugD0
         ccT8TRPOYN1hc+0zF0bWPlr+gT1H3hAtoizPvlierAoGWSo67P/YIzYJ3MWenLsT7szy
         Cdaf03lsrWyJhCG3Nk3+uywdYYqqBHv6glI9ZwonG4XeYeJvyzyhN8p7lSFdHh7BmepL
         TphTAwNHVOKOPg9dWA2fJhrVpacbXPgHrfJhpIVk39u5c95LE/Gmn4fDH4yq17fOPAgc
         bNAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=rEJq6xbEM6A+3Fm+ijHvLz18CJHuf2oz1K0zArcFa0A=;
        b=vwSCp+2h4vgohwAyGZYj4vb7MwVTymBWsuM3FakuVVF1NMNZS+UBzoD/gqTtLUJlaZ
         6Lm7cd+VkHm2okCiukUnmHUSelUsOPoVOEWUInld1EANmLlkCyP4V3xF2aAO+OehSNa+
         dNJaPf0WzhSeqgoJN8LdjLuRhRNqhgZT9vIndcOZCneI6i/v5E3gFNPpZta0Whxg/cdY
         UW+Sn8qIHxWug6Iw4KGht3DYUS/nXbBms6LvNzRuqcBB/lr/2AnqGfk72rfgHfyX36sX
         t5UUT6hDs1Pa36vxufzUGGulbEy88TnqzhdbGr8ha7PEzgiCDr/3kTkVb/CsRRhV/mA8
         trnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id h7si327950uad.1.2021.04.21.15.59.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 15:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: ohbwujHm1oot20VyDyGygEhDcxuncysQq8EXzZ7rXGiVpyIus7bWmmjuWa2xy0CitAEQNREvIj
 GRe7++NDPchQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="192605955"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="gz'50?scan'50,208,50";a="192605955"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 15:59:21 -0700
IronPort-SDR: wTDylb0oIN0SdraTBi8nqrQY+mWIcdON0MIPS0yrrKFwdSvPPzIuLpAnYPYn35Bj/QKoQ9+vdP
 FbcR8MUv4OKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="gz'50?scan'50,208,50";a="463739508"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 21 Apr 2021 15:59:19 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lZLoU-0003oR-7M; Wed, 21 Apr 2021 22:59:18 +0000
Date: Thu, 22 Apr 2021 06:58:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Maciej W. Rozycki" <macro@orcam.me.uk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-mips@linux-mips.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [mips-linux:mips-next 98/101] kernel/time/test_udelay.c:57:2: error:
 couldn't allocate output register for constraint 'x'
Message-ID: <202104220630.7IMcfLKi-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Maciej,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git mips-next
head:   182dd5bad52c66a54c300fe320b772456572bf23
commit: c49f71f60754acbff37505e1d16ca796bf8a8140 [98/101] MIPS: Reinstate platform `__div64_32' handler
config: mips-randconfig-r036-20210421 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d87b9b81ccb95217181ce75515c6c68bbb408ca4)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git/commit/?id=c49f71f60754acbff37505e1d16ca796bf8a8140
        git remote add mips-linux https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git
        git fetch --no-tags mips-linux mips-next
        git checkout c49f71f60754acbff37505e1d16ca796bf8a8140
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/time/test_udelay.c:57:2: error: couldn't allocate output register for constraint 'x'
           do_div(avg, iters);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
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
   kernel/time/hrtimer.c:276:20: warning: unused function 'is_migration_base' [-Wunused-function]
   static inline bool is_migration_base(struct hrtimer_clock_base *base)
                      ^
   kernel/time/hrtimer.c:1707:20: warning: unused function '__hrtimer_peek_ahead_timers' [-Wunused-function]
   static inline void __hrtimer_peek_ahead_timers(void)
                      ^
>> kernel/time/hrtimer.c:318:2: error: couldn't allocate output register for constraint 'x'
           do_div(tmp, (u32) div);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   6 warnings and 1 error generated.
--
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:13:
   In file included from include/linux/timex.h:56:
   In file included from include/uapi/linux/timex.h:56:
   In file included from include/linux/time.h:6:
>> include/linux/math64.h:256:14: error: couldn't allocate output register for constraint 'x'
           rl.l.high = do_div(rh.ll, divisor);
                       ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   In file included from kernel/time/timekeeping.c:6:
   In file included from include/linux/timekeeper_internal.h:10:
   In file included from include/linux/clocksource.h:13:
   In file included from include/linux/timex.h:56:
   In file included from include/uapi/linux/timex.h:56:
   In file included from include/linux/time.h:6:
   include/linux/math64.h:259:2: error: couldn't allocate output register for constraint 'x'
           do_div(rl.ll, divisor);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
>> kernel/time/timekeeping.c:328:2: error: couldn't allocate output register for constraint 'x'
           do_div(tmp, clock->mult);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   3 errors generated.
--
>> kernel/time/clocksource.c:67:3: error: couldn't allocate output register for constraint 'x'
                   do_div(tmp, from);
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   kernel/time/clocksource.c:675:2: error: couldn't allocate output register for constraint 'x'
           do_div(max_cycles, mult+maxadj);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   kernel/time/clocksource.c:869:3: error: couldn't allocate output register for constraint 'x'
                   do_div(sec, freq);
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   kernel/time/clocksource.c:870:3: error: couldn't allocate output register for constraint 'x'
                   do_div(sec, scale);
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   4 errors generated.
--
>> kernel/time/jiffies.c:112:2: error: couldn't allocate output register for constraint 'x'
           do_div(shift_hz, cycles_per_tick);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   kernel/time/jiffies.c:116:2: error: couldn't allocate output register for constraint 'x'
           do_div(nsec_per_tick, (u32)shift_hz);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   2 errors generated.
--
>> kernel/time/clockevents.c:72:2: error: couldn't allocate output register for constraint 'x'
           do_div(clc, evt->mult);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   1 error generated.
--
   In file included from block/partitions/core.c:12:
   In file included from include/linux/blktrace_api.h:5:
>> include/linux/blkdev.h:1499:27: error: couldn't allocate output register for constraint 'x'
           unsigned int alignment = sector_div(sector, granularity >> SECTOR_SHIFT)
                                    ^
   include/linux/math.h:121:26: note: expanded from macro 'sector_div'
   #define sector_div(a, b) do_div(a, b)
                            ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   In file included from block/partitions/core.c:12:
   In file included from include/linux/blktrace_api.h:5:
   include/linux/blkdev.h:1539:11: error: couldn't allocate output register for constraint 'x'
           offset = sector_div(sector, granularity);
                    ^
   include/linux/math.h:121:26: note: expanded from macro 'sector_div'
   #define sector_div(a, b) do_div(a, b)
                            ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   2 errors generated.
--
   In file included from drivers/mtd/mtdcore.c:32:
>> include/linux/mtd/mtd.h:572:2: error: couldn't allocate output register for constraint 'x'
           do_div(sz, mtd->erasesize);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   In file included from drivers/mtd/mtdcore.c:32:
   include/linux/mtd/mtd.h:580:9: error: couldn't allocate output register for constraint 'x'
           return do_div(sz, mtd->erasesize);
                  ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   In file included from drivers/mtd/mtdcore.c:32:
   include/linux/mtd/mtd.h:615:2: error: couldn't allocate output register for constraint 'x'
           do_div(sz, mtd->writesize);
           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   3 errors generated.
--
>> drivers/mtd/mtdconcat.c:861:7: error: couldn't allocate output register for constraint 'x'
                                                   do_div(tmp64, curr_erasesize);
                                                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/mtd/mtdconcat.c:842:6: error: couldn't allocate output register for constraint 'x'
                                           do_div(tmp64, curr_erasesize);
                                           ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/mtd/mtdconcat.c:880:3: error: couldn't allocate output register for constraint 'x'
                   do_div(tmp64, curr_erasesize);
                   ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/mtd/mtdconcat.c:202:7: error: couldn't allocate output register for constraint 'x'
                   if (do_div(__to, mtd->writesize) || (total_len % mtd->writesize))
                       ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   4 errors generated.
--
>> drivers/mtd/mtdpart.c:94:15: error: couldn't allocate output register for constraint 'x'
                   remainder = do_div(tmp, wr_alignment);
                               ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/mtd/mtdpart.c:176:14: error: couldn't allocate output register for constraint 'x'
           remainder = do_div(tmp, wr_alignment);
                       ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/mtd/mtdpart.c:187:14: error: couldn't allocate output register for constraint 'x'
           remainder = do_div(tmp, wr_alignment);
                       ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   3 errors generated.
--
>> drivers/mtd/sm_ftl.c:210:13: error: couldn't allocate output register for constraint 'x'
           *boffset = do_div(offset, ftl->block_size);
                      ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   drivers/mtd/sm_ftl.c:211:11: error: couldn't allocate output register for constraint 'x'
           *block = do_div(offset, ftl->max_lba);
                    ^
   include/asm-generic/div64.h:245:11: note: expanded from macro 'do_div'
                   __rem = __div64_32(&(n), __base);       \
                           ^
   arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
                   __asm__("divu   $0, %z1, %z2"                           \
                           ^
   2 errors generated.
..


vim +57 kernel/time/test_udelay.c

e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  27  
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  28  static int udelay_test_single(struct seq_file *s, int usecs, uint32_t iters)
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  29  {
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  30  	int min = 0, max = 0, fail_count = 0;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  31  	uint64_t sum = 0;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  32  	uint64_t avg;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  33  	int i;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  34  	/* Allow udelay to be up to 0.5% fast */
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  35  	int allowed_error_ns = usecs * 5;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  36  
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  37  	for (i = 0; i < iters; ++i) {
4a19bd3d22d51a kernel/time/test_udelay.c Arnd Bergmann 2016-06-17  38  		s64 kt1, kt2;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  39  		int time_passed;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  40  
4a19bd3d22d51a kernel/time/test_udelay.c Arnd Bergmann 2016-06-17  41  		kt1 = ktime_get_ns();
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  42  		udelay(usecs);
4a19bd3d22d51a kernel/time/test_udelay.c Arnd Bergmann 2016-06-17  43  		kt2 = ktime_get_ns();
4a19bd3d22d51a kernel/time/test_udelay.c Arnd Bergmann 2016-06-17  44  		time_passed = kt2 - kt1;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  45  
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  46  		if (i == 0 || time_passed < min)
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  47  			min = time_passed;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  48  		if (i == 0 || time_passed > max)
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  49  			max = time_passed;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  50  		if ((time_passed + allowed_error_ns) / 1000 < usecs)
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  51  			++fail_count;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  52  		WARN_ON(time_passed < 0);
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  53  		sum += time_passed;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  54  	}
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  55  
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  56  	avg = sum;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16 @57  	do_div(avg, iters);
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  58  	seq_printf(s, "%d usecs x %d: exp=%d allowed=%d min=%d avg=%lld max=%d",
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  59  			usecs, iters, usecs * 1000,
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  60  			(usecs * 1000) - allowed_error_ns, min, avg, max);
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  61  	if (fail_count)
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  62  		seq_printf(s, " FAIL=%d", fail_count);
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  63  	seq_puts(s, "\n");
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  64  
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  65  	return 0;
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  66  }
e704f93af5a083 kernel/time/udelay_test.c David Riley   2014-06-16  67  

:::::: The code at line 57 was first introduced by commit
:::::: e704f93af5a083c07b8f722672d63a1d908daf55 kernel: time: Add udelay_test module to validate udelay

:::::: TO: David Riley <davidriley@chromium.org>
:::::: CC: John Stultz <john.stultz@linaro.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104220630.7IMcfLKi-lkp%40intel.com.

--FL5UXtIhxfXey3p5
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--FL5UXtIhxfXey3p5--
