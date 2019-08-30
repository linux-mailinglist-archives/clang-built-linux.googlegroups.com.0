Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB47VUTVQKGQEJIR2CFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F29A39D4
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 17:04:20 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id c18sf2965088oig.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 08:04:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567177459; cv=pass;
        d=google.com; s=arc-20160816;
        b=iPbBuL2POXPNrKXGyiKEQtkLAnvBOJMnkFZva8f+U9zIqM0ud/yju2OExuZcVKqj8Z
         +xrZqFnI6y4b/Z33+32TyeEwuwcRvoIU4Na3YBIA1NZJrq61yIrjuTyP3WNPl04LbgcX
         rNWIEKunSbuGKieCV8ZAhsFDpT/elkT1m9dl+Q59ixnwov12pLKph85ouvkL/C48LT6l
         bySi7guM9XGaxMsBaHtUwFV5meP0CpAFZgoZFCYaiU5nckghv37M7VWzWllNc/Qupo6f
         dFhbe8RW3Zgv+dU3ZwB2rExORKk/ztgpx81u+904fVxipgxcL44J9bT0iAb9781HacA4
         FVZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2dI7KPq1WbHmoMeFGy57K/L+V8wc5h/JpetZ/DCyKes=;
        b=tClxyXmiUlhPkm0R3ECTCKo2erp7LJt5u/O84kSSjxsIY3SSHNWBzp/EtG/u3Rn8ah
         t8xo1HY9333fUN9r7bsLswzi1uOfRYMjnoqLP2iMtasphz6JODaMT5TaLuvRYOMWNUeg
         8WTsQlpSo7cY2aVgxZBVxyALe77sAq9Co93fdtn5B2vdsJKSqoY3zfxURirjefVmHb78
         lCGdrXuSSOIOEaDhbNM69hoRwcFF4B3scogUtsA+xuRuMMtRBLJ3UMg67NjqxP/GF9Wj
         qKr+JWIBH0yl4AkRssETedjP18IrIRimrjixG5Xr5jVCMEmyo/kDiSOZOM/tcWkkzJxu
         mWXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2dI7KPq1WbHmoMeFGy57K/L+V8wc5h/JpetZ/DCyKes=;
        b=PBLj6HfAqeo3Q2HfUU1Ee/w6njEHqO6VUyY8sFveoScIUvHYKsWyKRZKtp5bDPNHG7
         q6xMpIuN3zqpyl3EtGnZvv/SOREkMqX0aos9NN2YGYypl/IS59bNdHuBQi3SitwjSJy5
         fjlG6wfOY5aoZuYokmfu5YYWIUfXoGrZcYZDOJ88NFaXjbDwicKalXg2oRBQ/4u3rHYt
         RkFYT1HBLj5rmJt9crqcxe1IPRz/fgW+l24DSri0TQq7QDYxl4jmjELO8gtuzXtMl9Sh
         izZKHPlQ7eA1Iy56J2n2q6bn0HzqIEVPQ3CJ9ek/yXYLAdkDpzvqEh9nVvZmXaP69owJ
         sOLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2dI7KPq1WbHmoMeFGy57K/L+V8wc5h/JpetZ/DCyKes=;
        b=fwL3XwbcTUKlomGKssQx9BdZfOB21TzsA6+yrFP+8PUZEF1W3ZaA+wN/1fL6i2nw25
         ZYTLNZO2zHgqnPzn7g4qcK2EvO8daG9eGonVIbdwqLZk4ZCTnScAHp+sWjGYvuIvfo6V
         4nBAu3+o1pQ7cIa2NGui9WNr8IH/PzEwOB7TP/5yOITYEcxjfbgRUcKUeZy1QpvytTfL
         XSLrSh3xtxZuX055aWFD5ddnK9h4ujAujx9Y0f26Tgsp2drtVOacoZUoZEop3drtOFRC
         A6rA3h36KSH8zi48ANn0bwSl7WzYhJsRd7ubc0zJM3itrFeZxFySraDFVYo5frR5mvQn
         QXag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUzHfRneTR3We2L/3NQ1AhbD0A84JeH/YSW0l7CcXPdaj6x8hid
	eVooGbB+S8w3sJolqt4Ofog=
