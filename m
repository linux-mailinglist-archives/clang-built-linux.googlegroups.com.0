Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3XHXKBQMGQEW24DGJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E258357D84
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 09:42:40 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id h21sf789582ila.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 00:42:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617867758; cv=pass;
        d=google.com; s=arc-20160816;
        b=sj/UoHfncJTTBbd3Z7SnueMfV5I3stuJupI/gXsMjTnnUxbYQn0/HloO6fy3AoLLKI
         L+hOgyd6WHVZWhnmnV/LzseiwkXE51Qsgb/Spw4+9uFsvwzlcDISgnOgP8qSp1s7uNhD
         le9KXUPEmpaporkNHxcVWj7VgRZt0PTgS0vSCA07kFBjBW6b4fWqtNwaQj2B2MDyXguS
         jg0RZHriJI8w1WNmnoTOFngLLDpUxea7MGEuy1G4pOfAOsf/IjFtsgT0NxU16vqZisVi
         ZWNsmXQbzrXae4bbvRR46543unrSBoJavo57wvk3j9psWmrmjCRAtMmwd9JzCXEMVvEC
         qoSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=OBOYKYCozDq2DOb4OigfCrdludMzZRze5cQlUI6Dvns=;
        b=V82dgI6sxF8+1ZQ7sJ3isHH3ScO7ZwcSPrNfqHUCyrBnY0RsCycQswJX3EWyGg/+Ci
         04dnVE3ufdTElLuLrI8F1aMTFN+pxp3yNfayh99cDZHIL127FRDwoxcxbML4lw5TXPJH
         RtQ+zNVCmV74ZK3BDQ6NOULCkn5qE/pMNCeb/Of2BRLskL+a7m4PWUDKCxHmKlU4cgd/
         y101Im8p6b7hTXQOe6hYTx8FwoLRfYQGGxKOnNp7SB5doMF4AJAj+RsO4g4HpugF7SbU
         VbnQsY0VePzcslwBpIkDxhMMMAojEXhS3SQqU8KeySDZdOk18aRFHmFOKzRpNCyNQ4UT
         z45g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OBOYKYCozDq2DOb4OigfCrdludMzZRze5cQlUI6Dvns=;
        b=L5+FFUxNnt3JAFOfBLRWvC5AbS2jRY3OvmKuEU6d/OExKQaKu0YL0AwvyddOfBy4N2
         N9Fb52pK83kTmRbJsg3JutRPN7eaByKqdc2UXIebZMO6P+B0bG4DhPR7pSke+6/3wz8Q
         J4FQ5Q3hTsN8KdYmFhNRXBSvsb+inaiby3YItVq/Gpfod/ax8RKjCi1Qf/L1Z3IspI1x
         RD0chdU5+IEy/ym/MVPkh4MEL+xICBy1JdaDxrHiPrFTU3ayDJLEgxxpr7sVKVnNhUSb
         MHPIc1XZlnOS9nH7owgAq+CqmKZiL12kV65DhZ73bK01Br4gSE2C+QrVe6QW7Ka25k5g
         je0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OBOYKYCozDq2DOb4OigfCrdludMzZRze5cQlUI6Dvns=;
        b=Ksvhn24dC8EzX7TgTvoUCK027O+Q1P0CXY4oWIk/gdpLlGIj7FYF7X7ZFgFtnzu9Tw
         9z8yMOrmiCc47VN+tTeXuXW1D8n6X8fWjvQ/3/sPOE5DU1/Np5d1jBluVv4S6h4F/WOh
         9Dghphuu62Xa567r3n4dwioGwV2lG2Pxjl9Sg10MckTGPCysIdjZxbELONTKeNXvSRVK
         hxUAsaFSdbf3OsNOvxpsv1HQxEEdX8B7aP3T1NPLSPdUCl/CsgbcO1JqDQDkt3P9QuQd
         pujlVr/02HhhUPpaO25pc4rgp+SRnbExyQZVwfc+C8HSUZot8ZIp2omcC1WDqSdP8LuW
         Moag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531I8eDe7+ygNgvIMXBynT9G8/yaABlYP0TPSs+QKjeZbCXR4DCr
	AwzR9UvRkzkdnFCaCtp/S5Q=
