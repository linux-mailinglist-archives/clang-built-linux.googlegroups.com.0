Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNF3ST4AKGQETEGCI2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE96217C74
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jul 2020 03:13:25 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id o17sf23940183ilt.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 18:13:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594170804; cv=pass;
        d=google.com; s=arc-20160816;
        b=g9FrAwyCoZBmf+wPqSDTVcKGe24JuXMDYyR+uHN8FQVj5VJ0fHYw7LSHEJQrMdZWLz
         +FxmqrufOgqPJNisF6Y/+1HQhcrvJPOUsqczuMTK0/ViX5GHOpe2Hl/27MWiOERac0TS
         AL88Px3M81x9e6CZI8seVF97I0Ttw2tw2lxjbM97OIqsqLPIw+LJ+QxfD9eFLeejKKLB
         59XKDVCOxfUxXeqFovamrV6sp3IZ/6ubGZjomIk0CdQqTkRVbWbBxX52x/j2kiD0NTAD
         CcJo0QesQnl/ckc0WzxTF0mRp7zCeUxDndZtDVBIBoT/QVVRWboN239BgY8254dasfh/
         lu1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CZO/iKhhzYOu6w+IBHMITMEJr/Ie9UM5ImUmoXAlLI8=;
        b=Y301HEE1wLXTVpQa0cbL2tflSOyyTZsfCTesGKj4PKVKrafseHYW32Kvsk7YuTEqu7
         NVyCmBOSmCSsY1KyMlpytMAYUTHNqnA1uxBRLDiW+0o/qDptU7lGYwQEkXEmj1sRIp8V
         SJuPKM89RPKU/as15l586s9S5dQdcI2hdmz5kIjcJcTmcoF3QLza2E+CcCSLkaq5msMe
         AcZ4iksHQBs1zbyt954VCWhvMqZ+SNRWs9z/G0gkTfskqbsjbDS/5P/Q8E/E2cx60T8z
         WNcQJ6p3TojTSVVirF9oBAR7BOSZxcVITtTPC4iLB7208ETIT1ljOiR+ekFitY0hCLVp
         /wFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CZO/iKhhzYOu6w+IBHMITMEJr/Ie9UM5ImUmoXAlLI8=;
        b=Vv03UsNtkXcwZmv7n1ItPcIDP3L1YOW2m17Ukrww9jP+lUocM35SrnP3niys2HsRSK
         93aHoZe95fqMoXl/Q7Yj7ZsaHetZ2eOSEHZz7MJnictjwXMRv5wqax4ANI0+j8zT4wjV
         +7bxgHNhxFsEd6mRsDsy8+3BOIfS7ia2tIewm/iHI7XZ4K4O7NxbIMb4TjYdT2p13Ol7
         An0oVM5Og44o7ulNnrYiVyGXmhVNwa3FYcvT5rQzjJSoBbKZjC8FIKv6zB2V6YDwNxs/
         /hhavxm42ViVSahDrcCAL7GSYR0swppuGFXgV4cbk5rJ8IxhelM7vjyT9iTq91OIVc7u
         lWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CZO/iKhhzYOu6w+IBHMITMEJr/Ie9UM5ImUmoXAlLI8=;
        b=kJrtUxsijnrbpgGpPNN18ln6jPjcRavmRyqGxKD7vFlqK7JanNS7ZD1CSXA03d4Fs6
         dLDwFgSA3Dthpvlo067m9q1BDWVNJzfWfT6KTfFOk0bla8jEJ8uGxwYFOkMcyi9f/3eg
         AfTpKrrN/Xb1ur4FuYRLyfrfj3dpXX4LtRmRfHQjmuU8ubtvw6kZNIQRm0eJZYmd8GCc
         vGQ/angBmLKAp3nfj09u/riFrgkk082iMscDxqdaeNjCaH7pLJLnjHCBLSEIr6QNuoHr
         HB3zJFjrSwc7T2dveKgvhY5nqDZez7wO6JkTk31tcL9msvzjGHDVVJ5rkMsKORnLPYLO
         CUEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qAuNiAj3WZsGPzwpt5ujCiAnaVBnaGhOlLW5K/WkjlD5aoeMN
	GDxMnqONqBDuWdQppGHSOHA=
X-Google-Smtp-Source: ABdhPJz+7dPebanoNASxWMnekEbXQdvz9ICs+myVs+CBJsyEI/X9SMAttaFZaOLbQjbNaNaK26LAtw==
X-Received: by 2002:a6b:b555:: with SMTP id e82mr33054393iof.56.1594170804186;
        Tue, 07 Jul 2020 18:13:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da92:: with SMTP id u18ls88926iln.1.gmail; Tue, 07 Jul
 2020 18:13:23 -0700 (PDT)
X-Received: by 2002:a92:d910:: with SMTP id s16mr38196268iln.20.1594170803712;
        Tue, 07 Jul 2020 18:13:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594170803; cv=none;
        d=google.com; s=arc-20160816;
        b=kZZvYMd6PkQG3H8E65fft9ovv1m68GejCf8LW29N7YmYCqrdIoyjA17sKnxGPnQKVR
         hdeRGTo1FDXxZcad4/kO6KElLNQjFJ5xISSkm+dba2EeNt3GiKZRJK7PNZbr+O/UeDKN
         rZhqN2KBG2LMyV+Cubarvk0eDajibepXdcpgmNLcv58rlFqlPvIgkxioLwcBPXdZ3ph6
         D/1+ui9Psou+cndihEvY6NMx+Ny0+RAW+43Ucpv/+Pqd5HrtITPuLVkAWNnX+Kv65V3l
         R62GOCwxNBUBB44ZsfxWtXgGNAa7xXvNAiAJNsZYWil0i4VCtMQzzLE9q5Lw8q2m4uBa
         Mn0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=jeys7NrJ6ZTL/lY3feCI134JIODi2ozUA5Mw+3d3Z/c=;
        b=viJmEnk62bfuruKc/UmzfdVb5+GYCt9xAHVapP+NqEgcTmF1sQGJJz0HoVbCKSz4Fg
         YXZLXRd4LZHlQ+BHaNGPsW5yZgvASeU7Okz8PKeaQXW+OgSijKYBFqYGFeByCQnk9246
         PnJ06Q940RRXw4+zv776cQEs7yGHQjTIJvR0vRIMtCMZ2f9WqIWio6UlMRo5MXu5zzC2
         WTVfC38kVRggOpwcW/LP0DiN7RxBCWomzF2LD5F1valC04oKT7f0jDcTVXwCUIV73bBZ
         v5j69h1BIBQBEhxmsXBkrZz9aTZjMQb+Niy+ie0ztxnYYEBhWOqDke4P0EdRqFfggvyB
         djVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id i20si910197iow.2.2020.07.07.18.13.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jul 2020 18:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: BsZXZx0EjFbjs30/F69/HtXtHFf7bMEujhV9f8JoQgtUKG097NWh7eixGH9zN768Tiol7bChyT
 bNYwBEcHZ2iA==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="165793429"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; 
   d="gz'50?scan'50,208,50";a="165793429"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2020 18:13:22 -0700
IronPort-SDR: cntM2Zfbqty7nuA9UyE6Sxh+sFmw9gCLlcbJOxb8DGqtw+5QQqaqINPSXl3sNyfhXVAxl7IyWR
 8HBIiiVXpoag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; 
   d="gz'50?scan'50,208,50";a="323712821"
Received: from lkp-server01.sh.intel.com (HELO f2047cb89c8e) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 07 Jul 2020 18:13:19 -0700
Received: from kbuild by f2047cb89c8e with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jsyeF-0000SZ-0k; Wed, 08 Jul 2020 01:13:19 +0000
Date: Wed, 8 Jul 2020 09:12:54 +0800
From: kernel test robot <lkp@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: arch/mips/include/asm/atomic.h:49:1: warning: converting the result
 of '<<' to a boolean always evaluates to true
