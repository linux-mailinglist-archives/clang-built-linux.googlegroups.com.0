Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5OAUOBAMGQEEYIOZ5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAA5334124
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 16:06:30 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id v196sf21566070ybv.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 07:06:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615388789; cv=pass;
        d=google.com; s=arc-20160816;
        b=otxigXR08fvCqPfx8Y1G/oovCBOv5Hs9RcU6cp/W53ugkSBsFZvnCNd4UDmPufuy7H
         d5ETnDjuO8jnMZTF66MO2+5IRNurlcIgnoBNsGWRLHVDVLo/BsLa7N4iq+8CmVCqrmj6
         mfzbs+AjXkGXH9Za/1e5R2fjdd8JInupONlhmg1RJJYCC9HlnUBUkPWFL1K1ldsrH6Xo
         /52NzFuEROx+60IGW4K055IdaMbnkBmwN0Rgtv4MCIL9sEIpoFGGug31WB7Yx/J1W5ID
         UBIGdlx5w5xbmztIliL0sj0hGEAnU2v3hcj/wmSRWv2SYtYBPnGHl+zlu77qq8fLQlc4
         Zgpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=1eX64tmWkO2bOldnw6rgi7GxOROf8NyInTuzhos6C9s=;
        b=nC8s86YEe+ZWhObUgYGUBHzp3XWP7XconclmXTk7/RyZ4P73b/qfSO5aKKLmoGSJ3B
         nvfYiQ/v6rkLdnD+ZQa7WMLp/rBhBGRbJn/0jcua9eiNPAxOtk7mcd6H2fhu8slABaQx
         t5t9IMlsTEt/BN8WT8GavjhEVftRRnHjINTdyfP6Qzy7J47Lo2PN2RbPAARg4ypxeVbS
         Es/vDp+1r4urdKm9UxalgeB5GS2iar5UpuTlKBqD2H1KyYC2L/oUxozojeClImAiDShy
         8tK8uMXjH80XyP2ciXCMj9piNFgTId3W0TlwwmcHx1oMcPhbximJDUD/1yWW30k1qzSi
         A8SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1eX64tmWkO2bOldnw6rgi7GxOROf8NyInTuzhos6C9s=;
        b=qdZDLLhzqeNwtyzGKry1dU6mVka9AFoPCTSiOwbI+ADxvseOVNMXHqILAXlGWDUxZ0
         Jykn84/H2TRlsCzncNuin2sLl7RBYJ6KCCdwql80LsoAI7X2OGNiHxpYh1l3ZvBe7x3h
         YPT1kOLi4pMu/zn8HaE3YYmiyLBEVsZcIXQpZDV56lTMj3gx8A97yRNGpf+xKOYK95HT
         fSzjuQk2OfMhpPJDLfvxpLvoYfXvtwvTziWn/hyD96cZR0czTeR3HCMX8kGEa9B/9/6a
         oGVxiZXKx/A5SlDyMj826kJJSAHJROheGWfQ0K0Gc9PT0ksPUnzftYYALB4E/GPtie65
         4SHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1eX64tmWkO2bOldnw6rgi7GxOROf8NyInTuzhos6C9s=;
        b=FxK30n2i5JxxNyqzIunTudfUOpx+09/bYkjp72ijFtdK+ogdK0ZQ8PsK3RptMdPHKo
         75tTHNQzaFfFPKkw7GuUbBhL2jLaUnvca7pXzlePockWGnD0nsuTbUlL8jAgswsnGOR1
         Z8AWqXJGuFZSSKSNjnKFwb+Zmu5n8rPkmlVYp1JWhdROxOw2rvDTT9l0j4hfBLP6+oGI
         b/iNX1LnKhSotOw7mYk1RBnch3chcgWbPNKH+6RcvdB6Ui29HgrR52hY5EbpjB/DNevC
         lEt6OjeQac+lf9+J0CA1TKJS1TDiPYuhWF5b9oj6vsTyOC4vt9TuXXhE0/muj0k65w8+
         9O+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ewuHuASOaIK1F5g35i68A1m0ZqGUSwb8oJ23ZAaTA7zJvDUP1
	xB+6n+D4hDjD0T4qv/lanLM=
