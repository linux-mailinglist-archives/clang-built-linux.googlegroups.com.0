Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZP6SL4QKGQENHB62LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC4B234F05
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 03:03:34 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id j205sf4779099vsd.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 18:03:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596243814; cv=pass;
        d=google.com; s=arc-20160816;
        b=hULrNfH7+JnKe+Dpw7z8Jv9yxuuA0Z2gnR1qQdZN5gaZx2l+qU5R1z9DQrxvHcIgDy
         0J5QcnLWIHGe9dWYcv50HzZDpof9TzkbSCAdKYpjbCL5jRxgbXzQNvRfrKSgoJQyY3s+
         84ml5aENrBzca8ofoUiFEGx9zd+L4Gfe66fZpsRCfX1Ke+WcXgCEJtc2o4ITUAg2zjDe
         le0FqwPwHF23cVMahBwpEmwCAp3nD6zT86Ylf32MPa6MaUrX66VV/Rtuc0ww12VJNBMK
         N3B3uG36hMEAjWtwr3kaaKOEpQ1FvQqVnqwFaXYmfz5QyDPjxE8Xc/1K2Xtkh6/7leJp
         7PhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=lJYQ1/lQ9u6kUnVvXje3D/Z/eMIn045Mo4n2Km2hgng=;
        b=alMVb/unJ6x/298WtQgB2k/Yv5dFKxEE6J74L/vOHBPM4G6dh0nw8iG/bmsK6Vj3Hu
         AxJSkt1HRbxGLfgPOqGEE9wQaXKxiWvgzmV40TY2QbT9D+8reemgo7UjGrmRHXx5tElC
         eY66T71Y3J+u4zlhUxJzFA4nvAtwxX00kZPieCperym6nWm5eSTt/UTuKJdwvVFFmG8I
         6cnfC6nVtgeppf9SurpqnMjo6ZtJBDfiAoO7lP/t/tNfqLs20wb1SZhjvnTWXOzpQ2V2
         kwb/OJGKRKG876pra3NqpgM/HO9pXZcR+zSKfDQ+yXM1XhOA588pJR+UUMW4OHsQBrVx
         GsoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lJYQ1/lQ9u6kUnVvXje3D/Z/eMIn045Mo4n2Km2hgng=;
        b=GzAwzctadaXUj0UdBHHMAVf6GY1lw2KfYukXI2oZtrk1AZXPzpHXYdWIFmoL+ChOoB
         ThRZveEpua1N6wLqajbLGFjDCtMH8+FFWJZYvVUDeczs+P4KHXA1SmL40fpDeNzdN+gZ
         kJR1UoNaPv3esfoVbh6xpOXRx7+r+2Dm21+7KfBVfPvd+Y+92qYTjB1HagNUAYmkoqFC
         oMQ/w2ExMjXgcYOBoMOE7nEiH8fOFgQCkOh8yRWnxvLiNjTbo1XMhpDzWpsxkpgZLvwT
         HhkZc2LSg2wwPf8EH4CWidpIGCk5zbiugGCsV8g3DXCLIw5kxNLtyOokrmwmptyhnBX0
         Lang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lJYQ1/lQ9u6kUnVvXje3D/Z/eMIn045Mo4n2Km2hgng=;
        b=tm0QntGCxczfESBerjb+KmpaqNuAJPoS6Z/QJvOI2hRSTcpxwKnehQbf3Pi4PbisSI
         deweKX7Nwr1lK6xuYbOGvfWoVceULfj5E/0UFOmi+Rvv2jAXrfGLBuz6YrA7UfIGhL4R
         B4c0MSXbV7YqyPWBpAzHDeEWU85JFHbqCLnbPBDB1+J++h9EBPYXi+cOcepDdJj7wiMy
         mi8kHpfq3sbkJ2f7Z/fUyg9Aw4ph2HhuYYge8rvrfq33xib6IEz3nBv2GBs2hVmIRGm0
         OW+wvEU2JQhckVD5Rm+VYJ5HT+NebspTijpUy+AgIsmS0w2xA8B8AaMgtxOhvE0pAC3D
         Uigw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314DKr8NZyUkVUHnp/SBt4pjpoRyhd62fV41XhkPNNBAsORG8R3
	rGyK4MRQGQiq432Y+yA2BFY=
