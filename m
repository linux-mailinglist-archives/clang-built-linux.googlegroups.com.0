Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJNKZGAAMGQE65CV6HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C84C306D6F
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 07:09:43 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id o3sf2773060pju.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 22:09:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611814182; cv=pass;
        d=google.com; s=arc-20160816;
        b=UwYpp/BI0qsfg4EOni3ydPntUmFGD/zxI+Rppa21NzJaAPKY/qu8S2BLqqUU1t76Yk
         K7zdl88IHsP7zYPZSfnOpkWZ7ZW9Cr+KDB7s+Ve0bu6Ip9vTLyz9dPi1VMIZ+Z7Ypq9B
         Ay+Nf31mV6rz4OJ4jzib/YIGLJnWtfGmZth+YadxzjOxHmj25H1APUd2KafVvGpGJXwj
         7Va5Dol2+PXbofX8GlLss7YJE4zaY9XNoLYMTqx9/jVASgohYbnxKkyptKtL8cGJ2K1y
         iI/ygJVPK73vpvWTE7lm0xjgXhcw2lCbl+GZ7IvKnzr3uqvE6NwhCJeu7eoCm5crmgrO
         AFYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=f6P79cIZUZlSdIDerrD7L/lKVkn2r4Qf6J2PADT68J4=;
        b=U9b8PYeUXzk1Qhx+gVPi4Sm0bZq2EDcEgkqia55f7sC2olKWKVD86FiVa1jvGCdtEo
         Y/0vY9LHZdcRjPYCLnDwYUFmJnOQ/uepGzk3N5hiTHhPU24BEmtpHG2AwzCo4aj7htSZ
         CNSfeED1NJsVtEMdNEIbWHcfrN05Gu0YqtBIOVwBxqrbCRZHwyh+9clLejQejeWYt4LI
         YexdGgeQFCl7Zq0AjYmdpr0wLwujU9v42OwtxdrFz4HegF0qBTQqMuvj3+LN0xpgXUiX
         nWy14pND6oE9AeMscEBs3SuPF+0HC/EPMaPg1H07wvB9Txk79lgMF2lFWBK1aIXsCxSp
         Bvqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f6P79cIZUZlSdIDerrD7L/lKVkn2r4Qf6J2PADT68J4=;
        b=j4T+ARsCNW/4Gff/ybKCexwnHJ7JGcHC6pu0QWoldh5JgtLKT4g+8UMOzZ0aYGE5b2
         ITpiwzlZCuL2s2/1XGZG+XIWVDxALBHvZ/hYmU9iMhaGuGWRI2Dd4EFzTtLAubijPxvf
         RD/ii55xJ0kIAkudqrRvffUWm37CcSrfkMwCnP3G3lLxby2tXslPOW2mvJjktwOFmffe
         b+88r6UbjN2seDqYwEyHp+3Zx+akJUnae/ZcmxAAJvR6q8NPGAjwQqFuvmE78O6wkCYt
         X/pkaeAdjoa3IKkuJdb/r0YbIJ7cbLIpssTG2b4sEtj0anBq5hSRZ/Bqp3w6c5gTrVVg
         76Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=f6P79cIZUZlSdIDerrD7L/lKVkn2r4Qf6J2PADT68J4=;
        b=RsniD/Bh9a1YERht8TcE5A0QYyXPygOsAcUC3yqh5OIUY14UgWknjPcsNkCAV0W6Or
         MOFrVJG+MS+6Uy94eT9S3ESgIBidmtoDml/HcnwIODFYQj1W9ac2c4tHWWBOdIrvlQUZ
         0rlbNVjvrku5SOxppJciVBiWf4d/xGntUQ2LnKlXu0kSYK/iEWXYmtadCj7YLr9Yu0P8
         oqKWCy9L6Ewsn6A4puvwU75KaNqZYfD99C0BT+01L2oAcd733LvTQLqf9nlLImlblQ24
         49x2Tf7BasgfbSx67/h4Rs51pyHj24+cuUz4FriPsK3C5Vc884Maypn6M+t18eIvV/2K
         HNcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530boiEQvNSqib3gXdFBkQ/CaP6HFVKaWqJ9vi/OAXKfnzkOgBsq
	IvyZDHseP7elN/1RqINmo78=
