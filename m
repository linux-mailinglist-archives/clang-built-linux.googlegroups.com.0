Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6H4YH4AKGQESU3UPDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A36B22282C
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 18:21:14 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id c82sf4853658pfb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 09:21:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594916472; cv=pass;
        d=google.com; s=arc-20160816;
        b=cRRFq51PBlWDLDUDTHgHiMxxv9zMfZNBS3Bzl18kaQPq50rNJG2ddN6jW8Q9m4M1fv
         RpXDqaQGhHViSp8VcJIW6ba4WJQDx3exOfOrrhjrTp3kEi5yIqomaNo1hicfru3wZboU
         Meay3u4QX8Azjy5FMLZfrE6QIwPdBtOKp4lLOZzU5ofQmPdiF8VxBLZ5bL7+v7oQ//0c
         ylSUIMiNMi0Oh4xRVEovB+TcYMN0aDuwfYBtB0DBcWJSiBK+YTJZ4qNKcL8pqxq215wW
         /5Yd0L1P8sjNMUVcdblUhfy22QRYxhe3ptv1FbyPu637pYSBcEPSnFdPiuS9YfIRqMls
         Y9HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=bJL4edGFq08lcjzPx8W2RMrGYuSZK4H/y+twJSIXfPs=;
        b=Oh2ZLAuMk7OyrjD69PXZ/uEhRQ5tmDWXyUiT7tv6Vehd08kzLgGHk9MbLuU2VGiFSg
         ccfnwESmpUfrDm4ywMsuXNsLglciQhm4d1t+9QwtIoi+m2mRTf2Eg01nekbLkRTE/1tV
         0gfOOw4D8VotkiiJOdNhwiBUD60fr4LnvXeznVxkWeCvT7NuNn8iMKrW1f0dNZx/KW2k
         Hm/oafAwDmzLtCsHTNHyrTF+S4ZrvA+iYQWICnF8HAweujXNdmleL296dDnNHedb9SIH
         vyB7wG0WPo1bBYyxr+3XnaYFZ0w6HCXQv6r6glWunjDf0C+LH0Hu/0vnNXcIKr7goG6B
         O8VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bJL4edGFq08lcjzPx8W2RMrGYuSZK4H/y+twJSIXfPs=;
        b=kDhUSSlITjzd4x/fuEFU3jlF0SlmKJwEK3Rdko3QdhdRX73Wdtyn1n+AvV675w/YmB
         nzNyKNNU7kRdjxrs1iBKDRtEEDsrPgkflp+AL/WoCQQO2OksW1Y5WmKg3przKmmkg8yn
         qGqSRx9G4XZGpMPjapIIHytEIGOicp8AjWtUDCiqEfgRI1iI6ELIX0/YTcvoce2U1Mlk
         TbO4rhVpN6wPdAlF+FlKg1QfU3tIWTmbuoFE9hhFAG5tGk349+dNEcp+AD0F6iV9Qeuy
         thZWzxsASLd5n8RWngta2DXnHhWx0VeJAHj+P01AykUKMFrdzOHseSgGKxD9klPmpzbX
         5SEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bJL4edGFq08lcjzPx8W2RMrGYuSZK4H/y+twJSIXfPs=;
        b=LsS7vhGeu++HHrt7G2SSDepygbTVUtn1Hf0US6EeFFpzqYSBtXvMAdifKYaSfYG50i
         Zqs25LRtRdG5xadSpnCExRk3zz+D5tmnpcQ9L3zj17VytjzEm24VefLTXhJAt6GK3Kre
         PyJZ10Za7T+kSuIRXslkFFXzRaWu1IlxkrUdK25e+KOCfzK3PGvYGekBvDdjeA7/D4eN
         EDLAOh0NF785xjNmedtoXnwZm/rQMkcDrbm7gdFA1QNEXwLCwFDr9Auj8qoA82L7Lj6/
         5KFe4mtVqSCoNU6G2w9ASRPXjHLNy0icacekHTnaACcDaVPEPCnmebUkj+SloLpirPjh
         KMgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EdKZfMRt+bMyPXHi0P9AlhZvFdj7ZZI+JKQOeaWQ/FwMpgAnL
	o5oB/KaHAj53V02m7tw+Mro=
X-Google-Smtp-Source: ABdhPJwHQ+UINz0tbhOiCApEAisJWMuxeZ3/9dq7YzK98StxiOUp7LHk++GBY/haVJ/ngzmtcQyzBA==
X-Received: by 2002:a17:90a:25ef:: with SMTP id k102mr5828323pje.145.1594916472330;
        Thu, 16 Jul 2020 09:21:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b288:: with SMTP id u8ls2302265plr.4.gmail; Thu, 16
 Jul 2020 09:21:11 -0700 (PDT)
