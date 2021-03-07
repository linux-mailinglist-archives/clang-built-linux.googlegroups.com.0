Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBB4FSOBAMGQEPJG4YYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFAA3300B0
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Mar 2021 13:09:45 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id 41sf748998uag.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Mar 2021 04:09:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615118984; cv=pass;
        d=google.com; s=arc-20160816;
        b=yd70kWw8Uk7uaAOuuG0pGrkYvUdyvIoaQ+XxwWuPwXhrdu9ax5j5bq/pl2ApnodjdU
         +XkRJCM+zAapFFU85dQ+PETdpc90tCOY+7cFY6EOo1xifiWfhkRbyEmU/puhoosF0hN6
         DC+it7GFUKoblCzq+2uZXrJdtDfe1l7ACETItpov9oZhPLS8jzzlxT9xSe8IhSSW/hGx
         ZBfBt/5zP6qqmAK4y6hogXzcS3pOWADiqpQ/1eR45VHNAPvj92k10I55/wDVTAHvWTge
         CXedfvHjBAvirQtvqKP0id2KaoSgejqGJ8Ze+fzCIrCifhA4aL7yfGAlB8cFs2LLmwVX
         jDWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Am5kqMRWunZIS24yQ78uMnFQ6p/BT1aa1oTzjkYWPFE=;
        b=zqMHeBCWvC0u8py3MCPfq9RLASzOHjYuHPalTjga8aIUjT6+GDTh9m3jxvW1lAu/75
         WCG6RyueWJldTiohYHVma3nRCqVCzSBul4+siQMuBi4BEUea1trt9CORMxdIjBm/cuSp
         jgx03H5+JfPvskeBk9FjP4wSQL2WBe6Jpi1eOrIhQzZKC4qd63q0EfFY9qLrCY2T7/61
         yCbEurF9C1VIgzvxd4uXzNME9ptZUwWZHKQfueUCn24ZS560Ik3P7j+a9IP3+5GtA0Am
         12btbeH9b++bQ8oBs1YYSYv1QDDGNChhgd9r7gf33GI7McZVXbWeCLC3qIFU7WRngWOu
         X5OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Am5kqMRWunZIS24yQ78uMnFQ6p/BT1aa1oTzjkYWPFE=;
        b=k1HZPO51oQnouisAAgxkVMbztkZoPgkRDNjuaYgurGxqN8NsHDnMiPDAKRhzUX1/C4
         vy063DgjAvo22TUXS3vmScv/fXrNR0mJcD3lK3TUarJgd5Jd2O9f8ORoEZwzORFqo3lm
         N7aTMej1NSQGqQ6bfp1otPhL69SE47WXYLbdITjfP2675wCf0gSfPzvbd4GS+oxM9Qo/
         SFvR/YDVKaSHAYuy5a+Snx8qEUawiC+7J7KdeYUvkY93G+blnG0GwV+Dyow8SdWztE68
         7gI7ccuP1L3mkc8rgIdysZSol3UkfQmMkpSXJIfDIW6uYjFqF9dZz0pHWFZ9Cb0sN3i8
         YDnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Am5kqMRWunZIS24yQ78uMnFQ6p/BT1aa1oTzjkYWPFE=;
        b=WpY3PqI6IgMVsYo42L2lWGgnqFTLGc75qF/NyiIXX9x0+Tc2iG+0bGsTdmVvJdYxIX
         5pxhYxwFuDPEd8PlohFYBkI9ZEto3c+gLRF74Zd1BUm9CHLCrnEaWC+DzR5w+ZVuVXFr
         pEvyPhK3VApBWBiPEHdHoyr0Vjk9fwiRKyi27u4HmyfkarLS3VY/wr/iV/EfMLrICNJ9
         VGe0IvCbu6F+6KtQMydi/FEB9RFjCPWULZgrnXqleDdCjenP/p13enDMoXd5dHX+5lH4
         tazi7hZLnwXSu8gmriLSLGNkLNZexhtUwY0qPG3XH5alJI3U/d6KquiWuI0czrrqErNW
         1Nww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CHJsxSc5xlqWr6v6mKmY3kdmFJbn9m46Ql7SovcqkuQxz5tYS
	zgcIZSM7QZQObKYfu013cic=
X-Google-Smtp-Source: ABdhPJy3i2zKDQNfrKahQoUQlaqbFqTX3l1pdBrQRD8LcCUM26IqmJfkXNLTMf5KU8VWZYNz+dZpbg==
X-Received: by 2002:a9f:280a:: with SMTP id c10mr10827658uac.7.1615118983720;
        Sun, 07 Mar 2021 04:09:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5f16:: with SMTP id t22ls749916vkb.3.gmail; Sun, 07 Mar
 2021 04:09:43 -0800 (PST)
