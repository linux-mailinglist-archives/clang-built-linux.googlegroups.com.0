Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWV6Z6CQMGQESF7DJQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1E3395291
	for <lists+clang-built-linux@lfdr.de>; Sun, 30 May 2021 20:54:20 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id a10-20020a65418a0000b029021b78388f57sf5825410pgq.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 30 May 2021 11:54:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622400859; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/ntkn9aV3i2/VZHlIp7WiXOlfeHYwVi+WIhph3SaUxRUnySgLM7cMuzxmV4q1/J2L
         gP/XdFNwYYCaQQRaZb+9UBuaW2+CUdaIZM5g3WStX9apH9QM9koB63Rog9jEdlLYD0hB
         9AFNTx8+WM1V7a4783+J1dybsNsx11cIfJwRqX71Fkc1/eVKGI6QRfv9EfSUc00WMEnf
         ZtfzmmqMzX8SSqNN4DR4hgcsBGE2c+VO8uLatZvE/LdT8qojliDSn5MXC+kBTP96aF5s
         uvU5JxKuTnYnXU0M3u+FQU5dDfSKMuxh3rSONVT6XZUNuWl+DPLIjcKrhprJ3idCDu72
         rFlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=WYy9sIdjCrhky6KFpQJGzNeWR6oHQ+WiDiN/cpij+P0=;
        b=Odd5N4HUBX8i0f5edY+np8b09kNcLp/PlCkO7Vq1U6Ya+4NvyUeoErmNPbjjr2qz2o
         wNVUd5E/d5NJOnxHDkB4XJZlxvAykXVDYP9o98xX1fN9E0KOGCczxBIDe3ROrV655uVm
         xV9P7jY08TZ+StPG1Mw6yYE2lwZUqvEf+0zJXgoFubw2JzsDw85QGskupzsoIXxZcDvo
         ZQElIJ4DYuF/AVkxD+DjgHjp/ZjmFG0uS25F5PFSplV083Bs+lpvOE+sO21J4o0KRtZO
         55TyLOsSEjf3UjEOqY8+WcMY+Y2wlsbU3jYtg9rWJSSu/J8E2UVgTmBsOXjqP84oL0yI
         1jXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WYy9sIdjCrhky6KFpQJGzNeWR6oHQ+WiDiN/cpij+P0=;
        b=GZADE4gzYDHzWAjryNiMAtK3mZhsY0FzhWHB0VjhcruP9Tg2BN4zczEfGcMkfuJScw
         3sTxIMGIIa79dspjaNFTbE01ysxCyTx9UOQ5d529SEeM8HbtZK7RtBaVHRDMW3ZiAkVu
         0tIvo8CEx4ysJdokzEiy9HRtrNf63WMjiAe+EkYsphIj5VNTcjbHTB8R1UIno5+mSSIF
         dZepfm4ENIyEt3zC/w1WcpgEp1sNWsh0xzX3T+KeKKTMoTiOR2sYtW+w2uQNqME/kdbO
         VetEHvFHau8wIwVoWTSyGdUAH+AtI5cZgR/iCaLZ36C2pPWViKZdYJy1HJZvaRJF7ZvC
         eCDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WYy9sIdjCrhky6KFpQJGzNeWR6oHQ+WiDiN/cpij+P0=;
        b=ZOL3igGre1MFW2KHT0h4hY4IW7Yzao544N+BJ10pig4wKD4bnzvxEgyp8tJ5hyoYz6
         RWjO97kREdIhg5x+bUMPtFCW8r7vyq4YcQR5Zev0ELBLBI2O3FjAfY2Bq1kGglu4CHfx
         cRn0BWtTJDb9UrLIaUZop17ccRwNG+YcQcIOs1QVkRn1oVHOPqGvxMLummBOO/p+juUr
         6BWM/fOaXmE73NdzzWof3ch8nWpM7XC0jrreBuXczV3mNYCy+uLaGolxK4OAbIHd+/wo
         s/A7uCUDVrk3ghgWGw+9uYROCYOdavz0fPYu+eqbAYI7hmMB/SEW3Ux+gud4kJgaarYp
         4Igw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dBzfkN6cQVQjLjG4OBUvsNRqR5Kvp2oPeF0nI1Mkwqu72gyvk
	bvNMP7kBwTVerNccPEVjf0E=
