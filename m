Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIPY67VAKGQESF4LNYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7858198963
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 04:21:23 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id f5sf2703416plr.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 19:21:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566440482; cv=pass;
        d=google.com; s=arc-20160816;
        b=QNt/DS4V213Dj9OAO+NKZRup9Z/XUSSoNc+KeKWpvKav7GFE5QOy8CJPfOylJEuKG9
         PMcGIwNft9vpYkp9mIopKwLFGlGYovBkHV2dEX8e9gPBxDSldcuWHvupyK+37M8XOEMC
         h05IHbos2p1D3suUFduxG8CdZd1/VhFYOk3tB/r1F9CvU9WjAmb/oA2G7dTPO53YlmNc
         mk9u49S59XMtV6IY1I3U9aB/VM+WEbg3jua+Ii7zwfp5cLixYIeUz5U0FJwRmGlmoyKE
         8VPwP2ptxvYypECVnkNNO32wgx2e/q5qmNWQSNPawveLiol1Za3KD8Zy9J04ZR2u28db
         WWlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WQvrCsiwG2CRjHHldvg62lCP0vFXlEPBVkAgCWmuyGE=;
        b=Ryb/5PUsynESKq9dMIAQfgMtdvJvcGVIP1q6wp8iJoTJTRtgX2snGdH5UO6PlHEAN7
         +p9ylsHkkbdhbwf0tclNB5zD362AGDciMcQ+H0uwkTsaecreTco6i7Cu6cwqlGeTzLC/
         GvHNWdTsLQ6+1p9MgPrCeeZkIFcpLGZhwvhCrQBEJtEUzdrTpnFCBsGObrCwW+yPKzag
         pmZDQ7AP4itQVKeQ+aWvKnuAGAz0O5iaLCPtN0WY1DnRk2xdacC6q/lNQ9p7o/JFnvBz
         n6x2Z9wxIX2wD3Jb9T2847UXrdlIOIi4R+IvQh3W6xz7p7pywHyiVOBu3gx4Qy25AM/d
         b5zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WQvrCsiwG2CRjHHldvg62lCP0vFXlEPBVkAgCWmuyGE=;
        b=oKycjWoQO/gSH5tIb4W5m1b+4hfYNlCg12kvjXmAakVqmagEXs8a4RbNulEnkvJi89
         sg5yHQ+LB0cvJamc2ANQVlkHbS3/0aVfelwiP400tnjpnzwfj5Jb7Bv/zOEseMB9efXP
         +ga84NUA+auxApsm/L3oabQXCTOZYJn6YUfK5LZaJ9nKn88DuMNVDgkXwkVgzV7N9TL9
         9fPMR2ldytId1KWuBaXJ6p/x1yPFXGXmcNCnGANkQjPDNxeAsTDG36GciAmhEyzOvHyd
         t1SDclE0Hme5dz9CaKSq/Q2gc0xx49f8rjknyjIYXc+NqwDebXHXyP/7Yoq22b8prOxL
         AVvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WQvrCsiwG2CRjHHldvg62lCP0vFXlEPBVkAgCWmuyGE=;
        b=VJ77jFCx2siJUPpexdk+j8EKc/rA/O0J3RY4XeIN1ijqZunRcXpoBXsUOvCpxbZwEP
         t7Uf5ohn5YWrxYpYzggbsLn9hxCkCkEKEfNijAyeE2yUkOofQEjRn8weIEgnoQ9e6V2g
         Ed9Kt26FFyKLujS3zvJvdM3K88bJ1cq4uVN3lU3tXgG2IvVaSlQjBBeGQ5TzYPnJ03j+
         upTuTlSp7finfqV3ixsNUgTOFtmI4feZAOw0w7A3qsQ5HY3HrcjoAdybPGJSEDQx0bSM
         MDsFopsck6VTG6r2aMA54MUP6YfcogghKYW5JrHlQo1BS2APi40daOeUdT3uhVZ7zksM
         dw7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUoI6mMei5FjC+YyNDzPaNn3MHpANVzNglQGEzOCc7D2YzpdCmY
	7VwsJBxyLNXbulTRhAOczOc=