X-Received: by 2002:a1f:abcf:: with SMTP id u198mr10973301vke.19.1615118983028;
        Sun, 07 Mar 2021 04:09:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615118983; cv=none;
        d=google.com; s=arc-20160816;
        b=oajYOxZE6eoFWgiokC5LaO9fwPmP+09W6T/PkOSITAuiJ7MYBXsymax4PuwqLb6+Ja
         7p6lZHE/1HVvmvjouviFE0KXVMvFieXBb6+xUNU4INU+0aip0YiCpOisQSERWXX82tzU
         jS2oZJVRNNN8xXH+JuodBME0eMB9QiPIQ3qSp/wO97ah1jWbKsr0jrc1eCOXXjwYIw6F
         WYlv5X1eQedTDTekF9kBrX0NaNQafdHV1+91PMwhC+h0i/JwKkwdJNPQX1vkOOYY4qBW
         udhugEs/S71nXbwj0JwTchjZbd3W01ZCpwAcCKNYBxu2DRkfFxV5s3B+9SoSJFpapFgr
         iaNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=sdr3AC4arxNH/s32gNkuYLYG+SH/1BnnDlyYDld3JNw=;
        b=l7v86k1EDTH23WvdBeNt0WFddkQm3K+iaksBxFHy1wueKFuTljiL5dpnamkgSReZcQ
         O3HX8LoaTj1U5tXmfkGr72qaWvA9lsI1WQBB5Cxgo7ilCquX6wQFGFVGgAKThQp4Pesj
         IoEtyDC1eEc0xOEwcsvupNRRhXYJ0cMi8ZpZBFsC1G+TILCZH9lhZDTmqfaMUfVy+w5u
         TDi0q2UGLxCxAYuEfUTL+fUE7Ba/QHDswh1CoNKoXkCEJMaP7POCKHpC6fiqAypq80F9
         myghfqmjwgOR8nIWyZehJoNKwskdWN1NhwaXPWNbvj/tUFBXm7PhFL3hOSEOsw6zgaEs
         M6mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id l11si289284vkr.5.2021.03.07.04.09.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Mar 2021 04:09:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: 1XIZ6YX7wZ4UJlvSiab7Ytz/boIWdEOC0Vkad3J4G81kCeCtceVPj1uv43MRvsmaeMt5hQylmb
 hXy6Flai4inw==
X-IronPort-AV: E=McAfee;i="6000,8403,9915"; a="207646119"
X-IronPort-AV: E=Sophos;i="5.81,230,1610438400"; 
   d="gz'50?scan'50,208,50";a="207646119"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2021 04:09:39 -0800
IronPort-SDR: P+sfeapL7ks5XhSnUB9OPqfG0bVS/N2nvH067zrCqj6pNWi5F/uCHaBajHxmlCQ0ZzY70SOAI2
 PJ8FQCgKM6yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,230,1610438400"; 
   d="gz'50?scan'50,208,50";a="370802901"
Received: from lkp-server01.sh.intel.com (HELO 3e992a48ca98) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 07 Mar 2021 04:09:35 -0800
Received: from kbuild by 3e992a48ca98 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lIsE3-0000MR-1q; Sun, 07 Mar 2021 12:09:35 +0000
Date: Sun, 7 Mar 2021 20:09:24 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Harry Wentland <harry.wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2:
 error: implicit declaration of function 'enable_kernel_vsx'
Message-ID: <202103072020.FrGhsBzW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--gKMricLos+KVdGMg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   a38fd8748464831584a19438cbb3082b5a2dab15
commit: 582e2ce5b4ece37055c6ebe58ab48a4817d30b10 drm/amdgpu/display: FP fixes for DCN3.x (v4)
date:   4 months ago
config: powerpc-randconfig-r003-20210307 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4d90e460bcc7b3e5ff6c7e2e05e974772489c4b8)
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

                           ^
   <scratch space>:188:1: note: expanded from here
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
   <scratch space>:196:1: note: expanded from here
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
   <scratch space>:192:1: note: expanded from here
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
   <scratch space>:200:1: note: expanded from here
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
--
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


vim +/enable_kernel_vsx +1576 drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103072020.FrGhsBzW-lkp%40intel.com.

--gKMricLos+KVdGMg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--gKMricLos+KVdGMg--
