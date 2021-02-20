Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBR6ZYGAQMGQEMP3LR3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id A15423202BA
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 02:58:32 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id y62sf3012997oiy.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 17:58:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613786311; cv=pass;
        d=google.com; s=arc-20160816;
        b=EySYwHB0fRiJcFPH1hLF1YTNXBBVPezYppgD1OrI2JJc72k9iEeNikQr5GTnM2+erD
         4Dwbt2LOph3J/Hf3eESwGJRs4xY4xMEKTQ1cMh3raxDfr7JiQP88ajdy59OOUt3fErKI
         vTJMtcM5c1iBVR4/sm4AUJ98IFRmC4oZBmrrPhKN+CeQ6tTC4TUaI6Y3YCviKPZq+1MO
         6nH64PAdznfVQQ7GGhAlIgG9EmvLMh0gxefeQM1kIO9o0FJh55VJ+rMTnzXF8MvVx5+b
         SqiYQACuUcMjcLW0Tv+JcJDFVqP+8I89AYt4c67RSJdz0KwnmVm68/0JGMkYM4krLVOo
         rioA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=UjCz/dQ1yivNkxmJPwbEWuiKcNiRzVdWgmRfb+mAQQE=;
        b=0nkDIQdOLRlP/rJGF6vAOxMOj4UuoTDuJ0YI7q3PG19fFRKhFgwN1p6Hhgwk2RkhVG
         /NO6OMxOeYi7HCwH6pYPhLcOVNCoHJ6iLGlBvidKRtXoZsgaGhuon6TcgKnrLSKQO7nG
         m6+JtHdkqSVB0wKBbaoakBs9GR4MFCWxJI+452CGw7XKZyNZXtxvYoVLlP0da5m8ub9U
         CSUgJ4CR1wZPK1nwa53dVEnSSU14ZzkX7FgrTJ3mZFx2xH8SHcBB23/cAJjcDizMfPB+
         IrZC6pyZSBXv6JDgmHhgq04AYKGq3f/raqzldyjbiJNXsfVeh2dFFZi7VieKMj/zig/R
         r05Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UjCz/dQ1yivNkxmJPwbEWuiKcNiRzVdWgmRfb+mAQQE=;
        b=sQUGmKo0fZrsNHLG18g3ALkn7egheMZm8K+xVuZsIRokSjVC/7Vpnp5IAZkPxDwubT
         gAzGWGdMtZYvq0SAvdyRbDw2tojaeWEbYHJoeQeuS7LWlS91yAziIMzD2Megw6aWoa52
         yQ4cH1E/GwBi2PKmR9z/baHJGD3y3hPZ5mhHW4F5H9p7/Y/szrhLsZZ/CRilSewHu5oH
         Nea7/tstuibTHmiLgPAWEYDLmkO78DpLrd4ACe0jKXut5EA63gb/uWU6MiBBoNt15N2x
         X8fYHiB2ZmJr6U0ZWHlPwVh7D27pQLxdgEbjmmbQ4XodDr9HwQ+2IQvEQ5QInwyfwrfn
         9rRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UjCz/dQ1yivNkxmJPwbEWuiKcNiRzVdWgmRfb+mAQQE=;
        b=jYcM4dP96rXbSrBgjzsLaAN7bVDPk1oUlu/o1eQe1IuVCUJcr3/CKIxBFQ3lLRR0ub
         ZcDrYy+pthrQ3kLv42PLdPqg/JYbaTUxLRlg5IhbN4bw0Y0FvfQAK1/jx+vLUz1410qe
         1SWQ46guYtqGtbzujoouut5P6C3ee0kO78cxvi8JpNpfXu891WIBz+0UH9HjQkeAw3E8
         JBFYGiceZD2SgWJPZxBjKejW1SLvofTyPp0rM9SlyWsnFAnrz8W319fY4nuC2j06B3TL
         GU5lndc5atrVhku8TOCcPOJZqT5wiOOdc82jhy1MjqHVYbTz9btThbzo8+mnqirI7cIZ
         6Vlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533I1M0GBepaFSs4LOiAwlVaFqdLl4X8QaV9s78zOoU+Vc5jA3XW
	5KVQrWjP1F+jtz/zjkL0KLA=
X-Google-Smtp-Source: ABdhPJwFVlB8ecxa9lPw+U2dVwe7Q7hQWSyXQDrZDMOEotOoqqoCyucKRUSVblzV1svXl6AlqpOdug==
X-Received: by 2002:a54:4799:: with SMTP id o25mr8368352oic.83.1613786311276;
        Fri, 19 Feb 2021 17:58:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:731a:: with SMTP id e26ls1474362otk.3.gmail; Fri, 19 Feb
 2021 17:58:30 -0800 (PST)
X-Received: by 2002:a9d:741a:: with SMTP id n26mr4880466otk.244.1613786310710;
        Fri, 19 Feb 2021 17:58:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613786310; cv=none;
        d=google.com; s=arc-20160816;
        b=JtnBETiKLCE2og2ySXA8/AZRZmG5cl4E35DhEQ29llZ8fz0svTBpVyk4ri0iukrzmX
         YiMex2iy8w6Gv11tx6hSQ95ABgfIjKzGBr5O2VIC5iPJgxq9e9O4RN2/xuS/T4D1xXJN
         xJItnR/pGYNQvBpzZ8zddvjzSAaAl5tjfjayyI1aLyfaPvvvUkv5La6hO0up6MFjHGnU
         uAaa+fzSMzUtBM1358RPYT7MXkfRPH1AZjj4WrmM4XBHKosspS64JLc4uJJuE/hvkL0H
         sjtOTVeHvJbsK7gqPSfXSIpZQCBrpg92PvCT3HogzX/PRcBt5dNZ68eHF+fgehKfQ6O0
         yPdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=4ukIBJscIPKknVLlLVhH8tJfAh5FjrqnnBLnYNs7VqA=;
        b=li4k+KHHNGadkcvlYt7Q8XLGl4NJtwl3va7cCKUqIAuY6UabAuK/wQOA+yyh4VT2jt
         LnXp46pSJcWzaz9DZfgRuYman8jAcrGG0UfF+pXCnUwq7q5qkQpYiXXG1RChtFl+fUUk
         +CRfwb/30uI6P2AlTRAF07WPLSCHU9m+wSqcTFyh9l0t7b/3EoczDF/ko47sKKRX+0wy
         YQnc4pYWU/aZMSJnqj0XbzQ1ECKZ8rcA1b9sHVZWeT+m2kb8oupYLcXxVyCJtTfDSzpQ
         OdD+mjLs4jC54FuBCHe4edpuV/yNsl44F2Ydl7Ns/ek99Blyhs2I85UtldHzxNO1cl7h
         ouOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id j20si663434otn.0.2021.02.19.17.58.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2021 17:58:30 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: 5goUpZu7YWRkahvrj1pE3DjiVUxdz3WvQwFgc6pLdPS/sCwJL/S+K8LG7D7QcsH2VANTbQfIlH
 YoWBJ/u2HJjw==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="184131334"
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; 
   d="gz'50?scan'50,208,50";a="184131334"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2021 17:58:28 -0800
IronPort-SDR: DNnpXTJHXIVMqpF6n2lu8R7wGfVBOI3Gd0a04umpBbztV1i/6yANrG1qirbijJHRF+ztdmAhA3
 Nq01lVNWiqvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; 
   d="gz'50?scan'50,208,50";a="363174261"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 19 Feb 2021 17:58:26 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lDHXN-000AmI-FJ; Sat, 20 Feb 2021 01:58:25 +0000
Date: Sat, 20 Feb 2021 09:57:31 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:x86/fpu 4/4]
 drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:8: error:
 unknown type name '__fpu'