X-Google-Smtp-Source: APXvYqwZdakXdYGvsRMBB/mx4G0rgbjIWRGoT3pOj/PY0vsRtdKFctbkjL12xsibRITYftfJsKlpxg==
X-Received: by 2002:a17:902:2d24:: with SMTP id o33mr421874plb.269.1566440481759;
        Wed, 21 Aug 2019 19:21:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8042:: with SMTP id e2ls1199867pjw.4.gmail; Wed, 21
 Aug 2019 19:21:21 -0700 (PDT)
X-Received: by 2002:a17:902:2b81:: with SMTP id l1mr24480619plb.107.1566440481373;
        Wed, 21 Aug 2019 19:21:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566440481; cv=none;
        d=google.com; s=arc-20160816;
        b=t5Swx1Y05rOxMvlf2fyF0bUan5AjFYDFuydNtgC0lC9h9aWptmHj1Gclwy5tyxXrp+
         BKfwlqjOWfU7TVbpcVeGy4dbyDZ1G7Nx7ktnbL2kzrgeJfQYfnifEP9uvlvmevwf6ihO
         MUhwLTIypAXHNmVnSijl+gy/sm898XfaJLZoCMfxAUFLU21sQUCIeUg7qMKvDaNgBrm2
         VAxhTFRt+42UBt8tD+We3cUnCnLNwhUGchOnXlNvx1UEyW4LP9/yIPZdgYrX2qJ/c9il
         GWk4o6uj8C90UKCc6jFKxI/Joz6PZCgWVp9YauIZJkozSdXr243i8oqocfGUOP6bIHCk
         AXXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=eFDyUs013JFzBh6O0o7Cvh104E8ZgILWZe8tgQu+iPc=;
        b=GrVtoNKZ1GsxDVRVkHKAMZSjur/cfTRO4XsVxh2vst6gcudVTjpRqlYFr+ejlEAD8Y
         NjTaUESsNbxHE3ZSZMsu4L3/m7fmi4IzYjxWPfSaNbh9Cbl50Hahqi0eBR9UE5x2j9+U
         9qC8HMhPyJmLoRdKc+Re7U5zwV8XRJJu7vFw6JAfES4GKLLgqJtQMQ8mY09Qq0gU9zP/
         XU17UkQnugCoWvYVPoMnxsZeoQG8893M39MmIq6EbqxD2kWamL6maprwy3ohXA6XblYG
         FDF0BhoVro34oLRxRs1r+VrgDLetXfsDUYUDEAQ0IZduoTmjJBIz4XJc4BQDXJgS+GMJ
         jnfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id f125si1153915pgc.4.2019.08.21.19.21.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Aug 2019 19:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Aug 2019 19:21:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,414,1559545200"; 
   d="gz'50?scan'50,208,50";a="186417038"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 21 Aug 2019 19:21:18 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i0ciz-000G7V-RB; Thu, 22 Aug 2019 10:21:17 +0800
Date: Thu, 22 Aug 2019 10:20:23 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [kees:clang/address_space 1/1] include/linux/xarray.h:1128:9: error:
 returning 'typeof (*(xa->xa_head)) *' (aka
 '__attribute__((address_space(4))) void *') from a function with result type
 'void *' changes address space of pointer
