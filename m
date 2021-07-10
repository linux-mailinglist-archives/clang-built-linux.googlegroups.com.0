Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNF2USDQMGQEY6QBXTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 6136C3C3284
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Jul 2021 06:08:22 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id p8-20020a1709028a88b029011c6ee150f3sf4391141plo.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 21:08:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625890101; cv=pass;
        d=google.com; s=arc-20160816;
        b=t5SjbnNqmRV/DjTFRbXejeOEMZH6BAKJTSMltVgfZ5rLrxrY17wN0tYGNXGCG9awoF
         55gssyCW0Np+TFRQ9GaFaM43q0MqXQ9rmuuytEcVHjTjFdCb5zN7AzpCB1JypILH7OHM
         D6L/SGlpK5rUvt3+QTYi9iia+RnOSX7GB1HQnRVm+5MIPSYcuUcLUvylXFMQeOMgyEME
         R3YUsmYRoZQS8k8ITmEyyT3btJbz+ttn0hxbM+dB2uh3nRjSeJKvOQaJnIyJD4lGiG2t
         BliRzvR5ZvkRI/7haCQ3G4qyu9QTnHH9vqHx58USoBAmAQs395ABu6r9QjhERp4Uh8KM
         AAoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xBgMM36IViqdZq8lzV+BJJm5OMeXVdMXrf9TgbLoLi8=;
        b=MVO1X+YH+2cuV6UdDnZKnBVtsKHuwHYDpN82rBs0nBkkDG//8f0wItSYMhG8lahVMh
         NGBHtF+Fy/cJQIIEjrSYIdsotl8bHOq/Tf1yf2oLs0lCfORQ+QPwLCdQOZXW/SiDZDp+
         foqMDwebua1TT3CHZjtlaIFCNs/GGYbcdC1pxgMc2K8hUNXnrbEM9QNLh4rnsjfpTgL3
         UfrRjK/jbOOrmH1d3S2BLkpZ09vvYfAKyJUuQMuP5kdMISf9uzhc6WYqH++yUFDSvHjc
         NAnZg6PMUmR1VOsXQPMvApemPKp9660OEKd75pDlz7vY1K0FFQyHlImFTjvJqQoxOPqT
         j5kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xBgMM36IViqdZq8lzV+BJJm5OMeXVdMXrf9TgbLoLi8=;
        b=mAOyxy66roQwXfPZDvg0aCaWZStT9AQh22kcq42Tzg7NX14rPQuaKtQb3rO0WNaQBb
         DxRBAz+Ql3+H18ZCQYtDaNR9sErVBZHWchkuDKCMSUDH0mKpm2yscTg+hBUXafe5pZMm
         TFzmm45SP1sektCTFTWEojYbjduwzTj2xDV9nOk0fGt8JrqV30urQsWanrmRdx9+bgcl
         1nbjIu715XzjQX0TR6qaxGg/amFD9j0dF6DuDtR4uBk0WLsu1x8b/qzeopyirlMPoLb+
         kfws9bo+BozpFu18m6VBxfUs9HFvoVS8JwtrAyApuAgOJOmYGZBrVWC0hVuzytHJGilj
         39LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xBgMM36IViqdZq8lzV+BJJm5OMeXVdMXrf9TgbLoLi8=;
        b=g2Nuf7G8f8kVbduX0pFOYu3Cu/kbxow1XIhwCaURRAv9dl5dvK1f40jX4lmUKdUFTF
         6ZT1EcMkrH6oUvekAUROvRJ55jfWypfU93jSNmUt5fL91la762xDuAgZLJiOATxiHVtd
         BYel9s9VIgXR8ztIyfIFS0VVtxeolo4wFoLdrB+robLucoxEwmCUKWy4IjtYyeSkHhjc
         BWTAM8GoEL2bIA7fLmo6wzhkAj1Z1jexzA45hbFtG0ZxEUOQTAoC5ppJn3U45PHuj9Zq
         a9OpqLnPPuOeOQ3yJfSWfZJFfjoXNAlNzKFWZdvYJR73Q2F6ZZBvuiwD2o8x0YYX2vbe
         GTxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337SXGqx+WhG1AmfDRyz3KyD9BIetilWjgHxkhl/aaPHPRB/S5Y
	jO9POHJt6qSDkdLVFres2TE=
X-Google-Smtp-Source: ABdhPJyu5gSI16Qn7uzIebOOp+b7+36kzCktM1n0C6J0gwwlvp8/jZHtgr+i/5I0cHFGvweZjt1+qQ==
X-Received: by 2002:a63:df0f:: with SMTP id u15mr41682458pgg.57.1625890100879;
        Fri, 09 Jul 2021 21:08:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:d69:: with SMTP id n41ls3956172pfv.9.gmail; Fri, 09
 Jul 2021 21:08:19 -0700 (PDT)
