Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5WQVGDAMGQE3YDLXLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id A19A93AA5F3
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 23:09:11 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id t127-20020a1f78850000b029024795462204sf60653vkc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 14:09:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623877750; cv=pass;
        d=google.com; s=arc-20160816;
        b=UMG1QMia2nr+nFhntObi4RDsI8iNMpFpp8kAIZL3NEprp3t3lLDXBXyFKefBYsCIW2
         meIAzTVKGqH/l4dtRAqVkhZ1Ypyc0Uzlws95aX29Pwur/kXtsNa+s0MuGx77phkAHxMD
         eJXKSgh8apE1MiSQea+12cMjsijYKzihM9QgAKh3Ek2WG0qruHVpE9WLYs4Xy6aK4PRN
         21XtR5mIFYr1K0OwInAtbp5Q6RjvP6RUyUbrSgqLiSvWLf+e95XlkNmIJeumhO75YAUY
         DkqRCDwAdzO2pg0yQquTXDwxgKf+lG8O9Jlr/nFEha/k/ao3fZF63CaYTrP+sVZZIIkV
         x/iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=vakSXyvhYmkCTqBhNZS9vik9KAbzu4w49azw06KhhpQ=;
        b=vpF9AO8/gol3Y90WSBNbplc+pW2V/gvf8wcccq08wuKiGhEK/hrlSTlxMOQOrbX6eO
         NuZqD43WvB7ztb/6dGSKwwltMk3C+RCNR0AWvyrrA7wZGAQT+RKZmT+Dz4Oa5bM7uq/a
         VGkDk4gpT/A6E0aqei49Voj1mIoTbbbAZUHKHaxGNpen++V7Jdb01IbPmg6dghxLkSAH
         n8xYCO+ro5yWxxT9pznVTeuTsZsgPBUaJqGgO7NaAUQ+hfJP4NlTf4y5u1cVNgQmNtm1
         ig5tbXgDHeRM9AlHCLqoLha7sLBTMMmwjJ6MXs37fTwhmp47uYFepEmwXririMwFCZXr
         HH3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vakSXyvhYmkCTqBhNZS9vik9KAbzu4w49azw06KhhpQ=;
        b=jHeVg0wJbXOqAA4VqoerLXhF4ewQoH6m4GWYjiJmh3IVXgNMX2Du+pCkkYXZzdzyP2
         A6lRnvslxj6s9fw88foN7+NNrVUKGO+wUZWIp/3duc6pz7zoC4btyXwkNKecVpl+Gdte
         bkr+NhV6c+j6BRTMorY0Jy17Psp1dyPEtzl4C9sIbaJ78VEPYwuiaweqngxPnfXBMqKl
         kH0xnWk4kAVib+QOaJQnbaEG367Q+5XfOcGyukGWokgDUFroE6b9suwEXGUJOj5BHdOA
         47GMV0lMOpY9pY03cfmgT1xIZBR3T3EZtyUQFCnd90OTfMPzkDfKC9Z85GeTZSi7SVyK
         MxTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vakSXyvhYmkCTqBhNZS9vik9KAbzu4w49azw06KhhpQ=;
        b=E/FWR6N/Hb3zgtVVAK1E0MSkklLDkm+5yGBCzzZuFD2+LaJT4N70PMADJvx+iV3WDf
         4S70fD0CQKX5yDuO8J5YfVK4cJV+OeJq0aARBBt1jjUKvLiFlcob6h5L6xjBEpuN5rx+
         bKCT4LsDHFIvTMQyqblslfSuowl6ca6hnS4vjSeGyZ7dEW4di6ML5MyBgUQcUCP55mBU
         LjKmnRAjXjA6lXjWdRleXQ0di9d72vkhHpp3tmaLFT+fb2o36l63aGUuvkit7Fus8Ate
         F7HGCXgyls11IC9HJUtYgijTR3ch9ElexBMYttFZz5qsoWhZKLbqJHWBUCkqtVhpmMni
         dXqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sCVWEpO90gDDae2hLKWPCKtLz2QChuL7uZ2SKKnY+llKrmWtd
	7parrRYHdkYVir8ESEWukxc=
X-Google-Smtp-Source: ABdhPJwvlaofPUuDN6pJC729w6AiscIPbi6xVASnkX/LvZTs7T7Q8qdzBedNT5S8h+t5aq+VIn3LpQ==
X-Received: by 2002:a67:3c2:: with SMTP id 185mr1522695vsd.42.1623877750621;
        Wed, 16 Jun 2021 14:09:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2a4c:: with SMTP id p12ls768909uar.6.gmail; Wed, 16 Jun
 2021 14:09:10 -0700 (PDT)