Message-ID: <201908221020.KWNsCxJQ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="esfgxnzp4ahvhjyq"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--esfgxnzp4ahvhjyq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Kees Cook <keescook@chromium.org>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/kees/linux.git clang/address_space
head:   beff911c13390a71b3f7921fd82ec6a71ca75c02
commit: beff911c13390a71b3f7921fd82ec6a71ca75c02 [1/1] [WIP] Compiler Attributes: support noderef and address_space
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout beff911c13390a71b3f7921fd82ec6a71ca75c02
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
   In file included from arch/arm64/include/asm/arch_timer.h:28:
   In file included from include/linux/smp.h:68:
   arch/arm64/include/asm/smp.h:45:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
   DECLARE_PER_CPU_READ_MOSTLY(int, cpu_number);
   ^
   include/linux/percpu-defs.h:169:2: note: expanded from macro 'DECLARE_PER_CPU_READ_MOSTLY'
           DECLARE_PER_CPU_SECTION(type, name, "..read_mostly")
           ^
   include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
           extern __PCPU_ATTRS(sec) __typeof__(type) name
           ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:21:
   In file included from include/linux/mm_types.h:16:
   In file included from include/linux/workqueue.h:9:
   In file included from include/linux/timer.h:6:
   In file included from include/linux/ktime.h:24:
   In file included from include/linux/time.h:73:
   In file included from include/linux/time32.h:13:
   In file included from include/linux/timex.h:65:
   In file included from arch/arm64/include/asm/timex.h:19:
   arch/arm64/include/asm/arch_timer.h:73:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
   DECLARE_PER_CPU(const struct arch_timer_erratum_workaround *,
   ^
   include/linux/percpu-defs.h:112:2: note: expanded from macro 'DECLARE_PER_CPU'
           DECLARE_PER_CPU_SECTION(type, name, "")
           ^
   include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
           extern __PCPU_ATTRS(sec) __typeof__(type) name
           ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:6:
   In file included from include/linux/mmzone.h:802:
   In file included from include/linux/memory_hotplug.h:7:
   In file included from include/linux/notifier.h:16:
   In file included from include/linux/srcu.h:49:
>> include/linux/srcutree.h:30:2: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
           spinlock_t __private lock ____cacheline_internodealigned_in_smp;
           ^
   include/linux/srcutree.h:49:2: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
           spinlock_t __private lock;
           ^
   include/linux/srcutree.h:69:2: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
           spinlock_t __private lock;              /* Protect counters */
           ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
>> include/linux/arch_topology.h:17:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
   DECLARE_PER_CPU(unsigned long, cpu_scale);
   ^
   include/linux/percpu-defs.h:112:2: note: expanded from macro 'DECLARE_PER_CPU'
           DECLARE_PER_CPU_SECTION(type, name, "")
           ^
   include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
           extern __PCPU_ATTRS(sec) __typeof__(type) name
           ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
>> include/linux/arch_topology.h:23:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return per_cpu(cpu_scale, cpu);
                  ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:270:29: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                     ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:237:2: note: expanded from macro 'per_cpu_ptr'
           SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                 \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
>> include/linux/arch_topology.h:23:9: error: multiple address spaces specified for type
   include/linux/percpu-defs.h:270:29: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                     ^
   include/linux/percpu-defs.h:237:2: note: expanded from macro 'per_cpu_ptr'
           SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                 \
           ^
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
>> include/linux/arch_topology.h:23:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return per_cpu(cpu_scale, cpu);
                  ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:270:29: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                     ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:237:2: note: expanded from macro 'per_cpu_ptr'
           SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                 \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
       (typeof(ptr)) (__ptr + (off)); })
               ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
