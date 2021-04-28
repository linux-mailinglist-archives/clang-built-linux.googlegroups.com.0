Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNM5UOCAMGQEE4LAJPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B5536D0B6
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 04:55:51 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id x81-20020aca31540000b02901875846142bsf11872343oix.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 19:55:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619578549; cv=pass;
        d=google.com; s=arc-20160816;
        b=1FUb03wm1GrirjBRmUiaXmPNDjigCz9JaPyyHHglPMvLkSUULzu3HIWqPSb0kIkN2n
         oSZP5/Zz6+eo9wrle5Hxp8pTIh4ddmo4HgcIEbKfHg7el6jj0QS9FcPlZPuCRXskgxSh
         F8QbKC6VWBFs0pszuEl3PSDluARivnpN7eDiczISq0E2ijsksocMuw/Maspo/d3u3Y1A
         nLHR+IKcM6jqmE7ORtPAtoqq+pHP7bxxdDMBdkr7ACDd/PCit84rSGn5Op9t11FOl8bS
         BdqdcsEdxd0AxSp8YqcSUg/7BiAq6PFqnFalS+3nV0+NvyMuhB1Sl9u96g9pPKMAySlf
         C1Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Jm0xlSeJUaL7/YsZcDZKt+w45cqdTCFxal/5aRAak/I=;
        b=ccO5uWhLj0Z3rFgucwfRf4bwdnpcEhdijaqe05pdQrUjcGfynKtzlBhEOFDRbL5l5s
         6j0bVvNFQsrDAT3Kk/2+h9NBxDi5AcBwAmKG0giQ7Bd92sBwAoVdStaZNbrtyKPyXo8P
         c8UksFdtUdejxxybV2gLjC2HvzafnezjVV0n7aCkaKDgVsHY1bj6gSZtfrXriT+u9yPT
         U9bqIeRSgLaLGX9/leJR+Xb4Hp57IPRgS7nza/iycJaYQnVgRICD4v8PlIcCM+Qukr1p
         6MEZm4QjoNQvx/WPQoLLAxjAzH6qAqJhwgABOnmHwtnb9HUq1l9Pe6RFdJEZWtMi8USn
         O1UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jm0xlSeJUaL7/YsZcDZKt+w45cqdTCFxal/5aRAak/I=;
        b=pgh803JqbfKnpMflqEAFi6+fg6m0JG2ab1gU0Sqw3iitClomN6Xk+VFXL0opt0ksqc
         q+qEGaMPNPrbhSwQIp5KNnvvFNhnOXwj6V7f1TytITEq53kpLAFkHxw6NBl2qb+bKgD3
         NEAkrwxhFBhqbb/rr8dn4lyjgbvaWQ0On8/0V8FbVu3X2eALK0z0vmzcpQxQJncDyyaW
         jNUz5dKsb2GH0QzGILOd14J6173571O28PaBVaixgYFfuBZdA6ET3WHam5t+HgihVpOx
         m7j/XxCZclHwslkr9XJ1qPVrx5t/8efeBzxXgJxQ4xJwNYOeh4ESxgnBKcpoyVq1L0/f
         7q8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Jm0xlSeJUaL7/YsZcDZKt+w45cqdTCFxal/5aRAak/I=;
        b=PkHuhFcch7DkktUzTOgeZDsr8ohRDqUX+CgXtYPDVTmDIYO+Z4Gz2fADiVIFSKebKC
         6OQi/l/FOnz9oF185MrizpnXIZSnR5P6xYBBXlc3+gfvVC5n6joaI0BKkr0nGc3Xm9/n
         4ha8pW3UXt+iZSc7vdrVluAOTu6JY84foKzzgDtl/Q6XmAIC+xV7/i1PpRFCzcpiGQyk
         kv8e4cYUjG8qbpF1v3GFy6/RTZ196ESe3Uk7G+b9WxiZfln9988ikWb70G9x5SZZiTMf
         UX1NDnFBX1aLwfRk3ZQfaH6roZr5icyfQNzN+g+W9/dZH87jAnuEb+41gM7lc34F/RhM
         jYdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333fwk1WR9720RGBpj3SWmGx/ciBixfLDxntk1gh7TpxCACGnZ7
	ER1pNRR6pGRllZPI5TF/vLQ=
X-Google-Smtp-Source: ABdhPJwI/PjYEUjDkejRc7N3FH3ngQ/wJcLVm5nUm+cixPdmh/zApaYZIH9aUKzTODo7KQKTG2FIzA==
X-Received: by 2002:a05:6830:400f:: with SMTP id h15mr22241142ots.32.1619578549405;
        Tue, 27 Apr 2021 19:55:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:71cf:: with SMTP id z15ls6444291otj.2.gmail; Tue, 27 Apr
 2021 19:55:49 -0700 (PDT)
X-Received: by 2002:a9d:71c2:: with SMTP id z2mr21735600otj.51.1619578548817;
        Tue, 27 Apr 2021 19:55:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619578548; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQrFxZiGb2I7XUFzRQ/8UKRYIWt0KKD3C2hEe5T5Cn5DqiWu5J8N4RRNu2w8y0e3pF
         E5hP6kNnEc0WlxsVr2jyoBKXZfP1Uv5CcOoknxBQMbgYcafybAjPZ+KrIo9DBseglOfE
         y/wPZoi8b1RVK44qlDUyM3Ri2in0zYfbSaWS6v+Rwn9VeZZvWfUbx2OwPvr6bhwibScy
         PLR81OaYGi7w6JTtpc60y/Iv2C2sv+Jr6M5qdLEWGwhJBS+QUZV/AobKQ3b9zvzCODIJ
         +9GSTWlvUi0DtVJiR6yajAxHfg3J3h5XRM7rq8E6v79HNogBdhpEADDLjTea/KlxuRhc
         9qZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=lXF6zreXCx6vL2K7+ui9rBOap7ix7Or/rY//ni8EmkA=;
        b=pUnjCnWSXSrt9GQt1ZkUfqlWK35k9PHTS5MZWDWfDvO82BuBSruID37q63LTwbnXTJ
         8g+qQw9atLUMZGHVkC5cUXy/L7Of/iZsykW2OS3k6a9Pabm0a/Vs4bXH+sT8fxEb+QOB
         sGzKxWGx0CAye8z0kEZCR1kLrOwMPEr3IhKiLBDrB7Tf7WG+Sm21L/HluqArM2EcWJfG
         rOC8V4uba1UjEY02K9YP3peAhHjiHPnw+6IYP2SGJeug5+7Lkmhe2+5K8LcQ3HUkg2eA
         qxlUsZ6WmnmYKqQOYSZRxHnb8JbLEb0/Jn8sxS7X48kxs3vVX196zeurZm9FQC4p/Orv
         NQfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id q19si1878706oot.1.2021.04.27.19.55.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 19:55:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: Yrz4oeICxeBytj4M5w19rpTYsQK/5ZoKxSV6jubCcL/UYA4XwIu3bEJDKH+Pd5Lnf+uA1+OFQY
 DEBdCNpWlI2A==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="260593266"
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; 
   d="gz'50?scan'50,208,50";a="260593266"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2021 19:55:47 -0700
IronPort-SDR: wm0gGL9UUdM+sZJq5KocF3cGclIn7BkytbEL5ZD/1zelZFQx55Z4IkelSAxVQOkkWYNxczhfAV
 0nTyPTNdwwDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; 
   d="gz'50?scan'50,208,50";a="604727269"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 27 Apr 2021 19:55:45 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lbaMa-0006tt-Ht; Wed, 28 Apr 2021 02:55:44 +0000
Date: Wed, 28 Apr 2021 10:55:35 +0800
From: kernel test robot <lkp@intel.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [mark-rutland:atomics/arch-atomic 21/25]
 include/asm-generic/atomic-instrumented.h:1639:9: error: implicit
 declaration of function 'arch_atomic64_sub_if_positive'
