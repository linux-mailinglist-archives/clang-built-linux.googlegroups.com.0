Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLXP52DAMGQENTKZ24Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 426B93B7AE6
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 02:15:43 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id m127-20020a1fee850000b029024baf9fdfd1sf130832vkh.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 17:15:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625012142; cv=pass;
        d=google.com; s=arc-20160816;
        b=UtKJ7FIz5RhU2+Acn0g2TMGQe/S64EsuQ+Cjj6OeoFc40T8vddMYEBfckacxj3N9gT
         8FTndl3BhyBlQxiV3kZjNhYNrRYUq5nabF/Xg72x85fQN5a6fT8MUgw/DwfzG/zrCzJO
         HClWMxfdpF3V46TlP4R3Duje2Ma6ZBDLNacPlaA56j1iqInmR7i7JfXUMOy6XtDlxJT2
         J2NseXxuSnX1MEQ/rSb6F4egwnGdCVOaHpSENbPAS/gBgoKlLddnGJ5xIvAdyFwIBUFz
         BHNAITS50Od/9uMWeEkt56I1zj4LdpDPRTGqtECJN9lyprPrI1cAxauEwBNPUZIkZ8xO
         QcUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2U2wRQUPi6OZpbJkcgT2jBzD43JMTp2EntQ2MVqxFPE=;
        b=c7HK9UoRlc3vY78TEKHedcZ6yhLNjEGyZo+54DhXfByT0QuFzRK2K/0uatkyvm+X0E
         /QX/SE1S4cGc6jj0byXx57Rp7BtHtMvZFXKVSIHfaDrOfZvGbKrL/p0pr8QlN1gv0lil
         BPtKvJTQaBTw3vSvmk0GQABZf0mmLuBkxNAaiZpsiCsnHs0Ob/OQtjgFHRuHdiWAuyE/
         acE1WhhRb2FaGXTym/JGqt/Zu/PQqDRR0CA0bGq9Z5VrOIx/jVYnpOBYhKqP/BCgokZx
         t/HJqEFTWC9lFSG2Tjuti5GojFoXWlBzgsxlB7k4K5Cx2lgcRCYTsvx7Edd31o+KWwvu
         0sbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2U2wRQUPi6OZpbJkcgT2jBzD43JMTp2EntQ2MVqxFPE=;
        b=HZLGSounafuk8TILogdjUTGDBX+RPh0Pd5jhEDPhUGU138WHAjS+uhJv3XtCBYsz5P
         1108FJLJv1MKQJ2o/0Bh/lV1AEaTvkydhZGq5NXUAwG6gZ0O4Z2xq/YGPGY2h2edq2Xq
         O/qyoF2A/tSu7xg4CmDmzMAxpvcAMsvZHtRQOrWvetCKWOLyvKrS0wpoaJ6utevvn6dr
         xCwwmFdaq7zZ3VFWbJaTFYWcCuWhDLhqQ7vfhyzb38IyLC9sqQKVttJvDx6MJX1xadaS
         4D/gRo3vZHNlJsU7ETz1t5MJNH9P+GFYVTf2U/vx+O2vl+8kAVOtZ9yFmlgevFEFPWUA
         5Pqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2U2wRQUPi6OZpbJkcgT2jBzD43JMTp2EntQ2MVqxFPE=;
        b=tv8hjlfMuAOY6/Ash73cLVN0UiEpYUDif4rgxBm/9RBL46Bj4lwxRbkjkkPOduoqAH
         pP+noMUBImjpwyd4MSw1+Yi88VezivDJjgkbHgjmjYSYyRWfriofE4JqxNmAachDmYyV
         SvZM6QwPDULunQ9P/t0jmtpwacFp8hj/oN50it/mbHZ+zaERoD1sqJDDiXT2V2YuAIMs
         SraH2ZfAqzNkp+I1ii4CVM2aLX5DrHYChtHDPUvr0gPwtMAONCml8CQKItqefCDLs8Ux
         4IglOO7dUqrPUYrR7TPJTg6DWbvFJ2ZOz/Eq92kBRVG9qtSIAdGH20s2HyGyG13Ea0iT
         kLVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fpBTjV8xXkCAcRiDHywkW5V5AAieuOBEUaQA5N9Se6bOADXxE
	Njgv3H6nhPplkVr49msWe/g=
X-Google-Smtp-Source: ABdhPJx+mlWJQQX5Qi1i+vHkMeSdW9pE7RRC9uwZ3GyAh5MrAhMDsRN78D/TwcwmmdfZMxMBkX9ukw==
X-Received: by 2002:a67:7d06:: with SMTP id y6mr28178706vsc.1.1625012142189;
        Tue, 29 Jun 2021 17:15:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7357:: with SMTP id k23ls78400uap.1.gmail; Tue, 29 Jun
 2021 17:15:41 -0700 (PDT)
