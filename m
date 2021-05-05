Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLVMZSCAMGQEZYJ2RRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 084A8374AF3
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 00:03:28 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id z12-20020a170903408cb02900ed5b2fa5edsf1307023plc.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 15:03:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620252206; cv=pass;
        d=google.com; s=arc-20160816;
        b=PtgHsL4sb2sItTwxwcZjYAHZnNs9D+cNhar7WHuhkIccsiSKe6722z4PTjmDIPWcRp
         1qwP251fYvEikCn4P5baLL4VEuwm0k1c9wLolbmvROz5N0A+kQI6aQZm0Llvxxkf5wxM
         JNRfPRnRCY7I5rO+c3rGDmCVuTMkenio1LFDXVYoWdwg4rjPoG7IoRvhe/sSZbLeStIT
         4sQSq84vzFiz7u1QKJ03Ka6QSl4mrnAxtvgoEJSDwvTKWLoTv7q70B8Ce/Q53Zn+uIRS
         5jKXubs1xlr6K450fhDlfwvRh74w4jDytmVnA/kRKkFbGqusMw/yqnko/Txt/rI/95xm
         2CHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=EjAAI3ZE1Y2rJTwwGCbFljcVXSLDvBTqSTLPIpsgReM=;
        b=ZPSA2HvNCPaTfwcD/5Pdl09scy6fAFQfeGfx6aPtg0CrHmgNqIVWh8nHkY3OR85ADh
         7rFfWN0dK5U9i3uGne4z77deI+6XK5iBL/tUSKKIptMn8z7P+p/P397Utq1ny3S7dgnG
         lFwKqo1ev4ju4CuB15GJupvZPEEoimQdaCbQ/XxsDYWMlGYuB4yIBxHysE9p2u/5u9Iw
         31why/DQyHvk6WzOe36V87yKRQqVozZHveiobq1YyuUIaviOXushV6IRgSr+gaP7LW4k
         0Qo53BW8G5Po/zpxfQNrcpThvuQLbErBGoePycHGanlyn/csgIJHZDn72q8tc4jcOmJn
         JIyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EjAAI3ZE1Y2rJTwwGCbFljcVXSLDvBTqSTLPIpsgReM=;
        b=OfaYSQOgfgwz+W8nM8Jm7OEss7wuwdwT5MG9oF4+YVdVVfIPlQfXSk5iJ8Ut+iNtYJ
         WDIolrLtYwTHL9yrH7zVDcRrjdpCB1rKQqo6HMcLbyWvCKngyy2W9DsZeaYPGrBCTk2n
         1oVJSF6bkHd8FWrFnh9KXqd2TOERl/P3s4xqLGFvyg6p5ticl5bB9zxhZz7KBkR1IpWK
         ibgBJeJUbX5nz8fTT9lwFJTYh8+Kcm13YETxeZIrDKgP5rWH5ky1+YkPZbBUCcRqYHZV
         8Gdhf2z3JJAt++N4DKieI9vol7bGznqSTq6wZU8o2Bj/RBAfGDuA73t06Xi/28t7FWCs
         5tsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EjAAI3ZE1Y2rJTwwGCbFljcVXSLDvBTqSTLPIpsgReM=;
        b=GzOcDuHcYa4YAP4Vfz/iPAQ1hU6ZO+3Dn7A9/s+nu74VLaADs9Ut5yRfO4NVnz0AIc
         XCBowH/Nal55AvBim9V2NGTKgQ3B86wWJL2qTEa0789NTuEpoMf+PiP0FdrC0A/KuPeV
         K4IDOSekKCrHmnf4T+9QBVOTl6YDV2sZltzECI3YgGVHFBuC+HBOInR96ZG7NwItFZln
         wmjz0bnryhe/V/GObOXK0gGheBICwBt6NDp7g/dqeurPKlJ+F5CXDYzvJ9psuEPYFfKd
         4XWik44UKcT5yL1rlsq7jOaKW26q1hemfgXcH0Xe9/f1PVN5yUdL8GBjAGAkCZQn4+/V
         Q/wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531R6+UK862fX0EzWKbgw/5/qKyfHxG27SoPT/AKO4VqSb5FespT
	VANPO4qnjmENzJwrLFJdEdc=
