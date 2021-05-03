Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLOLYGCAMGQEEJYXDKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFF4372236
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 23:05:50 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id u7-20020a259b470000b02904dca50820c2sf9298005ybo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 14:05:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620075950; cv=pass;
        d=google.com; s=arc-20160816;
        b=mAyn1NTmGCh+T+mBlo03jDLQVKXPMhTVBoHr6hqqzku/RVXv9T7lY4+sTxjDnM6JcZ
         9rXWdMFJe8Vyq+SeUMed1sk+ZGfQYzqR+NyQCRL9dsB6hsJ5JJ3G690TuJntdhL8tC2x
         b68C4nEEIdBsqzIn+e08XxRVMwP+1ofS8JIfGrdfvDwz5Vdv2QiCsMt7eA5AzhJd6xms
         spoWRZQSYKuZr2C0znGjhaC8cOG9yrOtbwGYici/WuG6VcSf8dmboazA2yCsVLFp2hNA
         FE5zyagr6pz8YScoBRpAsRGgVnJkdzAWHaOTK8IBe1wtrvcEKcPqibV8NVGm/NbnSnvf
         3xXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=AdMqh0zpLByYKMrvdMPkOXo/HxCvqGQAIEjM4FGIh48=;
        b=RZYlEnUSDa0r6/pyRGYpIHrunS6Fj8/f7zLKivkIqDTsTB6PCsKptPXl5xrHbk0Xuk
         /ke7e/lXZx2OGdode4HFjWMpS9Kflu41JRgQSnqCbCIvZMbGh/Pcgd57R2kafimmLKDG
         WW240jbAAIA0b0T/TfMXhtB+qgv1N+MdFpUS8qBvLH9hYmrQ7jC61kEyHJq7Xja1+qUw
         ZkT24ge1cV98Zfo4pZ7ZErfsaFqRCBu1HS0mEHKuVqwoQxFo435nJX7rbXH14biExD9A
         BTnqFw2AEHe4xB5ImF8xE+3NFnFtVEkR3nVYtfX2ROOv52F17KNjHu+KFBTQhPoA2TJW
         vZHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdMqh0zpLByYKMrvdMPkOXo/HxCvqGQAIEjM4FGIh48=;
        b=lfyeYfsImbCkWdBBuDnZ5ueyCQQZwfwN97c6HKim3Z9c9Amun4Tdk/JurMmFZ69D3r
         1DxIOTgggoiJ6T+nHPjbov7FVIXkbQkWcS+fB4NkETIssBhXFomnw3jE+2YKtd97EkYf
         EnU6kfaZbWyozCLDKN514allrDD+tAhUZJYQtOF3HW8NIEuz5xoLnQ+gUuHr7V9DXS+0
         ZA5FTpcg9yr3MswvHEGIENbklN1B2YZUfAYctcadt/v7BKUOPGUZ9Jkzv/lv+4Z4InqQ
         fZQSRaizQrlsryirvToaV+y1zgVuWZN5Mz3PUTXHTllWpcJggUwFseRe/HxrIwKjV7NQ
         zeew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdMqh0zpLByYKMrvdMPkOXo/HxCvqGQAIEjM4FGIh48=;
        b=InwlvW6J2TQJraHJ+Sf6pMbmgxY5AIKqNzw3yNd6+XAX8sW+NsdzK+goJBtOsvjwtZ
         fEMIIhV/oWy+ZCCWQqFPtzu+0hsuIQOC0gq5O/5ZCSSdeTBsglevr1fa2zXy0odcqD37
         tZZl0GQIznoMTdv10OBD2I5+yFp+pInuYZnSsgYjWETSm7B1Y2q+Z24YzfSiCIlrP9Sk
         jDhpU608KJ7xojXJjyH513W1H+5+ButLfLLCWy2X8uJk+9KI0v9Rja8rBCpZJ15XF2+f
         ZyY8FdwBCyle+a7bHIy2ESWTm8tZdLI3ULAu5b8EjHGF1/oJ6VWYfgze1yB+/3tHZ8vL
         BgIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IWIAjc0540J4WTBv2OlVDqdq1hOcBHYBvXaQyZ55SQyYBm38H
	9Hwgf/01Wk20N895WG2wCHY=