X-Received: by 2002:a9f:3526:: with SMTP id o35mr29754634uao.125.1625012141496;
        Tue, 29 Jun 2021 17:15:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625012141; cv=none;
        d=google.com; s=arc-20160816;
        b=Acae4iklr9VhdDiUtE4txhxDeIRN8waHU0jH6ThdvpJpHAy1MiDsy8OSCW2ZD3WLeq
         eGn+I2O+FPToJsflm95AOAAUdpvLu9DP8o/KY2DG8hY0Cm2Gd1I2Egkh08soccIvz441
         c8EHA9qtvtvUtiQ/Qz3omb87VcU//XZjFutf4m8bgXHqnwyExgOjPAATpmJQjhsYAUWC
         9RNGmaKy55z0EON7wCA1sTNe7LSIGFf/APUXffyv9F8Z4QpoobdGVmshz/FQ/k7U2g3I
         LpLADb8FzzzSShST4ECUHzUFV3DRlAjlkPLFGeBi4AroutCNRofyodKnj4gYP/n/chBr
         KN4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=6qte/Q+vn+QCFXOOyBwG30xdO4DLJmW8MpQxcZFY8Jw=;
        b=NRQR4XnheQDC5C9axfXWgMUzDD2YwInB9HDAmYn9LNJ2DepIVO0ImAKz3fJtG3O1or
         30JGYJQKwN+8inLv2NFwDv08o7FFPpj71gy6Mgc1pwDUNkrnO7PWJ85poJNidEjCHVOM
         fZ1UEIhIcaMrhiCPgi1gBZ22TNIXkqdFNBcpMnoQEiqeFUV052Zf4zCEsYrslj7Dxfns
         2gZNWKdvloe05jEOVQdMckwhYaXdheg64/InVvitXm5fibX1HRGwONpEAPTv9ElqmC1i
         98wRdTQnav41/m9XH6gmIqZYZ7s8T7z224Q0UTwsphMhYrTEazG1WI5kx9lhgneDK8Yo
         VpqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id t21si1753375vkk.4.2021.06.29.17.15.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Jun 2021 17:15:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195556414"
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; 
   d="gz'50?scan'50,208,50";a="195556414"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2021 17:15:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,310,1616482800"; 
   d="gz'50?scan'50,208,50";a="456998793"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 29 Jun 2021 17:15:36 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lyNtA-0009RP-7Q; Wed, 30 Jun 2021 00:15:36 +0000
Date: Wed, 30 Jun 2021 08:14:48 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Harry Wentland <harry.wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2:
 error: implicit declaration of function 'enable_kernel_altivec'
Message-ID: <202106300841.E1WqQNxH-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
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


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   349a2d52ffe59b7a0c5876fa7ee9f3eaf188b830
commit: 582e2ce5b4ece37055c6ebe58ab48a4817d30b10 drm/amdgpu/display: FP fixes for DCN3.x (v4)
date:   8 months ago
config: powerpc64-buildonly-randconfig-r006-20210628 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project aad87328fabff9382bac0b452c83934515e6d0c8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=582e2ce5b4ece37055c6ebe58ab48a4817d30b10
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 582e2ce5b4ece37055c6ebe58ab48a4817d30b10
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:26:
   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/inc/hw/dccg.h:29:
   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/dc_types.h:32:
   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:30:
   In file included from include/linux/kgdb.h:18:
   In file included from include/linux/atomic.h:7:
   In file included from arch/powerpc/include/asm/atomic.h:11:
   In file included from arch/powerpc/include/asm/cmpxchg.h:8:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:109:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
   1 warning and 4 errors generated.