X-Google-Smtp-Source: ABdhPJx0bAijKhtURCaGAsgQx8Iexfw3PJzECzhUpitedan88/TReKYemC7ob5Kca3/L1qJXylSHNg==
X-Received: by 2002:a62:303:0:b029:1a5:a6f7:ac0d with SMTP id 3-20020a6203030000b02901a5a6f7ac0dmr14585411pfd.63.1611814181661;
        Wed, 27 Jan 2021 22:09:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:15c8:: with SMTP id o8ls1820132pfu.8.gmail; Wed, 27
 Jan 2021 22:09:41 -0800 (PST)
X-Received: by 2002:a63:e442:: with SMTP id i2mr14472125pgk.12.1611814180839;
        Wed, 27 Jan 2021 22:09:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611814180; cv=none;
        d=google.com; s=arc-20160816;
        b=TL07bO+C8QezpKXmLZ7QfyA/8xZwgAdGpkgPGfiESf2URR0dpVVpsDxM9nPTyi/SHh
         f/uw4xMHsoc3vPnZxsTLVqlZ/rXTE88pHT8q0XTvfdAJI90pxT86haT45WjMqex4U8rb
         yhKrBMxyXN6k7y54epF2nf0MsnWB8Y0VbRuBZnTDea9I0zChL6zihS5yJMjXallyWXJx
         wlAcaskj8o8qmX+4N6aAElxWyK+m/l/hTRxr7xt4e9+nuq3ZgTYve5YSjfUDGgVY3Zor
         BQMYML0xik8O/F/i3IQo5kzUI36Cr3dZb8a48rmeuQ3nod+RNA5rVPuKfBUbtOe+H39f
         qPHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=BdkRmPLvI0Nnskr8+n+ZUISy4CjI/WN+YQ9dkS/2IcQ=;
        b=IdYsuYdx3w0hm+nukBfGNobUC1XsaaJWLVwMmkyJnFR4Rt2b9Qx7zB2+vr8S/NcPgs
         yH/hNmXwli3aMpFjtyLC+P7GQdbwCJdd9Pf5ct92KyrbgQ9tHQW5GC9zrZy5uBu37R0z
         qA7bAdaaOBXqHzfMS/ae18env5SJGqfABqW9MzV6yI8cKZCkuZ06aMnG8IY1PMuE8YMK
         EkTuy6EsTMtZioT8Hpu1KOj3VhgLSXHlBLn6t362q/Ge2qE0ewHAaC65kgBiLb5DagBo
         Sz4ZhhOetp7rlZGoDOu0lgAFY9XaNFNniCahIllrNULLCiPTQ0bdPQTUuehYbWOm/xwD
         TUEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id l192si159496pfd.6.2021.01.27.22.09.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Jan 2021 22:09:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: rEgnTts/rWY9TOPEDehPxYgO9my8beIcHy4jHObnU3xSeTOQskmxHq8f2zjRZEO644XjgOrpTs
 zdk+YIXTuM9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="176677607"
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; 
   d="gz'50?scan'50,208,50";a="176677607"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2021 22:09:39 -0800
IronPort-SDR: hkYQLRtdabAl9/8Ed7uSJmCXWzeFU8nRRt+AEiCMTIHhvliEiGJ5iDUaIC5nP9J8HR2kdIzHuK
 hDQvhjxjhY/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,381,1602572400"; 
   d="gz'50?scan'50,208,50";a="362734970"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 27 Jan 2021 22:09:37 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l50Uq-0002RM-Rf; Thu, 28 Jan 2021 06:09:37 +0000
Date: Thu, 28 Jan 2021 14:09:22 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:x86/fpu 4/4]
 drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:450:8: error:
 unknown type name '__fpu'
Message-ID: <202101281418.qhDEw7wM-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git x86/fpu
head:   0509c14ca112f3d6c581bedfb963475128d0d6a6
commit: 0509c14ca112f3d6c581bedfb963475128d0d6a6 [4/4] amdgpu/dc: Annotate __fpu
config: powerpc64-randconfig-r003-20210128 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 48bdd676a1d1338c10541460bf5beb69ac17e451)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?id=0509c14ca112f3d6c581bedfb963475128d0d6a6
        git remote add peterz-queue https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git
        git fetch --no-tags peterz-queue x86/fpu
        git checkout 0509c14ca112f3d6c581bedfb963475128d0d6a6
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101281418.qhDEw7wM-lkp%40intel.com.

--Dxnq1zWXvFF0Q93v
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Dxnq1zWXvFF0Q93v--
