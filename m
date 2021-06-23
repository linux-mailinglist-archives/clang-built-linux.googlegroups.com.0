Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBI5QZWDAMGQEHNSJV7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC6D3B1DD7
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 17:49:57 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id c5-20020a5ea9050000b02904ed4b46ce62sf474418iod.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 08:49:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624463395; cv=pass;
        d=google.com; s=arc-20160816;
        b=hgEd+0XB1DyYAYcL6R6mms6wa8FFWlnr7ermIVRqybc20YQZ8nGJaXuPpjGANspaiw
         OI+pjPx0nchhCTBuWqn6TiVAfUw8Un+ZH3f+NdGf3JS1NKE8xMU+cbRwoSDWzd3JjFER
         gtoakzJpf9jMBUeHvnCxM9G4lsg6dPUOh+hCygp0csjjHJbfmr1aYGAfpgVBHFq1iQ+k
         mB9U7oAIo6UqqM0IH7ehL+KZI57F4LG6ATQkWL4JnIOZUiUzy/9XcspJeyVUr/ZGXRBY
         kPfXKEeWwjiRfj8EF8QczSYgpLmZfTTHwTbYxSqNF1A0dLQbuAtCPyLLa6zX+8S/b9qu
         IJpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=bHjxUI2EqLOibH1EQrSrzy2pr1eSNiWfnwXqXyIVzd8=;
        b=qNAeNJaaXmaoMbKrKswqnWdNkfVCv3lCXGE9VS5KtCjFeD9HtyrYL83dMPKVjxeiQO
         Uk67qReuPvSmdj6DqLi3IO16tPjTpTnEtw6XONF5TJ7/xhNITfXDbIkRQQHQV8wfbpRP
         f/rc4Jr4t678LGH3DP2KE9wx/Nv7OWU/yRB2mo+hi5MPQo/pig9+u0kW/gJPSmzgnGsG
         SDMloAYIinesGDW3oOXwZD5TYiBuu31/JpMi/WNu5Bv7sY4iGkHEzIZTBsE0R7M2IPl+
         n3+VXPFLT+0Z1iprhLu30N93c2aJ+hZ8l9RpstdaJexvv9VKtaBxnqlPOB7KbvehLjxx
         Km3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bHjxUI2EqLOibH1EQrSrzy2pr1eSNiWfnwXqXyIVzd8=;
        b=WUBUTrBS6xsBc8RPkeNabhIzOIDs+aYX0x9TTvGLqgELq0KDgXg3mCVd3ojGA0Jibd
         4BnqAAZs3hxUa6IkIm34LjWljtJzFK5bAkpLzedTSRMQmYCgzW5ALv+Sa5LVWlyAna/z
         8zX7juEwNnHgg+dsn1LJB6nRNoUbMakIalKQyfn0pP1o8/2HnPLkEBWGRQZY4FppsD/o
         BW2EWmVX2NAPkDwwbFP6wXXwUlq7qvo7J/oIygl2MELplH37OUoDVS3mLd8uvjV1H/ZR
         +Xlyzea8FxGqVdFRlWGgevKOgeNQNpjyiT4/ZUkIKnIi97tXEaslNl7xUeTuorTS66tE
         VMkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bHjxUI2EqLOibH1EQrSrzy2pr1eSNiWfnwXqXyIVzd8=;
        b=NJ2gN3Dbst5mws9FqfY4DSVWwyipA4i1XeHQCJyYvCzchs/ZEnfYnDHxGmNUYnlWTr
         JEUp2VxMvsB0MxgRzHCQMSfB3oDk3j2r0FGJrt9ErWCylsGs6A7pBDmc27Mjmhq2eW1j
         nP63f95wnhilvXbrUXWfu9wKgL2rWR+HoQScBo4bF+VgROO3Y2X5FqzIG4qtnngfywrP
         MVEDzTfIyaIGlabHiWDWegq6MwXIlO0ZZiq3ldTqCmQvN/DpCwyh8fiF1ze0wiJ/Zg5s
         eOdJ/AjcK2Bv8EXOvmOXZEHETlm4Zr2QL/6svUvrTShEYA9kI9w9LgXPlRklmUrNMCTv
         zgpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bqxK78KLkwj2sDsXiu3V3ie1p+JX+9Co2LXUbmMxEzl3mKnZr
	+nXv7/GwW1TuhMqDMx1l+6U=
X-Google-Smtp-Source: ABdhPJyqAauOhRQaoC+JC0NBqQ0EAhqVVM3Mu1ZbKysmXB7GMVt+A3vasjlh1OrCXbDiuMtb7TMdlw==
X-Received: by 2002:a02:c906:: with SMTP id t6mr218314jao.117.1624463395497;
        Wed, 23 Jun 2021 08:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9bd2:: with SMTP id d18ls544496ion.10.gmail; Wed, 23 Jun
 2021 08:49:55 -0700 (PDT)
X-Received: by 2002:a5d:89ca:: with SMTP id a10mr183092iot.112.1624463394898;
        Wed, 23 Jun 2021 08:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624463394; cv=none;
        d=google.com; s=arc-20160816;
        b=Q25/FcywDNZL3aDIYTAq6gxmpxIlHg31q2d4dJYoK2tBBgFmmNsLqiFCxvOlLRdPZb
         3Crrsnu3IWZrCdFlnYOoBLti4YdkNyz3PqyB1KTuc3VV7V/EON8qQre5+7lOGuYysPcq
         WdA4ppoUXnduq8GPAhvZTA+GekgnyXouQgbPEEAtvVg2BblTubBEI634D6v9FyZuv1Zt
         BVAtck29ZWhyjb0LKXDRxylSryOK9YADFZNOeiX5tXgH59X7l7oc/lbIkpsuEpQ4cuhs
         aKHWy+fRJTWrAYgM7nEhRE5nEaZzzZeAcLV7LSgvqggkibcnRkogN5OI+iQQZ7bpDM8P
         FH9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=9OYJ/J9S5KdPcqTu4Kt4tm0pja5IH+i3PHb8ITfhLjI=;
        b=ifAZGlZUsE/HGbky/zbacZyR45ESbn5Ha/W0yLtYvJ9fChA2oGiM+HVkf4/m/eCgeE
         iHdGm6xttATJv9MrIL+AfNH5iWGEsRFbTFMD3Ax25Tko9GP7rldb4mbq1SFTQ8fT4Gq7
         Cn9uwtWIx61PP9fzd9L3UNJOe5i4Q1Y/gSX3BaK/8BbNsUriq6f4UyWsVCVCdalS5emq
         cGaq3/Nml6JahFSAmUuift/wOU6hYtMyW56+yZILYtlVl9844t/1k/1wUv3Q8Si/Q0za
         0S0MCKkE2dRtW61S+Hv50en+9Ju4+r01YO9bba22H/mSrDIUzXw1CXAyQfDfsDSfZXkT
         SF1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id e9si34616ilc.3.2021.06.23.08.49.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 08:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: A+Z+tFwNKTPp3vAxJvBsKlIfM2mCsWcpiutMXmod11VF1zRPDUUY+sfKv2ZR13i2GQ+8ZBXYSi
 ekPTZcKmO+TQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="271135997"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; 
   d="gz'50?scan'50,208,50";a="271135997"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2021 08:49:48 -0700
IronPort-SDR: 8zscPeKpweVZhlSlEacCEofwVnZ+GwM7T/rAnauFoJIpzbJ4eILlqka/wOlxVuJOai6hv7qmtR
 XvfK6MLPuEuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; 
   d="gz'50?scan'50,208,50";a="487364224"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 23 Jun 2021 08:49:46 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lw58L-00061C-MA; Wed, 23 Jun 2021 15:49:45 +0000
Date: Wed, 23 Jun 2021 23:49:25 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3641:6:
 warning: stack frame size (2848) exceeds limit (2048) in function
 'dml30_ModeSupportAndSystemConfigurationFull'
