Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3GUUH7QKGQEACED7EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 588AC2E30D8
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Dec 2020 12:05:17 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id 188sf5470765qkh.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Dec 2020 03:05:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609067116; cv=pass;
        d=google.com; s=arc-20160816;
        b=LpBAoVu80/ZvhZHT1TsDvhPpAECTf1O7TGVUTfhM5uUgglRq0DSJaioeVde16lm5aP
         yD5Cszwr/DZaC5eKcX3oWvRTTwH+I3T3rFmzKj/+hEuWtJvhO0RHOePfoidL/O2OKyJ6
         uJkMrhJJZHlhJkd7yjV8FQYXOT5CkjEYJDKk29Nq3qia+lRcKmHsLvjG6w0eCcr/okar
         OLkpUmETJ+LvFpFMq5xCfpxjt8eFA62QAUX6e2hdNW20pQejzUD3ogc+GrXd4Gz+oXXK
         8iIHFF1wyAcKQ3V9rjuYSo7qNFWOiAJDCjrBjckM+sCvsJXsdwIAIYmoPYT0aSUq/adF
         DWCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=j0kMOem10aDCkcktXxV+SEtGnwXA9nOriPpIMOPoqWE=;
        b=Q/Vdh7aocxP5yT4xP+HbJYBH7sUS791L4EA+W5tmmcqNEax6A8oaPcdjJoVCrbEOja
         bzWpjz6/CqA0eVWSPSxKssUZv7NxAPhmu9IoB7PzqGbO4dIRjq98u8qQvMPAPFOLXVWQ
         afKJCaImmEWEIyemya5k5jbprUC5IopK3wA0C1VWHIogFW7CaoVI3lcaiGyKa1mrnFUW
         kAQ6p4NYOkhxWI1msusY9qLer7VVX23uR/YfF9NhyWM1mRKLK6p56z79vooHDVHr+GCN
         b2fFuq2FGUrdNqzhB36LMUxW+vmZDp+kncyuyhZGJFZHutPD/zNv/ug8GrLPg1Sxor18
         7xSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j0kMOem10aDCkcktXxV+SEtGnwXA9nOriPpIMOPoqWE=;
        b=aEBYW0bLDdG99TGfEu1klVg4fktBFREdZgFFKq6tfWBaMhc9lT9MF23+D3C1E4vzcQ
         uUozIJvRVM1ApMrcXdI765lrx/t16KeT3a3eus60r1DJwiKVG1tKt189sIKTN+n2GZz+
         8oa241ZEEm0PBscoDGXhndeIVsI9RS5Eo8nE3XXz8BhEXoZdyaYg4HqoSP6tZ2YBDV8q
         cyFPpH60pEhbj4mge4vZI+d5axieD9VQqWfznZBFgUyFIk/TkF5pa3Ik20pvHCbmMxDE
         2UdZaCevrak9hsjUgvc3AJ8Z9+RkUBSYSiLL081HzGQSVG0zUMMwvyqIze4jdGxIYSe3
         kCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j0kMOem10aDCkcktXxV+SEtGnwXA9nOriPpIMOPoqWE=;
        b=XQ1ABXekhyjhR33k94kTAJkzb8FdERxvRyFuwEfcxEovUAm0pDF2Doh0+woG+o+qou
         rwbUzc/cue8k78NC0OIYLAtSFx2IS0K6+yZYYSei5+C/E7UgxS8snkhu3wu/YlJVj65F
         pl5ROa+El8vQ/1woXcS6ZvbuY6HTmR51OHn3E9/7C8uXfQSbdSe+HSI1zKQAAqixoW1S
         sZk+f+FEeqNDdaOpI/kohL19VZkUw49wSYfdwyP/slPGAsQWmZIefhhTxUl7t0cwthSG
         wr6vukoQRuqGH5/4UIy30QoZIw304cG9+DRk5PwWs4AmRR3VbhwRUId3oHp5b25zqWj6
         ogsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aYymEZufsd8M8s+MuNTpP2fjotQ9VDqQnu/rQ786jCDwQtBTH
	R3iI6Pd/YngyQ7t/wYN7oKc=
X-Google-Smtp-Source: ABdhPJwrHlK/szqmgB4GfE5ZCvzHO85j5vBMaTm/B0wzl/nwg3JIYK3cxpZWJ9RzRSd8UXyjeWulAQ==
X-Received: by 2002:a0c:fdec:: with SMTP id m12mr43465084qvu.11.1609067116254;
        Sun, 27 Dec 2020 03:05:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edd6:: with SMTP id c205ls26965589qkg.10.gmail; Sun, 27
 Dec 2020 03:05:15 -0800 (PST)