X-Google-Smtp-Source: ABdhPJy4t3CQguixbJb44HVjPDBg33ljM8zM+xtKgEk53BjtWE0MUFX3HIDzlzv+yxye9ei92YShuA==
X-Received: by 2002:a17:90a:4d01:: with SMTP id c1mr15536161pjg.143.1622400858762;
        Sun, 30 May 2021 11:54:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4d48:: with SMTP id n8ls5948794pgl.5.gmail; Sun, 30 May
 2021 11:54:18 -0700 (PDT)
X-Received: by 2002:a63:f344:: with SMTP id t4mr3710953pgj.314.1622400858053;
        Sun, 30 May 2021 11:54:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622400858; cv=none;
        d=google.com; s=arc-20160816;
        b=eNrBc++Ipe/zVGVws7k40QyGf4tcjmlERDFBoOW7kMwUQZc9ZBM0BhTGgah3UKajoN
         gcIaRTqpVkfotaD+RLvh0lF7kXVf7DxwFb8OiSVsDUYuInFJBtzPdTNS31m0PsUmdUZk
         Rx/f/VItlE/AZLuhMluvunXwzyv16cl7HE18JeuhFI3xpUdIjmvdHEVeVfHj0JPWcEdB
         lLypEIORK55Xu0qv8W1kJaoqXGgThlT6IOQ8AQwpXmy5SRZFVPa9LQPlLgjAGSg7AmD7
         wJn775llPwBwc7v1uXxmXR8sz2okpDr2uXe66n3me8C+okrA208Jt9mfqIHnpW017dv/
         U4yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=2zZnHScRyK2FFaICninENIlz2Z7cGZO5EHjYt0WSEng=;
        b=S44Q3Ec6bro+XdN+w+fg28rccpNng2qkIjyQWfTRCng6dkeMgIzy5EAcWOkARv8mBC
         D044pUfgXjO+A5lEYtQqMiqP9ndNrba09uBoi082OePzcCE/fX8YuVlnQh+omeRzGIxl
         ohNgdt/n31qod0iqFymlvhVidKEc2k0TCMcVPlKJSnkjlAkcEwvEERWKBxgeP1tcTXhM
         tf0Om4MJCSfP+qhUI2euHyxjthFzu5isFzpwIu3jCeX0tCjcfFFpNyf25CrLj2sQ386+
         M2ANmBbwCBo65AiAcC8KwKW0wX4wZo1rRnFtzoF9FOHxl8sNp4B5Z3cOgFCajrJ55pP+
         2cUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id gt12si1173700pjb.3.2021.05.30.11.54.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 30 May 2021 11:54:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: kj1lvEJpU+2kAXUhbqeCwLQuit796D9ikoM2MI7ITw0URq3Lf4V9aBqBl/u+LoGjskAZZW/w2Q
 KiZ5bcTkd2TA==
X-IronPort-AV: E=McAfee;i="6200,9189,10000"; a="288850216"
X-IronPort-AV: E=Sophos;i="5.83,234,1616482800"; 
   d="gz'50?scan'50,208,50";a="288850216"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2021 11:54:16 -0700
IronPort-SDR: zaUsXhdc5jK1Dk5K8hJ8cBjGjpzb6U7hBet5ZdSoTvrHTF/upHwSqjWFc4qEyC7eNfW1b4xNbE
 vIERVsgeHUaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,234,1616482800"; 
   d="gz'50?scan'50,208,50";a="616314152"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga005.jf.intel.com with ESMTP; 30 May 2021 11:54:14 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lnQZh-0004D0-MG; Sun, 30 May 2021 18:54:13 +0000
Date: Mon, 31 May 2021 02:53:36 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Harry Wentland <harry.wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2:
 error: implicit declaration of function 'enable_kernel_altivec'
Message-ID: <202105310234.aaWaSzlR-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   b90e90f40b4ff23c753126008bf4713a42353af6
commit: 582e2ce5b4ece37055c6ebe58ab48a4817d30b10 drm/amdgpu/display: FP fixes for DCN3.x (v4)
date:   7 months ago
config: powerpc-randconfig-r034-20210530 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
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
   116 warnings and 20 errors generated.
--
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


vim +/enable_kernel_altivec +1576 drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c

  1572	
  1573	void dcn30_populate_dml_writeback_from_context(
  1574			struct dc *dc, struct resource_context *res_ctx, display_e2e_pipe_params_st *pipes)
  1575	{
> 1576		DC_FP_START();
  1577		dcn30_populate_dml_writeback_from_context_fp(dc, res_ctx, pipes);
> 1578		DC_FP_END();
  1579	}
  1580	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105310234.aaWaSzlR-lkp%40intel.com.

--mYCpIKhGyMATD0i+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--mYCpIKhGyMATD0i+--
