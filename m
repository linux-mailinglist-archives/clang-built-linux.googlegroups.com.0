Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLHXXSBQMGQETJPQVCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DD0358B3D
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 19:21:52 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id k7sf518039vka.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 10:21:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617902510; cv=pass;
        d=google.com; s=arc-20160816;
        b=TZCVeyrM3HEEDRYQRo5Vdr5Wgmh0o6eObHZHxE5cbqsXkQjQ9EuDUsEQfLtn/EI/ex
         GyjcmnG0AE9HxoyRVMwi10OQiMnDeQq0YJioL0g1Hz6bug8IYCRvTyvnfmuReqPsW5Ah
         4ejs/HFHJHuYTHLk9IZ0PcXb0iEldi9S8ocn1jMsKahPAxUEpahJJCygeghUEVLnMw++
         9L1nlViwhF8HW4TqpVaSIjNA5Ytv5I0D4xKM9kZpJ2/JUzdvJHd17HFhfWT2IvPxJUdm
         Izh8YcBcM9zszC942fyHQrd4W8VWFdtSlrXekI8MfjuQxNdxQgvvKrjEyywWDG2i+QFo
         WcVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=AxoKXFtOluGgJm/CUSsng+qPfeEWxcpKbErkC+3Jnks=;
        b=VPiDbXBMcGf70iYHsfggsgROtw54/BdQRhHPKPu6Ge4qCafoxePnINtTC3k8x+lSvE
         W99KsZO5RbK/LYv2k8kkygPqCrnNuT7+P2yc6R6mvkHktr2mrpmtTLE+dbIbMC4mz+OH
         G6odjdt7McRe1e/Aw7Pg2iNZ30yj4bzAgsI/UuD+BwPgK/hJinG2+2UXkZFxrGlmkMrV
         xhwBGJWLo86bcv3MSMgBiEaNWQtziFduQl7mYrhTjyLSZA7syPYY+qWn34qngY6fN3/0
         qCVa1tTq+mIEp0eLAbb7/5xAo5r31ZAEV0apMjpKXZYRCNRjpsKxG6IBcPUbU1yi0At0
         HPew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AxoKXFtOluGgJm/CUSsng+qPfeEWxcpKbErkC+3Jnks=;
        b=EuNndIgaRMsDym2qGRlNOYEFjmYe6BJhTRP3yuorrkoEGGpDOv06RM1qJDWVu2y5Yu
         evD4e6fhrHP/mImCrOMKyJPcRTFxnrPPVR6JrlnriN79HXN9JyY2PPKQEK/jcu4nkYAO
         P3WNmo29imAsV9Jcydgy5kK1Bzos1g57AUm3g4/QUP2pXl44luJ7VOV71YtdbYz4Z0+k
         MGJ8nZlZo4qJg834b1mNOQfjIqM2jN1RfuXY35wtM6iYXy9Xmh3yQC20DphvHLWXUPsz
         QvZsjfNGly8P2tBrKFNiwtljDZMXSASmrszyoKcrc3O0i6XR/YaY89XZ4w2+IWAvqKwr
         iQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AxoKXFtOluGgJm/CUSsng+qPfeEWxcpKbErkC+3Jnks=;
        b=Ilot2+kyu5P7hpIqF5sEmuZmwi1omuxKZPZITbK/TDPbxdkwkBXkZQ4BM47glmXDEB
         edtxYfmn99PEeCbxOHzA+BLnLmJhIbq+gRK6Hdr13Y9AqTSu13ImYrF3p+0D+k72c6Ly
         Tz0o3LPwo4er2RPEaHSN4b+PQO0NwGSnZm92N0cunO3JX2dNyD/nMg1MKT5JMwVvyLnI
         LVMzjDo1ZmEtkr2ghtoNiz0vJY5j4zN0P1OfseRmIkQrQ1MMOu3BZhq9jwYcyn4QWlAm
         hvZLshCzAyrUQpxaaF5gENWdLcf2SG5/JOlw8Yf2uOH72wbfPJum9nBwIXujmVsSF6ii
         XgqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305TopEM7W6ETrWCCh6DeA8LI9UCnD7dvCZapJ9qeCBy6KPiazs
	j1uz+k6fY9nJlo1CvcnraK4=