Message-ID: <202102200927.zeXgp8Px-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FCuugMFkClbJLl1L"
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


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git x86/fpu
head:   a70a4612ff7e0ecec208dd20c578119827ab38d0
commit: a70a4612ff7e0ecec208dd20c578119827ab38d0 [4/4] amdgpu/dc: Annotate __fpu
config: powerpc-randconfig-r004-20210219 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=a70a4612ff7e0ecec208dd20c578119827ab38d0
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue x86/fpu
        git checkout a70a4612ff7e0ecec208dd20c578119827ab38d0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:8: error: unknown type name '__fpu'
   static __fpu void dcn_bw_calc_rq_dlg_ttu(
          ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:638:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:638:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:638:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:67:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:638:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:67:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:674:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:674:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:674:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:78:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:674:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:78:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:688:8: error: unknown type name '__fpu'
   static __fpu void hack_force_pipe_split(struct dcn_bw_internal_vars *v,
          ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:737:14: warning: no previous prototype for function 'get_highest_allowed_voltage_level' [-Wmissing-prototypes]
   unsigned int get_highest_allowed_voltage_level(uint32_t chip_family, uint32_t hw_internal_rev, uint32_t pci_revision_id)
                ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:737:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   unsigned int get_highest_allowed_voltage_level(uint32_t chip_family, uint32_t hw_internal_rev, uint32_t pci_revision_id)
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:787:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:787:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:67:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1320:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1320:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:78:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1424:1: error: unknown type name '__fpu'
   __fpu unsigned int dcn_find_dcfclk_suits_all(
   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1492:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1492:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:67:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1523:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^


vim +/__fpu +450 drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c

   449	
 > 450	static __fpu void dcn_bw_calc_rq_dlg_ttu(
   451			const struct dc *dc,
   452			const struct dcn_bw_internal_vars *v,
   453			struct pipe_ctx *pipe,
   454			int in_idx)
   455	{
   456		struct display_mode_lib *dml = (struct display_mode_lib *)(&dc->dml);
   457		struct _vcs_dpi_display_dlg_regs_st *dlg_regs = &pipe->dlg_regs;
   458		struct _vcs_dpi_display_ttu_regs_st *ttu_regs = &pipe->ttu_regs;
   459		struct _vcs_dpi_display_rq_regs_st *rq_regs = &pipe->rq_regs;
   460		struct _vcs_dpi_display_rq_params_st rq_param = {0};
   461		struct _vcs_dpi_display_dlg_sys_params_st dlg_sys_param = {0};
   462		struct _vcs_dpi_display_e2e_pipe_params_st input = { { { 0 } } };
   463		float total_active_bw = 0;
   464		float total_prefetch_bw = 0;
   465		int total_flip_bytes = 0;
   466		int i;
   467	
   468		memset(dlg_regs, 0, sizeof(*dlg_regs));
   469		memset(ttu_regs, 0, sizeof(*ttu_regs));
   470		memset(rq_regs, 0, sizeof(*rq_regs));
   471	
   472		for (i = 0; i < number_of_planes; i++) {
   473			total_active_bw += v->read_bandwidth[i];
   474			total_prefetch_bw += v->prefetch_bandwidth[i];
   475			total_flip_bytes += v->total_immediate_flip_bytes[i];
   476		}
   477		dlg_sys_param.total_flip_bw = v->return_bw - dcn_bw_max2(total_active_bw, total_prefetch_bw);
   478		if (dlg_sys_param.total_flip_bw < 0.0)
   479			dlg_sys_param.total_flip_bw = 0;
   480	
   481		dlg_sys_param.t_mclk_wm_us = v->dram_clock_change_watermark;
   482		dlg_sys_param.t_sr_wm_us = v->stutter_enter_plus_exit_watermark;
   483		dlg_sys_param.t_urg_wm_us = v->urgent_watermark;
   484		dlg_sys_param.t_extra_us = v->urgent_extra_latency;
   485		dlg_sys_param.deepsleep_dcfclk_mhz = v->dcf_clk_deep_sleep;
   486		dlg_sys_param.total_flip_bytes = total_flip_bytes;
   487	
   488		pipe_ctx_to_e2e_pipe_params(pipe, &input.pipe);
   489		input.clks_cfg.dcfclk_mhz = v->dcfclk;
   490		input.clks_cfg.dispclk_mhz = v->dispclk;
   491		input.clks_cfg.dppclk_mhz = v->dppclk;
   492		input.clks_cfg.refclk_mhz = dc->res_pool->ref_clocks.dchub_ref_clock_inKhz / 1000.0;
   493		input.clks_cfg.socclk_mhz = v->socclk;
   494		input.clks_cfg.voltage = v->voltage_level;
   495	//	dc->dml.logger = pool->base.logger;
   496		input.dout.output_format = (v->output_format[in_idx] == dcn_bw_420) ? dm_420 : dm_444;
   497		input.dout.output_type  = (v->output[in_idx] == dcn_bw_hdmi) ? dm_hdmi : dm_dp;
   498		//input[in_idx].dout.output_standard;
   499	
   500		/*todo: soc->sr_enter_plus_exit_time??*/
   501		dlg_sys_param.t_srx_delay_us = dc->dcn_ip->dcfclk_cstate_latency / v->dcf_clk_deep_sleep;
   502	
   503		dml1_rq_dlg_get_rq_params(dml, &rq_param, input.pipe.src);
   504		dml1_extract_rq_regs(dml, rq_regs, rq_param);
   505		dml1_rq_dlg_get_dlg_params(
   506				dml,
   507				dlg_regs,
   508				ttu_regs,
   509				rq_param.dlg,
   510				dlg_sys_param,
   511				input,
   512				true,
   513				true,
   514				v->pte_enable == dcn_bw_yes,
   515				pipe->plane_state->flip_immediate);
   516	}
   517	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102200927.zeXgp8Px-lkp%40intel.com.

--FCuugMFkClbJLl1L
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKhkMGAAAy5jb25maWcAlDxdd9u2ku/9FTrty92HNpbtOMnu8QNIghIqkmAAUJL9gqPY
Suq9tuUrO23z73cG4AcAgna3557caGYw+JpvDPPLT7/MyPeXw8Pu5e5md3//Y/Zt/7g/7l72
t7Ovd/f7/5llfFZxNaMZU78BcXH3+P3vd0+Hv/bHp5vZ+9/m899OZqv98XF/P0sPj1/vvn2H
0XeHx59++SnlVc4WOk31mgrJeKUV3arLn2/ud4/fZn/uj89AN5uf/nYCPP717e7lv9+9gz8f
7o7Hw/Hd/f2fD/rpePjf/c3L7ObT+dmnm93Zxdn56dcvFyfzs/nHD7cnu4tPu/3XT6cfzi4+
vZ+ff7j4r5+7WRfDtJcnHbDIxjCgY1KnBakWlz8cQgAWRTaADEU/fH56Av/15A5jHwPcl0Rq
Iku94Io77HyE5o2qGxXFs6pgFR1QTHzWGy5WAyRpWJEpVlKtSFJQLblwWKmloAQ2VOUc/gAS
iUPhgn6ZLcxt38+e9y/fn4YrYxVTmlZrTQRsjpVMXZ6d9ivjZc1gEkWlM0nBU1J0Z/Dzz97K
tCSFcoBLsqZ6RUVFC724ZvXAxcVsrwe4T/zLzAdvr2d3z7PHwwvuoxuS0Zw0hTJ7cebuwEsu
VUVKevnzvx4Pj3sQnJ6r3JDaZTggruSa1Wlksg1R6VJ/bmjj3FMquJS6pCUXV5ooRdLlgGwk
LVgS7JwI4EIa0DWYCs6z6O4Jrnz2/P3L84/nl/3DcE8LWlHBUiMRcsk3A7sQowu6pkUcX7KF
IArvzVmNyAAl4Sy0oJJWWXxounRvDyEZLwmrfJhkZYxILxkVuOUrH5sTqShnAxqWU2UFyNZ4
EaVkOGYSEV1PzkVKs1YvmKv3siZC0pZjf+/ujjOaNItc+vKxf7ydHb4GtxSuyOjnerjYAJ2C
Bq3gkirlbNMIBNoBxdKVTgQnWUpctYuMfpWs5FI3dUYU7URL3T2AJY5Jl5mTVxTkx2FVcb28
RiNQGoHpDwmANczBMxZTEDuKwS26Yyw0b4oiMgT+D/2FVoKkK++WQoy90GCJjjCzxRKl2NyA
EaL+xkab78bUgtKyVsCq8lbcwde8aCpFxFXUULRUkU1141MOw7srSOvmndo9/3v2AsuZ7WBp
zy+7l+fZ7ubm8P3x5e7x23ApayZgdN1okhoe9mD6mc2d+ejoCiNsdAVGYE0ji44Rg0T5SmXE
21uUa9lkugSNI+uFr621ZN6P3jxnTKIny9zL+gfH1EsILJZJXnRmzRyzSJuZjIg5XIkGnHuM
8FPTLchz7A6lJXaHByDwsNLwaPUughqBmozG4CjjAQIZSwVGZNBCB1NROGhJF2lSMGMC+vPz
9+976IRVp6l7Amxl/xLZP1stwW565rjgyCgHV8NydTn/4MLxLkqydfGngzqwSq0gPshpyOPM
Xpq8+WN/+/1+f5x93e9evh/3zwbcbimC9UynbOoaYiGpq6YkOiEQw6W+KbFhFqxifvrR3X+6
ELypZcwuLWm6qjkMQaOiuPAMRCvojeKGwVQckUsQdTAGKVjiLEokaEHi1iUpVjB4bSIbER+c
cI42ZuICYdO8Bn1l1xRNJ9pt+L8SzsbbSkgm4S8Rbka/QYQyDDJTDmIM7oVoinFjFcQV/5yM
ixq8PgRWwoGj81QFaGZKa2USCtSOwNTUqaxXsClQftzVgLUK7e6wBFPDIBITMS1fUFWCCuqR
x7bXNwLnNkpx7BmXbDs4HU/kw9+6Kh1LCCGGQzC1n4RAqILO091S3oBrjGyH1twnlGxRkSKP
y49Z9ATORBk+rmO5hGDXnYMwHmXBuG5E4Jq6Idmawbba03XODVgnRAiICZ20AEmuSjmGaO9q
eqg5MtQs9HTuSpM67+aMLApFxPil3ImD+9hsWJnG8QkEJbEQziGTVxXEYoHlgMDzc+ziyoRm
Gc1CKYcV6TBcrNP5yXnn7tqsvN4fvx6OD7vHm/2M/rl/BIdJwHim6DIh9rEBSDt84BmNb/8h
xz5sKC0zG+x4SiCLJrGhtBvVlTVREL2uPDEtSBITNWDgk/EkbmthPBy9WNAutohyA6IcHDm6
TC1Aj3kZLmLAY3IEfj2uAU2eQ25cE5gPZAGSYnAQPivYObpEyDQUIzFpAzlUtLTmETJqlrM0
sI+14DkrPEdmLKHxSl6A6yf4/fg6vejlpD4ebvbPz4cjhMFPT4fjyxAaAR26ktWZ1IZ+kJQO
QQER2UKfb9ReWFXzDRUfEBoPmxH98XX0pxA9WqpzTADL4agFXYyhnp0q0B7E8hajvbSyVZW6
YErXZaZrhelWeCACksmtLsup5ZUl3D5LabAWq85l0wUrHlsEo7uJsDRJj5alk4B7PyqBRyWd
yg3OlnEuEtq6glZIxhLQq3Am+dmpFxTAeSZolqqMkSoWXAABnJOCA7M03m4vzm1sshGkrl1T
fnGeMCfLhFMMTGhZklqLCkNViOcgoLw8O3uNAJL++cc4QWdpOkZDvPoKHfKb+zkNVU2NRtPm
RoIS5/AxCu9QxoTrnAkwHumyqVYTdMZqxMkE5k3y8v0QOkPAoFntBA2QEqQrmy4MkuRaB2SR
F2Qhx3gUZ4hHx4hOkZcbClm08u7SF+POt1Vc1tTBUSKKq3HUQ6q2JMIbCPY/DgVTc+bOrkw8
zUvQvFwQSDGNjXMlx94ZueqiP51nwdKaLFno+cX79yfOKKyymbHjzXpuyQH2kUO3iJGbZwkV
NpjF6E+yxI0H24wEjgdk6w10xatrKnhrQKMpTQNeIAmNSUY2ztHUC1sPNsU/eXnuWSPItkGy
QdZ9DluWBjxZWre1gTF8uQ5hkMpC5hryDMciBKtttejd0P3uBcMKxwt51tVY/2odd/IgNbHK
nDscQjgWnhZYdHDDrnnLVMwjt4M1isLiykuTeRvjYO0vtjScIM3jRRizhBIpYll2Uq4ZD9a7
dsL/FcRXi8YrwlM8UIwsCJZs/LGxG+S5tcZgHkrID1hQ60J5soWfXAkZ3YJRLbxwzDYlL2IJ
ot1mDdnWFlTZs1llzbyqA/4GyVzEDsSI18fT95/8PfjSZpZChYB0teCLhRciddSgJNQrm1C6
dEpxs/y4/8/3/ePNj9nzze7eq76ZsxDUqWB1EL3gayzyC3QLE+hx0bRHg/FW0QPuKbrKGDJy
EvYJDzweguojiZ/1RCkx2QHN9Fm/PoRXGYXVxPPF6AiUFirWo4rj66OMM2gUi5aL3ZN2KxoP
cQrnPGL4/hQmxndbBvR4zf+/HU7urJfIr6FEzm6Pd3922dtQHo2IbseD3d7v21EA6jkj2LW0
pnCaFTSa/w0DHIjLuDupz1QvamO83DcUUL40yndk+t389fCEz8lenrq81vOTk+ihAur0/STq
zB/lsXNig+X15dx5w7UhyFJgbT20j2A5K0lS9PikwBQ/wr+AwVj0kgpTP3wpdKbiqi6axShR
AtbmNRFG1azC8Czm2ExAYCJHDAUwPKFEhiFFm72075DthG/RCPhb4C0gdO9jj5YwJ6xo/CrG
im6jiZSBQ3A7iniwNGKRdSMWmC47z4GwI0yhSeK/Gzlg8wwdMweCyKXOGjcjykkAwHcLU0fH
PGkItpvSjeR5Bp7fFqX7fAKsA9oYPHpTWUYi0JugRmNPqaBSWi5hJAfXlaruLEugKEIK8xwJ
BO0FTaJbI+nVKIfbWjYLqookdxbAioIuQGLbQFavSdHQy5O/39/ud7df9vuvJ/Y/13eer0yG
IkNBvegQU6EXpjVh5b9tSmjBfWRqih4hrc108Q3hmleUiwzC//mZN4WAKEYSrsN4zuquLKNv
cRjf0Ar9RMFkUGJJy8zEQ0PnAN2CsmtFBBymRPgwiQ3a4zFezCLYOLK/cu808TpX9GrqME0A
A2pkU6CwNNcZy/6aJYg8yCcxQZexocn3Z8emBklOS++ojCx0kaQ+YKFKd26X46A1FYY0wNL2
aLiZH0gDz3MMk07+vjnx/xvMhensAB7iNbJ6eSVZSgbCkMDoybigh+FxA7d+bW595HO7qtnu
ePPH3cv+Bl+Wfr3dP8GG948v4+OzxqYt6HoGLwajRR4YCgZXZHADnNsanxN+GMoePPDs08B+
d7+DkdMFSWgsTuK1ChNHw5nmOUsZpjINuDK2qPAZK03BeAVWB20fPhoqVukEe2WctQgaZ87g
GLCqgnoaoFbRAZOcppbfsoG4DJOV8atQ3lTGS7fJAat+p2nY8wJk3jPM0JNjOC45dyoYncpg
ZoMRU2vRIt4NzJdi+ZWWvBGjdWGDF9iBtnMq3BVWLjVIry3utPfRarNHJ92cJHwgiOwKq0em
aSnj4VM9lrcx4GhqsI4KTgmOy6+TDPz9yuoAx+i5XbPvcYcjHYTUq/ppCAGWMNg6d6y5R9H4
0v0GiXU77Dr0mhti03WJVkhj7AZBOriXcnR17TmZ1+m0rLfpMoybNpSsurALWH1umIhPZ9wg
thZ1LXIRorbc+I9oeZE59LHzlTRFgldQgxvp/Fh0SDrZh2PQINpg7b1+GwTH+1TeoPC7Sqzl
eLO1pFPQCsMhtF8Y7uDlR7fOc2wuEeoqwIIOdkEVTfHJxZEpnjUQxBnDB7bbVAEjq6RbptD8
mI43FP2IKTDDjTfy5HJYn1fEDmucHm4obkdGO5XrKSYuSVDYhg0y++LRl5Rja63WgpRgkJ0p
0gICNI0voBuwIg4C5VWyRRspOQPsKlo0CUxyiz07hVUaKYgcKYYAWvE2bBnqbmDB3OfHyfSp
fZqFmCwVV7WKKdtUO4JfjzX1R2N1zMNfF28tUr7+9cvueX87+7cN0p6Oh693bV1pyI+BrI16
XlupIWtjgPaNe3jre22m8EHwjdBmqKfpEjsKXH9rHtFlibOfBDri1fIMqA3eC05i76UtTVMh
fnKwRUfDa8d1TrOXIu060InfBNERRNtkWiQKobBhUDiuQ5nG5Lc52JbmkAlKy0aXTErbhFdS
U3eCoNDIVbzsWoExApW5KhNexEmUYGVHt8Lmh8n1SdvDVkB40zjGP2nfOPufK8imJAPr8Nmv
Onf9SIlcRIFen/PQvKToQjDXDo9QWs1Phvi3Q2MOmPmj2mTNuk3h4zaJ96LagnQZL9fbSVCR
wx5f9xjwRar23+49Atux35mUWIZR744vd6hqM/Xjae+kEqYtwASqJFtj/dJTCwL5RDXQRBdA
2PYNCi7zOEXHoQRTPFB4C4A8i706uCRpfGgpMy7fWFmRlW9QyMXE9INuFCD6E0fQJ+yVt8Yu
fSGiJDEEzVl8T/hFwMXHNxbkSGeMqiuCBhLhqeHoWRSlrPys65SNYBhXmdqr/XKAD02SjpgB
HeO2OIINeeHTj4NeXSXR/rgOn+SfXSfkzzdINRZ2HM8pq/nwq6lahcFap7H2o+Cp97JEQeyU
alE6HzsYD2UHg97wTeXaALGR4N0nkOZsJ3BDdFAyvnFMWPi7J6yQCXiagtQ12nKSZcbs23eE
9kLo3/ub7y+7L/d784XVzLRSvThXk7AqL5VfJeiDtTEKfvhFhpZIpoK54UwLBj/jvbjhWEzR
ojI5tVazkXL/cDj+mJW7x923/UO0LvJqhXOoXpakakgM41RhsU/CtGvW4DKDaqpTJt1i5ZrG
UGv4A2PfvpI6KHFIM9Xkih+m6IXrI83VryitTXdf2BTkl9xjdsh2FCmr4liEPndvBu48nbBg
JrkVFHUi+AKg/5onNgpjZZRKrcKGm5V0Trt7czMHVrLKjLk8P/l0EVfK6ecAHzMRqIxTt1hB
H5LsKiVgczzxLUmU6XXNedw/XydNLBK9NgEt93Sjg41eZ7uYvS0B2RaXtsblnSIVAsM0JRpQ
A3Nn5nO0oQyfdc2C4+x6yHAU9i6uPd62F2ZtqjPukttHCVxwPH4B8Z16MvEmNGkw8fKLaYUf
2Fc0xtkWGLHH9nfWf/WS7f+8u9nPsv4l0yX2HJvNAjxQ+KP9zkv6wKFHeziglBmtSZr4+SCe
yGjVHlFwNqU/RynZCBD98qzDmWPOx43CiMcCUggL2mQRJGyK2T3b4dcGwcaV3x6LMOxwBnB8
Y+BXg2lpSoKdJoJlIKkUzLCPYHztA2rBRrMTySZeSPBY4Tq0airzMvA61XQXb0+CBbvwzg1i
om8iRkjFKf4RE+b2ydYTQQcIhnwKI5e1Z2BcnKg9S2azhJTNbg6PL8fDPX7jchuqirk4IiBR
8JumzT622CG81dUmbgdxbK7gz3n0URzRmIYR72bxSyQiIiDzPa0vBAgZfaHUI4Yvo2Krnr6d
dlepr6HerrbIe2JL6zMISspAY7E4AC7T+3YD5yJYHg0PwAKN2j/485p9qWVTZVh9ptML9AhR
z6aEWUBc4H9i64HtoT8EJ1TSjBFFV5MaItJSqiRcPaT/1UJGUtVs/3z37XGzO+6NPKYH+Isc
dYoj52wTLDTbjOXCQPFjlji0G+CtjW6vKj5przUrtxfTEgOejIj52XZSqMxzq8LCJc49ITgF
uQIpSUlNA2Fmgf2n+nPKy1BowOhkRH8caynkhOBpL16ZmpqCSKEX4emumAj8CzXL0Xi7vtuh
0s9bDa1R7/mn81fnhtysXjIqxgsPzEobJLwmLTZtOHwBK3Z3j+h9KE2BJPOErSkrjGBEZ3uF
meW2u93jZyoGPVjS52iTKU6ZkoxWGGx0ojgpNL9/OJ2PJWbojHpz5j7xjxv53gHQx9unw91j
uFbsrjfdG/FqgjuwZ/X8193LzR9vuhS5gf8xlS4VTY2ZcJhOsxg4gD/IXAEsIZIMf5uKsE6Z
+3gAwxLTiNMu+Neb3fF29uV4d/vNLZFdQaZAXPNlAJqfRu/KIsHV8OUreMUiCtCiuFyyxN1A
dvHh1OlCZR9PTz6dDoVKewBDC4SrOoLULPO/ihs6Du5u2mh4xsdNb419zFjSovbDkqF3ma5V
WU/ULWEpVUbweSYu0cKyz5koN5CL2c+CR8vM744Pf6Fu3x9Avo/DneQbc6Fu/aQHmQQnw297
naqFaabpZnO6bIZR5g3ZbjfG1EH30bR70gNlV36PKkq4o24i8/CD5eauQOJVQU3J3sVOXAgW
kjMBRiwWSLZouhb+w4mFY5LWjtW2Gy9mokv9mUu9avAfbGn/QZYhsUYOxHxr2PIxPRKx5jwz
viMK/2kX52Muk2oYLnH0uingB0kgSFNet73k+AWF26hNF15Ca39rdpqOYLJgJY59COCb+QiE
pbkxT/dfHMBuKLkkwgpk7soWonJj/bsnT//VbKyefUPVrcllPX0Fl9++ZGBPoy7i4WCi5prU
saTMYLZeHoXOvQBDVumiTqPsMPSARJvFTSH2bpXmHuJvaUs2xjk9Xt0m+4uvpHMppXJsPvww
QoT44L3jaXd89kvRCl/eP5jyuM9PJ2l5AYFbi3LLSoB0y+oTGwIqno8JHLR9McIGrAVVZOHv
oEUqsfXhKD81nGVkxSBX5ouKbsURVMaEKdtctS9sv84nGZhWLNPqSrM4M0uGjUe8Kq5ckR2f
uLmIBv4KYRPW5+1nu+q4e3y+N/9m16zY/RhdTVKswESNTt+sffLU7aOFiH/9nUe/sakA7Dp1
/K3FJvby0JJ2Wp5n2gNIab8AG3xfOTGnERBsYHgIrt2+02DJGf8tov4bJUHKd4KX7/L73TPE
QH/cPY0DKCOaOfOv63ea0TSwmwjHrvgO7At3zvAB0PwDDBNv2wpXV+uEVCu9YZla6rnPPMCe
voo997E4P/s/zq6luXFbWe/vr9DqVlJ1coYPkaIWWUAkZSEmSJqgZHo2KmfGOXFlXjV26iT/
/qIBPvBo0Km78IzdX+NJoNFoNBohQosQGmxPILKbgxBW8L7A2ibUEeJpFMBwE8JO1qH7ZImI
/dZnk5kceOlRjVc+otqgPH77pl2xgEMPxfX4AW7J6jJeVldoF6L10J9w6OOXRGB8xw8XpEzJ
kyjIi9ZudV32EvJm2/MkQS04AKqd4wVuZXZ2F8EWx+rTZV/1Rh+o0CxPn377CTYCj89fnj5u
RJ7jEoFPipblSWINKUWDu5VHOqCQZf2UXQUbejGprTnGq44wu/vak9NEfQ70xRospVgE7XJs
Is8vf/zUfPkphz5xDNlGJkWT38RoJ7/dfzKvWijuZk8CxfIslpKsLmt1I8klqkACD9f7jvZ4
stkihybnhPFzfWOPoQluelwD1nmiAUTdzco0JvfXsQFK2j7+951Yux7FLvOT7IXNb2rKLrtp
pF/E/p1U1GyFBkizrQuK5gmGSu4rbawRszayWz4jQkk5eRokecS+66ZBch2VCATJwXyNVLFn
ZYVWg5HuUla4mXcpr8pBbYwjjyFsyQ1ntNnAjFhbF+CWjhlq4peEkgWUUXrE1diZ6XJMw0Co
AtiNoqXCQ4727/VY5T3WwQW50BodBv0w7OviyHK0VUfO3qivmCMDZkmYGUCFT4Itmj0o76vt
7G+RKrPBnrOqJdJ2jxXDexZHV9FGfJOwZFxyj0PLzAKX/NZqPMcswga5NLRh47wjnNQIoBaz
6oZNAoI9v3wwJYDQ9MYTBzc5/AORKF1EGofQvioov21qsLU7S0CZ50KQ/0eIbjduypxeMDkL
+kgHK9uJiA0rGgbJ5jxI//vFMQMpfMLkeiGrWLVF0W3+V/0fbdqcbT6rM1x0gZZs5tpwJ4PG
LhrqWMTbGZttPh+odyCdHtqys7ad04a81y/EHPWeFNs6sFnYJ9k6Dhf7iv6AZSzQYwWXtfWr
A4KoDvJR6LY5/GIQioeaMGpUcHL4MWiG9aE5ynCqQlzD/GI20FQXs1TlTfRgFszI7KAhxm0J
jhOW1wCDWB1zPAyxnzGDekyEzxZBMBunQjP1eqRHfC+n8fCzjP/5Fpsy/6IuLYqHDFm226dY
TcIow6INTXDdyCZY3p5i9+pM3vrCSvcQC6hKr/rsZCFBbNsKaZRjEulPetkSOd0z1BNHgkdy
6CDaxmeTanwESVKXDlEl0mjJLBU1g9S0By5r3nT8WlEeV5cgMtZtUiRRMlyLtsFnU3Fm7MEb
4gIiVTBshQaX+b7RJG5Pj8yJeyaJu2EI8cxzvo8jvg1CpACpEon9vtFjYlmpGn7uIEBPd4F4
S9ghfnulVaMnk6azvBGKQYnGgJM4eIB15iwhbcH3WRARjx825VW0D4IYyVJBkXbzfPpKvUAg
XI1WzgQdTuFuh+33JgZZoX0w6IlPLE/jJMJkLA/TzIjw1AoB0p7OnnBquPqun0cp6/H8zccD
e14cS11PoRzusnKjlu2lhbBAaMHyYPNEb8uH65lj9tI8GoWcWp1LsWgxd2VWdDFwIs3gMRLh
RnT+sNRxJDMypNkucej7OB8MKTXSadFfs/2pLTmuaI9sZRkGwRad01bll6T5YSfUYZhAjkTr
n/56fNnQLy+v3//8LGPyvfz++F1sK1/Bvgf5bD6BuvBRSIfnb/CrHjvi/5EaEyzSfD/30+gp
wXvSGsYcsdG8v8NkaZmfjCkpBwmpcghRmqNq9TSKxl2dmVIC1mBZxhM5kJpcCa6YnOGmJW4Z
0aXrLE3kHbBCj9FflLPp+9PT44vQ056eNsXXD7J7pbX13fPHJ/j59/eXV2lg+f3p07d3z19+
+7r5+mUjMlDKlCbDBe06HMtOetIaZcHlKDA+mUTSq5uizloGIBcoJpMEdGMsDopyXWOfS3LL
kcubUwGx1b6l+OZCSysyxYaJbC9EZqUN7O8mR3fRYWCiEozTzHn365//+e35L70Lp9zdnYlW
rjwjOh6Xg2iq5/7iShUtrfL9clrTHI+HhnSY5+nEsthf3NRtT9MIWwGtWntKJ2We4tv5maOi
YTLEWOGEFbvtauKcFel2wNL2HT1WaDzaOS1Pkgi55QP0OMDyPLV9nOL+PhPLL0Ix71C9a+Lg
ObzT4RbbUoo2hPZZuMM3zBpLFGLLvMEwuGXWPNttwwSpTJFHgfhucD1yBa3Lexfll/tbjpCp
POpCgCqL8jBAasGrfB+UaYp/XyY0mJU2XygR+Q4D0uw+z9I8CELfFJymH1w6mwyjzsyTN9KE
ONSOgwgtZCAurfXAZf51tQsYc968/v3tafODWOf++Nfm9fHb0782efGTWI1/dGc7N4M/nTpF
RaPRTOCNFk5qouUnq2659BypzSNPiYwxzXDVDBh4Tmp15u9oCLKZ/bSev1h9yFuK9ZpYJriX
XtGD+M9QUidIujhyhp12KJ6unbNdDOJWDf/HbPr99IaJplsDIg9CnSipzliN769iHA5ygPiq
dWo5cdojEu4HVABOsOoFnUikD5RFIzmUbVNpvjPmx0gAqSo9lqHyYhejxXGdOMCUAE4qFXm4
Mv5zAnFPln3JyKTi+0+eNmgPTazK8UQ5lWO7LYMNYqP/jJTXldKbqO/HoJ/+sQop9v5+FfB+
OxjSeCSpGvgzZhfusT6P8Jlh2qQqFW5disFkfyVwmu2coVGKgiLcG4uJ3YSURUI8i6Ud014n
DnvjMQPuuGJi8UOpEcw6CJHEhXQPowxLtYZH6Exm4J56h+vIkuN85Kcc9+ufcKGbKmdJP9cJ
Trm9soI9dAenaoKI7etVtWvdJD6T5ou92n5bLQVDHO5De2IexwscKNU8RpLITdHbgpy29pcC
WwmyGk1k9xPAfSHUyD6hJNT1GEltW2Lnz5hNeU/ba9m2YWr1hgQ4+LflfWdhvC8Hu2MfWBLn
mZiUkReREaiUaRSuRcrdS+jjHS2bPRG7mTD1cMFAlhzp1sdheIJJ8E6snmIUiMFvd1iRx/vk
L6fvCWS232EmR4nfF7twPzjJ3pBOLcsC1Jol0fH2rp3ntPr5zaeq6JM9tk/XriD2bBDUk/jI
927VT9cSNeVNKKnOxFmyLeVMk9fonpEV7k6R6cfWQiLSuiSdQQKBGDiU0KW4TNvEUF5ZsRhs
cdEt1ksYhJ7nV+QlxBWdt2BTfCy3nYXhqVIwd7As0OF8NEfCxD66VzFSC1W+k5eY8VMkyITC
+Q3l+pEYXLKHeBhiOoOTK9FPvQsIGsHFvq0tC6tsGcwAL4XXpJXPhOn59CcqvZsuFEJvUNN7
APLz9KOApJuCuuyp51geuPm3ecQJedoezgvEKET+MtKb6pggQMxtg7BY9lGqkCkegPce4ORF
aGO3prDfANKgs3n1B76bdOHG2Y8VuS0fjILBI6THSJOvSCf06hMEtuPUuGG8yghBpJq6IN0D
XKvxPPKy5HAscytrdfMATwRPRMmhYQ6DJZaI8S1lnJDl7EGeoTjHO30u0jvOjBoIkXbMaQjU
Vgo+N0XVNC14oo/FaXL30C60xRXyzLHoILQsy00Y77ebH47P35/uxc+P7t5X6PTlPe20KTJR
rs1JV09msqiE4cgyA3XDLWE3hXNYq4kmMUkuPkIDEVelEzmufdcX5jb1y7c/X73be1rDo6if
jT+Fulxwm3Y8wnkqhFq1EXW7/xaczS2EEQgUMiKzc+wneFjuGV6y+e3ROEEbEzUQUae8OJmN
dDEyyFlzZbNQnndlWV+Hn8Mg2q7zPPy8SzOT5ZfmQRW97IAlvbxYh5wWCi50n/X+9t29VgnE
xJXGyqUVE0WocYaBUqO3ic9L0WTKMqSiFsseL6O/PeBbjZnlrg+DBLNHGRw7TUXQgChMMSCv
Wr4LwwGtE7ig34JLd5ol61Wrbq3a2wxlu491O8AMyFDaWOEAXOFdL/Qtopmtz0m6DVMkZ4Fk
2zBDEDU3EKBiWRzFHiDGAKGr7+JkjyHm4cBCb7sQtXbPHLy+8Gt73xlr2oxShn8ssRPvUavw
zNG0ZQ0rBF6vllHYW2AWi+WbNFVxpEIQjm9zubXjfXNP7glWcS7nHtjwMPBcixGEVoyfVLrV
LutZWyLZgg/jFhsbLLr2zTk/qT52Cx3eno7wAvLVEw58YiGtmFv492L9rexz/Fx9EZoruJCY
HOK2r7DIMKK4mWpkgF5QQtkrY+2wOoqaZWKzlwbDtalFo7yJJdvEZS8sRGwyzcMVnQ4nritV
Vw4Soo9lG7wVODASJoFdchkPgdiE9L3cO1g5q1cJvTmKBoEx8EIP8voTkn6cS+Ms9neskB67
dB9fT6IRullnhJmQYG7VpWQ8lCXcHXSKlmBRwhuUuOlOY5MN8FaO9FTezevLyK4BzMeW1CPs
oEP/yx7pFHiUQohe9NRTcjyUBFYcN2nOwmDvTdaVN+dK3kObu9Ee5C1PkyjM4Huob+7N7Dxp
ZXbtScUI/wcZtPkxCdI4hufNsJF1zBLU6DLi92z5tA4iPxg6HLoG3msG9yD48DZLQXZRFozd
4yiRBdkHSYRPUIklfiyNfRN7qGJ8ZkvAntoGD2Wio3Ok9+gdj9K9f8jmjMRB4EyYkTw6cNh5
FiVpIVh/JX47kLVJU3SXCATe2I/eaki+NPH2t4R3Plg6A8nJYi1Oo8qfR7tJ+HhrwHsQQaH9
bTpGt9MmUSdZHSNpnGGOSBI6BrF2D3WkgEMabayMo2J0obH5w9ChRDYlDozL5Yq2Rb/PCGId
oqBka+eeJNMR6enx+0d5S5q+azb28aHZKMQBVXH8bSS40izY6iZjSRR7NUvHGek5bTnmvqbg
ih4EbGfWkXubNDqjDa2YPW6C0WFJIXYNeMQ8j4eqtF2OZtliNWsq0Suk5a0NCB1vS/EKKGWf
4z4IZ2673o7ADWGl/ajkRLvWXOy1VhJdK21IzMSSncPgNtRrOGNHocdYfpyjIQEbQbORAbMB
qHtUvz9+f/zwClEm3BvWvcdAC31BKhV91hflq5PPnmCejK25uT+IxcY8+KNCblzVW8+o/gPw
bc6FUqU5hxPeQgRDoEsGA6zbnIHAwtEx6aFHMEE5jOfD0grWHY0Xq073y9sXNkm98Uwb68nm
BT+QbYxtwhaOOdIoknp8Mm81vbyJonftAjmXTxyOnFzoGW0Y0x+aXMgqiBCGQP9j9CkuEIbl
ed+ZFu0FG2h7KtGlh7QtXOCfb7CMpzkfkGE+pgA/Aib0yK3xQtVC3ZpOwnkXbQd0AnqLmk2m
5cW4kiD+vrUGh4z4ji0g5H40/GlnL2RQdLg8HiWplq15G0FMpZv8VILNFEbkAvS5+Gnxsdsa
9ZKcFBtsIwLL93yBDoGooNSlfkaio/X50vRmACWAZX6oeAEUjnR7NI4goADB2cjwgLRDTIw4
ft9GW+/uTqxj1YMvVoMrNJfvpHqvO/PefnLMwMClRkVPcQ22okqunVYP2wFdJjfwcHnIJNth
jCVNvqety1xBZOdhmiPsz0+vz98+Pf0lGgSFyzu3SPwm+Ym7g1ooRaZVVdY3HtuAKsF3f22B
VTWcdFWfb+MgXUna5mSfbEMssYL+WktMayFdKiyx2Mh5EhblG0lZNeRtVaBDZrWP9VLGgDtm
xEkAODPCu8iPUd00RozZiSh6YDZHi8Jm1QCCjCwfdhSQG5GzoP/+9eV1NXCVypyGSZyYQ0kS
09iuhvJ3/dsaP6zYJbhv6QhnYYgtirJv6JCcisjOk2boab+EDN8/oID/6db+erUMgIqpvxK9
0IISMVjPZlacCvVunzjENA4c2j4dTNpFj9g1EoS4mp2tQQj8/fL69HnzK0SGGcME/PBZfKVP
f2+ePv/69PHj08fNu5Hrp69ffgL36R/t72UGWJQ0qe5Yn7DfhxaXoIj9qIwrO8C9MwaxuiqL
aRgosT/HAQ78RFPQvfWI3za1VaslaKIuuSBUqG2dl3NRXTD2zlROb2oZZcu8xG+Bsnle1PVg
txlMX3CJ0huhfVQNqrcKvDyy2Bm/5U0UYPseiUmdKrGTrMjVk9gZVqQuLMMcTAaGO80oTAjd
1mMQAbxpjbMToP3yfrvLArP/xL4rurVWmtZaulifJsNg03ZpFFoJL+l2kIymqB1QqwdMVKXm
2wkaeeDgbXpjxQwxwXvsqpoUJDnxDJGWiaHc2rVoa+xYQyKDNRcEYR6bRh7qCp133HfUsN+C
5InzaBsG9kjgJxn6EXVCVQKL9aWdFe2O1orUWxyw2zhu7Uor8s5XVH+OA7eC5zoV2/ToHveM
lCwP9d1ZbMZ8U03ez78eWtbamU8RN71ZTwzXoyfvJZ6tlfU985xzQIVUPFr8zhowuJF5dbBy
5vNQtbh3rxwLKozw+CKC0FW/PH6CVeWdWu0fPz5+e/Wt8gVthAS5niNrCBRVHVlD3b7oLItu
Dk1/PL9/f204PZpYT2t5v9Buy4XCJXX7Ao+sffP6u1Kaxqpr66GtnSIamL6aqMMyCINdW27u
Aj1yimpuXgXKHuVo5G8JYVN5XFrVRcSVdPKyJ9zEt5chcFPDVjeggw7oLE3Ksc2zpdE3HXN+
sSa486LmQJkCdumeUfcagPv70ZZKnlPucXVufXTUkfyk+/ee5A2FZTek7KmcWmFsFvKnZ7iA
qcXDhxshJ90bsm2tN3i560aotOeWT/mhEW9FwrySb37eyr03ag+bedywAQs2akFzqf+Rz4y9
fv3uavR9K+r09cMfNlB+kQ+NtKeHih424IVTl/19091C5CxpG+A9YRBja/P6dQPXKcXME5Li
o4xyJ8SHzPXl3/q9Vrewue7jRskJYzkC15uuOetP2wk60x17NH7YXU3vi5op4De8CAUsg1Q9
HqfKxj7DWCvC412kx5qd6EIfFp9ga5YuEWbY0yfygYVZhgZ+HxkKkiXBtT23aHKhSIUZKt0n
Dpa3UcyDzLQN2KgxjkcMnMTtF+htliFMgrXSxap+HNxi1RGlSxclljVF6tnkZaU/WTvXHy4Y
yhjs3H7pfk7qC7w/f0pp173Bj2tsLty7yObyhEGfvnnOoixc/WqSJU6w9shNk0+1n5jyh5ta
bIqMmTJhNceyrXn7VqY1j3w5tjhwKLvKiI2uTZ/Ax3493GzzHq2j0txXqmgoyRoxSgYsQ0B2
q7OHMywdae+yIH1jxABPts5D27ttEGL+AhoHlIQPBAGhB/QaRxpIvzInsWhYFkXr4xR40hR3
JtR59m/xFGyfhsl6N2fDbuvKU5m9fjfGAJLYA+x8KfaIZFZA6il8n7kp7nK+DZDayo0X5wcq
3WpQmZrvwlVxLxiMezEzvWBpitOzbYJ9YV4Mybq0Es0LUS9NjSFKkHlatYRzMARMelQn1IyX
x5fNt+cvH16/f8IU7yltJxZf61qgXerp2h6RNUDRr6Ocd0FY+q++VQBSlqy84Oe2OleXkd1u
v18brgsbOjG1XNZ6d2bb7ddz+UeZ7LEPpaHhCrpD1/8lMXab3uUK1zNJ1wejxvjP2pu+Ud4/
/dLZuvBaGNFoPw7bduUzxAQdL917glmmNTha+XhbbCVdUFSHWGDMmu1yIXJ2ARGRuoB5sF5+
udbyhY2sDd/tAR0K3fsaj2WlZ8BPuwgNCmUzpZ5mSsw7gQW6i94aN5LJ84kBi/1F75KdH8u8
316i64v/yBaTf1T7eLUD1nQUxTQeAU2hoT3LiSP0x2i4Tg/MPgZOnRQCrwKstn5hS9cqLw2n
A6L4CiDFgVaPR6BTxdK/z9AlvrdOAwzguI3266u84krXtMzR+LpF1KYRwoe4BE9CPrxdA9aG
CWbdnZh6eL9OXrRz64A+fmRh16pY+1Izm9g9IdNphnlVIAqfnjpZgweOfimtkin68p/LFyIS
T4MjVK7qFTG+yfhS7Mfnx/7pD0RNG/MpIW6c4bcz68Ie4vWCCC6gs8awOupQSzqKTk7WRzvb
b81h2aXRmryWDOhgZX0WxutKCLBEa6MUahiiLU53KaqGA7Jbm3vAsEekuGwIOpqglul6LbNw
h+2NBD1DRTUg+zVdQDAkch+GNTDe78xunV8q9Qw4J3dwcSGu6LtQLig9dZvSs/ay2wXoLCjv
zrSih46eMZs57BAEqpkDFUEGlZQXgCvKaP9zEs6BXpqjteuYktDuznwXUNkP7U2IdIVxIuPo
YA6eN3aKXEZuwhSk/2PsSpobx5H1X/FtZiJmYghwP0IkJbFNiiyCklh1UWhsdbcjvFS4XPO6
368fLFywJOi+eMkvkcSOBJDIFPASulGNA/1y/f799ngnjnKAbZhIyf2ICc8MLtGjQcCLkU4e
bzkTycMv6yBOgv0+htcp+SiAJd4UXfe15VEGIRck8imJZRQwk4cdlUdjVq5HmwH3x0cf2M62
mR4e6h/Nz6RVDBEErSgzucKbxS9cPfGy7fkvD3lWmvmYerw+dhdg15kndzrO7fRd399X59yq
MtgLjICE845TZlTGeA5tCXI7sBdwvUkiGps1W7fiSZJVIfL23ylrMDNVD9Sg8GMZdyO1AxzE
WvbQzPHgQqI5ZGYqxz2pSZhjNjs1m6PRX2i5LfVLv5HcwPe/Ej3w+x7YAk0ySB3TSNW3l+EM
ujGYpqdMf2AmyOJ+3JVGRq5MIqNUPQ0S/bJekoGbbRWftTwz4WlIQug4RoDnLE/l8x2VKmLP
XvQLZAm4bs8lWrVWim9ObsIdlOgO4Vcm4dlgS1Bvf3y/vj5qypeUKd9m2/OnpJvOn3WWQ2tU
w44Hc7U7ungKDAarWWBsjUpJ1R2py3HDLSl9swlG6shvjDSOgecpI8yfnpkZ6NsywwkwUbL+
lnoeqIEA9S0Xy21utwNQ446n9HJdyWMvxImbQb5WcxVSvlezuhu3nnCLrNok9t3T6aRGGbUt
bttWJpQKJ7ZJqj551KAL2LFdaBSmCNsD/ks9JJB1rhy4deKrZ5YTkZ/RK56NgJaavcF+1oJO
M1HZfj20YtXVsIEMehYQmwOjYuvl3ur9NoXtcHP2h3qdMSGFhHBgJOpytn6iQZ1igIJLpxl0
81mFwOYzs2RAghBxenr/+Hl9NnVKrap3O7YgjU+MtcppsvtjqzYoKG1KI2JJio+if/3f02hK
U19/fGifPKPRjET4R2iUmWdBcorZrKA2r44l8ChTRA+QlaMqBJ1rWL7jHnVhoLtSrRKgrGod
0Oer5n/6PJnc9vtCtSqc6ZS/F9FzJgFecA9aSnWOxJ04EUEOuWudz6Qg3y0FPnrUeMBNvsqR
qE5ytaSqYbUOIGeWfPgIS+eBHumpHKE3wF+OE0eW4gTBQFLo0Yl0DMH7bb2/KBtj/kRXuimF
tvgCpce2rdSzN4VqRn/TMBFaQ8FyInFtmR63MiTPLhvSsyEA6aFyRZhTj1QRPteSOEqZXTsA
4rixFvfLxhdyT78tmlKTrE/SIIQU3IklO2MPacv0hPDmA++qVAa14TU6ctCV1WWiV8WO7SBP
vp1ispexALpRA3qPFUFVt22T1zpJtAq3+cLfbsO7kDm/Lv1m+iBj0PxZKAmRHlVjQpiSiWIv
WKvVkQXbYgWCdQ9BU1YmXwcruS1pywWr/WSCmOQk9eApYuLhqhl4dqgyJIqTn4luvlxYPipa
aE1i70chcmQYBWG8lp286EX8W8kbhZGds8nph92V6hbzU1YrhbSAqDcbqECsTwUoXBuqgiP1
bLkcwOKuC5QaO851FZ7w0y+Hia4vqJDrlngeWvXGD+JVFqEme+BlvsaCUWx37R057gr+3g2n
+mu2mWH0d7QycLo+9HwfKmHXs0lwvQa5LwcfPprfHotqzKD0+LBSwmNGkedhu0ONmymw/vM0
TUPocsdYesS/TMnNTdJoBi1PamXgqesHUzxtZXYO3pPHAVKUcY2u5XJBauSBp1M6h3J9pAOR
C0ihbDBA12ZUCMVwV1R4UgxOsgtHHw+qC1cVCNwAggrBgAg7UsRA1CUJhEAKYTYIkDP9WdAM
DOVlSw7ckT/bJlRQSv2R20zvhxYoCo8F3556m38ELqQiXU3thBn7QcruwmNPQ4024S09rjZc
TiPQmmDBEa+IP4GU0nMOU8DWkk9HEga9DO/ZZnpjA9yp4wAk2MahH4cUysi2ZzugY0960CnB
xLWrQpTQ2pbMAOzRGqrEHdPGQI/MC47BdOIYnsBhcCamfbmPkA8vAnM18eN0R6C5ieeXLACG
AlNvO4Qx0LeFB2Y1UMgMiLUghKpYQrHDcZHGpa94OgT7eZk52FIOTkAcwqC1p8aBwbYQUPBp
4shzlJtBa1MwV3VwbFcmp0eefoGrYQi+u9J4Imh7qHKot7wK3UexD7Q8j3cGzmoC8FNQVhQF
2AGErm+4s5VCSbLW96Bs9VkUBlCz1MVhi9Gmzj4dHHUXs9HtA529Vh+OL9TYBztRHcPKjMKw
vkAyBvhcd2EArXgVGCxFAsyVjAo0QFU7hmbtMGxUGKBNjgKH2Ac0GwEEwKInAUBtOfSZPIEq
qeFacObIerYBXptHOEfqBYDw+ZGuCVDiQxNlk2WXNtEj3ykYlD1xzZCCBojCi4I9TcNkrnLh
KHIAMTirbHgMga0jFse0nmzqS7bdto4YKhPXgbbHjse4aNdW1LLzQwyNWwaIFwYA0NIw8KAk
tIoS5AMTaVVjts0GqkIsKXHiBBbXiI6Z3U9W15RxBg+cM3gEx3pYWLAX++CQk1j4SXI2XSau
9cMPglVtmx8vRAm4rWAb7TReK3hbR3EU9B3QW4eCLVzAUPkSBvQX5CUEXILZJjTw2Pq88k3G
EvpRnELJj1meeuDdosqhBX2bgCFvCwTrBd8qVpI1odznJNPh7PlCtSyR+0Vbix3vv+zEdNNr
MWIm8r5HwITIyBiYQBnZ/wMkZxC36S5kAoo6QwG0ODIAIw9cCRkU8fPLlYqjNc2CuEYpoJbS
vqdxCEwAtK6ZQgHt3DKEkzxBwEAnOY0TDAEskwk4Mx0I9oDdL6erXiYUuo/h7U+fweFjJnhf
Z5B+1Nct8gCFStCBphB0oIiMLidSO2MMWT01YAwhAj51KkmURMTO26lPsA9Wwjnx49h3hMRR
eBIEBmZTOHiUJuvDAsDAbloAQBEEHejpks6HMzfnAz9Uscm2B5ZiCUWHHQAZ981CdSHaA/+R
xEPl9iV1OE6dmIq66HbFIfsqLyea7XYJAefZMl2674Q3WytrIsYG94rN43fqb80njilM067h
EQ+L9nIuHX64oRRbfuZA96SD7vahBNy/Jd/0ZwWUGbdIkBXML8C3IYed+GFX0F/Lk7yuIlXV
ZFzBgI4n26PSHxTitiu+QD0lL04qtNpNuFpTGm7rRtC0wZwZhGddt3Duh2fKleoiox6SuobS
zSz3/ir8pelKsFTLRNEWpFvJGj0ekhLKXNdk9+Kltjstt7Gz20FQ2UjzIan3ZXd/bpp8RWre
TFflRDkCJOzfnNhfE66iMfQpbroOfGUM5/Fxe+aOEN5frqpdvQBJ1pZ35aH3A28AeObr23W+
xUsr9CkhZ/P+dn18eHsBPzKWgr8sjxFabePx9flKnY42tXa1clPcA4WGDEco2HPmojnz7wit
bhdzGl/lhTYZ1Ij92rDiPp58KO8iOMMnCUNwnuhIHOLVQn9eLBk29vry4+frb2tNOz5aWvuY
S8pccWyabexWVe/vF1B8+8vP6zNrMrjPjV918kzyvw04jWL7u/N7FmuYihdTFvVM+myfNzub
YjjBmcmH5ky+NscegKRvYRnWVgZjzQEuHqpEeEXhQpR1f2aw7P5FzZyvHw+/P779dte+3z6e
Xm5vPz/udm+sUl7fNEunSQoP5So/wpc0IB86A9N6tG7vYjs0oKW3i70lmncOiE1VFyZ2vcSu
oEe02fZAC2pk5UuKnYS8O1zSvqiTORt+DiB0AJGvZmMZy3JlmCC3tSTEMa0h81mo/Wkx9gYV
WJpPWsasCB49qkOJv5Vlxy2HVlJPO2Cg+sd10ueOse08E1qnOPLA73JfOF3Nt/rrdcb5KKnT
YZ1N2tEHa8UYH3IApdj257z3kAc27Oj+bk1yfgaEykhRoEi+IKzJaw9D4HkJIHT0WQlKZcpb
15drcrtD2EcIksv0sqEE6JPTcyAF23r6IpR0nwGwtPIHW76nMR7g5pzGARkiH+xR0uYEw4KZ
gssGYO7wnlcP8bFqTXyS2wyk6zmoNX3ZbbmmsDY2ev6KBaoA4TrQpgsbGPmdedTT5nDZDZsN
VGAB2mLqIi9JX9xDfWTyHwpg40scx4isCI3Xh9non8NRixPafSNGTY6vv9aH8BjrY5VpXvPX
s9nnCDmmDFVFsCtoelMIjjBSlXWMPOQoPs1C3jPVti0j3/MKutGpo922IKq6cSCGmso56dom
Ubxzs9LPVNMkk2Gx5yd6grLetUxjk7RlH9PyUnjOcSQcqkZuvC3viTsx04YIdtXfvIx3vRo8
/VhXamtM9v3/+s/1x+1xURyy6/uj7lMmK9tspQewTMj44JOB/KcSGc+qRMoaum0oLZk2qMyU
dKP9wzO2b4TZ6sy6DIIFd31AhAj4RMDE4pAhwwAYz1ZZJyGgSA5YKqpwRv7rz9cH7tdvCgti
bbXqbW7o1pwyGdZq/W6bj4FVdi1shyJSUj9WzYgmmuZtrxZ7EfE+x+AkPU5iD8oR91R9pER1
nCjpPDTbtiqGrNF8fS3gvsrc2RUcVA0GwsmsQsPU05+XCHqehjGqzyd48HCBQ4s9V9ApUdmj
f1LNVz8HzEfUC82MmiTE0CCuEHxPPuMOs8oZdwTbnPEUNphZcOiWSbZ4mekP1XmTcw0cfP00
oyHW22HcAGi+D2d6aDa31PAdWZI7A0uMZuAsaJr7W07hTxHvN37qG5113K8Lb1pmVnZs6edO
N+llR+HYE6J5MyQ0NHdvMQ11BW1gH+1kCFmNjEOmunG6kZl9GQVsTnfGgBx5wnBw8+x77geY
N6sTZqVwvULjGlgJRk7kiHTfr2WHR+GpWG4cqxTn+EIjDBu4c/gXcvh2yeomd5zQcp77oob9
CHNQRpM0Oockhno/mN4w6NTJhNss2aQguzuFYAAduy1wEllfm0y9bWFJAJmUjHCSejGQKkmx
e3IQuOk0wsIheyqB9pEfGRUrvVAYtGmzrRd1eQVnVm1X9EfHN6f3A9qcNMVPNFYzm8HxIEwI
FhE69Ywvr/5UomW+LahZ2IcJPKYEfp94sCmTQOV20YnTIhNLqZuhDOJo+IRn7XmpYKhD8Ipa
YPdfEzYMlGmdbIbQM1d4svGRi9j0rV6TMgTvqGeyf54e3t9uz7eHj/e316eHH3fytWs5xR4H
Tqo4w7ioLEerf12Qlhnpw75TQ18JunyPr9HYpoXUvs+m2Z5mwDxdtX7qHKrj8xNTYFUf9c5n
+ubljxKQFw46JfT0eAGSFrvnU8kAPgde4NRYIecHEVauxTtos/wjEDpcDSoS3V1eMCTRJwVJ
kWt6nV9D2wVhVFsTYQhbJfQL+/5cBZ7vuYcVY4i8wGZQ5J4rhGMfUISr2g/teaQv603R5cTh
8FmwZH6YpJD6JVDx2FvvSsJxg/mlqsn2B7JzeNMQyl9XfuPbXLdWc66TQPf9M1J9tKYMmSYA
C81ul7PhLVZOHOcgseblZl/zI2jh/wREzIcteiqHB4FxovIx69Iup/ALj+Cgeu2Ppy3W3Lc1
srl40NCVmz3JCbf3NZ4kqKGqXLvD5bhoMeozSeYJxgJsy6Fgnaepem75rsZGm1l4yMMjqfjL
DnqsHfEEFnZuIyBMBMAEFjtTyHaJGopJg2rDuYkBRh706m5h4lvjRDc110HHg1SFKQ/9NIFy
Rw7sVwtX2bg1XpcsVkxQstyWOxB1c74g0CZYQVfcZ2hcpoN7gMsd4F7pbsb20EBCqATmnk9D
kGrspyEYeU4ETLMlh9APQ0enECgcJWBhGl+RWvSSVmzjGUJf5Wa8OEYE/ipbJyL/s4rnGkcM
6W4GC1jv4sXs4EJ8JxKCpTGf1yqIXLnARAyKVG/hC6Tsv0AsFKsdUCerGzSTDdymaUxJFKSO
PHDv7PBgH/dln8pOQ3DkCij2nbLFBvIvlQ98jGAwJR5e+VLi8FKvsGUtYhUJHdwoTG0YoAgs
bJskYerIAcMiSOVRWb7EKQYnTb4pRcghmWEY3rfpTGBoaJ0lcn49BbvvrOIDn2w3JeidXeHI
CFuiwE9Cu2QF3SYDaMStshy/FcgDp8/2xOZAuKgCStxQCgs811AKcX/XtfUeHt7jE/ecs6yW
RTIyHcz5kSPdXE5avM6FQbVb75tjtqdZV/DLlZ4Hx4JEdn2QeODyMh8dAEh9wo45hOK6JQ53
rDoXBZ0sKTxhncQR2BXlu3Io0/bOX8GqXYg8z5VxoRJvmsaMNOXgPHXFdnPcws0tWdrzZ4Im
XRsUIbYNl1Ndr6solJXYixzrMQMTK6g0zBXDb1kXLv6AA7H5ZzU39sZfx7AfgcNKbuWxDxcD
OihwMKXggBYY8sF1y3agYGDSTRmEyU04mGUoEqC9IxG26oDscdMJI4FrKyG3n5/PLxXZlLq3
jc4+shuRbDzNWxqNUw5NX24N59rC9kCg3MlP04EGFYJnxFVzBoXMtnLck6xh1MDQTd6dRPRi
WlSFCPazeKieNpMff36/aZezY65Iza+0gIwZjGwzVDW7S3/6tBDcnqJnu8mF1a6MjnAHbZ9W
R965RUyOXP9C3oXTI5BNda2s19SUk1OZF41xPShrrhFuECq1QfLTRvaJl8nX2+PtLaieXn/+
cff2ne/tlXNPKfkUVMogWmj6GYpC581dsOZuSxMm+Wk+BphrQELyEKAuD2ItPOxAdwGStT8e
1Ij34pvb86HJZeDN2e+cXTKl0ykxra1ym9XHa009+nVKEPLzp9+ePq7Pd/1JkbxYFbIGqI3Y
sipEBlZLpO358Q6KVCj/eiD83lPUEdWbVEYhp4WIhXepGh6ux7BmZFzHqrAjFs6lAvKtDlLd
xn082r779en54/Z+e7y7/mDS+Fk4//vj7m9bAdy9qIn/ZlYxV4iW4SON51+vz2+//ftxyQx3
Uyg7vtU1ydHTnpipVNlvjQ6YDdhH6vWLRhbt/GK1IpgBUZ9cn1PGxkQj21T6EAPovrbpn5HD
V1pAc/jMcIy0t50z/VvkebFNzwq2XgP8RYaiBMrBrkoiWPebOOqhQgjR7SpT11c4GQboWm1i
Yb+Zrmdn7VuOfP3RHEf6nmObY74DndktLLkampjWVH6rO+kf2uAMj9YfrRlxFsLt8aIwE8pf
C44d5nz7z8P15Z+8w/z9qnXifxg9yJj5ihobJ17yourt1w8RXfbx9uvTKxtV79fHpze4M4qe
UHa0VaqV0/Yku+80RXdcmbLy06WNaRvcl1LTTuE1Ra64WT8//xUD2rVi8OEUIGuU9ScZ2Hah
Z1/brmBz1bbsah483UjBlHQ8rVYWHViWBL0u6qalYIpavAlzdwi9/9CSHJpLnfenqYm3T++3
M/e4+PeyYKMV+WnwjzsiYyYbUwMrUSFT2sRLeWiPvb2gaO8/JOn6+vD0/Hx9/xMwxJJKT98T
4ZJaTp4/eRd5vD28cW+u/7z7/v7G+skPHg6WB3Z9efpDEzE1Cznmuku6EchJHICbhhlPmUYL
JCxIFKAQ2vwoDOoZiiTXtPUDzyJn1Pc9a5bPaOgHIUStfEyATFUnH3ukzLAPhWSRTMecID/A
dmqmn8fgu/wF9lM72anFMa1beBcnWWhz+HrZ9NuLxTY9E/tLjSrj8uV0ZjSbmRIShaPTgSnu
ksq+qIOqCCOzTIFzBDRUcd9sFU4OEmtC4ORIDayokfl+xNYTOZgEsE8UybHhsU3W8RC6lp5R
1Z+FJN5TT/MjNHZXtmSynEax3e6ssmME3hmruD1D8oNrHn7NQR+rxBi+bYgCYLJl5BAanKc2
9sDD0xE/40T3RTvR0xSMnKbAVsVxKgIycWoHHzuOzMfKJUOK9UNnpYfyjn/VxoXdV0UdgwcP
8yoVTtOXumcAh8Tt1TmqYtk1oK8n7hlDjJTYmusk2ZrWONm3+4UgpyA5RMjO1AjwbrRS9SRP
/SR1T5LkPkmAvrunCfaA6pyrTqnOpxc2i/33xt8/3j38/vTdqtdjm0eB5yNifkYCiW9/x5a5
rIn/lixMe/n+zuZOfoUNfpZPknGI91QVvy5BKmt5d/fx85WpRIZYfkDAHcqg0S3QZDxk8Msl
/+nHw42t9q+3t58/7n6/PX9X5JmjcU9jf2U41iGOU2DgGcYSZqft2e6yLXMPgyvRSgZlLbSl
ne2pxCam6zHTnl6W9OePj7eXp/+/cWVaVJOl9wh+pqLVbaVohyrGtBMkwtm60ASna2A8rMmN
kRNNk0Q34lThgoSxY59l80H3eSpX3WNvcGSTY5GjfALznZjm28rAkO8o+JceecjxvSHDnrpN
17HQ85zpAifGdqMsYUjX0Ng6pxzR/zH2bEtu4zr+ip9OzdTWqdHF192aB1miZMa6RZTcdl5U
PYmT6dpOd7a7U3Xy9wtQks0L6J6qySQGwBsIggBJAfF8LtZ6CB0Njwt2SeluWxB8x7jS2PN0
FWxhyZfnJpFjmsbGAxrL3HxLY9j1XDxdrxuxhKIOvrVdtPE8hwAIHviLFY3j7cYPHYLawK7h
mqdjHnq+dGApiSv8xAcW6ea6RbGF8cxJdUapGVX/vJ5n4LXN0pfnpzcocjn7kk+hXt/ABrl/
+TL77fX+DZTiw9v599lXhVQ7VhDt1ltvaKt0xJsBrwz8wdt4/3GcQ0isbmaN4CUYoTdKAdo6
cMGlQ8Z0lsj1OhHhEAuJ4sXn+78ez7P/moFDDLvk28sDnn6oXFHqSprjXvePJ9UaB0miY1C4
ltbJWVGu1/MVtYyu2EtPAfRv8c9mCyzDOW29X7BBqHewaEM9Iw4CP+UwpyHla1yxG2Ogi52v
ecbT/AbqW5dJZLRVfqHcbByScEt8PEt8cBf01pSJMc2V56kvQKcywdLXgQcm/OPGYNikGBLf
GsSAGiYhpHoVkE80hqLR0reHMtRFvyu54qnt9jrhJqdBItW9V7YuYJ8z6GC5WAPENHiRvySG
Bn3Xn1ddRLed/eZcVPpc12v62d8FeSTYE6zIlxpXbEDIaWhJPKxp6vsYROXLuZYF4zriucHG
8tjakg0LbGH0ARdQuLAkJOFbZHlBOTAqPiYKrhDhLofo2phfvt3YEjyMy1ix8lrAWAYs9qk1
HC6NM/34mASwUTYEdO4zAywP4c3T/wFozdgIRkfFJTOoe82h4Ml3nzJjQuQJPl5GVYmqduNx
Y3BuBagh1ubKGZgYkCJjqt9B762mRqNWQJvl88vb37Po+/nl4fP90x/755fz/dOsva6iP2K5
XSXtwdkzkEVwag0BrZqFH/i+DdSeKcjT5bgIF+a9TZ4lbRialY7QBQldRiYY5sSUG1ySnrGf
RN16EQQUrLeOp0f4YZ4TFfuXTF1cJLfVkVp0E1gGBqyYNR0x9KIbA09oren79r/e74KuV2N8
CUwfGV4MhXloX8FMd4BKM7Pnp8dfo7H4R53n+nABQG1lMGLQ6+QuJ1HSDx08aBZP98rTLc/s
6/PLYLxY5lO4OZ4+mOzNy+3O8SneBe02RAFdB+57QIl2cxJfGNMJxy5Ycz0PQEuJo3dOv5Yc
xF+ss9zVjsSae3PUbsF4NZUiaJPlcvEfs3V+DBbe4uA2ghvY6U29LW93Db20q5pOhMbijURc
tYGhO3csZ+XlWUY8XLNdPyX7jZULLwj839VnB9ad0LQneBvTrKwD9fjJ6eDoF1L27ZPsXPZy
/+Nv/N7t9eePH6Bj1fUWZTU5a4cs6qOGTsqM0Q153R1C10OmpFE+loMf8pAKLCuuQ5MaVNhR
5pEZ0murOJkSptC++L/CBctTfIJDt93vC4HzU2sPaUZ4uiVRQ73Qo0K0fVvVVV5lp75hqdDp
UvlURg0aaSGrA2uGi0vY+Gx0zqJ9X+9OYkgDaIwvr6KkB5c4udyx0otqYF9MflOByLY1puDQ
RMU08u8GJcmRjBU9xqNwMdKFw3JiB0MjsQejWyLeybBtl+y74+nzDJSocTSplAJCEBuw7pZ6
bQgXPPfVcOkTvDzW8rRvsz7ahS7IhXYgfqtDg+HSFNpDgekEWgGrTTVRwvRIo1eo/Aiqbkmr
DoiiIsnqTu/5AOvlutJqHBEx3zulZyQhGqXIMozNJNcIESsviuvZb8OtZ/xcT7edv8OPp68P
336+3OOjA22THyrusSB5g/qPKhy3/Ncfj/e/Zuzp28PT2WrSaDCJLQYCDP4rSfguiWsSYXBc
6o49a0qW9+an5pfHWjf6ea1qJyJswyEDZdUdWKQIwQjADIRRfOrj9qg8zzJohnd8CxI8RQX8
M6TRRdGpA9aRdUemNVM63GM+0pxnu9YU1H2B9qWoczLxuVQYGTM12b4wlPIUulY1Cy7hbIdn
pvwI+pJ+dT0Rxkn5Lk1yB0JRcOrdr0KibHd2Fbwsq3cryQ+J+tXBBG6yLVlnsweXY+mqFVnU
JbmuEiPR6oAiizIt7L/kLMb2HQdtqS3EYUedyuPjkYz3C5htFe+E3lQdwfKZdoJpudT3T+fH
V1N3SFKMfAiOaCNgI84dVshEKTrRf/I82NmLRb3oyzZcLDbG3jGQbivW7zh+XxWsNgnRQ0nR
HnzPv+tAwHOyFjl9RNnx/usXNRyW8yTq90m4aH0yD+aVNGX8yMt+j4HQeBFsI+20RyU7YWzu
9ATOTDBPeLCMQi+hm+c5x2B28NdmvfZdZsVICyKcg+VWe6vNpziiK/yQ8D5voeWCeQuH/3gh
3vMyG/UAsMDbrBI16YzCWBYl2M283UOlu9CfL+80Z4CihNZ3ib/WvSirQFkdZDg/KRzqB6Ik
yXK5CiKK6UVUtqBsijxKvcXqjun5P690Vc4LduzzOMF/lh1MKB3IRinScIFJQXd91eJHzpvo
vQIiwT8gJm2wWK/6Rdi6F+tQBP4fiarkcX84HH0v9cJ56brnuBRyfAv1bqlTwmENNcVy5W8c
PixFjc8Wbk5lU5Xbqm+2IHxJSM6kiArRwdIQy8RfJu+QsHCnp2IhiZbhB+9I3vA7yAvvH9RZ
eLiR/NNK1+vIA/tBzBcBS423uSR9FN3m5IW2SqFCV4cZ31f9PLw7pD4dDVKhBWcPtrePIJON
L45kXBmLWnjh6rBK7tSrTIJoHrZ+ztRP7FTN24JUwMIU7WrlOdakTvTOVOIzwCg+zoN5tK+p
JtsEHzGCDN6JXehRPW+bLj+Nu9Gqv/t4zEiVcuACXM3qiLK/wdsisvOgQGoGU3Wsa2+xiIMV
/SbE2Fm1TbnhScbIXXHCaJvz9bRj+/Lw5dvZ2qfBohI3xDfeAbcxDBi6ctpJDHq3424AoFLm
QbY9ZVC0oBDydrMkv2+0ibpjbEow7tTQRuJ4YCUNIzSuwcrCfDtJfcR4bhnrt+uFdwj79M5l
+oJHWbdlONc/AR94ih5fX4v1kkzjZNDMDfUEDi784VDYqhnAGy8gL9tGrJZbbgCiSXKdYa2+
dsdLzM0QL0NglA9GhOu4oRI7vo3Gh4/LQO+xgZ1bzeh48l7PJlvfamS1MLCwM6X13NzXMRFB
uVyAjOrRAqYideIHwnOEYZRm9ORdROVxGZKZMU2y1Vo761SxSe1AYLFlYIwJDy6Ip4MG6sYh
kVyfxS6p14v5Um9ZQ/UfVoFvKIarU2AD9WevI+LiFH23lZGtSdTCrC2jAzcOCEcgkSAE+dbE
ddYZI+JNA27AR1YYiKzwg07LWTgqvrSpTCdpjKKcpUdTjhJhWPyDT26QJakx9Y2vPrQa/TBz
fRw4FXBGrt7oENEqG4xFVrbykLL/2PFmf/kkJH25/36e/fXz69fzyxjsXzleS7d9XCSY1vZa
K8DkV6gnFaR2cjqrlCeXRFehgkQ9e8FGUvy+Is+b4fNSHRFX9QmqiywEeGYZ24KromHESdB1
IYKsCxFqXdeRQK+qhvGs7FmZ8IhKCTW1WNVCqzRhKRjBIB5qTF8kPmRRzrcarIgwdiXTK1CP
SRRSoBvPUnVy9Hux/y0vM3Jy/75/+TJ8kmRePCA75XrQKqyLwPwNfE0r3IzHfVifkbwW8lm8
BjyBKzDetqhsvcBRFGiuwrI1ClX012tSROTXno6KYI+EuTNnlheipe4MAAVTpEYfAUi21VcA
/MZvlf6cqww6NDrHMNsIXooIrSrhJzIOrNGd8sATTvtwgG34wYnjKzJfpZQr4IrZ0AAEDZzn
rARz6FbRvjiJln/sGF0Hbd9f8a73yjggecztmLD2hIrwlwVyrAlAmr/72JxuBE6ZccDPdvVL
ktFf/IzYSx9cRIK++kSMVNBOLKe+mkZx5JGxEg7yO3jUcH3dVHHqLthjvM+iBtW/xUMdnVEl
q0DtcXOd7U8NFQAVMGGS6usbAeD4xCy3wVPITaU/VZVUFWWeI7IFIzbUdRrYobBvacsnavZG
d+vCyfA4agrYvFzouwLsdspKQ5z2tAc7UxiaHAHD2HNjnJims0spyxuQw+GrtoC3YHcc2/mC
PMlAbVPlScrFzmTnEFfPuQgZOrBVQR2HpsNbDS0z5xUmPzHNEnP6JiweVjkbHWnouI64rTVV
lIgdY63BhcH3cOywAh8nrXQ9Wqz8wOghZnKhHzgURS29SNINJo2gIUnb/ef/fXz49vfb7F8z
1BpjDIfr3flYPZ7cxXkkBIZy4LGyWSBmiiVx7f9FiZilLh2+UuzbJFjQIn4lGgKFEty7kmgR
lK5gM9TeFTPkRsFMWt+pJseY/jfbBJr1Wn3rZKBWHl33FGX79oCuAazs2ocAihRKxsrzIidq
Q/U2B99ncaQnaAhmd7Orl/hI5GinSDi3WWnkWrhi9GiCSr8OMD2rvKZw22TpqwtKaaeJj3FZ
kuwZRWHKAHh7cUzlwZrCHK3KmpDfK9GWrHm3BB5vRa5Z6x3LVIOoulK71hClttvLdb0Dz8Ra
xAC8MgR+wMjbljWnXrQNK7NW07+AbyLqvKcbqlEJJ8PD6ob4cf6M79KwO0SOQCwazfGQn2hH
IuO4k2fser+juOmOZh8ksE9TV1X18DGWXgaBnHqFILGiE0bDHfhWucFElu95acLaqoa+mO1t
ORjWpbuT8Q4vFsxS8Y7DL+rOWGKrRkS80TsQV10WNWZF4IdFee6sSH6dYtQD4235gfVi6y3m
noEcAiSYrYDcZFXZ0Ll0kYDhyySLNyyP6EuUAclAWbvqyyursk975hpnxootb4ylkKXq9iUh
edXwypSAXZW3TPkyZPiNw/mlFa6qLIflHxUFM6bmAK5OnnBrCbXLdUg/TUE0DEcuBMeY9iem
t9LFeJYW68C7KG/VQBJDd9idvAMzRn9qhjdfRjc5prVz9pK3rjn/EG0bQ7baO17uImPl7Fkp
wMNvKwOexzJxsgFkiQkoq0NlwIAPqGLMkUxw/FFTEY8uBOrkIrDpim3O6igJLFS2mXsDUNXw
/A7swVwY695YmjBbBYibi4EFzF1jcqWITinYV9bYGjYsQndzHKMUVyl1QCDxeFfRsJPRXJe3
nNDHZWuJcwm+DRWZBnFVoy8hjnH+SzzbhCWnzKgCtBZYzUrgVtma7dasjfJTSXu4kgCT1Tn8
Y4kHNSQvxsh865KiwScTNsuh1I2lAW5sHLnYDQrcYsl4G2kAKzXcpryWMzkjD21zXu7NHoqW
RYWzf4AFEYVdnNG35pKmK+u8c/GlUYOLSh2C9+KRUPeUC8judhE17YfqhA2oPVfh7o0T9ihr
DwBVJ4AVztHgfU/mZki7azrRFpEjbqdUsmgi9bUIzaa7IP3EyEOGQQ3HlbHZ3HFeVK1lnxw5
SLmjFmzAZNYEczPq0ykBQ8nW6wL0btX0u476MEmaPnltbIVFXAfB+AXF9B09Ye9N6e5om1QG
gjLt0pprBu5IAz6kZWBO9W6fAVq/PL89f34mUnBjDfut0ooMGYbaVu39O5WZZBfDfHrNqw/w
0n28ntpxQw6VN7d2XTKpOhc7mmVDNilA95MlriVjN8sNr1aLZCbSASGIh/EFSEC6c3aTLD4h
tcYU/la7mKPFO94t9AkTyq0IRVFoR1AXCjz1B2NqINLx1gNQGV5OBgfTYWAq4HFbpkO7vIYO
qBcDQ/myNJxOGcOsQWMhEv0uTrQCOhkmeTSENypL2Kti1pfsbjwKsR8W6/ErUMisAGZDyLch
pTW6lVwYI0+hfl7yVu5GnAmzI3qURsq5Q563mNm6Srq4zYcWtDoQnXCBKch7dgTlWEa5qTe0
AsB6IXmfsUbmtKQDuw2BBNsKnC7Y3MGNAIfg9Gegr9jyz+/Kwn9+fcPHxdMXJ4ntYcrpXK6O
noez5mj1iEKGk/rdgg4ZOwnolHyWwl5Pw7R+DM0ARykVeyEo2j1ZsDiwLRW48EKAL1T13jC5
vJq4gCZ1DAlkJBsktMG08zDHfWuJg8S3LYq2/LzB0UV25aZdPBXU1ZbapykzNN1jvP9VTWMN
B9Kke8I6tuVOwb0QYbrO96nqOnZd4V3o9MfjNn7IwniLGcVBH2dcCpl1EZG6Mrh2zCGQ1bEL
fG9X31gaXNS+vzzaYoGIcBmMCK3aFDQE1Huj1uoqaXqHtDl7pzBOnd6nK2bIoe6sPq/jMCDD
SGhkOO3OOvAonjqP1ojG/OmObg4C02+ZpWINCvLagCAk9k6JtJfdlVXCrbgrW2JN7CCvtERW
lkRWhESquzGpgFJCWCTMFfxUVuWHgV2VyNe+fwMMUl2ZczEgSWdQhpRd4zeam5Vd65SdHP69
E5S0v8d+xMvQ24XhV7oaUffG4ZZnFj/ev77S9jC4sejjm726S6hjNsS0MiiBbKEEX+W/Z5I9
bdXgne+X8w/8SHP2/DQTseCzv36+zbb5Hq2dXiSz7/e/pgA194+vz7O/zrOn8/nL+cv/QCtn
rabd+fGH/Kz4+/PLefbw9PXZ3NAnSsoZ4N/vvz08faMC2koLIonX5C2kROKhiOaHS3FOSt3B
uwD7LDID/xJEZl5sgqSlHo1e0bw4mu0XbedSPoWUnUR/XXJF3OqNpLAHZVIkmOysqfLLG9n6
8f4NZuz7LHv8eZ7l97/OL7qsDcVEbWgKCe4wgyYBl6fRw2wM9rEU6yICufhy1iLxS2nmVV+V
+tm2NjbZTJ8U9DMTuaWVB1a2TWQSqfbzXRzqKg0h0o0gwAMnaSYNtqrii5mFcX+xzHdE3DQR
JMUuqgXRnT07wcpRn7pdUOrLvwvwo3ZKMYIDU6oQZknV8CX2/Zdv57c/kp/3j/8GC/0sJ272
cv6/nw8v58HDGUgm73H2JhXD+QkDX3yxeBKgz8PrHX5wTHAmuMqlmzmBbdEPRfX0fxf4AZPz
CmuDljgQlXgPSkMIhgdz5CMVvQE5gCrhhhuM7615wiJLyYzwviPfkGkkOAN0rfaIL5hCFA7M
oHIozHjVZ1uDKzUByxXoY+8phDeuD02ToFBIUSC3rE6IVeCp25zuNJOFWMGXgd5dAAVLHRQl
XdsZYxbsIFhmzkrOsqrFuwjHlOSmITDFEY9Pq3hp7yQn+ajXZX8n0ymVahG1CZfXZWZd8jrT
/YWpRPdFCg5XJFqMRJAxswrBwf/eHjKXBsyNwcEiKGN24NtGZtbUpaK6ixoQeAOMNo3pqwmQ
A2nrpPzYdo3VLS7wgl7//kAjOEEhl0HPPkmuHQ0pQH8W/g4W/tHwhHeCx/iPcOGFNGa+1KMQ
S9bwct8D52WETDJcw7CQokrs1ZsVdMYHi4yXqPQV8a7//vX68Pn+cdhTHXbc7qSqp0nLTzii
G+WYPeAYM/nQXDkGlPmcoRTinbzGozGZKuyG0xiqny8Ns57B1oqd1W1+a+uUZ3J4K6kf7H34
NF+tvLEC7SzWwSS1zstObMHsjC8KbtT+jmGqFfSpIGtHLuGF+J1+kDViR0O2L7ui33Zpii9F
AmX2zy8PP/4+v8DQrqdcpkV725edfHHUwRrfs8aGTb6MPhLdj7ELXdGhycb6GAVkjGtp3x3s
nQFhoeUoibJGUuk1um1X7Dr1gREit1B66LluihFH4VKPFsliES7d227J2iBQ84gqQDQfCcTa
sHGzat8Z5zUZxhqlpOjIQbccddT4ccYBtJi1IEi50bQ43+Kr2Urw1jAH0x6z82xNYIGP+EZx
NTajvjvEJki70RlAk7tpiMjwTyLOhmIe/ng5Y2Tr59fzFwwwdI0lYWhCvP2i+Jda5+BpV8pk
RE6bzRgvpRxa3D5dWj5TxquBLc5k/R3bxpF1OIc3i5R/qczz++y5VtmeavLLKNkUGGC9uOOt
zNUxeVWFMqv1XSPYR7Cb9LiEI9j5shXI+21exYpHfQFNmaLWKmY0DQZ/r4j/EAn8x6sbJ/1K
YcOGR5BIdqrxewH1/8/Zsyy3biP7K65ZJVU3N3yIFLWYBURSEmNSpAlKZs6G5diac1yxrVOy
Tk08X3/ReFB4NOXMXdnqbgANEGg0gH5Iy2ZKjWRVF7x1ZQYIpvTWmwHPmqgVLLtVhbVYr+SS
tesd0Tn8N2Hcq5FtynvsXtWgoQ1p+whjA8x3mMKGosS9HYbirJmHggsyq/c53im+53/SIxpe
H1BaWDmCLpiJS+ILxZIpVrf1lmBcr+Cv7ql8QVVFuczJrkMnDvgjmIiq7kmLElMLCmf6YUPt
7twvKW6loLFEcUMFvmiKVTVcqUFeQk/ilfX91FCGqTP+YTps7gdYmkPR3k0XhGsZXfYqMH7D
Iror1llK0QFtdPsg3nlwUjCzMCmwU4GzpAHGvdsYP1dmYcGf3Pk7JxCa9ap8nHbd6XLu46Ek
ALvn6RktYWJ+Ncz2ljPEhVCxMtnY7yBurMUa3djMQm9iJu89R7rlhBsyNil2F8nb3W17S5am
d4543dA760tIT2VEorLlGSQhGsl+/OJ9vtVf9jQpJ45KDpxUcTSzW6rvcS+SKq9oV6S3CAvw
VA8v15p9H7xjc3cGvfoLdOCmeJgh4YWEW9CldVm3Th3LFo64W7gpYGuLHRO369w17Gak7jGQ
l1cuBZdB4WCyDb0gWhAb3BZ56fBA7gPPx10xBI9pFYcB5gpwQUeJ1RQ7z7cFZR9sa/p5cST3
68Au5C/YwKpPuIK4wNiMtT+CFwFuDcgJ3MznOpY/JPb2kKb1ki2W4W63zJ0GIR95hKYl42hp
VWIx2YSL2WyaR8BHk1WWTeQ5LDJg1PfKEsbF6YFOL8AQYS2K4itNJ5EZeEWBLX8RB88m6lSl
fAQju0MSKgbww0HFoV1gzHRsti28gSbb1l2IOGTMcGzBlxk70TkzswujhT0zpRuRBd1Sd7Ky
c2K/RK1mxTpKCSSrdop1ZRotfPQKYFwvPIqsDqw7I/yZWAv5dhX4S13x5/CChv6qDP2FPcYS
IbzsLPHEn/D+eHl++/MnX+SYbNdLjmds/niDIJOIteDNTxfLzJ8tAbeECzb7+zCZ5zkSpyr7
1ry45WAI/zg9K7uCjdROLpnJb6DSkFsD0YTjtfTq5eH9G88B1h1Pj98siT2OUnd6/vrVleLS
TsredpT5VFcY/gQGrmZ7x6buJrBVl03UuWFqdMcUXsO0x6C47hJskKYNZqRkkBB29N6Dq64z
kSUBrPHPW1KGcObH4uP7/P0MT0jvN2cxyJcptz2cRVJgeVK++Qm+xfnhxA7S9nwbx7wlWwrx
JSbGT+QAnxy8hmwLTLm0iMATazs5JDwJJjom4hgrvZ+RZvKMpAMTYGD2R9N2p13tcJRjQdl2
6WAEcABAlfqzOPETFyMUIj1OIwNuUqb2/Y4bkgOewh31BhsVwFoHeQBt9yJ8sEgk2bGSKoiK
toCAkGnqK6hev48d4SLwssGJgg+7IueRjqd4avfidkKL3gt8IF5tivyKj6dBoqtsCkGWy+hL
btodXHB5/QUL73ch6NFKL1Z/bp00nKPhmRRBRrmD8odbVGCGlC2QXYu/v+ukc1zR0UhiNGmO
Itj8XiVRHJpfFxBC68A6V5E+XkzE9dNokoWHeahqFPN5rOeUUZiWRikbPhdR0NIPvAQbNYG6
OuSSBGmwZ/DIBTfpKrGUOAPlxbhqbxCFMaYNGyRxiPWIo9CMPOMIzvwu8bCyAjPcZ9h96jh9
szlT3RJkXt+FwS0yHKSsiCOa+EJuaOJ5IRaoQZFQdsZYeAQby1UV+uiRZZwPbPnpsbc0eJT4
KJwd0dwO5BU7us0xFto9w+Aatk4S4rECLiRJggb+GwchqlyuaMaWe6K0HcicaMpBXbhCYK4t
mHMWSm4CPehGrvx0BAE7lwW4wAEMOyTjepo2HwNIfuoONwzewrRkMXGf1t32kLHKeU662qG0
qinWJJN4VipZlyDS87no8AhdiiBEk2hYkaqYsIjSKOez63I/mOlJkEe4FVXBgEdoPxnmEwFE
u1t/3hHsfuEiKZIuid12AR5GODxaIHBaxcEMnQPLu1mCpiAev34TpR6yjmHueO5QyZOoQ07T
wLBoH+HcYN0hH6NBoCpB6KNmjYrgy+/bu6pxKwUv0IHHr+Mz+fj2CyjwV+cxodUiiJH+KGNn
F1GsxzsvW5bSclh11UBKoqfRGL9STnVHHgM87NlPbDDgZvCqZE/dGvNmEWLfYt/O/L536cE0
vGXj4KHbGWApqfBENooIiZlgN94lkRlZbOwD3MVe01T72SJcoDvt/ipT7CuQjITJNaXVeUIa
P2bH/kN3vrTeQHax0MdYol01EYheEoDpBxoC7KL6iWs6RCfkxhGoulIlPXpnctH21y26/1c9
fmuv4Yf9NflBt3vqjp79jDTCu2DuI8ol3Fwu5hh8HgeoYOthyl2Ta/PQvM3TvtBnqkSX+f7i
2nDKx8+PS3wSenh7P56uCxssMlTGpuiEDx1DLXcr13GO/r5NIWiiZuxA7znUsAyQxbGOChT7
SPtchodE+iqJVMIePXGDwGxyYZprV8vh/FScW+98Knao2TFVLdn10tzv0hTY9ZW6h+Imm83m
TLu23SIl3DAeo2z5YttvUa0hM1RRSPPGscSm8+NbNDATIwy0ad6QFu4ZZOYDDSwCsXPkPz0L
3Nb8o0UmWLyNwC5AjXigjUxZUHcj7h//sIZlWJZDbQZo0DF4xASNYuqNR3XrMpkKzHF7v4In
U/YhdvBG37RDp8fS4lgBz/ONCbeotjWvxYJW1g3HCJRep2jvIMwaW2wFpJfAWGZo8xVXQOC6
GLvr22eNZv9UrNK95pe0BztlXtKGgSZClSPwGE5WesY+no7vx3+dbzYf3w+nX/Y3X38c3s+G
r/WYBP46qWpz3ea/L03feQkacorJbtqRtYg8quZEDQ4K9m/77mqEirtKLh2KL/lwu/xn4M2S
K2QV6XVKT5uNgrgqaHrls0mqghJF5HDVpKWIuGVXDQg0+rWO1+4lNHBo6CsXRIImFNfxMc5I
4uPn3JGiCq/ySqqmZONU1ExXg9FAWhEkTIcIY6D4rC5GGIe8KrenbGHg/kU6PkAKZiRFzxwj
mh3pKt+dWIR6iewWUgJtiF7lEMolnofVF8+8ABm+rAsSD/eP1SjQqPU6fubMJw6OcPDcZZCB
g94FV0x3IZ1Ty6qMfOxDEDANK2o/GLB9UCMqirYefHcVFNx6LPBuUweVxj2chWqk2apJ46vT
OLvzg6XTuy3DdAMJ/Mj9YhJXO2xwhGEgYyH8OEO+M8OWZNmk19cIW5AEK83gGbkuBKoKHRqG
2E08fqjBA6uKO0wJkQQ0CnDxUnwuQVnzaXERos43XYqlZlgsGasTQWwBdzfMmUiaxoLMmgn8
5KdA/VIvRNw4ym3gbkd4YCvWSoM3wP2WPhuZJIhmzqxjwAgFDqjAvBV/ywILioCIcFwCOlA2
RQ0z7MuQdPi8b+sdjyyuHafYpPHGe86CzcD3s/QtNV9zyePj4eVwOr4ezuolSIVNMTGC+u3h
5fgVXN2eZALfx+Mbq84pe41Or0mh/3j+5en5dHiEE4JZpzosZN081AWWBPBAxq9Oy5/VK568
Hr4/PDKyt8fDZJfG1uZ+5Omtz+ezWG/488pkRhbgZsx/TD/ezt8O78/G6E3SCPflw/nfx9Of
vKcf/zmc/uemeP1+eOINpyjr0UJevMn6/2YNcn6c2XxhJQ+nrx83fC7ALCpSvYF8nkQzfXA4
wPk0k1WJh9HD+/EFbC8+nV2fUY4hhZBpr3gUMYojy+svr8z7Fqk4C3de58BO3p5Ox+cnc+IL
kKaZ02HVrAkc7NBdYLct2NEZbJ5xIz9+vAB3h22+7TB5plR/aKGtDVN8hXIiI1l4xzzCxtdr
rNqyrhuwrrhadzPhbajw4F70agNdl7yxlzz7TWb6YimkGfZIQcU0tNnSjaUUEGyCXeiOLrHe
Q0Ql7EIK7LZ5DF3TsFfaiw77dFNoVqacUiEnqIeq4nFbpWPy+5+HM5bK1sJcOO6LciB9QXmG
CITjVZGXGff10nM7byqwv4SuUjPKFMQglhiV26E0gluygvzyY6t7rYFf3qYI47nHB1RbZFdM
uCHvVJWPETf0U+B4928CRqFjgdumonhGhLEg3XTY1bvCsy51tdueyon9aiP4olqa0XsUbr/E
rs4VVmbvxQqKSHd4oLuRhhuQ2IXZoDcZcvunmROXJYHcZWq0kSbqkqltfe3znE26NlTV2yEt
cUmwuadNsQW3GUeCpi/Hxz9v6PHH6RFJfcLtxYzIMALCvoSe8aNgClo4cE+dy9cpb5dlJlAG
lLapFalNLTVhnabHEJcOGAKD3ZiKN6OxpAKrFyO3yux+IM1yssJV11Wt53t2jUXfzPrerY4/
JcVudSNBfV9ONtZmxK2R7razYrKIcIN1ComnnslSMvqVW04+xl3hX36wbMnjXzQtO0xN0In0
NleqIl1J6HySyaqnLoM8WGpwpdItm9ltfoUAfC/WfCtjH/7zjjYF0ziYyJ84MAoi/qAxlPiz
E2mr/bzit/G4awA7I8PltJ6XSYDMYHmqLZlVkm2X2HyVD6DWdK37LWEbe0NtRNXd2iBwinEH
Xrb+G2yhwCvaVbqR8iCtMOVlRFfdTn/rly6/TK+qjJmvyLuJOZbLfk5GXVPfsMe9xjZJCIuk
arGrmRHpa+YBEqjnkhccFFUvEmZ12KhRSHqA7S+kS9lY+p4jX3jsIJ6emuHjmdid1bkGE9Fj
QVKUSzOJEfBWMRj2zCA3lqHaaF0Sr7ZDCCKivWezqbJqHHNnT1QLvj9MLPFiFyWEqRpMtNh1
bYo4CLypmmR3lK2khPJMG6RJwVI6NfaNoclS1a52ZoDlyUhRpyy2AtIqu3NL7bYxeMqtLc4u
BLBQJvjmHEKL2pbBn2mIHp9AvtyMJrNCnYTj2PPjDUfeNA9fD9z62I3tI0oX9dCsOwifadd7
wbDZR4ygMyjB+NCIPdjZBbhUo1eaFARjnfoE/qyHZp1K9/qwwTJwKaG0Y0rpbq29cNWrwXrP
4r6SCnbZjUfoZPi3S+55s0I2PSKvsKEimpLbkA6fbKpoALuv9Ov38VnPbgkyuFMUIp+7hqwb
lsU2Y6dl4414JFNRV5e/wxiyP2pM8dkeLrwhTe8FH9MkakBxjZYtNgdrLBnZSXn/8Ho8H76f
jo/Ii34OAa6596wumEbokFrxncftf53zDN3Nju2HorjGHE0bfaYiHAjOvr++f0WYgiONtrHB
T6aR2BC9IQPBh2DNA78wADYZOZn2hKr4NPgZ5w6kdrln6pAaULZnvD3dP58OWupKgajTm5/o
x/v58HpTv92k356//3zzDv40/2LrNLMuKF9fjl8ZmB5Re3VhTZWS7Z5glyMSXd6y/wjdGZ62
HLVmO2mdFtuVdiIQmErHXC54EHYEn9xExGJzVHR5uAs4PLEtW8vGpiHotq4bB9MERBXR1GaO
ksyhFhcIM7omvPCh9IAmAB2xdNWqL7k8HR+eHo+veO/UAUrkuNBVqjoVXpWoqRLHSqN+bYDR
tsTFZ9/8ujodDu+PD0x83x1PxR3O0N2uSNMh366N1Kh3uX3xkDWEaffsB7XCrl1uSj9pUjjs
/G/V44zwQa76pNI76JCLK3p2xPvrr6lZLg+Ad9V64pgh8NsG7wZSOa8958Hqbsrn80GwtPzx
/AKeRuNidL11iy7X3in5T97P9HITpHX277cgjCUOT88P3eFPfDiV8qSt4Y4H6SSNJVjZwmhJ
ujJCIwG8AUei+xY1sZRykunVZl1VJUAXMw2MSc7+3Y+HFzZ17XUyssAlLtyWgF15hseoElKZ
7RoDGrtJoOlS81znoLJMUwvExLdheqaADbbsOZJWGRBY9dynW0ovUkiOAtpXc+3Lo9Y1NWfd
GtZMmvqTMW2pwMzYuWyS6UVsTYjQPQYbhH2urR+JsIBIExLfVIPggiKFR99aSFfVlBPnemCW
3wCwQ8e+LjsImIXQ29ShQ23LVTzqKr8mEaJdye7++eX5zRYskl6EZhr26U5/p0FKmG1/6XAx
8/f29fE0WMHSXbX5nWJV/rxZHxnh21HnVKKGdb2XEXuGepvlsJC0izeNqMlbOGoSw9bXIIDd
ipL9BBrcbZk2rBu4GaWZDlvsc5tzJ7QPqL9ywsgLdtlhQ0GGM7OGxo7O42AN+d7w5jTAqq1t
nTafkDSNrs2bJOMyzFaanMn7LuUmmGLv+Ov8eHxToZqR7AWCfCDsiPwbQa+iJMWKksUsMUyv
JGbSl1biK9L7s2g+/4QmDCMsTseFYD6Pdc93iZAuWA6420aGxYqECwnKdhhu3Ib0pu2SxTzE
rE8kAa2iyAucilXUQgyRug8hOrKDwHaBGS+FHVpazP630N++2A8Z1E87CY+wITVexDTEVIhi
k0SoZjgPigzCiDDNbGe4jAP+luc5Z1QmWDobM8VY8m1gxb8ripYxu6hapSBDRpLA7Au9R4xS
TbwqaQ3UhU++1txHZdcgQ0mKrC/DeTCZuHtZkdmEo+iyStmUFfmQ0YeMwFx/GQlRkzf27drM
06wwBGBhlAXQRPQgPjSd4GMI4U0SJbvtaYb7n9z26W+3vhXmRc3sNAzMmFhkPosiB2A+CAMw
jq2QQiSZoXE2GGYRRb4Ts4lDbYAmUao+ZZ8mMgBxYLqa0e42CVEbM8AsiYwH8v+3zhmn0dxb
+K3RNoMFC+yDM0TsGVY38HsoVmxnBMN3whT+0qppscBvMAlYQ/VgDYhfTrNzJ8kMwSnOoqQi
URZMFINbWB7WTJYdJ/ACJvy6MaHlNjDp8u0+L+smZ6u5y1PD4kCpjyZL8E5UtrCpWfyMFPAo
UvVBNMHwpp/7hp9KsSWQkxunVhdIBtNMXZhnJkj4j9uw1E9EzXp70q1oosGyS4PZXA+wA4Ak
sgC67w7swmEcGoBFbHaySptwhjqMq0j53CUo9pzx1tBspwenEZzxqgniYGEX35LdHPeHhFdJ
c7zEfm/PGb6t7+GD2/GIOEZ4Yg19bRSCdEaQhbQ2Wxj1KkpaAyG8KW3muS/l5DyjfApAfg1x
DkEFBzxFCN51gTXCbVC2olmFEguMXYQtHAPU8dXtJb4No0xmGxIHoCJg81T/9qvY9yZm6b5o
ILox22jM9uWBplcD+d+aI65Ox7fzTf72pMlL2LPanKakzJE6tRLyuvL7Czvu2Lmiq3QWRGY3
xwvFsYAo8e3wygNCCw8zUwOAN+yh2UgzEFSKAkX+pZYk+pAvqzxOUOP5lCa6j3ZB7qwpkGah
Z08LDjO2UmiygGRWA103pi8FbSgadWD/JVn0hhml3X3hcff8pDzuwKgvPb6+Ht902yecQP+E
FZVDogzCxFU0bVQ5t1IXaah4nVUhjpOjJo0/xexjE/FBTB98g4682IgCyCBhgmtUDDWbYQ74
DBEtAgh/pEfg59CwNQBGWBD4vYjNHmVN3YGPhwahs1mgWXyqrUYQXYR3HIQTvpdsj4h8LGIJ
IBI9whvbOmbzwFKVuEhCw1523B0livQ9TIgSxdxoZXvlY4xm008/Xl8/5D2IPjccnAifBQlC
Dm+PH6PR7n8gLliW0V+bslRPGuJJnb9LPpyPp1+z5/fz6fmPH2CkrLdxlU4Eb/j28H74pWRk
h6eb8nj8fvMTa+fnm3+NfLxrfOh1/7clVblPemhM868fp+P74/H7gX0fR5Ytq7WPxtFb9YQG
vufpM/ACs5T3Zhd6ul22BKArku/H/NCBoyDgh43u1mHgedi0cTsnJNXh4eX8TRPeCno637QP
58NNdXx7Pht3W2SVz4wwFXBl4flGQFQBCXRG0Do1pM6GYOLH6/PT8/kD+xqkCkIfuyTJNp2+
NWyylDHWG4DA8zVWNx0N9OUrfttmmZtuF+BeV7SYs5MSpswwRGB8CqdDYtWy5XKGyHyvh4f3
H6fD64Ft0D/YAOlPVlXhxxrT4rfN5KqvaQJuLlMn7tuqj/FeFNv9UKTVLIjd4hoJm64xn67G
3YuOMDmS07WkVZzRHtUnrnRfhO97/vrtrE2BUe7/BqkH9W9Nsl3vG0FBSBl6ZmZCBmELBL/z
IU1GF+HEjQRHLlABQOg8DHRGlht/ri9y+G3eV6RsP/AT1Emv4pF4XrXfYRAav2P9YA6/Y/0s
v24C0nim26OAsX57HpaqurijMZvypNQkyagq0DJYeH4yhdFDRHGIrwdX+o0SPzDiKTStZ8RD
VbU5cWa7NtKzmpR79iVnRqBq0jMx9H+sPUlz47jOfyXV5+lqr4lzmAMt0bY62kJJjpOLKp24
u12TrbLUe/1+/QdwkbhAzhy+w0zHAEiRIAmCJBZP6iDEud3JCzaejubkmBZlDcNNL4gSGj4Z
+ehuaY/HdmPx98zqdlVfTKe2kIE10GyTajInQK7sr6NqOrPdMyXAjndmOFYDt+f2MVYCFk7I
GgSdkRHeADObT72Mm/PxYkK9L22jPHVZrSC2B8CWZ+npyNWiFeyMVKTT07G7Jm5gOIDlY1JK
uFJAvb3e/nrav6sLJXKLuFicD8S/kyh6TrCL0fk5eZeo7yQztrbO1BbQ2+nZejoee9d00XQ+
mR29aZQVBReN3sjD6Wy+mE3DKaERvhQ2aJFh4KJwdzDvxBRDFas/Ht4PLw/7/zp6vzylNM5p
yCHUu9vdw+GJGKVO/BN4SWBitp58Raeop3tQeZ+cVIT4/Y3QRrDqlnqQtTKmvGjKmqJ0hkDZ
Kju1+uoXkhwhqNGRAn2NBsqju4Nz265ZQXdYb4JPoD3JWG63T78+HuDvl+e3g/QSDLZGKc5n
bakjoHUr6PMqHG345fkdtuIDebE/n5zRx6QY/dnpuGN4UJoNna7gzDQaiD2AuPmUltJ1maKa
SU7ngX6QfQR+2+pWmpXn4xGtR7tF1Knmdf+GqguhpSzL0ekoc7zRllk5Ia814nQD0tJKuRCX
lbOLbEo7Q1oSlWOtdfe8KtPxeD6gwAESRJJ9qV/N/WtPCRkqD8jpmb8YWplvj4Z6W9t8Zrd/
U05Gp46cuikZ6D6n5GgGPO6Vwyf0lyRES4jUo/X838MjquG4Fu4Pb8oHNlxGqM24OkgSMyFN
iNqto19ly/FkYGaXSU67cYkVuuT6c9dIbLEaUfEJqt25q1fszp18rlhu4e7Sbpi8bTqfpqOd
7+r6CU/+f/1dlXTfP77gNYG7bHqZjTJsxDBP4UC8sizdnY9OxxSXFGrqDFGdgVJM3TtJhBP3
swYJPaAVStQkJmco1aPu8r62kh7CD1hLlqE7ApK4dilUiqiau88DtUxcuC6LnDKRRnRdFKlb
E5qWBF/3EkPKkhh6W9ra99Ml49qXUg4O/DxZvh7uf+1DyxEkrUERni3c4it20d0nyvLPt6/3
VPEEqeGcNLepA3MNq2Y0eem/hQ6yf6wfflxqBHnxghAkfYmcWrR7UR0tXbDxeXWKL7lIk9yD
WUaiFtj4fFHWMoju7CKcUvEVJYoR00VRdOi1i9NAmU2y3NZua5NsN3Y7CpDJmQcC9Slt03Xm
N0+v04HPmWvWKqr9dg5nUlRYN++LgQ1kzOnRQap7REmry6Qq3Y53Ka9d6M6bM9IJIs48DyTE
yFQY9kujBO6YS4VPax5Ee3Q5jlISoZ/bfCZr68GBjsM2tYjKNPb5FWTs8rCCOulJVJ0Edfkx
CX0csN/lg3xsc7tnYjzaoIRHrAxgG+G4uyNUh+d0KrzpMmFgXqy734cXK0qZ2UjEpc9SBisk
IRUcFqNjFhSxbjCkSx+zs0ib8YNFESFxaQuADgnfDaHiho0Nqt/s9QDKCsmj+myBxzZxaRn+
6Hf2OmpchPnSZqEaaBURl13+LOhQbDu7o0Ef4KuaO9ZFCM1rPOMFLjxQWVRkyyR3TT3h2JOv
0RuhjDawU9HXkA4R7EX0/g5KpJfurD80+sPdtbjELOEq1pxRt+Wray2jRNnxgjlmQY5cI3AH
x+rN2UBQWYXfVeMRbTmiCKQrwYy+ZtAUcveg7I0VuttIKLB+5A0bvqliynpRIdEWw17dGirl
+5rO+KxIUpbXCWXqqdFK1PttVTGFHwmgyrLRMrEMm4O2DoNf6nyO/W8pv8fC3TksVDnwcK9I
qigjg/wqpDThDVktZV9Wjue0SacmKiKMqDJcucz15nWmlrnyIicgs0R0KfAG4O06bYiWYkxq
6rpZhULQE0f6oFp3yy4SPVGNwMVc19XHjzdpPN1LWx1mWafJDoFtlpQJnGttNIKNooCmo0Vt
BYZCpIyk615ULlEX8RNu9zsWFFKBAYYSa2uK84DCxaMLo061bCHk9F2odObOVm1w7XqXSuxA
zZpoPGGqjkeyDo2eos5DmW32pGy3lkQu23qcZDoStCxnXmwcgjI+xlftHyUTVA8SRdfrvKmO
NRzN4Crhh6rpIlggWwbyqZvSeWUGwELk1URHU4v9kZGJ3ytWk7qqwav2hO3U3HU7qSJzw4FL
CM8wlqCKTS51AlfBshVD7eqIWLot3Mahri/dtS7DhmfJDiS6vdycT2u/8uHZr/3RvQFSGNx8
cPM/Nk+ACjN55sWxhWC0GOXnZssDudm0W7HDQKLh3NZ4AdqPOwl0SPWzubQnTxvQaIQrjeSo
yn1Xzga/dxo1zJhsC4fIFj4BDWvqLAkkgMYvZELA4TkMB4V2ssjhTFYlkdu7DkVJGEQeE2tZ
Vk4/J8CPDlNg2IvhliO6cdN8G/CuGi4WwXmpJCYqK8tNkfM2izOYcSMXW0Q8LdA4ScS8clFS
Pwvr07EFLmej8Xk4sST2MhQcEo6SY1MR1SGiysuqXfGsLtTlH13YPid4KDmkPtP66qkHH7s/
i9HpLuyPYNIfOuCCMujk+ZTYv3pvGflr57G892nD1RtXSbhddyThyuxQMge6W0yfHeJSRREj
kVJiGbTDKuMH5G0q7p6uw780ZK55h4LYeKt5uZ2MR8ckVqdlUeVtJGXw79BI1v0ZqIBt6HsO
bGStTvbjKbQUuBVuKz3FTFMM86tONrPR2TEtSJ7uMRjX5toTU/I8Pz6fteWkcTEx08qc37Q4
W4zVNCY+J29a9Ims9foF6nCZlJx+WZKNgTrHkwE3DrXX4BHngvNsyWAyDWWDDkmPydLuXkzu
h1SsOpcKP+sPurYBVklj6LcPR9m2SqNLYMQG7scjutmC0T4s0E3nLj2IGGl22DwWhR+f0Y8m
qWljZh0ITVZB+6d/SauA8t4hcSJD9ogiKsiwd5i3ZDFq+aqx7UdVOXO84Bj8ImiDwUK9fkH0
npAftB7NYJtTH/FdlS9XWDvNdCMVZUnqJGgI1Le8fqMWOtRvzUe5TDH4oNW9TpyQTFFGpqp3
YSiJoIv6O/kWUwqvywH3YeUXMNRLGRPI1Kxs/K5O3l9v7+QjnX91hwGvXCNaFdMQTYTJ+7ue
AoNNWc8YiIibLLv266uKRkScCqkQEvWZWx8J7KoWzHbdVWu+3oQQnZzdh65J2oqEwhZG1VtT
9Zo3j94KMWS5KYTXFDaL8HebrQV1hTFI1LIxaSWnol6VApQZzzQ/QMl7fLIhmjTaUkuho0JZ
ajpj41Qw1uDDK8H5De+x3We1aC4x/+2wF7ysWvB1UjgpZYuVjRkqF69Sr5EAadmqIaDOxHE6
m5V+dyvnDh9+tjmXPqBtXsTUTEeSjMnzkhuW1kJsmqVfq8boAC50tVXkhvmVsCUfiO5a8046
wJ9OWArz0mqBO8GFUelhgHbyTdC3WiJiczToybM+O584Mx7Bvhe3heqC5of2TkGLSpDZpSVa
q6TYub/aMAZwlSaZlyoFQToSRy0ob1hp2wR/5zyyr/QtKG6ctiz3cYuM3rZCOmoeh1SXrhzq
kLIXRQVb7nSgoX2gDLoR6hBANhYWKFJSI1fY4fFkhGp5JIudWakiV3txsXrzH/chWnlPHB72
J0ors0M/RCza8PaqQGcvmS+6//aWoQ1JDdtFhd6olX2Nu5IB0Jg1Y/iunrQr16MfAe2O1bUI
6NDiK4FZHTlvAgZZ8agRXtZqm2jakmcmwMz8NsyOfWz2bz42G4zyJpEXoLnUrcrq1b/ELeOJ
+8t/z4cPZ0vJffvFIQEuA8buQwcEUjsKr0Xc8di6R++RXecHrv17SooTpgumVV3B759W/f0z
5iLBEG9l4ZrVCcZade5vdrIpRJH1qpJTsI8iWWtm2oGH63/Flo5Mcl2Hmh3qR0csGryog/lw
rSbEEeqg3x6eVTAsdPy+/nN81W65oFPO5Umq+dHvjhNvbkkActlhmyYLZ5VBkKzzaMzAB+UV
Q8kBVGVlLMgk/w4iNLGflEzNeFOJBnskMr0pqBanN5TtlcHeVHVMlyqEH7xMk9wUOR+ahzi6
9mHSE0Cd8EDzJZvvBtIuMd42bMjOxMV8dzIQd0JaV6wwRVokrkuPaTYYdMh15So3cv6QK35V
qXjmVhwbH5AogDJu6j/JOrr+zNkU5GOGhEe1HbWvqYtV5YpxBfPkD57MaP4X0KeUXTtV9DBY
NXEicH+Gf/rvUgQsvWJwOFsVaVpckaRJHtsR2yxMjpzf6WiwvZ7dE+yAe7Jn5PyyCDMOLCpK
Z4zUJcft3e+9tZmvKrWf/PEAQeo5BOJ0cuZXD6VkU5eIRX5SfT7+Cmf4b/E2lspFoFskVXGO
zzL2MHwv0oQ7HLkBstXALU+8an2UaQf9bWUvXVTfVqz+xnf4/7ymW7dSQs+xJ4aS9IzadtRW
aRO2NoIzSokpJWfTMwqfFJjGoIJufzm8PS8W8/Ov4y8UYVOvFq6Coj5LGk+ajc0G9MdnGyqu
SBYeZZN6N3/bf9w/n/x02Ndf6GFcEPrqWgZt3SRpLLglii64yO0me9dpdVa6O7UEfLJNKxq5
UR3BJ3iMPKXdazbNmtfpkuxIxrNV3EaCgxZsLR/5T69YmIvPkFvW3MKUjHJxyUyu5JCm9nCm
lZkW1KxBtJl2LUw7t2CHORvGuEkmHNxiTl9Me0S0MbhHRPmaeiSW9aaLsa07PMx4oFuL08lw
t06pZw6PZDZY8RF+nVKm2h7J+UDF59PTIYwdBs0r47zmuLjZ+aeNOfN6CRIY51e7GOD3eDIf
GgpAjX3GyGzAg5PDfIy2WbcphieYoRgaUIOf+WwyiKFpafCnbncN+IwGn9PsHE9p8vHM51iH
GWrXRZEsWuF+RsIaF5axCO/VWR6CI57W9oNvD4ejTSMKt60SIwo4frGcwFyLJE1tSwCDWTOe
JpHfP4kRnFOWfgafQANVwMmgaJI3CWWy4vQ4kZ0OytaNuKDTHyGF3nGNvpEnOLEDQJtjsMs0
uWFSie7i4Ft3a87tigp+sr/7eEUnlSDl+AW3o+DiL9A4LxuONzpaf+s3WS4qOAFj3EggFBgA
nt7nBFqPxLI26qJCHQE0gfPxNt7ASYML2Tdn/0Wk1OSTSCHpVxR9zmvjjFfSgK8WSUTmDNGU
9qa/YVveyiRPOTQOzxGo6YLiDQcdmaPMTi/hk9E3/KBx45lEPXWQryTQm0hWksHgbnhaOjlT
KHRbsnrz95dvbz8OT98+3vavj8/3+6+/9w8v+9duUzZqXM8RZq23tMr+/oIxR+6f//P015/b
x9u/Hp5v718OT3+93f7cQwMP938dnt73v3DW/PXj5ecXNZEu9q9P+4eT37ev93vpINZPKB3W
+fH59c/J4emAkQkO/7vVkU6MthIB4yp50Gi3TMBiSjDTQl2DNmbpNBTVDRfOYVoC0Z71AuYF
HWKyp4AhtD5D1YEU+ImheuR5FeZBx1j7XGso8DnEJbBCSZOMMehhvnYhivwlbD6+K4Q6o9uJ
26rr3A8FpmCgRUbltQ/d2eHwFKi89CGCJfEprKmocHKgwVIuzLND9Prn5f355O75dX/y/Hqi
5qQ1/JIYD/5OuhIHPAnhnMUkMCStLqKk3NgryEOERWCmbUhgSCqcxOodjCTsFOag4YMtYUON
vyjLkPrCfiExNeBtVEgKGxJbE/VquJss20F1uTyCC0SanO9qTBsmr5/9r61X48kia9IAkTcp
DQx7Usp/ifbKf6hXNMOZpt7AvkOUHEhMo7FdagF1Bv348XC4+/rP/s/JnZzpv15vX37/CSa4
cBKdK1gczjIeRQSMJBSxl5ZYT+uM1ksNVxqx5ZP5fOyo4co+5eP9N3pj392+7+9P+JPsD3q0
/+fw/vuEvb093x0kKr59vw06GEUZwco16XtgimxAnWCTUVmk1xhXxBchsKLXSQVTJFy7/DLZ
Ep3nUB9I3m3Qt6WMpoW74lvY8mXI82i1DGF1uF4i+1Gla0RYNhVXAaxYLYOyJdWYHbF0QPnB
VAbhItkMczMGHbRusrDBGM7cPPRubt9+d4wKZk9Ghl0zIjJjRONVj/yatl5NJpLA/u09HCAR
TSfEGCE46MxuR4rvZcou+CQcGAUP+QuV1+NRnKxCoSXrDwau53ogOGPqbr9DzkMhHM/bsqS4
liUwwaUp+pFhEFlMrRkEOw4pHXgyPyWaDYjphIwYqdfgho3DhQlA2Xb/M4DAzxD08zGxaW/Y
NKwim4aENehXy2JNSfG1GJ8flYVX5dwNuaxm/OHlt2Pd0AmjivgKQNuhlIBmhhVXQxlu9Vxj
mH41YUGPI6byP2dFTnwasdSB3EKHDI95ONdXagsN+M3SCqRzuDS02CaaBIeSknbf6MZwFtRX
XxXIn+D7Gt6H3lXD8/z4guEr3EOE6dwqxatQvybv0U1DFzPKMLkrMiOqmW2oVYnPc8E0ErdP
98+PJ/nH44/9q4njaGI8enMor5I2KgX5bma6JpZ435s34YgiRotev2aFY8cmnyShtjZEBMDv
CZ6YOJoVl9cBFr/U6qRZtvL/cPjxegtHndfnj/fDE7EFp8lSr68QriW08Xw7RkPi1HQ9WlyR
hOONqE5f6mo4TkaiqVWHcLNrgHqY3PC/x8dIjnWg232Ge3dEzUKiAfm8uaJmFd/iyfcqyXPS
RMgiM/lyckpCI0E1py2uLZKc9gu2GyODTMAEOt4YHYuCGoweXREToccmhB7SY3kUzg6n5slo
xhxGsG3SZLD2j4hMyYIEFtyO/LJCtVGez+c7miRjMDnTlGxaEdW8yOsdtoEk0E28SUpCR0CC
y4i2QHBIMPnUQOweiy7J1jWPAoFFkWpDzU/HvAtMQfWty25IzEu24ruI00yLIsH5wISWvnoV
px0i7DmRpcU6idC99TNS2IWbT4mMh0URVVIpgZ2WMhyurrOM4w2ovD5FvyLnisggy2aZapqq
Wbpku/novI240DevPDC+Ky+iaoH5s7eIxTo0xaNNcYb28RU+0lDlz+QpHAtbV5/JGq9XS65s
TaRlkb777TYcjH/6Ux5h305+Pr+evB1+PakwQne/93f/HJ5+WTbx8q3TvpvGC2zrewG++vvL
Fw+r7jcsdgTlA4pWCvvZ6Py0o+TwR8zE9aeNgZ0uukiTqv4XFHI7xr+w1b1pwr9gkalymeTY
KBjKvF4ZHqeDu7m6DiztCBoa0i55HoGSIiwDwTTJMcWBYPnalsgYdcLp1xIkHIfBrizWGjd4
0P/zqLxuV0K6/tmzyCZJee5ho0LEjn+hSDLe5k22hA9Zxo1ydrE0rLaMEt/EFMO06MxA1qIS
0Qa/DWfnchdt1tJESvCVR4G32ytU97XtdeLlRBcRSB1QvkhpF42dnTtqw6Nr1CZ10zoiHk/P
f5yfbgplFwPigC+vqfTlDsGMKMrEFfOzxjkUS/L5DHCnjhIeOWeHyHrtBA0mvCSIrDNwdyvQ
25WyPC4yq89EC25QMwJ9NnWW9Y3S6DwonDE6yz8Xiu4OIXzWUz9a0E1E1jIja8GDB0EuwRT9
7gbB/u92tzi1OaOh0iGOTCWvCRJ2OiPKMUFd+fXIegOLLGhDBZtA2LJl9J34wsBomZVpP86Z
wVY5c9MicwOo9FCseEEXQJS9wJaRdb20rJUqoH9K+/otAy3TAbMKE/aCLNlitnLBrE0NF37i
upopEJrmtY58QXicWffI8ENbYboAnWebEDFIIGNwSQPCniCX/VUVgLBE/ykXZwri86Mv3RDH
4li0dXs6g7Xstge4lzKBfmEbeXKkBF+BXl9I3OTdU7AlV6+Sok7d7L34SQzHMGCdbZpLbDvV
OlVTxBo1mSvdf2lVhsCodLC6EfbmkxZL95f95m5KpzdtzSw6jPIERzBrK8nKBESJvSEuV7HF
nyKJpcMT7GDOhIFJZOb6Nq4s/dVA17zGEGvFKrZnWoVOrkVK8L9Eb0Tn/a1DAUZw5UuclQxN
ToEfBF2jvDPaVdpUG8/MsyOSb+eZxXj50BrzsrB6XcEMUtO+tzLASBQ5uYEUy+9sTc0AfObP
16QxRKDAuO/YRkuU0JfXw9P7PyqS5+P+7VdoLiGVowsZw9hpswJHmCSNPCQrN0lQB9YpaDdp
9zp4Nkhx2aBt6qybPlp9DmroKOLrnGHSY8++1gGrJ2FLicyWBar+XAigcjKgIjX8t8XsS9qf
VXN0kEvdld3hYf/1/fCodcw3SXqn4K8hT1cCPt1eMZH/DUfmhT2mcOar0NU5c25jBWexfJUE
JMHsDcdodGhoCTPOXoKqU5Uy5UcryIzVtnj3MbJNbZGnjvW4qkVJsVWTR9qWPcHw4xPac9wu
csXZhcw3GZUNbU38bxko2S3vGg93ZkLH+x8fv36hAUHy9Pb++oE5IZy3nYzhORROD4IKaqUb
WhH9raQcvcL/HykoH4wlXYZOZUfqGTDakAJPypCLdfx/lV1Lb9tGEP4rObZAYThFkVsOFLm0
CEmkzIepnATDEYKicGzEdtuf3/lmluTsi05v0s7sk7vz2plZRS7tv8UfiP6ft03dDNb7AapP
dPEZMx0Aw+BdEUursNC7TZfZWBpS5s7OpmKY4iO5qrGhNSi6BJBFgwAlXvH9Gt22Kp3lluKi
ugvcWjyUoabzlG9xoFawrDqOSICSPt9qez+PSwSdYxdpVVewNsTIIp9HgIbUuHDe+ltFqrK5
Qb7co7Pzdjlqg/1V3vv2P3XQ3OMAH3OzD88A/K+DKwTrIDS3q3gO6L459Xhzzb0bkuYAZxkn
uoRcuxnrRIp/Bh+bqmvqVL7tpRfEeCUPv3zLCOmwgDXdy0UsPYObC+V8sjFDoIs2NiwHJhpB
/ivwiXebIUpNhHoKkfV5yYRlauZHE0+eTfvdfthMqM6XYwDE69hEeCfaLUQi2Z44ht/xe+UQ
5VgAFPPTx0/X19f+Wsy4qx9lxpr92soy2Su77HW5JoiW6bKT3QARRvFbEhwLCzJ1MceUeuO8
izH5RckRnKrthyxy1iwgOT15JJs9+CInS9g0lIt3vhNPYiJ40cmHQMsNdhlITnjhI1BsY4i2
dbOQNNK+RNP3vQsX4uENYCuZbsXvAkgfmqfnl98+4FW4t2eRL7b337+5MTUZMsyRcNM00ek7
cARoD+bz9azeEEsejstju8tHb8o+BM6dEq3v8drwQSNyT5ERpJHn4TgOu16/CWoH4HmLVFd9
1sW8xMdbkgxJPiwaJWczS5EOtPqxvtrinE1C3tc3SHaa+C+OnxGwv1FBE3fG+E8miAUXzlAL
u/rl5fnP73CQogE9vr1e/r3Qj8vrw9XV1a/qHQ/EfHLbN6xYDUcbPDgrPLSfpwBQv7jNRmmg
pjWp3NtALgfhS55IGEKG3py0mdhuY5of6vvlCfRxFAgR22Zkn2kPoR07cwiq8Qg9mwHKSHMN
KYQFJCeT9Q2Ur25vUrWxvDBuTNwxdtJ4SLRhYZk4+ybbZZoR/rownLx0WogpqV0hPY1Z1YfZ
b/7PPpoPBVL7wBhS7rMbHW0Hiih5f/RMoG7BEZtESGMK4g1it03zJuG/LmX7SwS0r/ev9x8g
mT3gtsMhbHbxUwqDpf3vwLs1YUkiFTwxZaFxLA6ci6zPoJDjcSUvz41HPhJT8nvNW1q0uq+y
fRdQARJ4orKlHNhceZp4+2zSuUlg4peRvecvUJ6ugZwAqVpgrKygM/Vqhv7z7x+dVv3tgUJz
uxYQ7E7Sowa3VgFvmacHpg7e+SRl405He23TKLfEZfbCx3sz5dlTJlN+r4oGq7gciwazdWAd
etNmx20cZzLelNNiOA3I6TqwbMp++W3hoSARNq8wMEnKr7VzKWPktqK0onYBt5275JaNbJuh
LPVAzR0CgoDvsAIsE5ZTXmMJpqeasgaBbtTm7yPpAAc6F+1tfPBBf7ZAsaolCodbiJkNMyQn
13SJC+zkeWJuQiENFptfslWLJRcAjx5sIlxBOZ3HjU7XOpW3pk+BkAwqKG2Phw5m6Qo2eB8o
/8qwrbsSD9OxJ0WBe1blsqzkbUkoaO04jumeg60shja4BxCxtj79c/nx/BAlS8d8Dj0YTdtq
AZLX3WoNxHqJrX/6Q4l5vN9TmhXaNYcBl3mFIOl9wuF1R0h22pgcD+zq23NZnUiYXNFq8ViQ
2Lf1XasaCnY3JFfkAtuFAfOnQzT7mYhl+jBBDj6dcdwcozQmm7X7L8mLE2Ac+2I4HP16fDtN
OlkFWwqf4CjBDT+htq73l5dXiAqQd/Onvy8/7r9dVOThUOvbI8lcxCPVMXlLQiN9EKXUnOxJ
iy+/IDH5s/mQloBMy5/PvLeW/C6RVmYy7aE6BMbNErOmru4QPeUreaTaUfFEVxzfTuBHd2BL
5BpeDL3I2OwuGkWkExduYzfsLPqhZm0HUtmh6jr0UjT5cDAOJRapbVPJAjlqqXfL8h/oiUor
skkCAA==

--FCuugMFkClbJLl1L--