X-Google-Smtp-Source: APXvYqyBDwzzxfkbSf/LRH77+yyw7Q4fZa/TrUQTv1kovbn3Pb+iFqdJR7p360tJWBKBs4e+nZmAig==
X-Received: by 2002:aca:4b13:: with SMTP id y19mr10717759oia.72.1567177459360;
        Fri, 30 Aug 2019 08:04:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:754b:: with SMTP id q72ls262510oic.14.gmail; Fri, 30 Aug
 2019 08:04:19 -0700 (PDT)
X-Received: by 2002:aca:fd41:: with SMTP id b62mr10923626oii.96.1567177458999;
        Fri, 30 Aug 2019 08:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567177458; cv=none;
        d=google.com; s=arc-20160816;
        b=eO5crxtubw3iGM4c4KiqxnshIfNjG4+haL37wkRzIoHsyfYydnC/xDmH15GV3/9L2z
         4eLzaxUgxhHPA9C+Uy7o++Hsu2nwGWDbT7oGaQZp6aqLxEgxv53MmHkZDdLcR4H0DP0X
         rnmfz7P7yQAOT6lbSgPgN7h6+7RKvxOHRMEMpVk4ueHTMqUNhAwtludqwsZsQ7gL2eNp
         2rroWJhJylUzWxDI7ETDU13EHxlm4mVApXwsVlw9DidxGTJGerlaVyJS8Sib1EnqHPz8
         5YeUpI2E38q42qtOyg1VElT4Ld0u+HpYFHKKNEAFWC2bIsayogwWL2tLqQFyFfftSGR0
         BWig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=mCkkiuFsp8PS/VxIE7bxmhzpHmNnWobbXAl8alXpJy8=;
        b=nly2+fMvUCdnvmFo1GmjwqLI9+TI0tvv3i4rIGENdIJY8XwXJhkWNkaZ5oLpg4FoWm
         /wu0bHOu+QvmQoEq7u5VkF7qgcv1LCFJyKnKDlzjv75xffapA3p8ucPmMPq2y4k7qrSV
         vj/4VF31G+cMS1furTuwQwsgSomYDj+uwjh+DzRRJ2uK13xP+GBRhIZo2AyBEOhIBF6b
         aCWSRmPoLc4RNnH0Buc76vkDbomiAHyl5KNG2db/wGLCxpm7k5unExmgICS4UB/2Rh02
         7Vv/TvwsbA7aVmhcAcq/UdqeUU4OPsBJ2CBORYfV/GcCxDYO0wFG5XukmNuY8i3pAwD7
         CANg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id 10si75980oiz.4.2019.08.30.08.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 08:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Aug 2019 08:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; 
   d="gz'50?scan'50,208,50";a="381148196"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2019 08:04:15 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i3iRj-0001xr-5Z; Fri, 30 Aug 2019 23:04:15 +0800
Date: Fri, 30 Aug 2019 23:03:26 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [cryptodev:master 241/242] include/asm-generic/qspinlock.h:65:55:
 warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *'
 converts between pointers to integer types with different sign