X-Google-Smtp-Source: ABdhPJzuj9ST5G71szt70uiowyg+vX19+W/wvJT7g1AUdpn33iwX95Sa16NQMI3VvjDVNEbIGPtx/g==
X-Received: by 2002:a05:6102:3005:: with SMTP id s5mr7667913vsa.23.1617902508847;
        Thu, 08 Apr 2021 10:21:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:94c6:: with SMTP id w189ls420540vkd.0.gmail; Thu, 08 Apr
 2021 10:21:46 -0700 (PDT)
X-Received: by 2002:a1f:9695:: with SMTP id y143mr7248644vkd.7.1617902506268;
        Thu, 08 Apr 2021 10:21:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617902506; cv=none;
        d=google.com; s=arc-20160816;
        b=jQITSnooxIrVbKDbelpETJJC1GW1ncviS+MA6lZ+bZ/ytw4UT6RGumvTg3xevUeA8H
         BxCk8zpWeWu2h2PSviMTTqdAdtUDzHQDspEUriJcXzYT1rDxYIb5WddcWAeZ9Q+tMTvQ
         HNbkQr7p0EXtkKh7OyUCkJglqTI20PDGy3UKF6RDDlgsYz3//QTlsv5RMWXZtRZ/d86a
         oAEmrTm93cklyDtJ1XanMoUHHx6S/EWPMyNRK6wGHI7nil6opEgwsESkPJPd5oww0+Ru
         4gQvDvgpf0XJ0RJtXORgRA9DJxPKUXdCgjWCWc8DPoUdPXCDseALVIIlF6otcH+DCYvG
         ITUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=ZbpmoxUDfi1j5VrY0M0LX3BzRTiaz68czwRYZaWV2tw=;
        b=REf84m/+9UjfYW42PMEqiIF/Tehfg22mniA76dXuWz+Jwb3rjZVfT2/whTcavYXb32
         tKXC+ckk86aQwut3hmanKcG0lpH+Q5wSjC6IaWq7W9snVUcGOeQSoHRq7CLn7bFaM0IC
         SUEK5xnyJdksD2Lp5yW/xLPzmz/xgF8/mJY5McT8zxcN+/5WrItxtSic/rB/ULHUPyvw
         loVTSzzPeOT+f9FYTiFeFaAJVuui7HUVqntILNxJDb08asRLx9sQ0MGl8rMBGgwcyg+m
         pXundsKOJX3o5h6GaiOF4xWfLw3O/pOYzcm9xcBxYdz0ii/EfF5euMDZ/+CsvdTVyHEm
         d/YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id u142si537320vkb.3.2021.04.08.10.21.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 10:21:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: KpxxWf+7jwe5DiITk1+2eusyVvLnBu7GkoGhGC0wPEu2NXtEL1RFUwo+nVVUKmOztJ+J0rNjKF
 S9qopjR2/Grg==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="173069244"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; 
   d="gz'50?scan'50,208,50";a="173069244"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2021 10:21:44 -0700
IronPort-SDR: XfI6VHXrJb/pw7ZBqQ2/fo6/caFLN6PL4pojOZSfWjSLtIZNdN/6s9+1dBj2xXg/Pj/eoCGZHs
 csLY6QZNrKYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; 
   d="gz'50?scan'50,208,50";a="519945108"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2021 10:21:42 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUYLd-000FOL-HV; Thu, 08 Apr 2021 17:21:41 +0000
Date: Fri, 9 Apr 2021 01:21:07 +0800
From: kernel test robot <lkp@intel.com>
To: Hawking Zhang <Hawking.Zhang@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Alex Deucher <alexander.deucher@amd.com>,
	Dennis Li <Dennis.Li@amd.com>,
	John Clements <John.Clements@amd.com>
Subject: [linux-next:master 10742/11059]
 drivers/gpu/drm/amd/amdgpu/gfx_v9_4_2.c:1008:5: warning: no previous
 prototype for function 'gfx_v9_4_2_query_ras_error_count'
Message-ID: <202104090100.pLUTRe96-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ReaqsoxgOBHFXBhH"
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


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Hawking,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   6145d80cfc62e3ed8f16ff584d6287e6d88b82b9
commit: 6e5095acd86e568a500b6e5ed61b6c33214eafd0 [10742/11059] drm/amdgpu: split gfx callbacks into ras and non-ras ones
config: x86_64-randconfig-a014-20210408 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 56ea2e2fdd691136d5e6631fa0e447173694b82c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=6e5095acd86e568a500b6e5ed61b6c33214eafd0
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 6e5095acd86e568a500b6e5ed61b6c33214eafd0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104090100.pLUTRe96-lkp%40intel.com.

--ReaqsoxgOBHFXBhH
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ReaqsoxgOBHFXBhH--
