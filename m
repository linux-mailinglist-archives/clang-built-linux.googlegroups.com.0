Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB37NROCQMGQE6WA6KXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBAA386D84
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 01:06:24 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id t1-20020a0ca6810000b029019e892416e6sf5937504qva.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 16:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621292783; cv=pass;
        d=google.com; s=arc-20160816;
        b=BLAorVZPn9BHgNrUyjDynsaPrV4EBsjeI6hAvzUR7ZwkFAMS/Tw7z+SV/bR8UZ+djc
         lvTFDZDUNg1id4T3sL56sTiA0bP0HmS0BBgoYGVBnmb/VKolWoZjbTFiSOvdpKeDhPR0
         YogOUVmZlYV62rn+SkRtwI3Y8wfDZwuDw/NTIcgO1g1dXmU1jVeBK5PCxnUXF9Sw82xP
         V3ksuBYbNS1LDOed9UzbEtSoBkWbTTdmaJRgLnTKuYWCr0oXHGISi1i5tqLyvFbfJKMJ
         pO1DknpvO+WF39Z5IQwV2daN1zy5EF0ZfDuz+WeiTZlnCHvPhbjRIyFY/4jygzNuu3Fv
         zlZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=N9Ghz0faVD/DfE4lcgBLLVa+sXje3jYfSI8vWlLXyJc=;
        b=Yu6kquQo0cq+zGltSIouEJ65LeI7uE/eGTMcYZuK4DpV0eAhlrpqwG7MB9NtCOv25K
         xo1XEFn9bcJ24lM/H3shApZWz24EPaTA4Tx7ORgQPr3RcCzhbVooeCkpGTXJnd3jNGDt
         vfVX5TwZ6weW06ho/2HDqDiG07IRurTdLO6B6IWnMjU5WWh0vMQFB4SO83peBZQxv4dJ
         X9i5JKgKbEMNib4+BLiIgUHPtoIsh8U64NCGmbhIYyhxGBUMDIPg/lVrFawnm79ilUnU
         zyEukg0uclKBZcJqY4/o9vp7INoEy3LA/HpdFJXSiCp1pdJtOCa144CWhMPm79ssACCg
         eymw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N9Ghz0faVD/DfE4lcgBLLVa+sXje3jYfSI8vWlLXyJc=;
        b=lLlc/ZatwRkoLs9NZ3SiYQg+ju9E2sw7pPylUmujuL5DvJ1LntFf0G7coZg+doAO98
         m4u2FPIYWu5yrvuObl1i+UzHZ/NqxY9/5YhAqmkeLDOEIX6wPGRHn0QXfTQk5MKMoDhV
         vm8p1TJk81ukZUybxlkYPmAsKGv8vbrrXSiJLRhpkq5e2V7YQ2K4JKxs9xD+jb9DhaKH
         AdGzQJYnuyGwuChKevewDoJi4/AKt8caGdqCYYWl+LwmmzVza/FtKdMuh4gr1h0CVYO4
         fPI7f5zQkQjx1YFwxW6ynDrfXLUF3tLJ+jX2SUDocfD0NZxo4hqksdjQnXLdq4nLYR7R
         L8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N9Ghz0faVD/DfE4lcgBLLVa+sXje3jYfSI8vWlLXyJc=;
        b=b7JM/1smMEsE0nYN+eTi4DYhijXCUvbMOWQthz/QYUrscNoSEHl6+HMVqag4P9hfMD
         J1g20lDyzXLAdmwi8cUsanr1KIh4qBrpFz3E/QHKc04s4lZ6qEOEcScUZ3vMYtjZ3Kt7
         3R9CalTHkftJLK6/iKO4QGD6K0SFlEwvbuvSLB9zCsZd3x4LrMaoOoNCZvduTdlNPyMO
         Rxbe9FP3ea+5kyVbaTVON1VqJIZGdvb4zkk586swJ0KB5qRQ0Fe4d+3NmfQb3KdLmku3
         SKlfq954MNR45iFsx4yi20NicLGa1EWg2VoUXV9poh2ettRGOnOlTmOaiDhkGTCs6981
         R+gA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mwRLKgNiwFMdgARb9QU2RFKqA4YN+uXckCGz7ozRQOE3dUIWI
	OWYAkwYXO/H5+2tnb94JQIw=
