Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPEQ4KEAMGQEGDQQMPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAB53EC6D7
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 05:21:34 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id s9-20020a17090aa10900b001797c5272b4sf494656pjp.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 20:21:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628997693; cv=pass;
        d=google.com; s=arc-20160816;
        b=dI2DnLocZP2To0dWogjSaweXxGsVcmif6Zk/C+qo+kpyqFC0yN0UCbhz+8yW9PvAFR
         aTV8oqztVYGSEKr7YCZowL4bgfhkDC0VxfL+1iECln+hKayKb1tRe2mgRJac7qwygTm9
         l3hzAOvOer0+2Ww54c4jS2JqfTJ39n+ZwMhCsCxPKxiTBacRbfvV5kMZ6YxPCAEcHrta
         CmZYmJ+8Do6K4JduKj/KrlI45TaAuusaop4tyobmi/pD5qR2/hmsLBjXDc/DHgrf6rgx
         o8qMaCknwtfJK17y38xuanV7fWo0711ytt/+5avvzUsW8J4COs67UGTGXNPyqYJGZcst
         JlJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8aVUPLWGjOSttCWeOfwDlgGEZk0UlUdJygHbyQkjjds=;
        b=p8EAnxsUsVTRhq2nrA/v+MBoxWW5UTKY1bJZjyIIHOkZbbHm0Q7/x9+74GQb0wom0n
         ggonVS8oygHdaImv6WU8lZfU37+HSX7UUK1EqQksNGg7xNZMt1r3JJF5N8z6AJLc8Btr
         3LzC69k9oRq4CCZpnmmJjsPPHiwLde1uL6jQjhT4jnD904xdLbc3rRjms7DCyUJQpUQE
         8Ti+OgexxCUoHDu9zCgXPdvJEs+B9FaXxv/tU2g+xYFvhkaL7F/f7QG6WXPbeQ+FYHJ1
         F3gEuDFETzxKhno2xlsw2F9NaEfC57qDICNBtqoKMkXh4h0sEq+kDztW9c20sQlKjSbg
         ge3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8aVUPLWGjOSttCWeOfwDlgGEZk0UlUdJygHbyQkjjds=;
        b=T/TfCi/Aa2LnR3ryDWghKAgURxFIImfFcfxxGPjVHn0LrjXyI/LvFW2vjTl7Ge/MOZ
         C60pBrvsDUYWC4nZHtDpmY87DXzojWc1UJS7NFR3jplvWIwkWlW0U82EBj1V7wr0EWOa
         s54GHjgDKKFXpUXhUSr5Pob6wV/x3FvX++IPSGBmFokbE6naiLXB/ZZIuCd9NPIppo6g
         NdKogsw+6fobIJQzq6RwZJ2soCiwsHhDuwTakh9iCH1cOFQUvo2sjv75W4rz+25E5v3Z
         ihxQ1NsiBwgrzR/g3l3PjM3tABC5mUW9fY7Bi0HWdG0dQ1aDv0TqZ57YTdZk3sOTsgPL
         +gaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8aVUPLWGjOSttCWeOfwDlgGEZk0UlUdJygHbyQkjjds=;
        b=IWpD4NnqFUBZa04MqqSTglpr1Zq2la7nXf3g06dtKJBPu2MEfLGv9rPvK97IplsZvM
         QVZ604vweuSNhvkV/tLDlxHc+YnZAsPM4iFBgc/tfJv6z2eOJc/5yHMBkxdpIEJlaE+7
         FOtSexYHa83lCa2tc8GIT3tKfvuYWhFz2d/Iu7NSVB34LEODz4pXbGOE/Z/fjQg/FiRg
         kh25GG2Xo2z9H+/jYafo8FtND7R8Zc/N3C0wlHb6SOkHl2ck1s3dwJBaGDCFK57xDa0H
         Z8qOUKb58hHtoP087c2ig8OL0ebwUqSBjanxsjX1F4qF3lgT9SAd7zfb8A8dE7vyEoZl
         vn7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PwDNAX/z3cAAKlG521VEt99Qd6C8XGf4NyBjunaR/aVMhup56
	JQ1JwjwAvt2mH9I3fYS6dZ0=