Message-ID: <202106232316.HhGOOZQV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+HP7ph2BbKc20aGI"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--+HP7ph2BbKc20aGI
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   0c18f29aae7ce3dadd26d8ee3505d07cc982df75
commit: 20f2ffe504728612d7b0c34e4f8280e34251e704 drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v3)
date:   8 months ago
config: powerpc64-randconfig-r001-20210622 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b259740801d3515810ecc15bf0c24b0d476a1608)
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
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:1917:13: warning: stack frame size (3200) exceeds limit (2048) in function 'DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation' [-Wframe-larger-than]
   static void DISPCLKDPPCLKDCFCLKDeepSleepPrefetchParametersWatermarksAndPerformanceCalculation(
               ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3641:6: warning: stack frame size (2848) exceeds limit (2048) in function 'dml30_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than]
   void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
        ^
   4 warnings generated.


vim +/dml30_ModeSupportAndSystemConfigurationFull +3641 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c

6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3640  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21 @3641  void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3642  {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3643  	struct vba_vars_st *v = &mode_lib->vba;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3644  	int MinPrefetchMode = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3645  	int MaxPrefetchMode = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3646  	int i;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3647  	unsigned int j, k, m;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3648  	bool   EnoughWritebackUnits = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3649  	bool   WritebackModeSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3650  	bool   ViewportExceedsSurface = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3651  	double MaxTotalVActiveRDBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3652  	long ReorderingBytes = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3653  	bool NotUrgentLatencyHiding[DC__NUM_DPP__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3654  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3655  	/*MODE SUPPORT, VOLTAGE STATE AND SOC CONFIGURATION*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3656  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3657  	/*Scale Ratio, taps Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3658  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3659  	v->ScaleRatioAndTapsSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3660  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3661  		if (v->ScalerEnabled[k] == false
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3662  				&& ((v->SourcePixelFormat[k] != dm_444_64
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3663  						&& v->SourcePixelFormat[k] != dm_444_32
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3664  						&& v->SourcePixelFormat[k] != dm_444_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3665  						&& v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3666  						&& v->SourcePixelFormat[k] != dm_mono_8
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3667  						&& v->SourcePixelFormat[k] != dm_rgbe
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3668  						&& v->SourcePixelFormat[k] != dm_rgbe_alpha)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3669  						|| v->HRatio[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3670  						|| v->htaps[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3671  						|| v->VRatio[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3672  						|| v->vtaps[k] != 1.0)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3673  			v->ScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3674  		} else if (v->vtaps[k] < 1.0 || v->vtaps[k] > 8.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3675  				|| v->htaps[k] < 1.0 || v->htaps[k] > 8.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3676  				|| (v->htaps[k] > 1.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3677  						&& (v->htaps[k] % 2) == 1)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3678  				|| v->HRatio[k] > v->MaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3679  				|| v->VRatio[k] > v->MaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3680  				|| v->HRatio[k] > v->htaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3681  				|| v->VRatio[k] > v->vtaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3682  				|| (v->SourcePixelFormat[k] != dm_444_64
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3683  						&& v->SourcePixelFormat[k] != dm_444_32
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3684  						&& v->SourcePixelFormat[k] != dm_444_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3685  						&& v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3686  						&& v->SourcePixelFormat[k] != dm_mono_8
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3687  						&& v->SourcePixelFormat[k] != dm_rgbe
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3688  						&& (v->VTAPsChroma[k] < 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3689  							|| v->VTAPsChroma[k] > 8
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3690  							|| v->HTAPsChroma[k] < 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3691  							|| v->HTAPsChroma[k] > 8
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3692  							|| (v->HTAPsChroma[k] > 1 && v->HTAPsChroma[k] % 2 == 1)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3693  							|| v->HRatioChroma[k] > v->MaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3694  							|| v->VRatioChroma[k] > v->MaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3695  							|| v->HRatioChroma[k] > v->HTAPsChroma[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3696  							|| v->VRatioChroma[k] > v->VTAPsChroma[k]))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3697  			v->ScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3698  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3699  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3700  	/*Source Format, Pixel Format and Scan Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3701  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3702  	v->SourceFormatPixelAndScanSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3703  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3704  		if ((v->SurfaceTiling[k] == dm_sw_linear && (!(v->SourceScan[k] != dm_vert) || v->DCCEnable[k] == true))
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3705  				|| ((v->SurfaceTiling[k] == dm_sw_64kb_d || v->SurfaceTiling[k] == dm_sw_64kb_d_t || v->SurfaceTiling[k] == dm_sw_64kb_d_x)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3706  						&& !(v->SourcePixelFormat[k] == dm_444_64))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3707  			v->SourceFormatPixelAndScanSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3708  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3709  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3710  	/*Bandwidth Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3711  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3712  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3713  		CalculateBytePerPixelAnd256BBlockSizes(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3714  				v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3715  				v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3716  				&v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3717  				&v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3718  				&v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3719  				&v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3720  				&v->Read256BlockHeightY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3721  				&v->Read256BlockHeightC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3722  				&v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3723  				&v->Read256BlockWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3724  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3725  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3726  		if (v->SourceScan[k] != dm_vert) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3727  			v->SwathWidthYSingleDPP[k] = v->ViewportWidth[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3728  			v->SwathWidthCSingleDPP[k] = v->ViewportWidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3729  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3730  			v->SwathWidthYSingleDPP[k] = v->ViewportHeight[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3731  			v->SwathWidthCSingleDPP[k] = v->ViewportHeightChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3732  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3733  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3734  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3735  		v->ReadBandwidthLuma[k] = v->SwathWidthYSingleDPP[k] * dml_ceil(v->BytePerPixelInDETY[k], 1.0) / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3736  		v->ReadBandwidthChroma[k] = v->SwathWidthYSingleDPP[k] / 2 * dml_ceil(v->BytePerPixelInDETC[k], 2.0) / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k] / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3737  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3738  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3739  		if (v->WritebackEnable[k] == true
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3740  				&& v->WritebackPixelFormat[k] == dm_444_64) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3741  			v->WriteBandwidth[k] = v->WritebackDestinationWidth[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3742  					* v->WritebackDestinationHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3743  					/ (v->WritebackSourceHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3744  							* v->HTotal[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3745  							/ v->PixelClock[k]) * 8.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3746  		} else if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3747  			v->WriteBandwidth[k] = v->WritebackDestinationWidth[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3748  					* v->WritebackDestinationHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3749  					/ (v->WritebackSourceHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3750  							* v->HTotal[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3751  							/ v->PixelClock[k]) * 4.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3752  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3753  			v->WriteBandwidth[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3754  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3755  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3756  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3757  	/*Writeback Latency support check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3758  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3759  	v->WritebackLatencySupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3760  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3761  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3762  			if (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave ||
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3763  			    v->WritebackConfiguration == dm_whole_buffer_for_single_stream_interleave) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3764  				if (v->WriteBandwidth[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3765  						> 2.0 * v->WritebackInterfaceBufferSize * 1024
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3766  								/ v->WritebackLatency) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3767  					v->WritebackLatencySupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3768  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3769  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3770  				if (v->WriteBandwidth[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3771  						> v->WritebackInterfaceBufferSize * 1024
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3772  								/ v->WritebackLatency) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3773  					v->WritebackLatencySupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3774  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3775  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3776  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3777  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3778  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3779  	/*Writeback Mode Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3780  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3781  	v->TotalNumberOfActiveWriteback = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3782  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3783  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3784  			v->TotalNumberOfActiveWriteback =
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3785  					v->TotalNumberOfActiveWriteback + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3786  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3787  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3788  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3789  	if (v->TotalNumberOfActiveWriteback > v->MaxNumWriteback) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3790  		EnoughWritebackUnits = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3791  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3792  	if (!v->WritebackSupportInterleaveAndUsingWholeBufferForASingleStream
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3793  			&& (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3794  					|| v->WritebackConfiguration == dm_whole_buffer_for_single_stream_interleave)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3795  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3796  		WritebackModeSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3797  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3798  	if (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave && v->TotalNumberOfActiveWriteback > 1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3799  		WritebackModeSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3800  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3801  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3802  	/*Writeback Scale Ratio and Taps Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3803  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3804  	v->WritebackScaleRatioAndTapsSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3805  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3806  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3807  			if (v->WritebackHRatio[k] > v->WritebackMaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3808  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3809  							> v->WritebackMaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3810  					|| v->WritebackHRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3811  							< v->WritebackMinHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3812  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3813  							< v->WritebackMinVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3814  					|| v->WritebackHTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3815  							> v->WritebackMaxHSCLTaps
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3816  					|| v->WritebackVTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3817  							> v->WritebackMaxVSCLTaps
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3818  					|| v->WritebackHRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3819  							> v->WritebackHTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3820  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3821  							> v->WritebackVTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3822  					|| (v->WritebackHTaps[k] > 2.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3823  							&& ((v->WritebackHTaps[k] % 2)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3824  									== 1))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3825  				v->WritebackScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3826  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3827  			if (2.0 * v->WritebackDestinationWidth[k] * (v->WritebackVTaps[k] - 1) * 57 > v->WritebackLineBufferSize) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3828  				v->WritebackScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3829  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3830  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3831  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3832  	/*Maximum DISPCLK/DPPCLK Support check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3833  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3834  	v->WritebackRequiredDISPCLK = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3835  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3836  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3837  			v->WritebackRequiredDISPCLK = dml_max(v->WritebackRequiredDISPCLK,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3838  					dml30_CalculateWriteBackDISPCLK(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3839  							v->WritebackPixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3840  							v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3841  							v->WritebackHRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3842  							v->WritebackVRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3843  							v->WritebackHTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3844  							v->WritebackVTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3845  							v->WritebackSourceWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3846  							v->WritebackDestinationWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3847  							v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3848  							v->WritebackLineBufferSize));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3849  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3850  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3851  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3852  		if (v->HRatio[k] > 1.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3853  			v->PSCL_FACTOR[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput * v->HRatio[k] / dml_ceil(v->htaps[k] / 6.0, 1.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3854  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3855  			v->PSCL_FACTOR[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3856  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3857  		if (v->BytePerPixelC[k] == 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3858  			v->PSCL_FACTOR_CHROMA[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3859  			v->MinDPPCLKUsingSingleDPP[k] = v->PixelClock[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3860  					* dml_max3(v->vtaps[k] / 6.0 * dml_min(1.0, v->HRatio[k]), v->HRatio[k] * v->VRatio[k] / v->PSCL_FACTOR[k], 1.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3861  			if ((v->htaps[k] > 6.0 || v->vtaps[k] > 6.0) && v->MinDPPCLKUsingSingleDPP[k] < 2.0 * v->PixelClock[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3862  				v->MinDPPCLKUsingSingleDPP[k] = 2.0 * v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3863  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3864  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3865  			if (v->HRatioChroma[k] > 1.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3866  				v->PSCL_FACTOR_CHROMA[k] = dml_min(v->MaxDCHUBToPSCLThroughput,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3867  						v->MaxPSCLToLBThroughput * v->HRatioChroma[k] / dml_ceil(v->HTAPsChroma[k] / 6.0, 1.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3868  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3869  				v->PSCL_FACTOR_CHROMA[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3870  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3871  			v->MinDPPCLKUsingSingleDPP[k] = v->PixelClock[k] * dml_max5(v->vtaps[k] / 6.0 * dml_min(1.0, v->HRatio[k]),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3872  							v->HRatio[k] * v->VRatio[k] / v->PSCL_FACTOR[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3873  							v->VTAPsChroma[k] / 6.0 * dml_min(1.0, v->HRatioChroma[k]),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3874  							v->HRatioChroma[k] * v->VRatioChroma[k] / v->PSCL_FACTOR_CHROMA[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3875  							1.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3876  			if ((v->htaps[k] > 6.0 || v->vtaps[k] > 6.0 || v->HTAPsChroma[k] > 6.0 || v->VTAPsChroma[k] > 6.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3877  					&& v->MinDPPCLKUsingSingleDPP[k] < 2.0 * v->PixelClock[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3878  				v->MinDPPCLKUsingSingleDPP[k] = 2.0 * v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3879  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3880  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3881  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3882  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3883  		int MaximumSwathWidthSupportLuma = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3884  		int MaximumSwathWidthSupportChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3885  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3886  		if (v->SurfaceTiling[k] == dm_sw_linear) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3887  			MaximumSwathWidthSupportLuma = 8192.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3888  		} else if (v->SourceScan[k] == dm_vert && v->BytePerPixelC[k] > 0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3889  			MaximumSwathWidthSupportLuma = 2880.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3890  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3891  			MaximumSwathWidthSupportLuma = 5760.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3892  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3893  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3894  		if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3895  			MaximumSwathWidthSupportChroma = MaximumSwathWidthSupportLuma / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3896  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3897  			MaximumSwathWidthSupportChroma = MaximumSwathWidthSupportLuma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3898  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3899  		v->MaximumSwathWidthInLineBufferLuma = v->LineBufferSize * dml_max(v->HRatio[k], 1.0) / v->LBBitPerPixel[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3900  				/ (v->vtaps[k] + dml_max(dml_ceil(v->VRatio[k], 1.0) - 2, 0.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3901  		if (v->BytePerPixelC[k] == 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3902  			v->MaximumSwathWidthInLineBufferChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3903  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3904  			v->MaximumSwathWidthInLineBufferChroma = v->LineBufferSize * dml_max(v->HRatioChroma[k], 1.0) / v->LBBitPerPixel[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3905  					/ (v->VTAPsChroma[k] + dml_max(dml_ceil(v->VRatioChroma[k], 1.0) - 2, 0.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3906  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3907  		v->MaximumSwathWidthLuma[k] = dml_min(MaximumSwathWidthSupportLuma, v->MaximumSwathWidthInLineBufferLuma);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3908  		v->MaximumSwathWidthChroma[k] = dml_min(MaximumSwathWidthSupportChroma, v->MaximumSwathWidthInLineBufferChroma);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3909  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3910  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3911  	CalculateSwathAndDETConfiguration(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3912  			true,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3913  			v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3914  			v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3915  			v->MaximumSwathWidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3916  			v->MaximumSwathWidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3917  			v->SourceScan,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3918  			v->SourcePixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3919  			v->SurfaceTiling,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3920  			v->ViewportWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3921  			v->ViewportHeight,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3922  			v->SurfaceWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3923  			v->SurfaceWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3924  			v->SurfaceHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3925  			v->SurfaceHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3926  			v->Read256BlockHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3927  			v->Read256BlockHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3928  			v->Read256BlockWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3929  			v->Read256BlockWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3930  			v->odm_combine_dummy,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3931  			v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3932  			v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3933  			v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3934  			v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3935  			v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3936  			v->HActive,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3937  			v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3938  			v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3939  			v->DPPPerPlane,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3940  			v->swath_width_luma_ub,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3941  			v->swath_width_chroma_ub,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3942  			v->SwathWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3943  			v->SwathWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3944  			v->SwathHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3945  			v->SwathHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3946  			v->DETBufferSizeY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3947  			v->DETBufferSizeC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3948  			v->SingleDPPViewportSizeSupportPerPlane,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3949  			&v->ViewportSizeSupport[0][0]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3950  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3951  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3952  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3953  			v->MaxDispclkRoundedDownToDFSGranularity = RoundToDFSGranularityDown(v->MaxDispclk[i], v->DISPCLKDPPCLKVCOSpeed);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3954  			v->MaxDppclkRoundedDownToDFSGranularity = RoundToDFSGranularityDown(v->MaxDppclk[i], v->DISPCLKDPPCLKVCOSpeed);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3955  			v->RequiredDISPCLK[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3956  			v->DISPCLK_DPPCLK_Support[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3957  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3958  				v->PlaneRequiredDISPCLKWithoutODMCombine = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3959  						* (1.0 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3960  				if ((v->PlaneRequiredDISPCLKWithoutODMCombine >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3961  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3962  					v->PlaneRequiredDISPCLKWithoutODMCombine = v->PixelClock[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3963  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3964  				v->PlaneRequiredDISPCLKWithODMCombine2To1 = v->PixelClock[k] / 2 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3965  						* (1 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3966  				if ((v->PlaneRequiredDISPCLKWithODMCombine2To1 >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3967  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3968  					v->PlaneRequiredDISPCLKWithODMCombine2To1 = v->PixelClock[k] / 2 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3969  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3970  				v->PlaneRequiredDISPCLKWithODMCombine4To1 = v->PixelClock[k] / 4 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3971  						* (1 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3972  				if ((v->PlaneRequiredDISPCLKWithODMCombine4To1 >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3973  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3974  					v->PlaneRequiredDISPCLKWithODMCombine4To1 = v->PixelClock[k] / 4 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3975  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3976  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3977  				if (v->ODMCombinePolicy == dm_odm_combine_policy_none) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3978  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3979  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithoutODMCombine;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3980  				} else if (v->ODMCombinePolicy == dm_odm_combine_policy_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3981  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3982  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3983  				} else if (v->ODMCombinePolicy == dm_odm_combine_policy_4to1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3984  						|| v->PlaneRequiredDISPCLKWithODMCombine2To1 > v->MaxDispclkRoundedDownToDFSGranularity) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3985  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_4to1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3986  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine4To1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3987  				} else if (v->PlaneRequiredDISPCLKWithoutODMCombine > v->MaxDispclkRoundedDownToDFSGranularity) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3988  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3989  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
5ec37c089e7d02 Dmytro Laktyushkin 2020-08-06  3990  				} else if (v->DSCEnabled[k] && (v->HActive[k] > DCN30_MAX_DSC_IMAGE_WIDTH)) {
5ec37c089e7d02 Dmytro Laktyushkin 2020-08-06  3991  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
5ec37c089e7d02 Dmytro Laktyushkin 2020-08-06  3992  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3993  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3994  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3995  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithoutODMCombine;
f8b9f9a599db59 Chris Park         2020-06-09  3996  					/*420 format workaround*/
f8b9f9a599db59 Chris Park         2020-06-09  3997  					if (v->HActive[k] > 4096 && v->OutputFormat[k] == dm_420) {
f8b9f9a599db59 Chris Park         2020-06-09  3998  						v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
f8b9f9a599db59 Chris Park         2020-06-09  3999  						v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
f8b9f9a599db59 Chris Park         2020-06-09  4000  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4001  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4002  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4003  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4004  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4005  					v->NoOfDPP[i][j][k] = 4;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4006  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 4;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4007  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4008  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4009  					v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4010  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4011  				} else if ((v->WhenToDoMPCCombine == dm_mpc_never
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4012  						|| (v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) <= v->MaxDppclkRoundedDownToDFSGranularity
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4013  								&& v->SingleDPPViewportSizeSupportPerPlane[k] == true))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4014  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4015  					v->NoOfDPP[i][j][k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4016  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4017  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4018  					v->MPCCombine[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4019  					v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4020  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4021  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4022  				v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->PlaneRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4023  				if ((v->MinDPPCLKUsingSingleDPP[k] / v->NoOfDPP[i][j][k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4024  						> v->MaxDppclkRoundedDownToDFSGranularity) || (v->PlaneRequiredDISPCLK > v->MaxDispclkRoundedDownToDFSGranularity)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4025  					v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4026  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4027  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4028  			v->TotalNumberOfActiveDPP[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4029  			v->TotalNumberOfSingleDPPPlanes[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4030  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4031  				v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4032  				if (v->NoOfDPP[i][j][k] == 1)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4033  					v->TotalNumberOfSingleDPPPlanes[i][j] = v->TotalNumberOfSingleDPPPlanes[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4034  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4035  			if (j == 1 && v->WhenToDoMPCCombine != dm_mpc_never) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4036  				while (!(v->TotalNumberOfActiveDPP[i][j] >= v->MaxNumDPP || v->TotalNumberOfSingleDPPPlanes[i][j] == 0)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4037  					double BWOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4038  					unsigned int NumberOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4039  					BWOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4040  					NumberOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4041  					for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4042  						if (v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k] > BWOfNonSplitPlaneOfMaximumBandwidth
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4043  								&& v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_disabled && v->MPCCombine[i][j][k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4044  							BWOfNonSplitPlaneOfMaximumBandwidth = v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4045  							NumberOfNonSplitPlaneOfMaximumBandwidth = k;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4046  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4047  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4048  					v->MPCCombine[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4049  					v->NoOfDPP[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4050  					v->RequiredDPPCLK[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = v->MinDPPCLKUsingSingleDPP[NumberOfNonSplitPlaneOfMaximumBandwidth]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4051  							* (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100) / 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4052  					v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4053  					v->TotalNumberOfSingleDPPPlanes[i][j] = v->TotalNumberOfSingleDPPPlanes[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4054  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4055  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4056  			if (v->TotalNumberOfActiveDPP[i][j] > v->MaxNumDPP) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4057  				v->RequiredDISPCLK[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4058  				v->DISPCLK_DPPCLK_Support[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4059  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4060  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4061  					if (v->SingleDPPViewportSizeSupportPerPlane[k] == false && v->WhenToDoMPCCombine != dm_mpc_never) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4062  						v->MPCCombine[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4063  						v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4064  						v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4065  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4066  						v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4067  						v->NoOfDPP[i][j][k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4068  						v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4069  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4070  					if (!(v->MaxDispclk[i] == v->MaxDispclk[v->soc.num_states - 1] && v->MaxDppclk[i] == v->MaxDppclk[v->soc.num_states - 1])) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4071  						v->PlaneRequiredDISPCLK = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4072  								* (1.0 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4073  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4074  						v->PlaneRequiredDISPCLK = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4075  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4076  					v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->PlaneRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4077  					if ((v->MinDPPCLKUsingSingleDPP[k] / v->NoOfDPP[i][j][k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4078  							> v->MaxDppclkRoundedDownToDFSGranularity) || (v->PlaneRequiredDISPCLK > v->MaxDispclkRoundedDownToDFSGranularity)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4079  						v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4080  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4081  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4082  				v->TotalNumberOfActiveDPP[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4083  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4084  					v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4085  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4086  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4087  			v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->WritebackRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4088  			if (v->MaxDispclkRoundedDownToDFSGranularity < v->WritebackRequiredDISPCLK) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4089  				v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4090  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4091  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4092  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4093  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4094  	/*Total Available Pipes Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4095  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4096  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4097  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4098  			if (v->TotalNumberOfActiveDPP[i][j] <= v->MaxNumDPP) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4099  				v->TotalAvailablePipesSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4100  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4101  				v->TotalAvailablePipesSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4102  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4103  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4104  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4105  	/*Display IO and DSC Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4106  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4107  	v->NonsupportedDSCInputBPC = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4108  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4109  		if (!(v->DSCInputBitPerComponent[k] == 12.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4110  				|| v->DSCInputBitPerComponent[k] == 10.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4111  				|| v->DSCInputBitPerComponent[k] == 8.0)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4112  			v->NonsupportedDSCInputBPC = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4113  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4114  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4115  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4116  	/*Number Of DSC Slices*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4117  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4118  		if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4119  			if (v->PixelClockBackEnd[k] > 3200) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4120  				v->NumberOfDSCSlices[k] = dml_ceil(v->PixelClockBackEnd[k] / 400.0, 4.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4121  			} else if (v->PixelClockBackEnd[k] > 1360) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4122  				v->NumberOfDSCSlices[k] = 8;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4123  			} else if (v->PixelClockBackEnd[k] > 680) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4124  				v->NumberOfDSCSlices[k] = 4;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4125  			} else if (v->PixelClockBackEnd[k] > 340) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4126  				v->NumberOfDSCSlices[k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4127  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4128  				v->NumberOfDSCSlices[k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4129  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4130  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4131  			v->NumberOfDSCSlices[k] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4132  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4133  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4134  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4135  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4136  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4137  			v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4138  			v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4139  			if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4140  				if (v->Output[k] == dm_hdmi) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4141  					v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4142  					v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4143  					v->OutputBppPerState[i][k] = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4144  							dml_min(600.0, v->PHYCLKPerState[i]) * 10,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4145  							3,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4146  							v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4147  							v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4148  							v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4149  							v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4150  							false,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4151  							v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4152  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4153  							v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4154  							v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4155  							v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4156  							v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4157  							v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4158  				} else if (v->Output[k] == dm_dp || v->Output[k] == dm_edp) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4159  					if (v->DSCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4160  						v->RequiresDSC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4161  						v->LinkDSCEnable = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4162  						if (v->Output[k] == dm_dp) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4163  							v->RequiresFEC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4164  						} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4165  							v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4166  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4167  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4168  						v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4169  						v->LinkDSCEnable = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4170  						v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4171  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4172  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4173  					v->Outbpp = BPP_INVALID;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4174  					if (v->PHYCLKPerState[i] >= 270.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4175  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4176  								(1.0 - v->Downspreading / 100.0) * 2700,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4177  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4178  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4179  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4180  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4181  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4182  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4183  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4184  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4185  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4186  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4187  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4188  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4189  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4190  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4191  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4192  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR"
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4193  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4194  					if (v->Outbpp == BPP_INVALID && v->PHYCLKPerState[i] >= 540.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4195  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4196  								(1.0 - v->Downspreading / 100.0) * 5400,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4197  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4198  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4199  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4200  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4201  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4202  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4203  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4204  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4205  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4206  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4207  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4208  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4209  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4210  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4211  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4212  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR2"
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4213  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4214  					if (v->Outbpp == BPP_INVALID && v->PHYCLKPerState[i] >= 810.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4215  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4216  								(1.0 - v->Downspreading / 100.0) * 8100,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4217  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4218  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4219  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4220  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4221  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4222  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4223  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4224  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4225  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4226  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4227  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4228  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4229  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4230  						if (v->Outbpp == BPP_INVALID && v->ForcedOutputLinkBPP[k] == 0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4231  							//if (v->Outbpp == BPP_INVALID && v->DSCEnabled[k] == dm_dsc_enable_only_if_necessary && v->ForcedOutputLinkBPP[k] == 0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4232  							v->RequiresDSC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4233  							v->LinkDSCEnable = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4234  							if (v->Output[k] == dm_dp) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4235  								v->RequiresFEC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4236  							}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4237  							v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4238  									(1.0 - v->Downspreading / 100.0) * 8100,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4239  									v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4240  									v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4241  									v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4242  									v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4243  									v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4244  									v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4245  									v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4246  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4247  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4248  									v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4249  									v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4250  									v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4251  									v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4252  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4253  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4254  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4255  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR3"
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4256  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4257  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4258  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4259  				v->OutputBppPerState[i][k] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4260  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4261  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4262  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4263  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4264  		v->DIOSupport[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4265  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4266  			if (v->BlendingAndTiming[k] == k && (v->Output[k] == dm_dp || v->Output[k] == dm_edp || v->Output[k] == dm_hdmi)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4267  					&& (v->OutputBppPerState[i][k] == 0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4268  							|| (v->OutputFormat[k] == dm_420 && v->Interlace[k] == true && v->ProgressiveToInterlaceUnitInOPP == true))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4269  				v->DIOSupport[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4270  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4271  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4272  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4273  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4274  	for (i = 0; i < v->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4275  		v->ODMCombine4To1SupportCheckOK[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4276  		for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4277  			if (v->BlendingAndTiming[k] == k && v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4278  					&& (v->ODMCombine4To1Supported == false || v->Output[k] == dm_dp || v->Output[k] == dm_edp || v->Output[k] == dm_hdmi)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4279  				v->ODMCombine4To1SupportCheckOK[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4280  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4281  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4282  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4283  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4284  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4285  		v->DSCCLKRequiredMoreThanSupported[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4286  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4287  			if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4288  				if (v->Output[k] == dm_dp || v->Output[k] == dm_edp) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4289  					if (v->OutputFormat[k] == dm_420) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4290  						v->DSCFormatFactor = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4291  					} else if (v->OutputFormat[k] == dm_444) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4292  						v->DSCFormatFactor = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4293  					} else if (v->OutputFormat[k] == dm_n422) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4294  						v->DSCFormatFactor = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4295  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4296  						v->DSCFormatFactor = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4297  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4298  					if (v->RequiresDSC[i][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4299  						if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4300  							if (v->PixelClockBackEnd[k] / 12.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4301  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4302  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4303  							}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4304  						} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4305  							if (v->PixelClockBackEnd[k] / 6.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4306  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4307  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4308  							}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4309  						} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4310  							if (v->PixelClockBackEnd[k] / 3.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4311  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4312  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4313  							}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4314  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4315  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4316  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4317  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4318  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4319  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4320  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4321  		v->NotEnoughDSCUnits[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4322  		v->TotalDSCUnitsRequired = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4323  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4324  			if (v->RequiresDSC[i][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4325  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4326  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 4.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4327  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4328  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4329  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4330  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 1.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4331  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4332  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4333  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4334  		if (v->TotalDSCUnitsRequired > v->NumberOfDSC) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4335  			v->NotEnoughDSCUnits[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4336  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4337  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4338  	/*DSC Delay per state*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4339  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4340  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4341  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4342  			if (v->OutputBppPerState[i][k] == BPP_INVALID) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4343  				v->BPP = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4344  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4345  				v->BPP = v->OutputBppPerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4346  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4347  			if (v->RequiresDSC[i][k] == true && v->BPP != 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4348  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_disabled) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4349  					v->DSCDelayPerState[i][k] = dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4350  							v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4351  							v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4352  							dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4353  							v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4354  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4355  							v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4356  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4357  					v->DSCDelayPerState[i][k] = 2.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4358  							* dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4359  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4360  									v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4361  									dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4362  									v->NumberOfDSCSlices[k] / 2,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4363  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4364  									v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4365  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4366  					v->DSCDelayPerState[i][k] = 4.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4367  							* (dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4368  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4369  									v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4370  									dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4371  									v->NumberOfDSCSlices[k] / 4,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4372  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4373  									v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4374  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4375  				v->DSCDelayPerState[i][k] = v->DSCDelayPerState[i][k] * v->PixelClock[k] / v->PixelClockBackEnd[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4376  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4377  				v->DSCDelayPerState[i][k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4378  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4379  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4380  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4381  			for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4382  				if (v->BlendingAndTiming[k] == m && v->RequiresDSC[i][m] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4383  					v->DSCDelayPerState[i][k] = v->DSCDelayPerState[i][m];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4384  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4385  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4386  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4387  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4388  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4389  	//Calculate Swath, DET Configuration, DCFCLKDeepSleep
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4390  	//
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4391  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4392  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4393  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4394  				v->RequiredDPPCLKThisState[k] = v->RequiredDPPCLK[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4395  				v->NoOfDPPThisState[k] = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4396  				v->ODMCombineEnableThisState[k] = v->ODMCombineEnablePerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4397  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4398  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4399  			CalculateSwathAndDETConfiguration(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4400  					false,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4401  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4402  					v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4403  					v->MaximumSwathWidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4404  					v->MaximumSwathWidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4405  					v->SourceScan,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4406  					v->SourcePixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4407  					v->SurfaceTiling,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4408  					v->ViewportWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4409  					v->ViewportHeight,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4410  					v->SurfaceWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4411  					v->SurfaceWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4412  					v->SurfaceHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4413  					v->SurfaceHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4414  					v->Read256BlockHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4415  					v->Read256BlockHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4416  					v->Read256BlockWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4417  					v->Read256BlockWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4418  					v->ODMCombineEnableThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4419  					v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4420  					v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4421  					v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4422  					v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4423  					v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4424  					v->HActive,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4425  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4426  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4427  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4428  					v->swath_width_luma_ub_this_state,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4429  					v->swath_width_chroma_ub_this_state,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4430  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4431  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4432  					v->SwathHeightYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4433  					v->SwathHeightCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4434  					v->DETBufferSizeYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4435  					v->DETBufferSizeCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4436  					v->dummystring,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4437  					&v->ViewportSizeSupport[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4438  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4439  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4440  				v->swath_width_luma_ub_all_states[i][j][k] = v->swath_width_luma_ub_this_state[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4441  				v->swath_width_chroma_ub_all_states[i][j][k] = v->swath_width_chroma_ub_this_state[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4442  				v->SwathWidthYAllStates[i][j][k] = v->SwathWidthYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4443  				v->SwathWidthCAllStates[i][j][k] = v->SwathWidthCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4444  				v->SwathHeightYAllStates[i][j][k] = v->SwathHeightYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4445  				v->SwathHeightCAllStates[i][j][k] = v->SwathHeightCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4446  				v->DETBufferSizeYAllStates[i][j][k] = v->DETBufferSizeYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4447  				v->DETBufferSizeCAllStates[i][j][k] = v->DETBufferSizeCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4448  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4449  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4450  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4451  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4452  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4453  		v->cursor_bw[k] = v->NumberOfCursors[k] * v->CursorWidth[k][0] * v->CursorBPP[k][0] / 8.0 / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4454  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4455  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4456  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4457  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4458  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4459  				v->swath_width_luma_ub_this_state[k] = v->swath_width_luma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4460  				v->swath_width_chroma_ub_this_state[k] = v->swath_width_chroma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4461  				v->SwathWidthYThisState[k] = v->SwathWidthYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4462  				v->SwathWidthCThisState[k] = v->SwathWidthCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4463  				v->SwathHeightYThisState[k] = v->SwathHeightYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4464  				v->SwathHeightCThisState[k] = v->SwathHeightCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4465  				v->DETBufferSizeYThisState[k] = v->DETBufferSizeYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4466  				v->DETBufferSizeCThisState[k] = v->DETBufferSizeCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4467  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4468  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4469  			v->TotalNumberOfDCCActiveDPP[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4470  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4471  				if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4472  					v->TotalNumberOfDCCActiveDPP[i][j] = v->TotalNumberOfDCCActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4473  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4474  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4475  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4476  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4477  				if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4478  						|| v->SourcePixelFormat[k] == dm_rgbe_alpha) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4479  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4480  					if ((v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12) && v->SourceScan[k] != dm_vert) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4481  						v->PTEBufferSizeInRequestsForLuma = (v->PTEBufferSizeInRequestsLuma + v->PTEBufferSizeInRequestsChroma) / 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4482  						v->PTEBufferSizeInRequestsForChroma = v->PTEBufferSizeInRequestsForLuma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4483  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4484  						v->PTEBufferSizeInRequestsForLuma = v->PTEBufferSizeInRequestsLuma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4485  						v->PTEBufferSizeInRequestsForChroma = v->PTEBufferSizeInRequestsChroma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4486  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4487  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4488  					v->PDEAndMetaPTEBytesPerFrameC = CalculateVMAndRowBytes(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4489  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4490  							v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4491  							v->Read256BlockHeightC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4492  							v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4493  							v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4494  							v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4495  							v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4496  							v->SourceScan[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4497  							v->SwathWidthCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4498  							v->ViewportHeightChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4499  							v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4500  							v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4501  							v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4502  							v->GPUVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4503  							v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4504  							v->PTEBufferSizeInRequestsForChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4505  							v->PitchC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4506  							0.0,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4507  							&v->MacroTileWidthC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4508  							&v->MetaRowBytesC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4509  							&v->DPTEBytesPerRowC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4510  							&v->PTEBufferSizeNotExceededC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4511  							&v->dummyinteger7,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4512  							&v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4513  							&v->dummyinteger28,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4514  							&v->dummyinteger26,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4515  							&v->dummyinteger23,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4516  							&v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4517  							&v->dummyinteger8,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4518  							&v->dummyinteger9,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4519  							&v->dummyinteger19,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4520  							&v->dummyinteger20,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4521  							&v->dummyinteger17,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4522  							&v->dummyinteger10,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4523  							&v->dummyinteger11);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4524  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4525  					v->PrefetchLinesC[i][j][k] = CalculatePrefetchSourceLines(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4526  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4527  							v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4528  							v->VTAPsChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4529  							v->Interlace[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4530  							v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4531  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4532  							v->ViewportYStartC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4533  							&v->PrefillC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4534  							&v->MaxNumSwC[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4535  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4536  					v->PTEBufferSizeInRequestsForLuma = v->PTEBufferSizeInRequestsLuma + v->PTEBufferSizeInRequestsChroma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4537  					v->PTEBufferSizeInRequestsForChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4538  					v->PDEAndMetaPTEBytesPerFrameC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4539  					v->MetaRowBytesC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4540  					v->DPTEBytesPerRowC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4541  					v->PrefetchLinesC[i][j][k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4542  					v->PTEBufferSizeNotExceededC[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4543  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4544  				v->PDEAndMetaPTEBytesPerFrameY = CalculateVMAndRowBytes(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4545  						mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4546  						v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4547  						v->Read256BlockHeightY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4548  						v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4549  						v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4550  						v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4551  						v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4552  						v->SourceScan[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4553  						v->SwathWidthYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4554  						v->ViewportHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4555  						v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4556  						v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4557  						v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4558  						v->GPUVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4559  						v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4560  						v->PTEBufferSizeInRequestsForLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4561  						v->PitchY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4562  						v->DCCMetaPitchY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4563  						&v->MacroTileWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4564  						&v->MetaRowBytesY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4565  						&v->DPTEBytesPerRowY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4566  						&v->PTEBufferSizeNotExceededY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4567  						v->dummyinteger4,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4568  						&v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4569  						&v->dummyinteger29,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4570  						&v->dummyinteger27,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4571  						&v->dummyinteger24,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4572  						&v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4573  						&v->dummyinteger25,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4574  						&v->dpte_group_bytes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4575  						&v->dummyinteger21,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4576  						&v->dummyinteger22,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4577  						&v->dummyinteger18,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4578  						&v->dummyinteger5,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4579  						&v->dummyinteger6);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4580  				v->PrefetchLinesY[i][j][k] = CalculatePrefetchSourceLines(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4581  						mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4582  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4583  						v->vtaps[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4584  						v->Interlace[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4585  						v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4586  						v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4587  						v->ViewportYStartY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4588  						&v->PrefillY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4589  						&v->MaxNumSwY[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4590  				v->PDEAndMetaPTEBytesPerFrame[i][j][k] = v->PDEAndMetaPTEBytesPerFrameY + v->PDEAndMetaPTEBytesPerFrameC;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4591  				v->MetaRowBytes[i][j][k] = v->MetaRowBytesY + v->MetaRowBytesC;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4592  				v->DPTEBytesPerRow[i][j][k] = v->DPTEBytesPerRowY + v->DPTEBytesPerRowC;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4593  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4594  				CalculateRowBandwidth(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4595  						v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4596  						v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4597  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4598  						v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4599  						v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4600  						v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4601  						v->MetaRowBytesY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4602  						v->MetaRowBytesC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4603  						v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4604  						v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4605  						v->DPTEBytesPerRowY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4606  						v->DPTEBytesPerRowC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4607  						v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4608  						v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4609  						&v->meta_row_bandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4610  						&v->dpte_row_bandwidth[i][j][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4611  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4612  			v->UrgLatency[i] = CalculateUrgentLatency(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4613  					v->UrgentLatencyPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4614  					v->UrgentLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4615  					v->UrgentLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4616  					v->DoUrgentLatencyAdjustment,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4617  					v->UrgentLatencyAdjustmentFabricClockComponent,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4618  					v->UrgentLatencyAdjustmentFabricClockReference,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4619  					v->FabricClockPerState[i]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4620  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4621  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4622  				CalculateUrgentBurstFactor(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4623  						v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4624  						v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4625  						v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4626  						v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4627  						v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4628  						v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4629  						v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4630  						v->CursorBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4631  						v->CursorWidth[k][0],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4632  						v->CursorBPP[k][0],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4633  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4634  						v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4635  						v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4636  						v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4637  						v->DETBufferSizeYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4638  						v->DETBufferSizeCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4639  						&v->UrgentBurstFactorCursor[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4640  						&v->UrgentBurstFactorLuma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4641  						&v->UrgentBurstFactorChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4642  						&NotUrgentLatencyHiding[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4643  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4644  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4645  			v->NotUrgentLatencyHiding[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4646  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4647  				if (NotUrgentLatencyHiding[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4648  					v->NotUrgentLatencyHiding[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4649  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4650  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4651  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4652  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4653  				v->VActivePixelBandwidth[i][j][k] = v->ReadBandwidthLuma[k] * v->UrgentBurstFactorLuma[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4654  						+ v->ReadBandwidthChroma[k] * v->UrgentBurstFactorChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4655  				v->VActiveCursorBandwidth[i][j][k] = v->cursor_bw[k] * v->UrgentBurstFactorCursor[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4656  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4657  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4658  			v->TotalVActivePixelBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4659  			v->TotalVActiveCursorBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4660  			v->TotalMetaRowBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4661  			v->TotalDPTERowBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4662  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4663  				v->TotalVActivePixelBandwidth[i][j] = v->TotalVActivePixelBandwidth[i][j] + v->VActivePixelBandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4664  				v->TotalVActiveCursorBandwidth[i][j] = v->TotalVActiveCursorBandwidth[i][j] + v->VActiveCursorBandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4665  				v->TotalMetaRowBandwidth[i][j] = v->TotalMetaRowBandwidth[i][j] + v->NoOfDPP[i][j][k] * v->meta_row_bandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4666  				v->TotalDPTERowBandwidth[i][j] = v->TotalDPTERowBandwidth[i][j] + v->NoOfDPP[i][j][k] * v->dpte_row_bandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4667  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4668  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4669  			CalculateDCFCLKDeepSleep(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4670  					mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4671  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4672  					v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4673  					v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4674  					v->VRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4675  					v->VRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4676  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4677  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4678  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4679  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4680  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4681  					v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4682  					v->PSCL_FACTOR,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4683  					v->PSCL_FACTOR_CHROMA,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4684  					v->RequiredDPPCLKThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4685  					v->ReadBandwidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4686  					v->ReadBandwidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4687  					v->ReturnBusWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4688  					&v->ProjectedDCFCLKDeepSleep[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4689  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4690  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4691  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4692  	//Calculate Return BW
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4693  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4694  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4695  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4696  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4697  				if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4698  					if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4699  						v->WritebackDelayTime[k] = v->WritebackLatency
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4700  								+ CalculateWriteBackDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4701  										v->WritebackPixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4702  										v->WritebackHRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4703  										v->WritebackVRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4704  										v->WritebackVTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4705  										v->WritebackDestinationWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4706  										v->WritebackDestinationHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4707  										v->WritebackSourceHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4708  										v->HTotal[k]) / v->RequiredDISPCLK[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4709  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4710  						v->WritebackDelayTime[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4711  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4712  					for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4713  						if (v->BlendingAndTiming[m] == k && v->WritebackEnable[m] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4714  							v->WritebackDelayTime[k] = dml_max(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4715  									v->WritebackDelayTime[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4716  									v->WritebackLatency
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4717  											+ CalculateWriteBackDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4718  													v->WritebackPixelFormat[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4719  													v->WritebackHRatio[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4720  													v->WritebackVRatio[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4721  													v->WritebackVTaps[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4722  													v->WritebackDestinationWidth[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4723  													v->WritebackDestinationHeight[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4724  													v->WritebackSourceHeight[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4725  													v->HTotal[m]) / v->RequiredDISPCLK[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4726  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4727  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4728  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4729  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4730  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4731  				for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4732  					if (v->BlendingAndTiming[k] == m) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4733  						v->WritebackDelayTime[k] = v->WritebackDelayTime[m];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4734  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4735  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4736  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4737  			v->MaxMaxVStartup[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4738  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4739  				v->MaximumVStartup[i][j][k] = v->VTotal[k] - v->VActive[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4740  						- dml_max(1.0, dml_ceil(1.0 * v->WritebackDelayTime[k] / (v->HTotal[k] / v->PixelClock[k]), 1.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4741  				v->MaxMaxVStartup[i][j] = dml_max(v->MaxMaxVStartup[i][j], v->MaximumVStartup[i][j][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4742  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4743  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4744  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4745  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4746  	ReorderingBytes = v->NumberOfChannels
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4747  			* dml_max3(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4748  					v->UrgentOutOfOrderReturnPerChannelPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4749  					v->UrgentOutOfOrderReturnPerChannelPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4750  					v->UrgentOutOfOrderReturnPerChannelVMDataOnly);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4751  	v->FinalDRAMClockChangeLatency = (v->DRAMClockChangeLatencyOverride > 0 ? v->DRAMClockChangeLatencyOverride : v->DRAMClockChangeLatency);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4752  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4753  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4754  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4755  			v->DCFCLKState[i][j] = v->DCFCLKPerState[i];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4756  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4757  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4758  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4759  	if (v->UseMinimumRequiredDCFCLK == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4760  		UseMinimumDCFCLK(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4761  				mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4762  				v->MaxInterDCNTileRepeaters,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4763  				MaxPrefetchMode,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4764  				v->FinalDRAMClockChangeLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4765  				v->SREnterPlusExitTime,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4766  				v->ReturnBusWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4767  				v->RoundTripPingLatencyCycles,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4768  				ReorderingBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4769  				v->PixelChunkSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4770  				v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4771  				v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4772  				v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4773  				v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4774  				v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4775  				v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4776  				v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4777  				v->DynamicMetadataVMEnabled,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4778  				v->ImmediateFlipRequirement,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4779  				v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4780  				v->MaxAveragePercentOfIdealSDPPortBWDisplayCanUseInNormalSystemOperation,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4781  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4782  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4783  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4784  				v->VTotal,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4785  				v->VActive,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4786  				v->DynamicMetadataTransmittedBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4787  				v->DynamicMetadataLinesBeforeActiveRequired,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4788  				v->Interlace,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4789  				v->RequiredDPPCLK,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4790  				v->RequiredDISPCLK,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4791  				v->UrgLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4792  				v->NoOfDPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4793  				v->ProjectedDCFCLKDeepSleep,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4794  				v->MaximumVStartup,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4795  				v->TotalVActivePixelBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4796  				v->TotalVActiveCursorBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4797  				v->TotalMetaRowBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4798  				v->TotalDPTERowBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4799  				v->TotalNumberOfActiveDPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4800  				v->TotalNumberOfDCCActiveDPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4801  				v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4802  				v->PrefetchLinesY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4803  				v->PrefetchLinesC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4804  				v->swath_width_luma_ub_all_states,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4805  				v->swath_width_chroma_ub_all_states,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4806  				v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4807  				v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4808  				v->HTotal,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4809  				v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4810  				v->PDEAndMetaPTEBytesPerFrame,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4811  				v->DPTEBytesPerRow,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4812  				v->MetaRowBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4813  				v->DynamicMetadataEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4814  				v->VActivePixelBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4815  				v->VActiveCursorBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4816  				v->ReadBandwidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4817  				v->ReadBandwidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4818  				v->DCFCLKPerState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4819  				v->DCFCLKState);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4820  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4821  		if (v->ClampMinDCFCLK) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4822  			/* Clamp calculated values to actual minimum */
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4823  			for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4824  				for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4825  					if (v->DCFCLKState[i][j] < mode_lib->soc.min_dcfclk) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4826  						v->DCFCLKState[i][j] = mode_lib->soc.min_dcfclk;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4827  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4828  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4829  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4830  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4831  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4832  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4833  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4834  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4835  			v->IdealSDPPortBandwidthPerState[i][j] = dml_min3(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4836  					v->ReturnBusWidth * v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4837  					v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4838  					v->FabricClockPerState[i] * v->FabricDatapathToDCNDataReturn);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4839  			if (v->HostVMEnable != true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4840  				v->ReturnBWPerState[i][j] = v->IdealSDPPortBandwidthPerState[i][j] * v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelDataOnly
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4841  						/ 100;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4842  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4843  				v->ReturnBWPerState[i][j] = v->IdealSDPPortBandwidthPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4844  						* v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData / 100;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4845  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4846  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4847  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4848  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4849  	//Re-ordering Buffer Support Check
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4850  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4851  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4852  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4853  			if ((v->ROBBufferSizeInKByte - v->PixelChunkSizeInKByte) * 1024 / v->ReturnBWPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4854  					> (v->RoundTripPingLatencyCycles + 32) / v->DCFCLKState[i][j] + ReorderingBytes / v->ReturnBWPerState[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4855  				v->ROBSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4856  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4857  				v->ROBSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4858  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4859  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4860  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4861  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4862  	//Vertical Active BW support check
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4863  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4864  	MaxTotalVActiveRDBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4865  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4866  		MaxTotalVActiveRDBandwidth = MaxTotalVActiveRDBandwidth + v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4867  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4868  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4869  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4870  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4871  			v->MaxTotalVerticalActiveAvailableBandwidth[i][j] = dml_min(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4872  					v->IdealSDPPortBandwidthPerState[i][j] * v->MaxAveragePercentOfIdealSDPPortBWDisplayCanUseInNormalSystemOperation / 100,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4873  					v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth * v->MaxAveragePercentOfIdealDRAMBWDisplayCanUseInNormalSystemOperation
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4874  							/ 100);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4875  			if (MaxTotalVActiveRDBandwidth <= v->MaxTotalVerticalActiveAvailableBandwidth[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4876  				v->TotalVerticalActiveBandwidthSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4877  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4878  				v->TotalVerticalActiveBandwidthSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4879  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4880  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4881  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4882  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4883  	//Prefetch Check
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4884  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4885  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4886  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4887  			int NextPrefetchModeState = MinPrefetchMode;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4888  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4889  			v->TimeCalc = 24 / v->ProjectedDCFCLKDeepSleep[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4890  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4891  			v->BandwidthWithoutPrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4892  			if (v->TotalVActivePixelBandwidth[i][j] + v->TotalVActiveCursorBandwidth[i][j] + v->TotalMetaRowBandwidth[i][j] + v->TotalDPTERowBandwidth[i][j]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4893  					> v->ReturnBWPerState[i][j] || v->NotUrgentLatencyHiding[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4894  				v->BandwidthWithoutPrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4895  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4896  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4897  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4898  				v->NoOfDPPThisState[k] = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4899  				v->swath_width_luma_ub_this_state[k] = v->swath_width_luma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4900  				v->swath_width_chroma_ub_this_state[k] = v->swath_width_chroma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4901  				v->SwathWidthYThisState[k] = v->SwathWidthYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4902  				v->SwathWidthCThisState[k] = v->SwathWidthCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4903  				v->SwathHeightYThisState[k] = v->SwathHeightYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4904  				v->SwathHeightCThisState[k] = v->SwathHeightCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4905  				v->DETBufferSizeYThisState[k] = v->DETBufferSizeYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4906  				v->DETBufferSizeCThisState[k] = v->DETBufferSizeCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4907  				v->ODMCombineEnabled[k] = v->ODMCombineEnablePerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4908  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4909  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4910  			v->ExtraLatency = CalculateExtraLatency(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4911  					v->RoundTripPingLatencyCycles,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4912  					ReorderingBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4913  					v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4914  					v->TotalNumberOfActiveDPP[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4915  					v->PixelChunkSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4916  					v->TotalNumberOfDCCActiveDPP[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4917  					v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4918  					v->ReturnBWPerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4919  					v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4920  					v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4921  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4922  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4923  					v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4924  					v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4925  					v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4926  					v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4927  					v->HostVMMaxNonCachedPageTableLevels);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4928  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4929  			v->NextMaxVStartup = v->MaxMaxVStartup[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4930  			do {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4931  				v->PrefetchModePerState[i][j] = NextPrefetchModeState;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4932  				v->MaxVStartup = v->NextMaxVStartup;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4933  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4934  				v->TWait = CalculateTWait(v->PrefetchModePerState[i][j], v->FinalDRAMClockChangeLatency, v->UrgLatency[i], v->SREnterPlusExitTime);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4935  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4936  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4937  					Pipe myPipe = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4938  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4939  					myPipe.DPPCLK = v->RequiredDPPCLK[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4940  					myPipe.DISPCLK = v->RequiredDISPCLK[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4941  					myPipe.PixelClock = v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4942  					myPipe.DCFCLKDeepSleep = v->ProjectedDCFCLKDeepSleep[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4943  					myPipe.DPPPerPlane = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4944  					myPipe.ScalerEnabled = v->ScalerEnabled[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4945  					myPipe.SourceScan = v->SourceScan[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4946  					myPipe.BlockWidth256BytesY = v->Read256BlockWidthY[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4947  					myPipe.BlockHeight256BytesY = v->Read256BlockHeightY[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4948  					myPipe.BlockWidth256BytesC = v->Read256BlockWidthC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4949  					myPipe.BlockHeight256BytesC = v->Read256BlockHeightC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4950  					myPipe.InterlaceEnable = v->Interlace[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4951  					myPipe.NumberOfCursors = v->NumberOfCursors[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4952  					myPipe.VBlank = v->VTotal[k] - v->VActive[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4953  					myPipe.HTotal = v->HTotal[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4954  					myPipe.DCCEnable = v->DCCEnable[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4955  					myPipe.ODMCombineEnabled = !!v->ODMCombineEnabled[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4956  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4957  					v->NoTimeForPrefetch[i][j][k] = CalculatePrefetchSchedule(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4958  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4959  							v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4960  							v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4961  							&myPipe,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4962  							v->DSCDelayPerState[i][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4963  							v->DPPCLKDelaySubtotal + v->DPPCLKDelayCNVCFormater,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4964  							v->DPPCLKDelaySCL,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4965  							v->DPPCLKDelaySCLLBOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4966  							v->DPPCLKDelayCNVCCursor,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4967  							v->DISPCLKDelaySubtotal,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4968  							v->SwathWidthYThisState[k] / v->HRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4969  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4970  							v->MaxInterDCNTileRepeaters,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4971  							dml_min(v->MaxVStartup, v->MaximumVStartup[i][j][k]),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4972  							v->MaximumVStartup[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4973  							v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4974  							v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4975  							v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4976  							v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4977  							v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4978  							v->DynamicMetadataEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4979  							v->DynamicMetadataVMEnabled,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4980  							v->DynamicMetadataLinesBeforeActiveRequired[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4981  							v->DynamicMetadataTransmittedBytes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4982  							v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4983  							v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4984  							v->TimeCalc,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4985  							v->PDEAndMetaPTEBytesPerFrame[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4986  							v->MetaRowBytes[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4987  							v->DPTEBytesPerRow[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4988  							v->PrefetchLinesY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4989  							v->SwathWidthYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4990  							v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4991  							v->PrefillY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4992  							v->MaxNumSwY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4993  							v->PrefetchLinesC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4994  							v->SwathWidthCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4995  							v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4996  							v->PrefillC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4997  							v->MaxNumSwC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4998  							v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4999  							v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5000  							v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5001  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5002  							v->TWait,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5003  							v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5004  							&v->DSTXAfterScaler[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5005  							&v->DSTYAfterScaler[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5006  							&v->LineTimesForPrefetch[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5007  							&v->PrefetchBW[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5008  							&v->LinesForMetaPTE[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5009  							&v->LinesForMetaAndDPTERow[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5010  							&v->VRatioPreY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5011  							&v->VRatioPreC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5012  							&v->RequiredPrefetchPixelDataBWLuma[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5013  							&v->RequiredPrefetchPixelDataBWChroma[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5014  							&v->NoTimeForDynamicMetadata[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5015  							&v->Tno_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5016  							&v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5017  							&v->Tdmdl_vm[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5018  							&v->Tdmdl[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5019  							&v->VUpdateOffsetPix[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5020  							&v->VUpdateWidthPix[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5021  							&v->VReadyOffsetPix[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5022  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5023  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5024  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5025  					CalculateUrgentBurstFactor(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5026  							v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5027  							v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5028  							v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5029  							v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5030  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5031  							v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5032  							v->UrgentLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5033  							v->CursorBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5034  							v->CursorWidth[k][0],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5035  							v->CursorBPP[k][0],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5036  							v->VRatioPreY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5037  							v->VRatioPreC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5038  							v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5039  							v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5040  							v->DETBufferSizeYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5041  							v->DETBufferSizeCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5042  							&v->UrgentBurstFactorCursorPre[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5043  							&v->UrgentBurstFactorLumaPre[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5044  							&v->UrgentBurstFactorChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5045  							&v->NoUrgentLatencyHidingPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5046  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5047  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5048  				v->MaximumReadBandwidthWithPrefetch = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5049  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5050  					v->cursor_bw_pre[k] = v->NumberOfCursors[k] * v->CursorWidth[k][0] * v->CursorBPP[k][0] / 8.0 / (v->HTotal[k] / v->PixelClock[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5051  							* v->VRatioPreY[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5052  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5053  					v->MaximumReadBandwidthWithPrefetch = v->MaximumReadBandwidthWithPrefetch
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5054  							+ dml_max4(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5055  									v->VActivePixelBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5056  									v->VActiveCursorBandwidth[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5057  											+ v->NoOfDPP[i][j][k] * (v->meta_row_bandwidth[i][j][k] + v->dpte_row_bandwidth[i][j][k]),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5058  									v->NoOfDPP[i][j][k] * v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5059  									v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5060  											* (v->RequiredPrefetchPixelDataBWLuma[i][j][k] * v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5061  													+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5062  															* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5063  											+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5064  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5065  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5066  				v->NotEnoughUrgentLatencyHidingPre = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5067  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5068  					if (v->NoUrgentLatencyHidingPre[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5069  						v->NotEnoughUrgentLatencyHidingPre = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5070  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5071  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5072  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5073  				v->PrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5074  				if (v->BandwidthWithoutPrefetchSupported[i][j] == false || v->MaximumReadBandwidthWithPrefetch > v->ReturnBWPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5075  						|| v->NotEnoughUrgentLatencyHidingPre == 1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5076  					v->PrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5077  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5078  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5079  					if (v->LineTimesForPrefetch[k] < 2.0 || v->LinesForMetaPTE[k] >= 32.0 || v->LinesForMetaAndDPTERow[k] >= 16.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5080  							|| v->NoTimeForPrefetch[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5081  						v->PrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5082  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5083  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5084  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5085  				v->DynamicMetadataSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5086  				for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5087  					if (v->NoTimeForDynamicMetadata[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5088  						v->DynamicMetadataSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5089  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5090  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5091  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5092  				v->VRatioInPrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5093  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5094  					if (v->VRatioPreY[i][j][k] > 4.0 || v->VRatioPreC[i][j][k] > 4.0 || v->NoTimeForPrefetch[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5095  						v->VRatioInPrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5096  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5097  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5098  				v->AnyLinesForVMOrRowTooLarge = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5099  				for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5100  					if (v->LinesForMetaAndDPTERow[k] >= 16 || v->LinesForMetaPTE[k] >= 32) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5101  						v->AnyLinesForVMOrRowTooLarge = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5102  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5103  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5104  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5105  				if (v->PrefetchSupported[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5106  					v->BandwidthAvailableForImmediateFlip = v->ReturnBWPerState[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5107  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5108  						v->BandwidthAvailableForImmediateFlip = v->BandwidthAvailableForImmediateFlip
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5109  								- dml_max(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5110  										v->VActivePixelBandwidth[i][j][k] + v->VActiveCursorBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5111  										v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5112  												* (v->RequiredPrefetchPixelDataBWLuma[i][j][k] * v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5113  														+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5114  																* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5115  												+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5116  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5117  					v->TotImmediateFlipBytes = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5118  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5119  						v->TotImmediateFlipBytes = v->TotImmediateFlipBytes + v->NoOfDPP[i][j][k] * v->PDEAndMetaPTEBytesPerFrame[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5120  								+ v->MetaRowBytes[i][j][k] + v->DPTEBytesPerRow[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5121  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5122  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5123  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5124  						CalculateFlipSchedule(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5125  								mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5126  								v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5127  								v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5128  								v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5129  								v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5130  								v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5131  								v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5132  								v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5133  								v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5134  								v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5135  								v->PDEAndMetaPTEBytesPerFrame[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5136  								v->MetaRowBytes[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5137  								v->DPTEBytesPerRow[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5138  								v->BandwidthAvailableForImmediateFlip,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5139  								v->TotImmediateFlipBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5140  								v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5141  								v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5142  								v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5143  								v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5144  								v->Tno_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5145  								v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5146  								v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5147  								v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5148  								v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5149  								v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5150  								&v->DestinationLinesToRequestVMInImmediateFlip[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5151  								&v->DestinationLinesToRequestRowInImmediateFlip[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5152  								&v->final_flip_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5153  								&v->ImmediateFlipSupportedForPipe[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5154  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5155  					v->total_dcn_read_bw_with_flip = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5156  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5157  						v->total_dcn_read_bw_with_flip = v->total_dcn_read_bw_with_flip
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5158  								+ dml_max3(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5159  										v->NoOfDPP[i][j][k] * v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5160  										v->NoOfDPP[i][j][k] * v->final_flip_bw[k] + v->VActivePixelBandwidth[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5161  												+ v->VActiveCursorBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5162  										v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5163  												* (v->final_flip_bw[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5164  														+ v->RequiredPrefetchPixelDataBWLuma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5165  																* v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5166  														+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5167  																* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5168  												+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5169  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5170  					v->ImmediateFlipSupportedForState[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5171  					if (v->total_dcn_read_bw_with_flip > v->ReturnBWPerState[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5172  						v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5173  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5174  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5175  						if (v->ImmediateFlipSupportedForPipe[k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5176  							v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5177  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5178  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5179  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5180  					v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5181  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5182  				if (v->MaxVStartup <= 13 || v->AnyLinesForVMOrRowTooLarge == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5183  					v->NextMaxVStartup = v->MaxMaxVStartup[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5184  					NextPrefetchModeState = NextPrefetchModeState + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5185  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5186  					v->NextMaxVStartup = v->NextMaxVStartup - 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5187  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5188  			} while (!((v->PrefetchSupported[i][j] == true && v->DynamicMetadataSupported[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5189  					&& ((v->HostVMEnable == false && v->ImmediateFlipRequirement != dm_immediate_flip_required)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5190  							|| v->ImmediateFlipSupportedForState[i][j] == true))
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5191  					|| (v->NextMaxVStartup == v->MaxMaxVStartup[i][j] && NextPrefetchModeState > MaxPrefetchMode)));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5192  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5193  			CalculateWatermarksAndDRAMSpeedChangeSupport(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5194  					mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5195  					v->PrefetchModePerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5196  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5197  					v->MaxLineBufferLines,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5198  					v->LineBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5199  					v->DPPOutputBufferPixels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5200  					v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5201  					v->WritebackInterfaceBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5202  					v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5203  					v->ReturnBWPerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5204  					v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5205  					v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5206  					v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5207  					v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5208  					v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5209  					v->WritebackLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5210  					v->WritebackChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5211  					v->SOCCLKPerState[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5212  					v->FinalDRAMClockChangeLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5213  					v->SRExitTime,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5214  					v->SREnterPlusExitTime,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5215  					v->ProjectedDCFCLKDeepSleep[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5216  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5217  					v->DCCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5218  					v->RequiredDPPCLKThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5219  					v->DETBufferSizeYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5220  					v->DETBufferSizeCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5221  					v->SwathHeightYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5222  					v->SwathHeightCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5223  					v->LBBitPerPixel,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5224  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5225  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5226  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5227  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5228  					v->vtaps,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5229  					v->VTAPsChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5230  					v->VRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5231  					v->VRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5232  					v->HTotal,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5233  					v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5234  					v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5235  					v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5236  					v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5237  					v->DSTXAfterScaler,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5238  					v->DSTYAfterScaler,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5239  					v->WritebackEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5240  					v->WritebackPixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5241  					v->WritebackDestinationWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5242  					v->WritebackDestinationHeight,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5243  					v->WritebackSourceHeight,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5244  					&v->DRAMClockChangeSupport[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5245  					&v->UrgentWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5246  					&v->WritebackUrgentWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5247  					&v->DRAMClockChangeWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5248  					&v->WritebackDRAMClockChangeWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5249  					&v->StutterExitWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5250  					&v->StutterEnterPlusExitWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5251  					&v->MinActiveDRAMClockChangeLatencySupported);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5252  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5253  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5254  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5255  	/*PTE Buffer Size Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5256  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5257  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5258  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5259  			v->PTEBufferSizeNotExceeded[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5260  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5261  				if (v->PTEBufferSizeNotExceededY[i][j][k] == false || v->PTEBufferSizeNotExceededC[i][j][k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5262  					v->PTEBufferSizeNotExceeded[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5263  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5264  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5265  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5266  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5267  	/*Cursor Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5268  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5269  	v->CursorSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5270  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5271  		if (v->CursorWidth[k][0] > 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5272  			if (v->CursorBPP[k][0] == 64 && v->Cursor64BppSupport == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5273  				v->CursorSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5274  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5275  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5276  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5277  	/*Valid Pitch Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5278  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5279  	v->PitchSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5280  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5281  		v->AlignedYPitch[k] = dml_ceil(dml_max(v->PitchY[k], v->SurfaceWidthY[k]), v->MacroTileWidthY[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5282  		if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5283  			v->AlignedDCCMetaPitchY[k] = dml_ceil(dml_max(v->DCCMetaPitchY[k], v->SurfaceWidthY[k]), 64.0 * v->Read256BlockWidthY[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5284  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5285  			v->AlignedDCCMetaPitchY[k] = v->DCCMetaPitchY[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5286  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5287  		if (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32 && v->SourcePixelFormat[k] != dm_444_16 && v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5288  				&& v->SourcePixelFormat[k] != dm_rgbe && v->SourcePixelFormat[k] != dm_mono_8) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5289  			v->AlignedCPitch[k] = dml_ceil(dml_max(v->PitchC[k], v->SurfaceWidthC[k]), v->MacroTileWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5290  			if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5291  				v->AlignedDCCMetaPitchC[k] = dml_ceil(dml_max(v->DCCMetaPitchC[k], v->SurfaceWidthC[k]), 64.0 * v->Read256BlockWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5292  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5293  				v->AlignedDCCMetaPitchC[k] = v->DCCMetaPitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5294  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5295  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5296  			v->AlignedCPitch[k] = v->PitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5297  			v->AlignedDCCMetaPitchC[k] = v->DCCMetaPitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5298  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5299  		if (v->AlignedYPitch[k] > v->PitchY[k] || v->AlignedCPitch[k] > v->PitchC[k] || v->AlignedDCCMetaPitchY[k] > v->DCCMetaPitchY[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5300  				|| v->AlignedDCCMetaPitchC[k] > v->DCCMetaPitchC[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5301  			v->PitchSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5302  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5303  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5304  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5305  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5306  		if (v->ViewportWidth[k] > v->SurfaceWidthY[k] || v->ViewportHeight[k] > v->SurfaceHeightY[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5307  			ViewportExceedsSurface = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5308  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5309  		if (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32 && v->SourcePixelFormat[k] != dm_444_16
71f49c4898eef4 Ye Bin             2020-09-17  5310  				&& v->SourcePixelFormat[k] != dm_444_8 && v->SourcePixelFormat[k] != dm_rgbe) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5311  			if (v->ViewportWidthChroma[k] > v->SurfaceWidthC[k] || v->ViewportHeightChroma[k] > v->SurfaceHeightC[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5312  				ViewportExceedsSurface = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5313  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5314  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5315  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5316  	/*Mode Support, Voltage State and SOC Configuration*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5317  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5318  	for (i = v->soc.num_states - 1; i >= 0; i--) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5319  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5320  			if (v->ScaleRatioAndTapsSupport == 1 && v->SourceFormatPixelAndScanSupport == 1 && v->ViewportSizeSupport[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5321  					&& v->DIOSupport[i] == 1 && v->ODMCombine4To1SupportCheckOK[i] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5322  					&& v->NotEnoughDSCUnits[i] == 0 && v->DSCCLKRequiredMoreThanSupported[i] == 0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5323  					&& v->DTBCLKRequiredMoreThanSupported[i] == 0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5324  					&& v->ROBSupport[i][j] == 1 && v->DISPCLK_DPPCLK_Support[i][j] == 1 && v->TotalAvailablePipesSupport[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5325  					&& EnoughWritebackUnits == 1 && WritebackModeSupport == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5326  					&& v->WritebackLatencySupport == 1 && v->WritebackScaleRatioAndTapsSupport == 1 && v->CursorSupport == 1 && v->PitchSupport == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5327  					&& ViewportExceedsSurface == 0 && v->PrefetchSupported[i][j] == 1 && v->DynamicMetadataSupported[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5328  					&& v->TotalVerticalActiveBandwidthSupport[i][j] == 1 && v->VRatioInPrefetchSupported[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5329  					&& v->PTEBufferSizeNotExceeded[i][j] == 1 && v->NonsupportedDSCInputBPC == 0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5330  					&& ((v->HostVMEnable == 0 && v->ImmediateFlipRequirement != dm_immediate_flip_required)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5331  							|| v->ImmediateFlipSupportedForState[i][j] == true)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5332  				v->ModeSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5333  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5334  				v->ModeSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5335  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5336  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5337  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5338  	{
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5339  		unsigned int MaximumMPCCombine = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5340  		for (i = v->soc.num_states; i >= 0; i--) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5341  			if (i == v->soc.num_states || v->ModeSupport[i][0] == true || v->ModeSupport[i][1] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5342  				v->VoltageLevel = i;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5343  				v->ModeIsSupported = v->ModeSupport[i][0] == true || v->ModeSupport[i][1] == true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5344  				if (v->ModeSupport[i][1] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5345  					MaximumMPCCombine = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5346  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5347  					MaximumMPCCombine = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5348  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5349  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5350  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5351  		v->ImmediateFlipSupport = v->ImmediateFlipSupportedForState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5352  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5353  			v->MPCCombineEnable[k] = v->MPCCombine[v->VoltageLevel][MaximumMPCCombine][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5354  			v->DPPPerPlane[k] = v->NoOfDPP[v->VoltageLevel][MaximumMPCCombine][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5355  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5356  		v->DCFCLK = v->DCFCLKState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5357  		v->DRAMSpeed = v->DRAMSpeedPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5358  		v->FabricClock = v->FabricClockPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5359  		v->SOCCLK = v->SOCCLKPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5360  		v->ReturnBW = v->ReturnBWPerState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5361  		v->maxMpcComb = MaximumMPCCombine;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5362  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5363  }
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5364  

:::::: The code at line 3641 was first introduced by commit
:::::: 6725a88f88a7e922e91c45bf83d320487810c192 drm/amd/display: Add DCN3 DML

:::::: TO: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106232316.HhGOOZQV-lkp%40intel.com.

--+HP7ph2BbKc20aGI
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
0w+uL7SwAQA=

--+HP7ph2BbKc20aGI--