X-Received: by 2002:ab0:185a:: with SMTP id j26mr2100275uag.33.1623877749930;
        Wed, 16 Jun 2021 14:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623877749; cv=none;
        d=google.com; s=arc-20160816;
        b=UBcjss0aUURW1qSFEhNkb8uh2ek+RZFoWpCUghVl8jVyYH+IKpl82zYQaXBWpCfDrA
         yVgU/Am37g5gNHxQR5acxIFQzvKwPZMmka0wxKPliatE2DK7ojl0dcOmtIZGz6y9/+MB
         SEM8jIXTjWHqnrsbQPkvANSqoTL1H/SgAlQabfMlnpR8mmSrFXIE2E19jnCiWdOMIaVG
         3hiV7+bDzOWFCbmDaTeDkLjmLjZR2g3JgQaIzBw0GhqVzIoiZ6HaEuxMCg5sIStg65IG
         Z9zTMI2k557blIMbYQWjwcklMyDk1kFkNB7CGEJJkVYSWTixWwM32e2woRAII2xwtSXq
         y+3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3I5W6rvTfbydsy7HrPRZSqKdHzBrrwf8KKBooCFno6c=;
        b=WtwMqXg1H6vG3nmZYhNABDr3WoeJfid2qRWRnG9XGdvOD9eJU/H895+edQHbfxctci
         j+NYHXvvPFML+rzPNKYDH1cnjlJsGwv42j/DZUeiBhiupO1ftoT5eY8QBVpivs0wSSkm
         yc657eqkoxr8y5UKalCKSPUw04HqaGK5/4L/7eXz339jkvm4IneNiYidqSoyoVYYcAVf
         1IMwuF3ojD53ni2CVda9jIsGlCd0vfHhSZLeOXMFXJojtCaT9KNCihzzkE/piHMMxLoS
         iM3uO/LoYXfWlEj86cHuHDH9f+y4aEv7VKSHWr7q4WhFdAi3tXsfLyS22nHiWJ8g+6H3
         ueTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id a1si288224uaq.0.2021.06.16.14.09.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 14:09:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: lxpftz6Y7cD0g1Vs/og0oLtnTm24WyKjviIyNcQVvKbu1HcY/71bFLXx/5cimLdJuRoXkbm9IJ
 28lHDJHFet8w==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="206076740"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; 
   d="gz'50?scan'50,208,50";a="206076740"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2021 14:09:07 -0700
IronPort-SDR: /+xfw13tucm+SqRTdNxOIFfIHXojKFkAlbHlpiP9TRcb71GYy7XN/mBU9QdYlj/Ijv2efMwIva
 ueLWjZC+LoFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; 
   d="gz'50?scan'50,208,50";a="554945298"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 16 Jun 2021 14:09:03 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ltcmV-0001Ww-6a; Wed, 16 Jun 2021 21:09:03 +0000
Date: Thu, 17 Jun 2021 05:08:13 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:6679:13:
 warning: stack frame size of 3056 bytes in function 'UseMinimumDCFCLK'
Message-ID: <202106170504.1BwTTJS7-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qDbXVdCdHGoSgWSk"
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   6b00bc639f1f2beeff3595e1bab9faaa51d23b01
commit: 20f2ffe504728612d7b0c34e4f8280e34251e704 drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v3)
date:   7 months ago
config: powerpc64-randconfig-r026-20210615 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=20f2ffe504728612d7b0c34e4f8280e34251e704
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 20f2ffe504728612d7b0c34e4f8280e34251e704
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:27:
   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/dc.h:29:
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
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3052:10: warning: variable 'MaxUsedBW' set but not used [-Wunused-but-set-variable]
                   double MaxUsedBW = 0;
                          ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:1917:13: warning: stack frame size of 10912 bytes in function 'DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-Wframe-larger-than=]
   static void DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation(
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3641:6: warning: stack frame size of 11392 bytes in function 'dml30_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=]
   void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
        ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:6679:13: warning: stack frame size of 3056 bytes in function 'UseMinimumDCFCLK' [-Wframe-larger-than=]
   static void UseMinimumDCFCLK(
               ^
   5 warnings generated.
--
                           ^
   <scratch space>:195:1: note: expanded from here
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
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1959:13: warning: stack frame size of 3216 bytes in function 'dcn30_internal_validate_bw' [-Wframe-larger-than=]
   static bool dcn30_internal_validate_bw(
               ^
   117 warnings generated.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106170504.1BwTTJS7-lkp%40intel.com.

--qDbXVdCdHGoSgWSk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--qDbXVdCdHGoSgWSk--