X-Google-Smtp-Source: ABdhPJyW7GygqrTU36unhCJIo1wSLZPTQy2Y0b+ZKzF893r7eG6Pk/mru4n2MgeR5UuG6/IOxyRJYw==
X-Received: by 2002:a17:90a:5d93:: with SMTP id t19mr790371pji.116.1620252206550;
        Wed, 05 May 2021 15:03:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3014:: with SMTP id hg20ls4150145pjb.3.canary-gmail;
 Wed, 05 May 2021 15:03:26 -0700 (PDT)
X-Received: by 2002:a17:90a:ea11:: with SMTP id w17mr13907312pjy.6.1620252205768;
        Wed, 05 May 2021 15:03:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620252205; cv=none;
        d=google.com; s=arc-20160816;
        b=gtaiZsF8nynK0hPRb9W36P35CTUCoXAejjd9FCtVo09A916dM8n/DSiJfMyjo/Av5f
         +/X3mQqd0WeDISHdnpIX9nvI7Z2nzkxKhMIszU8jQlSaOxf3CdC/Z+jUGJTpMPSCEDdi
         +j7633C6y+ddcdgsY5QL4TrUqL3jWrTo0A0PxnYMrULFfXsIBcXDqhSYrNer1zy2E/wO
         h9n52VnhU3lSbplGF4TO/e7IS9VOt/ctIbW/10i5DUpMIoctXS/Skq3iQuHE4WVv2yVw
         qOcUMtpTLuZL4VlByqs5CZj465+Z9G+ebtP4cttV4QrgePClHek7mTAHJrj2Ywe3I635
         EDHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5/dqfDF2jXj2zFh5kr5leiezBWchWQdVWC++ofG4mTg=;
        b=zc9yma1S6uZA/F29mMMOXYmjJiBm78tAJb/WLotyfJdYDQzuk9Q6HK/EtyaYeal6Vr
         sX4HfCSb1eEq1iMokVnLHhbZ2CHk/lv2ki7TXAIvPMDfXW2UcgXuqiN1H1YppZIg0I35
         x0LKhpwpJewTulGl9adINnfjMjmxRQh1siHHgAjemIC3ncBeQIlGQpPGsUTAbW270dsO
         YziCBxGd4pRKMzMt/K19HJoD7ZlB0MopjQbyzkfcVzQ6Q8zYkAlmdjatUbQgYGslNpip
         SKYVrQCPd8SZG8NVeT55N/nsnA0vb6WVVtYu0cImGvyUWeVmW/JR9JrAMXXnnW0oA2k+
         SZvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id q62si25081pga.0.2021.05.05.15.03.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 15:03:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: vfWsxpSgo4GEr+dgucG+RZ1KddKP/nI5FCrtcwfFnDy1SbHIfWPRHsPjT6CxWPnfUAFy726+/F
 iZKd3WP2qSdw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="197952174"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; 
   d="gz'50?scan'50,208,50";a="197952174"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2021 15:03:25 -0700
IronPort-SDR: 0MgKTOQmnlxPYqGQzQlDJ14WsEtTR+GJv6CGuv8jz9E+aJtsc1nhqplBs92DnKZL46PMsTS7Wp
 HQkg6TQvK5zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; 
   d="gz'50?scan'50,208,50";a="390475973"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 05 May 2021 15:03:22 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lePc1-000ABg-Tj; Wed, 05 May 2021 22:03:21 +0000
Date: Thu, 6 May 2021 06:02:25 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:6679:13:
 warning: stack frame size of 2656 bytes in function 'UseMinimumDCFCLK'