X-Received: by 2002:a05:620a:1101:: with SMTP id o1mr41210468qkk.489.1609067115766;
        Sun, 27 Dec 2020 03:05:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609067115; cv=none;
        d=google.com; s=arc-20160816;
        b=FqBqgYWgV/zImcgaK4eYb63hmwaXW08MUDnwElMeDcOBeh54k0FCcGJgCYYaSWYFcc
         hSTuOFQarkRGgkAS7r1Ixm9pbngoCwiKU3BQwG9BTLaguKjZ38cJQXsXW2v5tmie9NAh
         JVePTH8OfndaS83r6Ykcz4yQIgujxXPF7lRbfOqQwgKvzLsw+gQw/rfdxW4dZ/8rYD1r
         bej3/Dwo96QpqiecioOYno9wvw554af0vNwu/ompUQrgW9r0wstY6v6udCtU2YLFZPsk
         B86D4Usl5M4wzicXGJKwvXh0+oOBcXurp1XTQvHGhsMgwObAOBm9+a8J0dJK+5u+K/Rf
         RBBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=xRbK82ORTSM1mfbOjkMEda2jU4FUdmEJnIaC7eAiaGc=;
        b=tGkzxOzm2El/1QMXw+gNaCoqQuxGNxW3AqtgfcVH0JsxYaWwyd8zb7BGWnOFds0bxm
         MDXh3ioZYRW5oydKAvP7OjWAFXeFhRngQCO1P5M9yEX397+gWh0dypXvWgFQS+dagTCv
         eIhi8WiilNKXi0bYJc4svOK6I03AvszOn00+2oJabqRMtmgef6pQAGXKBuT0qZxnGBLU
         VWOfHfG6Ql8otGw2Uy48zu+YQlnIXrM3Gw3YUhCB9AHeu5Ry9TZED9/6s3zHkoQeDoMP
         P2RwZJpRg8YWQEt767njEAvYCSfDRGRLQDWmYnIvhxscRD1QWqj2DivjE3g0YTx0khFe
         oxzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id n20si1757185qta.1.2020.12.27.03.05.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Dec 2020 03:05:15 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: Gx563pisgW1RNqOetJMxVvQuCby911fWqMS416Mny1eDSQquzg80MRpPWQoH3HkdlpQs6em6/F
 DrP1n4uBOEUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9846"; a="156089991"
X-IronPort-AV: E=Sophos;i="5.78,452,1599548400"; 
   d="gz'50?scan'50,208,50";a="156089991"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Dec 2020 03:05:13 -0800
IronPort-SDR: xajuAXGTF5nVqjXGbZ2qT6qCnc8NmQ3Rh1nfGE2IO0b/3qkDy1W5pAkK4gIvsnxrHbpH7QydvQ
 Cil3kf5yorDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,452,1599548400"; 
   d="gz'50?scan'50,208,50";a="459400172"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 27 Dec 2020 03:05:11 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ktTrK-0002Nk-Uq; Sun, 27 Dec 2020 11:05:10 +0000
Date: Sun, 27 Dec 2020 19:05:08 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: include/linux/debug_locks.h:17:9: warning: converting the result of
 '<<' to a boolean always evaluates to true
Message-ID: <202012271958.iKJasLnt-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nathan,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   f838f8d2b694cf9d524dc4423e9dd2db13892f3f
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   9 months ago
config: mips-randconfig-r034-20201219 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
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

   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:13:
   In file included from arch/mips/include/asm/spinlock_types.h:5:
   In file included from include/asm-generic/qspinlock_types.h:19:
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
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:13:
   In file included from arch/mips/include/asm/spinlock_types.h:5:
   In file included from include/asm-generic/qspinlock_types.h:19:
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
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:13:
   In file included from arch/mips/include/asm/spinlock_types.h:5:
   In file included from include/asm-generic/qspinlock_types.h:19:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:13:
   In file included from arch/mips/include/asm/spinlock_types.h:5:
   In file included from include/asm-generic/qspinlock_types.h:19:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:13:
   In file included from arch/mips/include/asm/spinlock_types.h:5:
   In file included from include/asm-generic/qspinlock_types.h:19:
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
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:13:
   In file included from arch/mips/include/asm/spinlock_types.h:5:
   In file included from include/asm-generic/qspinlock_types.h:19:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:13:
   In file included from arch/mips/include/asm/spinlock_types.h:5:
   In file included from include/asm-generic/qspinlock_types.h:19:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   27 warnings generated.
--
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:258:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
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
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:51:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_SIP_OP'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:83:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:83:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:83:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
>> include/linux/debug_locks.h:17:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:10:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:95:
>> arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
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
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:95:
>> arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:95:
>> arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:95:
>> arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:95:
>> arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:15:
   In file included from include/linux/mm.h:95:
>> arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxchg64'
           cmpxchg((ptr), (o), (n));                                       \
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
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
..


vim +17 include/linux/debug_locks.h

9a11b49a805665e Ingo Molnar         2006-07-03  13  
9eeba6138cefc04 Frederic Weisbecker 2009-04-11  14  
9eeba6138cefc04 Frederic Weisbecker 2009-04-11  15  static inline int __debug_locks_off(void)
9eeba6138cefc04 Frederic Weisbecker 2009-04-11  16  {
9eeba6138cefc04 Frederic Weisbecker 2009-04-11 @17  	return xchg(&debug_locks, 0);
9eeba6138cefc04 Frederic Weisbecker 2009-04-11  18  }
9eeba6138cefc04 Frederic Weisbecker 2009-04-11  19  

:::::: The code at line 17 was first introduced by commit
:::::: 9eeba6138cefc0435695463ddadb0d95e0a6bcd2 lockdep: warn about lockdep disabling after kernel taint

:::::: TO: Frederic Weisbecker <fweisbec@gmail.com>
:::::: CC: Ingo Molnar <mingo@elte.hu>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012271958.iKJasLnt-lkp%40intel.com.

--4Ckj6UjgE2iN1+kY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
EgIA

--4Ckj6UjgE2iN1+kY--