X-Google-Smtp-Source: ABdhPJyv/lVkc4iewfSWWW5j5lGFjRdw/qTXa8MXERq0EU99pcc2IzcbHF129Dq2tCy3P+vTBuvz3w==
X-Received: by 2002:a25:db13:: with SMTP id g19mr4734638ybf.219.1615388789643;
        Wed, 10 Mar 2021 07:06:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc49:: with SMTP id y70ls56845ybe.4.gmail; Wed, 10 Mar
 2021 07:06:29 -0800 (PST)
X-Received: by 2002:a25:7449:: with SMTP id p70mr4482283ybc.167.1615388788866;
        Wed, 10 Mar 2021 07:06:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615388788; cv=none;
        d=google.com; s=arc-20160816;
        b=TVJl1rksTy6TxgPMiNfkVx+qrJYSEDCyYu7TIGpkIG0sskOtADA4RRbl7NbPJIMTdc
         mWsbv5t4IJYJUEhE1CLmzbORHunYyD9gNJssqG7vJk4gjMPgnxWUxvFRlQf0vI4wUZy/
         I6fyqbI4d2cXFj2nOmhngUuaI57PEJT5gNPv1dMZFoqsadwAMkRPwjvLNlShAayefKQz
         +xiapV24mQJU1uvvpPcSitDmSjOKS9uxZzl4TkT74D8laWU1njvWhKiQZW4LBEXwXyRW
         2dmDPPzKJqeuDskJVKFXFNlPMrN+s0s7gxq9zrEVxEGC3XjRCwOukNtjXK18lOsgmU27
         TcJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=lj4Y/mvafBrhp2bc28FNjCzyhU5RIpOPMTXDu8/6Zws=;
        b=QYl0i9jov214DyjTMAocXCTQ82SGDX2sZ1P6emp2j0I44j1sgpEqVWEfLQ5IyEo8Nx
         aG7+liHH/VediMQyHSemCIZp6MAWQGiHipq+f7EV2eLkJ08iRG+xjZdAbLQm20TsHcgk
         vBWeRcC7Nwko+8PoAv3fW84Em3NNN3myl+kREyIaUXaek5xpZR20dviPgVdpe99+uX4T
         njqYBXoufy3kPjUBp0S+MDLHDfS2gHHkaCdQu1lKjAq6lxG/wehJe5hYbf49ngJ3H/He
         c91PirAewtaQB5rnmtHgHjRDzchAC9wSNnYpGnBuBqLnvLmnwqNpvvVHo/9HdFOzwgQe
         MuJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id s44si1064076ybi.3.2021.03.10.07.06.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 07:06:28 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 5Iy8UeyXKneQBK76F7u1zxhT9uoTKikdXmqq0ulYzlkk3hhDmfrvUO7/p/72NMhLaNVZKiroNa
 lGAKVaOr9FkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="249849603"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; 
   d="gz'50?scan'50,208,50";a="249849603"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2021 07:06:25 -0800
IronPort-SDR: qf53QQxX30/kty9n0zltpmi2q90VRxh8fCS8tULNpOq8e84fTYMjaM+9DMzbSIwCaxdMWvwN0a
 2LWoQFdz7yqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; 
   d="gz'50?scan'50,208,50";a="376997459"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 10 Mar 2021 07:06:22 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lK0Pm-0000Ew-8u; Wed, 10 Mar 2021 15:06:22 +0000
Date: Wed, 10 Mar 2021 23:05:46 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:x86/fpu 17/17]
 drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:8: error:
 unknown type name '__fpu'
Message-ID: <202103102341.7cGA8ZRH-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline
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


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git x86/fpu
head:   1c615e462c7633c3555662f2a9763e22bd7ca5ab
commit: 1c615e462c7633c3555662f2a9763e22bd7ca5ab [17/17] amdgpu/dc: Annotate __fpu
config: powerpc64-randconfig-r005-20210309 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project cd9a69289c7825d54450cb6829fef2c8e0f1963a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=1c615e462c7633c3555662f2a9763e22bd7ca5ab
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue x86/fpu
        git checkout 1c615e462c7633c3555662f2a9763e22bd7ca5ab
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

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
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1320:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
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
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1523:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1528:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1541:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1556:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1560:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1611:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1800:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103102341.7cGA8ZRH-lkp%40intel.com.

--vtzGhvizbBRQ85DL
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
lSbMhWwx1yklp6xiNSnkLmfp4P8vDhzKJCWhAgA=

--vtzGhvizbBRQ85DL--
