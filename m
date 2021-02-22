Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPMX2CAQMGQE3OQPN4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E225322082
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 20:53:34 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id l5sf9659661iol.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 11:53:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614023613; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3djLK0nEyeS88u6WPaWAEZR3icaSyAkvT4AoVBHwU09iaGRBDkzSjdmYBrV2tsebY
         bUDQzL+ycmN5/cO8TxDyCAQo378aOJhOHW2x/QYZ6JY0VqUaN8HvOt827gSe4C6HzLJd
         rEQ4KjazWM9IN8XWjO6jEo4tGatV0EoQaXW8bBoxFryZfILEH56rSqGYRhcTdmRcLjvJ
         Wb+Yd9yF4asO3K+G4XCSYFrHZfJntimxLmZwIwIqvZj028fDNhbJM9dAoGzR/GAV32zj
         tadUkBxTP7MaDEHKk885HbpLFm2JuYtTkuiQfVj/5c4gKqmRXF10Fha9sXKOupZV6QdZ
         ucvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=jEEEFLZWuDQUAk0IVUlhJ09C7RAT4dC6DVp3EcU4j7U=;
        b=E+FrD4WGhWpfc5Ma///H8gYl3u3vPqVqznRF1+TlsiF9ZF3h881bZ6gSqctShg4aCN
         J7erpTxQmIRLMQvRCT7DaeaNGKg4myeaY173/25ocyWaL/oXi/WvsLUXt/CloVXKVdHm
         6LBBZQlzfYPA44MYeuY0+UmiS1WTPWVwoLe/OHiXZEurmIryzqWm4gtCk0dOO2vw7S/O
         jMQUDkCnfsau94TIHtPRfVbfzMCQfjdj93WfCHinEIuwLs0Yru+0+7ErKgE8sYcV5stp
         QetnG3VpLHSn7McVi22II23EaUc2EixQpRhDyjFRQCbUW+R2edS5QuxjLXsDH5i7s06+
         5a6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jEEEFLZWuDQUAk0IVUlhJ09C7RAT4dC6DVp3EcU4j7U=;
        b=bvCoBUzx+1OYfsLdfJcUS5zW/bct2adXKxbwkixZ7I5/IEMdfX4/7ZmSIUsLF5wDZ6
         7EZ8tIp9/C4nCASAA0TLxQzCc4OkXfXmuxT1u4v0FkundG1PdAB1lZRHKXFujaMI6Ddp
         xZICnSkVowmUW5wF2rCrAfw0OiLtePbZ5QHLnAwlJKpCULmI5swAoMcoG86fGTCS3Pts
         SximSXeZwd4w8WfudrUUU7VfAtWLOmSMT/Vf2JBpRnJg7gPguhfglTI+TtXjQd5nB1k6
         SgkMQZDh/hJc5oD5HyBaWnmiLsoPOmNZDNa+2mLzS8p/SbcZeeX+k5VgG4YJ2EzKh0cr
         elYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jEEEFLZWuDQUAk0IVUlhJ09C7RAT4dC6DVp3EcU4j7U=;
        b=fuQJzLyxK0uG/ODLL6yTmCzR/llte3ukNJ3IfGSI0p76RgcCQNR8WCwdnZmxRrWvOA
         HLYGVWzAqw0S/7A/IE72p86WmMBpDa0zCH1pwagN6hkURFxbIHjG9xBuapFT5fsdUwEt
         2F6SeFbfG37rvn2k6ZVtde1fw80Ic/pVUk3hBeRylngEd8MPGi6+vXNqUyXjIX8FKax8
         Il4/uSxVpSy5hhrmdXHkz1COXfUcjhPKPeM9ENlSY2RVYsijJiaEcsDmagPzhi7gcVXA
         UaZ3GsmNFYXgzhERYepVoBeV06iwA95xHaA7NXO8sPGJZIjRmp2Me9Icl6lDsCXrK14A
         CHGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YXtMaR8f5HO9FAQnO7CXNNvrYAZl2TnVjPulxjObr+zrCx/w3
	kH18REmrm5MmURBucbC+eDw=
