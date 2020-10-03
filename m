Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBWE375QKGQEA4C2OEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AEB282082
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 04:29:28 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id j5sf2457026qka.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 19:29:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601692167; cv=pass;
        d=google.com; s=arc-20160816;
        b=rk+QQzP/AyTQS0U+aW5eOfNULDHJFceDZEyoAvlOC+FFp3L/FfyVm93G4Pac8Bbsym
         aBFZ2Wr3FmvQ8XZIwU8xWYHXSk97/WrHOE0du58csQ1TRA0Y4MO8VXnWbwgqLHIL37Nz
         EoPNhy6gbef3B1bMtAtecwbgr0rCqMcSsfZV0SHMF3sUTECDlgdgYZFWJXI9iasgyxyL
         in5ioY3YS2SZah946w5v69ZH0tIDt1cOwNVsUvqh0zyy5UUupmsQh5mcIMyN2UXVnfQQ
         riu6Mo1xhcHga8n+n9vynlEu0FTCQiW0RebnrHls8Afev183XwEYEJAcOQRuVvJXfGlN
         mkSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Af+WRaJ3iRCLEJT1QFg+d4Z5B482Ve+GRMR8qspH0K0=;
        b=H8CzXAK3RLfUDhxW5A845Ia7Y/9pJ/30ECECpg96VThCl5x9pDIaaaQo0LS6jJLHGz
         atx0u9EjlYdB2zvuYkDAYQ06hP9H6ENczdpiSbwky/fm4LpBrZk8FOS2HFu3f5GEkptG
         COl59KllkVNV5oLIZNGoCvYVte2RwWnJ+B+VMEKEsPTAoCEKGC7YfXm2RI3WMnA4lV1J
         npNKXUpphaWluVth+12lx72BCfDJ8Dt4BhmohU3so/why9Azcp6nnOlGpqMxalexa2X9
         The38FDiR/xOpd5+wrNcNK64Djk24GPPzinb0OU+e7vxy4uzJYmVVZJiQh3VFmnG8Hqv
         /CIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Af+WRaJ3iRCLEJT1QFg+d4Z5B482Ve+GRMR8qspH0K0=;
        b=hxPBT8rkU0+DMKOYO4LjKuKmp74YiVkK4QIBP7QMQBpSMaUcBB/1OsxTLc9ZSLJI5v
         gGWtareCsjRzsfjpXS/NzwuKfxJRczM0oiQ+RK2+74wqJreMUVQRPRtMSuHYxAyRX+gl
         Q8D6mXuTLBoYW+HVO9eA8stEhyCyP1tqzSFsOBZqe8dzflQOK13qjUQTcYs5yDOa6Ld2
         ow4b7ipL/JOaghbslxsy0LZVunUFC1y9+QdWfuaKuBS7IqM+f1U3MaLIV5F4ifC4rMdx
         1WZ27tLuny1zU6Ij8xa/QGNJr6TPunn8hCN0DbUvgMJMHsPpNXSnNZmcwvOQo3Uqsezh
         tLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Af+WRaJ3iRCLEJT1QFg+d4Z5B482Ve+GRMR8qspH0K0=;
        b=FUr4qP0HBgh7Xd2k5D3XTIab8j6hISiOCSH1vc7BGaVJiY6AlR2SFGKE4Ha/3+EduY
         rDFSf/rT4N4Kuw2WZIGR0AA6Ccjj0WgZ091d0Al1n6VhO/2OIS8oZdwg73dxnEGPFwxq
         FoD5ZWJTFu6VSz8RrUA4y6fSBjVBIrF3EaJFMuU2zqu6ECR2hlUeFUX8PQRmswZWH44x
         jS4vJ3KZq5+wCRV3ZiVJz0ZHXdv9PKUhQKCb2JlxNlFAb84KfE4D6Rt9wcpGMdKN41D0
         8o6ojWPRaJaqjUbDw+KR152a7vfoXRuzjgrITjQ034EVWFBmEBcg1YgBFNGZ5m8eVIWR
         adRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53069PQH+0p+NgIYIfoo9it6/bcjvIwIl1xLr3RdkCkj4SXsKWCT
	ZZIRSI+WsmJy45xdaZBfokI=
X-Google-Smtp-Source: ABdhPJyZF4gEVloAVfuJ0KVP00aMgiEUFbNM5KDKrgxiiS+QMNa3elTRLd7B6FhDgO+vKFmDEVMs0g==
X-Received: by 2002:a05:620a:1015:: with SMTP id z21mr5004983qkj.2.1601692166707;
        Fri, 02 Oct 2020 19:29:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f204:: with SMTP id m4ls1628096qkg.4.gmail; Fri, 02 Oct
 2020 19:29:26 -0700 (PDT)