X-Google-Smtp-Source: ABdhPJwcG129BzWsqhUqg9oWSB7PzjpCTYpTfTGnW2bOrWXQJVQUTO21Q6KqNc41Gwh1oN76dVxYqQ==
X-Received: by 2002:a63:2024:: with SMTP id g36mr9323421pgg.213.1628997693115;
        Sat, 14 Aug 2021 20:21:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:d106:: with SMTP id z6ls700944pfg.7.gmail; Sat, 14 Aug
 2021 20:21:32 -0700 (PDT)
X-Received: by 2002:a65:68c1:: with SMTP id k1mr9244348pgt.204.1628997692417;
        Sat, 14 Aug 2021 20:21:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628997692; cv=none;
        d=google.com; s=arc-20160816;
        b=PXfbULVGiSSasNapFi2pVRZ456CxgG44AfHuJPpArxBDr2ErkDgle1f+SeeL7VCVPB
         HIGpUAwWZo6zSZ30aTl9hpk8M9vFMaFHr6z8pjoAV+PPWAWVoy1At0RnbnmVyRFuqZHk
         /gGE2t4HJcIkGifKlf7jYllaYBIx1IoUfkPEXXIZode4KKWTVCyhDLXqbI5zyBEzcJce
         U6eDi303mt/cM63IqriehqfSksoa2EdJQsAcInD7FXALus+ZFhLWM4CXGeC9baVZ9i8l
         NDlHVIUjUL2OHG1UD/n5wB3zxYuvDXN2vQHnhB7T7zda2a+ZQFsiMJnPdocy9QU1znXE
         aDUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=RwZk34W+kRZHRakLS6ANw1epm+c/h/R8Q8PeS/8X3GY=;
        b=F/C1gvNfmv/rhwxFWls25ylL/KUcKptletL/1QsbjnqEpaZw6ryEIP2UGdIpJ9asHH
         SWdUFmmIPXYkwr/wuWUop+yfjXQ1Gi94Koer0Ib4JT7xU4qvAS8j/9Du8nY4uczVF6Dd
         Xxw2HJpKD9kWp4Om67QslMWGxDJUECH5CM9nxmgXa3K2wQdIPCRw5f1FDmlIxMrkfQp8
         OonqDVvt0l9wKPF3FyVoSiojEviGvU3ANGPnKMe7esT6zzz2L9983Gfc6FHenuu/nob8
         Dj0scRhu++2xprUzfezv7r2mbVNuSD5xrw9YfYDt4rz9laIj0mooXP7GfL/t9CeOVNas
         5Xig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id r9si261347plo.0.2021.08.14.20.21.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 20:21:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10076"; a="215711997"
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; 
   d="gz'50?scan'50,208,50";a="215711997"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2021 20:21:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; 
   d="gz'50?scan'50,208,50";a="508932151"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 14 Aug 2021 20:21:28 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mF6iF-000PUA-91; Sun, 15 Aug 2021 03:21:27 +0000
Date: Sun, 15 Aug 2021 11:20:34 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>
Subject: arch/arm64/kvm/va_layout.c:286:6: warning: no previous prototype for
 function 'kvm_get_kimage_voffset'