X-Google-Smtp-Source: ABdhPJyHuLW572+Evq8/M2Ee+IjUpuvxHUQRTMurkt6n5uOaApSwegGaHAhUxAjsvAs3Gpd/KP7COw==
X-Received: by 2002:a05:6602:2c42:: with SMTP id x2mr5985853iov.29.1614023613220;
        Mon, 22 Feb 2021 11:53:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls4638630ilj.10.gmail; Mon, 22 Feb
 2021 11:53:32 -0800 (PST)
X-Received: by 2002:a05:6e02:f06:: with SMTP id x6mr8314689ilj.287.1614023612491;
        Mon, 22 Feb 2021 11:53:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614023612; cv=none;
        d=google.com; s=arc-20160816;
        b=IVHFpvDj5IfjkQGwRF+dlQ0XzaK/F0J/wu63yHr1XFqhy5HrvhahBstCIRMvXSpUtg
         mMPiNhZjW4JRWuRrhn6TUfI8j3sB19Jnv7j0q+jZsSMxXMSzvyEk96jVl+fcWDueUV3m
         eS3I8/drjzosO2dFJ8lsNual8ZDGUlnR4vLyCt/K/aE4uNRtNAmMn724uYbwx6zaDLJ8
         fa/JfVM061+s0XIjwc4ww32WKhy/vIs+KnMyyQTmHuqMOGZEVKfWSNKw4NgEY1n25iJf
         tVvw/8sPiUfioz5nlsvOg9fc9y3fYrRKPnkJbB2zzekJTEpqJPrHbO5xUm3XmH5XRjEt
         62Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=NqMyRW6nuYOku4IEQYwkuc6iKxG6CdIQRjg3krLi9SA=;
        b=bxIlHdaezK5Hkp9h5pdKZae9ep+MUUQW+4cTEjtizbzLPevS6U+U/PC+pa1TL6W1uE
         f0lGga+U9eSOB+ulDYXMjP5b9rrisM1trYkCGmjzk2gQTvN1vHQgqFV5Zq/pFlryOGsi
         nap7ljjFJclixBP33G5EB2nk5HOgcLovBOjlkQv9bfHmf44y5jX+GoIs8rXsa3qeRARZ
         6dQWq6z7/RK/Tis9mM48BF35QdUlOWZBbYIKLyLDT+VnyH1+y3d1HSLUnQog9EnwC9X9
         Z7rEWWQL+8iHjMZ2tqqNRLzZ/r1lgSoMXkvVAgBXoFSH5T4e0FcV4ioPFk+n4X83NYwq
         OI+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id g10si589580ioo.0.2021.02.22.11.53.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 11:53:32 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: 4D9pwpOoWzotgHJEOA0XCslmxm+w6mTb6sODlJuAkTtgI4inFQEHY1+X0Yv+yY/GCOlk35/C92
 k4q7rn2uCK3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="163787270"
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; 
   d="gz'50?scan'50,208,50";a="163787270"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2021 11:53:30 -0800
IronPort-SDR: w/drzLnWotuRnmZ3Rv/dKKfUyHfNIMpnNjDM50SM1UT2IhkklUZA0mFpbQy/mF/3rN571FtZyw
 IySEVNDAVG6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; 
   d="gz'50?scan'50,208,50";a="441487606"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 22 Feb 2021 11:53:16 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lEHGb-0000dS-Vp; Mon, 22 Feb 2021 19:53:13 +0000
Date: Tue, 23 Feb 2021 03:52:36 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Harry Wentland <harry.wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2:
 error: implicit declaration of function 'enable_kernel_vsx'