X-Google-Smtp-Source: ABdhPJwFRIfa5ZQJVaHD+PA4yuYKtHOMNE+jBxKqbhZseI8gXlj71pEY+ad20iIaYGPMTI91LxiVmw==
X-Received: by 2002:a05:6e02:219e:: with SMTP id j30mr5719478ila.196.1617867758104;
        Thu, 08 Apr 2021 00:42:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d04:: with SMTP id i4ls1029161ila.0.gmail; Thu, 08
 Apr 2021 00:42:37 -0700 (PDT)
X-Received: by 2002:a92:ce89:: with SMTP id r9mr2739092ilo.268.1617867757456;
        Thu, 08 Apr 2021 00:42:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617867757; cv=none;
        d=google.com; s=arc-20160816;
        b=TaVUJi5S5sucJmVq7REcxj6oW1kRGXmSzvD177++Hlr7BIyS/RhDLORTdba7ESl85c
         ZoqmUFbXHvcHAX3TZ92z25U80l6q3YAWmp9bnEtEV/IHLNrZqpqPZgvXg2ek7zZ8P3n/
         aQcX4CIjtDfZgV0iuOxxgDL6urML/W3G5xbXRXlJuLR3VOZ5p1Y8uxQesfJ5hEdpHQqG
         m/BbFrI5zdNRAYpf/ljeABo5E2UNw6g1X/8PMwtwwULqhV3OPoNXk4Iarei61i2c41wc
         3S26N44lSqiLCVsdFnPbloVJQVzSO7QCd7bnRkRwoMRdQNOqIYlRn+xlo0SkO1mpSDuw
         YV8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=fSzxLW2N8Uj8CL+Y04YFxPq0P/vjlHEzD3kuAYWf/fc=;
        b=KLZO8Bpwnj+x1cdQVRCHRs2t15cAuuyaZeNxoFLVKEeojECb+URhfoisQGfVexbx53
         VB2rRMZCE5zpIs/vPasXuCiIsuUtnclq+QD8UtSuEegwwOxn1re05w46EoVwGiz/k38K
         bmFB5fsgmE+wWPCueCWsVpC5UxOVakvOEQPJ2fmSAb6dwloRQfOyOsGSXkPbCc5LnY7A
         CWH8BDNWfsw7zxmkrPERwx6BcRZPT9tEjm2g9vkhhVTIHSQh9p54l4deJnzfVg4M/xaH
         0x0YaQxZKlMfgB0PNC5i1KknX1rFVBRYPiEies4mbmmgNyodOJoEGHHrK5t6Cqok8S8L
         +Q6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id x7si205221iow.2.2021.04.08.00.42.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 00:42:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: OYzejTEqdXmkvngxry27NIOaxNfHgMaMn0hnq81TkVLs43DIDTHNzs7AVOtMotIWqcTurSLOLX
 9489AIw2Nv9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="173563036"
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; 
   d="gz'50?scan'50,208,50";a="173563036"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2021 00:42:36 -0700
IronPort-SDR: giDBc1vQBGxvt+m0R6liQIZBIB2bPVLQRh9xM/2q4H0jwE+yL0hiD14tRAEGIOQY6+V1hPPe8g
 AEVscLkWvMaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; 
   d="gz'50?scan'50,208,50";a="419059907"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 08 Apr 2021 00:42:33 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUPJA-000ESZ-Lc; Thu, 08 Apr 2021 07:42:32 +0000
Date: Thu, 8 Apr 2021 15:42:16 +0800
From: kernel test robot <lkp@intel.com>
To: Hawking Zhang <Hawking.Zhang@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Dennis Li <Dennis.Li@amd.com>,
	John Clements <John.Clements@amd.com>
Subject: [agd5f:drm-next 170/204]
 drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1008:5: warning: no previous
 prototype for function 'gfx_v9_4_2_query_ras_error_count'
