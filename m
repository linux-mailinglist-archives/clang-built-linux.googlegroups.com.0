Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN67TP7AKGQEXRLT63Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B642CB263
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 02:36:56 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id u3sf170214pfm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 17:36:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606873015; cv=pass;
        d=google.com; s=arc-20160816;
        b=GOGaee3pQbs3DdqYc4c2cuZ/proPRPTZm/8BZqtMIfjbpJYBtTH1u4gAWv4NB9Dw9t
         ORfPZJeSkcEykmXuDFyD6Z/VsT6+Ed3nVLJqJsxwXctbSyn6gDycfRM6MJ7yy+E0yYhA
         APMGdOOAmCooJ6+NlU1/gs/DmAPSSCWoGdJimYjejw7flA5feX+fvcEWyev2cpIu+8dW
         5FXJMKZ2zXkPI6Khtkei1jQoPED7RnVuqzXkPDlbv1JgCKfmzLgvzmsw+xGuQ5rgRbL9
         CK66BY1EXmqP4m+N5buAnlLaI/3fRinbcqc9X9HD8ON9HvuPpyX9Me1D8O9eD2v+XrD4
         7Ptg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=5y0sfitPC+AsPf7ptpd5+UWfMdtmhzI2Ku4kzoyJhfE=;
        b=csMwQs6f21h0cidpcU2estyfu/d5MG/tBABmMoHBXalSZBKdA1eLOJOCzStO8ySGbF
         SY8GdL2KEeD9ty49x++TWMwYoqsAxaovHiPriNv54MKoaR8upPJ2/8iQpXI05GEH2UYR
         rKSQD9HnfiPIclAk5hmBCEXyz7v83o28HbrWb/lPgbEaswl1cv5Tr/8LgvKHl6FaAjFC
         RxDDKsxOHbRjFEmN4qqiHuVBkRdI60hhQBhY6yteMljLNWJF8R9Gzpgc3RiMAas1nEOV
         GvQYYgKI2Iv0qTGWRNxw+bGT9wvbU547i1RJ3ZbMS4+uwtEgEiwfiDhUNqOA+wZGUz04
         8CtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5y0sfitPC+AsPf7ptpd5+UWfMdtmhzI2Ku4kzoyJhfE=;
        b=aJ2QeU4L0sWT12etaz87b3KdKeoQAqbfDloO95QhD8Erq5ZH3vDNtSefJvacIrXkbj
         WcsWuryx7DwUNRFvwcZEsyKR5VwJc0zkZcSZU7RmFuT6IckfWxWiKUbg1uciS3Qm7iGi
         MiRCcOVA/GZe2YNQ+f88V9hRck7XI0ypxTfB4xM77LoPofWmtpQG/VMi0rUEj+eT76Qh
         jVZ0pgSfQ82nVLMna4Z7aYNJ4LTvNVKc+/gWtAnVD6YRR9m65Jkhbdf5Euv1P8ynYl6o
         9sKFZeBHJwKcZ7fPMRU3pfRgwYAB+SdFZ4sTAPQOtNW+Z1M4G4cp14HxXK7cokDILytd
         F/4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5y0sfitPC+AsPf7ptpd5+UWfMdtmhzI2Ku4kzoyJhfE=;
        b=mnp+S4tDDMc1uawvimfeCAFzWn02Gz3InMCMSERtmg+J6nuIVisl8AGX4Od87kruIa
         ELxdBBgzsgYMbQHjSXEvOq6oPsAA9RMVBVdGKI+Cjg8lCpETFjBXp3LfZIkxbDX+/xqA
         qcZldVrAz8dC7uvtkGU6gv8HXcl8xBxeeqXcIQnBvq994g8PQEY6wPwVpR/MbxklbSU9
         XosTPIlMQuzIC7nmTTZwLzeJl7MaY5hEE1r2yJsOqwYMQtE6IUsSq4YhQJYOlDolHgsO
         kz6/EwJ3WjB9ZvK4wt/W1LGetNwwlzRVT4UyiD6zFE7RdiKHlsO/uTA3CYQZLjaA83H6
         umTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SmfmPqQGnYUJk4tt5LC8+2PNuQv6WgQMzqOPI4aLvdjyFIQrq
	BN7rdf6qdjJTZD/3t6xT0L4=