X-Google-Smtp-Source: ABdhPJxXJRMULdSLyjvPWjzXTjF8PihM2Sz5kxPoy6dcQQTD4GzEAafoRkkaxjCvKjAcTn0bsrzQpA==
X-Received: by 2002:a1f:1ec6:: with SMTP id e189mr4899262vke.32.1596243813709;
        Fri, 31 Jul 2020 18:03:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:37c6:: with SMTP id e6ls747497uav.4.gmail; Fri, 31 Jul
 2020 18:03:33 -0700 (PDT)
X-Received: by 2002:ab0:26d3:: with SMTP id b19mr4704138uap.122.1596243813325;
        Fri, 31 Jul 2020 18:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596243813; cv=none;
        d=google.com; s=arc-20160816;
        b=DBeRutRpjRIZwVC6krQmMlVRgYykBCr3uTnxQ+4cHHP3CP0W/MsUg0ItAucuE6H+9L
         y40Tt2a2fMuyG2daRCz3H/IRey/wutrtcsDlYErOhY/vOYQUMisLlepZOUI0jjuk7U1o
         d27Rv/+taJ6cTOQoU3jWXqReDzxEFWgM4PDI5qikdwakZwALVFAa43DJHAXxjZLrjgSU
         Y+T26UjPG4Dd3WG6KwvpZJOpBUTJjfX8mhKxOfJC8i4okP5mI088mNtNh1dJthtHzf8k
         zg2Xju2LPyJMy2m4stSfIXReaeXSNiLfBeKCvMVCsA5or1zoVPFrBYjPVB+lCU3s64Ou
         o5Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=X86zmX3974dMDpwhvz8csPQH7ZQvtMuJ6/YyKF/f608=;
        b=ljikWtDmdB+LzbNBsDolG3p59blCTAbalB/LDYKzbj6M63HKt54SJgSboG7ZQwOyo4
         WmOS59H0luk1LwY/2Wnt3p47Iq7GzVMH7r2bHQutfGz1AG1q9+zaTPl0p7/e/TwBayhx
         3oLrEZcEg/y75UnWuubQTW0YeRZxqYM2Bldsuj24bdyVWt6PggCKxuGylDzu/aBvgFKL
         niui0x5EyBWs29JdjZkSx0QctSXg4D7Lq7PhTD90yiN6svNnfMilD6eFe5MtvlE3RYVo
         dQZZj45g4tYbYp95X1XI+GUnVX5Vjh3ZRKbVLY9gGqpjXgQDRu94C/ffs17vdepwSzqQ
         lxpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id u18si135106vsq.0.2020.07.31.18.03.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 31 Jul 2020 18:03:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 4a1d5usfMyGSPFzpScxRIDKNWT05fX8rZDFny+AzE6bdwUqQaoG2hw8jOskKCGnbifPiUflBuF
 9roL1J+/haSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9699"; a="139455767"
X-IronPort-AV: E=Sophos;i="5.75,420,1589266800"; 
   d="gz'50?scan'50,208,50";a="139455767"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Jul 2020 18:03:31 -0700
IronPort-SDR: f3kTW5kCwEyyA9dzEJWEqiX5ip2CsWST9Zs0KuH1joew3JF/jKVjbzWo5XxH9iv3L1xL2YGjC8
 hXbF9f4Fk4IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,420,1589266800"; 
   d="gz'50?scan'50,208,50";a="321619231"
Received: from lkp-server01.sh.intel.com (HELO e21119890065) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 31 Jul 2020 18:03:29 -0700
Received: from kbuild by e21119890065 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k1fvs-0000Ep-QG; Sat, 01 Aug 2020 01:03:28 +0000
Date: Sat, 1 Aug 2020 09:02:27 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [peterz-queue:x86/fpu 4/4]
 drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:438:8: error:
 unknown type name '__fpu'