Message-ID: <202105060620.OLely0RZ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   d665ea6ea86c785760ee4bad4543dab3267ad074
commit: 20f2ffe504728612d7b0c34e4f8280e34251e704 drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v3)
date:   6 months ago
config: powerpc-randconfig-r016-20210505 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=20f2ffe504728612d7b0c34e4f8280e34251e704
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 20f2ffe504728612d7b0c34e4f8280e34251e704
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:1917:13: warning: stack frame size of 9072 bytes in function 'DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-Wframe-larger-than=]
   static void DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation(
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3641:6: warning: stack frame size of 9104 bytes in function 'dml30_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=]
   void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
        ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:6679:13: warning: stack frame size of 2656 bytes in function 'UseMinimumDCFCLK' [-Wframe-larger-than=]
   static void UseMinimumDCFCLK(
               ^
   3 warnings generated.
--
                           ^
   <scratch space>:155:1: note: expanded from here
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
   <scratch space>:170:1: note: expanded from here
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
   <scratch space>:159:1: note: expanded from here
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
   <scratch space>:174:1: note: expanded from here
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
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1959:13: warning: stack frame size of 3216 bytes in function 'dcn30_internal_validate_bw' [-Wframe-larger-than=]
   static bool dcn30_internal_validate_bw(
               ^
   116 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_PCI_POWERNV
   Depends on PCI && HOTPLUG_PCI && PPC_POWERNV && EEH
   Selected by
   - OCXL && PPC_POWERNV && PCI && EEH


vim +/UseMinimumDCFCLK +6679 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c

6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6677  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6678  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21 @6679  static void UseMinimumDCFCLK(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6680  		struct display_mode_lib *mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6681  		int MaxInterDCNTileRepeaters,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6682  		int MaxPrefetchMode,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6683  		double FinalDRAMClockChangeLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6684  		double SREnterPlusExitTime,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6685  		int ReturnBusWidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6686  		int RoundTripPingLatencyCycles,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6687  		int ReorderingBytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6688  		int PixelChunkSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6689  		int MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6690  		bool GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6691  		int GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6692  		bool HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6693  		int NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6694  		double HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6695  		int HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6696  		bool DynamicMetadataVMEnabled,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6697  		enum immediate_flip_requirement ImmediateFlipRequirement,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6698  		bool ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6699  		double MaxAveragePercentOfIdealSDPPortBWDisplayCanUseInNormalSystemOperation,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6700  		double PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6701  		double PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6702  		double PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6703  		int VTotal[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6704  		int VActive[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6705  		int DynamicMetadataTransmittedBytes[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6706  		int DynamicMetadataLinesBeforeActiveRequired[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6707  		bool Interlace[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6708  		double RequiredDPPCLK[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6709  		double RequiredDISPCLK[][2],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6710  		double UrgLatency[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6711  		unsigned int NoOfDPP[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6712  		double ProjectedDCFCLKDeepSleep[][2],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6713  		double MaximumVStartup[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6714  		double TotalVActivePixelBandwidth[][2],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6715  		double TotalVActiveCursorBandwidth[][2],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6716  		double TotalMetaRowBandwidth[][2],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6717  		double TotalDPTERowBandwidth[][2],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6718  		unsigned int TotalNumberOfActiveDPP[][2],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6719  		unsigned int TotalNumberOfDCCActiveDPP[][2],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6720  		int dpte_group_bytes[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6721  		double PrefetchLinesY[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6722  		double PrefetchLinesC[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6723  		int swath_width_luma_ub_all_states[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6724  		int swath_width_chroma_ub_all_states[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6725  		int BytePerPixelY[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6726  		int BytePerPixelC[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6727  		int HTotal[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6728  		double PixelClock[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6729  		double PDEAndMetaPTEBytesPerFrame[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6730  		double DPTEBytesPerRow[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6731  		double MetaRowBytes[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6732  		bool DynamicMetadataEnable[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6733  		double VActivePixelBandwidth[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6734  		double VActiveCursorBandwidth[][2][DC__NUM_DPP__MAX],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6735  		double ReadBandwidthLuma[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6736  		double ReadBandwidthChroma[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6737  		double DCFCLKPerState[],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6738  		double DCFCLKState[][2])
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6739  {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6740  	double   NormalEfficiency = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6741  	double   PTEEfficiency = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6742  	double   TotalMaxPrefetchFlipDPTERowBandwidth[DC__VOLTAGE_STATES][2] = { { 0 } };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6743  	unsigned int i, j, k;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6744  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6745  	NormalEfficiency =  (HostVMEnable == true ? PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6746  			: PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelDataOnly) / 100.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6747  	PTEEfficiency =  (HostVMEnable == true ? PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6748  			/ PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData : 1.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6749  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6750  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6751  			double PixelDCFCLKCyclesRequiredInPrefetch[DC__NUM_DPP__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6752  			double PrefetchPixelLinesTime[DC__NUM_DPP__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6753  			double DCFCLKRequiredForPeakBandwidthPerPlane[DC__NUM_DPP__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6754  			double DynamicMetadataVMExtraLatency[DC__NUM_DPP__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6755  			double MinimumTWait = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6756  			double NonDPTEBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6757  			double DPTEBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6758  			double DCFCLKRequiredForAverageBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6759  			double ExtraLatencyBytes = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6760  			double ExtraLatencyCycles = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6761  			double DCFCLKRequiredForPeakBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6762  			int NoOfDPPState[DC__NUM_DPP__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6763  			double MinimumTvmPlus2Tr0 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6764  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6765  			TotalMaxPrefetchFlipDPTERowBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6766  			for (k = 0; k < NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6767  				TotalMaxPrefetchFlipDPTERowBandwidth[i][j] = TotalMaxPrefetchFlipDPTERowBandwidth[i][j]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6768  					+ NoOfDPP[i][j][k] * DPTEBytesPerRow[i][j][k] / (15.75 * HTotal[k] / PixelClock[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6769  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6770  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6771  			for (k = 0; k <= NumberOfActivePlanes - 1; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6772  				NoOfDPPState[k] = NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6773  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6774  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6775  			MinimumTWait = CalculateTWait(MaxPrefetchMode, FinalDRAMClockChangeLatency, UrgLatency[i], SREnterPlusExitTime);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6776  			NonDPTEBandwidth = TotalVActivePixelBandwidth[i][j] + TotalVActiveCursorBandwidth[i][j] + TotalMetaRowBandwidth[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6777  			DPTEBandwidth =  (HostVMEnable == true || ImmediateFlipRequirement == dm_immediate_flip_required) ?
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6778  					TotalMaxPrefetchFlipDPTERowBandwidth[i][j] : TotalDPTERowBandwidth[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6779  			DCFCLKRequiredForAverageBandwidth = dml_max3(ProjectedDCFCLKDeepSleep[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6780  					(NonDPTEBandwidth + TotalDPTERowBandwidth[i][j]) / ReturnBusWidth / (MaxAveragePercentOfIdealSDPPortBWDisplayCanUseInNormalSystemOperation / 100),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6781  					(NonDPTEBandwidth + DPTEBandwidth / PTEEfficiency) / NormalEfficiency / ReturnBusWidth);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6782  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6783  			ExtraLatencyBytes = CalculateExtraLatencyBytes(ReorderingBytes, TotalNumberOfActiveDPP[i][j], PixelChunkSizeInKByte, TotalNumberOfDCCActiveDPP[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6784  					MetaChunkSize, GPUVMEnable, HostVMEnable, NumberOfActivePlanes, NoOfDPPState, dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6785  					PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData, PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6786  					HostVMMinPageSize, HostVMMaxNonCachedPageTableLevels);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6787  			ExtraLatencyCycles = RoundTripPingLatencyCycles + 32 + ExtraLatencyBytes / NormalEfficiency / ReturnBusWidth;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6788  			for (k = 0; k < NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6789  				double DCFCLKCyclesRequiredInPrefetch = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6790  				double ExpectedPrefetchBWAcceleration = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6791  				double PrefetchTime = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6792  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6793  				PixelDCFCLKCyclesRequiredInPrefetch[k] = (PrefetchLinesY[i][j][k] * swath_width_luma_ub_all_states[i][j][k] * BytePerPixelY[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6794  					+ PrefetchLinesC[i][j][k] * swath_width_chroma_ub_all_states[i][j][k] * BytePerPixelC[k]) / NormalEfficiency / ReturnBusWidth;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6795  				DCFCLKCyclesRequiredInPrefetch = 2 * ExtraLatencyCycles / NoOfDPPState[k] + PDEAndMetaPTEBytesPerFrame[i][j][k] / PTEEfficiency
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6796  					/ NormalEfficiency / ReturnBusWidth *  (GPUVMMaxPageTableLevels > 2 ? 1 : 0) + 2 * DPTEBytesPerRow[i][j][k] / PTEEfficiency
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6797  					/ NormalEfficiency / ReturnBusWidth + 2 * MetaRowBytes[i][j][k] / NormalEfficiency / ReturnBusWidth + PixelDCFCLKCyclesRequiredInPrefetch[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6798  				PrefetchPixelLinesTime[k] = dml_max(PrefetchLinesY[i][j][k], PrefetchLinesC[i][j][k]) * HTotal[k] / PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6799  				ExpectedPrefetchBWAcceleration = (VActivePixelBandwidth[i][j][k] + VActiveCursorBandwidth[i][j][k]) / (ReadBandwidthLuma[k] + ReadBandwidthChroma[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6800  				DynamicMetadataVMExtraLatency[k] = (GPUVMEnable == true && DynamicMetadataEnable[k] == true && DynamicMetadataVMEnabled == true) ?
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6801  						UrgLatency[i] * GPUVMMaxPageTableLevels *  (HostVMEnable == true ? HostVMMaxNonCachedPageTableLevels + 1 : 1) : 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6802  				PrefetchTime = (MaximumVStartup[i][j][k] - 1) * HTotal[k] / PixelClock[k] - MinimumTWait - UrgLatency[i] * ((GPUVMMaxPageTableLevels <= 2 ? GPUVMMaxPageTableLevels
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6803  						: GPUVMMaxPageTableLevels - 2) * (HostVMEnable == true ? HostVMMaxNonCachedPageTableLevels + 1 : 1) - 1) - DynamicMetadataVMExtraLatency[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6804  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6805  				if (PrefetchTime > 0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6806  					double ExpectedVRatioPrefetch = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6807  					ExpectedVRatioPrefetch = PrefetchPixelLinesTime[k] / (PrefetchTime * PixelDCFCLKCyclesRequiredInPrefetch[k] / DCFCLKCyclesRequiredInPrefetch);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6808  					DCFCLKRequiredForPeakBandwidthPerPlane[k] = NoOfDPPState[k] * PixelDCFCLKCyclesRequiredInPrefetch[k] / PrefetchPixelLinesTime[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6809  						* dml_max(1.0, ExpectedVRatioPrefetch) * dml_max(1.0, ExpectedVRatioPrefetch / 4) * ExpectedPrefetchBWAcceleration;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6810  					if (HostVMEnable == true || ImmediateFlipRequirement == dm_immediate_flip_required) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6811  						DCFCLKRequiredForPeakBandwidthPerPlane[k] = DCFCLKRequiredForPeakBandwidthPerPlane[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6812  							+ NoOfDPPState[k] * DPTEBandwidth / PTEEfficiency / NormalEfficiency / ReturnBusWidth;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6813  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6814  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6815  					DCFCLKRequiredForPeakBandwidthPerPlane[k] = DCFCLKPerState[i];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6816  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6817  				if (DynamicMetadataEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6818  					double TsetupPipe = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6819  					double TdmbfPipe = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6820  					double TdmsksPipe = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6821  					double TdmecPipe = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6822  					double AllowedTimeForUrgentExtraLatency = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6823  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6824  					CalculateDynamicMetadataParameters(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6825  							MaxInterDCNTileRepeaters,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6826  							RequiredDPPCLK[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6827  							RequiredDISPCLK[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6828  							ProjectedDCFCLKDeepSleep[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6829  							PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6830  							HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6831  							VTotal[k] - VActive[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6832  							DynamicMetadataTransmittedBytes[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6833  							DynamicMetadataLinesBeforeActiveRequired[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6834  							Interlace[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6835  							ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6836  							&TsetupPipe,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6837  							&TdmbfPipe,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6838  							&TdmecPipe,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6839  							&TdmsksPipe);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6840  					AllowedTimeForUrgentExtraLatency = MaximumVStartup[i][j][k] * HTotal[k] / PixelClock[k] - MinimumTWait - TsetupPipe
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6841  							- TdmbfPipe - TdmecPipe - TdmsksPipe - DynamicMetadataVMExtraLatency[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6842  					if (AllowedTimeForUrgentExtraLatency > 0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6843  						DCFCLKRequiredForPeakBandwidthPerPlane[k] = dml_max(DCFCLKRequiredForPeakBandwidthPerPlane[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6844  								ExtraLatencyCycles / AllowedTimeForUrgentExtraLatency);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6845  					} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6846  						DCFCLKRequiredForPeakBandwidthPerPlane[k] = DCFCLKPerState[i];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6847  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6848  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6849  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6850  			DCFCLKRequiredForPeakBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6851  			for (k = 0; k <= NumberOfActivePlanes - 1; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6852  				DCFCLKRequiredForPeakBandwidth = DCFCLKRequiredForPeakBandwidth + DCFCLKRequiredForPeakBandwidthPerPlane[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6853  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6854  			MinimumTvmPlus2Tr0 = UrgLatency[i] * (GPUVMEnable == true ? (HostVMEnable == true ?
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6855  					(GPUVMMaxPageTableLevels + 2) * (HostVMMaxNonCachedPageTableLevels + 1) - 1 : GPUVMMaxPageTableLevels + 1) : 0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6856  			for (k = 0; k < NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6857  				double MaximumTvmPlus2Tr0PlusTsw = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6858  				MaximumTvmPlus2Tr0PlusTsw = (MaximumVStartup[i][j][k] - 2) * HTotal[k] / PixelClock[k] - MinimumTWait - DynamicMetadataVMExtraLatency[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6859  				if (MaximumTvmPlus2Tr0PlusTsw <= MinimumTvmPlus2Tr0 + PrefetchPixelLinesTime[k] / 4) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6860  					DCFCLKRequiredForPeakBandwidth = DCFCLKPerState[i];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6861  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6862  					DCFCLKRequiredForPeakBandwidth = dml_max3(DCFCLKRequiredForPeakBandwidth, 2 * ExtraLatencyCycles
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6863  							/ (MaximumTvmPlus2Tr0PlusTsw - MinimumTvmPlus2Tr0 - PrefetchPixelLinesTime[k] / 4),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6864  						(2 * ExtraLatencyCycles + PixelDCFCLKCyclesRequiredInPrefetch[k]) / (MaximumTvmPlus2Tr0PlusTsw - MinimumTvmPlus2Tr0));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6865  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6866  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6867  			DCFCLKState[i][j] = dml_min(DCFCLKPerState[i], 1.05 * (1 + mode_lib->vba.PercentMarginOverMinimumRequiredDCFCLK / 100)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6868  					* dml_max(DCFCLKRequiredForAverageBandwidth, DCFCLKRequiredForPeakBandwidth));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6869  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6870  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6871  }
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  6872  

:::::: The code at line 6679 was first introduced by commit
:::::: 6725a88f88a7e922e91c45bf83d320487810c192 drm/amd/display: Add DCN3 DML

:::::: TO: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105060620.OLely0RZ-lkp%40intel.com.

--8t9RHnE3ZwKMSgU+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
KHo6E1g9AQA=

--8t9RHnE3ZwKMSgU+--