X-Google-Smtp-Source: ABdhPJwqeKggJ2517+JNt673aYeOMxDE+a2iv1m0jJyzB6BlOmLaMTEqbZW7B95tgGzjzUJhlTiqYw==
X-Received: by 2002:a37:c13:: with SMTP id 19mr2302109qkm.110.1621292783503;
        Mon, 17 May 2021 16:06:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f44:: with SMTP id t65ls11410085qkb.0.gmail; Mon, 17
 May 2021 16:06:23 -0700 (PDT)
X-Received: by 2002:a05:620a:13b9:: with SMTP id m25mr2376135qki.488.1621292782805;
        Mon, 17 May 2021 16:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621292782; cv=none;
        d=google.com; s=arc-20160816;
        b=P44wEIiOWxS77pFGu8YFi9zF6XSW6Pajhe+hP1HvrUNg9vY401jLhgOJnSb2Q+8qGs
         Oz88Y6K9597FYIFDQRfrgHlGjVsDa67qIiI5v9ESi8eORLAQ7acvSaMnxSjBHTVl42NO
         GIB6P1bdyvaX6bZS8jkIatGTAXuG7WUumksKFA36Fg31ORTW/LqMgIBPVXggjN3nZOWe
         rQH6DlBUBwvPtjnEHoLLcvDm8tMpVBG37ChaUHYc9Z/MddXJvU4UufLm/VAsudBoTgya
         S2GKk4j9jAq4S/OtGU3bPxqD82jUHHzCOz+440IgPyggAv70q2ptXgRWMPiYOLtXkwMF
         zhBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=rXoMw5mnL+LMuq/aIFuv3xeW78rEwfIyTGsqsdIX6Kk=;
        b=FQtby8nnheCHucFhR0SMUOPRtWG6qN6fhR8I1uZHGDPTp6DFKFbUXWoMzF6kYt6uB4
         PSC68fwZKtsamHwlKvwAY8yiE2bGQfYFYojcmv+C+NzmKAvM75DiZ/KsNl0OJLEHisUp
         tmXc6xZXw42mEFqPXVqPvYLrCl2VWmbCyKM4su2TRX6wLiAj/ofGAtnv10JV10LbyTNT
         EnvzNgpV97PAtgG9HHfQpbH5nUFnhCJ2AMUEvC68ai+9ikP/2ANl3xF5lb/cM8g4aLlD
         1pey2nVBg6QPe9n/dSm9NhbSx0KLCYDOAk7BO5T62dn18fXj5Dc3QjWsFhK7Rbrzu+8T
         xfdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id b25si556615qtt.1.2021.05.17.16.06.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 16:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: KCkolThUI6hI6cVrlnr/rxMjPU1sVI+EpTW+l1d+H3VENIDx/2iawslFevRYSJonQsFXU8VQlE
 u6QS86QoKi6Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200637632"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; 
   d="gz'50?scan'50,208,50";a="200637632"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2021 16:06:20 -0700
IronPort-SDR: fxiR6gAytJ2B48rKciabDLpwEmvom3+G99dTccu7CqNoZQGcMSfyxEFmZ3YhxYw70oTu632QtJ
 0IALm6Y89xyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; 
   d="gz'50?scan'50,208,50";a="393713552"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 17 May 2021 16:06:17 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1limJV-0001xP-4L; Mon, 17 May 2021 23:06:17 +0000
Date: Tue, 18 May 2021 07:06:05 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Harry Wentland <harry.wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2:
 error: implicit declaration of function 'enable_kernel_altivec'
Message-ID: <202105180703.fgOdRlYs-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
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


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   d07f6ca923ea0927a1024dfccafc5b53b61cfecc
commit: 582e2ce5b4ece37055c6ebe58ab48a4817d30b10 drm/amdgpu/display: FP fixes for DCN3.x (v4)
date:   6 months ago
config: powerpc-randconfig-r004-20210517 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0a34ff8bcb1df16fe7d643ccbe4567b2162c5024)
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
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

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
   4 errors generated.
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
   115 warnings and 20 errors generated.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105180703.fgOdRlYs-lkp%40intel.com.

--6TrnltStXW4iwmi0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
Ati2MKimC0ZYV2GPvgJLIv8Pj7BpyjOHAgA=

--6TrnltStXW4iwmi0--