>> include/linux/arch_topology.h:23:9: error: multiple address spaces specified for type
   include/linux/percpu-defs.h:270:29: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                     ^
   include/linux/percpu-defs.h:237:2: note: expanded from macro 'per_cpu_ptr'
           SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                 \
           ^
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
>> include/linux/arch_topology.h:23:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return per_cpu(cpu_scale, cpu);
                  ^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:270:28: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
   include/linux/arch_topology.h:28:1: warning: 'noderef' can only be used on an array or pointer type [-Wignored-attributes]
   DECLARE_PER_CPU(unsigned long, freq_scale);
   ^
   include/linux/percpu-defs.h:112:2: note: expanded from macro 'DECLARE_PER_CPU'
           DECLARE_PER_CPU_SECTION(type, name, "")
           ^
   include/linux/percpu-defs.h:101:2: note: expanded from macro 'DECLARE_PER_CPU_SECTION'
           extern __PCPU_ATTRS(sec) __typeof__(type) name
           ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
   include/linux/arch_topology.h:33:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return per_cpu(freq_scale, cpu);
                  ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:270:29: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                     ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:237:2: note: expanded from macro 'per_cpu_ptr'
           SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                 \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
   include/linux/arch_topology.h:33:9: error: multiple address spaces specified for type
   include/linux/percpu-defs.h:270:29: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                     ^
   include/linux/percpu-defs.h:237:2: note: expanded from macro 'per_cpu_ptr'
           SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                 \
           ^
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
   include/linux/arch_topology.h:33:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return per_cpu(freq_scale, cpu);
                  ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:270:29: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                     ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:237:2: note: expanded from macro 'per_cpu_ptr'
           SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                 \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
           ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
       (typeof(ptr)) (__ptr + (off)); })
               ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
   include/linux/arch_topology.h:33:9: error: multiple address spaces specified for type
   include/linux/percpu-defs.h:270:29: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                     ^
   include/linux/percpu-defs.h:237:2: note: expanded from macro 'per_cpu_ptr'
           SHIFT_PERCPU_PTR((ptr), per_cpu_offset((cpu)));                 \
           ^
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
   In file included from include/linux/topology.h:35:
   In file included from arch/arm64/include/asm/topology.h:40:
   include/linux/arch_topology.h:33:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return per_cpu(freq_scale, cpu);
                  ^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/percpu-defs.h:270:28: note: expanded from macro 'per_cpu'
   #define per_cpu(var, cpu)       (*per_cpu_ptr(&(var), cpu))
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:104:21: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return cpu_to_node(raw_smp_processor_id());
                  ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/smp.h:54:34: note: expanded from macro 'raw_smp_processor_id'
   #define raw_smp_processor_id() (*raw_cpu_ptr(&cpu_number))
                                    ^
   include/linux/percpu-defs.h:243:2: note: expanded from macro 'raw_cpu_ptr'
           arch_raw_cpu_ptr(ptr);                                          \
           ^
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                              ^
   include/linux/compiler.h:160:31: note: expanded from macro 'RELOC_HIDE'
        __ptr = (unsigned long) (ptr);                             \
                                 ^
   include/asm-generic/topology.h:35:34: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        ((void)(cpu),0)
                                           ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:104:21: error: multiple address spaces specified for type
   arch/arm64/include/asm/smp.h:54:34: note: expanded from macro 'raw_smp_processor_id'
   #define raw_smp_processor_id() (*raw_cpu_ptr(&cpu_number))
                                    ^
   include/linux/percpu-defs.h:243:2: note: expanded from macro 'raw_cpu_ptr'
           arch_raw_cpu_ptr(ptr);                                          \
           ^
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:104:21: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return cpu_to_node(raw_smp_processor_id());
                  ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/smp.h:54:34: note: expanded from macro 'raw_smp_processor_id'
   #define raw_smp_processor_id() (*raw_cpu_ptr(&cpu_number))
                                    ^
   include/linux/percpu-defs.h:243:2: note: expanded from macro 'raw_cpu_ptr'
           arch_raw_cpu_ptr(ptr);                                          \
           ^
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^
   include/linux/percpu-defs.h:232:21: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                              ^
   include/linux/compiler.h:161:13: note: expanded from macro 'RELOC_HIDE'
       (typeof(ptr)) (__ptr + (off)); })
               ^
   include/asm-generic/topology.h:35:34: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        ((void)(cpu),0)
                                           ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:104:21: error: multiple address spaces specified for type
   arch/arm64/include/asm/smp.h:54:34: note: expanded from macro 'raw_smp_processor_id'
   #define raw_smp_processor_id() (*raw_cpu_ptr(&cpu_number))
                                    ^
   include/linux/percpu-defs.h:243:2: note: expanded from macro 'raw_cpu_ptr'
           arch_raw_cpu_ptr(ptr);                                          \
           ^
   include/asm-generic/percpu.h:44:31: note: expanded from macro 'arch_raw_cpu_ptr'
   #define arch_raw_cpu_ptr(ptr) SHIFT_PERCPU_PTR(ptr, __my_cpu_offset)
                                 ^
   include/linux/percpu-defs.h:232:29: note: expanded from macro 'SHIFT_PERCPU_PTR'
           RELOC_HIDE((typeof(*(__p)) __kernel __force *)(__p), (__offset))
                                      ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:13:
   In file included from include/linux/resource_ext.h:11:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:104:21: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return cpu_to_node(raw_smp_processor_id());
                  ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/include/asm/smp.h:54:33: note: expanded from macro 'raw_smp_processor_id'
   #define raw_smp_processor_id() (*raw_cpu_ptr(&cpu_number))
                                   ^
   include/asm-generic/topology.h:35:34: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        ((void)(cpu),0)
                                           ^~~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