Message-ID: <202007080942.9cQSVb0a%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nathan,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   dcde237b9b0eb1d19306e6f48c0a4e058907619f
commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
date:   3 months ago
config: mips-randconfig-r012-20200707 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   clang-11: warning: argument unused during compilation: '-mno-branch-likely' [-Wunused-command-line-argument]
   clang-11: warning: argument unused during compilation: '-mno-branch-likely' [-Wunused-command-line-argument]
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
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
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
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
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
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
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
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
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
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
   In file included from kernel/bounds.c:14:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
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
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
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
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   In file included from include/linux/debug_locks.h:6:
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
   9 warnings generated.
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
   ATOMIC_SIP_OP(atomic, int, subu, ll, sc)
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
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(raw_smp_processor_id());
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:176:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(cpu);
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:210:25: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpumask_of_node(cpu_to_node(cpu));
                                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
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
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
>> include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxchg'
           if (!__SYNC_loongson3_war)                                      \
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_loongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
>> include/linux/kvm_host.h:332:9: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
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
   arch/mips/kernel/asm-offsets.c:334:6: warning: no previous prototype for function 'output_pm_defines' [-Wmissing-prototypes]
   void output_pm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:334:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pm_defines(void)
   ^
   static 
   22 warnings and 3 errors generated.
   make[2]: *** [scripts/Makefile.build:101: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target 'missing-syscalls' not remade because of errors.
   make[1]: *** [arch/mips/Makefile:414: archprepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:180: sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

vim +49 arch/mips/include/asm/atomic.h

^1da177e4c3f41 include/asm-mips/atomic.h      Linus Torvalds 2005-04-16  47  
1da7bce8591d58 arch/mips/include/asm/atomic.h Paul Burton    2019-10-01  48  #define ATOMIC_INIT(i)		{ (i) }
1da7bce8591d58 arch/mips/include/asm/atomic.h Paul Burton    2019-10-01 @49  ATOMIC_OPS(atomic, int)
^1da177e4c3f41 include/asm-mips/atomic.h      Linus Torvalds 2005-04-16  50  

:::::: The code at line 49 was first introduced by commit
:::::: 1da7bce8591d58bf2a442b0324659af7390401c2 MIPS: atomic: Deduplicate 32b & 64b read, set, xchg, cmpxchg

:::::: TO: Paul Burton <paul.burton@mips.com>
:::::: CC: Paul Burton <paul.burton@mips.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007080942.9cQSVb0a%25lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKUYBV8AAy5jb25maWcAlDxbc9s2s+/9FZr2pd9Mv9aWHTfpGT+AJCiiIgkGIOXLC8ax
ldSnsZ2R5V7+/dkFbwC4lH0ynSbaXSyAxWJvWOmH735YsJf908PN/v725uvXfxdfto/b3c1+
e7f4fP91+z+LRC5KWS94IuqfgTi/f3z555eH+2/Pi3c/n/18tFhvd4/br4v46fHz/ZcXGHn/
9PjdD9/Bfz8A8OEbMNn9trj9evP4ZfHXdvcM6MXx8c9HMPTHL/f73375Bf7/cL/bPe1++fr1
rwfzbff0v9vb/eJo+eH07G578v5oeXfy6fbs3afbD5+X208fPr2/O/1w9uHTu5tfb+7u3v8H
poplmYqVWcWx2XClhSzPj3ogwIQ2cc7K1fm/AxA/DrTHx0fwxxkQs9Lkolw7A2KTMW2YLsxK
1pJEiBLG8BEl1EdzIZXDJWpEntSi4KZmUc6NlqoGrBXWygr+6+J5u3/5Nu4pUnLNSyNLo4vK
4V2K2vByY5hawVILUZ+fLFHk3apkUQmYoOa6Xtw/Lx6f9sh4JGhYJUzGWcLVhKgjyWXM8l5E
339PgQ1rXFnY7RnN8tqhz9iGmzVXJc/N6lo4e3AxEWCWNCq/LhiNubyeGyHnEKcjwl/TIBl3
QaTonGUdwl9eHx4tD6NPiRNJeMqavDaZ1HXJCn7+/Y+PT4/b/3w/jtdXeiOqmBhcSS0uTfGx
4Y2joy4UB8d17ui2klqbghdSXRlW1yzORmSjeS6i8TNrwET0ygyqv3h++fT87/N+++BcUF5y
JWJ7MyolI2chLkpn8oLG8DTlcS3gRFmamoLpNU0XZ66iISSRBROlD9OioIhMJrhiKs6upswL
LZByFjGZJ2NlAhex4+wNRfJUqpgnps4U3EVhTdRwlu6GEh41q1T7OrN9vFs8fQ6EHS7MmpsN
Hi3L8+m6Y7jPa77hZa0JZCG1aaqE1bw/2fr+Aaw4dbi1iNdgpzicXu3s/9pUwEsmInb3VkrE
CBANoaoW6bAQq8woru1WlLZsuq1PVjPoteK8qGpgZS3yMG8P38i8KWumrshb2FFRt6gbH0sY
3sskrppf6pvnPxd7WM7iBpb2vL/ZPy9ubm+fXh73949fAinBAMNiyyM4841QdYDG0yBXiXph
T3ekJekineBtizlcZiClHUINd0nXrNa0QLQgVe8NO7cSUnGz0JTKlFcGcK4E4KPhl6AzlPh1
S+wO1/34bkn+VMNdW7f/cG7fejhSGbvg1is6tyGX6NpSMEsirc+XR6MuiLJeg79LeUBzfBLe
JB1ncM3tZeu1Rt/+sb17gfBo8Xl7s3/ZbZ8tuNsGgQ1CDpj8ePnesdYrJZtKu7IE0x2vCDG2
pO2iRgYpE8r4mDGgSLWJwJRdiKTOSBUBvXXGzk9aicRbYwdWyYw77fApXLxrrg6RZM2K13k0
P3XCNyLmxOSgxuHF8AmiKiWGWaNMaanEO97RsJp5hg/8tq4YXEZqtozH60rCyaK9q6VyHGSr
QRhwWcYuTzDucDwJB+MUg6mmhK94zhx3FuVrlIYNI5WjAvYzK4Cblg14JieOU0kQvgEgiNoA
4gdrAHBjNIuXwedTdyeRlGhb8d+UeGIjK7B44pqj40THAn8VrAwONSDT8A+Cmw0MIV5N4L7D
nAm3Z2U4RtMlqzHqdZgeJKR0IIil2s9g2WJe4RADco6d4201rPvQ2r/xcwFRn4CASzn8QNcx
/jETz95qwwSctpFIGPoNPtUzauFnUxbCjfMdOxoxDWJuvKmaml8GH+HeO/urpLdisSpZnjp6
aFflAmyE4gJ0BsbNiT6Fo1dCmkYJN99jyUZo3gvF2S4wiZhSwhXtGkmuCj2FGE+iA9SKAG8Y
RqbekU6PAU/RRvHuZpTmH11ls4bFQkl7B2vmSULec6vUeC9MGNNZIMxuNgUsSHrRWBUfH3kJ
h/VEXWpfbXefn3YPN4+32wX/a/sI7p2Bj4rRwUPw1UZAzhztxGS48EaOTjhUtOzaeAsUlZSH
zptoaoy9ZJjVkEmvZ0YzymcgU8/I5jKaHQ96pFa8T9DmydCL5UKDeYfLKIs3EGZMJRBDUGet
syZNIbeoGExtz5SBy/AMQc2L1lhBwi5SEU/MGgQ/qcgnkWN3Xn5NYrgzwkYZ9uCLm9s/7h+3
QPF1e9vVfsbwAwj7CIjcqiVgOXi2gg7EmfqVhtfZ8t0c5tcPdBj86nKiuDj99fJyDnd2MoOz
jGMZsZmjLyBxBt2IMb4OvIVP8zu7pqsGFgunxMuZpecM4n/aWuRMswPryqUsV1qWJ3S1w6NZ
8pTQQ4/kzPPnFlWBHsPfgq54WOGBSarp8K/jEM8sr+SQejO15qKkbYMdv1GnxzNnV15CxFpH
y+XRYTStbVWBmX9FB8QMS4j0FV8JA5ETvaUOSSt+h3x/AHlC76RDzswpoquam1hlouQHKZgq
eP4KD3mYx6sE+gJmOUSQi7rOuW7odKDnAn5DalqrOpJIrGaZlMLMLMKqVH158mHOHLT401m8
WCtZi7VR0buZ84jZRjSFkXHNsfIr6Utf5oW5zBVEzeAkDlBUByjs9auYYlh5oPVY//r+yGQV
D9Cdj5h6gDD3zS64WGVOODuUl+CGRAoyFjCOXnrS5jqyEDU4QkiYjM2J3Bgt5htwoqduhV6r
2Ie0ZhlTbqL+hfU9o5uqkqrGGhdWI7XnO22SzZnKryZBMWKHsZmsqxzCNUgiiWKkZiZxU6IA
0bPp6vxODNvhmRs3Y2Go1X3Dy0SwcmZJb6HpsuVUBwJDuAFETxmgdQUH4sS4mLDxPD1ZBnT5
MRwvHGNbETFnB9HnZ0MhzYsk3G2T/mVwXrDXDPPAAi49lTk6HE7sowyDJLpM9IxwrnFfU22Y
LKTDX3C2NhICNT/rsGDFe4SJ+JUsIefNdexWrPxdu0tGUSlHsjWDKLO2uqH45nxJrv3sNIJ7
0z4k+Krz/yGBDxCDfpzBopJg2BkqT7WCDPkIM3hI+dwqMJgfMOrcXLA6zuxtHkLILinY//tt
Ox65XaGTakEisGq4pkBtsmjsao+PjgLTtmFg5WHFp7TLtLEzFgjM8dmaSgNGgrPTtfPcYQv3
YOovzTV4M3vE58en47WADYMZQxX3RYhqVCme8tp9TEFMbxmSpqjwAnpxFG4lrfoDmNFwsH7d
rWqHO6iS80RjYV1DtFRbdlIB21jJLpwP1ngRMEgEFxMj1RMrcRlYqVZzbYl6I6YD9FUZB6rD
tEg6a3A0ReAZzsHhjJXA99Q5ZQXv4xULfDsYYr2xhXZsd+szwFlqsDOQmZb+pGXjGnpvEh9l
k3TNa6yGgubacr/iDgGe1oCy2b5JhQJVj7PGfZUuZcL1YEI7YGJLNWMgU1SEunir816WSzur
Hh4bPXubXZvlKXmRADNzxQAD13IWNRPL4kzvZkct351RxQ8701Gw4OOjJfWY6kmAKTSI3qPT
NRqTQePaiCRT+Hxz7r0WX3LqtTVWTGf2KjsVmOxKQwqeQ0IBd/D86J/P3Z/3p0dHbgeC5jHW
LCYGQJ4swQicnR4wA1jgkU4lEZ/ka1GapI6C+wa2gFUVhAiwrxbrTwZO3SOYjx4Vu3gjZVwk
2CIBtloWb6MEIgOeBHhTieeEJ7rtXOL7jetgXQ/Tj8WwMOHVNMrBXHVti7NTXLVq+zZyvuG5
Bv9rHVj08rx4+obO+3nxYxWLnxZVXMSC/bTg4Kl/Wtj/1bHTqAJEJlECuyiA14rFTuwrXItT
FE1gfoqCVUaVneUrRHl+vDxEwC7Pj9/TBH1drGf0FjJk966nQ8+HQaoN/gZpv1kc7jGCZrfz
OHY4+NyRyTDUBFjpwiJRpsUYlNojqp7+3u4WDzePN1+2D9vHfb/A8UjsnjMRQUxkizRYHocs
0bXvXcqgUdMJdIeZAPqnqylCr0UVuMKqMDrn3Lv7AMNnHwunIpQCoqo1R4XWHqMB2jUIHY8W
xsOuvPk9FraoGq4l2WCkncw+f/V7mI5O7LwQ+SRyZmCcO+7t4iOI+QLcIE9TEQusA3deyffW
dtGD/s2e9ZBitBTFQDH0qwFO3H3d+pmHSMLIAiFmJTcmZ0niZaUuElIR72HbQ0JeTyf+LlHG
8hpfSiaVeVT7YbWLZHf/V1+I75NymsDNONqNupCJWCzH9H738PfNzp+mD4KFKmxYD+EQmAty
RxCOCLr0AJj2sYpqdUIctuFhMQXNewlXkqfCpJDFR8x3wispVyCyfjUEOxxpU/nYlr/bTpbt
l93N4nO/vTu7PVeIMwQ9eiIY59lCqLphubie1Hu9Vr+b3e0f93vI+1522//ebb8BY9I2tcFE
7D0H2xhStuV77/Vz3ZYySIn/jqlFziK/gueaN4wf+pgh0hcsbNcTsAh0DDBJHaDWYQ2lhSpe
kwjvRdFC7AKs582kXAdIrIVgWilWjWyIViWIYduL07ZSBVYbcw7I2GqRXvUv28HcujCFTLq+
xnCtiq8gRkSLjcEBNtHYXpoq3EH3jueCPIM2bnM8iWClFwysnKhiY9OMoUWVIOr88ptoZZ44
9NSCupgTLlHuFdrm4G0Og+JAVeCx9/LUdaj46L4Xy42ziLHBIF0r6dZUWqG29QWrLGsxQcMx
w2RZ2B0601sVavi0q2pGT0tMBdEp9dWQgA70qU8ZeYyvb07cIpMmh9QNrxsG2vh4fBBLLJJf
Qsoiy7aTsW5NYqjzdrR9ahTXE5WfRIsBgZ2AvE7+qDEAJfg60eMcE5fk/VR3+0S0llUiL8p2
XM6uZBNaoFhWV92CTe2+8mPBLGqCGxvnGL6iLwGn4VYCu/WcLDEnRFUgBIu5HKzIr+2O2+/6
r5XJgrF4pOAsKSNqC9XOa3d4HG3hoe8ogDy9d2SrWG7+++nmeXu3+LPNdL7tnj7ff237Dkcv
CWRdzY9+7D3AxlsIttljxVuUXi/mG71azwruYoGNIa5jsI0UGvsTnFpPexm8/NSCuhIcpnt0
HtlSNeUhit7gH+KgVTz0u+f021dPKegOhA6NWqHAcxyiwXf8C8hrILsonW4xIwpbqaCb+UtQ
K3BOV0Ukc5qkVqLo6dbYtEI/cqMOUqGBLo/HU2rK9psOoJEQJaB8J7YH1dz2lCeWKMhNQhJ1
ERCMGZNVYP7P9vZlf/MJQln8UsrCNo/snQBpTPlGHvDBj5g6Ih0rUdUTMEjca4nBsVi+Ia/K
3ILa4Hz78LT714mjpwHdUEMMSn62z6vKeVvYC91J24ePGsRLt2AxFCRtf0Ho3bHDyZoW5Anh
dBjRpUzXZtVULsMcDF9V21FYCzwf6trdGiLUUr+RpAO1xjOeaYobkU6WiQV2xVG7PVdbiJVi
ASkaXUi5lKnDBwLr28EeR41nKda6oJKLzqNYT1KADiPP89OjD0MNdca7O9dpioere8GuqGSG
pC7anrSZou+68JQx55ByY2WfThr91tkOel1JmbtcrqOGtoPXJykEiBQLTfSKdTUwkF0113He
j7MaSVLYUN3KoY/hiOnbt99NHyC6bWa2SB+2q/eODht2eRln2BjijrOBgSxzDBIq2xpK5p6j
k8cuAozdWO46uvkLPh7lpI6FMOwHgSuktf9yptddjbNPPawZKbf7v592f4L3ndoPuERrO4Xz
joUQkwhGCRIsttOPiZ/ADBYBBMeOIC9+gg9j87QDq6UDuExV4X8yMk3R+QZQlq+ku3YLxL5I
YuUWZ9/+U69d1sJ1E5lK5sKWT312rfWgSgHtSLSUGoylDlhCdiS91xCO76Qe/w5ETeE8ulCP
ApdJZXvDuRvbOcDgCETpn7GoWgcRs5kv9QHBUJxTEB6TEgWiqnS/HGU/mySLq2AyBGNBna7r
dASKKaooiUISlQgkKaqVwmaPorkMEaZuyvY12hO0HUHvorBbxOtVSK/JAZ2QXAv3irWsNrXw
QU3izOvAU9mECwHQuErKauBpGZb5x2cgeptCnHsxirPDga7HlEBFuwVfOy3Q6m24C4shgVMd
MzAjBUbpdGB/mfjgM2NphinglDF1dx42cBb452rQUc+h9shIUDdnQMdN5EY4A/wCZruQkuaZ
0SId8br2lX/EXEU55VsHgg1fMU2sp9yQ/DB1Q+95iGVeEfwgLZQE+IpbjZtOJHJwNlLMJAM9
VRIHkpmSxAnt4scDiygr04dY/XmNRd8OYQVHl4UHipKukfcE/ZkfJFIBlwDdb+P8+9uXT/e3
37sSLpJ32vvGWLU58z91VtY2dFAYuA6p9K0qoNovp6D3MQmjwi68RGcTW3LWGRPvLp659mSW
1WA3/IUUoqKe0S1OuAWplsusoTkjjLdlAgZ3xncAUgvqAduiZtjNuQJAtRbb21yfS9lwVQdY
CB1qSDJDcOtTpoJqTzNgOb+1ShS6MJvl3Go1X52Z/GIiywEHoWtMwYPvobWaVuUDL+qRvGqN
m/uxV+Wx+GChOOvcrwHAMWPbHNaDu7DacY5VXeFPKmgt0isPY4dA2mbLaBB0FZWX4wFFWFce
QK6b6HCREglkDO6o7ncmdluMlyEX3293k9+icP14xxtWERZiJjRdwE4tLWWFgCyiXc8BAoiN
KGyfCuB3Dg/hg+/qTwlySQlzQEvtWKUyRUNX2nTLg+JXV8MgqgMDIwj7qSmQVf8daGICE+iI
i5pqkIvFngI9g8Nv6qZefu+hqS8eUXSoi3CfqcMPyazKzk5o32/mJ6xtgVeCl51xsi6Rjmsy
jnZIIB7LhW+dvOWwgpUJFa14VGldzYg3O1mezKCEimcwkQLHgxnJDB5UJhJSm3L+3HQZltnI
w69mEhGfF5v5aoFPJeZkPZ5+K6fgrLqbRQ8umS8E+DyRNsJCYSKspggLpsEEKJaQRgASHdCL
y6tglVPfNBl5ObhEax0vbSXzeXH79PDp/nF7t3h4wm+eO/UGd2h4tV0Uiu8AWvM6nHN/s/uy
3c9N1fU79z8tcoDEfnNaN8UrVKOPIpyCQ9ftg9akmQGdXXtF8sOIVzaU6Jj0HSNFlr+CD8tf
FBHW4Wz/9BuXnbv+mCSQq9fmfIuU/LtEMCnx68+vSKhMZxykSzLrZB0iGXpNgghrQW2D+sHN
K54IxcnfGqBldcgEjHQw9ysEva04RON/JZ0iocK/KZ+4KrR+lQbyIF0rWyPybMLDzf72jwPm
p44zW7Gvryo+K+6WDOLl1wTdEsb9jyocIMkbPROqjjQQR7WPM4dWhdYCv382EzrQA+badubI
bcvf6+t4y2UcqQ/dg47K/RYUgcdg6DAB30x+4IIi03NB1ZSWx9RjFEWoX5s2Yzqzon0bw4zn
1SsqM2vGW/Q0dSeJFCtXM4HPlDxf0rEmQcnLVZ0dXOBbFA3yyrfNd8C2dAQ2BfeasgmqMp1L
rQaSNjc6tGh5Uc783gxB3D5DvJk6u9Kg52+TSbWuO0s3T/OxkcHPzExpOgf11jUqznLq8ZQk
jV83emGCc5DWvoe8bXJ8yjksnOGx5xUqFfwWF0HUera3bgMDq7dtovFb6A8WNMaqUBdQe59t
i/7y3VkAjQSGS0ZUE/oB05ac3PcdBx1+3SQkQ7toxOxLkUMy43B8ou6Gz7CwvQLkI8mErCQk
NCyE2q9FBvaKpAHO3QSvLGR2CYAoJy98If/XmYvuZTTkYn8+RIff2h5pNp4etz/bWP12oI42
5pgJTxWz5Ufv22GAaW+uxdBJchuH9kMdlk1F8cMq1MwLY4ucMFL8dwivp3BMqP0KB8gA4KKa
FogR3sWZWSDZARMEFSSNqtqLTh/iQFbXeTj7UOAM+A5ZxO90DuFRORUCD+0lV94IKt3wCIa0
a25ds9lNv+Fylc8x7yLswEiNeBD5/3H2JMuN40r+imIOE+8dOlqULFk6vANIQhLKBEkTpETV
heGucnc7xrWM7Xrd8/eDBBchgYRVMwdXiZmJfUskcglgiB6s2MkF6YlEjzUbB8pvmEYNlSY1
wd5bMcOS+vf65xbVZems0cS9rJg1tWLWgdmP4cNSQe9X69D0Xzvzn0LwRtgW8AgHmwPuSQsJ
tz5yelg0hyyYHBrRe2i8lok8BDOh1mWAkp7KFoWq/C6yJTRuvu/sCOsra3dNr6A1Md3XxDq3
s0cL3a3iuNZL2uPH+1OaPCbW4x0/5cnXx7efWBCaMDfymW5fsbjJ2KgDNlTiWkYByW//ZEP0
/vi2tOt47K6IAacRIO5ubHbTQtWejQRCosGwMJv5oluSGCYLzJDaOPJMtAjsTRSB1yTcu8VZ
uADHZlF4VxQLp2q6JseM5eHGVbzMzu8XmoZ6FOrb0ajxfAoUrPKAuqLdU6TpokXgSB3j0psW
A6Rr9Bb1BR047lORxdEl+D0Cvrs03ndF/CHJAy7nDM2oiWF0ovo3XpmuiFKC5OrAIr9sgjB3
HDvZ9E75l+7wsENxY9thG+hLdHSRqpRUtu0NnC6KKmAgJfW4s07QBucWRZMG1GGAJKnOZU0p
kxisWztW096jAsIXYpl4M1jspZ4IeVGUvlGS0btSrgwAQGQtYPXB1hPdE3Xp995LAcNe3Cu7
XMBZlqCPBW4+y6hdo11YQ5+x0nJLUIJfMKvYdVacStt/0QAYnaHbxY2o/EBJmgTnHBq7sjmW
Cdbl2fDD+F0VIMFlGUnZ82gkyqutnspTmWhMQg6S08TqjDRX4AO4gFALaLfS84qBxvqRHNei
5PlRnYTmTOhxH1RNabGE0RpwJ7IsSX1HczorxGMdVOAZqetr5OoSdNkSGBHYCj1UnihbWVN/
dQWX4O2h6/kXbK3RO1s2uiiVoNaoRdG/AuJ3rK5qwXbg3GHPtPE9YuHAo+sHETgiwNtrXXEm
e3NM1BW2Rvfs7fEV+4Q31b6re1tEvHyrQl8/ilxo7ofkxbw8HYStPm4NFJOa9aP7CZ/KYIKt
WUuyxYCLE0pGCJj9yc3nQ7Rdbr1e0ZhZ+vjvp0+khTmkOwIJXcixTewlByCVeaB+cqE8E5Yl
INsCTTzS9gCIdhn3899XRBd9YPnHTuhfy0BWd0emQFEwEdx2/Guq0nll9BFoSs30gn9rEpcI
B5zc3s4JEPYncgHTmYudgP/dKkq/ivKdKpbg94xqqvrAXAc9AOZSAXmg63oseBBx0+020Xoe
Xe1xunJuZlOladGfRQJVCdNkrdsWhB+6AIblKs3Yu4EW1uAgIXJ6uNhhMyoL2CWTygesqEZp
dggcLv/+8Ml+bYUUG3AOrwlwPjASPlClAFw4q4SgHEbEg8skZgPU725TS7L5zbgOR6G53yac
X+9Vu7djof1TE3uRtcFTogCmb95tZZvUjxBH3HIB50ZCkxUKMTATPuRVpWrvkB32rruzTXjQ
0XMB70TcVQ26zZ70DUgDCEiHfPaduNHosU0oDQjHyzAgVZ49ImEd6MluD6yQNVd7lisy2qay
sMWNIy0MFM8KMIg7sSrX8xeHjRjJEg5uHQbX1l2RN2RghZG64veNbq1xOQ9WMnyfxkTZYJw6
hGIyJGDwo8g69pegkkaObKpX5yplvnepCX1C44DAwKKiRJmIna4dIf19Racqg7gkkWFkfYcD
Y03o0AwdGF50VRxhXZWApSXMUlJJ2SIbXfz8x38McVK+fXmc/fX08vj8+Po6eGF5nb08/vcP
DZs9zCBa3ezTt69vL9+eZw/Pf3x7eXr78wvyQz7mLrk6vFd6xnFskglBhF8i8lajPaPzkIiz
MY6B3stJ1Wx8hmqN68l/WU4tT0JDyZOj2t2JLKAh0m0dS6xtaUxm7agJA7hCLg0G4OjJadpN
BY6Hor+D08IgJ01inCawu/MS9ArshTlAwNKirs+eY6kJDwvXvjqRD0dI/RJu7nuBLnwAzDGH
MIC6hgXeQYHggM/9gel/eJntnh6fIb7Bly8/vj59MgLK2T90in/OPpvTBrG8kJMS5NO7xsDq
j+ZzXNldWrqV1aBOLEi1C8glXy2XOA8DwofzBaxzwmBZHTMf4ic3UC+1qof+9WADLe73tgRU
sNvVcneq8pXbXOsq9FNDMIkhFNNXXqxSoBljC+BbbowQHMYlBY+d2AWsvoXqyYpCkJhoQUeW
CQiz1rXSUXXt8VJhRUY4HbF1wo6JrDjaZz+vD3VRZL4hQ+/dZbjMjiyhdweziREX3fvdQCD3
Y4h3pxDQ2PjHtvOm0XU2pAACe+ThmwWeaAxOldQaAVRX2j5bekgt3cy7+ESnh1h+uDWh4H6A
A37iTjmZh33jaRxo1oBxfO8/1omhCQSqbmIMMbIFF8hq3L+dKI5Oskq4FSvBbW6gYo4/Kmt0
6CFLghh1MCxx73tRL93heIZwZp/dCQb0u1r/G+GbIcAh0iUVssMexhbil7SXafz69MfXE/hl
g4KNJo368f37t5c3FKkGUqYnc8UypQTn2UTFadGwmR/6tMnJvee96vTeQr79pvvj6RnQj351
R5cDYaq+VQ+fHyGajkFfOhsiI4552U1KWMrzxF0jA9R0RwAFHfEOakyKOxBRuL043ryuNmBy
70hPp2mq8a+fv397+oqbDK7wjddxd4KN8CHoGMniGTq9AutRvduqyVTaVP7rX09vn/68OuPV
aRCK1jxxMw1ncckhYXbcNl8+0kOMd6QuEeSdSOfQ78ZD3X/59PDyefbby9PnPzBHcgaBOD35
0/XtYktkLjaL+daSCejv5XplV7BOAkva1NuJDtu3F96XXB83FStFarOxA6CrlbhdRD48FSoZ
TcD+tZy76GFTrtqubg2zhbb2KRPJNOVekM9dExFmmi8lNBI8XWG76BELXktoxaKRwjiC6hJH
f7QPs/nw/emzKGaqn0DexLP6ZnXb+lVLStW1BBzo1xuaXu/OCx9TtQaztKd2oHYXl5hPnwb2
Y1a4Hk+a3jGaq0+NwPpsqw9WxELdQ7Us8TvRCOskGC+S73BgRJf5YWNNQZPDUxPq2uv/ySXo
8ze9n71cqr87dZNbahdk3OCkED3UYt1afY2cSrPadEkFDlO8/iDRpM/UCyXllexCNPKvvtvT
oY2T2Kf31XecPGch6ZbxamZjySk+SOiMZ+z3CPixChhP9ASwUw/ZaG5LaraY2mlkd1+o7q6B
UOq1Y7pjcmDgm3nMx+xIRDZ9+pGIjzmN/P4Y6gbcTmpGz9nXKr5HVkz9N74wDbBT5IGkRBvf
kNYOMW0izBz0FDLza2dPFUDtzLk8mv1gT37+YpycnV8urUNecZVIVcfdXqgYfOkj4Ydx0p7K
UEAnuGvBWMRNwC/eQfg4y9W4e33T/+W+x6gK+O2wffA+J+e/rJFDEf1phtdXnC0fXt6ezJ3y
+8PLK9pzIRGrbkEya/PrAB5d148oVFCx6+F0tUCTxcTeIbIdUb2qi/HXZlz0/RLhElAWXZMP
IQR5wFmilwLcaYE3LXJo/B4xHdW8govp3r7UBH2sXx6+vj739/Hs4X+8riuK0mkeFC5A2AsO
85iy/ABUTP5aFfLX3fPDq2af/nz6bh2BqCHJjnptAswHnvLEWaUA1wvZZUqGjOAt3vj0KHJv
EAGdF+BHOVAcEMT6OBnCnpVUBpmFDw4NEO55IXldUXpTQAK7Q8zyu84Ece4i3BIHu3gXe+P3
gogI2MKb1aTyy0Sf1zxDwu+pj2Wq/MUIGH1gUzbvI7qpReYsDzt+lQEUDoDFarRnGVmX8Mwa
wmB+/w5P7aN0+vdvLz3Vwye9N/nTr4Bdrx196AU2Ppjrh7MKOVYHvOmw7gi+lekD02Si7126
AeQyvVbxXgL/+Pz7L3AbeTDm4TrPYdf1OUxTnkxWq8gdqx4KsYN3og0M2EDjMM6AUZk3bOXB
A+k/F6a/u7qoIeoKSNJtJ48DllfG6yxgo8VmkCI8vf7XL8XXXxLoirB2ApSZFsl+Sfbt9W6z
654z4wq5cjYYvc0BhgT2UV3P3akSNZ1s5D9oZGHrnNmIRQt73d7rX4PkSQK31wOTEjvspAnA
F567AE/d0CbUk3biGOsvDbebv37Vh8mDvhE/z4B49nu/HC/iAjwRTYapblImiGr2CCzdcpFp
TVYyYTva2HKiAI7IVJGe6Ibmw8eb282cKHwI9Ap9QRYPCW/mgL6W/WIVQ1cGc9nM3Z726WRL
XtQn/L60udAJ7KuGWN03ip/6zfPp9RMeOCUvHmn8CsE/9APJRKKnfHGghlWouyJPDsI7aB10
f9ZPPojeK4tIlMJ9ynJhTZDGcT0uW9MJWalTzf6z/38BIXNmX3o/o+Qea8hwA+/B2djEo0y7
0PWM7Uya2FkNGtCdMuNVXR2KLHV3UEMQ83jQIF/McbcCFjwMyyAHBBT7rOGxcIfkcNaX15h8
z09ra08p0Fuk5pvhRhZwY6WxOz0xwfeXncEQ55NE3RXxBwRIzzmTAlVgGnMbhm5ixQ4bAhZg
q6Pv6EfgYrl0WgAPORmjGLnedT7EUx1fZoAhdu0lBxAts8tLb2vNj5JTcmcEnxarfwHU/JIq
IJiVUMvsOF+gvZ2lq8Wq7dKyoEYkbaQ8474qDyyvbaasFjs5no2WTrYG3rZtRLZSJGq7XKgb
Uj9M7z5ZoRrQA9EjAOpAdsYHfYnOaNeDrEzVdjNfMNoFqMoW2/ncNjE0kAV61xj7qta4VSDE
3UgTH6Lb2zlR1EhgKrSdt6j+MlkvV3Rg4VRF6w2NKo1hehMIcu8xkFMqS4geWHT9C02n0h1H
UR9V0ul7pCVvLI8ly+2VlSyGmd37ged6d5P+m0YP71i9sO4lA9ANrzaAJWvXm9uVB98uk3bt
QfWdp9tsDyVXqKMHLOfRfH5DsoBOjadmxbfR3GH2epiraHEBdkypRk7XzCGE0d8PrzPx9fXt
5Qc4on6dvf758KJ5zTe4VUORs2eIzfxZL9qn7/Dz0mk1XJ3sg+L/kRm1/N0XfAamLgyuaaUf
yEp8fdO8nN5M9QH18vj88KaLe/Vf645FGZQBvZeFJeDh+emejAyVHApnTrJMj4zDF45z1dUc
vSBoVZYD07dm1jFh9zTaQy+UENclnRgClSgx3he8GQ9IiBhh50olsOS9jaJCUYEBwyxabm9m
/9g9vTye9N8//eJ2ouKgJIgEyAOsKw6k6u6ER8feBVqos137dysypu61iIb9ehoBx6mzE/Wh
yFN0TTHnjd0QqM6+CcVH5/cmkFfIQZbe8hh2OmYgMDac9I2HCEwMas2w2ToFDoUJ3mNXF+Mh
msKRg3C/CXrXsMhB5B+zDHhaWgPNtcoDUE3ybqI0NkTZEvtQzRiy0YbEl+9ji9BwOT3aY8Uq
3mBVpn3AaYiulyIDr+r26l+qcBR4BpjPuxk3C5nj/xsgJshUpX/YQvNKYBOl/hueCif5AcZU
PqZurC6oschP47qjmcRVoSA2KNn4I68D1j1Gpa/LA04f8kySYTk0T4la1X930WIe+cD5ygf2
xseXLb+HJgHB1Ygu5Hb+99/B+owE9u1yLE/oM9mDavrFvGe2aAS2hXCRaMN3kXaggF7bsQ/f
6kDr+uxAVKnP2YzZ0/wCR6E/DfigHMMEDetH1du60yd9Uj/99gMOvOFJlVmhl5Doe9RG+ckk
0+FYH0AJ2tm/jprf0wfkMsEbE8+W5HAvk1W0CvCO5q1fE9zSQaUvBJstPeE1d8hpddj6XB4K
crpbbWApK0cFjOm2YkAmSDOcVlcy2HN8LPI6WkaUfNNOlLEE7v5YMKMykRQhn8SXpDXHYhGW
gKyIXmg961Wra42Q7CPOlGueZRz8a2nxXU+mmyiKutAO5R091ljrXJehq4mZB7lMsoByRC7W
lEmzXVF9kOe1YORcZlVCw6EPCmyoUWd0JTWCvooCgm4zYEJDd20ONVVRIY2fHtLl8WYzp66M
VuKeMcHLN76h12CcSDinA0aPeUt3RhKak7XYFzm9UUBm9FpWZ1VzGZRo6IRXZqlucOL4uohz
0lXyJc1FSmlzHRSTjxIdRYP6tT5oHg+ccoukw94oSZLjdZJ4H9jxLJoqQNPXrwv5Us7EfSMc
w1AP6dSR6IQDz5RAgQ8GUFfTS2RC0zNjQtNT9IK+WjNRVThCWKI227+vLJdEX/IKvD2SInE7
iQlnhtbnnkuRC3JbvYhnNMczp0VC6dWtOMUHmWFMm4x2dW2lGnTDLwVlC9rxsdLTK3BzsPLj
ssk4EpPEfHG17vyjK5TvIV1eQtT5XJ+zYJbfuTuRn9Ou+SBqheL3DMfHTh4/RJsr+2ofSxqN
G6k9ZCU5NOzEBXl+iM1i1bY0Cp5uUYMjctvmrsWsAdDnidjT0jsND+wrog0l0YhAIYAJZXcT
qplGhNIEGIKdjOb0RBR7+mz5EHK3OPa5ZNWRZ6jX5VGG9jt1F3Cpqu7OVGgPuyBdCssLtAxk
1t7o+UtfZ7N2ZQQXIaw6vYveUaYMdn1EUuHZdqc2m1Wk09IBTe/Ux83mxjNlpnMu3LWr2357
s7yy0kxKxSWWp6kk6YqEZ8XoNOJKJmds4gDf0TwwbjvOsvxKrXJWu3UaQDTfqTbLzeLK+aF/
8kpgDlstArPu2JL+qXB2VZEX0okEcWWfz3GbRNeaIJT/h511s9zOiW2VtaHTjLWbze12TXcc
X4ROOo26C9rQj/rhSajQJqsrWln9lG7mf1MOGuxeOmoOBx3bxtopde4zfsLiDvWvpi+usAhD
yMZejRw/QOkLmV5SZCPOHFRpd+LKxbbkuQLRoZ2tnoHX2Jb7rNhjvfT7jC3blmYm77Mgm6/z
bHnehdD35JO6XZEGpPAScdL3CTy2hHyzVvLqBK5SrHK/nt9cWblgqlVzxB5touU24HocUHVB
L+tqE60pQwlUmJ4HdjQ5Gwdue5BKaw95P0fFpGbakKWsgtPbvZ4TKTm/JyuiioxVO/2Hdh+1
owdFgSUqjOSV6ar2aPXoTz1bk+VP1FM4AmuVbBfzJfXoi1Kh9aY/t4G9SKOi7ZVJoiQOHa1k
so229FXF4OjVNOxshkI3gqThpUiiUFV1NbZRIHODvLl2UKkiAbF1Swv8VG2ObNTUWoLHtuvD
1OR4gyvLs9RrK3TP0GdS4PoKcdEDR7GgrOrtSpzzolRnbA9ySro22wcd1I9pa35oajRHe8iV
VDgFWExqRg7ioSlOt73OSF9Hdp6FOogYHVF1slxtoivyryM+1vRnVx1EIFoSYMH7RiJqSgnF
yvYkPubYiXUP6U6r0ESdCJbX5FSTaeeUdlAlgFMAYmGR+Q80rBXh02KgyTI9jlcHvxWVIywb
1iogFiVpOZOm1o0w5bsWNcMAjP1G4IKxo08YzWeXpOZ6b292RBGaDRDZW/eQRIKGFIow2CNE
HTOk0WlsvDyJlgGD1l+oIoaJl0JIJyt5RP4BDGwQWjnQtkywSfXhnAlK9FaW6OKhP7tYgWiT
4oYBq3s+YziIGoCDXnkBKcvSS2ACUbixwGyKgrQ5KmuvvsbKKJSLeSOCZyV6ntDSHZUdrLHV
fT74knNerACRsNohvWMnbof8AFgJwVobJ2lVZ3rTmVNApPYPYLgQblrq6gVY/efsIWOd4QYR
3dJHGqbZdtHthpLojmRJmhjRm98xGtNxLmlEnhCIXuITxgNCxoLApHK7tl9VR7iqtrdYzGNh
aHn+RKCX2y2SMtmYLYnZZ+vFnFHF6b9ovnmvvDJzfHWNCJmo283yvaRVngrl2JfbfaaaWJkr
EdjgvkfiFg+62nK1DjwfGYp8cbugzyNAxzy7I+9UJm0l9UpvWrdUXqoiX2w2m0C6u2QRbed+
Oz6yxpFCTy1sN4tlNA8wVCPVHcuk/ZA1wu+l6E4nW8NixIi8XkVt5BYJHdp7XQ12jCgP4coo
wSt4cuLOeB6z9Zxod3LQvDk5ydl9EkUU035y2PvJVdmJdP4L5Je3Xelc3TRks4joFwiUMvB4
iWlkgIWzqcaHtquE5onhSoM8ibEoTwtaaAwYp6sHEOVN1KG4L5BKTw90FBP1aawxSOZnIEHH
J+LkamJqyM12vUKA5fYGAEZn4emvZ/ic/Qq/gHKWPv72448/wFzJsw8fs+8urqEGnYefycbK
5SR2AlUJAKNjsAs0PSKWSEPkEY3y4IzkvQqbnL36hmvnzoVKCeStRSFdq/77YkMeQnT5sbfz
uTCZPUFJPkGPSOz5xcBsHRl90ErufYNDGiU9qLExB2PzItcNs/0fgTdNN6taphfY5fYHmiDZ
gKA4L/Am46Ua+Hg/lXcrL3lSVw1ldFJUIi+SwvVgWa5uBiMWqjbQD9gztD26wzvF/zJ2Jd1x
40j6r+jYfagp7svBBybJTNEiSJpEKild8qlsTZffuCw/W9Xt/veDAEASS4DywUvGFwACKwNA
IOKN9YC7LDeWOEJTpl+g7uUYYr0vYyR9aHOSrqUzyk8v0P2xLUSEE325A4BLqJ+eIdLPwIpH
LcgW31kneKHB4ceq80ql6cZC94g10mBWv1jsd+R52iBnpNgiJb7Jky0820HdQmT/C0NUCdZY
Yn2rqGLxLyQPcs8UWuulkaahQYDUOEmK7EBiN5KGdh0EtlsHyYI2Ad8pdHddf8FmlODRR+lG
M10l8O7eB8yOXehmQ81IqQuvvfgqoAgngEKmH0oJWd9WdPGQZ9ZvLB6jbmjIfl5dB5NqMoej
LJUFPRRTGR4fqsLSfh8rMDdFMwfI90fcCbmaMbfwqrvO4atIrORj8VDuLvVMC4kdkqwuOm8v
xgNES6MVW52Ly14NbDqvoABYOkP9FaLg3lw+g5/Pf9hu3P958/rCuJ9vXv9cuKwXghddab6t
WuyEi1HVM6oWHJkV87vVUHmqWmWTAbEajA30HMRweqEoRls4BOu0QcGOxV3dah9LBSyo8ZIC
Y7Laf9EC+AOBqbEs5hfviHjGU4W8jPj67e9X5wOMphvOahwI+GlqiZx2PMLzPt3fskDAyFwL
eyDIE3fhfKe5hREIKejYzBJZvWl8eWJ6I+bHWybqz1NtuF7VEXB4ecaWZINtKse67q7zO98L
on2eh3dpkuks7/sHVIr6Hg+EuqBCO1Z6xOWnUiS4qx8OveYabaGw3d8Qx1nmRHIMoXcHLK8P
1PfUoy8NSHEg8BMMqGTQjTHJYgRu74QEa7OtiHkCi3PwYYbetq5stCySyE+QwhmSRT7WZGIs
YvKSTAuyqAEhBrA1Jw3jHK0jKTFdfoOH0Vd9vK1AV1+oroOuEERIATV4N2Pk4nTDaH8pLujj
3I2HKSqObpsoGfB7i5Wl+TAlDkvYrRpsGcCvGJXeC9moxmb2xkKCK+3P5S2jYP3PtuheiI3a
mbrqVxaD76Mq3spyUM9Mt86kd9eB6NYHyvKCr9zL2gLhfR3GYpyFh3RzhEIVDNAKYvlyL4XN
VJqLcpYNJEu8me1dtTZUUBdYVKkfzThVdwEmEThygvblsprogRTaabxcQMPZux7O1JgNsj4T
YYrIYSys6DLGd2dO0yT2RC3crVPMWc40ArSupPTDNAuvw2VcpdEZCFtqYs8W8jQE2LH+AsK9
VV0PRujODazqsq9c3/2NjTeDs5iCNtyPHK0DuxgIDTBAmBzOsFPQ3Uzfo74ypTpwqUeixbIW
wENtbFYFuSS+l9vSwFtGHiwRLtnZpNiRZ6zpeesQp2ByEXB33cLA2xABwcxmBQ0ZzvyfHSGH
oiXF9AtiDuUx9pKQDTFyNoVgWBankUke7zIvhqyRActHxdjTYnwAdwF9hY2wqshZkfa8MNiK
am7DCF/QBUfDY9ycdzhKUoQeftYrcqjqYijAURL736EYzfpU430Ay5QYFZYyyuEk3odTFzxR
WLj9depv20rSRJbhKlfmbp++f+JuJJvf+xvQrTVvEqPx6M90eWFw8J/XJvOiwCSyv/WAGYLM
dvfDpE1myS4tj7BbVc7AtudoQleQLIHKl1gs5Q4TQ+FWeS+bsTTz0PEBF04ogo7Cz5wHyfNU
kFpvu4Vy7SamMKvlrEiLKyUrXpOz793h2+uV6cg+mgaLPB3Hhs3mCQDZsQk3An8+fX/6CEFi
Lc8l4sXmti/HTAjPXTPn2XWgagwYed/gIrJRf+7ouyBOlCsS7nsY3IDCO2xrSkzP3z8/fbF3
89A/RStc1JTq8iuBLFC/+wqRffyGseYuHTEHhSqnn8SxV1zvC0ZyOclU+Y9wAYGdMalMpfkQ
WwW18zUVqGd19dLyc4pPah5G6g15upHH75jeRRg6sv5qSL3HUs+07qq6copRdA/CafSbDVhM
Q8265d4MKIKwcgeuuoccvZMpD/ntwkf10bOW8KKdW+qQq4o7i+NaIA2ybMYzlq7NLBC8nW4O
w4RPopevv0EaVgyfF9wDCeIcROYADWmahOkc+uWHQnQO1PcTQdphao4N+iZowcuymwcsIQeW
0vaGyFT6STOlDrtrycS2UQl+mC4Z5FfnPS3AvwVFJDI4fkU0mWR/3IIvIVkkDjibXBrmDdPV
IbLO8EsSj9jppwTHIbBkYLRtrQgDAz1O7bUd0NptkFI/UxzO1HQQXHK/EUswxeVetZtTU7Jv
xojkZjNhTaKngdXy0Q9jS/5pGLG1Dch4Q6+eLrUvl1lcScfWcBMoIeHQv6u0Eztu2U6N2GgP
ZVtU6jVw+fAIt+Cq5WA/F8JIotU8EgJ5IoWMdrVV7qErnQZ8C4jaES7g9aQeAWvxavmZu/r7
pC8lXf/YE9R6+Aw2qbpSwh10s2Wnwz64t/eLi3Kk5+BM1uVYmxUC99AdxXKVnkSsWdowRZ9p
4V2luUXh1Ar+8N22AfC4H1VBC5NecCeX97UelkPBJjri0VlFgdzeVZhCHIvSLFbtD0GYmqNB
uhQQllgN1y5Kh714f9S5DzsF3l42Tz0miQebYBo2qVHUDMNW0VbZ6xfDAG4h1o+ijD76EVFo
rbF7ddxzQSgNiCEd4fvJDY5UtbIcA+2walDiSCrRSxzibaWzRiQ1dnfDgDvDEyIjmY/+l8Fb
sj8D3twqmfM1k/Htl1SbrQlKccyGQ2zVbrpaVcFVtDvf99QEkdzumYTgp3N+sPOZaBg+Dqof
OxMx/aux72H74HKOZm981kVWNtZ4nugVnLqv8SnEXUtQIpde2pkkqzE/uAW3ozoZzK/VOEGc
xpRY/baLEcl5jdtE/v7y+vnbl+efTFYonHtexiSA+AJiQ8uybNuaKZTa6iGyddmnb7Ao2yC3
tIxCL7GBoSzyOPJdwE8EaDr47tnAWJ90YlXv8pN2LodWc/W221h6W8gQILDpdDTHRJQoQJBb
scTQ/GE0fHvqD43Rr0AcyiNGLFSRjYzXwtYNPcRy2PpbLnY3TDhG//Plx+tuRCVRaOPHYWwO
Bk5OsD3Lis6hIT6p0jixaODYRic2meeb5bEtPm49CuDQNHPkEKXjL00DvQTxHpUN17NZztRM
cZxjj34kmqgXN5KWJ7OZz32DnnsLZODPvbYV4b8/Xp//uvnj7y0O6z/+Yn3z5b83z3/98fzp
0/Onm98l129s+wae5P+p91LJBtuiC2pyMOWuOXXcIhGLe+3kRR+oA1N9CjxjsNakvjcaGBOF
ry4isK+I1oyby0Jnk5OZWLjVdvDf1URMZYXW89tIMxs2ffbifwPLeBfOZg8TWhtrtB4er/7J
PgZfma7OoN/F5Hr69PTt1TWpqqYHA5uzufJXbWc05Ngfeno8Pz5e+0mPDgsoLfqJqXquqtCm
e9Atq8QABAfQ8jqfi9+//imWPCm7MhJVDYj3dVvfuTsOmlfzBgfE49SYSxa6PBkTkZ6xgycO
ScdvOn/Lw28Kz7DuEQ4uX50uHzYWWGrfYHF6TlW+8Uq60PGUF314Ng26r4TbCeMaBt3qlm3e
XXbiHR0ku/gEDNPNxy+fhTtaK5YhRBZqG/BecMeV7K07FYifuqKInPtrQf+CuEdPry/f7S8R
HZgYLx//DxGCCezHWcYy7XmILdWKS75bAxOdrqaXfrzjrz9BWLbvJRD8QzXnevr0icfMYfOT
l/bjf1zlgEviLBhUgwqboSSabm7VYU1pqh5L1CoJQNTasxqGh9E19UnhB43leGbJ5GmzUgT7
H16EABStH0atLBsbTVKqYgrTQLvtWBGCO3NdcH5v53A1J1lIOQTh5GFPexYWtiE3XAWtyOzH
HnYwtzJQcpz11gGyuOzEcpTnpjtZ8stMLKnwprJbWTZgbrviVDii7Uqu+sOZfUsOY4OawcNk
0s6TJYG7/4fIfDJCQOyvB2r90TgVWpI04wfpUkYbEjYzeIY7TgbNinnCqdzMyNv2GyIGwl9P
374xpYXvFqwPIE+XRvKlrpGfOAc1iIjPOGGFcCkG7CPBQf3CQygfFP7xfA+vGhJcQ8Aj0kS3
7aWyBOJ+Pu7xlV4y9N3JimqrNeghS6YUG+UCrrtHP0jN/ipIEVcBG1P94WxJ5TxZX/q61M1Y
OFkoOK5EbCm4HqWjzWX35O76VdPl1Oef39jKbQ8Jy5JQpcqLGF3Gouqwg0TRaRBfuEJHq2dl
xOkO2zBxywv7UdT1koTBEmI2SqNDUwaZ75naj9EKYuIcK7t1jNqOzWOPulcU9jpV6sWB2XyM
6mdBZtX4UOVx6pMLZiQq5pZQRfVU74vu8Uop/kKPcwhV3JVpO4R5FBoitkOWhmbbLdZRBnld
yrURDLZ/lqxuOz3ZORPLPkvsdADkPrbXUPHA7OzVqM/ITljquHK7kCzPI20e2SNhjYK8O38O
NJvNZhxUizZJaa7c3aRqmrogtYCCyKrGWJVhYL5kUIIrYxKDxfkbY3rbi6A5Iznoo6QHD+1b
PdRonhf/KtY1Xqj/238+y/0GeWIbac2u35cRD7n9bT9reUikmoJIfQKkI5k2VVTMvzheqa48
jiO1jWHx4iPbBKmJWsPpy9O/9YNrlpPYHMEzA0zHWBkm7TB9JUMNvdgFZE6Ah7KUEXIxDj90
JU2M5tygAHdlqvIwhe1Nngh9UK9z+A7pwtApXRheS/RaVOdyNFnszTgg4pmhRaYZ+r5bbY7a
i/Bss9pPkZElR9CqCcOtzbW4V1Zd7jKsHPRYsJwNgi9hFwsCnc7D0D7YqQR95yGWxnZ7IQ4F
aqgKwYpIsNjRclwVgcckdqU6FJRNwYfVHllNCGfvJ2gapqF4CdYNS2roJ/WVgkrXu1ZDcHMu
jQXfbS0s0wGNUC/lZugmknBZuBCtnA4fgtTlr24VqMj9GJtWCwPrAj8V119WYolhRngaC/sG
bUIvNVF6x0AW81UbaaYBCrQBPlC8EOtp0FSCdKdJ9X3CliNvWxtoaZjoIT0VIfwoTvfKEgZK
veRN1JN1JZdFicJKYFiOneAvLKzTIz9GWpUDOZotQEG8JzdwpPqFggIxlQ29PV3GLDmEUYql
FfpcjvsiWYbQqTifariOCvJof3aNNPbCvcYZaR7FaC3O5eR7HjaS13qaqjpf0oyfTDeqTJI8
vxSbeGHO9fTK9liYdaOMZFalka+pcxqCHcRsDMT3Ah9PCxB2S6JzJO7EmMm+xqF+f1XAT1MU
yAN9Zdkgyiq6HxBO8GBLuMaRBFjJDEg9FxAjwBSmuKRTmSbBrhQzxH3sliA6WN5g/4jQ6Twg
7VlNSYCIDuHsAoS9ie/Yzv+AyX5k20wvxvzEqxxZcDzZ2R7TOEzjyQaW5y2F7mF0TUeZfnym
BUVfnS1cpzb2M9PicIUCb8JU4pWDfbcLWzBGRoaCvODqbOS2uU38EO305kAKh1tGhWWocYNE
yUAzZE68L6MAK5HpOqMfOLw2bTHnurpAXSavHMvpJlaGWGL3FgjBgYgtAdMgQ4PRb4TCwT5b
6LoFUIC6dNQ4ArTdOBThewuNJ3lLuiBBJhd8xhMvibGiOebjwXo0nmRvQQeOPHXkH/opuidS
WBJ0UeBAmDuACJknHIiRdYcDexLu9jsph9DxvaJlEmMGAmunkCREu5ykuFn2CiPrO6Niw5qk
GUbNkHaAR70oFR0cjI7pWxucowsPo7uezawM+5XP4yCMMDkZECEjRQBoHYYyS8PdeQMcUYA0
bEdLcbLRTNS05ZUcJWUTAz84UHnSdH9yMx62XcPfCW0cuYe0STeUJNXdr2wVO2ZxjmujA8ED
NS9pp1vqIyOQkbGZysjhT5RcorPGbQuzKgqkZssG0ik1+3RHHjKIGRD4DiC5aKHxVjHIVEYp
2UFyZJER2CHMEemm8jZO5hnxqaRxoFs9jSNMkMwpnVL88zMRkqABtTadsfSDrMp8ZKkoqik1
TvJXiLVdtqs4Nl0R6O9aVcT5IGJlCYPd7GmZIoOe3pIyRtceSgbf2199OMve+sMZ0OZgCB6g
WmXAJgijxz76IbhviiRLsLuXlYOCOx07z3sKvidt+iUL0zQ8YYUBlPn4XbvKk/vYRYvGEVSu
AnbXds6ALtQCAS3XYUagMLZpFlNErRdQ0iFbAQaxaXd7dCG1CvFVv2gtAgQZpM2kP6ldsJrU
bA/ewXNCaY7OdtVt8XAl0zvPZF725dthoQR6VzwxAV/GhrtGuNKxGRzvBCRrVQuTuFN/z+Su
h+ulQQMLYvzHohnFOzZMRpUTXqOCDxw0zNSSwMoSwVcRcRg8XV91d9cqvImhHZxwyxrJhzZW
Vd8fx/oDxmN1L7zTbzR7cQnp1gbCWMUeQ/bbhYWyWLtv5/AL0PWX4qF3PLhfucT7Dm4VLn3x
YtN3ZQePKtykiWW8jcwVXkw0+CnQ5en145+fXv51M3x/fv381/PL3683p5d/P3//+qJfuq3J
h7GWeUPHqHLoGbr8Ak39kSJtJU+2EEQ+6ncAAQKI+9GNrN8crjXh79jBv2VZOKIugc2El+Rr
EqTV5fM3W4jHphnhusRGpFEKVqMLQhy7mCY+1jKLowcbgf1QOM9oI3A3Ezs1WpwH2LkWbUNS
32NQpb8QSkLPq6cD0JEMxc2+mQjsciPPkaQhp6EqZZKtM65FsBQuLEOm4rc/nn48f9qGXfn0
/ZM2cIdyp66kmZkqp9vjGBItV+iugtZimq0kZQmoqHhYvdxrv5EN48CymcDpez9NzcF4wogG
uT+UpEDZAbDqxh8v/O/fXz+CpePyXN86FibHylrGgFaUNMujGFNwODyFqarcLDTDTpANOGGv
g0ZE4YkKGmSpZ3pMBYS74YHnm0ZQiA28bcsKt60CHtYqce6hD3c5vBi8WHnPQ+Bxz0DOrAm8
4XG4P4Q6wxIW4jo0JAc4DnZL4CzYzmAB1fPGlRZaNM1XEadpFuW8MqUPoadQonnoBtBtkzBl
mVcUFZ/tHq9DMTXoA3YAWZ7LQxtJbQdGRWPQATKpNisggXDcpdO4JVJJ+kp7k8oA8y0A0IS/
KA8jxghRu0kU/S9u48ymEXdozsGOXb9t9CzZTZaHaLIswppZwlnupZbkcOuNZJXleboz4AHH
zhI5SpMwtxuj7o6BfyCY+QPg2rMDhQ4fMp2iXNoq67/0Q1RUqLnuAus3sDx/YblkEPn1nlmF
sYxpnLkaGEyBMyMb8VHXiVNdIuvb1ERpMqOL70RidLvKsbuHjI09Yw7L2FjLB/0wx55nZV0c
Ql+SXZlLwznhJ4WSzx+/vzx/ef74+v3l6+ePP26EU71m8YKpaIHbpwtY7KVtecH+63lqclkm
qUClzbUgYRjPVzqV+DAAttXGUEsMV/d6RAkz75agrrRhPFr243DZ7HuxI2A0v4l23DgKELXv
5XJsVokWNbcWEk4PfOyYaqnUYltp1ZYBcYKfdypZ77QYMGTJbkVy30MqotlOqlT9JaxE2Lqt
Hp8syrI9wRakOGvfhMVTmp3g0vpBGqIzsiVhjN7+84KEYanVqB/I7FzT7+csNj416v2Zqo4I
K1+UiH2eyylK2wC73OB1JLHvGc0NNN8aS9wQ1f1F4LDrg8DAyMNyDP19xQpYwH1N4JrMinms
uuz2t0RYNjvVvYVFt7PQE5uI3DKZRO1NCXgy4zpJX4o1Rn077FK/1z3g4kVQ38gtrgXd9m8b
z7GZwb9R31L8dnbjBA8IZ+HKZDprr7g2HjiP4ccxu1xMKTplyeyApGaFyCqVKWx52phg55Gp
8UoUqIrDPMPzlhuJN1pL7Fv2y7e2MRsmx88bhcixtFuKuvuw+93Q7w0kdCCBuroaiI8hx6KL
w1g3WtpQp+PjjaWZ2jz0sG2KxpMEqV/ghaBPomwu9glPfUcOgGF3cCpLlgbocLU/hzqGbsEU
FrH0ozkzKEkTDFJ2DygWZ65kxgsIDcuSCBWEQ4kzldghINWXO4Xd+nOe2DFZMINCjE3Y9PwC
V5bvdzMpB5+1DzpxyBAL39tY3kOWxZj5mc6CL3hk+JDmAd68bFuETzxAAnQa21upDRNq566c
2E5JQY/nx9oVLlRhu88yD717N3gytNocylGI24mbb5k3mG+odovd9ldYcpeJ5sYyBWQoPLRP
AJrw7ppikqUJOl/t7ZiCtScIzur4GErl4o2+mFj2HnrPqPFkmtOgDWL6cuyzsebAkiBMHOKJ
LUaw35zL5sWVvb5zMTF8jHDMd4usbyIszJVu2TZgVRUbhTd64t6830R4hN6722SrArsg5tkA
I2hBKdpm1HT8w3DktCvpqxpdEMvFG7fqQHi8dvUKaPSxjB30BKW/v8fzmfruQQG2awQIkN49
vOEjXFwyDhjTxkKYYnp3qNDiZzI4Sm+EpfROvuP/U/ZkzW3jTP4V1TxszVRl9rMlS5Z3ax4g
kBIR8TJB6sgLS7EVRzW25ZLlL5Pv1y8a4IGjYWdfEqu7ifvobvRBk8QtVA4khCLjBqyPUm7U
H7HNOAqGSN14nbJVBVkbhYgOWvnNoHVhUJASDa0Dx0gRkuSLkcZEFL7IijyuFmasD4BXRJcl
BaiERDDMHEsVb8X43TTV7BuYoeMrMM6y3PT0YkXju23VpZwiN+ZSkmH17EWkYu2VBUl5wko8
jzDQMVOcovVmlm3qYIUbUMj0btKVyAqBJrVai9Pu5TuoqZyAFKsFgRhZfbsbAPA9EEiI/3Wp
xSQOCjdtIREwPa5cIznqYAmfn3ZP+8HXt2/f9qfm/dVQuc2tPD5NOehn8rvZ7u7vx8PD9/Pg
vwYxDdzsO71ingY1jQnnzU5ARxDmOZZxw/2kTZs+qrmlc4a9E7ezKjVNWFI3wnPEAne+ImZ8
J372blFiD6ULTzZSQegLOl5BRZ5v2hgCTuP4y/4OonjCt85zHHxIrspQf/GQMEorKx2FAhd6
fJAOVOsxFSU0z/Xwkh1I34sSaKSflpAKEp05I+fk8bXQZZaLRvgJ2GIWphaFhqdRWBRbsyU0
YuLX1m6KuD05YfitovAVLl4CMiFgJGBXJI8Epx4xDiUDp9jZxRj135ZU27wwklABUCygRZYW
hpFMD3MmK0y4C7MS9CpYaOW8NZCZVcIXI/2CWqKJOPmdbbGYo17BEhVnBcvsNRJlscqP2cLk
b6cPi3IyHVkLTrQJWdfLrbVYKyojaZjANYnFMrNbv2LhWrAivsdJaMe2kBZBnj4yMOQwa2Jm
JnsAfSZ4JhPAlWuWRu58LcMUYtng2TWAIKatM6oODJ0JisM0W+G6GYkWQwVHiHfNi5GUuX7M
ihIxnIXhdSaB27k41K35kRzJInN6KASaIgNLIF/VGcR0tZchZGNgyCpIS2YDCrYwQZCOdmk3
IycpmHGJtYoZVEmKME1k4oCfJrQk8Ta1TtQc4j3TAAVaueh0DDXZEIkSmxiGmKHptiRFwSA3
oDXY4pvAWYBFRinxDbQ4EZFxadJt+b5Rh2t30Qpu3t7B0pnMzJIjwWVIEgcUxsCxhdbwiAZA
ZnunN2iUZrlbIVcU4Xoi9g7kNhDiT3/Otk0VbV80qPOJONOtk1IcKtxwmpPASGzdxG52GUFg
VxWXwbsfK2Ag6pzjOi5JMZx/CQss6oM65ywLGAlkzM6DpGE3TKxv+xOoAobA8w3kC6XOAaDM
beuomjmrSWGoGADQ6shfnqJJnFvLAOJ+DRvfnPZtGGGMurAhKEsHSUAj5uxM47xsaKzsh0ZA
Eb3sPmAqVqGM9MqMGLEObZdCRS9Va0wWUSYE+LKMwzpMBaOhDTjgG0nEBNqJmgEmjp66ORCN
3lZxzrzRyFVhaeqLMgJ4aUAZEV5H+qlniJJAZuVfll+mqThVhZCehutWdnYN0w6vd/vHx93z
/vj2Kifg2GVtN0pr7ZVzSMHO0YwxQLVNCdhcJSzNCiffbVbiD2gNrl5H4qCMmSffbks1i6WI
w0vYB552wE0g50O6fPOZO4kQHFjw1+LuCZSJ+V9DHZ30wWnkqoRgvLQPxutY3MqpnFxDxmI1
UUazN7DMBNzT2rBBmy2U0ALskUU/67K0C5X4soTp5YJFf7dwZHlI+Jxj5tp6m5Cwa3IiNtXw
8iLK3WZD6IbLycZFzMXkiW9cRIZ2P+saoCfNMTFo0yq0uOpyNMSmhsdTyG3snZtiSiaT8c21
WyK0QIYnSRRD0C2WxiqbPu5eX12pUi4+arVZ5iTQmc1KWvomdmvLxJVhU3Hz/M9A9qXMCnh4
vt+/iHPvdXB8HnDK2eDr23kwi5cyMwIPBk+7n22Mz93j63HwdT943u/v9/f/O4CgnHpJ0f7x
ZfDteBo8HU/7weH527H9EjrKnnYPkKUZiccv91BAp573DdBy5f5Qr3I3BannkpZlyxkIClyw
kEfRmvo/F0hfYrCZjOAAqeU8K0LGJtHf8DQgvh0kIhMrpVB5JboBlOl90BXSKd0cGJZlRcMi
mg6XiLMk95Yg5HcK/g/vF0GK5ejSfMTTsK5KAulHNNL9UDWMvAeikDhHXpvhgy0YaGGEzO1J
laBXk4tDZ4OPpNIP1MnUU1GY5KH/ympz25QBJN7ARUCNbsVwnkwjYTm59TTFo1TRGxssnOF4
jw5PWq93bHo51J9+TNR4hA/qggjxwWaj2u6tcXhVofA2y2gekPfwOC7mDEdkMwbJpnyLK6Gl
EAFG2GOOTgVyIFp+kvHr6+GFr3SBnaIKK51oUzUMC1ZESlYJ+WBv5fFwpPvxaqisZJPp2Lfi
bymeF10nqUgMLDBaOs9pPt2McRyZ+84cQNU5EZIBrsM1zq6wECJck4jlg3Num8yy2FOnufwx
CrqdhcVnQrFkQRrZRhyYGT4c67VnearUhDgqSVka+mYfPqSeCGt6m0AErJMPzsY149EsS72z
wiufgYK+Hkr/VdrmqcuD6+n84trzrqsf7baVXXdXmpIKemmGCZtY55UADScmiARVWW3cLq94
iGljlDixyEpTGyjB9mXfXih0e00nIxsnvRkt7iCwdH+SUYYLxdYxy5bDK0EgOIoYzcQu0XUy
ZzL8tApnZa0wJkSe2WphHaexwxXDux4NsTzZeuOzNSkKllmjAjyxLcnwsFS88pxtyqqwmsU4
PFjN13YrtoLSdxiFX+RQbYb2RyAsif+H48uNTzqMuBBRxR+jsX1GtpiriR4nQo4RJJcS4w7B
zJwOirHOuNLod+s1//7z9XC3exzEu59YpgnJ9keaki/NciUs0pCt7F6peKx4vImSRKsMqPqy
OpDiO2fbVn53mdORboEDDoPXF027DL2MpztWK4ngLdDUVds8NAwnJKAuaY49bihkRbkptIrf
NaXYHlUfRMGI89FQt/9qqpHWKNONPj3lz5f9n1TPKvSvYK/nGOI/Due7767aSRWpsheNYBFd
jEdDe7T+v6XbzSKPMmXJeT9Ijvd7LN2HakaQQ0x2EEC9CrX3SzREXSFV1HzNyiZ0eINKcKeh
MAEffkOt3cI8p7iKQc7Ph7u/Ed/H9tsqlcyAOEerpBOW9E8/1MV0RZVsnkDkAKyJn+XzSFqP
ph7XwJawGKOWjj0+JPKBzVBTgMrNfI2QGin5JI/B6vZdp3/sB9ysgIMxhSslWsMpky5C94Ud
XNWd8ZTfuw5zEkxIeTnUDb4UNB1dDMc3xAbz0eRqTNy2QSZW1LC6R4+nVmHSdePCKUuCcS6i
xU/Q6KMd9mZodxKgF5c2tDP2NCtQEeS9NdgJk1QF4MqEuXZ0WN0SsQGOx2hkmw47xG0Qezxm
edRhJ26F07F+vrfA6cSefTkCY3u4GqjluNehJqa5toR31nXelREMpxdOQ8vR+GZkT5ayRnaq
KCkBS0dfBWVMxzeXG2fqEYdPDeGxje7W5/gfX33LMhhOboZOuYyPLufx6PIGP2F0GivIj7Wt
pQbu6+Ph+e/fL/+Qh3qxmA2aCBVvEHkde68Z/N4/lf1hHQwzmefVabFy7fP1M4k3Ko+f+RG4
qXinQnruOS8m/ba9toAsl8dDNwDl6fDw4B5sjWrfPktbjX+bGMlaNg1WCDw88mSHMQiTEpdG
DaIoJEU5C8kvlNfZZnmHqyGkeeXpGaElWzEzVa5B4HlKMmjat5z+jePwcobcTa+DsxrvfmGl
+/O3A/AOkIvw2+Fh8DtMy3l3etif/zCs04wJALtAyDf1YU9JojLK4OXkxGc7YpAJcdl5U8SL
AxszXHg2hxncFFEyUDtC0AcWi1nAbB7FvymbEdMwrofK7QIxC979VlGpujzlhJsc5FJCt/Uq
LGZc8hwVQTOWOdWbKWc1tDTOTeCvnCw8eYh7ahIEzVz3yxVF1wo5x+mSMqLEj1HsJIoXC9ng
7uLNlYZGJ1DvLIWsvx9RzdJNWaNe2vB1XWwM9YmEcYZZ4mplsjxjM88USFxNPXnybDpfTrmi
pHVs1gEgyW2iJQcQRwN/JBaoWTXXXoabTyDpspDorXApawnHFT1NSW5zFaJOslUoBGHBuBsn
XIPlYTwH4dvbASAS57Ed1KuRhqxuaHu62vi1KpXJ+lXSaho3pgRcHhQreIRhxa2XJhD77yMa
EnqGEFLqhAXNOMYJVk0OGScdGCDEKbmxu5IXFa5Ehfwt84mZawacVpu869g3dlbvJp96EqaV
A7QepHtoc6Z5ixeXaAx5upwSWZpXpVt5grUogUlMwHgq1LwKGoOIu9Px9fjtPIiE4Hz6czV4
eNsLgVO3x269ij8g7bu3KEI3XXW7X0rnoO3PM5bz7pUbs+Hoa8jiYM44ZmZI4yU8/IpBM7Lx
RBA4S+Ag2FhOdJWc4tYA1w4KPT49HZ8HVGZSlKbsP46nv/XbHwqKeIBpyvvigNO+uZqOsars
AB4ahrOxeinsazORY1xoMqkur36B6OpXiK7RHAg9CQ1oeG1mybGwlisnSsaHFxAfBEuhpjen
c5QzpsKf10r7FolxoGHtZF4aakXxKWyc/lGcco1vtiPW4VnGLWNcZf71/LB/PtwN+JEiWv8m
RWRNF66QoeNUIDQ/bji2bmMTjc64TTT1lL+x3Q5bZEkr6Dl6V+Hd7lLc4/ux29prnrNUT82q
KPnx7YTFHZPiUp3pwTslJC+ymX4uxEsOrm7Gkdp1xha5WkSGGotJ7RsYWtQ5KydXM12BijZW
OxQJi2cZ9i7AxAqoNJs95TQECW7FSErkIN8JuUWmqeXugf4RqVmP5Lz6KI/F/ul43r+cjnfu
ACsPNTGcVO8n8oUq6eXp9QEpJE+4GWQQADJtCcb/SWR3JfeVGoV3nBx48sCbatsbMfrP92tI
ONX7OClERge/c5UTPRNLELKdD15B+/BNjFyvi1VOVU+Pxwe1ig0ddutchaDVd6LA/b33Mxer
PKlOx9393fHJ9x2KVyZUm/xf89N+/3q3E9N9ezyxW18hH5Eqcfq/k42vAAcnkbdvu0fRNG/b
UXw/e7D/2qnbHB4Pz/9YBTWUTSTNFa30NYF90RkC/9J8t+XnSRsNtm1N89MIeNoy7E3cWBm5
VlokCfFTSZ/9+aIT5WEBjBCxss0aJPBKy8kKtyvTKbvoKpg0opcoBCa2Cu3+OK8OfdfrcBXq
3gzhpqS9qiX853wnzm4ndGvXSEVezzkRvBJ28TQEpk62AbrhLHrEaGRGF+kxvlxTDYXNCrTg
Mh0bIQ0beFFOb65HxIHzZGwEhGjA7fNmjxDiUaY7nKnbVcgvifGGyFBNV1pq76DiR52Yz4gA
YmhAVMCo568ypGYZkLQ8z9KFXVCZZbgbuvxILFdPNaJN7TOyWR4oS7xGXKsk9NqS52vXpxXk
yzuxYRHb+S7ZdC8Ex4JHw1762HQ41oKZiE+VXKKUlChXYwm2DUWbXrmOWcbS0pjLDhdBXl6c
JbJ707VI7OIlDIxeoIxlWENg2KHHhKUzSstoiUatlukS22xOsRl9CTCzgiZcTJr4RU2vTIUH
k964XuDuqoqkZIjOXUXDjbaC7/j6Kk9eLZdsmwxbtxyY0aReQgQysHvoHu/bhRFtu2jIZVYU
llIWpQugdndAdBJlhtW3AXBzLoYz2UyT28YawSg8ERJADEuHvVd+viH1cJom0hTDLL5DQTdN
VELyPMqENJ8EyWSiBxMFrMoGDxMehNxulpql0Hrl7tPnGvPQlQrXDDX8/CF6OEs/h1QPp0xn
xg/zkRgAca51siAdN0me70/Hw30/8eJSLDLdvaYB1DMm7sxCLGPqw+laV+urVvnx29cDaPs/
ff/R/PHv53v112/aCeHU2Gnk0KFr+9DdqrozHagkDEC6MvLbyp92qvsGmCdi2wTSy025mK8H
59PuDkzRnZOOl2ZysTIBsaYEPRL3PC30NKL6GrspgCKokkR30RMgwUUXTbQ2y0Bbw6LvRd0Z
Cmux1FwvW4itMOvglqe8jeZoYQmv0MJy1CS4Q7d6+N6tyh34vtR5vsBM6Oe6Xa740bon1Wmm
e/oCRsvBjCKUH5wLt/PsAYpbbnsSNgvnbI4xEdILVjCkG3nq9yG8G+sd13ql2tQkWFzfDPXY
kNXGsRwAGAjQ6IbBqtDYyyw3LmzOMk9mmJh5MhNJJxPxd2qcUhScb/XrbS5W620F1rh6xM+s
YVdabbrJwKrgGAchE6mj0mBpVyRmASlDMeqCmSzwB2PAZZyJgaSa40O4AXZozl1IPZOZKTLd
mxEeI0CvtWSpEak/DcAiYWvjtdVQi1ut2Oa2K7pOsRI3L/rmN+fdk0V7utkApgBS6jAqJgqB
1nlbZSX+PAXea3N+JWrG7EAlsp4bV928guAGGHkm+gUpVvQx7mHgXs4KsV7qwPShxkhIvCbi
yJwLdinD2R7tK7hFMC2ORrIRwya7g7YsCUtCs7yzuqS7u+97bVPOBVtGI+NMkQCZgcYcnAYR
QZayRUHwt7eWyvfk1uKzGXABNbgoGmot1TzF3b3u3+6Pg29iv/Tbpd3phRDn9cmQgKUZmErC
VokdHlcDN3c73FOYDllSAu9Zxk4BOVmE4AHJcCseSSPEhzgQzGTfpGVYpHqzrbu7THLnJ7bh
FWJDylKPvVAtwjKe6QU0INlYQ3ScN+FBjBcN+K/fEy1v585Cr5/k6mlT9KIME31rFGCF15bV
nkny7LC2XAcUreLc/8rzeT7nQ2tv9o90Mybrwt8LxFJF93SRJVYLFQQsUMIA7IGTMrCRoAvQ
oTl4AYb2b7AeieEsFxdqG16lXz6KJP6SdWhsAbVUV3ohDjKi79UxvRqiddh0X3gZ/EJj3qnJ
7nBrP/NrPdMsr91h0vv4cbFOkb89/ufqN6fYhv/0l2Mrkhuwde61PHdYrrNiiW+G1Fpl8Hs1
tH4bBnwKAlseqwuQV389WeRXtScyIzhHp569oZomT2QvHu7ExoYmSLHF0RLB2SZ44CC1+how
LjOJVUGuvTvodWB2PuKGEQdzLtiJTNtuwJbYP2E0jArtRy5epYUu+anf9UIsZG0UG6jv4mrQ
m7wopf2KdnCGeWSdag3IP7ANQX+2Y6+QTF818EtdykMLCG/9a8Ep8JBWRTtXRmuAah2SZZ2v
IUwC+gAONFUOwaWcT+U9g3cD0P6g3wrdFeyrliezWjFHTtXvjiEQwPJGX3ADYmw64jB7BGu6
QW1xRt0HtRhnrnv03ORGXfKn9bGEYVe5Qsi5UyaL7UKOufGjP88Or0cI//vnpXaqAQEEg5Rc
ydUIM/s1SIyUpyZGTwhsYKamWbCFw+zCLZLxO5/jcftNogmuo7SIsGDpFsnQ10Mzh7KFw8zY
LZJ3ejiZ/Erj8QTZBtHNCEvRYJK8M1M3qAW/SaLH5TYbqCdJBQzjGazFeur54HKov33YqEsT
RThlzG54W4NvWlv80PchbrKuU+D2LDoFFlRcx098lfuXdUvhn/Gu59irk0Fw5R00X8OXGZvW
hTn8ElaZsIRQYHxNN8sWQcO4RF9DeoK0DCvdB7zDFBkpjUhCHWZbsDhmFKtwQcL43QohztbS
LVOIeLHxYNoh0oqVnh6jrSurYsn04HKAqMq5tv6DODF+2Ja5VcqoFR2tAdUpPNzG7IsM9ofq
jZsPIHvkrS6lGUolZYOwv3s7Hc4/XYtUiAigS6RbUE7cVuB5al1aTRwjMYtAVgjZTPtw5hRV
QmixMLCgjc7IgYtfdRBBklAV3NC4nNv7EMxAuXwIKgtG8UeZlvZdJCoBSvO+iBRBmIbK6htU
JZKhok2Sk47SItIb65YwF0XMLJ/4d8jhPIQgDbhGRfDLoBVTqnGfeWQpfXLDAtwcozDOUe1h
69PQjy7R2OKYJ0JY2j3fg2nRJ/jn/vjj+dPP3dNO/NrdvxyeP73uvu1FgYf7T4fn8/4BFtin
ry/fflNrbrk/Pe8fB993p/v9Myi8+7WneSgODs+H82H3ePjPDrD9wqRUBvECXVa9IoVMiaqP
M/yGvtKl2CkpJrtpFIqR1eFiS8mZNV07LIq5OEFMgl7zjLe+Rfs735mJ2Fuy6zhskKxT0Z1+
vpyPgzuIJnQ8Db7vH1/2J22UJLHoyoLk2iuBAR668JAEKNAl5UvK8kjXdVsI95PICLipAV3S
Qlc69zCU0HXIbhvubQnxNX6Z5y71Ms/dEkCD4JKKG0HsUrfcBu5+0GixUepOJpaW+g7VYn45
nCZV7CDSKsaBbvXyP2TKqzISJ7IhaCmMfdUoHezb18fD3Z9/738O7uSyfIA41z+d1Vhw4lQV
uEsipFjNIQ1QkbTFFgEnyGfiDFuFw/H48sZpNnk7f98/nw93u/P+fhA+y7ZDWqsfh/P3AXl9
Pd4dJCrYnXdOZ6geeaydEgRGI3FdkuFFnsX/V9mRLMet437FNac5zKS8JS/v4AO1tfgstWQt
7uXS5ThdTleel3K3q/L5DwBJiRRBTeZkNwBxJwgS2+biyk7EOeyvhWwv7CRdZield/KeGZ1c
AB+6N4wgIhvP59fv9oO9qTuK/fZkkQ/rGm7oOu44HJoRMZ8UDa+s0Ogq4wJJaGTNtXbtqhfM
jkw3q0bUc1UJDEHZ9bz+wfQB7dG8ZZE/HH+ExrMUfhNzDrhWnZnWeA+0XoXJ4Wl/PPmVNfHV
JTN/CPbrW+cTt3eNiApxm17ODLsi8NkL1NNdnCcy81c5y8iD67tMrhkYQydhZZNdi9/ppky4
HYJgN9PLiLj8zN2AR/yVHd3C7LhcXHBAKIsDf75gzsVcXPnAkoF1IERElX/OdYvm4k+/4FWt
qlOn/+Hth6M2H3gJt10AyocoM/hlH0l/BYgm9mcuKqpVJpn5NwjvYdWsJ1GmcGXzT4BY4J3C
c+S3sNz91EL7c5Okfm8y+usf7rnYioSpuBVFK9icxxPGzvDtlC0wbWrej3dYJdfMZx0bPtEg
VxU7GRo+DqtxPnp73x+PrjxthoxUMxxP3/L+uxr9lQ0nMXzrryDS1XhQVC6ZdjZwvXh9Plt+
PH/bvytfAnMJ8Jb2EkPZ1A3rX2u61kSLie+cjWH5t8JwfI4wcedLbYjwgH9RRpcUDR/rjYdV
vsm1ZEbdoIJP8RMySx4PFjU7SgMVewkwin5feEdH2umt5O/Dt/cHuAW9v36cDi/MQVrISPMq
Bs6xHUTok8p3yfRpWJzasLOfKxIeNQiS8yUMZCya40wIN6cnyMhym44RlDmSueqDp/DYuxlR
FImG4266jNicSKLdlBjBUcb0VIOxlMZSLWTdR4WmafsoSNbVJU+z/nz+5y5O8ZFDxqhCVsZP
djPr27j9ivF/7xGPpQQNpEw1QyFWEX9oG4M0gKXga07OkVYu8KGmTpVRFBo3USOlxXn37yd0
84DrxJFikBwPTy8Ppw+4vD/+2D/+PLw82c7gqBu2H8oaxwjLx7c3/7LUPBqfrrtG2GMWevqq
loloNtP6eGpV9Bg4nCU2Zjq/0WkVnsRnF+OsCjIxYyYxkiBBoQO1tUyMUfcy7XZ9J23tWFw1
iXRMhHGC7MjAy2o0Co/lTlYU29XJWufiWdQETFHnUfEdl/U6zpU2ukkdqTqGy6TsHNkkvvji
UviyOFTV9Tv3q6tLd+MCIGBZ7JLA3kyjDZ8B2CHh1FuaQDQrT4BABMwT/9EXh827TD+2w9nI
yL8LxdZtYLj8mDHvE9lZbHI0cxDLpCoDY6JptsgE4UwrHLunrWLeEyha52B+vanlDW+P4xni
WNRcKY69zQTM0a+3O8fOVP3ere1klRpGVve1TyuFPSkaKOxYmyOsy/sy8hAtcE2/3Cj+y54H
DQ3MwNi33WIrrb1kISJAXLKYYmubXViI9TZAXwXg1kiYzc08+sMtDpPMFJVz6bGhWKq9nTvg
zG2KjIGD7W7LmoVHJQvOWnt2RNOIjTK6tg/YtoqlSvNFBCMKn9KBY9n+Agrk8z6EOyYtS+wj
BmkBMhIQ7TMdm4Y4Fblm9+U6snVoiIFRKQQZWeUkIbtYipDhWCS3K1l1hfPqRBWgF0zIHGdR
qCmzyr6zOX7hGkfGxXbXCSe35B2KVNYnZS1VMBhTniyd3/AjS6y+VJTqaAFnpZP4DXVKZlHd
J23lL7VF2qEneJUl9nxl1bLzc6kQ9Osve5ERiFJzYD41i7ZFn5vK6hEqzZaLgSXeWMoM72Ce
NpLk9TYvEnnl90AjmyCymEPCeZnYKgob1w9IV6NkBCmCvr0fXk4/z+Auefb9eX988nWclCvi
lhzuHUFSgdEYiZUeY2UViAnJChBAikEB8UeQ4q6XaXdzPSwiLWF6JVyPrYjQJE83hdKqsIez
SRMT3AEUtxsI0qYBytSe3eAADY8Fh7/3/z0dnrW8diTSRwV/94dTmT3p66AHQ9v2PnZfRixs
WxeSF1EsomQlmow3xLCooo4PKrRI4HYTN7IOhD1Kl6RtKXt8j8pTNlh51sAg7qAZy5vL8+uv
tnYVCobljp5WJZ/NXCRUvrAZdg5QEGHRMK9zlJGqPyCdk5a/lG0pOvvAmGKoTbtqWWz8Ac4q
dJdStn0qJh4vr//ujDvRIPTmS/bfPp4oh4l8OZ7eP573LyfbrQez8+H1obmzeOkIHLSpahJu
zn9dcFTTZB4+DrUmPfpV4pXIHYV2wn/VaQurwh4x/M3dc03yqD5qxRIzP8sOLuquAplwk5/o
iOw4GylohGEiQnbqSIBm8zNouwEzZOj0UcD1tOQfHhXRQGE3k665hGfXym/Nvjv+yvJ3usKx
nzdObOKxMPceCPwSpB5MNskG1lTFIdn0xHcRZptzxuRYR7VaslyfkHUlMQmnfRt34TjiNDeb
IAXmq/P3qHJ1CQS2KvpIvcCFzFP0CIMcV8Au90s3mOC4KXOIvlUuIGPNmA5LIzG/l8cWJ/Xc
c3bveqIpFIEx1/AbT5WgT1JWVCuPD/JIbQtyK3AZe89iCkyf3px7FhrjKpt2os0nXvdKS4f0
Z9Xr2/E/Z8Xr48+PN8Ud84eXJ1umEBSqB1ixI7w6YPTi69ObCxdJ0l7fUVPN8FdZh+8FPeaA
72B9VLyFtULu8n6JAetbfoZWd3BGwEmRVGzgd9zvqi5bRpjvtbIhg6Pi+wfFD7c2rrOAJsZt
CugKCgQb3cmMMQxTtrsycNRu07RWe1I9J6FCfORI/z6+HV5QSQ5deP447X/t4Z/96fHTp092
MN/KRFtfkDTsuyDUDYZU1C6P7AhTGdiH4CbAO1UPlzf7FVgvujHOlLttBvLJKl2tFA64Q7Wq
Beu8rCtdtY6riYJSYyeskjwl0tqvTCOCVcCVGKXQtkjTmqsIh5S0FCbupFsnhlPAZBZeJI+x
k3Pu8f/PhI+3HmALHbqPjE0hEQqGBCPnw90W1qh6MGL4qWLXASbxUx2K3x9OD2d4Gj7im6cn
KA9eje45FczaqNcJt3kVivxfZepmi6SzZblLRCfwCbTpGcdcZ68HGj9tRwziPIgMIHH5UU6b
uOd4QWiSgZwivHjvQQ6F/TUnXiOJO50ISu9a39nebZ+3se60wNx4orJZsgLEkHijsnTbJ1nW
L5VUTi1pQtgFiIQ5T2Puc9mkL6oAAu5KcjOHCwU+aU9I0A8VVzBR1hgcZir1xvpDVYr1pERl
xy4PQmCAHarG8PKKwBBUoSCdaKKLLrUgEHgr5/kA5wu3dKhxcCxnhVi0/gNIKppio2/LPHT3
1XEywBd586LAkY1v2Dq4aRSKT6QWzTbiXYwMW5+kurH9n11P2skI2O8b3f54Qv6G52+MQcAe
nvaWwXbvSFb006rAAbuNUbB0TbM2wRmegu8HVaPDsjj5tuqSJ7IHscpo0YVL5N0bKBb5//7A
LEi6P9otHNeqkEVbCO5ihygloZuz0PkKNm2X8sEhJvUNt8y52+NtXNkWfUp8BSkVwHqN104T
kJ5jdrBzQe6hucLtqY0bRkHkNul4yzcl5qHmrg3FxlKZWOWS4j+HKYLfR+ZgpUN7hqlHaAE1
g7ef0INUFIjjHpPQzRYG5wvw8jBeCTBfrue1ZdTxPF1PIwFMRkY9qCoDezbNlKZqY9dFQKmW
AdGxQTkJTWwq876KZFfOzRbgYQ8VfCB3ddfv5QxWKRbCeHM3C1M0qKPrpulQJ0M7sXVxsTLh
Q3ioNX07s+DvS9rcM51H4xf0spgZwZp/VVRIVIjnFT0r8NkTMokB8IHPRiA65KVouLu4TuzW
lCCJpt4cqxgT7CMvIljerpT0NmLS8fDTsl6l5DSCNgYzzCItYwFLM7zUSYkv/erhS4QzHwJm
qo2YPQY9BwulC/gHXxuo+aO2AQA=

--dDRMvlgZJXvWKvBx--