X-Google-Smtp-Source: ABdhPJz+GzWius3JCgO38FQPIuteRxtR17Pqc4vXTWkyADU6p64Yj/lCdQrmGmBktsDimtsCtXB95A==
X-Received: by 2002:a25:c947:: with SMTP id z68mr28664481ybf.240.1620075949930;
        Mon, 03 May 2021 14:05:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:51c2:: with SMTP id f185ls327899ybb.5.gmail; Mon, 03 May
 2021 14:05:49 -0700 (PDT)
X-Received: by 2002:a25:b31c:: with SMTP id l28mr29399810ybj.435.1620075949147;
        Mon, 03 May 2021 14:05:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620075949; cv=none;
        d=google.com; s=arc-20160816;
        b=zGzysv9qk2o53EglfX4jqNs+RrsCLKyCCVRqHEpX0epmvaKD74iy0tiDEkp9MtCD6F
         ytuZvfErnI+euL2ieG+NI9ZAmWYZkwFYcwjOacNeeTkOrTleGC8ENlBYzwF3oKWMEuMk
         i3VCq0UTAq631prlgTMI66OkXnVpFPt+MyMbq+RpprN4XPccSeVSGU55FfiMyzhDX56c
         owNfJqQcyG3mpuKsknw96f6srOsFGAjYvLePVaCCag+TCZy0JdcAOUCVwU6zei16do/H
         dzfswxDl3pzzLkyq/Y/+qVnG4uWXZXlMMpccS/BhXRzFujgoWrDXuRYbP3k4cJc8cha4
         dzlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=d/lwm9VOVc6eqQ3M4/q2OpZFYnaYZPdxKFJCpah/DmQ=;
        b=hihum5sDmIk84C6KXiJDubbd9BzrZxAmJ6hd9W4ES4KsS9qMOYwHNWOa4JtxvnL0Rc
         6npYqeR/ouk/uwjG+7KF3HoOckIDBvoKyDXqwIrcxYWp+OVqGh79kmr+QETToRV6fPGr
         oaoEtsAywA9TtzpLdq47aIOaWM+H9/j5HwbE8a5c7yXq6vYqOJj3HzGXJIzie0ikE886
         NFpHlkEw9gTLUWVRsUgN6zFShubTdvxYizW8e56sfwmI0YH78aXZ1fsZmi+A8+15Vzr/
         IqBUbbC/BFgmOr9qsIqoEmuDgRmV+1rCFFh5UPyogWkGzDb3SVhMrl1MnGbwFG36dZ9d
         KlAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id i15si63332ybk.2.2021.05.03.14.05.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 14:05:49 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: BLCFH+ucZx6pKHCIzuyBff0g8QMH/jkvCOBW4rsG3CGKqSw+KyuEE6vr4LTMTcxWksMzuq6YrX
 v1rOsIrGjPOw==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="218633427"
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; 
   d="gz'50?scan'50,208,50";a="218633427"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 May 2021 14:05:47 -0700
IronPort-SDR: zwxYlSFfqmojkGCG8Eu5oauNhdJJ62Q1aVnfe7viwKmtIwtPOuWgBBXiyHcfSv2zr/D0ihydIH
 PRwyWJ72+lhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; 
   d="gz'50?scan'50,208,50";a="427529553"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 03 May 2021 14:05:42 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ldfl8-0009M6-6N; Mon, 03 May 2021 21:05:42 +0000
Date: Tue, 4 May 2021 05:05:23 +0800
From: kernel test robot <lkp@intel.com>
To: Huacai Chen <chenhc@lemote.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
	Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>
Subject: arch/mips/kvm/emulate.c:946:23: warning: no previous prototype for
 function 'kvm_mips_emul_eret'
Message-ID: <202105040513.FKoNq7QG-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5mCyUwZo2JvN/JJP"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of lkp@intel.com designates
 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


--5mCyUwZo2JvN/JJP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Huacai,

