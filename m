Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHPA36DAMGQE2NPXFGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C113B50ED
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 05:27:27 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id q20-20020a0cf5d40000b029027498137223sf14096402qvm.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Jun 2021 20:27:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624764446; cv=pass;
        d=google.com; s=arc-20160816;
        b=JSvTZ5RhJSubzlVbYAHbJkFnFFATwQaINABL1/+Jmeog0zI0KhtQZD9Qte1mDdla22
         oPIhiuqAXXawdZlNPCrDifbJv8FlFtC97nUhm+oYCQyQ7XF3+2pJVeMOncUO296mmF76
         QP5nkdDsjonxpA5Gwy/d1Hnp04B750Elj5oXYFTK9qvIE+amIayinM43PHSgTda1Bt7t
         Nx2rvWr3ZRIWeCaGo525IeJ7aU6aCgNHYRur7Jvb5Fs9z2bFbcEgtLBkwCoGNIFP5rxh
         +1Zz17MY8MHOf2vLfwb+t0zEG84+bm5c8PNOgtGkHbbUuIxiFOJVcASPg+OChAP7OXCV
         H2Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr:sender
         :dkim-signature;
        bh=JKjhixIvchxhD40ZvWO3XcaRZvslNmUDapKKnVvKGzk=;
        b=gZcJil1VLNtc0AnE1g5FuQrL0AOKtC0+S4i0XmDm4hPuw+moKRVC/tciMbPjWqH6VX
         TlIx4v+GfVda2Tw6uqo69joINmFWSSLrEPycRQu5CAeKx24dnYivRmkNdRWDwFSXttYu
         4xadqwq/ILNNPwkOlDUAiKW6UVwFQSiM676j7ZdIaXX9aw43KYBQihkwE/JWWMBp9iVE
         7XP5sRhd67ng4O1mqAyw508l5nrCrYdwngBklbG1fKhmjyG519YWGGJ+Bpx99S2FIn/Z
         oUJciYG2Nqv1FjYYlZLghJpNYx3sUQYrhzWiMLXga2WwvpXj+h6jxeiB21VSKU+CdKip
         z7hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JKjhixIvchxhD40ZvWO3XcaRZvslNmUDapKKnVvKGzk=;
        b=Obd+qkR8EUCnp3HRcG3RlYD+lgkXRM8oY/WS5r6nYTuy026hEkAZscM3xUpciUFJVo
         ZVdSYU08pvLzO6U7fxvjQu3jZOju+1zjGpcOLk3NDZ0L+/r3V4S3KwJjjzOz4/XOpigm
         dxpBRM4xfx+jOZUY1D8XvfO47cz9fCaqETiCCA0s34geP1hXxhcvr19kQjNsKUvC+0AN
         TRlgXqeS8ILH8MRwx3mXeYNNYDn12x16e0iiZFsvpjuA3Xgh23GZNVltMU3IxlfMGe1z
         HSZNpEYHGBSLMK3lND08jZsiq5auxRJXJ668G7sh3qrZTJHfiMeqSlt806WoHc2QW8F4
         vgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:date:from:to:cc:subject
         :message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JKjhixIvchxhD40ZvWO3XcaRZvslNmUDapKKnVvKGzk=;
        b=oR632zL/NRoxMdzwaLQzLwpdSuujXxY64jHh7k6kfVXm69GPU8JIvDnit0SrqqlykG
         JA4GRHe3wKssbRnxkZaGL5XMFwuwW8Hjc8kJJpj9re/LqJjIgnyaMr0UolWDeIWlt2P0
         lRu6yTLaLDyL/qlqt42wvvzq4UaYyka3ulldBHDGfkpRUa8wTsA3+nbLNxGhJzT2BBeO
         u0AfH+Y4PYwowMuHP3nFn9UNHIA6l+vZWKNqetopo0w/XP2R1r+pj+WIKdNnv8K0ddda
         LL49DttISsAcmWJDfwmhXif5TseCRz0pFuwKv/dM+LlurLpC1VDS9UMgzjopqlGEF8m8
         J/vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530l+gSRObH3c1cLzDb2rJKSl4aiUNJIS8r05Rc1WCxMClyowko1
	s+RyPVwkUWjXriLX2sgcZ68=
X-Google-Smtp-Source: ABdhPJzVwAaFU0jIb1h+dNj6lNvl8e4Fwn36NKivHwA+XGh3z6fOZLAI+cCGDLWby1JmSs+T+USo8A==
X-Received: by 2002:a05:620a:16b1:: with SMTP id s17mr19224109qkj.184.1624764445707;
        Sat, 26 Jun 2021 20:27:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:cc9:: with SMTP id 9ls812839qvx.6.gmail; Sat, 26
 Jun 2021 20:27:25 -0700 (PDT)
X-Received: by 2002:a0c:c507:: with SMTP id x7mr18929489qvi.10.1624764445020;
        Sat, 26 Jun 2021 20:27:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624764445; cv=none;
        d=google.com; s=arc-20160816;
        b=MUrbD9bH1C3y2s2NYIkyqHSK7n6rhdCH9CBhvIK2LDgRhRSl66eFxisxtPsLhUK8Bp
         7PebLHw7LVMH6CkSXXDbq2IyaHu3c8yNnH8m6JvgqHCz0w+p1cWJtPYzXZ6RI63djUhJ
         JkeIgkGzm/MqdsabvE3+cW//Bd56ijDnjSb85IAs2B84/Pbw4Kp8k1Lb638UgkHujrgR
         D5yWdSfIj6xyq8YG2Mgj6PXnSC6V0x5sMSkBagsdq4OPL/e5UbxfIKoB4yS6UTuQPB/z
         Rbq8vAbT4knRasbYn3xaEikF8vOd+XdPXlCCZOa3o8rBHSP+cXraUYkxEL4XNMFYSUlb
         +cvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr;
        bh=GVjIUeiWo8iJQKbkArfiRzd5HTY45qYTh3lZ/mlwrw0=;
        b=EixbE0xjbfaQv4xZe0oLw6uwtCBoiGVu9GCmpGsUs8l7YS97BOWJlJuHMUWyqz0/6+
         b8XCuGJB1PRoGKEZLBzjN6Z6XhYnezgrcOmM250cLNtkA+Lnmapl9rdaq31T/3amZDPE
         qS4oFnC+aiyW25blXEIZ89RpJwGlJupj3xAtp39UrdUjriDx2tdm7al+IfS07I/6Ej+P
         /GWzk9hLXevR+W2Hr7O8EFBAOhLmIJZlTGTyiGYbPFdCU9cKVZlZWtdWVawbU0Dm0a8d
         kJnYO2xoGRtacFO6PXgbZMoB1nxSYvcj7d84zYLQbgdUYEJhIu2bmpxxvdoxgHZ7PJB3
         uuYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id m6si1515103qkg.2.2021.06.26.20.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Jun 2021 20:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: H9COx49YSOXMWMNZ6ugwuQ3Ko6LwTkAl3vbMVng9EWHd4jMGkcj5QmjuJEOVF7QTrqyUwQQoif
 Rlb5m2RYHxBw==
X-IronPort-AV: E=McAfee;i="6200,9189,10027"; a="207854717"
X-IronPort-AV: E=Sophos;i="5.83,302,1616482800"; 
   d="gz'50?scan'50,208,50";a="207854717"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2021 20:27:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,302,1616482800"; 
   d="gz'50?scan'50,208,50";a="455878147"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 26 Jun 2021 20:27:17 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lxLS1-000814-8i; Sun, 27 Jun 2021 03:27:17 +0000
Date: Sun, 27 Jun 2021 11:26:29 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Harry Wentland <harry.wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2:
 error: implicit declaration of function 'enable_kernel_altivec'
Message-ID: <202106271124.KF2w3HHY-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   625acffd7ae2c52898d249e6c5c39f348db0d8df
commit: 582e2ce5b4ece37055c6ebe58ab48a4817d30b10 drm/amdgpu/display: FP fixes for DCN3.x (v4)
date:   8 months ago
config: powerpc-buildonly-randconfig-r006-20210627 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 557b101ce714e39438ba1d39c4c50b03e12fcb96)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=582e2ce5b4ece37055c6ebe58ab48a4817d30b10
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 582e2ce5b4ece37055c6ebe58ab48a4817d30b10
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

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
   <built-in>:309:9: note: previous definition is here
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106271124.KF2w3HHY-lkp%40intel.com.

--u3/rZRmxL6MmkK24
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ttYWt3lYBuFJbIn7Ax9Cc/hh3wEA

--u3/rZRmxL6MmkK24--