X-Received: by 2002:a37:a607:: with SMTP id p7mr4852242qke.118.1601692166124;
        Fri, 02 Oct 2020 19:29:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601692166; cv=none;
        d=google.com; s=arc-20160816;
        b=UZ9ZzE3wtH2QWBm4qE9d1hGggNQhZYfP6GtjRsfuGTQ/UIjmzc7t9wQa1Ct2F0Rsen
         O7/JToiOYjVaCv15LTe1U6zIB+hlK11JhoIsc2raf58EEmST/TNNPFB/QphIGi6+gVcC
         vGKP78+XuT+6q4WRrpTvippFo56Dg25bDLVpqzNLWVbf17O0ncBGkTyt1ci0U/2U/og+
         h+JbX6i3i3C6CjaaiWL/v6xHuQyC01nok8ikq3y91JWVOHg1iMTv+XtxtqxR+pjIidbM
         kSrFPKrMT9sNQqSsk92UL9RwzdJ3xC77Q50RZVJ/XfzrkuIXKrakSyQh96YytPLBCDR9
         CJyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=F0PwvVf+nK4e0fGEe4LfehftAyRvjbCcAlTDUppRnvE=;
        b=oxYqPLN6PRn0Fxb/Y36sE0+v3KcBe8D5jG0n14/QezhjXA/Wg2Je9l3NQr0cSEE2cA
         nj8K7hkQg/P+JFNzEqm1DZ9lSlbz7kSaKIxc7HGl7lApSA1thKXuLZT5NM+4wHYW1YAT
         NMFHsJmGiEIpS8nUu8KDN3HwaJuqLawA2Nak7z1H82x8DYnpQw6mZKjmugWllSkQIWJV
         JL2Yn81anIaU4Xg8f4sZlN9MjRV0Mge7lNHHheisdCJdVGFCxomSgeJeT13m9/szjj5R
         NTZxaeWcv29nn2BoWF8YQ2aJnVRQlT73sDdicRePIXU/jB59VIi0bNpC9a9ldNlVXcqS
         Hazg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id s76si150075qka.5.2020.10.02.19.29.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2020 19:29:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: htED4Fhr/GdtnEMjJYMQmfvjgzJALlyettxfSSHJginfFCqI1cqdmLzqBG+3LdtbVWLUB1oC9d
 inwunkJMnKYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="142529141"
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; 
   d="gz'50?scan'50,208,50";a="142529141"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2020 19:29:20 -0700
IronPort-SDR: yY0GyRvffyNfbgxcSS1z2xDw7jsbTgROgIESL16SWtBwzzPbKNbPaV6CVFSHeTuINzQdmT6oEw
 8yuM9pGVCZew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; 
   d="gz'50?scan'50,208,50";a="295019398"
Received: from lkp-server02.sh.intel.com (HELO 404f47266ee4) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 02 Oct 2020 19:29:18 -0700
Received: from kbuild by 404f47266ee4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kOXIT-0000Ck-I9; Sat, 03 Oct 2020 02:29:17 +0000
Date: Sat, 3 Oct 2020 10:28:43 +0800
From: kernel test robot <lkp@intel.com>
To: Fangrui Song <maskray@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: include/linux/topology.h:119:9: error: implicit declaration of
 function 'cpu_logical_map'
Message-ID: <202010031032.ZYc2bCry-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Fangrui,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   d4fce2e20ffed59eb5db7780fcbbb0a21decef74
commit: ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51 Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
date:   2 months ago
config: mips-randconfig-r024-20201003 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bcd05599d0e53977a963799d6ee4f6e0bc21331b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout ca9b31f6bb9c6aa9b4e5f0792f39a97bbffb8c51
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   clang-12: warning: argument unused during compilation: '-mno-branch-likely' [-Wunused-command-line-argument]
   clang-12: warning: argument unused during compilation: '-mno-branch-likely' [-Wunused-command-line-argument]
   In file included from arch/mips/kernel/asm-offsets.c:12:
   In file included from include/linux/compat.h:15:
   In file included from include/linux/socket.h:8:
   In file included from include/linux/uio.h:10:
   In file included from include/crypto/hash.h:11:
   In file included from include/linux/crypto.h:19:
   In file included from include/linux/slab.h:15:
   In file included from include/linux/gfp.h:9:
>> include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
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
   9 warnings and 3 errors generated.
   make[2]: *** [scripts/Makefile.build:114: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1175: prepare0] Error 2

vim +/cpu_logical_map +119 include/linux/topology.h

7281201922a0063 Lee Schermerhorn 2010-05-26  114  
7281201922a0063 Lee Schermerhorn 2010-05-26  115  /* Returns the number of the current Node. */
7281201922a0063 Lee Schermerhorn 2010-05-26  116  #ifndef numa_node_id
7281201922a0063 Lee Schermerhorn 2010-05-26  117  static inline int numa_node_id(void)
7281201922a0063 Lee Schermerhorn 2010-05-26  118  {
7281201922a0063 Lee Schermerhorn 2010-05-26 @119  	return cpu_to_node(raw_smp_processor_id());
7281201922a0063 Lee Schermerhorn 2010-05-26  120  }
7281201922a0063 Lee Schermerhorn 2010-05-26  121  #endif
7281201922a0063 Lee Schermerhorn 2010-05-26  122  

:::::: The code at line 119 was first introduced by commit
:::::: 7281201922a0063fa60804ce39c277fc98142a47 numa: add generic percpu var numa_node_id() implementation

:::::: TO: Lee Schermerhorn <lee.schermerhorn@hp.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010031032.ZYc2bCry-lkp%40intel.com.

--Nq2Wo0NMKNjxTN9z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Nq2Wo0NMKNjxTN9z--