Message-ID: <202102230328.Qm5ix8PU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   31caf8b2a847214be856f843e251fc2ed2cd1075
commit: 582e2ce5b4ece37055c6ebe58ab48a4817d30b10 drm/amdgpu/display: FP fixes for DCN3.x (v4)
date:   4 months ago
config: powerpc64-randconfig-r014-20210222 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
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

>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
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
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
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
   2 errors generated.
--
                           ^
   <scratch space>:47:1: note: expanded from here
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
   <scratch space>:57:1: note: expanded from here
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
   <scratch space>:51:1: note: expanded from here
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
   <scratch space>:61:1: note: expanded from here
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
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
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
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
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
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2401:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2403:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2463:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2465:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2537:4: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
                           DC_FP_START();
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2540:4: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
                           DC_FP_END();
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2644:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2923:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2929:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   115 warnings and 11 errors generated.


vim +/enable_kernel_vsx +214 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102230328.Qm5ix8PU-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICHLOM2AAAy5jb25maWcAjFxbc9s4sn6fX6HyvOx52Bn5piR7yg8gCUpYkQQDgLLlF5Yi
KxmfsS2vLM9O/v3pBngBQFCJqyZjdTdujUb31w3Iv/7y64S8H/fPm+PjdvP09H3ybfeyO2yO
u4fJ18en3f9OEj4puJrQhKnfQDh7fHn/+/fX/X93h9ft5Pq3T79N/3nYXk+Wu8PL7mkS71++
Pn57hw4e9y+//PpLzIuUzes4rldUSMaLWtE7dXO2fdq8fJv8tTu8gdzk/OK36W/TyT++PR7/
9fvv8O/z4+GwP/z+9PTXc/162P/fbnucbD9dXX7abi5nl1cXX7/MpueX5x8/PEw3s0+b3ddP
Fx8uZ5+uz68+zP7nrB113g97M22JWTKkgRyTdZyRYn7z3RIEYpYlPUlLdM3PL6bwY/WxILIm
Mq/nXHGrkcuoeaXKSgX5rMhYQXsWE5/rWy6WPSWqWJYoltNakSijteTC6kotBCUw7SLl8A+I
SGwK2/DrZK639Wnytju+v/YbEwm+pEUN+yLz0hq4YKqmxaomAhTBcqZuLi+6CfO8ZDC2otIa
O+MxyVrVnJ05E64lyZRFXJAVrZdUFDSr5/fMGtjm3N0D/ddJw7HEJ49vk5f9Edfyi8vVTRpS
QlNSZUqvxRq7JS+4VAXJ6c3ZP172Lzuwmm4oeUtCY8i1XLEytidVcsnu6vxzRSsaaHFLVLyo
NdduFQsuZZ3TnIt1TZQi8SLQuJI0Y5HdjlRwCAOSWmlEwFBaAuYJW5G1Ow9GNHl7//L2/e24
e+53fk4LKlisbUwu+G2vOJ9TZ3RFszCfFf+mscItD7Ljhb25SEl4Tljh0iTLQ0L1glGBy1q7
3JRIRTnr2aCAIsnA9Dw5LmKaNIeC2UdblkRIikLhaSc0quap1LrfvTxM9l89LfqN9Ilc9Yr3
2DEcjiUosVAywMy5rKsyIYq2W6Yen8EzhnZtcV+X0IonzLHDgiOHgRIC5qGZtvSCzRe1oFJP
W0i7SbfewRTa3kpBaV4q6LVwjLqlr3hWFYqItdutKxWYZds+5tC8VURcVr+rzdufkyNMZ7KB
qb0dN8e3yWa73b+/HB9fvvWqWTEBrcuqJrHuw+x4N7Ji8dJjB2YR6KQuiGIrZ60hKdjO4Ioj
mcDaeEzhyIN4aOnop6UitnEgCcwwI2vdyFkIsu78rnoNSxbc0J9QpeWhYG1M8ozg0ba707si
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

--IS0zKkzwUGydFO0o--