Message-ID: <202108151131.DS7goEpB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   ba31f97d43be41ca99ab72a6131d7c226306865f
commit: 63b3f96e1a989846a5a521d4fbef4bc86406929d kvm: Select SCHED_INFO instead of TASK_DELAY_ACCT
date:   3 months ago
config: arm64-randconfig-r013-20210814 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=63b3f96e1a989846a5a521d4fbef4bc86406929d
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 63b3f96e1a989846a5a521d4fbef4bc86406929d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   arch/arm64/kvm/va_layout.c:188:6: warning: no previous prototype for function 'kvm_patch_vector_branch' [-Wmissing-prototypes]
   void kvm_patch_vector_branch(struct alt_instr *alt,
        ^
   arch/arm64/kvm/va_layout.c:188:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void kvm_patch_vector_branch(struct alt_instr *alt,
   ^
   static 
>> arch/arm64/kvm/va_layout.c:286:6: warning: no previous prototype for function 'kvm_get_kimage_voffset' [-Wmissing-prototypes]
   void kvm_get_kimage_voffset(struct alt_instr *alt,
        ^
   arch/arm64/kvm/va_layout.c:286:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void kvm_get_kimage_voffset(struct alt_instr *alt,
   ^
   static 
>> arch/arm64/kvm/va_layout.c:292:6: warning: no previous prototype for function 'kvm_compute_final_ctr_el0' [-Wmissing-prototypes]
   void kvm_compute_final_ctr_el0(struct alt_instr *alt,
        ^
   arch/arm64/kvm/va_layout.c:292:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void kvm_compute_final_ctr_el0(struct alt_instr *alt,
   ^
   static 
   3 warnings generated.
--
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:182:25: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_CP14_64]    = kvm_handle_cp14_64,
                                     ^~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:183:23: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_HVC32]      = handle_hvc,
                                     ^~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:184:23: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_SMC32]      = handle_smc,
                                     ^~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:185:23: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_HVC64]      = handle_hvc,
                                     ^~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:186:23: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_SMC64]      = handle_smc,
                                     ^~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:187:23: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_SYS64]      = kvm_handle_sys_reg,
                                     ^~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:188:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_SVE]        = handle_sve,
                                     ^~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:189:26: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_IABT_LOW]   = kvm_handle_guest_abort,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:190:26: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_DABT_LOW]   = kvm_handle_guest_abort,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:191:28: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_SOFTSTP_LOW]= kvm_handle_guest_debug,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:192:28: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_WATCHPT_LOW]= kvm_handle_guest_debug,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:193:28: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_BREAKPT_LOW]= kvm_handle_guest_debug,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:194:24: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_BKPT32]     = kvm_handle_guest_debug,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:195:23: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_BRK64]      = kvm_handle_guest_debug,
                                     ^~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:196:26: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_FP_ASIMD]   = handle_no_fpsimd,
                                     ^~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:197:21: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           [ESR_ELx_EC_PAC]        = kvm_handle_ptrauth,
                                     ^~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/handle_exit.c:176:27: note: previous initialization is here
           [0 ... ESR_ELx_EC_MAX]  = kvm_handle_unknown_ec,
                                     ^~~~~~~~~~~~~~~~~~~~~