X-Received: by 2002:a62:1c47:0:b029:328:c15c:7603 with SMTP id c68-20020a621c470000b0290328c15c7603mr7445124pfc.6.1625890099417;
        Fri, 09 Jul 2021 21:08:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625890099; cv=none;
        d=google.com; s=arc-20160816;
        b=v66QV083g9/vedNHXKputeyBO7GlnI8RQ4zOpzk08KeZThyRVzqj/I7Ejy77+oxXDU
         onh7N9p/TohvAi6OsK99XnkO5t8diGmHd8w4r+0ABY9PIr3whThBXzBm8gmKscQ9z/sA
         B+5U1WIk/in0iN2GS3f80OCb6LQtoIpktbTWKAsZtyRWT1Wu4dpu/dmSWqKSTCjaNX59
         AVDgLScDSYl+s6AtlU/HVWJdK0g7kDChbWNQ3SAQkuTwWi2MGcR3mrLzA2wUAK4nB3H/
         pWRa7zzx8vBYJNTFfj34tQEkn4E8LtCGUu708xuGIZP3V9a/HLXceE+p8V3FK11HnOj4
         cCAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8ecl9PnPIDMYS/dZ/pNgb/1SIaNyi3kNW33MdV6NzPU=;
        b=U2YGEB/fwDTpWQg461gcKy/pTlijgF56d4TZ9flshmYI4vKuHQ63GyAAaYx48cUAgR
         syXPT06Lx61kOvEG4iJTzGho65z5kL8rETrSDi4oW2j/fOFnGWnmnGHJlFU4MtXHVqgE
         6xLUzrqauPUpXcQEo+l0PC2mSTXr2eJ2DWKoELkXQvjnbMmxFVcfAOeOZ4YKiIa+XVE9
         pJUqwrOv2azcRnkN5QigobTVorgoMyolAp0SWgr0kMgIfwo/tJ+U6JeWzEcO+5BeuoLl
         DJX3eZMr84pUoA5rq5YscoF+v4mfpQggF0gFOKbV0pqJFwRB65IWBVz1gvLrB7G1DhqT
         FhaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id g7si1672754pju.0.2021.07.09.21.08.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 21:08:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="270922395"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; 
   d="gz'50?scan'50,208,50";a="270922395"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2021 21:08:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; 
   d="gz'50?scan'50,208,50";a="629068787"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 09 Jul 2021 21:08:15 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m24Hm-000FMp-WD; Sat, 10 Jul 2021 04:08:15 +0000
Date: Sat, 10 Jul 2021 11:39:39 +0800
From: kernel test robot <lkp@intel.com>
To: Nick Alcock <nick.alcock@oracle.com>, jeyu@kernel.org,
	masahiroy@kernel.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-modules@vger.kernel.org, linux-kernel@vger.kernel.org,
	arnd@arndb.de