--
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:244:2: note: expanded from macro 'HWSEQ_DCN2_REG_LIST'
           SR(MPC_CRC_RESULT_C), \
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:247:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:242:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:202:1: note: expanded from here
   DCN_BASE__INST0_SEG3
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:373:52: note: expanded from macro 'DCN_BASE__INST0_SEG3'
   #define DCN_BASE__INST0_SEG3                       0x00009000
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:753:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   HWSEQ_DCN30_REG_LIST()
                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:357:2: note: expanded from macro 'HWSEQ_DCN30_REG_LIST'
           SR(MPC_CRC_RESULT_AR), \
           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:247:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:244:19: note: expanded from macro 'BASE'
   #define BASE(seg) BASE_INNER(seg)
                     ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:242:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:199:1: note: expanded from here
   DCN_BASE__INST0_SEG3
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:373:52: note: expanded from macro 'DCN_BASE__INST0_SEG3'
   #define DCN_BASE__INST0_SEG3                       0x00009000
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:753:3: note: previous initialization is here
                   HWSEQ_DCN30_REG_LIST()
                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:341:2: note: expanded from macro 'HWSEQ_DCN30_REG_LIST'
           HWSEQ_DCN2_REG_LIST(),\
           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:245:2: note: expanded from macro 'HWSEQ_DCN2_REG_LIST'
           SR(MPC_CRC_RESULT_AR), \
           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:247:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:242:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:5:1: note: expanded from here
   DCN_BASE__INST0_SEG3
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:373:52: note: expanded from macro 'DCN_BASE__INST0_SEG3'
   #define DCN_BASE__INST0_SEG3                       0x00009000
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:875:6: warning: no previous prototype for function 'dcn30_dpp_destroy' [-Wmissing-prototypes]
   void dcn30_dpp_destroy(struct dpp **dpp)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:875:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dcn30_dpp_destroy(struct dpp **dpp)
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:992:16: warning: no previous prototype for function 'dcn30_hubbub_create' [-Wmissing-prototypes]
   struct hubbub *dcn30_hubbub_create(struct dc_context *ctx)
                  ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:992:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct hubbub *dcn30_hubbub_create(struct dc_context *ctx)
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1143:24: warning: no previous prototype for function 'dcn30_stream_encoder_create' [-Wmissing-prototypes]
   struct stream_encoder *dcn30_stream_encoder_create(
                          ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1143:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct stream_encoder *dcn30_stream_encoder_create(
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1175:19: warning: no previous prototype for function 'dcn30_hwseq_create' [-Wmissing-prototypes]
   struct dce_hwseq *dcn30_hwseq_create(
                     ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1175:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct dce_hwseq *dcn30_hwseq_create(
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2401:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2401:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2403:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2403:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2463:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2463:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2465:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2465:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2537:4: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
                           DC_FP_START();
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2537:4: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2540:4: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
                           DC_FP_END();
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2540:4: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2644:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2644:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2923:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   116 warnings and 20 errors generated.


vim +/enable_kernel_altivec +214 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c

   159	
   160	void dcn3_init_clocks(struct clk_mgr *clk_mgr_base)
   161	{
   162		struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
   163		unsigned int num_levels;
   164	
   165		memset(&(clk_mgr_base->clks), 0, sizeof(struct dc_clocks));
   166		clk_mgr_base->clks.p_state_change_support = true;
   167		clk_mgr_base->clks.prev_p_state_change_support = true;
   168		clk_mgr->smu_present = false;
   169	
   170		if (!clk_mgr_base->bw_params)
   171			return;
   172	
   173		if (!clk_mgr_base->force_smu_not_present && dcn30_smu_get_smu_version(clk_mgr, &clk_mgr->smu_ver))
   174			clk_mgr->smu_present = true;
   175	
   176		if (!clk_mgr->smu_present)
   177			return;
   178	
   179		// do we fail if these fail? if so, how? do we not care to check?
   180		dcn30_smu_check_driver_if_version(clk_mgr);
   181		dcn30_smu_check_msg_header_version(clk_mgr);
   182	
   183		/* DCFCLK */
   184		dcn3_init_single_clock(clk_mgr, PPCLK_DCEFCLK,
   185				&clk_mgr_base->bw_params->clk_table.entries[0].dcfclk_mhz,
   186				&num_levels);
   187	
   188		/* DTBCLK */
   189		dcn3_init_single_clock(clk_mgr, PPCLK_DTBCLK,
   190				&clk_mgr_base->bw_params->clk_table.entries[0].dtbclk_mhz,
   191				&num_levels);
   192	
   193		// DPREFCLK ???
   194	
   195		/* DISPCLK */
   196		dcn3_init_single_clock(clk_mgr, PPCLK_DISPCLK,
   197				&clk_mgr_base->bw_params->clk_table.entries[0].dispclk_mhz,
   198				&num_levels);
   199	
   200		/* DPPCLK */
   201		dcn3_init_single_clock(clk_mgr, PPCLK_PIXCLK,
   202				&clk_mgr_base->bw_params->clk_table.entries[0].dppclk_mhz,
   203				&num_levels);
   204	
   205		/* PHYCLK */
   206		dcn3_init_single_clock(clk_mgr, PPCLK_PHYCLK,
   207				&clk_mgr_base->bw_params->clk_table.entries[0].phyclk_mhz,
   208				&num_levels);
   209	
   210		/* Get UCLK, update bounding box */
   211		clk_mgr_base->funcs->get_memclk_states_from_smu(clk_mgr_base);
   212	
   213		/* WM range table */
 > 214		DC_FP_START();
   215		dcn3_build_wm_range_table(clk_mgr);
 > 216		DC_FP_END();
   217	}
   218	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106300841.E1WqQNxH-lkp%40intel.com.

--6c2NcOVqGQ03X4Wi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--6c2NcOVqGQ03X4Wi--