Message-ID: <202008010921.rznfRQEj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="huq684BweRXVnRxX"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--huq684BweRXVnRxX
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git x86/fpu
head:   9f7ce4172d707f9fbd9413a9f72af64aa9cb0e11
commit: 9f7ce4172d707f9fbd9413a9f72af64aa9cb0e11 [4/4] amdgpu/dc: Annotate __fpu
config: powerpc64-randconfig-r036-20200731 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c23ae3f18ee3ff11671f4c62ffc66d150b1bcdc2)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        git checkout 9f7ce4172d707f9fbd9413a9f72af64aa9cb0e11
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
   arch/powerpc/include/asm/mmu.h:235:20: note: 'mmu_has_feature' declared here
   static inline bool mmu_has_feature(unsigned long feature)
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
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1307:2: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:74:6: note: expanded from macro 'DC_FP_END'
           if (cpu_has_feature(CPU_FTR_VSX_COMP)) { \
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1307:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1410:1: error: unknown type name '__fpu'
   __fpu unsigned int dcn_find_dcfclk_suits_all(
   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1478:2: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:62:6: note: expanded from macro 'DC_FP_START'
           if (cpu_has_feature(CPU_FTR_VSX_COMP)) { \
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1478:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:64:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1509:2: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:74:6: note: expanded from macro 'DC_FP_END'
           if (cpu_has_feature(CPU_FTR_VSX_COMP)) { \
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1509:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:75:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calcs.c:1514:2: error: implicit declaration of function 'cpu_has_feature' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008010921.rznfRQEj%25lkp%40intel.com.

--huq684BweRXVnRxX
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICIKyJF8AAy5jb25maWcAlFxLd+O2kt7nV+h0NncWSfzodpyZ4wUIghIikqABULK94VHL
dEdz3ZavLCfpfz9V4AsAQXUmi06rqvAuVH1VKPaPP/w4I+/H/dfNcbfdPD9/m32pX+rD5lg/
zp52z/X/zGIxy4WesZjrn0E43b28//3L6/6v+vC6nX36+frns58O219ny/rwUj/P6P7laffl
HTrY7V9++PEHKvKEzytKqxWTiou80uxO33zYPm9evsz+rA9vIDc7v/j57Oez2b++7I7//csv
8OfX3eGwP/zy/Pzn1+r1sP/fenucfTo/P3t6PLv8eLm9eDy72l5v6k+X179+PH/6XD+dX9bb
+lN9df1Y/9eHbtT5MOzNWUdM4zEN5LiqaEry+c03SxCIaRoPJCPRNz+/OIP/rD4WRFVEZdVc
aGE1chmVKHVR6iCf5ynPmcUSudKypFpINVC5vK3WQi4HSlTyNNY8Y5UmUcoqJaQ1gF5IRmAx
eSLgDxBR2BQO58fZ3Bz28+ytPr6/DscVSbFkeQWnpbLCGjjnumL5qiIStodnXN9cXkAv/Wyz
gsPomik9273NXvZH7LjfT0FJ2u3dhw8hckVKe+fMsipFUm3JL8iKVUsmc5ZW8wduTc/mpA8Z
meJYI7j99CuxOrEXMuaLwDpjlpAy1Wa3rHl35IVQOicZu/nwr5f9C2pr361akyI4nrpXK17Q
IK8Qit9V2W3JShaYzZpouqgM114hlUKpKmOZkPcV0ZrQRaBxqVjKI7sdKcEOBCTNDhMJQxkJ
mDCcatqpGWjs7O3989u3t2P9dVCzOcuZ5NQotFqI9XAuPqdK2YqlYT5d2EqAlFhkhOchWrXg
TOI078d9ZYqj5CQj2G0iJGVxe8W4bT5UQaRibY/9/tkTj1lUzhPlnmr98jjbP3k75s/IXPXV
sMkem8KdWsKG5VoFmJlQVVnERLPuePTuKxji0AlpTpdgBhicgWVQclEtHvC6ZyK3FwfEAsYQ
MacBFWla8Th1FNFQg4q94PNFJZkyq5XhbRrN3LoXkrGs0DBAHroXHXsl0jLXRN7bk2qZJ5pR
Aa26/aNF+YvevP17doTpzDYwtbfj5vg222y3+/eX4+7ly7CjKy6hdVFWhJo+Gp3pRzYb7rID
swh0UuVE85WztSEp0IJAf5GKYWWCMrAJIGwdtc+pVpfOdMGXKE20CpsmxYOn9g/2y+yrpOVM
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
N05/AMTwRh4u4AEA

--huq684BweRXVnRxX--