>> include/linux/xarray.h:1128:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return rcu_dereference_check(xa->xa_head,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:450:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:312:9: note: expanded from macro '__rcu_dereference_check'
           typeof(*p) *________p1 = (typeof(*p) *__force)READ_ONCE(p); \
                  ^~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
>> include/linux/xarray.h:1128:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return rcu_dereference_check(xa->xa_head,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:450:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:312:35: note: expanded from macro '__rcu_dereference_check'
           typeof(*p) *________p1 = (typeof(*p) *__force)READ_ONCE(p); \
                                            ^~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
>> include/linux/xarray.h:1128:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return rcu_dereference_check(xa->xa_head,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:450:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:315:11: note: expanded from macro '__rcu_dereference_check'
           ((typeof(*p) __force __kernel *)(________p1)); \
                    ^~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
>> include/linux/xarray.h:1128:9: error: multiple address spaces specified for type
   include/linux/rcupdate.h:450:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^
   include/linux/rcupdate.h:315:23: note: expanded from macro '__rcu_dereference_check'
           ((typeof(*p) __force __kernel *)(________p1)); \
                                ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
>> include/linux/xarray.h:1128:9: warning: casting to dereferenceable pointer removes 'noderef' attribute [-Wnoderef]
           return rcu_dereference_check(xa->xa_head,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:450:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:309:46: note: expanded from macro '__rcu_dereference_check'
   #define __rcu_dereference_check(p, c, space) \
                                                ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
>> include/linux/xarray.h:1128:9: error: returning 'typeof (*(xa->xa_head)) *' (aka '__attribute__((address_space(4))) void *') from a function with result type 'void *' changes address space of pointer
           return rcu_dereference_check(xa->xa_head,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:450:2: note: expanded from macro 'rcu_dereference_check'
           __rcu_dereference_check((p), (c) || rcu_read_lock_held(), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:309:46: note: expanded from macro '__rcu_dereference_check'
   #define __rcu_dereference_check(p, c, space) \
                                                ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
   include/linux/xarray.h:1135:9: warning: dereferencing expression marked as 'noderef' [-Wnoderef]
           return rcu_dereference_protected(xa->xa_head,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:499:2: note: expanded from macro 'rcu_dereference_protected'
           __rcu_dereference_protected((p), (c), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:321:11: note: expanded from macro '__rcu_dereference_protected'
           ((typeof(*p) __force __kernel *)(p)); \
                    ^~
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
   include/linux/xarray.h:1135:9: error: multiple address spaces specified for type
   include/linux/rcupdate.h:499:2: note: expanded from macro 'rcu_dereference_protected'
           __rcu_dereference_protected((p), (c), __rcu)
           ^
   include/linux/rcupdate.h:321:23: note: expanded from macro '__rcu_dereference_protected'
           ((typeof(*p) __force __kernel *)(p)); \
                                ^
   include/linux/compiler_types.h:7:18: note: expanded from macro '__kernel'
   #define __kernel        __address_space(0)
                           ^
   include/linux/compiler_attributes.h:53:45: note: expanded from macro '__address_space'
   # define __address_space(x)             __attribute__((__address_space__(x)))
                                                          ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
   include/linux/xarray.h:1135:9: warning: casting to dereferenceable pointer removes 'noderef' attribute [-Wnoderef]
           return rcu_dereference_protected(xa->xa_head,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:499:2: note: expanded from macro 'rcu_dereference_protected'
           __rcu_dereference_protected((p), (c), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:317:50: note: expanded from macro '__rcu_dereference_protected'
   #define __rcu_dereference_protected(p, c, space) \
                                                    ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:13:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:18:
   include/linux/xarray.h:1135:9: error: returning 'typeof (*(xa->xa_head)) *' (aka '__attribute__((address_space(4))) void *') from a function with result type 'void *' changes address space of pointer
           return rcu_dereference_protected(xa->xa_head,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:499:2: note: expanded from macro 'rcu_dereference_protected'
           __rcu_dereference_protected((p), (c), __rcu)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/rcupdate.h:317:50: note: expanded from macro '__rcu_dereference_protected'
   #define __rcu_dereference_protected(p, c, space) \
                                                    ^
   In file included from arch/arm64/kernel/asm-offsets.c:21:
   In file included from include/linux/arm_sdei.h:14:
   In file included from include/acpi/ghes.h:5:
   In file included from include/acpi/apei.h:9:
   In file included from include/linux/acpi.h:14:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
..

vim +1128 include/linux/xarray.h

ad3d6c7263e368 Matthew Wilcox 2017-11-07  1124  
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1125  /* Private */
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1126  static inline void *xa_head(const struct xarray *xa)
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1127  {
ad3d6c7263e368 Matthew Wilcox 2017-11-07 @1128  	return rcu_dereference_check(xa->xa_head,
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1129  						lockdep_is_held(&xa->xa_lock));
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1130  }
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1131  
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1132  /* Private */
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1133  static inline void *xa_head_locked(const struct xarray *xa)
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1134  {
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1135  	return rcu_dereference_protected(xa->xa_head,
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1136  						lockdep_is_held(&xa->xa_lock));
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1137  }
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1138  
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1139  /* Private */
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1140  static inline void *xa_entry(const struct xarray *xa,
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1141  				const struct xa_node *node, unsigned int offset)
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1142  {
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1143  	XA_NODE_BUG_ON(node, offset >= XA_CHUNK_SIZE);
ad3d6c7263e368 Matthew Wilcox 2017-11-07 @1144  	return rcu_dereference_check(node->slots[offset],
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1145  						lockdep_is_held(&xa->xa_lock));
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1146  }
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1147  
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1148  /* Private */
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1149  static inline void *xa_entry_locked(const struct xarray *xa,
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1150  				const struct xa_node *node, unsigned int offset)
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1151  {
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1152  	XA_NODE_BUG_ON(node, offset >= XA_CHUNK_SIZE);
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1153  	return rcu_dereference_protected(node->slots[offset],
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1154  						lockdep_is_held(&xa->xa_lock));
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1155  }
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1156  
ad3d6c7263e368 Matthew Wilcox 2017-11-07  1157  /* Private */
9b89a035514468 Matthew Wilcox 2017-11-10  1158  static inline struct xa_node *xa_parent(const struct xarray *xa,
9b89a035514468 Matthew Wilcox 2017-11-10  1159  					const struct xa_node *node)
9b89a035514468 Matthew Wilcox 2017-11-10  1160  {
9b89a035514468 Matthew Wilcox 2017-11-10 @1161  	return rcu_dereference_check(node->parent,
9b89a035514468 Matthew Wilcox 2017-11-10  1162  						lockdep_is_held(&xa->xa_lock));
9b89a035514468 Matthew Wilcox 2017-11-10  1163  }
9b89a035514468 Matthew Wilcox 2017-11-10  1164  

:::::: The code at line 1128 was first introduced by commit
:::::: ad3d6c7263e368abdc151e1cc13dc78aa39cc7a7 xarray: Add XArray load operation

:::::: TO: Matthew Wilcox <willy@infradead.org>
:::::: CC: Matthew Wilcox <willy@infradead.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908221020.KWNsCxJQ%25lkp%40intel.com.

--esfgxnzp4ahvhjyq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ZET5cwAA

--esfgxnzp4ahvhjyq--