Subject: Re: [PATCH 6/7] kallsyms: add /proc/kallmodsyms
Message-ID: <202107101140.egiOSCAE-lkp@intel.com>
References: <20210709222523.17639-7-nick.alcock@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline
In-Reply-To: <20210709222523.17639-7-nick.alcock@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nick,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on kbuild/for-next]
[also build test WARNING on linus/master v5.13]
[cannot apply to kbuild/kconfig next-20210709]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Nick-Alcock/kbuild-bring-back-tristate-conf/20210710-072558
base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
config: s390-randconfig-r012-20210709 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/af04f89ab6ea4f6ffbd83ee71afe1e8a0df26ee1
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Nick-Alcock/kbuild-bring-back-tristate-conf/20210710-072558
        git checkout af04f89ab6ea4f6ffbd83ee71afe1e8a0df26ee1
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from kernel/kallsyms.c:25:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from kernel/kallsyms.c:25:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from kernel/kallsyms.c:25:
   In file included from include/linux/filter.h:13:
   In file included from include/linux/skbuff.h:31:
   In file included from include/linux/dma-mapping.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   kernel/kallsyms.c:581:12: warning: no previous prototype for function 'arch_get_kallsym' [-Wmissing-prototypes]
   int __weak arch_get_kallsym(unsigned int symnum, unsigned long *value,
              ^
   kernel/kallsyms.c:581:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int __weak arch_get_kallsym(unsigned int symnum, unsigned long *value,
   ^
   static 
>> kernel/kallsyms.c:688:7: warning: variable 'mod_idx' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
                   if (kallsyms_module_offsets)
                       ^~~~~~~~~~~~~~~~~~~~~~~
   kernel/kallsyms.c:708:35: note: uninitialized use occurs here
                   iter->hint_builtin_module_idx = mod_idx;
                                                   ^~~~~~~
   kernel/kallsyms.c:688:3: note: remove the 'if' if its condition is always true
                   if (kallsyms_module_offsets)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/kallsyms.c:675:23: note: initialize the variable 'mod_idx' to silence this warning
           unsigned long mod_idx;
                                ^
                                 = 0
   14 warnings generated.


vim +688 kernel/kallsyms.c

   580	
 > 581	int __weak arch_get_kallsym(unsigned int symnum, unsigned long *value,
   582				    char *type, char *name)
   583	{
   584		return -EINVAL;
   585	}
   586	
   587	static int get_ksymbol_arch(struct kallsym_iter *iter)
   588	{
   589		int ret = arch_get_kallsym(iter->pos - kallsyms_num_syms,
   590					   &iter->value, &iter->type,
   591					   iter->name);
   592	
   593		if (ret < 0) {
   594			iter->pos_arch_end = iter->pos;
   595			return 0;
   596		}
   597	
   598		return 1;
   599	}
   600	
   601	static int get_ksymbol_mod(struct kallsym_iter *iter)
   602	{
   603		int ret = module_get_kallsym(iter->pos - iter->pos_arch_end,
   604					     &iter->value, &iter->type,
   605					     iter->name, iter->module_name,
   606					     &iter->exported);
   607		iter->builtin_module_names = NULL;
   608	
   609		if (ret < 0) {
   610			iter->pos_mod_end = iter->pos;
   611			return 0;
   612		}
   613	
   614		return 1;
   615	}
   616	
   617	/*
   618	 * ftrace_mod_get_kallsym() may also get symbols for pages allocated for ftrace
   619	 * purposes. In that case "__builtin__ftrace" is used as a module name, even
   620	 * though "__builtin__ftrace" is not a module.
   621	 */
   622	static int get_ksymbol_ftrace_mod(struct kallsym_iter *iter)
   623	{
   624		int ret = ftrace_mod_get_kallsym(iter->pos - iter->pos_mod_end,
   625						 &iter->value, &iter->type,
   626						 iter->name, iter->module_name,
   627						 &iter->exported);
   628		iter->builtin_module_names = NULL;
   629	
   630		if (ret < 0) {
   631			iter->pos_ftrace_mod_end = iter->pos;
   632			return 0;
   633		}
   634	
   635		return 1;
   636	}
   637	
   638	static int get_ksymbol_bpf(struct kallsym_iter *iter)
   639	{
   640		int ret;
   641	
   642		strlcpy(iter->module_name, "bpf", MODULE_NAME_LEN);
   643		iter->exported = 0;
   644		iter->builtin_module_names = NULL;
   645		ret = bpf_get_kallsym(iter->pos - iter->pos_ftrace_mod_end,
   646				      &iter->value, &iter->type,
   647				      iter->name);
   648		if (ret < 0) {
   649			iter->pos_bpf_end = iter->pos;
   650			return 0;
   651		}
   652	
   653		return 1;
   654	}
   655	
   656	/*
   657	 * This uses "__builtin__kprobes" as a module name for symbols for pages
   658	 * allocated for kprobes' purposes, even though "__builtin__kprobes" is not a
   659	 * module.
   660	 */
   661	static int get_ksymbol_kprobe(struct kallsym_iter *iter)
   662	{
   663		strlcpy(iter->module_name, "__builtin__kprobes", MODULE_NAME_LEN);
   664		iter->exported = 0;
   665		iter->builtin_module_names = NULL;
   666		return kprobe_get_kallsym(iter->pos - iter->pos_bpf_end,
   667					  &iter->value, &iter->type,
   668					  iter->name) < 0 ? 0 : 1;
   669	}
   670	
   671	/* Returns space to next name. */
   672	static unsigned long get_ksymbol_core(struct kallsym_iter *iter, int kallmodsyms)
   673	{
   674		unsigned off = iter->nameoff;
   675		unsigned long mod_idx;
   676	
   677		iter->exported = 0;
   678		iter->value = kallsyms_sym_address(iter->pos);
   679	
   680		iter->type = kallsyms_get_symbol_type(off);
   681	
   682		iter->module_name[0] = '\0';
   683		iter->builtin_module_names = NULL;
   684	
   685		off = kallsyms_expand_symbol(off, iter->name, ARRAY_SIZE(iter->name));
   686	#ifdef CONFIG_KALLMODSYMS
   687		if (kallmodsyms) {
 > 688			if (kallsyms_module_offsets)
   689				mod_idx =
   690				  get_builtin_module_idx(iter->value,
   691							 iter->hint_builtin_module_idx);
   692	
   693			/*
   694			 * This is a built-in module iff the tables of built-in modules
   695			 * (address->module name mappings) and module names are known,
   696			 * and if the address was found there, and if the corresponding
   697			 * module index is nonzero.  All other cases mean off the end of
   698			 * the binary or in a non-modular range in between one or more
   699			 * modules.  (Also guard against a corrupt kallsyms_objfiles
   700			 * array pointing off the end of kallsyms_modules.)
   701			 */
   702			if (kallsyms_modules != NULL && kallsyms_module_names != NULL &&
   703			    mod_idx != (unsigned long) -1 &&
   704			    kallsyms_modules[mod_idx] != 0 &&
   705			    kallsyms_modules[mod_idx] < kallsyms_module_names_len)
   706				iter->builtin_module_names =
   707				  &kallsyms_module_names[kallsyms_modules[mod_idx]];
   708			iter->hint_builtin_module_idx = mod_idx;
   709		}
   710	#endif
   711		return off - iter->nameoff;
   712	}
   713	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107101140.egiOSCAE-lkp%40intel.com.

--d6Gm4EdcadzBjdND
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--d6Gm4EdcadzBjdND--