Message-ID: <202104081509.9VSzCVch-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://gitlab.freedesktop.org/agd5f/linux.git drm-next
head:   6504048e0b39fba1a21bca7be8bb74afa7b3937f
commit: 6e5095acd86e568a500b6e5ed61b6c33214eafd0 [170/204] drm/amdgpu: split gfx callbacks into ras and non-ras ones
config: riscv-randconfig-r005-20210407 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 56ea2e2fdd691136d5e6631fa0e447173694b82c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        git remote add agd5f https://gitlab.freedesktop.org/agd5f/linux.git
        git fetch --no-tags agd5f drm-next
        git checkout 6e5095acd86e568a500b6e5ed61b6c33214eafd0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1008:5: warning: no previous prototype for function 'gfx_v9_4_2_query_ras_error_count' [-Wmissing-prototypes]
   int gfx_v9_4_2_query_ras_error_count(struct amdgpu_device *adev,
       ^
   drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1008:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int gfx_v9_4_2_query_ras_error_count(struct amdgpu_device *adev,
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1054:6: warning: no previous prototype for function 'gfx_v9_4_2_reset_ras_error_count' [-Wmissing-prototypes]
   void gfx_v9_4_2_reset_ras_error_count(struct amdgpu_device *adev)
        ^
   drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1054:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void gfx_v9_4_2_reset_ras_error_count(struct amdgpu_device *adev)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1063:5: warning: no previous prototype for function 'gfx_v9_4_2_ras_error_inject' [-Wmissing-prototypes]
   int gfx_v9_4_2_ras_error_inject(struct amdgpu_device *adev, void *inject_if)
       ^
   drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1063:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int gfx_v9_4_2_ras_error_inject(struct amdgpu_device *adev, void *inject_if)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1133:6: warning: no previous prototype for function 'gfx_v9_4_2_query_ras_error_status' [-Wmissing-prototypes]
   void gfx_v9_4_2_query_ras_error_status(struct amdgpu_device *adev)
        ^
   drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1133:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void gfx_v9_4_2_query_ras_error_status(struct amdgpu_device *adev)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1143:6: warning: no previous prototype for function 'gfx_v9_4_2_reset_ras_error_status' [-Wmissing-prototypes]
   void gfx_v9_4_2_reset_ras_error_status(struct amdgpu_device *adev)
        ^
   drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1143:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void gfx_v9_4_2_reset_ras_error_status(struct amdgpu_device *adev)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1153:6: warning: no previous prototype for function 'gfx_v9_4_2_enable_watchdog_timer' [-Wmissing-prototypes]
   void gfx_v9_4_2_enable_watchdog_timer(struct amdgpu_device *adev)
        ^
   drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1153:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void gfx_v9_4_2_enable_watchdog_timer(struct amdgpu_device *adev)
   ^
   static 
   6 warnings generated.


vim +/gfx_v9_4_2_query_ras_error_count +1008 drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c

22616eb5c9b29f Dennis Li              2021-01-26  1007  
22616eb5c9b29f Dennis Li              2021-01-26 @1008  int gfx_v9_4_2_query_ras_error_count(struct amdgpu_device *adev,
22616eb5c9b29f Dennis Li              2021-01-26  1009  				   void *ras_error_status)
22616eb5c9b29f Dennis Li              2021-01-26  1010  {
22616eb5c9b29f Dennis Li              2021-01-26  1011  	struct ras_err_data *err_data = (struct ras_err_data *)ras_error_status;
22616eb5c9b29f Dennis Li              2021-01-26  1012  	uint32_t sec_count = 0, ded_count = 0;
22616eb5c9b29f Dennis Li              2021-01-26  1013  
22616eb5c9b29f Dennis Li              2021-01-26  1014  	if (!amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__GFX))
22616eb5c9b29f Dennis Li              2021-01-26  1015  		return -EINVAL;
22616eb5c9b29f Dennis Li              2021-01-26  1016  
22616eb5c9b29f Dennis Li              2021-01-26  1017  	err_data->ue_count = 0;
22616eb5c9b29f Dennis Li              2021-01-26  1018  	err_data->ce_count = 0;
22616eb5c9b29f Dennis Li              2021-01-26  1019  
22616eb5c9b29f Dennis Li              2021-01-26  1020  	gfx_v9_4_2_query_sram_edc_count(adev, &sec_count, &ded_count);
22616eb5c9b29f Dennis Li              2021-01-26  1021  	err_data->ce_count += sec_count;
22616eb5c9b29f Dennis Li              2021-01-26  1022  	err_data->ue_count += ded_count;
22616eb5c9b29f Dennis Li              2021-01-26  1023  
22616eb5c9b29f Dennis Li              2021-01-26  1024  	gfx_v9_4_2_query_utc_edc_count(adev, &sec_count, &ded_count);
22616eb5c9b29f Dennis Li              2021-01-26  1025  	err_data->ce_count += sec_count;
22616eb5c9b29f Dennis Li              2021-01-26  1026  	err_data->ue_count += ded_count;
22616eb5c9b29f Dennis Li              2021-01-26  1027  
22616eb5c9b29f Dennis Li              2021-01-26  1028  	return 0;
22616eb5c9b29f Dennis Li              2021-01-26  1029  }
22616eb5c9b29f Dennis Li              2021-01-26  1030  
22616eb5c9b29f Dennis Li              2021-01-26  1031  static void gfx_v9_4_2_reset_utc_err_status(struct amdgpu_device *adev)
22616eb5c9b29f Dennis Li              2021-01-26  1032  {
22616eb5c9b29f Dennis Li              2021-01-26  1033  	WREG32_SOC15(GC, 0, regUTCL2_MEM_ECC_STATUS, 0x3);
22616eb5c9b29f Dennis Li              2021-01-26  1034  	WREG32_SOC15(GC, 0, regVML2_MEM_ECC_STATUS, 0x3);
22616eb5c9b29f Dennis Li              2021-01-26  1035  	WREG32_SOC15(GC, 0, regVML2_WALKER_MEM_ECC_STATUS, 0x3);
22616eb5c9b29f Dennis Li              2021-01-26  1036  }
22616eb5c9b29f Dennis Li              2021-01-26  1037  
22616eb5c9b29f Dennis Li              2021-01-26  1038  static void gfx_v9_4_2_reset_ea_err_status(struct amdgpu_device *adev)
22616eb5c9b29f Dennis Li              2021-01-26  1039  {
22616eb5c9b29f Dennis Li              2021-01-26  1040  	uint32_t i, j;
22616eb5c9b29f Dennis Li              2021-01-26  1041  
22616eb5c9b29f Dennis Li              2021-01-26  1042  	mutex_lock(&adev->grbm_idx_mutex);
22616eb5c9b29f Dennis Li              2021-01-26  1043  	for (i = 0; i < gfx_v9_4_2_rdrsp_status_regs.se_num; i++) {
22616eb5c9b29f Dennis Li              2021-01-26  1044  		for (j = 0; j < gfx_v9_4_2_rdrsp_status_regs.instance;
22616eb5c9b29f Dennis Li              2021-01-26  1045  		     j++) {
22616eb5c9b29f Dennis Li              2021-01-26  1046  			gfx_v9_4_2_select_se_sh(adev, i, 0, j);
22616eb5c9b29f Dennis Li              2021-01-26  1047  			WREG32(SOC15_REG_ENTRY_OFFSET(gfx_v9_4_2_rdrsp_status_regs), 0x10);
22616eb5c9b29f Dennis Li              2021-01-26  1048  		}
22616eb5c9b29f Dennis Li              2021-01-26  1049  	}
22616eb5c9b29f Dennis Li              2021-01-26  1050  	gfx_v9_4_2_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
22616eb5c9b29f Dennis Li              2021-01-26  1051  	mutex_unlock(&adev->grbm_idx_mutex);
22616eb5c9b29f Dennis Li              2021-01-26  1052  }
22616eb5c9b29f Dennis Li              2021-01-26  1053  
22616eb5c9b29f Dennis Li              2021-01-26 @1054  void gfx_v9_4_2_reset_ras_error_count(struct amdgpu_device *adev)
22616eb5c9b29f Dennis Li              2021-01-26  1055  {
22616eb5c9b29f Dennis Li              2021-01-26  1056  	if (!amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__GFX))
22616eb5c9b29f Dennis Li              2021-01-26  1057  		return;
22616eb5c9b29f Dennis Li              2021-01-26  1058  
22616eb5c9b29f Dennis Li              2021-01-26  1059  	gfx_v9_4_2_query_sram_edc_count(adev, NULL, NULL);
22616eb5c9b29f Dennis Li              2021-01-26  1060  	gfx_v9_4_2_query_utc_edc_count(adev, NULL, NULL);
22616eb5c9b29f Dennis Li              2021-01-26  1061  }
22616eb5c9b29f Dennis Li              2021-01-26  1062  
22616eb5c9b29f Dennis Li              2021-01-26 @1063  int gfx_v9_4_2_ras_error_inject(struct amdgpu_device *adev, void *inject_if)
22616eb5c9b29f Dennis Li              2021-01-26  1064  {
22616eb5c9b29f Dennis Li              2021-01-26  1065  	struct ras_inject_if *info = (struct ras_inject_if *)inject_if;
22616eb5c9b29f Dennis Li              2021-01-26  1066  	int ret;
22616eb5c9b29f Dennis Li              2021-01-26  1067  	struct ta_ras_trigger_error_input block_info = { 0 };
22616eb5c9b29f Dennis Li              2021-01-26  1068  
22616eb5c9b29f Dennis Li              2021-01-26  1069  	if (!amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__GFX))
22616eb5c9b29f Dennis Li              2021-01-26  1070  		return -EINVAL;
22616eb5c9b29f Dennis Li              2021-01-26  1071  
22616eb5c9b29f Dennis Li              2021-01-26  1072  	block_info.block_id = amdgpu_ras_block_to_ta(info->head.block);
22616eb5c9b29f Dennis Li              2021-01-26  1073  	block_info.sub_block_index = info->head.sub_block_index;
22616eb5c9b29f Dennis Li              2021-01-26  1074  	block_info.inject_error_type = amdgpu_ras_error_to_ta(info->head.type);
22616eb5c9b29f Dennis Li              2021-01-26  1075  	block_info.address = info->address;
22616eb5c9b29f Dennis Li              2021-01-26  1076  	block_info.value = info->value;
22616eb5c9b29f Dennis Li              2021-01-26  1077  
22616eb5c9b29f Dennis Li              2021-01-26  1078  	mutex_lock(&adev->grbm_idx_mutex);
22616eb5c9b29f Dennis Li              2021-01-26  1079  	ret = psp_ras_trigger_error(&adev->psp, &block_info);
22616eb5c9b29f Dennis Li              2021-01-26  1080  	mutex_unlock(&adev->grbm_idx_mutex);
22616eb5c9b29f Dennis Li              2021-01-26  1081  
22616eb5c9b29f Dennis Li              2021-01-26  1082  	return ret;
22616eb5c9b29f Dennis Li              2021-01-26  1083  }
22616eb5c9b29f Dennis Li              2021-01-26  1084  
22616eb5c9b29f Dennis Li              2021-01-26  1085  static void gfx_v9_4_2_query_ea_err_status(struct amdgpu_device *adev)
22616eb5c9b29f Dennis Li              2021-01-26  1086  {
22616eb5c9b29f Dennis Li              2021-01-26  1087  	uint32_t i, j;
22616eb5c9b29f Dennis Li              2021-01-26  1088  	uint32_t reg_value;
22616eb5c9b29f Dennis Li              2021-01-26  1089  
22616eb5c9b29f Dennis Li              2021-01-26  1090  	mutex_lock(&adev->grbm_idx_mutex);
22616eb5c9b29f Dennis Li              2021-01-26  1091  
22616eb5c9b29f Dennis Li              2021-01-26  1092  	for (i = 0; i < gfx_v9_4_2_rdrsp_status_regs.se_num; i++) {
22616eb5c9b29f Dennis Li              2021-01-26  1093  		for (j = 0; j < gfx_v9_4_2_rdrsp_status_regs.instance;
22616eb5c9b29f Dennis Li              2021-01-26  1094  		     j++) {
22616eb5c9b29f Dennis Li              2021-01-26  1095  			gfx_v9_4_2_select_se_sh(adev, i, 0, j);
22616eb5c9b29f Dennis Li              2021-01-26  1096  			reg_value = RREG32(SOC15_REG_ENTRY_OFFSET(
22616eb5c9b29f Dennis Li              2021-01-26  1097  				gfx_v9_4_2_rdrsp_status_regs));
22616eb5c9b29f Dennis Li              2021-01-26  1098  			if (reg_value)
22616eb5c9b29f Dennis Li              2021-01-26  1099  				dev_warn(adev->dev, "GCEA err detected at instance: %d, status: 0x%x!\n",
22616eb5c9b29f Dennis Li              2021-01-26  1100  						j, reg_value);
761d86d37f86eb Dennis Li              2021-02-04  1101  			/* clear after read */
761d86d37f86eb Dennis Li              2021-02-04  1102  			WREG32(SOC15_REG_ENTRY_OFFSET(gfx_v9_4_2_rdrsp_status_regs), 0x10);
22616eb5c9b29f Dennis Li              2021-01-26  1103  		}
22616eb5c9b29f Dennis Li              2021-01-26  1104  	}
22616eb5c9b29f Dennis Li              2021-01-26  1105  
22616eb5c9b29f Dennis Li              2021-01-26  1106  	gfx_v9_4_2_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
22616eb5c9b29f Dennis Li              2021-01-26  1107  	mutex_unlock(&adev->grbm_idx_mutex);
22616eb5c9b29f Dennis Li              2021-01-26  1108  }
22616eb5c9b29f Dennis Li              2021-01-26  1109  
22616eb5c9b29f Dennis Li              2021-01-26  1110  static void gfx_v9_4_2_query_utc_err_status(struct amdgpu_device *adev)
22616eb5c9b29f Dennis Li              2021-01-26  1111  {
22616eb5c9b29f Dennis Li              2021-01-26  1112  	uint32_t data;
22616eb5c9b29f Dennis Li              2021-01-26  1113  
22616eb5c9b29f Dennis Li              2021-01-26  1114  	data = RREG32_SOC15(GC, 0, regUTCL2_MEM_ECC_STATUS);
761d86d37f86eb Dennis Li              2021-02-04  1115  	if (!data) {
22616eb5c9b29f Dennis Li              2021-01-26  1116  		dev_warn(adev->dev, "GFX UTCL2 Mem Ecc Status: 0x%x!\n", data);
761d86d37f86eb Dennis Li              2021-02-04  1117  		WREG32_SOC15(GC, 0, regUTCL2_MEM_ECC_STATUS, 0x3);
761d86d37f86eb Dennis Li              2021-02-04  1118  	}
22616eb5c9b29f Dennis Li              2021-01-26  1119  
22616eb5c9b29f Dennis Li              2021-01-26  1120  	data = RREG32_SOC15(GC, 0, regVML2_MEM_ECC_STATUS);
761d86d37f86eb Dennis Li              2021-02-04  1121  	if (!data) {
22616eb5c9b29f Dennis Li              2021-01-26  1122  		dev_warn(adev->dev, "GFX VML2 Mem Ecc Status: 0x%x!\n", data);
761d86d37f86eb Dennis Li              2021-02-04  1123  		WREG32_SOC15(GC, 0, regVML2_MEM_ECC_STATUS, 0x3);
761d86d37f86eb Dennis Li              2021-02-04  1124  	}
22616eb5c9b29f Dennis Li              2021-01-26  1125  
22616eb5c9b29f Dennis Li              2021-01-26  1126  	data = RREG32_SOC15(GC, 0, regVML2_WALKER_MEM_ECC_STATUS);
761d86d37f86eb Dennis Li              2021-02-04  1127  	if (!data) {
22616eb5c9b29f Dennis Li              2021-01-26  1128  		dev_warn(adev->dev, "GFX VML2 Walker Mem Ecc Status: 0x%x!\n", data);
761d86d37f86eb Dennis Li              2021-02-04  1129  		WREG32_SOC15(GC, 0, regVML2_WALKER_MEM_ECC_STATUS, 0x3);
761d86d37f86eb Dennis Li              2021-02-04  1130  	}
22616eb5c9b29f Dennis Li              2021-01-26  1131  }
22616eb5c9b29f Dennis Li              2021-01-26  1132  
22616eb5c9b29f Dennis Li              2021-01-26 @1133  void gfx_v9_4_2_query_ras_error_status(struct amdgpu_device *adev)
22616eb5c9b29f Dennis Li              2021-01-26  1134  {
22616eb5c9b29f Dennis Li              2021-01-26  1135  	if (!amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__GFX))
22616eb5c9b29f Dennis Li              2021-01-26  1136  		return;
22616eb5c9b29f Dennis Li              2021-01-26  1137  
22616eb5c9b29f Dennis Li              2021-01-26  1138  	gfx_v9_4_2_query_ea_err_status(adev);
22616eb5c9b29f Dennis Li              2021-01-26  1139  	gfx_v9_4_2_query_utc_err_status(adev);
761d86d37f86eb Dennis Li              2021-02-04  1140  	gfx_v9_4_2_query_sq_timeout_status(adev);
761d86d37f86eb Dennis Li              2021-02-04  1141  }
761d86d37f86eb Dennis Li              2021-02-04  1142  
761d86d37f86eb Dennis Li              2021-02-04 @1143  void gfx_v9_4_2_reset_ras_error_status(struct amdgpu_device *adev)
761d86d37f86eb Dennis Li              2021-02-04  1144  {
761d86d37f86eb Dennis Li              2021-02-04  1145  	if (!amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__GFX))
761d86d37f86eb Dennis Li              2021-02-04  1146  		return;
761d86d37f86eb Dennis Li              2021-02-04  1147  
761d86d37f86eb Dennis Li              2021-02-04  1148  	gfx_v9_4_2_reset_utc_err_status(adev);
761d86d37f86eb Dennis Li              2021-02-04  1149  	gfx_v9_4_2_reset_ea_err_status(adev);
761d86d37f86eb Dennis Li              2021-02-04  1150  	gfx_v9_4_2_reset_sq_timeout_status(adev);
22616eb5c9b29f Dennis Li              2021-01-26  1151  }
88f8575bca5fc7 Dennis Li              2021-03-05  1152  
88f8575bca5fc7 Dennis Li              2021-03-05 @1153  void gfx_v9_4_2_enable_watchdog_timer(struct amdgpu_device *adev)
88f8575bca5fc7 Dennis Li              2021-03-05  1154  {
88f8575bca5fc7 Dennis Li              2021-03-05  1155  	uint32_t i;
88f8575bca5fc7 Dennis Li              2021-03-05  1156  	uint32_t data;
88f8575bca5fc7 Dennis Li              2021-03-05  1157  
88f8575bca5fc7 Dennis Li              2021-03-05  1158  	data = REG_SET_FIELD(0, SQ_TIMEOUT_CONFIG, TIMEOUT_FATAL_DISABLE,
88f8575bca5fc7 Dennis Li              2021-03-05  1159  			     amdgpu_watchdog_timer.timeout_fatal_disable ? 1 :
88f8575bca5fc7 Dennis Li              2021-03-05  1160  									   0);
4464820dc7edd2 Harish Kasiviswanathan 2021-02-23  1161  
4464820dc7edd2 Harish Kasiviswanathan 2021-02-23  1162  	if (amdgpu_watchdog_timer.timeout_fatal_disable &&
4464820dc7edd2 Harish Kasiviswanathan 2021-02-23  1163  	    (amdgpu_watchdog_timer.period < 1 ||
4464820dc7edd2 Harish Kasiviswanathan 2021-02-23  1164  	     amdgpu_watchdog_timer.period > 0x23)) {
4464820dc7edd2 Harish Kasiviswanathan 2021-02-23  1165  		dev_warn(adev->dev, "Watchdog period range is 1 to 0x23\n");
4464820dc7edd2 Harish Kasiviswanathan 2021-02-23  1166  		amdgpu_watchdog_timer.period = 0x23;
4464820dc7edd2 Harish Kasiviswanathan 2021-02-23  1167  	}
88f8575bca5fc7 Dennis Li              2021-03-05  1168  	data = REG_SET_FIELD(data, SQ_TIMEOUT_CONFIG, PERIOD_SEL,
88f8575bca5fc7 Dennis Li              2021-03-05  1169  			     amdgpu_watchdog_timer.period);
88f8575bca5fc7 Dennis Li              2021-03-05  1170  
88f8575bca5fc7 Dennis Li              2021-03-05  1171  	mutex_lock(&adev->grbm_idx_mutex);
88f8575bca5fc7 Dennis Li              2021-03-05  1172  	for (i = 0; i < adev->gfx.config.max_shader_engines; i++) {
88f8575bca5fc7 Dennis Li              2021-03-05  1173  		gfx_v9_4_2_select_se_sh(adev, i, 0xffffffff, 0xffffffff);
88f8575bca5fc7 Dennis Li              2021-03-05  1174  		WREG32_SOC15(GC, 0, regSQ_TIMEOUT_CONFIG, data);
88f8575bca5fc7 Dennis Li              2021-03-05  1175  	}
88f8575bca5fc7 Dennis Li              2021-03-05  1176  	gfx_v9_4_2_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
88f8575bca5fc7 Dennis Li              2021-03-05  1177  	mutex_unlock(&adev->grbm_idx_mutex);
88f8575bca5fc7 Dennis Li              2021-03-05  1178  }
88f8575bca5fc7 Dennis Li              2021-03-05  1179  

:::::: The code at line 1008 was first introduced by commit
:::::: 22616eb5c9b29fca2361d5bd8339efafddee7809 drm/amdgpu: add ras support for gfx of aldebaran

:::::: TO: Dennis Li <Dennis.Li@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104081509.9VSzCVch-lkp%40intel.com.

--qMm9M+Fa2AknHoGS
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
/7hkfHYCAA==

--qMm9M+Fa2AknHoGS--