X-Google-Smtp-Source: ABdhPJzZx8FEUmFNbOBQ3Mu3iLZO0glInJMG51zirfGm+7V329rob26DiVDo8xCg+ZS689S/KDyOwQ==
X-Received: by 2002:a63:505:: with SMTP id 5mr395142pgf.409.1606873015184;
        Tue, 01 Dec 2020 17:36:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8508:: with SMTP id bj8ls150866plb.2.gmail; Tue, 01
 Dec 2020 17:36:54 -0800 (PST)
X-Received: by 2002:a17:90a:d308:: with SMTP id p8mr600766pju.110.1606873014505;
        Tue, 01 Dec 2020 17:36:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606873014; cv=none;
        d=google.com; s=arc-20160816;
        b=LxcTisRxcgVwtVzpPH9PdY7tg5RMalY5FbEaIRVxHCe6E+cTfgyo5iVUB6gSfD9NQN
         c6I4Bb3lSj4aeJrf2uI4KWOOAYLqjuDMxibze4uu4Z3/mvGpca3G/6HnBseG2nBwpTcT
         QZ3URPuOV+tmWQmHh3RZ3keBMIgxEnVgqCbMlz5HWXd6UAbE8ik818OyBLR7mtUPqPvd
         HDVGpEDi3qMhxh0363pP+cRks2vyIgW5BI6cI9kwUqmw0eTgwFQ/tx/+fJX3fDG1Dtjy
         wZm+nVSh9Gmv4PUpiRHURSXpGhO/ujH81Tc5ip/oN4RsEcOCjSQ7kWn9Ww9Wj5jbNyPa
         QbMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=iLehjm2XmVu4sgSTivrwbcOlOStves5ecWGzoqtS8VA=;
        b=pREHVZsqK3MZca5+tOEi/ld4PJlSrhtH/brew0+nwF5pD0UkO8TZJ82M2RBJsXNAuL
         Gv+qfopBPC9C/MDadAA6mMvKgZ+tOvi/9ztbfA6itDdb6EGCUr8zfeifa5BSg3cbMmSO
         3IVpRCoVLSOoLKfe0vxoYEJrt4jZxtCPpaD72UT4FzQ5G6vXE2ZUTsBmP93CINCnCXQ2
         E5xD/F14V9GqlecrWhtdWKJGZbAFBo5oduV9sG3bRhUAB75FpvGsbGJwGmWXe6QcPfsD
         cspkCu0Pv090PjT8jNcdHu8ZxovLR7rgLbsUVEkdm1go8AO+3jk9MGb+Q47wKo/Mldof
         3gyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id a8si17124plp.4.2020.12.01.17.36.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 17:36:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: yRqjHMF4DXq7SRFnrPAwKJu7oRf5fgyzj4V2Z1EcODKhUnqk/TymTo83EZ1nr6aJQVvGtPY5GJ
 MFDR4C8gOiAA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="173096753"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; 
   d="gz'50?scan'50,208,50";a="173096753"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2020 17:36:53 -0800
IronPort-SDR: vWtvrg2C1RbqyCts4n+fVz26p5DasZoT4rLYtbbR2Qd1R1AH+yT4b0/nTVpfrEyVwUKTbqDRFt
 6FCLl8qGdagg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; 
   d="gz'50?scan'50,208,50";a="365064131"
Received: from lkp-server01.sh.intel.com (HELO eece8c761214) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 01 Dec 2020 17:36:51 -0800
Received: from kbuild by eece8c761214 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kkH4c-00003z-JN; Wed, 02 Dec 2020 01:36:50 +0000
Date: Wed, 2 Dec 2020 09:36:49 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [arnd-playground:to-build 257/350]
 arch/mips/include/asm/kvm_host.h:220:19: warning: field 'gpa_mm' with
 variable sized type 'struct mm_struct' not at the end of a struct or class
 is a GNU extension