First bad commit (maybe !=3D root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   d835ff6c96ae6fa1ea474b0290a46e514ab6742b
commit: 0f78355c450835053fed85828c9d6526594c0921 KVM: MIPS: Enable KVM supp=
ort for Loongson-3
date:   11 months ago
config: mips-randconfig-r026-20210504 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a=
5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3D0f78355c450835053fed85828c9d6526594c0921
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 0f78355c450835053fed85828c9d6526594c0921
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D=
1 ARCH=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of =
'<<' to a boolean always evaluates to true [-Wtautological-constant-compare=
]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_=
SIP_OP'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/emulate.c:14:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:6:
   In file included from include/linux/seqlock.h:36:
   In file included from include/linux/spinlock.h:83:
   In file included from include/linux/spinlock_types.h:18:
   In file included from include/linux/lockdep.h:44:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<'=
 to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/emulate.c:14:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:74:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/mips/include/asm/timex.h:19:
   In file included from arch/mips/include/asm/cpu-type.h:12:
   In file included from include/linux/smp.h:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a=
 boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/emulate.c:15:
   In file included from include/linux/kvm_host.h:14:
   In file included from include/linux/mm.h:95:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of=
 '<<' to a boolean always evaluates to true [-Wtautological-constant-compar=
e]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxch=
g64'
           cmpxchg((ptr), (o), (n));                                       =
\
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/emulate.c:15:
   In file included from include/linux/kvm_host.h:14:
   In file included from include/linux/mm.h:95:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of=
 '<<' to a boolean always evaluates to true [-Wtautological-constant-compar=
e]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxch=
g64'
           cmpxchg((ptr), (o), (n));                                       =
\
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/emulate.c:15:
   include/linux/kvm_host.h:331:9: warning: converting the result of '<<' t=
o a boolean always evaluates to true [-Wtautological-constant-compare]
           return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/emulate.c:15:
   include/linux/kvm_host.h:331:9: warning: converting the result of '<<' t=
o a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/emulate.c:24:
   In file included from arch/mips/include/asm/mmu_context.h:23:
   arch/mips/include/asm/ginvt.h:41:20: warning: shifting a negative signed=
 value is undefined [-Wshift-negative-value]
           addr &=3D PAGE_MASK << 1;
                   ~~~~~~~~~ ^
   arch/mips/include/asm/ginvt.h:52:20: warning: shifting a negative signed=
 value is undefined [-Wshift-negative-value]
           addr &=3D PAGE_MASK << 1;
                   ~~~~~~~~~ ^
>> arch/mips/kvm/emulate.c:946:23: warning: no previous prototype for funct=
ion 'kvm_mips_emul_eret' [-Wmissing-prototypes]
   enum emulation_result kvm_mips_emul_eret(struct kvm_vcpu *vcpu)
                         ^
   arch/mips/kvm/emulate.c:946:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
   enum emulation_result kvm_mips_emul_eret(struct kvm_vcpu *vcpu)
   ^
   static=20
>> arch/mips/kvm/emulate.c:1029:23: warning: no previous prototype for func=
tion 'kvm_mips_emul_tlbr' [-Wmissing-prototypes]
   enum emulation_result kvm_mips_emul_tlbr(struct kvm_vcpu *vcpu)
                         ^
   arch/mips/kvm/emulate.c:1029:1: note: declare 'static' if the function i=
s not intended to be used outside of this translation unit
   enum emulation_result kvm_mips_emul_tlbr(struct kvm_vcpu *vcpu)
   ^
   static=20
>> arch/mips/kvm/emulate.c:1102:23: warning: no previous prototype for func=
tion 'kvm_mips_emul_tlbwi' [-Wmissing-prototypes]
   enum emulation_result kvm_mips_emul_tlbwi(struct kvm_vcpu *vcpu)
                         ^
   arch/mips/kvm/emulate.c:1102:1: note: declare 'static' if the function i=
s not intended to be used outside of this translation unit
   enum emulation_result kvm_mips_emul_tlbwi(struct kvm_vcpu *vcpu)
   ^
   static=20
>> arch/mips/kvm/emulate.c:1138:23: warning: no previous prototype for func=
tion 'kvm_mips_emul_tlbwr' [-Wmissing-prototypes]
   enum emulation_result kvm_mips_emul_tlbwr(struct kvm_vcpu *vcpu)
                         ^
   arch/mips/kvm/emulate.c:1138:1: note: declare 'static' if the function i=
s not intended to be used outside of this translation unit
   enum emulation_result kvm_mips_emul_tlbwr(struct kvm_vcpu *vcpu)
   ^
   static=20
>> arch/mips/kvm/emulate.c:1163:23: warning: no previous prototype for func=
tion 'kvm_mips_emul_tlbp' [-Wmissing-prototypes]
   enum emulation_result kvm_mips_emul_tlbp(struct kvm_vcpu *vcpu)
                         ^
   arch/mips/kvm/emulate.c:1163:1: note: declare 'static' if the function i=
s not intended to be used outside of this translation unit
   enum emulation_result kvm_mips_emul_tlbp(struct kvm_vcpu *vcpu)
   ^
   static=20
   21 warnings generated.
   Assembler messages:
   Fatal error: invalid -march=3D option: `mips64r2'
   clang-13: error: assembler command failed with exit code 1 (use -v to se=
e invocation)
--
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/loongson_ipi.c:11:
   In file included from include/linux/kvm_host.h:7:
   In file included from include/linux/hardirq.h:5:
   In file included from include/linux/context_tracking_state.h:5:
   In file included from include/linux/percpu.h:6:
   In file included from include/linux/preempt.h:78:
   In file included from ./arch/mips/include/generated/asm/preempt.h:1:
   In file included from include/asm-generic/preempt.h:5:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/mips/include/asm/thread_info.h:16:
   In file included from arch/mips/include/asm/processor.h:14:
   In file included from include/linux/atomic.h:7:
   arch/mips/include/asm/atomic.h:262:1: warning: converting the result of =
'<<' to a boolean always evaluates to true [-Wtautological-constant-compare=
]
   ATOMIC_SIP_OP(atomic64, s64, dsubu, lld, scd)
   ^
   arch/mips/include/asm/atomic.h:252:7: note: expanded from macro 'ATOMIC_=
SIP_OP'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/loongson_ipi.c:11:
   In file included from include/linux/kvm_host.h:7:
   In file included from include/linux/hardirq.h:5:
   In file included from include/linux/context_tracking_state.h:5:
   In file included from include/linux/percpu.h:7:
   In file included from include/linux/smp.h:15:
   include/linux/llist.h:222:9: warning: converting the result of '<<' to a=
 boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&head->first, NULL);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/loongson_ipi.c:11:
   In file included from include/linux/kvm_host.h:7:
   In file included from include/linux/hardirq.h:7:
   In file included from include/linux/lockdep.h:44:
   include/linux/debug_locks.h:17:9: warning: converting the result of '<<'=
 to a boolean always evaluates to true [-Wtautological-constant-compare]
           return xchg(&debug_locks, 0);
                  ^
   arch/mips/include/asm/cmpxchg.h:102:7: note: expanded from macro 'xchg'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/loongson_ipi.c:11:
   In file included from include/linux/kvm_host.h:14:
   In file included from include/linux/mm.h:95:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of=
 '<<' to a boolean always evaluates to true [-Wtautological-constant-compar=
e]
                   cmpxchg64(&buddy->pte, 0, _PAGE_GLOBAL);
                   ^
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxch=
g64'
           cmpxchg((ptr), (o), (n));                                       =
\
           ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/loongson_ipi.c:11:
   In file included from include/linux/kvm_host.h:14:
   In file included from include/linux/mm.h:95:
   arch/mips/include/asm/pgtable.h:210:3: warning: converting the result of=
 '<<' to a boolean always evaluates to true [-Wtautological-constant-compar=
e]
   arch/mips/include/asm/cmpxchg.h:220:2: note: expanded from macro 'cmpxch=
g64'
           cmpxchg((ptr), (o), (n));                                       =
\
           ^
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/loongson_ipi.c:11:
   include/linux/kvm_host.h:331:9: warning: converting the result of '<<' t=
o a boolean always evaluates to true [-Wtautological-constant-compare]
           return cmpxchg(&vcpu->mode, IN_GUEST_MODE, EXITING_GUEST_MODE);
                  ^
   arch/mips/include/asm/cmpxchg.h:194:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
   In file included from arch/mips/kvm/loongson_ipi.c:11:
   include/linux/kvm_host.h:331:9: warning: converting the result of '<<' t=
o a boolean always evaluates to true [-Wtautological-constant-compare]
   arch/mips/include/asm/cmpxchg.h:204:7: note: expanded from macro 'cmpxch=
g'
           if (!__SYNC_loongson3_war)                                      =
\
                ^
   arch/mips/include/asm/sync.h:147:34: note: expanded from macro '__SYNC_l=
oongson3_war'
   # define __SYNC_loongson3_war   (1 << 31)
                                      ^
>> arch/mips/kvm/loongson_ipi.c:190:6: warning: no previous prototype for f=
unction 'kvm_init_loongson_ipi' [-Wmissing-prototypes]
   void kvm_init_loongson_ipi(struct kvm *kvm)
        ^
   arch/mips/kvm/loongson_ipi.c:190:1: note: declare 'static' if the functi=
on is not intended to be used outside of this translation unit
   void kvm_init_loongson_ipi(struct kvm *kvm)
   ^
   static=20
   15 warnings generated.
   Assembler messages:
   Fatal error: invalid -march=3D option: `mips64r2'
   clang-13: error: assembler command failed with exit code 1 (use -v to se=
e invocation)


vim +/kvm_mips_emul_eret +946 arch/mips/kvm/emulate.c

e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   945=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  @946=
  enum emulation_result kvm_mips_emul_eret(struct kvm_vcpu *vcpu)
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   947=
  {
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   948=
  	struct mips_coproc *cop0 =3D vcpu->arch.cop0;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   949=
  	enum emulation_result er =3D EMULATE_DONE;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   950=
 =20
ede5f3e7b54a43 arch/mips/kvm/emulate.c       James Hogan   2016-10-25   951=
  	if (kvm_read_c0_guest_status(cop0) & ST0_ERL) {
ede5f3e7b54a43 arch/mips/kvm/emulate.c       James Hogan   2016-10-25   952=
  		kvm_clear_c0_guest_status(cop0, ST0_ERL);
ede5f3e7b54a43 arch/mips/kvm/emulate.c       James Hogan   2016-10-25   953=
  		vcpu->arch.pc =3D kvm_read_c0_guest_errorepc(cop0);
ede5f3e7b54a43 arch/mips/kvm/emulate.c       James Hogan   2016-10-25   954=
  	} else if (kvm_read_c0_guest_status(cop0) & ST0_EXL) {
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   955=
  		kvm_debug("[%#lx] ERET to %#lx\n", vcpu->arch.pc,
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   956=
  			  kvm_read_c0_guest_epc(cop0));
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   957=
  		kvm_clear_c0_guest_status(cop0, ST0_EXL);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   958=
  		vcpu->arch.pc =3D kvm_read_c0_guest_epc(cop0);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   959=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   960=
  	} else {
6ad78a5c75c5bc arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26   961=
  		kvm_err("[%#lx] ERET when MIPS_SR_EXL|MIPS_SR_ERL =3D=3D 0\n",
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   962=
  			vcpu->arch.pc);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   963=
  		er =3D EMULATE_FAIL;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   964=
  	}
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   965=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   966=
  	return er;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   967=
  }
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   968=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   969=
  enum emulation_result kvm_mips_emul_wait(struct kvm_vcpu *vcpu)
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   970=
  {
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   971=
  	kvm_debug("[%#lx] !!!WAIT!!! (%#lx)\n", vcpu->arch.pc,
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   972=
  		  vcpu->arch.pending_exceptions);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   973=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   974=
  	++vcpu->stat.wait_exits;
1e09e86ac13747 arch/mips/kvm/emulate.c       James Hogan   2016-06-14   975=
  	trace_kvm_exit(vcpu, KVM_TRACE_EXIT_WAIT);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   976=
  	if (!vcpu->arch.pending_exceptions) {
f4474d50c7d483 arch/mips/kvm/emulate.c       James Hogan   2017-03-14   977=
  		kvm_vz_lose_htimer(vcpu);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   978=
  		vcpu->arch.wait =3D 1;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   979=
  		kvm_vcpu_block(vcpu);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   980=
 =20
d116e812f9026e arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26   981=
  		/*
d116e812f9026e arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26   982=
  		 * We we are runnable, then definitely go off to user space to
d116e812f9026e arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26   983=
  		 * check if any I/O interrupts are pending.
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   984=
  		 */
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   985=
  		if (kvm_check_request(KVM_REQ_UNHALT, vcpu)) {
72875d8a4d92f6 arch/mips/kvm/emulate.c       Radim Kr=C4=8Dm=C3=A1=C5=99  2=
017-04-26   986  			kvm_clear_request(KVM_REQ_UNHALT, vcpu);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   987=
  			vcpu->run->exit_reason =3D KVM_EXIT_IRQ_WINDOW_OPEN;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   988=
  		}
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   989=
  	}
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   990=
 =20
d98403a525fe16 arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26   991=
  	return EMULATE_DONE;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   992=
  }
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21   993=
 =20
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14   994=
  static void kvm_mips_change_entryhi(struct kvm_vcpu *vcpu,
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14   995=
  				    unsigned long entryhi)
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14   996=
  {
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14   997=
  	struct mips_coproc *cop0 =3D vcpu->arch.cop0;
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14   998=
  	struct mm_struct *kern_mm =3D &vcpu->arch.guest_kernel_mm;
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14   999=
  	int cpu, i;
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1000=
  	u32 nasid =3D entryhi & KVM_ENTRYHI_ASID;
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1001=
 =20
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1002=
  	if (((kvm_read_c0_guest_entryhi(cop0) & KVM_ENTRYHI_ASID) !=3D nasid)) {
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1003=
  		trace_kvm_asid_change(vcpu, kvm_read_c0_guest_entryhi(cop0) &
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1004=
  				      KVM_ENTRYHI_ASID, nasid);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1005=
 =20
d116e812f9026e arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26  1006=
  		/*
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1007=
  		 * Flush entries from the GVA page tables.
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1008=
  		 * Guest user page table will get flushed lazily on re-entry to
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1009=
  		 * guest user if the guest ASID actually changes.
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1010=
  		 */
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1011=
  		kvm_mips_flush_gva_pt(kern_mm->pgd, KMF_KERN);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1012=
 =20
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1013=
  		/*
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1014=
  		 * Regenerate/invalidate kernel MMU context.
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1015=
  		 * The user MMU context will be regenerated lazily on re-entry
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1016=
  		 * to guest user if the guest ASID actually changes.
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1017=
  		 */
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1018=
  		preempt_disable();
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1019=
  		cpu =3D smp_processor_id();
4739f7dd99d757 arch/mips/kvm/emulate.c       Paul Burton   2019-02-02  1020=
  		get_new_mmu_context(kern_mm);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1021=
  		for_each_possible_cpu(i)
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1022=
  			if (i !=3D cpu)
0b317c389c6771 arch/mips/kvm/emulate.c       Paul Burton   2019-02-02  1023=
  				set_cpu_context(i, kern_mm, 0);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1024=
  		preempt_enable();
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1025=
  	}
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1026=
  	kvm_write_c0_guest_entryhi(cop0, entryhi);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1027=
  }
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1028=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21 @1029=
  enum emulation_result kvm_mips_emul_tlbr(struct kvm_vcpu *vcpu)
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1030=
  {
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1031=
  	struct mips_coproc *cop0 =3D vcpu->arch.cop0;
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1032=
  	struct kvm_mips_tlb *tlb;
8cffd197485122 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1033=
  	unsigned long pc =3D vcpu->arch.pc;
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1034=
  	int index;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1035=
 =20
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1036=
  	index =3D kvm_read_c0_guest_index(cop0);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1037=
  	if (index < 0 || index >=3D KVM_MIPS_GUEST_TLB_SIZE) {
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1038=
  		/* UNDEFINED */
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1039=
  		kvm_debug("[%#lx] TLBR Index %#x out of range\n", pc, index);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1040=
  		index &=3D KVM_MIPS_GUEST_TLB_SIZE - 1;
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1041=
  	}
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1042=
 =20
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1043=
  	tlb =3D &vcpu->arch.guest_tlb[index];
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1044=
  	kvm_write_c0_guest_pagemask(cop0, tlb->tlb_mask);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1045=
  	kvm_write_c0_guest_entrylo0(cop0, tlb->tlb_lo[0]);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1046=
  	kvm_write_c0_guest_entrylo1(cop0, tlb->tlb_lo[1]);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1047=
  	kvm_mips_change_entryhi(vcpu, tlb->tlb_hi);
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1048=
 =20
dc44abd6aad224 arch/mips/kvm/emulate.c       James Hogan   2017-03-14  1049=
  	return EMULATE_DONE;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1050=
  }
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1051=
 =20
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1052=
  /**
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1053=
   * kvm_mips_invalidate_guest_tlb() - Indicates a change in guest MMU map.
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1054=
   * @vcpu:	VCPU with changed mappings.
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1055=
   * @tlb:	TLB entry being removed.
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1056=
   *
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1057=
   * This is called to indicate a single change in guest MMU mappings, so t=
hat we
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1058=
   * can arrange TLB flushes on this and other CPUs.
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1059=
   */
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1060=
  static void kvm_mips_invalidate_guest_tlb(struct kvm_vcpu *vcpu,
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1061=
  					  struct kvm_mips_tlb *tlb)
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1062=
  {
c550d53934d821 arch/mips/kvm/emulate.c       James Hogan   2016-10-11  1063=
  	struct mm_struct *kern_mm =3D &vcpu->arch.guest_kernel_mm;
c550d53934d821 arch/mips/kvm/emulate.c       James Hogan   2016-10-11  1064=
  	struct mm_struct *user_mm =3D &vcpu->arch.guest_user_mm;
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1065=
  	int cpu, i;
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1066=
  	bool user;
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1067=
 =20
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1068=
  	/* No need to flush for entries which are already invalid */
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1069=
  	if (!((tlb->tlb_lo[0] | tlb->tlb_lo[1]) & ENTRYLO_V))
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1070=
  		return;
aba8592950f1c6 arch/mips/kvm/emulate.c       James Hogan   2016-12-16  1071=
  	/* Don't touch host kernel page tables or TLB mappings */
aba8592950f1c6 arch/mips/kvm/emulate.c       James Hogan   2016-12-16  1072=
  	if ((unsigned long)tlb->tlb_hi > 0x7fffffff)
aba8592950f1c6 arch/mips/kvm/emulate.c       James Hogan   2016-12-16  1073=
  		return;
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1074=
  	/* User address space doesn't need flushing for KSeg2/3 changes */
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1075=
  	user =3D tlb->tlb_hi < KVM_GUEST_KSEG0;
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1076=
 =20
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1077=
  	preempt_disable();
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1078=
 =20
aba8592950f1c6 arch/mips/kvm/emulate.c       James Hogan   2016-12-16  1079=
  	/* Invalidate page table entries */
aba8592950f1c6 arch/mips/kvm/emulate.c       James Hogan   2016-12-16  1080=
  	kvm_trap_emul_invalidate_gva(vcpu, tlb->tlb_hi & VPN2_MASK, user);
aba8592950f1c6 arch/mips/kvm/emulate.c       James Hogan   2016-12-16  1081=
 =20
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1082=
  	/*
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1083=
  	 * Probe the shadow host TLB for the entry being overwritten, if one
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1084=
  	 * matches, invalidate it
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1085=
  	 */
57e3869cfaaec7 arch/mips/kvm/emulate.c       James Hogan   2016-10-08  1086=
  	kvm_mips_host_tlb_inv(vcpu, tlb->tlb_hi, user, true);
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1087=
 =20
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1088=
  	/* Invalidate the whole ASID on other CPUs */
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1089=
  	cpu =3D smp_processor_id();
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1090=
  	for_each_possible_cpu(i) {
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1091=
  		if (i =3D=3D cpu)
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1092=
  			continue;
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1093=
  		if (user)
0b317c389c6771 arch/mips/kvm/emulate.c       Paul Burton   2019-02-02  1094=
  			set_cpu_context(i, user_mm, 0);
0b317c389c6771 arch/mips/kvm/emulate.c       Paul Burton   2019-02-02  1095=
  		set_cpu_context(i, kern_mm, 0);
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1096=
  	}
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1097=
 =20
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1098=
  	preempt_enable();
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1099=
  }
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1100=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1101=
  /* Write Guest TLB Entry @ Index */
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21 @1102=
  enum emulation_result kvm_mips_emul_tlbwi(struct kvm_vcpu *vcpu)
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1103=
  {
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1104=
  	struct mips_coproc *cop0 =3D vcpu->arch.cop0;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1105=
  	int index =3D kvm_read_c0_guest_index(cop0);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1106=
  	struct kvm_mips_tlb *tlb =3D NULL;
8cffd197485122 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1107=
  	unsigned long pc =3D vcpu->arch.pc;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1108=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1109=
  	if (index < 0 || index >=3D KVM_MIPS_GUEST_TLB_SIZE) {
6ad78a5c75c5bc arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26  1110=
  		kvm_debug("%s: illegal index: %d\n", __func__, index);
8cffd197485122 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1111=
  		kvm_debug("[%#lx] COP0_TLBWI [%d] (entryhi: %#lx, entrylo0: %#lx entryl=
o1: %#lx, mask: %#lx)\n",
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1112=
  			  pc, index, kvm_read_c0_guest_entryhi(cop0),
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1113=
  			  kvm_read_c0_guest_entrylo0(cop0),
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1114=
  			  kvm_read_c0_guest_entrylo1(cop0),
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1115=
  			  kvm_read_c0_guest_pagemask(cop0));
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1116=
  		index =3D (index & ~0x80000000) % KVM_MIPS_GUEST_TLB_SIZE;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1117=
  	}
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1118=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1119=
  	tlb =3D &vcpu->arch.guest_tlb[index];
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1120=
 =20
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1121=
  	kvm_mips_invalidate_guest_tlb(vcpu, tlb);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1122=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1123=
  	tlb->tlb_mask =3D kvm_read_c0_guest_pagemask(cop0);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1124=
  	tlb->tlb_hi =3D kvm_read_c0_guest_entryhi(cop0);
9fbfb06a406577 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1125=
  	tlb->tlb_lo[0] =3D kvm_read_c0_guest_entrylo0(cop0);
9fbfb06a406577 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1126=
  	tlb->tlb_lo[1] =3D kvm_read_c0_guest_entrylo1(cop0);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1127=
 =20
8cffd197485122 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1128=
  	kvm_debug("[%#lx] COP0_TLBWI [%d] (entryhi: %#lx, entrylo0: %#lx entrylo=
1: %#lx, mask: %#lx)\n",
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1129=
  		  pc, index, kvm_read_c0_guest_entryhi(cop0),
d116e812f9026e arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26  1130=
  		  kvm_read_c0_guest_entrylo0(cop0),
d116e812f9026e arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26  1131=
  		  kvm_read_c0_guest_entrylo1(cop0),
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1132=
  		  kvm_read_c0_guest_pagemask(cop0));
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1133=
 =20
d98403a525fe16 arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26  1134=
  	return EMULATE_DONE;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1135=
  }
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1136=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1137=
  /* Write Guest TLB Entry @ Random Index */
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21 @1138=
  enum emulation_result kvm_mips_emul_tlbwr(struct kvm_vcpu *vcpu)
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1139=
  {
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1140=
  	struct mips_coproc *cop0 =3D vcpu->arch.cop0;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1141=
  	struct kvm_mips_tlb *tlb =3D NULL;
8cffd197485122 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1142=
  	unsigned long pc =3D vcpu->arch.pc;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1143=
  	int index;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1144=
 =20
e6331a321aafcc arch/mips/kvm/emulate.c       Paul Burton   2019-03-22  1145=
  	index =3D prandom_u32_max(KVM_MIPS_GUEST_TLB_SIZE);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1146=
  	tlb =3D &vcpu->arch.guest_tlb[index];
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1147=
 =20
91e4f1b6073dd6 arch/mips/kvm/emulate.c       James Hogan   2016-09-15  1148=
  	kvm_mips_invalidate_guest_tlb(vcpu, tlb);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1149=
 =20
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1150=
  	tlb->tlb_mask =3D kvm_read_c0_guest_pagemask(cop0);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1151=
  	tlb->tlb_hi =3D kvm_read_c0_guest_entryhi(cop0);
9fbfb06a406577 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1152=
  	tlb->tlb_lo[0] =3D kvm_read_c0_guest_entrylo0(cop0);
9fbfb06a406577 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1153=
  	tlb->tlb_lo[1] =3D kvm_read_c0_guest_entrylo1(cop0);
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1154=
 =20
8cffd197485122 arch/mips/kvm/emulate.c       James Hogan   2016-06-09  1155=
  	kvm_debug("[%#lx] COP0_TLBWR[%d] (entryhi: %#lx, entrylo0: %#lx entrylo1=
: %#lx)\n",
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1156=
  		  pc, index, kvm_read_c0_guest_entryhi(cop0),
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1157=
  		  kvm_read_c0_guest_entrylo0(cop0),
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1158=
  		  kvm_read_c0_guest_entrylo1(cop0));
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1159=
 =20
d98403a525fe16 arch/mips/kvm/kvm_mips_emul.c Dengcheng Zhu 2014-06-26  1160=
  	return EMULATE_DONE;
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1161=
  }
e685c689f3a84e arch/mips/kvm/kvm_mips_emul.c Sanjay Lal    2012-11-21  1162=
 =20

:::::: The code at line 946 was first introduced by commit
:::::: e685c689f3a84e5e24a5867afc5e7b5857efa3e4 KVM/MIPS32: Privileged inst=
ruction/target branch emulation.

:::::: TO: Sanjay Lal <sanjayl@kymasys.com>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202105040513.FKoNq7QG-lkp%40intel.com.

--5mCyUwZo2JvN/JJP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
aPsBAA==

--5mCyUwZo2JvN/JJP--