X-Received: by 2002:a17:902:d70f:: with SMTP id w15mr4241604ply.110.1594916471740;
        Thu, 16 Jul 2020 09:21:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594916471; cv=none;
        d=google.com; s=arc-20160816;
        b=IPyzHRFzZ+n3sgIWDKjYrLzr6gPlifhhFL5b+J57T1pcgnNHXGH2AcaJBP5VcKHUE/
         r88CY6uswj3sN6cRoqjbD4IrwO1OBoUywjSWqdZr8ivVYn/lEY3mlqKX9thkH/UsJeIG
         ajeC/KSKJmqJs2c6YYHixjAnzml64zEnWICM66i8SwA2U2l7DrUNU4yYBDLwSQwy45BM
         8GmkhXE3/pPLkIUi7AqanyRhvWCyCi9Grfh2WUIRO1T7oIw1vSe4q266NP0qpjPsh+Pb
         ZJ2pzT4/w/IefVeLxFzpL+8yOkTsj+4rpBLE4psaNL+tjzgLFqLdxbYY8/kz62igPLL+
         dSyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=M5GZpGyNMnXSknDDlKkYRsXwqJCLcpI1uogiYpAG+JE=;
        b=OsULlcK7xexUzCKRFemfhmVhBbRXAlewvlBss2GztZdZ+UvCtlCJBUyh75yHS2Sxpe
         lByDN2KQWq2A+EiQqrGJRL8k4N5KHP5wBgvtD62kmyycxQ65khJgDpMuutCLf0Jka76g
         udTTk7KQYP4r2dOmTq1hvKvZLBsGoGzI1Ggemkw7D912sCAqKHFAphZZlltRu5OAgTtt
         XbTYz5plTuDiTfOzJ9EokXoE75yDQ2XfRAKQpsFlHK5Upzq02Y3rjONZbBk+e7TCvtoP
         Im6TvDi3crR1MbVnw9u3Ch7HjFry0bBl5ajA+66ZNXBGCIrDdIeEkDiLU6MoQrs+czHo
         AZjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id v5si269276plo.4.2020.07.16.09.21.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jul 2020 09:21:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: HGF8LQJyTGLdx6krZvsqxq4N3yfAzlRn8+S4WnI1x7lUGoVpOFJyqZ+1nIivhIMhf9knEaI+uH
 EhxFO6ctkReg==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137546131"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; 
   d="gz'50?scan'50,208,50";a="137546131"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2020 09:21:09 -0700
IronPort-SDR: kObxfYnVBi6N6TnDVpfZIEmXu/VbQ6Tun8EYyGtIJXjR4GNkcmcukXO4HDPafDNAXeqdvYU571
 xYzwGyJmLG8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; 
   d="gz'50?scan'50,208,50";a="317080108"
Received: from lkp-server01.sh.intel.com (HELO 70d1600e1569) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 16 Jul 2020 09:21:07 -0700
Received: from kbuild by 70d1600e1569 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jw6d8-000067-RH; Thu, 16 Jul 2020 16:21:06 +0000
Date: Fri, 17 Jul 2020 00:20:51 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:x86/fpu 4/4]
 drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:438:8: error:
 unknown type name '__fpu'