Message-ID: <202012020942.kAy8tztn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cNdxnHkX5QqsyA0e"
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


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git to-build
head:   fe197c065a93b860c59017cf6933889c69842ef7
commit: b053ec3c81f7cf98354ce0c4230c4ba60d97aeaa [257/350] warnings: ignore warnings removed in clang-11
config: mips-randconfig-r025-20201201 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 2671fccf0381769276ca8246ec0499adcb9b0355)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/commit/?id=b053ec3c81f7cf98354ce0c4230c4ba60d97aeaa
        git remote add arnd-playground https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git
        git fetch --no-tags arnd-playground to-build
        git checkout b053ec3c81f7cf98354ce0c4230c4ba60d97aeaa
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:22:
   arch/mips/include/asm/compat.h:42:2: error: unknown type name 'old_time32_t'
           old_time32_t    st_atime;
           ^
   arch/mips/include/asm/compat.h:44:2: error: unknown type name 'old_time32_t'
           old_time32_t    st_mtime;
           ^
   arch/mips/include/asm/compat.h:46:2: error: unknown type name 'old_time32_t'
           old_time32_t    st_ctime;
           ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   include/linux/compat.h:415:22: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
           case 4: v.sig[7] = (set->sig[3] >> 32); v.sig[6] = set->sig[3];
                               ^        ~
   arch/mips/include/uapi/asm/signal.h:20:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   include/linux/compat.h:415:10: warning: array index 7 is past the end of the array (which contains 4 elements) [-Warray-bounds]
           case 4: v.sig[7] = (set->sig[3] >> 32); v.sig[6] = set->sig[3];
                   ^     ~
   include/linux/compat.h:135:2: note: array 'sig' declared here
           compat_sigset_word      sig[_COMPAT_NSIG_WORDS];
           ^
   include/linux/compat.h:415:42: warning: array index 6 is past the end of the array (which contains 4 elements) [-Warray-bounds]
           case 4: v.sig[7] = (set->sig[3] >> 32); v.sig[6] = set->sig[3];
                                                   ^     ~
   include/linux/compat.h:135:2: note: array 'sig' declared here
           compat_sigset_word      sig[_COMPAT_NSIG_WORDS];
           ^
   include/linux/compat.h:415:53: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
           case 4: v.sig[7] = (set->sig[3] >> 32); v.sig[6] = set->sig[3];
                                                              ^        ~
   arch/mips/include/uapi/asm/signal.h:20:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   include/linux/compat.h:417:22: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
           case 3: v.sig[5] = (set->sig[2] >> 32); v.sig[4] = set->sig[2];
                               ^        ~
   arch/mips/include/uapi/asm/signal.h:20:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/mips/kernel/asm-offsets.c:12:
   include/linux/compat.h:417:10: warning: array index 5 is past the end of the array (which contains 4 elements) [-Warray-bounds]
           case 3: v.sig[5] = (set->sig[2] >> 32); v.sig[4] = set->sig[2];
                   ^     ~
   include/linux/compat.h:135:2: note: array 'sig' declared here
           compat_sigset_word      sig[_COMPAT_NSIG_WORDS];
           ^
   include/linux/compat.h:417:42: warning: array index 4 is past the end of the array (which contains 4 elements) [-Warray-bounds]
           case 3: v.sig[5] = (set->sig[2] >> 32); v.sig[4] = set->sig[2];
                                                   ^     ~
   include/linux/compat.h:135:2: note: array 'sig' declared here
           compat_sigset_word      sig[_COMPAT_NSIG_WORDS];
           ^
   include/linux/compat.h:417:53: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
           case 3: v.sig[5] = (set->sig[2] >> 32); v.sig[4] = set->sig[2];
                                                              ^        ~
   arch/mips/include/uapi/asm/signal.h:20:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
   In file included from include/linux/kvm_host.h:36:
>> arch/mips/include/asm/kvm_host.h:220:19: warning: field 'gpa_mm' with variable sized type 'struct mm_struct' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
           struct mm_struct gpa_mm;
                            ^
>> arch/mips/include/asm/kvm_host.h:406:19: warning: field 'guest_kernel_mm' with variable sized type 'struct mm_struct' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
           struct mm_struct guest_kernel_mm, guest_user_mm;
                            ^
>> arch/mips/include/asm/kvm_host.h:406:36: warning: field 'guest_user_mm' with variable sized type 'struct mm_struct' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
           struct mm_struct guest_kernel_mm, guest_user_mm;
                                             ^
   In file included from arch/mips/kernel/asm-offsets.c:24:
>> include/linux/kvm_host.h:475:18: warning: field 'arch' with variable sized type 'struct kvm_arch' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
           struct kvm_arch arch;
                           ^
   12 warnings and 3 errors generated.
   make[2]: *** [scripts/Makefile.build:117: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target 'missing-syscalls' not remade because of errors.
   make[1]: *** [arch/mips/Makefile:397: archprepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:185: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.

vim +220 arch/mips/include/asm/kvm_host.h

f21db3090de2c05 Huacai Chen   2020-05-23  217  
740765ce45689a4 Sanjay Lal    2012-11-21  218  struct kvm_arch {
06c158c96ed8909 James Hogan   2015-05-01  219  	/* Guest physical mm */
06c158c96ed8909 James Hogan   2015-05-01 @220  	struct mm_struct gpa_mm;
c992a4f6a9b0a37 James Hogan   2017-03-14  221  	/* Mask of CPUs needing GPA ASID flush */
c992a4f6a9b0a37 James Hogan   2017-03-14  222  	cpumask_t asid_flush_mask;
f21db3090de2c05 Huacai Chen   2020-05-23  223  #ifdef CONFIG_CPU_LOONGSON64
f21db3090de2c05 Huacai Chen   2020-05-23  224  	struct loongson_kvm_ipi ipi;
f21db3090de2c05 Huacai Chen   2020-05-23  225  #endif
740765ce45689a4 Sanjay Lal    2012-11-21  226  };
740765ce45689a4 Sanjay Lal    2012-11-21  227  
740765ce45689a4 Sanjay Lal    2012-11-21  228  #define N_MIPS_COPROC_REGS	32
740765ce45689a4 Sanjay Lal    2012-11-21  229  #define N_MIPS_COPROC_SEL	8
740765ce45689a4 Sanjay Lal    2012-11-21  230  
740765ce45689a4 Sanjay Lal    2012-11-21  231  struct mips_coproc {
740765ce45689a4 Sanjay Lal    2012-11-21  232  	unsigned long reg[N_MIPS_COPROC_REGS][N_MIPS_COPROC_SEL];
740765ce45689a4 Sanjay Lal    2012-11-21  233  #ifdef CONFIG_KVM_MIPS_DEBUG_COP0_COUNTERS
740765ce45689a4 Sanjay Lal    2012-11-21  234  	unsigned long stat[N_MIPS_COPROC_REGS][N_MIPS_COPROC_SEL];
740765ce45689a4 Sanjay Lal    2012-11-21  235  #endif
740765ce45689a4 Sanjay Lal    2012-11-21  236  };
740765ce45689a4 Sanjay Lal    2012-11-21  237  
740765ce45689a4 Sanjay Lal    2012-11-21  238  /*
740765ce45689a4 Sanjay Lal    2012-11-21  239   * Coprocessor 0 register names
740765ce45689a4 Sanjay Lal    2012-11-21  240   */
740765ce45689a4 Sanjay Lal    2012-11-21  241  #define MIPS_CP0_TLB_INDEX	0
740765ce45689a4 Sanjay Lal    2012-11-21  242  #define MIPS_CP0_TLB_RANDOM	1
740765ce45689a4 Sanjay Lal    2012-11-21  243  #define MIPS_CP0_TLB_LOW	2
740765ce45689a4 Sanjay Lal    2012-11-21  244  #define MIPS_CP0_TLB_LO0	2
740765ce45689a4 Sanjay Lal    2012-11-21  245  #define MIPS_CP0_TLB_LO1	3
740765ce45689a4 Sanjay Lal    2012-11-21  246  #define MIPS_CP0_TLB_CONTEXT	4
740765ce45689a4 Sanjay Lal    2012-11-21  247  #define MIPS_CP0_TLB_PG_MASK	5
740765ce45689a4 Sanjay Lal    2012-11-21  248  #define MIPS_CP0_TLB_WIRED	6
740765ce45689a4 Sanjay Lal    2012-11-21  249  #define MIPS_CP0_HWRENA		7
740765ce45689a4 Sanjay Lal    2012-11-21  250  #define MIPS_CP0_BAD_VADDR	8
740765ce45689a4 Sanjay Lal    2012-11-21  251  #define MIPS_CP0_COUNT		9
740765ce45689a4 Sanjay Lal    2012-11-21  252  #define MIPS_CP0_TLB_HI		10
740765ce45689a4 Sanjay Lal    2012-11-21  253  #define MIPS_CP0_COMPARE	11
740765ce45689a4 Sanjay Lal    2012-11-21  254  #define MIPS_CP0_STATUS		12
740765ce45689a4 Sanjay Lal    2012-11-21  255  #define MIPS_CP0_CAUSE		13
740765ce45689a4 Sanjay Lal    2012-11-21  256  #define MIPS_CP0_EXC_PC		14
740765ce45689a4 Sanjay Lal    2012-11-21  257  #define MIPS_CP0_PRID		15
740765ce45689a4 Sanjay Lal    2012-11-21  258  #define MIPS_CP0_CONFIG		16
740765ce45689a4 Sanjay Lal    2012-11-21  259  #define MIPS_CP0_LLADDR		17
740765ce45689a4 Sanjay Lal    2012-11-21  260  #define MIPS_CP0_WATCH_LO	18
740765ce45689a4 Sanjay Lal    2012-11-21  261  #define MIPS_CP0_WATCH_HI	19
740765ce45689a4 Sanjay Lal    2012-11-21  262  #define MIPS_CP0_TLB_XCONTEXT	20
8a5097ee90c2565 Huacai Chen   2020-05-23  263  #define MIPS_CP0_DIAG		22
740765ce45689a4 Sanjay Lal    2012-11-21  264  #define MIPS_CP0_ECC		26
740765ce45689a4 Sanjay Lal    2012-11-21  265  #define MIPS_CP0_CACHE_ERR	27
740765ce45689a4 Sanjay Lal    2012-11-21  266  #define MIPS_CP0_TAG_LO		28
740765ce45689a4 Sanjay Lal    2012-11-21  267  #define MIPS_CP0_TAG_HI		29
740765ce45689a4 Sanjay Lal    2012-11-21  268  #define MIPS_CP0_ERROR_PC	30
740765ce45689a4 Sanjay Lal    2012-11-21  269  #define MIPS_CP0_DEBUG		23
740765ce45689a4 Sanjay Lal    2012-11-21  270  #define MIPS_CP0_DEPC		24
740765ce45689a4 Sanjay Lal    2012-11-21  271  #define MIPS_CP0_PERFCNT	25
740765ce45689a4 Sanjay Lal    2012-11-21  272  #define MIPS_CP0_ERRCTL		26
740765ce45689a4 Sanjay Lal    2012-11-21  273  #define MIPS_CP0_DATA_LO	28
740765ce45689a4 Sanjay Lal    2012-11-21  274  #define MIPS_CP0_DATA_HI	29
740765ce45689a4 Sanjay Lal    2012-11-21  275  #define MIPS_CP0_DESAVE		31
740765ce45689a4 Sanjay Lal    2012-11-21  276  
740765ce45689a4 Sanjay Lal    2012-11-21  277  #define MIPS_CP0_CONFIG_SEL	0
740765ce45689a4 Sanjay Lal    2012-11-21  278  #define MIPS_CP0_CONFIG1_SEL	1
740765ce45689a4 Sanjay Lal    2012-11-21  279  #define MIPS_CP0_CONFIG2_SEL	2
740765ce45689a4 Sanjay Lal    2012-11-21  280  #define MIPS_CP0_CONFIG3_SEL	3
c771607af959f28 James Hogan   2014-06-26  281  #define MIPS_CP0_CONFIG4_SEL	4
c771607af959f28 James Hogan   2014-06-26  282  #define MIPS_CP0_CONFIG5_SEL	5
740765ce45689a4 Sanjay Lal    2012-11-21  283  
c992a4f6a9b0a37 James Hogan   2017-03-14  284  #define MIPS_CP0_GUESTCTL2	10
c992a4f6a9b0a37 James Hogan   2017-03-14  285  #define MIPS_CP0_GUESTCTL2_SEL	5
c992a4f6a9b0a37 James Hogan   2017-03-14  286  #define MIPS_CP0_GTOFFSET	12
c992a4f6a9b0a37 James Hogan   2017-03-14  287  #define MIPS_CP0_GTOFFSET_SEL	7
c992a4f6a9b0a37 James Hogan   2017-03-14  288  
740765ce45689a4 Sanjay Lal    2012-11-21  289  /* Resume Flags */
740765ce45689a4 Sanjay Lal    2012-11-21  290  #define RESUME_FLAG_DR		(1<<0)	/* Reload guest nonvolatile state? */
740765ce45689a4 Sanjay Lal    2012-11-21  291  #define RESUME_FLAG_HOST	(1<<1)	/* Resume host? */
740765ce45689a4 Sanjay Lal    2012-11-21  292  
740765ce45689a4 Sanjay Lal    2012-11-21  293  #define RESUME_GUEST		0
740765ce45689a4 Sanjay Lal    2012-11-21  294  #define RESUME_GUEST_DR		RESUME_FLAG_DR
740765ce45689a4 Sanjay Lal    2012-11-21  295  #define RESUME_HOST		RESUME_FLAG_HOST
740765ce45689a4 Sanjay Lal    2012-11-21  296  
740765ce45689a4 Sanjay Lal    2012-11-21  297  enum emulation_result {
740765ce45689a4 Sanjay Lal    2012-11-21  298  	EMULATE_DONE,		/* no further processing */
740765ce45689a4 Sanjay Lal    2012-11-21  299  	EMULATE_DO_MMIO,	/* kvm_run filled with MMIO request */
740765ce45689a4 Sanjay Lal    2012-11-21  300  	EMULATE_FAIL,		/* can't emulate this instruction */
740765ce45689a4 Sanjay Lal    2012-11-21  301  	EMULATE_WAIT,		/* WAIT instruction */
740765ce45689a4 Sanjay Lal    2012-11-21  302  	EMULATE_PRIV_FAIL,
4cf74c9c83dda79 James Hogan   2016-11-26  303  	EMULATE_EXCEPT,		/* A guest exception has been generated */
955d8dc3ee555e9 James Hogan   2017-03-14  304  	EMULATE_HYPERCALL,	/* HYPCALL instruction */
740765ce45689a4 Sanjay Lal    2012-11-21  305  };
740765ce45689a4 Sanjay Lal    2012-11-21  306  
740765ce45689a4 Sanjay Lal    2012-11-21  307  #define mips3_paddr_to_tlbpfn(x) \
740765ce45689a4 Sanjay Lal    2012-11-21  308  	(((unsigned long)(x) >> MIPS3_PG_SHIFT) & MIPS3_PG_FRAME)
740765ce45689a4 Sanjay Lal    2012-11-21  309  #define mips3_tlbpfn_to_paddr(x) \
740765ce45689a4 Sanjay Lal    2012-11-21  310  	((unsigned long)((x) & MIPS3_PG_FRAME) << MIPS3_PG_SHIFT)
740765ce45689a4 Sanjay Lal    2012-11-21  311  
740765ce45689a4 Sanjay Lal    2012-11-21  312  #define MIPS3_PG_SHIFT		6
740765ce45689a4 Sanjay Lal    2012-11-21  313  #define MIPS3_PG_FRAME		0x3fffffc0
740765ce45689a4 Sanjay Lal    2012-11-21  314  
5816c76dea116a4 Xing Li       2020-05-23  315  #if defined(CONFIG_64BIT)
5816c76dea116a4 Xing Li       2020-05-23  316  #define VPN2_MASK		GENMASK(cpu_vmbits - 1, 13)
5816c76dea116a4 Xing Li       2020-05-23  317  #else
740765ce45689a4 Sanjay Lal    2012-11-21  318  #define VPN2_MASK		0xffffe000
5816c76dea116a4 Xing Li       2020-05-23  319  #endif
fe2b73dba47fb6d Xing Li       2020-05-23  320  #define KVM_ENTRYHI_ASID	cpu_asid_mask(&boot_cpu_data)
e6207bbea16c609 James Hogan   2016-06-09  321  #define TLB_IS_GLOBAL(x)	((x).tlb_lo[0] & (x).tlb_lo[1] & ENTRYLO_G)
740765ce45689a4 Sanjay Lal    2012-11-21  322  #define TLB_VPN2(x)		((x).tlb_hi & VPN2_MASK)
ca64c2beecd43e9 Paul Burton   2016-05-06  323  #define TLB_ASID(x)		((x).tlb_hi & KVM_ENTRYHI_ASID)
19d194c62b25caf James Hogan   2016-06-09  324  #define TLB_LO_IDX(x, va)	(((va) >> PAGE_SHIFT) & 1)
e6207bbea16c609 James Hogan   2016-06-09  325  #define TLB_IS_VALID(x, va)	((x).tlb_lo[TLB_LO_IDX(x, va)] & ENTRYLO_V)
1880afd6057f345 James Hogan   2016-11-28  326  #define TLB_IS_DIRTY(x, va)	((x).tlb_lo[TLB_LO_IDX(x, va)] & ENTRYLO_D)
d116e812f9026e3 Dengcheng Zhu 2014-06-26  327  #define TLB_HI_VPN2_HIT(x, y)	((TLB_VPN2(x) & ~(x).tlb_mask) ==	\
d116e812f9026e3 Dengcheng Zhu 2014-06-26  328  				 ((y) & VPN2_MASK & ~(x).tlb_mask))
d116e812f9026e3 Dengcheng Zhu 2014-06-26  329  #define TLB_HI_ASID_HIT(x, y)	(TLB_IS_GLOBAL(x) ||			\
ca64c2beecd43e9 Paul Burton   2016-05-06  330  				 TLB_ASID(x) == ((y) & KVM_ENTRYHI_ASID))
740765ce45689a4 Sanjay Lal    2012-11-21  331  
740765ce45689a4 Sanjay Lal    2012-11-21  332  struct kvm_mips_tlb {
740765ce45689a4 Sanjay Lal    2012-11-21  333  	long tlb_mask;
740765ce45689a4 Sanjay Lal    2012-11-21  334  	long tlb_hi;
9fbfb06a4065772 James Hogan   2016-06-09  335  	long tlb_lo[2];
740765ce45689a4 Sanjay Lal    2012-11-21  336  };
740765ce45689a4 Sanjay Lal    2012-11-21  337  
f943176a7205a06 James Hogan   2016-06-14  338  #define KVM_MIPS_AUX_FPU	0x1
f943176a7205a06 James Hogan   2016-06-14  339  #define KVM_MIPS_AUX_MSA	0x2
98e91b8457d81f5 James Hogan   2014-11-18  340  
740765ce45689a4 Sanjay Lal    2012-11-21  341  #define KVM_MIPS_GUEST_TLB_SIZE	64
740765ce45689a4 Sanjay Lal    2012-11-21  342  struct kvm_vcpu_arch {
878edf014e29de3 James Hogan   2016-06-09  343  	void *guest_ebase;
0b7aa5835691298 Tianjia Zhang 2020-06-23  344  	int (*vcpu_run)(struct kvm_vcpu *vcpu);
1934a3ad091fb6b James Hogan   2017-03-14  345  
1934a3ad091fb6b James Hogan   2017-03-14  346  	/* Host registers preserved across guest mode execution */
740765ce45689a4 Sanjay Lal    2012-11-21  347  	unsigned long host_stack;
740765ce45689a4 Sanjay Lal    2012-11-21  348  	unsigned long host_gp;
1934a3ad091fb6b James Hogan   2017-03-14  349  	unsigned long host_pgd;
1934a3ad091fb6b James Hogan   2017-03-14  350  	unsigned long host_entryhi;
740765ce45689a4 Sanjay Lal    2012-11-21  351  
740765ce45689a4 Sanjay Lal    2012-11-21  352  	/* Host CP0 registers used when handling exits from guest */
740765ce45689a4 Sanjay Lal    2012-11-21  353  	unsigned long host_cp0_badvaddr;
740765ce45689a4 Sanjay Lal    2012-11-21  354  	unsigned long host_cp0_epc;
31cf7498545c36c James Hogan   2016-06-09  355  	u32 host_cp0_cause;
1934a3ad091fb6b James Hogan   2017-03-14  356  	u32 host_cp0_guestctl0;
6a97c775ff77fb7 James Hogan   2015-04-23  357  	u32 host_cp0_badinstr;
6a97c775ff77fb7 James Hogan   2015-04-23  358  	u32 host_cp0_badinstrp;
740765ce45689a4 Sanjay Lal    2012-11-21  359  
740765ce45689a4 Sanjay Lal    2012-11-21  360  	/* GPRS */
740765ce45689a4 Sanjay Lal    2012-11-21  361  	unsigned long gprs[32];
740765ce45689a4 Sanjay Lal    2012-11-21  362  	unsigned long hi;
740765ce45689a4 Sanjay Lal    2012-11-21  363  	unsigned long lo;
740765ce45689a4 Sanjay Lal    2012-11-21  364  	unsigned long pc;
740765ce45689a4 Sanjay Lal    2012-11-21  365  
740765ce45689a4 Sanjay Lal    2012-11-21  366  	/* FPU State */
740765ce45689a4 Sanjay Lal    2012-11-21  367  	struct mips_fpu_struct fpu;
f943176a7205a06 James Hogan   2016-06-14  368  	/* Which auxiliary state is loaded (KVM_MIPS_AUX_*) */
f943176a7205a06 James Hogan   2016-06-14  369  	unsigned int aux_inuse;
740765ce45689a4 Sanjay Lal    2012-11-21  370  
740765ce45689a4 Sanjay Lal    2012-11-21  371  	/* COP0 State */
740765ce45689a4 Sanjay Lal    2012-11-21  372  	struct mips_coproc *cop0;
740765ce45689a4 Sanjay Lal    2012-11-21  373  
740765ce45689a4 Sanjay Lal    2012-11-21  374  	/* Host KSEG0 address of the EI/DI offset */
740765ce45689a4 Sanjay Lal    2012-11-21  375  	void *kseg0_commpage;
740765ce45689a4 Sanjay Lal    2012-11-21  376  
e1e575f6b026734 James Hogan   2016-10-25  377  	/* Resume PC after MMIO completion */
e1e575f6b026734 James Hogan   2016-10-25  378  	unsigned long io_pc;
e1e575f6b026734 James Hogan   2016-10-25  379  	/* GPR used as IO source/target */
e1e575f6b026734 James Hogan   2016-10-25  380  	u32 io_gpr;
740765ce45689a4 Sanjay Lal    2012-11-21  381  
e30492bbe95a249 James Hogan   2014-05-29  382  	struct hrtimer comparecount_timer;
f82393426afb7c8 James Hogan   2014-05-29  383  	/* Count timer control KVM register */
bdb7ed8608f8f19 James Hogan   2016-06-09  384  	u32 count_ctl;
e30492bbe95a249 James Hogan   2014-05-29  385  	/* Count bias from the raw time */
bdb7ed8608f8f19 James Hogan   2016-06-09  386  	u32 count_bias;
e30492bbe95a249 James Hogan   2014-05-29  387  	/* Frequency of timer in Hz */
bdb7ed8608f8f19 James Hogan   2016-06-09  388  	u32 count_hz;
e30492bbe95a249 James Hogan   2014-05-29  389  	/* Dynamic nanosecond bias (multiple of count_period) to avoid overflow */
e30492bbe95a249 James Hogan   2014-05-29  390  	s64 count_dyn_bias;
f82393426afb7c8 James Hogan   2014-05-29  391  	/* Resume time */
f82393426afb7c8 James Hogan   2014-05-29  392  	ktime_t count_resume;
e30492bbe95a249 James Hogan   2014-05-29  393  	/* Period of timer tick in ns */
e30492bbe95a249 James Hogan   2014-05-29  394  	u64 count_period;
740765ce45689a4 Sanjay Lal    2012-11-21  395  
740765ce45689a4 Sanjay Lal    2012-11-21  396  	/* Bitmask of exceptions that are pending */
740765ce45689a4 Sanjay Lal    2012-11-21  397  	unsigned long pending_exceptions;
740765ce45689a4 Sanjay Lal    2012-11-21  398  
740765ce45689a4 Sanjay Lal    2012-11-21  399  	/* Bitmask of pending exceptions to be cleared */
740765ce45689a4 Sanjay Lal    2012-11-21  400  	unsigned long pending_exceptions_clr;
740765ce45689a4 Sanjay Lal    2012-11-21  401  
740765ce45689a4 Sanjay Lal    2012-11-21  402  	/* S/W Based TLB for guest */
740765ce45689a4 Sanjay Lal    2012-11-21  403  	struct kvm_mips_tlb guest_tlb[KVM_MIPS_GUEST_TLB_SIZE];
740765ce45689a4 Sanjay Lal    2012-11-21  404  
c550d53934d821d James Hogan   2016-10-11  405  	/* Guest kernel/user [partial] mm */
740765ce45689a4 Sanjay Lal    2012-11-21 @406  	struct mm_struct guest_kernel_mm, guest_user_mm;
740765ce45689a4 Sanjay Lal    2012-11-21  407  
25b08c7fb0e410b James Hogan   2016-09-16  408  	/* Guest ASID of last user mode execution */
25b08c7fb0e410b James Hogan   2016-09-16  409  	unsigned int last_user_gasid;
25b08c7fb0e410b James Hogan   2016-09-16  410  
aba8592950f1c69 James Hogan   2016-12-16  411  	/* Cache some mmu pages needed inside spinlock regions */
aba8592950f1c69 James Hogan   2016-12-16  412  	struct kvm_mmu_memory_cache mmu_page_cache;
aba8592950f1c69 James Hogan   2016-12-16  413  

:::::: The code at line 220 was first introduced by commit
:::::: 06c158c96ed8909a1d8696d4f953ca8a9ef55574 KVM: MIPS/MMU: Convert guest physical map to page table

:::::: TO: James Hogan <james.hogan@imgtec.com>
:::::: CC: James Hogan <james.hogan@imgtec.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012020942.kAy8tztn-lkp%40intel.com.

--cNdxnHkX5QqsyA0e
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--cNdxnHkX5QqsyA0e--