Message-ID: <202104281034.iZmilvDF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7AUc2qLy4jB3hD7Z"
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


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git atomics/arch-atomic
head:   a01b575b1e6ed7458c510cc9f67ca8f48dadb1e4
commit: adffc629f57d9f7aa66206c53318f063e9eadb03 [21/25] locking/atomic: mips: move to the arch_atomic API
config: mips-randconfig-r015-20210428 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 87fc97169e7901dfe56ca0da0d92da0c02d2ef48)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/commit/?id=adffc629f57d9f7aa66206c53318f063e9eadb03
        git remote add mark-rutland https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git
        git fetch --no-tags mark-rutland atomics/arch-atomic
        git checkout adffc629f57d9f7aa66206c53318f063e9eadb03
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: error: implicit declaration of function 'cmpxchg' [-Werror,-Wimplicit-function-declaration]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:41:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/atomic.h:49:1: note: did you mean '__cmpxchg'?
   arch/mips/include/asm/atomic.h:41:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:153:15: note: '__cmpxchg' declared here
   unsigned long __cmpxchg(volatile void *ptr, unsigned long old,
                 ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: error: implicit declaration of function 'xchg' [-Werror,-Wimplicit-function-declaration]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:46:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/atomic.h:53:1: error: implicit declaration of function 'cmpxchg' [-Werror,-Wimplicit-function-declaration]
   ATOMIC_OPS(atomic64, s64)
   ^
   arch/mips/include/asm/atomic.h:41:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/atomic.h:53:1: error: implicit declaration of function 'xchg' [-Werror,-Wimplicit-function-declaration]
   arch/mips/include/asm/atomic.h:46:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/atomic.h:264:1: error: conflicting types for 'arch_fx_sub_if_positive'
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:209:23: note: expanded from macro 'ATOMIC_SIP_OP'
   static __inline__ int arch_##fx##_sub_if_positive(type i, pfx##_t * v)  \
                         ^
   <scratch space>:24:1: note: expanded from here
   arch_fx_sub_if_positive
   ^
   arch/mips/include/asm/atomic.h:260:1: note: previous definition is here
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:209:23: note: expanded from macro 'ATOMIC_SIP_OP'
   static __inline__ int arch_##fx##_sub_if_positive(type i, pfx##_t * v)  \
                         ^
   <scratch space>:12:1: note: expanded from here
   arch_fx_sub_if_positive
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:82:
   include/asm-generic/atomic-instrumented.h:829:9: error: implicit declaration of function 'arch_atomic_sub_if_positive' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic_dec_if_positive(v);
                  ^
   arch/mips/include/asm/atomic.h:261:40: note: expanded from macro 'arch_atomic_dec_if_positive'
   #define arch_atomic_dec_if_positive(v)  arch_atomic_sub_if_positive(1, v)
                                           ^
   include/asm-generic/atomic-instrumented.h:829:9: note: did you mean 'arch_fx_sub_if_positive'?
   arch/mips/include/asm/atomic.h:261:40: note: expanded from macro 'arch_atomic_dec_if_positive'
   #define arch_atomic_dec_if_positive(v)  arch_atomic_sub_if_positive(1, v)
                                           ^
   arch/mips/include/asm/atomic.h:260:1: note: 'arch_fx_sub_if_positive' declared here
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:209:23: note: expanded from macro 'ATOMIC_SIP_OP'
   static __inline__ int arch_##fx##_sub_if_positive(type i, pfx##_t * v)  \
                         ^
   <scratch space>:12:1: note: expanded from here
   arch_fx_sub_if_positive
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:82:
>> include/asm-generic/atomic-instrumented.h:1639:9: error: implicit declaration of function 'arch_atomic64_sub_if_positive' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_dec_if_positive(v);
                  ^
   arch/mips/include/asm/atomic.h:265:42: note: expanded from macro 'arch_atomic64_dec_if_positive'
   #define arch_atomic64_dec_if_positive(v)        arch_atomic64_sub_if_positive(1, v)
                                                   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:87:
>> include/asm-generic/atomic-long.h:389:9: error: implicit declaration of function 'atomic64_xchg' [-Werror,-Wimplicit-function-declaration]
           return atomic64_xchg(v, i);
                  ^
   include/asm-generic/atomic-long.h:389:9: note: did you mean 'atomic64_xor'?
   include/asm-generic/atomic-instrumented.h:1373:1: note: 'atomic64_xor' declared here
   atomic64_xor(s64 i, atomic64_t *v)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:87:
>> include/asm-generic/atomic-long.h:413:9: error: implicit declaration of function 'atomic64_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           return atomic64_cmpxchg(v, old, new);
                  ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:28:
   include/linux/page_ref.h:175:19: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           int ret = likely(atomic_cmpxchg(&page->_refcount, count, 0) == count);
                            ^
   include/linux/page_ref.h:175:19: note: did you mean 'atomic_try_cmpxchg'?
   include/asm-generic/atomic-instrumented.h:692:1: note: 'atomic_try_cmpxchg' declared here
   atomic_try_cmpxchg(atomic_t *v, int *old, int new)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   include/linux/blk-cgroup.h:554:13: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
                   int cur = atomic_cmpxchg(&blkg->use_delay, old, old - 1);
                             ^
   include/linux/blk-cgroup.h:581:14: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           if (!old && atomic_cmpxchg(&blkg->use_delay, old, -1) == old)
                       ^
   include/linux/blk-cgroup.h:598:13: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           if (old && atomic_cmpxchg(&blkg->use_delay, old, 0) == old)
                      ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:110:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:138:6: warning: no previous prototype for function 'output_thread_fpu_defines' [-Wmissing-prototypes]
   void output_thread_fpu_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:138:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_fpu_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:181:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:181:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:242:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:242:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:255:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:348:6: warning: no previous prototype for function 'output_kvm_defines' [-Wmissing-prototypes]
   void output_kvm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:348:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_kvm_defines(void)
   ^
   static 
   9 warnings and 13 errors generated.
--
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: error: implicit declaration of function 'cmpxchg' [-Werror,-Wimplicit-function-declaration]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:41:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/atomic.h:49:1: note: did you mean '__cmpxchg'?
   arch/mips/include/asm/atomic.h:41:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/cmpxchg.h:153:15: note: '__cmpxchg' declared here
   unsigned long __cmpxchg(volatile void *ptr, unsigned long old,
                 ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:49:1: error: implicit declaration of function 'xchg' [-Werror,-Wimplicit-function-declaration]
   ATOMIC_OPS(atomic, int)
   ^
   arch/mips/include/asm/atomic.h:46:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/atomic.h:53:1: error: implicit declaration of function 'cmpxchg' [-Werror,-Wimplicit-function-declaration]
   ATOMIC_OPS(atomic64, s64)
   ^
   arch/mips/include/asm/atomic.h:41:9: note: expanded from macro 'ATOMIC_OPS'
           return cmpxchg(&v->counter, o, n);                              \
                  ^
   arch/mips/include/asm/atomic.h:53:1: error: implicit declaration of function 'xchg' [-Werror,-Wimplicit-function-declaration]
   arch/mips/include/asm/atomic.h:46:9: note: expanded from macro 'ATOMIC_OPS'
           return xchg(&v->counter, n);                                    \
                  ^
   arch/mips/include/asm/atomic.h:264:1: error: conflicting types for 'arch_fx_sub_if_positive'
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:209:23: note: expanded from macro 'ATOMIC_SIP_OP'
   static __inline__ int arch_##fx##_sub_if_positive(type i, pfx##_t * v)  \
                         ^
   <scratch space>:24:1: note: expanded from here
   arch_fx_sub_if_positive
   ^
   arch/mips/include/asm/atomic.h:260:1: note: previous definition is here
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:209:23: note: expanded from macro 'ATOMIC_SIP_OP'
   static __inline__ int arch_##fx##_sub_if_positive(type i, pfx##_t * v)  \
                         ^
   <scratch space>:12:1: note: expanded from here
   arch_fx_sub_if_positive
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:82:
   include/asm-generic/atomic-instrumented.h:829:9: error: implicit declaration of function 'arch_atomic_sub_if_positive' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic_dec_if_positive(v);
                  ^
   arch/mips/include/asm/atomic.h:261:40: note: expanded from macro 'arch_atomic_dec_if_positive'
   #define arch_atomic_dec_if_positive(v)  arch_atomic_sub_if_positive(1, v)
                                           ^
   include/asm-generic/atomic-instrumented.h:829:9: note: did you mean 'arch_fx_sub_if_positive'?
   arch/mips/include/asm/atomic.h:261:40: note: expanded from macro 'arch_atomic_dec_if_positive'
   #define arch_atomic_dec_if_positive(v)  arch_atomic_sub_if_positive(1, v)
                                           ^
   arch/mips/include/asm/atomic.h:260:1: note: 'arch_fx_sub_if_positive' declared here
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
   ^
   arch/mips/include/asm/atomic.h:209:23: note: expanded from macro 'ATOMIC_SIP_OP'
   static __inline__ int arch_##fx##_sub_if_positive(type i, pfx##_t * v)  \
                         ^
   <scratch space>:12:1: note: expanded from here
   arch_fx_sub_if_positive
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:82:
>> include/asm-generic/atomic-instrumented.h:1639:9: error: implicit declaration of function 'arch_atomic64_sub_if_positive' [-Werror,-Wimplicit-function-declaration]
           return arch_atomic64_dec_if_positive(v);
                  ^
   arch/mips/include/asm/atomic.h:265:42: note: expanded from macro 'arch_atomic64_dec_if_positive'
   #define arch_atomic64_dec_if_positive(v)        arch_atomic64_sub_if_positive(1, v)
                                                   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:87:
>> include/asm-generic/atomic-long.h:389:9: error: implicit declaration of function 'atomic64_xchg' [-Werror,-Wimplicit-function-declaration]
           return atomic64_xchg(v, i);
                  ^
   include/asm-generic/atomic-long.h:389:9: note: did you mean 'atomic64_xor'?
   include/asm-generic/atomic-instrumented.h:1373:1: note: 'atomic64_xor' declared here
   atomic64_xor(s64 i, atomic64_t *v)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:60:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:13:
   In file included from include/linux/cpumask.h:13:
   In file included from include/linux/atomic.h:87:
>> include/asm-generic/atomic-long.h:413:9: error: implicit declaration of function 'atomic64_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           return atomic64_cmpxchg(v, old, new);
                  ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:28:
   include/linux/page_ref.h:175:19: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           int ret = likely(atomic_cmpxchg(&page->_refcount, count, 0) == count);
                            ^
   include/linux/page_ref.h:175:19: note: did you mean 'atomic_try_cmpxchg'?
   include/asm-generic/atomic-instrumented.h:692:1: note: 'atomic_try_cmpxchg' declared here
   atomic_try_cmpxchg(atomic_t *v, int *old, int new)
   ^
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   include/linux/blk-cgroup.h:554:13: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
                   int cur = atomic_cmpxchg(&blkg->use_delay, old, old - 1);
                             ^
   include/linux/blk-cgroup.h:581:14: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           if (!old && atomic_cmpxchg(&blkg->use_delay, old, -1) == old)
                       ^
   include/linux/blk-cgroup.h:598:13: error: implicit declaration of function 'atomic_cmpxchg' [-Werror,-Wimplicit-function-declaration]
           if (old && atomic_cmpxchg(&blkg->use_delay, old, 0) == old)
                      ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:93:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:93:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:110:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:138:6: warning: no previous prototype for function 'output_thread_fpu_defines' [-Wmissing-prototypes]
   void output_thread_fpu_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:138:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_fpu_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:181:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:181:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:242:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:242:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:255:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:348:6: warning: no previous prototype for function 'output_kvm_defines' [-Wmissing-prototypes]
   void output_kvm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:348:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_kvm_defines(void)
   ^
   static 
   9 warnings and 13 errors generated.
   make[2]: *** [scripts/Makefile.build:116: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target 'missing-syscalls' not remade because of errors.
   make[1]: *** [arch/mips/Makefile:421: archprepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +/arch_atomic64_sub_if_positive +1639 include/asm-generic/atomic-instrumented.h

aa525d063851a9 Mark Rutland 2018-09-04  1633  
aa525d063851a9 Mark Rutland 2018-09-04  1634  #if defined(arch_atomic64_dec_if_positive)
c020395b6634b7 Marco Elver  2019-11-26  1635  static __always_inline s64
aa525d063851a9 Mark Rutland 2018-09-04  1636  atomic64_dec_if_positive(atomic64_t *v)
aa525d063851a9 Mark Rutland 2018-09-04  1637  {
3570a1bcf45e9a Marco Elver  2020-07-24  1638  	instrument_atomic_read_write(v, sizeof(*v));
aa525d063851a9 Mark Rutland 2018-09-04 @1639  	return arch_atomic64_dec_if_positive(v);
aa525d063851a9 Mark Rutland 2018-09-04  1640  }
aa525d063851a9 Mark Rutland 2018-09-04  1641  #define atomic64_dec_if_positive atomic64_dec_if_positive
aa525d063851a9 Mark Rutland 2018-09-04  1642  #endif
aa525d063851a9 Mark Rutland 2018-09-04  1643  

:::::: The code at line 1639 was first introduced by commit
:::::: aa525d063851a98e020b827fdd1d7776ae652301 locking/atomics: Switch to generated instrumentation

:::::: TO: Mark Rutland <mark.rutland@arm.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104281034.iZmilvDF-lkp%40intel.com.

--7AUc2qLy4jB3hD7Z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPTHiGAAAy5jb25maWcAjFzbc9w2r3/vX7GTvrQz/Vrf4jjnjB8oitplVxJlklp7/aJx
7U0+nzp2xpde/vsDUDeSgjbJZBILAEGKBIEfQMo//vDjgr29Pn25eb2/vXl4+Hfxefe4e755
3d0tPt0/7P53kapFqexCpNL+CsL5/ePbP799uf/6snj/6+HRrweL9e75cfew4E+Pn+4/v0HT
+6fHH378gasyk8uG82YjtJGqbKy4sufvbh9uHj8v/to9v4Dc4vD41wPQ8dPn+9f/+e03+PfL
/fPz0/NvDw9/fWm+Pj/93+72dXH24dPtxw+Hpx93Hz4eHN592r0/vb05uIO/H4/g39uDo7uj
3aeTs5/f9b0ux27PD7yhSNPwnJXL838HIj4OsofHB/Cn5+XpVAnQQEmep6OK3JMLFUCPK2Ya
Zopmqazyeg0ZjaptVVuSL8tclmJkSX3RXCq9HilJLfPUykI0liW5aIzSqArW4MfF0q3mw+Jl
9/r2dVyVRKu1KBtYFFNUnu5S2kaUm4ZpeC1ZSHt+fARa+lGpopLQgRXGLu5fFo9Pr6h4mAfF
Wd5PxLt3Yzuf0bDaKqKxe4nGsNxi0464YhvRrIUuRd4sr6U3Up+TAOeIZuXXBaM5V9dzLdQc
44RmXBvrGUM42mEK/KH6bx8L4ID38a+u97dW+9kn+9j4IsTKpCJjdW6dcXhr05NXytiSFeL8
3U+PT4+7n711N5esIjs0W7ORFSc6q5SRV01xUYvas3mfio25zf3JvWSWrxrHJVRyrYxpClEo
vW2YtYyvRs21EblMxmdWg5/rNw9stcXL2x8v/7687r6Mm2cpSqEldzux0irxBuqzzEpd0hyR
ZYJbCSbEsqwpmFnTcnzlmzxSUlUwWYY0IwtKqFlJoZnmq61vtmUK+7cTANmwYaY0F2ljV1qw
VDovOcyxP65UJPUyM+HS7h7vFk+fojmL38p5qQ2uIMvz6Utz8BRrsRGlNQSzUKapq5RZ0S+Q
vf8CcYRaIyv5GtybgEXw3GqpmtU1urFClf7LAbGCPlQqKZtsW0mYuUiTN7FyuWq0MO4FtXG6
uwmZjHHsttJCFJUFZSVluD17o/K6tExv/SF3TL+ZmxJe1b/Zm5c/F6/Q7+IGxvDyevP6sri5
vX16e3y9f/wcTRI0aBjnCrqIlnwjtY3YuBjkjkazcIs7ypJyiUlxz3ABWxJEqTBiYT8Yy6zx
x4JEsLucbSfNQpmrGa2VkZ4/MXLwX6k0GDVTf82+YxLdZGteLwxlfOW2AZ7/AvDYiCuwMmpw
phX2m0cknBOno9sNE1adioZoYjXjYhhL93rhsAcPsG5/8Efd09yaEQOX6xW4itbih2CPwTwD
9ycze374YbRmWdo1RPhMxDLH8VY3fAV+yHmDfqub2//u7t4eds+LT7ub17fn3Ysjd29EcCMo
BZ0fHp15CGupVV15467YUjTOdoUeqRA2+DJ6bNbwnwe/8nWnLdbeXGppRcL4esJxbzhSMyZ1
Q3J4ZpoE3PalTK0Xt2BnhuIjSGvplUwNuUs6vk5ngEbHz8C/XAtNxdNWIBUbyQXRM2ye2S3a
iSRVRu0CxdeDdmY94Ib4wlRgyd561dY0ZeAjAFEAhVAMQV5HsjA9kezAKoWl1cBM83WlwJLQ
1VulvXjQWixi294SfLADa5gK8NgcYldKdqrRtVGwOEe3t3HgS3tm4Z5ZAYqNqiFqB3hbpw5/
EuqAE6FloIQgGQg+NnZ8FXiydBZIAmsGRCZKQSzp/cu4NVUFUUNeC8QeGIPhv4KVkV1FYgZ+
ILpwmBxyiBQ8EnQF/hCNqBGYx5TMSuXhJhBTugI4BNhRe/QBWwbP4Li5qKzLYdGfenu/yvyR
zjr4AiKNRDP0VC+FRejXTNBQazATctaitxgVD4gj8LPxc1MWXvwD+DY+iDyD6fKNOWEGZroO
Oq8he48eYRN5WioVvINclizPPIt14/QJDuf5BLMK/CqTXiYmVVNr6SfuLN1II/pp8iYAlCRM
a+lP9hpFtoWZUtqXxe2HgDxY2ekS4AoWzrI0CGt/6VEedniuGGX+2NDBDf9919zPvbURF4Et
FYlIU0Fpc5aOm6WJsbIjQmfNpoCBK95Hz65GU+2ePz09f7l5vN0txF+7R4A0DAIoR1ADILUF
kJ6mVj2J879TYz+wTdEq6yOsN2aT10mbUnieQRUVs03iyhyjJ81ZQsUNUOCrYwnYgIZo3kG8
WIWLbbk04MZhR6mCVOmLrZhOAZkEplpnGWRSDjS4mWYQD4ItbEXROiAwFJlJHnkgAFSZzAOL
dr7FxZcggQhLOIOVSwde3JIVN7f/vX/cgcTD7rYrvw1vjIIDsGozfdJ3OzmWQxwrtqQA0x9o
ul0dvZ/jfPhIpwH+qGgJXpx8uLqa450ez/CcYq4SltMIpID0HwyDY4YBCzIv8zu7pmstjgsL
J0pEqooefs4gB7qYb58rVS6NKo/palAgcySybwud0hHZyVRgxPC/pItDbsbAXVgaD3Ya+L6R
bvTJ4dx6IL8Emxaw1WYGqRlshPV8cy1gdGINoJc2XbOUAP6O6AF2TNp2O+bZHubxwT7mTJ8y
2VrIJvRKhpn9RILpYmY/jjrUfh3fFDCAcYp9Arm0Nhem1nu1gPdWhraRTiSRy1klpWxmBuGW
2F4df9xnQfbqZJYv11pZCeaRvJ9ZD842si4axa3AkjeZypZ50VzlGpAq00FC1TKqljHT0Csp
dV576pPjJHd1KeRy5VWnhkIXbIdEQ6rQFjziJEMV0kJsgpSoccHCxzlcbCCqnfj5ptE8pLQe
EnNrohKHBcPG1FWltMVqG5Y3TRDXXDYtmM63E6hptmXUF1aPEgQzZSpZiLPHXr4psKoBK+dJ
ZqKXQHoDjF7Sa37JKsSMLmn0QB1mIYB3j48iTfkhzDrMbleReD/U0oKY6r0UWMrMYK+xk328
pmbaHp6+f38wndeJ6kvB1pCqpCIEv46sRc9oErFVJeRlueFRHYswQMsAHNlGGgYqNuPRVjDU
46MEzKzFCzNvc3pCieArfENLIPIdWnCdEWkNgKcDn6//ft35UMf1RuxQ10W04hsGdge6T86C
sgDiOcwvm5M1BTVH/uHpOqFbntJNXXEdnNlVcw3+2q3c+eGR/779/k/rokKzjkacVVM7x2aw
4YBXT4mtRQeKkFUKkRosYJsCDNGphqS6kFyrDlR6wmiUuK2jsTAj026vHEwZOLHnZ/RSgssL
srxwo8dc544yyM2ACj4CC7UBmi+oIkegMjjfLDWOxgy1X+cH/FOAIxqgAOeExgjAOTw4IAaB
jKOzWP17Gkw41umeDmabHR6EQ6amgGncYcFxxTWY3rBAbVhZaTwO8Ae8FleCipRcM7NyVuql
M6utgRwnbwBpgoEe/POp+3N2cuD+RHhTHR+B0Z6e9KPcg+WLFA/AIeKpwjlwTLHJwmQgjufJ
VpaNuELk6TtF33kM9SCIhqkgNhgC53VbRJ/wqmV73p5DZpub8+PWNyVvL4unr+hwXxY/VVz+
sqh4wSX7ZSHA4/6ycP9Y/vMYT0CoKyhAIBJLxr2QXxR1tBuKAkKbLttdBu9cel6EEmBX54dn
tECfZfeKvkcM1b3v5dCTNWnBun3UTfB3z4C/cGAPbT9xESD0PCCmwl3bUaNMyi1F9fT37nnx
5ebx5vPuy+7xtR/VOPXuRVcygejj0kGsqQGY9atsHSIyFZgRwe44E0JfQPfMpWhMLkRQGwYa
1owdndwCIHDJ1gLtkypJV0WkzdVRSE2XFzD6S6Hx9FlyibWYzg2S9Z3ZuRuQUStRDBLAGHjy
7iGIzBgD8ACV7Gps4FMm6p2+7P75y983z7tF+nz/V1uy6tGzUkvYjJnUBeQ7/pl8y8ASp4Nf
lgUL2LHxZEeVRu1lDUomMpsq7cGJ3X1+vll86gd65wbqH1bNCPTsySuGJ7I1ZAfXk9pFAGZh
y7KywZy62aRGnUd3gW6eITV5BVD49rz7z93uK/Q7vzmYBVTghX8DyNEH4r8jWMlZIoIbGa66
guUmjEMAuGduDLlCZgsA4a2WJR6hcDwbjrYfVjR7h54gtvdCGaqQsCzorSBdsRFrHacwLVUL
SzKCMrmjuAG4CLBSah0xwffhqYaVy1rVxJ0FQB/O7rs7FdFrIbgCWGhltu2PcaK+TdEUKu2u
TsVj1WIJwR1cjQtS3cw1rIrfoKss+yRX3cX2FN0dl7U6wyA/zkew6v4rXTLwK3gQVzGNZeju
Nhgh1EWV75JVeerJUwMygqPAHhZ4htyGNfuOM2eYbgrQpAQPi7vfRYdHrfycLbfK3fSIxojm
AyDFmdg6SPIcG4wDWq3i22ozdzPifTG9lTFj3SVkyhpjQp9rRXJghd1sVoJjOZvoSVzBPlZl
eynJBqfeg7njYVNbdYdUiRpLgF4iAdcBuZPCViMgIvR6aGZOiS9yNrXGPnuwqkrVZdm2y9lW
BTc4c8RGePYP0Sj1s6pWeZsZ4+JE2ZnyAnSWxVPgRtHdw9TNyrdmV9HxDlkovNDadbvfutoP
JEXUlps7IfVXEqPhiNLaGMPV5j9/3Lzs7hZ/tjj76/PTp/uH9t7ReJsMxIjDiLgPJ9aelLhj
luBYZE9PweviXeAqr5eyJI9VvhENe1Ww3Qo89PQjhjs6NHjSdu7nNyqtc0HNfseB/SbwDoxa
+1dGku62y/C4hsTMSPDSFzVEz5DTX+K4xEAbsvC2QGKWJDG46jheLbBiqaXd7mE19vBgykb4
H5RKewbsUWVtPnsJDN+gy9OcLdI1YxS7TCjc4E2BVDmDDI9v43EMfK5I7NGOFdByAGd8Kv1+
BkuwFaOL9ijQXthuYEx6W8U4rc1Lbp5f79G8FhaS0PDYFbJn6TIRlm7wIgRVcS5MqswoOo5e
ZDIgj2g+6jEwukmihW9RXLgY45/Bd2S8ORQSXRbS3phV41UsD0lCK6naMgPezggvtHvM9Tbx
M6aenGQefoGHpl/a6K4UsobbSe158ngvNRjZ4GlMeej1166cqQBm1qWbmvCObMvH+NPx9/HI
tu5G2Fxjnxm2HlCwu+ScuiG6nHBeRF9GAmNC6pZK/LO7fXu9+eNh5z70WLhj/Fdv0RJZZoUr
l0+CF8Vy/Y8MlwJ4q9yFC18VBA9X6uzjKbaaXCfsNBquZWUn5EIaHqrsEOuw7nOv2R6c7748
Pf/rJZnTJKgrPnrTCASI0qnLC5tikotkzNhm6Xt2U+UQ6ivb7rUK8oSTYD55dDMAK8laYK0p
wGuFXOr4EsEK8iuWprqxcZHbAURAnImflqyN9yL9tDv4UsjSKTo/Ofh42kvsx4UUF4L0JduG
N3cpsaK9vUOdpgmwXUhDHBhae8PluQB/iCVtXzufucV4XSlFQYvrpA48+rVpL8pQd1vT/oLH
FJrDAF1ZO76mDOs+93WM8wyqzCGWrip3jy2Ldy9CngqPWhFjswDtzFvqOHGT0hnSXBWggMSw
Oz8ZpfEOgw5ybSSKiGbWSVtD7TNQt3HK3evfT89/Ataa7hgw6LUILt20lCaVbElMTF1K72YZ
PsFuLyIKtvVMLw9NLDfddVTqOjkwrfLs9irTRfjUqCzDqnJEZfkyuPjoiLUha8+OZ+qkqVQu
/QKuY7RbNxpDWyQxVnITMYSpIgpkvUF2iyu1FgHm6Uh9X9ShQOHXcQoeTepVWrkruMJPjDxi
JC4Dg5NVe8eRMxMsPdB7INNAYLYzUA/EqpJKxJ2dVuG3VC1tieFDFPXVbKvG1mVwqIiDdIMY
z+tjTjT2ShamaDaHlHsYuEE52mxL0K7WUszfLpbVxsqZYdepN+6gVabqWY3AG1+Y7hjXq2Er
6k3cvjdVuLZI8TZGqEcgALGcWjHZvmFor47oLHmyJsiZvrAjzzgM6BerJsvBsjzH0LOS4BOJ
nsrrlj56jp5zCU77UikKbQ8yK/iJULoyLX2qdLVNcrZP40YsmSFUlhuCiNl6fAA6MHNqKbx+
SkU22wrSIga+zCF+KEmNMeX0dPB0SXaVJPTW72FIIqkg3HMnKzd8fhhZ4UTAzfE3JEr6Ztzw
iRD/Vifw0nv5OuoiYveTdP7u9u2P+9t34fQV6Xsjaf3gSehjY4z8WJ6lz1WrufeBZvhtMVZG
C6bXMz6qshV+N22MzOIQ5FoDLHWVLQhwRTVXBADhtiJL5ebVUKwdvW3Knb05/IE/LziX6cvc
d+ddgwaFjrx0kGAfk6dSs114PRhuw0894LlJk2Wjkt95SR9qtzK93bhI0awKxnGZqaA9J25W
7HDaNyE483Whk4/69+BBzO2668FsGgAweGzoaICc6G63DUr4+AT4FFw9hr6I7ioooedC8kxc
gETNA9S2ABsNgUNPwyKr5AW9BVAoZ+SUISvRR6dnJ7HWlgomMWvS+ZH13g6f+s9ofV2Ovjmm
lstvvmTarxxqmS6DsNBSGrmE7NqUSsWbMBTbwOt2pyNBktOxC10RunlG3Zt3qs4Ojg692sVI
a5abUJfHKoA140I5uApqRnPPjODhKFwUltM3iq+OqG2Ws8orjVZ4pdZHt0IIHOb7YOFHalPm
3Q/uCyBwfaVlVPrpNWlRtZfeMz504fnavsTl3N7F2+5tB0nXb10pK/iat5NueBJ8R9KTVzaZ
88MtPzPktdiOHWyunlhpvz7YU10iQI5Bk+XMnmuyZKrM+LW/nmjFRU5Qk2xK5ImZEiH0EM1Z
9zqTYS/3jzvFi3TrqUL4XxCTlmpNzNnFXOeQgCNrT/98pdaCanqR0V8gDA1VSp6/9Hwsp6II
MatsLaZUaqlWK2KqK0m2pulkmcJpyf2wMq6toeaCuOvS1t0fbl5e7j/d30b4AdvxPOoVCHjo
EyLRnmG5LFNB31HvZVyOSd8x7EWyy73sOrznFOs3m2o6ZKSeTsmQ2l1OqXzyAevw5hX9HYqv
bya/70UK/E0dLJ8zOuH4UUHK0boDZf+30XhMTh7iewIlfp9A6q39u+AevRDBB8gjw/0WI4rB
WSnT6XwyHokDoa0SiSl92UqP9UQnrNW860aBQup5D4UCBnB4PnERyCkZFVqHYYpUEqM3Mq5F
Oeo6ocW5qQuqbxgTdUrasxEcTJVFX9x6nRdk9t4LyIyY7rbu0FXSJksRWwyocP1MnH3HmEbD
jtF5hnjclvfV1X0+WGZBWEg5dbk8LQ1+k67y+KtUCNvMnSUSjVQlyo25lMGW20xKgJuo/jei
t56RA8LEmw6kkbaniIMwBRpDiUlxrq9ih/VHtJ5wtpHSLI0KZZzPjX6ziaPLql3+mckvjTcr
K6Pj1WsnLhXUzCI/P8bf7AOYGkvTfuMLbakEwfXJ3W8pGfvBCwBKFHha3uA3GwAS6Q+c2lNP
l5zTYMGTaFP3yFXpKzwq2jbhZ9yJw1l+yX/xunt5jW5zuG7Xdu53w7hSnlZVA6sqrYoiRJdu
T9RHDP+oYVgVVmiWyuGCY3Vz++fudaFv7u6f8DbI69Pt04N/oRGwv5chwlOTsoLh176bcK9r
5QE3rczwG4fY1a+QPzx2g73b/XV/29/gDM7xi7U0dNXptIp2Sj/V1YWwK7/mkbAtbIUGb+Nl
6VW4rQfOKqUK4P/P2ZMsN47ken9fodOLnoipKVGyFh/mQHGRWOZWTEqi6sJQ2+4uR7tsh+2a
6f77B2QmyUQmKHe8Qy0CwNwXAIlFE5S+UdzJV6ewHteLPelXjU/iJKFZaeXzDAriNgHv4oe4
7fhnX7zrOe8njNhEFDW53tU4+/kkVI12TIHxq0Ng3h4S0jggkToga7MiKPDTAI3BMAQFK0cj
UZxGbvnbihlAdPDjN4rEBqsV508iRyJO8N84tIvM7CLNPn7x0YHE/iTKRKvM8kebUqKTmUvj
lo2uZNbAakSZ+jWG9LCwRUyftg1gG/SPjNgnUSaTBwwl8Nv59t6a4l0y97zGGYugnC08blMY
WGYIOwQwS3BKndhDimkRXTtoOKReIomtGbNY+51qGjVgxIMopDc4HM0x3ojcLgf6PCppAQCA
zrS2ArVDoX1qwWF3SVhaFe/4EwwwtiW/iQm5Ox4wmYg172zSM7HkBmQc+fVevvMpDaJysHn8
ef/+/Pz+3T1+hy/Rci2l/QsSdLzkYO3uigVvAuEMiUb59W7OnuIDSdcE9vPtsmHPbUkS1qln
N2hTzwMHlu6jwDfDAin4Af5YFWfVIWWX9Oho9tdkDLxBVRKRt4NBH79EwCunheBmsCdz1O9V
c8PGSYEvbsy3f1FXkZ9pI8EBfEyqKCU6gSOaUFMDIwnCuGXGORNvUcdG9OZKdedJsw2M7cId
HPoz3NpRWqB1ChrFwmkl3LKlwSa0T4bAwVfvaBtuGDI01dKBNyWJdJYgp9JQq1LqlyMBvQa6
sa3UkwRV6DNepB36aO1PrZPknr87FArmaLiyk66t6AA7eIRW8U1icpPqNywaEutWQ7elLT1d
l/ZvxyRRg531FfgJF2EsiMpdq4xgB1INw+g9dX0ad6DqCXHmTIGLY+ZjY9XBD5BdtkntpxSY
022qQa28YTg+WuPxBOHrbHduiWIXpoHDPuX359dJ/HD/iLF6fvz4+aQVYJNf4Jt/6LPAOFKx
pLqKV9erqe/UkHCXE2K0v5LuqIGIzaceDWiTmTVoZb6YzxmQSylqtw4F07S0wTU3zuYoN6Vb
ngYylc/jY5UvWCDX1OvFLja5g785F10hZa/NMTYBUW+kR9egooONxN4LYUw64zoNAoER1nxq
S9kySl8myHaL/SQtDiO6P5Bq6qJIOzHeWYpjXLxySKILGn4yjS8DegsqnpV+h5AWbVnaIBFO
G8rg0+359W7y6+vD3e9y3Q8ecw+3um2Tojd16wveK4eLXZSWI92HO6POSvZYhqMzD/1U+QQN
ba1UmZ0nowqN7TS5dxN8fD7fSQfDbjKOrXKRHgYEjvXKH1wjzViBPbVy+7rQkYESbXtQJT9G
JhcSy23Yje7v/TQtjtJ1wLDh7dZhFxYFvZ32dWGFXIbLkxjhqt9032mYSJOM2MN2cNNlTsOO
ngPKMvPq6eoxzbS78oLAuPHRR1DsYNxDjHkam/OCqDjKg6iPK0jdU9yl17uYOyf0pgoyUW/a
bSI26PJP7vGiqdk3VNTkopVrRu2Es12iAUMRCsQ5GBtu3/ZZBf/klpcccmRO3LptbjJzWd2/
eA6OCy/n1zfqVFCjS9pKOjzQpgLCcC+xA9gZVEXsEhhomDLpMdzVwKBC4PSwfyftv/PJozWQ
Itp9rmPF8W4dDj3aDKPJsLkw3BGRA7V/Q2/pZ/RvUCH46tfz09ujukjS81/O0G3SG9hvVrcs
J6SYxlnP45p91M7jmnB5YUsAQsQhsTy1y5VTUZRj01B2sVbJB72fC+wrpWh1jsjKzz5XRfY5
fjy/fZ/cfn94cWVFuVjihA7DlyiMAuucQTgcRXbEd/09qthllNIid9cioPPCDoZvEWzgnNfB
ukqugNTAj65nJNxGRRbVFRdMFknwfNr4+U0rAwq3Hu2JhZ1dxF65o5B4DMwqpTAtWXoiFJbJ
y1o/sFlIEix0cLg8fRe6r5PU2ql+ZgEKC+BvMLaZuccuLBwdcPHlBRXSGohOJYrqfAunn726
CjxjGxy9koqMchnvTiJzp1yDtSH/2MbQREXMlik9qn0YEHfvaIJtlCU5x1ERIhDMlG8IraRj
shxY6+dFfsqIQ7zEpn5dUSX0RwOpQn/fP/726fb56f388HR/N4GiRjU/WA0G3YxT33y+IWDt
ZiXDcp7GaJxFmgW7cja/mS2WFC5EPVs4p5lIoaOj4+osSfhjw+B3Wxc1RtRBmdp0y9HYqJLu
p4g1gvn0p/jMuEXDh7c/PhVPnwIcWoffJi0Pi2DLG0R+PA1KsgSelk4IQjrdDD3z8whxY1eh
f5Sfdp2ozv/9DFfe+fHx/lHWMvlNbU9o0uvz4yPTGVkzMkZ2NQyVijeay+kfaZEkzBpq/tEj
cJ9c+tDVhQ+DA2x1HkQMxodJNl8VeoQ8MNt027teZg9vt8y4418kQ0iPCRNxU+Q6x4jbnQGt
rryLDqkXPgql8c70cg2bTS135UjZwKCTpRAFAazK32V8xZ8vL8+v70zPgYjpNUDhDsWnw8x+
FOZJ0FPm8tLR9Jtgx+4brrG96I+bRXYpLWGkJv+r/p1hxKTJD+Xzxb0uQtXqA67Cj4uyDisc
XftZ1sDvN2NXxO4EwiKRHMLaGHTzXgJWe58ndU1c2QGI7pToD0+AKrwki7opNl/MWQNQeMr9
LOGMFwHZLUCzDCKzFRgIBUTfA/KRpr2eQqCGz6oPNR18tH7gSa0QYQrQ+s16vbpeEjFfo+Ds
5iK4degchQFT869c7B1Am+/TFH8Yat2QsDodIVpr8FDpBSpjRwxhLzq8MsXmvw2rjcGg4a+2
SxmFzwPEZbVvrvlJBySXoAHUjfKWHM65H2W/0SAhCA+hNRwdWIviZphCgj5ayjAM5I3zjtqs
AaotV9SoD88tXeM2rtYmP2TRRNhnFkKt1wsJkpa0wP/tLHjsbyriNqigVNF5kAnhMNQnb3Bh
tqS/QVy9AvDGosDIdImYp4fpjLyc+uFitmjasCw4HjXcZ9nJcoMPxPV8Jq6mhqAAV19aCHzn
w23Yv512VZShuF5PZz5rLJaIdHY9nc7NLxRsxr2id52pgYQGYNWIzc5brRi4bMX11HBU3WXB
cr4wZJtQeMs1MULH8wu6AxdEOdfJL9hDVvDMYoPx4ZtWhHFkHADlofRzyoIEMzuEorolI7iD
M+OGHFSyEgOLmg0eOWANnbYG2vEJNTjzm+V65ZJfz4OGnHo9vGmuluN1g3zZrq93ZSQap8wo
8qbTK1OKsDqqo7D9eX6bJE9v768/f8i8BG/fz6/At76jXgTpJo94Jd/Bon94wf+a+ZtaQeTB
/0dhxuwaG2jkzYGQWA8WGPq88lHcLXlvrijYcXwnJuEhGkWyvftVLIM3hWZ+ybA3diof789v
GMIapIXnW9lzqU/6/HB3j3/+9fr2LkW27/ePL58fnn57njw/TaAAxWgYhwjA8AgtE+6cRCTI
qZyRCaK2IWkc/G5VcqBhw/dQdnSNeswz0wQzd5EEo5S4KUDMiqqqqPiPodbIbo1MRZYUAa8v
AwKpBY17UxccM5R7gapbxp9//fn7bw9/2qM45P9yxrETMJyDAOMIdbKawy/LIENZYYxA5Sc4
mDVJ0hGY+dPkNyQMjIToFx4LanVVNka3QgZhnfwC2+aPf07ezy/3/5wE4SfYy0Z01K53wrzK
d5WCMbGPqKVmTznyptuhA07mk83vbyerW/B/fL+hqmeJSYvtljcUk2iBpkK+Dqo8DEndHSVv
1twge87MBlz3LDiRf3MYgRllNZy2GDFpshE++0olKarS+LbTCFjt/h86CkcZGNfYvBJOvIYV
SGq8ZdYjq8X7WOzMvWkATXGadgbwwMzlgt0PLml4DNASmyO2SUlYLRgv85Ff/izsRWK5PkqY
bcNARstRq6lidg6grUI/cPoO8F0JwuhYLwAfkSgQGuine9+ZWevEMFhhowBkjDEFLLmyVNab
4eDkLH2ARoZEJ31AaJkx1p6Djmfy34f374B9+iTiePIEF9J/7geDPGPvYFn+LkgYxYsEB9HB
t0Bfi4o6rmEZWA0rGrPBAlRsfcrL1wFwNNbTCsIwrJ25EhBW0pMWQfgwa/CZnbW9rssqMnD2
W0dl2mNrG0XezOTg3iDJ08vP99ErxDLokT+lIaANw2y3UaYtt4YLU+JUVMKbjH0lUSSZX1dJ
c6PU5f2r1yPm5+RsRPVHBYyfZdVLMWhRwYYRschEUEVR3jb/xqDrl2lO/14t15TkS3EicruC
RgcWaJg7qqEfM5JQH9xEpy5tiYZ3EJDQysVivR7FXHOY+mbDlfW19qYLYklMUKzdskEx85ZT
ptRQO3dUy/WCLTu9udnw2tuexNa98hTSuWEkAWNPWAf+8srjZBOTZH3lcWOqViiDSLP1fDYf
Qcw5BIhUq/nimh2RLOC37kBQVt6MM9vrKfLoWJt6mR6BXkF4fAkGJ+ri6B/9E9sosc8/nCdR
ZyWn5B1qh819xRZfZ7O2LvbBDiAfzOAxvZrOLy7GZmSFB37peU1jb0i5vQeg/AmnxowBwVVq
5tAY4JtTyIGBWUzg37LkkMAk+iUNEMUgW0GtWgaS4FRS5eeAkjHNZP4gc7QHfIQZzCKWLTaa
EOErhPUeMlQhZ4vNyDIQxUWAEq7pgmaUz3UMbsPEtKRU0ODkl77bDuwGStT8DS5JDqJpGp+T
PhVeG6ZaXw2jP1Z6f+xjiC/OVlwRyHD0ZBIURPezPfpBkXFqGv05DrK6dQxOYACi+IVJSRNz
Q5t4PxSr9dVyDLlar1YXcNeXcNQIi8ETwyuCr+CO9S58X2fAK2fUWpklaOv5iuPTTNo93AxJ
EyQVX9lmP/Om3vwCcjYyDPi2hWGgkyBfz80LgxCd1kGd+d7V9BJ+63mj+LoWpc1yugSWXomh
GDM8dkmvZHUfEof+9XTBp2QjZLiXKv4CN+l2flaKXVKxYf4MuiiqR9ZVtPVTvxkbBoXVG+/D
1kRNMB/LzGPSxfsvSS342G0m3bYowoRjQ8kQJGFkevyYuCRNYC02PFIsxWm19Hjkdp9/G1k8
0U0dz7zZyBkQpdS/jeI4taRJIY+29rieTr2xQhSJdcQydMAted56OtI/4JcWlg8cQWfC8/io
DIQsSmMfM+WU3HFMKOWPkVnKmuU+bWsxuhuTPGpG2FlSyc3K+3hvATeX4ePZR1smBOmsXjTT
kYtA/r+i+Qod/DEZuYNqNOOazxeN7jbXzu4A5pdBWK9XTfN3FkLgzVfrkcNa/j8BQWQMLwK5
+4uxdgDBbDr9eKkoOj4rrkv30QWFYRNHbm+RpCQbAsWJ8RtU1N6MJlKi2CxmzWItIqr5Jsh9
FftB5Lx48MTNern4aFPVpVgupquR8+1bVC9ns/lYc75JXdOHDamKXaavdC4IF9mlX8WiGb1K
viV5UrOnuZYoSOBqBVuvy2w9bdoiJwEpFBI4Ju/KEUwU1L7aCY5/cdIkkksCoac7r6wiNsCW
jKSs05qKeTOF8aprNhtRp7VpViuYOb5fCns9h8sd2WkHrbZzWx4rVQ2jxslAGr/YSin7b+De
ZH21DJowwnhHld0IiTtgTla39qAMMPFQ17zR8m+a+su1XXAVbfcpZg4f6b1c8jNvfan7flPO
YNGU0QURQwnEl0rpSGQvLwzlXv4zWlMZxOvF6sotvzxmH80AknSDTEfpZj1dYOOZ5SOnpipq
vzrhS42ePavy0F/N1lM9xqwVgSZDbpVfpohbzse2ZpPOub0pwfQIpigi/ygUHCuz5bUzBkHm
zy0OhiA+kELD6jBbwiphhoCjXC4+HixJt+rohvZWWXJlCSMSRB1yEELdbiQk21iQeDp3If0d
bcJnoX5Gt+k9z4HMbMh86kDIItYwTkmgUGbYPg1ZdBrc3fn1Tjo9JZ+Lif3CR3sif+LfVhZK
CS79imitFDRNNkoTZRgcINyK00Fw2qaAaLB0HWKGRkc22K+Clq3FL7F2/oVNEii9q+CClu2t
zm/9LKL97iBtLhaLNQNPiR0IN9B9/g/uBUO9LX0/v55v3+9fXdun2kyKcyDx9VU+QJncIPVr
mp3tUHcEHKzPAqkxuyNLPYAx2UVI4mVgSPxruBXqk1GrMs0ZBWobutmit5NLQ2BCpEudjvGt
re1fH86Prmm9VkdJ08zA1BxrxHpGnwYMMNyrZRVJt6fOR2ZkaXYfyPTYfnvwAWQ/sRtkMVpB
82GnTDI9jh/USe0ZzM8FD8+kuLHhkXkl/bSNXB8mtsJkbFnUk7DNVqlrWYNrk8wXJebMONDo
FqRnR5L4iaJ4eFXP1uuGx8FSjHKaE1Ii0ZtueGpV5o7PT5/wG2i7XFXS6MM1QVHfAys496ZT
p1wFdxuDHU4TM0qbhXD3lU3Qz5JnUdALzAAaZdqTJpI4OVxYZSII8qbkPpSIj5epCLxlIlZU
6rBxo5yAQzgmmWlCfUl8qf3tSMQBSsiuPwOH8ygTUjtbwiTa+PtQ5srwvAWIxhcoxydCG06W
wgmV4PSx4vQJGhmLtE1LtlsDanSNSZIkx7hQugi7covi4/mHX1EjMxAm2ySAU7tiSnWJuILt
r/As++bN2QjkigL3CzsWHUIGAFET7Dnl90RsW3oPI3L12MdAUFd2mBCNypUtVkiewPMWI1+Y
v7dm+iNpL68u+EGCl4m+3TwlBC2IidvuEOjk3cxcyLR7ezZxc4VXl8GrpqW7ksqSGAdoa3OH
LCmzBPjwPExpxPwMk8HBQa28rVmMqCvLC0YilXmI9DGSWhxeXkBKwR8hCifYICwSd8SQqWHh
Vi1zVBcjJjdAsbnYuIGlUklGCZelQDIzAfCdxNdjwG78qznRRg8oNf5swwaiAFbpSMaDgahJ
yl1E5WwdhkIGW7tlONJhaZ3yQFpMsMIZBsLAiJ9XTsi3Dn7F2sUH1eyqMXnp0aYMZcJEwCCy
XQXUjYXrhCP/OOwXDcODQ8LRH91gUOsA/pT8JJpgSZcIx+pKQsn+1oSjOkmNhyu0DaoFN1Im
iVSfuc1AFBzrSR6ZbLKJzfeHoraRTGkH6CY+4DYntxxRz+ffytnVOMZS/tpYQa2x4dJMT9Zh
NQSwc5dBP59qPqq9qKUhZx97RFkvATPi2osRjQiMhzS+gCEjenc5CWPuzxK5g6+I9RQAs33T
1Z39fHx/eHm8/xOaje2Q3q9cYzBchhJUZXDqKDfT3OlCrYtngKoKSasRkdbB1XzKJ2fpaMrA
v15ceX+D5s+RIZAUSY43o9u2KtraLZMJs7ovLtabpU1QpiG7Gi4OLC1KxZORQuZIFzobj365
+I+/P78+vH//8WZNUrotVIpDUgOCy4C9aHossW216ujr7bUHGMhkWCbDMv7r7f3+x+RXDHOi
3dV/+fH89v741+T+x6/3d3f3d5PPmuoTyD1oz/8P2oUAI6i4CymMMFacjPVju0lbaBmpdqSr
BhlnG40kIy7K8sDKnMXy5dvVas2dgYi8iTJYHrQfhWU3hjAYfMYAV058ktWRdRAozt2CpUbO
UjiCnoBFBPhnWDgwFee784s8lxzLyFng+mMisPYLASxRL6MW79/VOtYlGhNMS4t1cGZjHbFr
hnSShhbuQdqZicOgiyy6yrrLAKOL2nYXDoHOWujAu3g+RuudBpshJqUJPUB0cJUBER5ZsABG
mINnSZlIxM4MqEZ0v+jh4BSHsKifJLyxs/MbzvRgC+6aw0pfCSkjEm4coY3ypIDDPeHzIQES
jpeNbyraJHBfI6eZnijY8dlH4LAH7fph1MKRXKUajeGlRtoVC2u0UF2AcqMzjJZ4hEOf4b+x
RZdmq2mbpqXdTJRJR3zUAFvA7knyk/1RVQQ3aOo08pUIvHUiltMZbYJSl9hlYXiFkXIaDINr
06sTY+SLb6f8a1a2268WryMXROZ658pVZlxurqYKWzhwGEhf6jjjenlaixH+EBYFYXUaLWfN
1G6Qc7Yb2IznV3eCDYdnGqDCDxo+FwCT28cH5cVo9w+pQbrA8HM3Uk6iBWmUVByzGNcBfsDp
pdk34neMcHZ+f351btuyLqGJz7d/MA2sy9ZbrNdQqHKnUPfCk0zwXO5OabKZoD/AaCq69+cJ
+jPCmQ9Xx50MpAX3iazt7V9j9aA/6npWmnbaLkFAItu4fei/tPm1LsCdRqjs5uYUJrlacy49
cmrxPg+sBwgsCf7HV0EQXZ3yFfnahct3T/Lu02EwYPZcTNfcAtQkAgac6DM6eOMtTH1uD6+z
mAE7+uYOIR+GubYVQZSyHul945MADi2MPCLMZVnBknw7v01eHp5u318fSeiNLjTUCIldA6yK
Xe5vzQD8feUoIPkuPBBXq9RbjCDmY4j1GOJ6OoYwTmLsPnkd0ACZxxxDD7RpkgEzsvBmHUUR
W9dM90lSfdXhZAwEMBLU+aYH8nl1JXrwcjWh0iVi+n+sXUlz47iSvs+v0GleVcz0NPflMAeK
pCS2uRVJLa6LQm2rqhTtshyy/F71vx8kwAVLQnbMzKVcyi+RAEEQyAQSmZN9x4Ka/Dy8vBDV
m+q2it5Gy/nObidFb2RBrRRNgbWNrezojMvcRLZRjWfkofCigz+Gibuk8M9369Yh42tk73NK
XuVb/KIFReFKQbzBVlHWi/PAa3k3KkZNy6+CmyeltlERuYlFhk81X8vYsH6LxEqW3N63Mb/X
QYnbOAltZ6c8mXY5Zy+sSPaL3lFJTIyODYLRcqPU468XsjCog0O5IMVT++AVYhujpMRD8LFX
tt1LdrM6hA1sYFtqb/R0aIVOIN0fsNWiPf3dor7cFubCI7/Ers5iKzAN2YSQupZ9l4tE7XKp
C5vsa1Vi7hTsA6OeOFITZIuTjfU68F3PVfpTnGHHzgQ/NHl49l6M4tOCq2HgYWSL+vGLj0OB
0MRsZR6Xn6j7UuzUSpgnljDG1Q4d1c+bY5tMfKbnYMPKNkMTT1XHDVPt9FzEth0EhjrosrZq
sZMT9m03cMnB5p8MeQL6ZJvT5fpG9DJpUpcG0XLZpMuoQ+8Xs3YS1azPZddXiAoeyvAxf7fm
ns1atFrzt3+deitfUfMJ55DoqbWcwBJkjIi5LTBAXEgnersU9hqQ+vl2tU8HIdwGkdPvJaxS
cRdoRFp8e37E4VlE5UqEML1P4DBtfWHsdqXAYWkLBxqvaqE4evlP5BBfNQfYWmAfN7EODHBA
UHN5wA8MHWBqHz01MB9pkcX0kXHTj49RGYQzNhr1TNhk4shDNGlMhea4ZOVExuC/He47wLPm
XWyFrqWTNHrJoi9e5PxIdaNCgspgKHoO2XM3KQ1YAclCOMOeFUMxCLVV4BCrGTJy5Pdqixhd
jbk9MCURY5zkwebhSJtO/1YQBKChWo3hYdP6PIJNrnvIfBiEjsutnQMSby3DFCaEAYFR62Ff
HM/Aj3eBbupEBpjP4MDQ8ml9h8cTiEVEzK+RqNQw/2L5OzwHz9CGQQlRysJlIx8/SJVYLPWh
KWJJeav6ByBYEBrYzYOBA/Qdy8fKaq/AT8Jph9zkyTvbc7HxMTHEjulZuab1puP62G2WgSVJ
OxounfF6fDBdTsqgpik1kJfmmC6utwg8IZpCjeOwXF+tGgCft7M5wCX14kDA29k8EAYawNuh
b78t5rZzq/eYWhoiX9IyWi9TNo86pgo3nWvYNlZn05GvHfP6GRjWcWsa/Nbt+CBJGIZiQvTV
tqjwzHZUD0EzonOOIBJFTuc0kMtqG91Xa2HpGkHmBsMiCqUlXKTGTLGRHYId0P1BkGco8BCT
iOpa28P14cfj+fusvhyvp5/H89t1tjwTBfL5LCqnY3HIKMRk75eVkCdUFKiPyAxJ8UZ5yIP0
VxYwb5r+xsI7hT0LeQPMQkdkCgA4z0F27qyL8YzORVouLHNexKgs2HAwvPBWA3s/PrWBX7Os
AY0Hk9vv3qByp87Z3qp3uAyDNjvaefZud1s8M1Xh1iJ2VFcs6yQGkFus4Bq6ZYrEtp2Tpbxt
s7ngXtjOJRbqqQMxmHjuaQgJLPj5AmFhPjlwWof6Zk8cosUyj4sIaSSQJSbawJbPxkbJXL2y
1CGI+7T+ArnVReimaIkXGtpeRPE+LvA5SmDED8oZC3+aQk+Lvr09P9A8G9qw9ItEms2Aoupa
lNravpihbqBa+D2Lushitl9l4TuOtHzUWYFv6I6PKQu9DEjzmFaFUj8FV3mcaEJpLGgIdTc0
dvjyTBmS0PXNYoulTKaV0KtsUnew622CyxDQ5S2eiabjFc+c6SuRN9xHoo0RA4zIr8YTUbRl
4AXBZGtj6uaI8hteIKmf26WjSw7RhjUZWLB1fQA9pDbPRmoyUTc4ACFDOhyyQdJtucdjk0yS
O1lcT9acMPMc6jusLY8PswG0VeY5ZNKEHpyAFQTzi9ostkUakci2D4UWZV9az8JeC4DyjiPQ
2CVdAyO6snBK9gyd+EFfVnqJasBo/OIJdg15jAM18HBhIWZTjHDg2IowotViDQtCC99/GfHQ
fwfHdo4o2nm2Zyh1EmqIKcUUHDQMvlT6lXrNocl24AMFTK6FKGp4gA4A63hBrGZb14Wqck2p
sdu5gbbMXWAESpHS7Twz0LajTeNb83ebOb63Q9aZtnD5wBgjSY1sBMjdfUBGJb7URPOda9xc
RIbddLY/3RWnh8v5+HR8uF7Oz6eH1xkLAJYN0fpQnRdYNJEeGDZMicMm8serEZoqnUsBTQhU
ESWx3Dt5bYeO7qWCbc4fJPUC82Iti6mjvEBjrYKFZxq8pclsPlOMXdJHQtC0Qz29mKih8oH1
hxr6rxYegTwZunhxuHAKwwlWhjmlB97N1oemgQgTTlB4qhwAQcB0zt49E5nMbWzHYzAC1O9p
QKJ1IkUK2eae4ajfh1DlNjct377Nkxe2a9v6Vse2G4TaDpROlahA1RuBKlfsGA4lYn06QPr1
m6o/vFM6feTCNQ1LFgZU9MiMgbCSyGJg9VBojqGMaUK1Tf1NOI7l1uAAFld/s35sEh4Ohs7o
NJxI4pvBDa14YCIqnX7unyTdYGo7UIXQbM1sal5IyjVyCk+VIppbqDCN/VzOfcN7gOvMnmmf
vN+3nyqdAl5IkZEnYJHt4DZrlXcR74Y/MQxJhQnQrgUXtYkHrpa3NdzWusVF9LMlmYg0kKjm
TRCYbQE/2YlQb9GNHcqhiWuj2g/HMhh/KiLZRhMyKDRqF0tGhYh4esTWIKZl4k9GMAv9lCUW
TfFFVLq26+KKpcQWBLiRO7FpN8K5aCvUcPgQ08a136swa/PQNjBjS+DxLN/UjAwy33vo+sqx
qDM4BxK1xNd0LsWwoxSeJfAtdGzRhR0d6tOSj9YJmtA73ZazZex2ywiP53t4Ldh5g4aN6Bvv
c1Gr6n22wHPCj3B5H5EVGh9ofhC6t18gZ/xpsNDW9iGx/4wPiA8s3WtgIZreewzCRYzH2/XE
tUleAToxFbXrmPgD1kHghjoEn96L+osfWuj0DgYnPgWPBqqCgCeVIx5ZceAi2Bm3J8d6sf6a
mvhyU2/IlKepFqBAVy2A4XtjsN7iFzgnDmqq3mx90zlC5EUe6U1jBCk2lqblbb4k+uI7XdYS
M9XwIkw2gQJL1Gok0Md3gCcuYhe4pmfjVrDARs21D7BZNnpELjKRsa/5Tm+YfDITPg1g5p+E
mvbtz5Mz6DSYrtNv+McpTOjXPznFqeqg6Ew/Aapp0Kj7J9xxVJJF+ziNqdNFhTqRMJ4eF5Rm
HoC0Dnj8gIFtnjQbeiWyTfM07sazhOPj6TAo05AZhz9BYM2LCrqRPbZAQKMyyitihW50DBAR
AjLK6jmaKAGXSBxsk0YHDX7MOpy6pfAdN3rvKo/MdcXD+YJkm9hkSVqJORD73qnKroEI//xl
tc18ulMpVCoI750OH49nJz89v/2anV/AsnmVa904OTc+J5q4X83R4WWn5GWLm/iMAVKGK649
Eg+zhoqshDkzKpcptmtEa2J5i3PCHZP/8dGoKLotmd8R5wmpPq3Q9+Mtu6kv5K9l7HDoZ9xQ
1Anr8xJ/P10PT7Nug1UC767A84EAVPK5TyhvtCN9GtUd5HWcckUC1KcIZR0p+ANRlN6Kblmq
SqJpty340OMHx4R9nafYe+ufGHkm/uuWjwbZFzc2m5+t2LeYOb6hWWBGBlOjfVGGLo1c38M3
KXoRUeT7hre6KWRB9EvNekg52L7WOwwBtoDRkT5fLyxpr22iI58dpRdpUfHnxlyJIsrzStjA
IkKmeYqd8+KBEIGRSLbAae8WH4yFDwmEifPDNdOp8r1q9UzixCpve9PPdkWz8ZVxlucQNpOt
R+IidHh+OD09HYTswxQ+vD2ezv85+ydMHvSi3eVACPQqwHAp/vB2Pf/2Snfjj4+zP/+e/SMi
FEZQBf9jkLwZRdI6yKLwcH7kao4PP4+XA3nK59czEqqvn1LrLithOcrl2XiVuby3GSNmxc4y
HZQaqvM10F1MFZ5gHxUmal0j3TYx43eCxRCUEx0912VwtTGsiN87H8iW56BU3nCaqAHSYEq/
VbPLqlCKEfo7xXy1DYQaqFRPOPaceH2c6uLNCW81x7dcUxXm++LtnJHuoV6gE4y1zPexd0GM
WA+rAvYab1QRoi82RDuKWOCu0qub1vMsZKQVXVgY6BUQDrcVbQjIpql0ISHXho2RO8NAyaZp
oY3aGObNRm3wRm1McfeRAW1DrIo6Ru8LMI6yqkrDpDxIc9yiQtMS93C0Cy3f3LP7lVJZyN9X
oIf8PK50TfOH65QKtXXvvChCqTZCddJ4iYxngrjzCHN5Z3jaBeldgJWLfbuw0YUIn7ZZyntC
UxWiQTd2A0sZwtGdb2NfdbINfRO7GzHBnjLwCTUwfGI/Cve2hUbRZi6eDq8/tAtOAltWSh/D
AZ6HDBjY6HU8tKPEasb7Xf8PKytb0kFYxIKlCFp2vEusIDBYFIpmc0ObECRI9t26nGI+dW/P
U0CW/0WjVckQK6bm/Qt5rEuiwBLcsGSQv80ogSZBTS0aBoGvAalSrStJQU3JorOMnaZBu9gy
rECH9SlMUMzRYkXsOG1Ar90xm4tYaosLMcjg3f5fRxYcA75eidJ2uDzOPr0ersenp9P1+Hn2
ra/hVcP6QAM2/MeMjKXL8fUKcR+RQqStv7W35QJLN/v0vpy4rxSBo64laHm+XH/MIjJdnR4O
z7/fnS/Hw/OsmwT/HtNGJ90GkZG1yQcaQrnEJ/r3DxYd7EqOa3Z+fvp7doXP7fV3ovMOrMSS
HUzuYUKhabppd4769PnnT8jWPfrIfEpL17As8zNvrkvqf3c+P71CDA0i9vh0fpk9H/8lNFW0
q9dFcb9f4ME+dYYGFbK8HF5+gCMPkrw+QTJcR4TGx0rs6+DJbC6/kOVo9ufbt28QPUgNrrjA
dzHQYrTc/PDw19Pp+48reY95nGhTpBKM7cv04SunbxWQ3FkYhuVYHR/tngJFawX2cmG4Er3b
2K7xZSNSszwLLf4gbyDa4lY7kLukshzsBiiAm+XScmwrcuRSN1Mq9w12DfNugV5iAobVLrBd
X5ZbdYVtWS4eHwmS3eaQekjoQfRFvfM6+oFPVBHyHT+eXl+eDsPAQ/YZl5Eaa5UN6dtk8jdf
F2X734GB4021hTiXnJL0TpMGPuWz4PYYqnWpBjQipr76YIQ4tZz8mC7VdU1aLjvBfZ7gUiaB
EVqDdPUtg8QpfgebkF6ODzBfQQHkNjeUiBxNtkkKxg0fAGck7RcLiVoLagIlrZuUTxdJHzjN
7/hcVUCLV2nT3EuPDhn8yC884SjFq/Uywvb6ASwiuBlzL9VDF2eJNubpFISTnl9WZZO1+JEF
sKRFu0cvqVIwTyVXfkr9KmVQFd5bMc+aRC6yXKAhSiiUV01W8Vk6gbrJNlGeZCKRVCvlRaPU
+1SubhvlXYWH2GDC021blRnmIEqbdN/QjAyy2AyuBmnKsDDyAvsfkZQKh8O6bVauolJ+vhIi
HgmBXYGex9IlXUpMlV7O07LaYNdOKFgtMzFNKk+FH7Xg1TwimlDKgDfrYp6ndZRYt7iWoWPc
wrerNM1vjMIiWmaxlEGX0fOuUd9SEd3rbvgA3KTsq5BkQTwnuCwnkSsIEp1KXyAkOMmUjFeA
lJ0mzhrBqqZDUywBVkcl3HAkn4LwUjmyvnvqtIvy+1Ka3moI3R4nKHGvB1jOdaHdNSTybeBz
wTYqeo77ths+maHtE1GZZesmKyKpwW1EhtudXHkbFe26xO7YURQSV+RiOHUgE/upUEhkjJEl
JVWej8ivczTGOh0uRaZMZpCgLWozXNmgIouo6f6o7m/I7bJNJQsmc1abovdNKboic4P0WN0K
wiaPoS9HaTxd9+lBeUiVsN3XLaZs0Yk0y4qqk767XVYWlUj6mjYVPCzfhoGmH7lf7xOyCsuf
IkvCtF+t5yg9Jg9WFVOqJlEJyGv8OANTIKbAvYKSMwqk4Yfhw9XFBmZgn3eV3wOShcqF5ANl
jHfdzvfVKs4g80FHdL60JKu+MNkBB+JrMJ2xyr63o3Ff6DJKl+l2mAOGCZr8kg+EJ9p+uC2p
InSSHHJM8PCcZgEtibpCUxSt4FB6TB4E162VHT1aLIo6UzoIYfTSNiw3xD9GxtHanuNiKzGD
IS6FLTcyLjyb30mZqK5MlfxnGa0xDNMxTUdpb5pDXhJt4l/KQ933sZ3dCbWkCunGIEYMxYOH
kW6Y2FEqhVnoL1lYT5Xu71IIIdGLLurTAxn1RexR19ghza1ddwcXkwpdeICeTXYaldDAU4cP
fSr3Zld49k56ODWyR0+OTctpDfSUi4nbFkopNDqNMOoSKzCUV9vZruiTScmILyUPd3EEXmCS
rC6P3dBEOh7zaZVHovtLksbfqePpd11ieaH8HFlrm4vcNkO5j3vA2u3UuYFuRv35dHr+65P5
eUbmwVmznM/6UA1vEAYMm/Bnn6Zl9LM0u8xBiyikJsgXvNjj5TsWF58nwnUBpfdo7Of7Dre9
WMfTy13IwBaYlCtdTPqysFnKd+6QAU6/u/Pl4Yc0kUojrgtcUxijY/92l9P371iZjszaS8lZ
YCw1h1eB9ag8f9K8I/lS+AiiOE7h+n9GFjrMrKSZMLJ5VPLB4kca7Xq4oM2LlGFWBfoeONYo
SRqWkO9mK+j9kT7Z2+ShkkBkgQzLmNh0sXyAByS6SmKeSXDZHPanuAV3oo3XXqbdzAnbKE5F
bOO3iLityqlYH8pcqGa6HEPW5ZKozCJacYp8n0qraJdSXwCjNvR/sqWR1AkPNz9A0PBUkgJh
x4sk1gY9Z3eMMgJrXJP64B99CO+k1gn6AgniVyBoXywLzG1z4uB6g4ZjjyWPo546EdrFvmbl
xlcRs9jZ/BcWQU6efbfTPiyhg8cO9mrn6wXm+0YlLjI0GxgrRYzbTbovqy5b3AtvGTDpdlVP
bdN8Ae1oFWSVRnUrDYKRDhNpJyf6GbzdxCfg+mS9S7IWrEi0R4hpnGIxY9bijco1BJUEb1mI
AI1GMgWOBDy1GMf0ZLQoMaN497AFr+fAL9J/GZm9hQu6lF6QjxI9T25GvytOEk0MJchgqbrI
WrrGpCQ1f1ZPI6NkVZfPJaLMA+JkWinG8GPENkYDwzNw07LI6VIZaBTulEZh2F9peyumzyqq
DGd6Dfv1/O06W/39crz8tpl9fzu+XgXjbDj9eYd1aDIx1u/n/O5i20VLKWUZ+bzTBE1ZwHj3
w44rOyp6frycT4/CMVFPmkSSXqVRlCH5CPxAO2ZJ7Kd6GUGsKXx/vMzIl9PW6P5w/2A0UlUj
btIO0CJrCkglcaM028pXStLTkhvFciHa00isajhqwQTSDUy8E3oOPN3wgNK83p1o8I890GQJ
MSEhVD8ioc5YSE52LHh4/et4xU76JGQoTRYRWK+gL8XkUosszROoXfrOR4YtbHHh9ndGpsTJ
nZMt3njfVHmyyFrcr5ZpjUSPQDcVt0T7LPkUBzHNJdCe3y5YgCGaq0FY3hmlbqo5t76Rytom
lkKhT7Hw66zznDm/s4HWynVFlOXzCrO+6Kwqu70zIrLn0Qff/3m+Hl8u5wdM821S2Mkiz4Nf
SEYKM6EvP1+/I17XNdF7pi6gP2lkO5nGZ1VgFG6yH+oW6hgnHziQ22bNFA3jTEybLYRjnbQ5
BpBn+tSy7FLVM82m9Xn2CgbQt9MDFyGDTV8/n87fCbk9x0I3DVMZArOD6sv58Phw/qkriOKU
odzVvy8ux+Prw+HpOPtyvmRfdELeY6W8p/8qdjoBCvZvXHqP/HQ9MnT+dnoCK3HsJHXPKetS
3uSCnxB9DL0k0qPrObEMiRXwNaUZmfsmfbxy2tYvb4cn0o3afkZxTu+jKXaUb2N3IibaL51M
DB13Tj80uMbZlk5oiyb9Mqq87KcQ6XDQERkEsQ17B619VSZpwUy9SZXk2Oq0gVkzKtG0nQIn
rDitkDyLh8cL/jhcE+OMJScQHgKJNjM9MUuTijQr3XXxFAo8/XV9OD+rMRsFZmISRaEjulH3
iCa0XI9yMaEUwLZdFxE4hHBCV5mep+5KFw/k1TM0XRD6dqRU2xaucCG3J8PetbhrOAFkAJN/
JZcTuKnR4KZAhvZHzcdLJz/GWJwciQWl62LBOAcADNJFh3upAE63BdFtPlqTmBEASN02Vwj9
ES47hiC2yQOeXnLMiTKZRqRxGXZ4PcSv480Y8oNpHHHN6f59Shzy7OsxRcVweCE3ZSxDPpe7
MQ3cMN+wRMVZXcUdGp+VBcXGZk0hUDj8iiMhLDDDmZ2/RHdWKEOXTRt1tC9BD2zf/mSJFKeO
HFOmrAQnjXlc7O8gJg0Zc5ZOh1zdj2FBiRLasGzI04jg4OR9CW2WNmLWGAGNcvQM/38qe5Lu
NnKc7/Mr/HyaQ7rblhXHOeTAWiRVVJtZVbbsSz3HVjt6HS/Py5sv8+s/gCxWgSSoZA7djgAU
dxILQQBpcFlmxeasOMfWuiUU2QajrmC6PLcVFl29Ef3srCww+xd/Q2RR4bgE2qPTJOEaSFIr
OaA9BaRgPJQDodVior3Cjz6viR1FijGMLtW/zIYoE1llfK7RUTcbeXVUXiRZQU6HKF+rTNu1
ldK5TBBhLZWW19OqhfqUu09TNaHjCjWZiI2XwTih1+HYFgug4r87P93zbIgRT1Ieri4P3l5u
bneP90weupaUBz9Q0G+rPsK4hxwCKutbG6Fc0mwQiKxyCJlTOUFkJ+wqFbKNUjYrLyFbqGTp
9MTCc8D2LTOwftly7h4jumlXfkF90XRsYXXAiWMkCL/dZIZ8tHGCpu8ZT2sJJ6djQ/RQSle0
dE8oqi+WciQNJ6QeSQdrKB94a6QCTXR+ZMc5HXGFiFebasZgtQLu9QBkovQ69bBDS2oM4RRX
XW3xBFUeSNGWKwnsLxaugMki9yG9WHQMtMyqZphG4GV9eWI5vVtJMuGHug3HvVhaGRcQwyZf
IQjLeYHAhfJYsVFNTNO4KkiUDuYGAqxiGtAUL9dh5DbTowmadtKPH9zhy+blp88zGqtNA5vj
+dGZDbX7pbI5F7bKytVGdICqJhfidkov/NX7aYybPCtc0QJA2vbuJpsmG1LCv0sdA2GAwpoq
rUywIMj1551IEposeDJagPgHzLduOzvnauEFuzYWa1tw17dvO9DwNLezlIMLkWeJaOE0azC1
ZcNGdQBcVhXUhQBk4Vm/sAZjAPUb0bZcIYA/8T85URVXTQYzHfP5ug1Vk8ad5G/ggGTeU14z
AKaSnWrnoQJtolBakq9RYl2u4+8gMdRURDGcTVastwyGGjD2gIxgIGbdX0YCNBP1bj55Umpw
Gr6aSslvdpS+/mqEkCAc3EF9jt516MnDGw83qimcTXXRuKtrAGGQsDUavJOck2aqePzSgfTV
jIpvI5iE0cs7Oz/zSIPd8IrUKafh1FxbpmaKpO2IWukMvIFYo+/i1DpQx8gS58GW9QYa2YES
K0pAq0fz3IBqWufKTANFAyPQ8gWnix5kwGzBbbkyy92xXsy8Ba1AOH78RA9f6MXqFcSvS4Pc
uzYVkR68Bb/4dDEC2BQM71cdGGNPC+GQVw7sNnsfkPl1xbUwv+YebBrsddMmbFHSFkyvqzIN
bRR+9aQbtD7bx6GGgL6AqXytiBJ4BWu2lcVeQGfBC40ri4JvBOiF8qq23WstMOZstxdGo5ZW
YPoSfekbEHIVTu1cfmaF//WAOu+q1tJrFUDdhaHfh2LXC8Fa7moJ2IH+UsjSGS2NCLEAjW1B
3JzG53xRtP3FsQsglij1VdySmcWISovGZnUaZm9EGBtnI8Zd4InFcI8b2CUVTFIurhz0EK3i
9rvztKxRXI6VSQZqTZ78Iavir+QiUWIJI5VkTfX59PQo1KouWXgoUw9ftraRVs1fC9H+lW7w
/2Xr1D4un9YazKKB7yzIhUuCv5NUHyYxiOI1xnWdn3zi8FmFlzCYl+5w9/qEcf3+OD6ki3ci
7doFH2FSdYA/EcrWWQsK4Jz8CiYvqbi8d2y00ep1+373dPA3N2ZKGrEXnAKtg8HIFPqiCMRZ
V1i0mdHFr4A4tPjoIbOC7ioUyMp5IlNyBK1TWdKxMAaJsRVtUQeW2KpbwqEQsWOs/0y8zpiU
/AGaZPlG+7poPxMqTKiQV86cicRjpAMIZo1trliEWESqjmBbODagvgCOZpwNTMe9qgGiveRZ
ySL16BUodBJGTlfdrn9duFKFgQyL+MiDXwIbAdRiQYW3CYtOPlqKcbFNVxRCemAijxBpdsCw
qopLZEQTvwQiRgAXVjntgwVdW0nLNUzipTfRJKUo6Fjp35rLOznJB1TRcq83GtA+m5U9jQam
2b93srNUSSa1puuXgqaUou7x+VjOHwkuqTIh7KuS0uG9m3V/MFI5suUIt4d3BIPQxrYfBLN9
bdlcc1VYIt4InitjLtp01U2sT5AWUZokKfftQoplkYIkoiZEF3AyMqaNs5uKrITVykH6ElSz
C+7RRlWEjpJV7RR/Xm7m3vYH4GmoBDkUThRhBUGnnDTpoyu9dC2d1iFwFnCQLqpYi6smg91n
KjIcpGktG6f+PbLiNfpFoKt08+X4aDY/IoxsJMzRjGI2OMfUNCUspJHKYpgGPf+tQuarmBZj
o8/mszASV2UYG0TQdptx4dtPWmYIeRnAb+zv0Fvt5z7gOzS2+fDHf58OvVJjfSWwr2J0jgnX
M14HuJ/BwRv+CrU7b6j1rY4Hw//wVD88ZHBqharj4HTOoDFypExFAxrajEHrxrvfg7RyYe3W
ztvtGqJ5MOe76gufmHPYLcXAgmLDSOBx5hHzCyOiIdtv9DNU1xl3Awh6ImYD4yW50hW8UcW1
rIQKwr18UYi58+m8P/YgRDmsS8N0c5Mr1Pm6Vw4ryCz0G1d8bl8VIiu/HP6zfXnc/vjz6eX+
0PuqyJbSeSk74MzQQY1Rmtto1Di1zywo784oeC8CFDBrMHcp6HL13jeCpue4evEhL/tedalW
L4gAWUWYppKC7KZol0R/XPsGBPRVmtdUhmy6UtIrXv27X9LDcYAh3xkeJBDeVseY0Aro+7WM
PnofmSHISjWyyIzj9qpO/eKdLRSn9cpaawOAN5gZpD19vMdmFlB4EmErKK7Cws3yCOyh3iaQ
2/xzHdBj6cMO+DGd3pzWjARG8e5B8eZXEiX69FtEn/iEHRbRWSCjgkPEeSg4JJbrk4P7jdae
seHXHZJje1QJZhbEnITbdcpZOB2SPd06Pf3155+Dn38++eXnn2mQSOfjUIc/zz+HhoIGP0VM
1lS4FvuzwAfHs2D9xzoKp9Uz0cQZp/HQqryPDCK0wAzem0WDCE2hwX/k+3waKi+8VA0FFxTW
6uMJX6X9WNnChDfqusrOeu4mbER2bqn4bAoUBcE/5TUUcYrvxwMFa4KyTTtZccXHsgIm+6sa
rmSW53vrWIo0pw4xI1ym6doHZ9Bo653iiCi7rPXBahQyGgbGYNpOrjP6sh4RaLGcIEleWD98
FtGVGW4I7ua86i8tpz/rAls7lW9v3192bz/9SPa2NxP+AunhvMOI0s49LPD7JgNBDhRqIJNZ
uSQfthiiIk2c4oZLDQ8Ov/pkhfnWtfhEubjhvEmRNsorsJUZ9QggBiMHsuCKGeRQy05hcNMz
UM5c4ZTQbxayYCqoBfVHWmEi8pWQSVqm+r1qXNVXvQo/bic/84gsO6JXwgKKQMmJu1QCeRBv
ebSvldVTFGdjVUgBa0cLbbxByXSngT1Sdvxbl4mocFrik7RVUV2xZiBDIepaQLMkM6YGBeNg
p+/mKfYotv4H3sYKkAy3vYEY7oFvtJE48ABoEiorkdQZd4U6klwJ+wHtNPRigY6ybKw1UgFI
89Vl2ecNt2Qpuk+FzK21p649FRrvBDAJeIUufCVo32y3AvTjRTzT0MAnCgvrHg773Nrh9FLf
BYEivizF4PDjIUVzVRQpHiHOETSRkKNLOjeVE9H4wmugCjgwDZV2SWbZe7LAS+D0gvdKN6Y0
b5kx1Xq0CX2yjAvgEJ9t3T395/HDz5uHmw8/nm7unnePH15v/t5CObu7D7vHt+09socP357/
PtQcY63U3oPvNy9320d0gZw4xxBG+OHp5efB7nH3trv5sfvvDWInthLHuDPVhWt/ISQMTtbi
UdnCfBNdjKPCUEN0ngAE5xgsmFLbf8jsjCg4HE3pgYtwixSrCNOpK3hYouPQBuKUGGJ0jQzS
jvFN2eEy6PBojy93XA5uBmgDh48y0Fp3G8B1cRD1RfHLz+e3J53i5unl4Pv2x/P2hUyVIu4X
We2VgK4IgnqIWuCZD09FwgJ90mYdZ/WKmhAchP/JyopORIA+qaTXdBOMJSQGWqfhwZaIUOPX
de1Tr6n/pCkBTa0+KUiQwD78cge4/4Ebq8SmH80mIWengXy5OJ6dFV3uFV92OQ/0W6L+MLPf
tSsQAz34GK5CX5i/f/uxu/3jn+3Pg1u1Wu8xtulPb5HKRnglJf6iSGOmwpgllAlTZFMw/evk
RTr7+FHlAtFvF97fvm8f33a3NxgmO31ULccMuP/ZYejo19en251CJTdvN15X4rjw6lgysHgF
YriYHdVVfnV8cvSRmW2RLrPmeMZFSzIdSs+zC6b3KwGH2JjtJVLvex+e7mhsEdOMKGZqju0Q
yQ6y9Rdy3PqHTGo/2RqgueReCQ3IasF9UkMjw99smKqBm19KUXNjind9bcddR5hm46NCM3Qr
DNgTGDkrhog5tjjgRg+yDbzQlCbq9/b1za9Bxicz/0sF9ivZsOdolIt1OosCcH/koPD2+CjJ
Fv4iZssny5dHqHdt/sGXzBkYtwmKDFazejK1Zw3IIjmm2TPN9liJYw44o0mCJvDHY4afrWhu
jfEcYWDo2hZVPn+6rHW5mmfvnr9bTv/jVmeYdIrBp5iZqy4XGTvVGjFZ+L1tLYo0zzMuyt5I
gQYC54aA4Px5Rqg/mokdwtPIIurvntqHM9Ef3FTW+j2fOxH+MgKtnh2eAT71zgTIf37Zvr7a
Uq7phLrQ9krSvq427Gzurx3tR+HBVv6WHrwkdDCDm8e7p4eD8v3h2/blYLl93L4YIdw7zMom
6+NasnqL6YSMlk5MGYoZDiy3ZI3jA/RSEo4XIMIDfs1Qik/xgWl95WF1ADBGIjUIXkgcsUTq
dHsy0uwdpZFqEHWDpaSlEryqCG/KA2HjxhNB7BPOlIVjeL5A5fkfu28vmCrh5en9bffIMJ48
i9jzAuHDsU5Cs3v8d6IKtw2J9GYkJYVIeNQoVu0vgUpfPjoJdHNkLlJd188cEiExWDaa7Cjx
/pL2tXJvCYwg5xMFmM7qktt7mEpUPXoHeXffApsIsfijOW+MIMRZsWzT+Ff7GgjH8Cc+Cg1V
mzj11QdExrH272ZbWuhgS8sN5zhoG3R6vAOeaiDIuovygabpoiBZWxc8zebj0ec+TtGymsXo
raRffE0E9TpuztDV/QKxWMZIMfnMDqUHX4thIZ+M1ZCt4pPO7rimYcvR4oUhklLt1KA8NrGR
GWFX25c3jOkB+ofO9vK6u3+8eXt/2R7cft/e/rN7vCfvh5V/BmMIC+IbdKyZjJMan25aKeiY
haygVZlgqkmnPs6gqQuGYwhzfjRtsGkThTot8V+6hcbV/TeGwxQZZSW2Tj1iWJjxzIOHrRRZ
ctrX53TeDayPQPUFzik5s30O+q8weXzJpAvzvGRsD0iMGGKOrE4T/qBM0fU9y20hqpIJKwRj
pPYU1PcisgLW6TsYmhWjrKYAC3HWZ5XKZG29arTxLMoBq8MWfV/iot7EK20FlqmlQMRwMoAA
YIGOT20KX+2Aqtqut786mdnHCwDGiIeB40+RwKGRRle8Kk0I5kzpQl6GFr2mgJnkyz215L/Y
/kUD/GaRr+vF5BrRVe6UJdpnWbDmkqogIzKheHdIhGoXYhuOjsEom9ji77VmyQ7UceYkUK5k
6ttpQVlfTqRm28f7byowR7+57q2Hxfp3vzk79WAq+kXt02aCzuYAFPTqcIK1K9iLHgJjBPrl
RvFXD2ZP3dShPrrOqHWRYPJrK/DphKBe2RY9Ye9mZzPXmcDPkx5k3crSCCkUS6V7OaLpS1pg
Hk2KRwQH69dFzcKjggUv6LXXRkgprrTrO5UBmirOtGO3IphQeCUBZxcN0qFB/imIcCuSbIkd
VtFnRa0Eeyp2YNMQp2MT96fziPoRIAaGKBfKw3aVSkuRVd9hMBgmZPCE6FmvW9OekRsR/rnM
e5Mb21CfE06wzCvL0oa/2XPU9D+3nxDksnP9COL8um8FWfYY1AiEYlJrUWf2iwP/ii/JCosE
fiwSMl6Vyg6zBEFAWlML021W8UXSMGt7mbb4cKRaJHRNNBjupqJNTAs3gkUD01nYxkR0XiiX
AcZjcoy6ooXbIqXHNas8yU785g5IGUTm+5DAihN6j0Nx3Yi0LwSN8Kigzy+7x7d/VKjyu4ft
673vYKLkqHU/PMYhj9oUGFNisZJxPGRHA10gB+knH29pPgUpzrssbb/MpxnSUrVXwpxsnqtS
FFm8522+RdEH3+iBRhFVqHCkUsIH/MPO4GCNFqbdj+0fb7uHQSp9VaS3Gv7iD+1CQk3qhe0X
0OrO/kUWXQ2LAqMKFfbztBRjimHUFDiack69Gk4R/cYb3+IVoqVnsotRtfdVObgQjBnsfrMr
Oo4rmq52t2aFJdtv7/f3eAmaPb6+vbw/uAG2VQoplPzZENB+PAEDUQfdJf7fOj8NFu/KFEGB
MUcC9/JWSa5LBD1kNNtaJuSIGqwNTd9FjRjiEGTXqdsghQ0VCxohfIrcOcsHXdPEvP2dUXS7
ot0vvPfKw231WIYVIhH3FLBaTG8WuBhXJHWVYVo2Xq/Lu2hogW1/VoiQPUwNwNBuOH7zVKzd
SdaBBdXNvHPoDwsbXQDwofYC5o+wJO2HsBY4uL6BR2PRCQwP87KaZg4YuXmaZF/0T0OnL27w
50H19Pz64SB/uv3n/VlviNXN470dgFJgID988VjV7JsmiseINF06PfPUSMW9uvbL0b9IlJt9
1WsPQdimd+8/VEZTOuvG/YBB20OP1a7TtNa6q1aa8TpxWoj/fn3ePeIVI7Ti4f1t+39b+Mf2
7fbPP/+kGTyUbxAWqaJ1D+8dptm4hA3aqQitk+4y8dL/oUa7+SCEgL5CXRrVWnHilqnTDj1I
uhKTe4Gsp1Up02M90PrJyMHdzdvNAe69WzQ0WKFSsUZlpJikYbUX+kS0mGdUyq4ekxZakxgo
W98IxB0/ezZi0vLrXvVPOntl0ZX6lN+PXUpRr3gawzXduG+6AP2AqlCxnUBIi3WiPEqC79lx
mBUlnCQlvbtVFPHwoS6FaAGqOeoNl1O3rjW23zIq8cx9EK1Cvyp6yxADf1DH6JvLDDmf23GP
3ghTAUJ/abujhdHgcVv5RQdnKDQ5njyj62KP77GMWlZoYOTEM+1L5RcP26ipFosBw4tKoA0k
+whWl6BE7CMwL/D0IuGOyWEVNKWom1Vl+eI5KHRrxmiqMKtsJMsINjhM9jAUng+agYuyrFDb
S4YPAi6gJjhlVvXh8W+uynalFyFfiu6+XqU6IE+YTG2evXZIsgU4DdFUJnKlQ2Jv3RU7bEX8
00kn7A9PoF9PHs/OuEb8sjTfamUQrZBtV/cjW/A2tE3zi9EIFUdpxqBwaqMmad6KgPevwCeG
AZzycceV4UQeVYf4ww7YNT3XrZkxjMs/TpRn76BokVOswCSbKR4uuQe1zPqGEuUlmbFPD0xe
Am+IdHgbzekC4WecblEls92+viH/RhklxlDjN/dbKiWtu5I1pY4S9jquqLuTFuBAbAPwMGy1
deeJ9OzMSGAu6gSG/unkIXYOl0kpSYughr+3V54LqNav/x+RzHq1i28BAA==

--7AUc2qLy4jB3hD7Z--