Message-ID: <201908302318.HRi9TWot%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="obhqtdchjxbx2fzc"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--obhqtdchjxbx2fzc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: linux-crypto@vger.kernel.org
TO: Hans de Goede <hdegoede@redhat.com>
CC: Herbert Xu <herbert@gondor.apana.org.au>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
head:   1bbbbcfdc0f0fa7a98ba0d551fd03d2c45d5a318
commit: 9ecf5ad522e09d6e11a7e0a0b1845622a480f478 [241/242] crypto: sha256 - Add missing MODULE_LICENSE() to lib/crypto/sha256.c
config: x86_64-rhel-7.6 (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 9ecf5ad522e09d6e11a7e0a0b1845622a480f478
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from lib/crypto/sha256.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/x86/include/asm/thread_info.h:53:
   In file included from arch/x86/include/asm/cpufeature.h:5:
   arch/x86/include/asm/processor.h:557:30: warning: taking address of packed member 'sp1' of class or structure 'x86_hw_tss' may result in an unaligned pointer value [-Waddress-of-packed-member]
           return this_cpu_read_stable(cpu_current_top_of_stack);
                                       ^~~~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/processor.h:384:34: note: expanded from macro 'cpu_current_top_of_stack'
   #define cpu_current_top_of_stack cpu_tss_rw.x86_tss.sp1
                                    ^~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/percpu.h:392:59: note: expanded from macro 'this_cpu_read_stable'
   #define this_cpu_read_stable(var)       percpu_stable_op("mov", var)
                                                                   ^~~
   arch/x86/include/asm/percpu.h:219:16: note: expanded from macro 'percpu_stable_op'
                       : "p" (&(var)));                    \
                                ^~~
   In file included from lib/crypto/sha256.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/x86/include/asm/thread_info.h:53:
   In file included from arch/x86/include/asm/cpufeature.h:5:
   arch/x86/include/asm/processor.h:557:30: warning: taking address of packed member 'sp1' of class or structure 'x86_hw_tss' may result in an unaligned pointer value [-Waddress-of-packed-member]
           return this_cpu_read_stable(cpu_current_top_of_stack);
                                       ^~~~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/processor.h:384:34: note: expanded from macro 'cpu_current_top_of_stack'
   #define cpu_current_top_of_stack cpu_tss_rw.x86_tss.sp1
                                    ^~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/percpu.h:392:59: note: expanded from macro 'this_cpu_read_stable'
   #define this_cpu_read_stable(var)       percpu_stable_op("mov", var)
                                                                   ^~~
   arch/x86/include/asm/percpu.h:224:16: note: expanded from macro 'percpu_stable_op'
                       : "p" (&(var)));                    \
                                ^~~
   In file included from lib/crypto/sha256.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/x86/include/asm/thread_info.h:53:
   In file included from arch/x86/include/asm/cpufeature.h:5:
   arch/x86/include/asm/processor.h:557:30: warning: taking address of packed member 'sp1' of class or structure 'x86_hw_tss' may result in an unaligned pointer value [-Waddress-of-packed-member]
           return this_cpu_read_stable(cpu_current_top_of_stack);
                                       ^~~~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/processor.h:384:34: note: expanded from macro 'cpu_current_top_of_stack'
   #define cpu_current_top_of_stack cpu_tss_rw.x86_tss.sp1
                                    ^~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/percpu.h:392:59: note: expanded from macro 'this_cpu_read_stable'
   #define this_cpu_read_stable(var)       percpu_stable_op("mov", var)
                                                                   ^~~
   arch/x86/include/asm/percpu.h:229:16: note: expanded from macro 'percpu_stable_op'
                       : "p" (&(var)));                    \
                                ^~~
   In file included from lib/crypto/sha256.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/x86/include/asm/thread_info.h:53:
   In file included from arch/x86/include/asm/cpufeature.h:5:
   arch/x86/include/asm/processor.h:557:30: warning: taking address of packed member 'sp1' of class or structure 'x86_hw_tss' may result in an unaligned pointer value [-Waddress-of-packed-member]
           return this_cpu_read_stable(cpu_current_top_of_stack);
                                       ^~~~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/processor.h:384:34: note: expanded from macro 'cpu_current_top_of_stack'
   #define cpu_current_top_of_stack cpu_tss_rw.x86_tss.sp1
                                    ^~~~~~~~~~~~~~~~~~~~~~
   arch/x86/include/asm/percpu.h:392:59: note: expanded from macro 'this_cpu_read_stable'
   #define this_cpu_read_stable(var)       percpu_stable_op("mov", var)
                                                                   ^~~
   arch/x86/include/asm/percpu.h:234:16: note: expanded from macro 'percpu_stable_op'
                       : "p" (&(var)));                    \
                                ^~~
   In file included from lib/crypto/sha256.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:89:
   In file included from arch/x86/include/asm/spinlock.h:27:
   In file included from arch/x86/include/asm/qspinlock.h:95:
>> include/asm-generic/qspinlock.h:65:55: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
           return likely(atomic_try_cmpxchg_acquire(&lock->val, &val, _Q_LOCKED_VAL));
                                                                ^~~~
   include/linux/compiler.h:77:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   include/asm-generic/atomic-instrumented.h:691:38: note: passing argument to parameter 'old' here
   atomic_try_cmpxchg(atomic_t *v, int *old, int new)
                                        ^
   In file included from lib/crypto/sha256.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:89:
   In file included from arch/x86/include/asm/spinlock.h:27:
   In file included from arch/x86/include/asm/qspinlock.h:95:
   include/asm-generic/qspinlock.h:78:52: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
           if (likely(atomic_try_cmpxchg_acquire(&lock->val, &val, _Q_LOCKED_VAL)))
                                                             ^~~~
   include/linux/compiler.h:77:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   include/asm-generic/atomic-instrumented.h:691:38: note: passing argument to parameter 'old' here
   atomic_try_cmpxchg(atomic_t *v, int *old, int new)
                                        ^
   In file included from lib/crypto/sha256.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:89:
   In file included from arch/x86/include/asm/spinlock.h:43:
   In file included from arch/x86/include/asm/qrwlock.h:6:
>> include/asm-generic/qrwlock.h:65:56: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
           return likely(atomic_try_cmpxchg_acquire(&lock->cnts, &cnts,
                                                                 ^~~~~
   include/linux/compiler.h:77:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   include/asm-generic/atomic-instrumented.h:691:38: note: passing argument to parameter 'old' here
   atomic_try_cmpxchg(atomic_t *v, int *old, int new)
                                        ^
   In file included from lib/crypto/sha256.c:16:
   In file included from include/linux/module.h:10:
   In file included from include/linux/stat.h:19:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:89:
   In file included from arch/x86/include/asm/spinlock.h:43:
   In file included from arch/x86/include/asm/qrwlock.h:6:
   include/asm-generic/qrwlock.h:92:53: warning: passing 'u32 *' (aka 'unsigned int *') to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
           if (likely(atomic_try_cmpxchg_acquire(&lock->cnts, &cnts, _QW_LOCKED)))
                                                              ^~~~~
   include/linux/compiler.h:77:40: note: expanded from macro 'likely'
   # define likely(x)      __builtin_expect(!!(x), 1)
                                               ^
   include/asm-generic/atomic-instrumented.h:691:38: note: passing argument to parameter 'old' here
   atomic_try_cmpxchg(atomic_t *v, int *old, int new)
                                        ^
   9 warnings generated.

vim +65 include/asm-generic/qspinlock.h

a33fda35e3a765 Waiman Long    2015-04-24  43  
a33fda35e3a765 Waiman Long    2015-04-24  44  /**
a33fda35e3a765 Waiman Long    2015-04-24  45   * queued_spin_is_contended - check if the lock is contended
a33fda35e3a765 Waiman Long    2015-04-24  46   * @lock : Pointer to queued spinlock structure
a33fda35e3a765 Waiman Long    2015-04-24  47   * Return: 1 if lock contended, 0 otherwise
a33fda35e3a765 Waiman Long    2015-04-24  48   */
a33fda35e3a765 Waiman Long    2015-04-24  49  static __always_inline int queued_spin_is_contended(struct qspinlock *lock)
a33fda35e3a765 Waiman Long    2015-04-24  50  {
a33fda35e3a765 Waiman Long    2015-04-24  51  	return atomic_read(&lock->val) & ~_Q_LOCKED_MASK;
a33fda35e3a765 Waiman Long    2015-04-24  52  }
a33fda35e3a765 Waiman Long    2015-04-24  53  /**
a33fda35e3a765 Waiman Long    2015-04-24  54   * queued_spin_trylock - try to acquire the queued spinlock
a33fda35e3a765 Waiman Long    2015-04-24  55   * @lock : Pointer to queued spinlock structure
a33fda35e3a765 Waiman Long    2015-04-24  56   * Return: 1 if lock acquired, 0 if failed
a33fda35e3a765 Waiman Long    2015-04-24  57   */
a33fda35e3a765 Waiman Long    2015-04-24  58  static __always_inline int queued_spin_trylock(struct qspinlock *lock)
a33fda35e3a765 Waiman Long    2015-04-24  59  {
27df89689e257c Matthew Wilcox 2018-08-20  60  	u32 val = atomic_read(&lock->val);
27df89689e257c Matthew Wilcox 2018-08-20  61  
27df89689e257c Matthew Wilcox 2018-08-20  62  	if (unlikely(val))
a33fda35e3a765 Waiman Long    2015-04-24  63  		return 0;
27df89689e257c Matthew Wilcox 2018-08-20  64  
27df89689e257c Matthew Wilcox 2018-08-20 @65  	return likely(atomic_try_cmpxchg_acquire(&lock->val, &val, _Q_LOCKED_VAL));
a33fda35e3a765 Waiman Long    2015-04-24  66  }
a33fda35e3a765 Waiman Long    2015-04-24  67  

:::::: The code at line 65 was first introduced by commit
:::::: 27df89689e257cccb604fdf56c91a75a25aa554a locking/spinlocks: Remove an instruction from spin and write locks

:::::: TO: Matthew Wilcox <willy@infradead.org>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908302318.HRi9TWot%25lkp%40intel.com.

--obhqtdchjxbx2fzc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
9B72AgA=

--obhqtdchjxbx2fzc--