>> arch/arm64/kvm/handle_exit.c:295:24: warning: no previous prototype for function 'nvhe_hyp_panic_handler' [-Wmissing-prototypes]
   void __noreturn __cold nvhe_hyp_panic_handler(u64 esr, u64 spsr, u64 elr,
                          ^
   arch/arm64/kvm/handle_exit.c:295:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __noreturn __cold nvhe_hyp_panic_handler(u64 esr, u64 spsr, u64 elr,
   ^
   static 
   22 warnings generated.
--
>> arch/arm64/kvm/sys_regs.c:1564:13: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .reset = reset_pmcr, .reg = PMCR_EL0 },
                      ^~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1563:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMCR_EL0), .access = access_pmcr,
             ^~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:947:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1576:38: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .access = access_pmceid, .reset = NULL },
                                               ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1575:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMCEID0_EL0),
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:947:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1578:38: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .access = access_pmceid, .reset = NULL },
                                               ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1577:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMCEID1_EL0),
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:947:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1582:43: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .access = access_pmu_evtyper, .reset = NULL },
                                                    ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1581:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMXEVTYPER_EL0),
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:947:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1584:42: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .access = access_pmu_evcntr, .reset = NULL },
                                                   ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1583:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMXEVCNTR_EL0),
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:947:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1590:13: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .reset = reset_val, .reg = PMUSERENR_EL0, .val = 0 },
                      ^~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1589:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMUSERENR_EL0), .access = access_pmuserenr,
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:947:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1745:13: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
             .reset = reset_val, .reg = PMCCFILTR_EL0, .val = 0 },
                      ^~~~~~~~~
   arch/arm64/kvm/sys_regs.c:1744:4: note: previous initialization is here
           { PMU_SYS_REG(SYS_PMCCFILTR_EL0), .access = access_pmu_evtyper,
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   arch/arm64/kvm/sys_regs.c:947:24: note: expanded from macro 'PMU_SYS_REG'
           SYS_DESC(r), .reset = reset_unknown, .visibility = pmu_visibility
                                 ^~~~~~~~~~~~~
   7 warnings generated.
--
>> arch/arm64/kvm/hyp/vhe/switch.c:215:17: warning: no previous prototype for function 'hyp_panic' [-Wmissing-prototypes]
   void __noreturn hyp_panic(void)
                   ^
   arch/arm64/kvm/hyp/vhe/switch.c:215:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __noreturn hyp_panic(void)
   ^
   static 
>> arch/arm64/kvm/hyp/vhe/switch.c:225:17: warning: no previous prototype for function 'kvm_unexpected_el2_exception' [-Wmissing-prototypes]
   asmlinkage void kvm_unexpected_el2_exception(void)
                   ^
   arch/arm64/kvm/hyp/vhe/switch.c:225:12: note: declare 'static' if the function is not intended to be used outside of this translation unit
   asmlinkage void kvm_unexpected_el2_exception(void)
              ^
              static 
   2 warnings generated.
--
>> arch/arm64/kvm/hyp/nvhe/switch.c:264:17: warning: no previous prototype for function 'hyp_panic' [-Wmissing-prototypes]
   void __noreturn hyp_panic(void)
                   ^
   arch/arm64/kvm/hyp/nvhe/switch.c:264:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __noreturn hyp_panic(void)
   ^
   static 
>> arch/arm64/kvm/hyp/nvhe/switch.c:286:17: warning: no previous prototype for function 'kvm_unexpected_el2_exception' [-Wmissing-prototypes]
   asmlinkage void kvm_unexpected_el2_exception(void)
                   ^
   arch/arm64/kvm/hyp/nvhe/switch.c:286:12: note: declare 'static' if the function is not intended to be used outside of this translation unit
   asmlinkage void kvm_unexpected_el2_exception(void)
              ^
              static 
   2 warnings generated.
--
>> arch/arm64/kvm/hyp/nvhe/hyp-main.c:233:6: warning: no previous prototype for function 'handle_trap' [-Wmissing-prototypes]
   void handle_trap(struct kvm_cpu_context *host_ctxt)
        ^
   arch/arm64/kvm/hyp/nvhe/hyp-main.c:233:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void handle_trap(struct kvm_cpu_context *host_ctxt)
   ^
   static 
   1 warning generated.
--
>> arch/arm64/kvm/hyp/nvhe/psci-relay.c:203:28: warning: no previous prototype for function 'kvm_host_psci_cpu_entry' [-Wmissing-prototypes]
   asmlinkage void __noreturn kvm_host_psci_cpu_entry(bool is_cpu_on)
                              ^
   arch/arm64/kvm/hyp/nvhe/psci-relay.c:203:12: note: declare 'static' if the function is not intended to be used outside of this translation unit
   asmlinkage void __noreturn kvm_host_psci_cpu_entry(bool is_cpu_on)
              ^
              static 
   1 warning generated.
--
>> arch/arm64/kvm/hyp/nvhe/setup.c:146:17: warning: no previous prototype for function '__pkvm_init_finalise' [-Wmissing-prototypes]
   void __noreturn __pkvm_init_finalise(void)
                   ^
   arch/arm64/kvm/hyp/nvhe/setup.c:146:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void __noreturn __pkvm_init_finalise(void)
   ^
   static 
   1 warning generated.


vim +/kvm_get_kimage_voffset +286 arch/arm64/kvm/va_layout.c

1db9d9ded77138 Marc Zyngier 2020-10-21  285  
68b824e428c5fb Marc Zyngier 2020-10-24 @286  void kvm_get_kimage_voffset(struct alt_instr *alt,
68b824e428c5fb Marc Zyngier 2020-10-24  287  			    __le32 *origptr, __le32 *updptr, int nr_inst)
68b824e428c5fb Marc Zyngier 2020-10-24  288  {
68b824e428c5fb Marc Zyngier 2020-10-24  289  	generate_mov_q(kimage_voffset, origptr, updptr, nr_inst);
68b824e428c5fb Marc Zyngier 2020-10-24  290  }
755db23420a1ce Marc Zyngier 2021-03-22  291  
755db23420a1ce Marc Zyngier 2021-03-22 @292  void kvm_compute_final_ctr_el0(struct alt_instr *alt,

:::::: The code at line 286 was first introduced by commit
:::::: 68b824e428c5fb5c3dc5ef80b1543e767534b58e KVM: arm64: Patch kimage_voffset instead of loading the EL1 value

:::::: TO: Marc Zyngier <maz@kernel.org>
:::::: CC: Marc Zyngier <maz@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108151131.DS7goEpB-lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
nddSBJUCAA==

--bp/iNruPH9dso1Pn--