Message-ID: <202007170046.mscmgsIt%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git x86/fpu
head:   e476cca1496d0f7f15ff57cceee4c33dea18677d
commit: e476cca1496d0f7f15ff57cceee4c33dea18677d [4/4] amdgpu/dc: Annotate __fpu
config: powerpc64-randconfig-r003-20200716 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ed6b578040a85977026c93bf4188f996148f3218)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        git checkout e476cca1496d0f7f15ff57cceee4c33dea18677d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:438:8: error: unknown type name '__fpu'
   static __fpu void dcn_bw_calc_rq_dlg_ttu(
          ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:626:2: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:62:6: note: expanded from macro 'DC_FP_START'
           if (cpu_has_feature(CPU_FTR_VSX_COMP)) { \
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:626:2: note: did you mean 'mmu_has_feature'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:62:6: note: expanded from macro 'DC_FP_START'
           if (cpu_has_feature(CPU_FTR_VSX_COMP)) { \
               ^
   arch/powerpc/include/asm/mmu.h:197:29: note: 'mmu_has_feature' declared here
   static __always_inline bool mmu_has_feature(unsigned long feature)
                               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:626:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:626:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:626:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:67:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:626:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:67:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:662:2: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:74:6: note: expanded from macro 'DC_FP_END'
           if (cpu_has_feature(CPU_FTR_VSX_COMP)) { \
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:662:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:662:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:662:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:78:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:662:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:78:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:676:8: error: unknown type name '__fpu'
   static __fpu void hack_force_pipe_split(struct dcn_bw_internal_vars *v,
          ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:725:14: warning: no previous prototype for function 'get_highest_allowed_voltage_level' [-Wmissing-prototypes]
   unsigned int get_highest_allowed_voltage_level(uint32_t hw_internal_rev, uint32_t pci_revision_id)
                ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:725:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   unsigned int get_highest_allowed_voltage_level(uint32_t hw_internal_rev, uint32_t pci_revision_id)
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:774:2: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:62:6: note: expanded from macro 'DC_FP_START'
           if (cpu_has_feature(CPU_FTR_VSX_COMP)) { \
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:774:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:774:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:67:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1307:2: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:74:6: note: expanded from macro 'DC_FP_END'
           if (cpu_has_feature(CPU_FTR_VSX_COMP)) { \

vim +/__fpu +438 drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c

   437	
 > 438	static __fpu void dcn_bw_calc_rq_dlg_ttu(
   439			const struct dc *dc,
   440			const struct dcn_bw_internal_vars *v,
   441			struct pipe_ctx *pipe,
   442			int in_idx)
   443	{
   444		struct display_mode_lib *dml = (struct display_mode_lib *)(&dc->dml);
   445		struct _vcs_dpi_display_dlg_regs_st *dlg_regs = &pipe->dlg_regs;
   446		struct _vcs_dpi_display_ttu_regs_st *ttu_regs = &pipe->ttu_regs;
   447		struct _vcs_dpi_display_rq_regs_st *rq_regs = &pipe->rq_regs;
   448		struct _vcs_dpi_display_rq_params_st rq_param = {0};
   449		struct _vcs_dpi_display_dlg_sys_params_st dlg_sys_param = {0};
   450		struct _vcs_dpi_display_e2e_pipe_params_st input = { { { 0 } } };
   451		float total_active_bw = 0;
   452		float total_prefetch_bw = 0;
   453		int total_flip_bytes = 0;
   454		int i;
   455	
   456		memset(dlg_regs, 0, sizeof(*dlg_regs));
   457		memset(ttu_regs, 0, sizeof(*ttu_regs));
   458		memset(rq_regs, 0, sizeof(*rq_regs));
   459	
   460		for (i = 0; i < number_of_planes; i++) {
   461			total_active_bw += v->read_bandwidth[i];
   462			total_prefetch_bw += v->prefetch_bandwidth[i];
   463			total_flip_bytes += v->total_immediate_flip_bytes[i];
   464		}
   465		dlg_sys_param.total_flip_bw = v->return_bw - dcn_bw_max2(total_active_bw, total_prefetch_bw);
   466		if (dlg_sys_param.total_flip_bw < 0.0)
   467			dlg_sys_param.total_flip_bw = 0;
   468	
   469		dlg_sys_param.t_mclk_wm_us = v->dram_clock_change_watermark;
   470		dlg_sys_param.t_sr_wm_us = v->stutter_enter_plus_exit_watermark;
   471		dlg_sys_param.t_urg_wm_us = v->urgent_watermark;
   472		dlg_sys_param.t_extra_us = v->urgent_extra_latency;
   473		dlg_sys_param.deepsleep_dcfclk_mhz = v->dcf_clk_deep_sleep;
   474		dlg_sys_param.total_flip_bytes = total_flip_bytes;
   475	
   476		pipe_ctx_to_e2e_pipe_params(pipe, &input.pipe);
   477		input.clks_cfg.dcfclk_mhz = v->dcfclk;
   478		input.clks_cfg.dispclk_mhz = v->dispclk;
   479		input.clks_cfg.dppclk_mhz = v->dppclk;
   480		input.clks_cfg.refclk_mhz = dc->res_pool->ref_clocks.dchub_ref_clock_inKhz / 1000.0;
   481		input.clks_cfg.socclk_mhz = v->socclk;
   482		input.clks_cfg.voltage = v->voltage_level;
   483	//	dc->dml.logger = pool->base.logger;
   484		input.dout.output_format = (v->output_format[in_idx] == dcn_bw_420) ? dm_420 : dm_444;
   485		input.dout.output_type  = (v->output[in_idx] == dcn_bw_hdmi) ? dm_hdmi : dm_dp;
   486		//input[in_idx].dout.output_standard;
   487	
   488		/*todo: soc->sr_enter_plus_exit_time??*/
   489		dlg_sys_param.t_srx_delay_us = dc->dcn_ip->dcfclk_cstate_latency / v->dcf_clk_deep_sleep;
   490	
   491		dml1_rq_dlg_get_rq_params(dml, &rq_param, input.pipe.src);
   492		dml1_extract_rq_regs(dml, rq_regs, rq_param);
   493		dml1_rq_dlg_get_dlg_params(
   494				dml,
   495				dlg_regs,
   496				ttu_regs,
   497				rq_param.dlg,
   498				dlg_sys_param,
   499				input,
   500				true,
   501				true,
   502				v->pte_enable == dcn_bw_yes,
   503				pipe->plane_state->flip_immediate);
   504	}
   505	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007170046.mscmgsIt%25lkp%40intel.com.

--BOKacYhQ+x31HxR3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Dyz1TfD/AMdsNj/wuQEA

--BOKacYhQ+x31HxR3--
