Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOE6ZKCAMGQE6GQFP7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E5373B2C
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 14:27:37 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id g2-20020a37b6020000b02902ea40e87ecbsf969135qkf.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 05:27:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620217656; cv=pass;
        d=google.com; s=arc-20160816;
        b=hcj7RICyRRaLejmjwq5ogDiNFbgLElxd7UkSWZZNRw6gmtHp41wbX57qB45+eRcpdW
         G11EIie4yzqrpMxxD455GBBvS3NK1/trLJhZhV1mhIoakM0RKPeD9Vwf7g79LWxPvRZs
         og1BmyItXbWye6XLcO3wL1GnRUoyryRm8F3ChjagQak3kJRRb3vjGqdXcgNSOlLKwyIo
         BLVplhUmoWZVoiBgjc5forNHYSLjn86lHHbnhCAgPOu0Fm0qxD4JlWq9MrXbed1xTk3s
         QVwVE2MpSKNTtsbTmAb3Kj5Tlqfxr5eyapmKNy+V/Viz0YMEVmfqK7kuySk2mRDyX/jS
         Ca0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=0uJ5kfwQId3hR/N/+KFSexrguWtPFPBbr1mrCAC46e0=;
        b=aYd12Cgtj+ctfpT/JJj+aS+Pygug8EI/Ke1bcgi+fpgWQu4veBL0cp4YPIO83zMnm8
         xknIVCCVUhLQRbwgE1ecgH4lBx+YJ1nODK4Fc9byaOsmKxGrApGhcuAdMWbjq6ErXEn8
         CXr+JpBPOh496bcfyWuM42htQoj/BBWHVYdzTxkNwMQK+rikNlUuSJ+FjM2u6luVdUIA
         /DnI1OKElJlo+kcvzopVfUi3ucg5VD6+ITYuesNijAOC4wqdp9RzPvAt+sMOalei9vt9
         5mAu2NlIWwAJ48gGIEBFifd7ASnMlLnCqDhh8wLNVOGktpyna/xJtMwN4Aq210J18HHs
         0ihw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0uJ5kfwQId3hR/N/+KFSexrguWtPFPBbr1mrCAC46e0=;
        b=iCxR8JAK7/5RhYZ6jfhyQZRr0zD6nRR8IzpLQhj2TFKyYXtcaLUE7vIYOZMHO3wyta
         yGkLoQoi1Ews9HvQ//ZR1Xu8Dlhn2WBg8MU3EanbGIqZqp6Dw5q3vn09f0qY32Pz5TQG
         8Yys/+qtw6ejzGNLspA6uOZcxqkwa+PN+D0biUvFeCzdhRIciakc63IiNz/JUX/kzN1K
         23Od1WrFljol1iSuIM5XGmTXDS049cLXoOevKuR1+QxjhRKIQmPFIsd0udAwIw+9h67B
         2+VXpfDNhJ4kj8Tng897/2FEHQTouO/RiOlNjV5RqGGcbBMz6LZO4ubV8TirpeapJUN5
         btww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0uJ5kfwQId3hR/N/+KFSexrguWtPFPBbr1mrCAC46e0=;
        b=RWHbFO/zwaSG9mCNwi6Dj2ps8nyTQjk43gArn4L805ZZ5YmsIxbKikShqOxQFphQRJ
         MjtpsHRBMGUBaesGX2GsIBzmX2pgiOeGf9obSZeHhEG9zWkWqvwz3fUtxIrrGys7ne43
         fc7jhVH2xx05iq24GnT3o5f14vPp+lpSSgAzAfY4Yb6upGIO9ctxXrS8pJe3krQJyr2q
         9gXmtVhHs9AqCzcigd6KMjceUKBMcvolsM0ifVunhQ/SdPmhswIxtIrQOQvRFEAxInL9
         wnOjl5+dsA61RZdEuAGG4Gyqsu67o6YnXm1ToI4mji7M7S1xBV3QMBHnTVWIzlvaLfyX
         9IJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NBMxceOKeo/UETOgmANu5uVeefybU4RkBk5hBXne4ehB5AqDy
	hrFEMnoLbVdWag7GojLGc60=
X-Google-Smtp-Source: ABdhPJx3GnnZyQ36GwJBTMns5MM7LQqlgKtNkCdfr8H1FFZ27ok4zqeSrE0t54Wp/IrLynlxODVD6A==
X-Received: by 2002:a37:8703:: with SMTP id j3mr29248317qkd.308.1620217656148;
        Wed, 05 May 2021 05:27:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3d51:: with SMTP id u17ls9001357qtf.10.gmail; Wed, 05
 May 2021 05:27:35 -0700 (PDT)
X-Received: by 2002:a05:622a:1110:: with SMTP id e16mr24361780qty.210.1620217655596;
        Wed, 05 May 2021 05:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620217655; cv=none;
        d=google.com; s=arc-20160816;
        b=Ev9m9Y3UKWyChi01eh3VVvCz21Xkoc//vmbEhCiwmGveZ72VjRJtlHYASkRpS5ycIl
         irVcnBHg6ZsM9XTJlbe8cE5X3AtNcvmhtpKsA4APqtZlE16DzBgm3lQ2FSPjROLmW+gB
         VATeBs/VrxmKHmFF+9q+l+gsRKwr2zfOzJMJ5z9tUlfUS/fUBYrcWihMrf1Zre7tleej
         aPcb1nQ3JJ8asoiVAIIvnl9XX0WzwmExrdaBLMtbNCi2BSyDGtTHTgGcOjVnvui9uu50
         BhPtmE9f8A2tFBXFGC20uZlqNtf5SIClp6v6kCLjSZ5j0ho1loQIz5sp96/7kIyOsTu/
         49iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Cs+TmFCPC/IC0QrVTmhE80eGIHRyGpaCFwOAk8JHAoY=;
        b=L2JTc/XtT/447pnVHCsiDaqchhjAP6i5GN/95+CWly6DEhbXx+m6XfSq2sJid/I9Zs
         u0u5mBf7gWDHUnACvzrRv1pHx1RizxVJoB4RlBg26NYLZNz0IJjPdNs6lFbf/V/FHQEo
         5l1sTA3/7uVMu5eblUU2CDojOSAtQko3KRed5IP568VG6jb5qyjsTJTpGRjYC8M52U9l
         gu2cA1/wTQ9mV8Xpa+VB9l+aiLVNPWpjnfYBH/if5tqFIoSvOyeFj15VrBBxgpqnLy2x
         kDZODcR2HmChHmbS3QvfS+hY6uRZ1xNyYEtMqVqowVOPaWpVGKNuggHO5U+0LFZBN3CH
         NUsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id k1si855820qtg.2.2021.05.05.05.27.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 05:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: c8bYaA+ntB2O8ucfQAmtOOhfGAmcmyN6GuyeRJaF/ffU2r9ExeTH2m6THqeBFTdMrm/HmF/MhQ
 1txiJwbJ94Ag==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="196160455"
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; 
   d="gz'50?scan'50,208,50";a="196160455"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2021 05:27:33 -0700
IronPort-SDR: U1w8N5kZwmIgVkAuAyiK++q3v4XaVQ1E6ftzOOcBYruuInEhTmr6vYL67T6ESPsWxDNvln+YSw
 tiRl98D9CTRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; 
   d="gz'50?scan'50,208,50";a="406532839"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 05 May 2021 05:27:30 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1leGck-0009yz-2z; Wed, 05 May 2021 12:27:30 +0000
Date: Wed, 5 May 2021 20:26:36 +0800
From: kernel test robot <lkp@intel.com>
To: Nikola Cornij <nikola.cornij@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Alex Deucher <alexander.deucher@amd.com>,
	Aurabindo Pillai <aurabindo.pillai@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8466:13:
 warning: stack frame size of 2112 bytes in function
 'amdgpu_dm_atomic_commit_tail'
Message-ID: <202105052028.V7hP755T-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UugvWAfsgieZRqgk"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--UugvWAfsgieZRqgk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nikola,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   d665ea6ea86c785760ee4bad4543dab3267ad074
commit: a85ba00538cd4bb0655aaf57fe3ebf8cc21f4fea drm/amdgpu/display: re-enable freesync video patches
date:   6 weeks ago
config: powerpc-randconfig-r016-20210505 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a85ba00538cd4bb0655aaf57fe3ebf8cc21f4fea
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout a85ba00538cd4bb0655aaf57fe3ebf8cc21f4fea
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8466:13: warning: stack frame size of 2112 bytes in function 'amdgpu_dm_atomic_commit_tail' [-Wframe-larger-than=]
   static void amdgpu_dm_atomic_commit_tail(struct drm_atomic_state *state)
               ^
   drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8054:13: warning: stack frame size of 2352 bytes in function 'amdgpu_dm_commit_planes' [-Wframe-larger-than=]
   static void amdgpu_dm_commit_planes(struct drm_atomic_state *state,
               ^
   2 warnings generated.


vim +/amdgpu_dm_atomic_commit_tail +8466 drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c

e7b07ceef2a650 Harry Wentland      2017-08-10  8457  
b8592b48450b99 Leo Li              2018-09-14  8458  /**
b8592b48450b99 Leo Li              2018-09-14  8459   * amdgpu_dm_atomic_commit_tail() - AMDgpu DM's commit tail implementation.
b8592b48450b99 Leo Li              2018-09-14  8460   * @state: The atomic state to commit
b8592b48450b99 Leo Li              2018-09-14  8461   *
b8592b48450b99 Leo Li              2018-09-14  8462   * This will tell DC to commit the constructed DC state from atomic_check,
b8592b48450b99 Leo Li              2018-09-14  8463   * programming the hardware. Any failures here implies a hardware failure, since
b8592b48450b99 Leo Li              2018-09-14  8464   * atomic check should have filtered anything non-kosher.
b8592b48450b99 Leo Li              2018-09-14  8465   */
7578ecda14d521 Alex Deucher        2017-10-10 @8466  static void amdgpu_dm_atomic_commit_tail(struct drm_atomic_state *state)
e7b07ceef2a650 Harry Wentland      2017-08-10  8467  {
e7b07ceef2a650 Harry Wentland      2017-08-10  8468  	struct drm_device *dev = state->dev;
1348969ab68cb8 Luben Tuikov        2020-08-24  8469  	struct amdgpu_device *adev = drm_to_adev(dev);
e7b07ceef2a650 Harry Wentland      2017-08-10  8470  	struct amdgpu_display_manager *dm = &adev->dm;
e7b07ceef2a650 Harry Wentland      2017-08-10  8471  	struct dm_atomic_state *dm_state;
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8472  	struct dc_state *dc_state = NULL, *dc_state_temp = NULL;
e7b07ceef2a650 Harry Wentland      2017-08-10  8473  	uint32_t i, j;
5cc6dcbd45a60b Leo (Sunpeng  Li    2017-10-12  8474) 	struct drm_crtc *crtc;
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8475) 	struct drm_crtc_state *old_crtc_state, *new_crtc_state;
e7b07ceef2a650 Harry Wentland      2017-08-10  8476  	unsigned long flags;
e7b07ceef2a650 Harry Wentland      2017-08-10  8477  	bool wait_for_vblank = true;
e7b07ceef2a650 Harry Wentland      2017-08-10  8478  	struct drm_connector *connector;
c2cea7063b85fc Leo (Sunpeng  Li    2017-10-12  8479) 	struct drm_connector_state *old_con_state, *new_con_state;
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8480) 	struct dm_crtc_state *dm_old_crtc_state, *dm_new_crtc_state;
fe2a19652918a5 Lyude Paul          2018-06-21  8481  	int crtc_disable_count = 0;
6ee90e88b97674 hersen wu           2020-07-08  8482  	bool mode_set_reset_required = false;
e7b07ceef2a650 Harry Wentland      2017-08-10  8483  
e8a982355f9669 Rodrigo Siqueira    2020-09-04  8484  	trace_amdgpu_dm_atomic_commit_tail_begin(state);
e8a982355f9669 Rodrigo Siqueira    2020-09-04  8485  
e7b07ceef2a650 Harry Wentland      2017-08-10  8486  	drm_atomic_helper_update_legacy_modeset_state(dev, state);
e7b07ceef2a650 Harry Wentland      2017-08-10  8487  
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8488  	dm_state = dm_atomic_get_new_state(state);
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8489  	if (dm_state && dm_state->context) {
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8490  		dc_state = dm_state->context;
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8491  	} else {
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8492  		/* No state changes, retain current state. */
813d20dccf93f8 Aidan Wood          2019-02-22  8493  		dc_state_temp = dc_create_state(dm->dc);
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8494  		ASSERT(dc_state_temp);
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8495  		dc_state = dc_state_temp;
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8496  		dc_resource_state_copy_construct_current(dm->dc, dc_state);
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8497  	}
e7b07ceef2a650 Harry Wentland      2017-08-10  8498  
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8499  	for_each_oldnew_crtc_in_state (state, crtc, old_crtc_state,
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8500  				       new_crtc_state, i) {
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8501  		struct amdgpu_crtc *acrtc = to_amdgpu_crtc(crtc);
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8502  
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8503  		dm_old_crtc_state = to_dm_crtc_state(old_crtc_state);
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8504  
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8505  		if (old_crtc_state->active &&
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8506  		    (!new_crtc_state->active ||
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8507  		     drm_atomic_crtc_needs_modeset(new_crtc_state))) {
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8508  			manage_dm_interrupts(adev, acrtc, false);
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8509  			dc_stream_release(dm_old_crtc_state->stream);
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8510  		}
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8511  	}
6d90a208cfff94 Aurabindo Pillai    2020-09-11  8512  
8976f73b676eb9 Rodrigo Siqueira    2020-11-17  8513  	drm_atomic_helper_calc_timestamping_constants(state);
8976f73b676eb9 Rodrigo Siqueira    2020-11-17  8514  
e7b07ceef2a650 Harry Wentland      2017-08-10  8515  	/* update changed items */
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8516) 	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
e7b07ceef2a650 Harry Wentland      2017-08-10  8517  		struct amdgpu_crtc *acrtc = to_amdgpu_crtc(crtc);
b830ebc910f641 Harry Wentland      2017-07-26  8518  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8519) 		dm_new_crtc_state = to_dm_crtc_state(new_crtc_state);
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8520) 		dm_old_crtc_state = to_dm_crtc_state(old_crtc_state);
e7b07ceef2a650 Harry Wentland      2017-08-10  8521  
f1ad2f5efd29dc Harry Wentland      2017-09-12  8522  		DRM_DEBUG_DRIVER(
e7b07ceef2a650 Harry Wentland      2017-08-10  8523  			"amdgpu_crtc id:%d crtc_state_flags: enable:%d, active:%d, "
e7b07ceef2a650 Harry Wentland      2017-08-10  8524  			"planes_changed:%d, mode_changed:%d,active_changed:%d,"
e7b07ceef2a650 Harry Wentland      2017-08-10  8525  			"connectors_changed:%d\n",
e7b07ceef2a650 Harry Wentland      2017-08-10  8526  			acrtc->crtc_id,
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8527) 			new_crtc_state->enable,
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8528) 			new_crtc_state->active,
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8529) 			new_crtc_state->planes_changed,
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8530) 			new_crtc_state->mode_changed,
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8531) 			new_crtc_state->active_changed,
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8532) 			new_crtc_state->connectors_changed);
e7b07ceef2a650 Harry Wentland      2017-08-10  8533  
5c68c65295de0b Victor Lu           2020-10-23  8534  		/* Disable cursor if disabling crtc */
5c68c65295de0b Victor Lu           2020-10-23  8535  		if (old_crtc_state->active && !new_crtc_state->active) {
5c68c65295de0b Victor Lu           2020-10-23  8536  			struct dc_cursor_position position;
5c68c65295de0b Victor Lu           2020-10-23  8537  
5c68c65295de0b Victor Lu           2020-10-23  8538  			memset(&position, 0, sizeof(position));
5c68c65295de0b Victor Lu           2020-10-23  8539  			mutex_lock(&dm->dc_lock);
5c68c65295de0b Victor Lu           2020-10-23  8540  			dc_stream_set_cursor_position(dm_old_crtc_state->stream, &position);
5c68c65295de0b Victor Lu           2020-10-23  8541  			mutex_unlock(&dm->dc_lock);
5c68c65295de0b Victor Lu           2020-10-23  8542  		}
5c68c65295de0b Victor Lu           2020-10-23  8543  
27b3f4fc91e1df Leo (Sunpeng  Li    2017-11-10  8544) 		/* Copy all transient state flags into dc state */
27b3f4fc91e1df Leo (Sunpeng  Li    2017-11-10  8545) 		if (dm_new_crtc_state->stream) {
27b3f4fc91e1df Leo (Sunpeng  Li    2017-11-10  8546) 			amdgpu_dm_crtc_copy_transient_flags(&dm_new_crtc_state->base,
27b3f4fc91e1df Leo (Sunpeng  Li    2017-11-10  8547) 							    dm_new_crtc_state->stream);
27b3f4fc91e1df Leo (Sunpeng  Li    2017-11-10  8548) 		}
27b3f4fc91e1df Leo (Sunpeng  Li    2017-11-10  8549) 
e7b07ceef2a650 Harry Wentland      2017-08-10  8550  		/* handles headless hotplug case, updating new_state and
e7b07ceef2a650 Harry Wentland      2017-08-10  8551  		 * aconnector as needed
e7b07ceef2a650 Harry Wentland      2017-08-10  8552  		 */
e7b07ceef2a650 Harry Wentland      2017-08-10  8553  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8554) 		if (modeset_required(new_crtc_state, dm_new_crtc_state->stream, dm_old_crtc_state->stream)) {
e7b07ceef2a650 Harry Wentland      2017-08-10  8555  
f1ad2f5efd29dc Harry Wentland      2017-09-12  8556  			DRM_DEBUG_DRIVER("Atomic commit: SET crtc id %d: [%p]\n", acrtc->crtc_id, acrtc);
e7b07ceef2a650 Harry Wentland      2017-08-10  8557  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8558) 			if (!dm_new_crtc_state->stream) {
e7b07ceef2a650 Harry Wentland      2017-08-10  8559  				/*
e7b07ceef2a650 Harry Wentland      2017-08-10  8560  				 * this could happen because of issues with
e7b07ceef2a650 Harry Wentland      2017-08-10  8561  				 * userspace notifications delivery.
e7b07ceef2a650 Harry Wentland      2017-08-10  8562  				 * In this case userspace tries to set mode on
1f6010a96273c3 David Francis       2018-08-15  8563  				 * display which is disconnected in fact.
1f6010a96273c3 David Francis       2018-08-15  8564  				 * dc_sink is NULL in this case on aconnector.
e7b07ceef2a650 Harry Wentland      2017-08-10  8565  				 * We expect reset mode will come soon.
e7b07ceef2a650 Harry Wentland      2017-08-10  8566  				 *
e7b07ceef2a650 Harry Wentland      2017-08-10  8567  				 * This can also happen when unplug is done
e7b07ceef2a650 Harry Wentland      2017-08-10  8568  				 * during resume sequence ended
e7b07ceef2a650 Harry Wentland      2017-08-10  8569  				 *
e7b07ceef2a650 Harry Wentland      2017-08-10  8570  				 * In this case, we want to pretend we still
e7b07ceef2a650 Harry Wentland      2017-08-10  8571  				 * have a sink to keep the pipe running so that
e7b07ceef2a650 Harry Wentland      2017-08-10  8572  				 * hw state is consistent with the sw state
e7b07ceef2a650 Harry Wentland      2017-08-10  8573  				 */
f1ad2f5efd29dc Harry Wentland      2017-09-12  8574  				DRM_DEBUG_DRIVER("%s: Failed to create new stream for crtc %d\n",
e7b07ceef2a650 Harry Wentland      2017-08-10  8575  						__func__, acrtc->base.base.id);
e7b07ceef2a650 Harry Wentland      2017-08-10  8576  				continue;
e7b07ceef2a650 Harry Wentland      2017-08-10  8577  			}
e7b07ceef2a650 Harry Wentland      2017-08-10  8578  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8579) 			if (dm_old_crtc_state->stream)
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8580) 				remove_stream(adev, acrtc, dm_old_crtc_state->stream);
e7b07ceef2a650 Harry Wentland      2017-08-10  8581  
97028037a38ae4 Lyude Paul          2018-06-04  8582  			pm_runtime_get_noresume(dev->dev);
97028037a38ae4 Lyude Paul          2018-06-04  8583  
e7b07ceef2a650 Harry Wentland      2017-08-10  8584  			acrtc->enabled = true;
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8585) 			acrtc->hw_mode = new_crtc_state->mode;
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8586) 			crtc->hwmode = new_crtc_state->mode;
6ee90e88b97674 hersen wu           2020-07-08  8587  			mode_set_reset_required = true;
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8588) 		} else if (modereset_required(new_crtc_state)) {
f1ad2f5efd29dc Harry Wentland      2017-09-12  8589  			DRM_DEBUG_DRIVER("Atomic commit: RESET. crtc id %d:[%p]\n", acrtc->crtc_id, acrtc);
e7b07ceef2a650 Harry Wentland      2017-08-10  8590  			/* i.e. reset mode */
6ee90e88b97674 hersen wu           2020-07-08  8591  			if (dm_old_crtc_state->stream)
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8592) 				remove_stream(adev, acrtc, dm_old_crtc_state->stream);
a85ba00538cd4b Nikola Cornij       2021-03-15  8593  
6ee90e88b97674 hersen wu           2020-07-08  8594  			mode_set_reset_required = true;
8c322309e48e9f Roman Li            2019-09-20  8595  		}
e7b07ceef2a650 Harry Wentland      2017-08-10  8596  	} /* for_each_crtc_in_state() */
e7b07ceef2a650 Harry Wentland      2017-08-10  8597  
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8598  	if (dc_state) {
6ee90e88b97674 hersen wu           2020-07-08  8599  		/* if there mode set or reset, disable eDP PSR */
6ee90e88b97674 hersen wu           2020-07-08  8600  		if (mode_set_reset_required)
6ee90e88b97674 hersen wu           2020-07-08  8601  			amdgpu_dm_psr_disable_all(dm);
6ee90e88b97674 hersen wu           2020-07-08  8602  
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8603  		dm_enable_per_frame_crtc_master_sync(dc_state);
674e78acae0dfb Nicholas Kazlauskas 2018-12-05  8604  		mutex_lock(&dm->dc_lock);
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8605  		WARN_ON(!dc_commit_state(dm->dc, dc_state));
674e78acae0dfb Nicholas Kazlauskas 2018-12-05  8606  		mutex_unlock(&dm->dc_lock);
fa2123dbccdc88 Mikita Lipski       2017-10-17  8607  	}
e7b07ceef2a650 Harry Wentland      2017-08-10  8608  
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8609) 	for_each_new_crtc_in_state(state, crtc, new_crtc_state, i) {
e7b07ceef2a650 Harry Wentland      2017-08-10  8610  		struct amdgpu_crtc *acrtc = to_amdgpu_crtc(crtc);
b830ebc910f641 Harry Wentland      2017-07-26  8611  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8612) 		dm_new_crtc_state = to_dm_crtc_state(new_crtc_state);
e7b07ceef2a650 Harry Wentland      2017-08-10  8613  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8614) 		if (dm_new_crtc_state->stream != NULL) {
e7b07ceef2a650 Harry Wentland      2017-08-10  8615  			const struct dc_stream_status *status =
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8616) 					dc_stream_get_status(dm_new_crtc_state->stream);
e7b07ceef2a650 Harry Wentland      2017-08-10  8617  
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8618  			if (!status)
09f609c34fc8b9 Leo Li              2018-11-27  8619  				status = dc_stream_get_status_from_state(dc_state,
eb3dc8978596a0 Nicholas Kazlauskas 2018-11-22  8620  									 dm_new_crtc_state->stream);
e7b07ceef2a650 Harry Wentland      2017-08-10  8621  			if (!status)
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8622) 				DC_ERR("got no status for stream %p on acrtc%p\n", dm_new_crtc_state->stream, acrtc);
e7b07ceef2a650 Harry Wentland      2017-08-10  8623  			else
e7b07ceef2a650 Harry Wentland      2017-08-10  8624  				acrtc->otg_inst = status->primary_otg_inst;
e7b07ceef2a650 Harry Wentland      2017-08-10  8625  		}
e7b07ceef2a650 Harry Wentland      2017-08-10  8626  	}
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8627  #ifdef CONFIG_DRM_AMD_DC_HDCP
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8628  	for_each_oldnew_connector_in_state(state, connector, old_con_state, new_con_state, i) {
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8629  		struct dm_connector_state *dm_new_con_state = to_dm_connector_state(new_con_state);
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8630  		struct amdgpu_crtc *acrtc = to_amdgpu_crtc(dm_new_con_state->base.crtc);
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8631  		struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8632  
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8633  		new_crtc_state = NULL;
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8634  
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8635  		if (acrtc)
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8636  			new_crtc_state = drm_atomic_get_new_crtc_state(state, &acrtc->base);
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8637  
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8638  		dm_new_crtc_state = to_dm_crtc_state(new_crtc_state);
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8639  
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8640  		if (dm_new_crtc_state && dm_new_crtc_state->stream == NULL &&
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8641  		    connector->state->content_protection == DRM_MODE_CONTENT_PROTECTION_ENABLED) {
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8642  			hdcp_reset_display(adev->dm.hdcp_workqueue, aconnector->dc_link->link_index);
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8643  			new_con_state->content_protection = DRM_MODE_CONTENT_PROTECTION_DESIRED;
97f6c91787d9fc Bhawanpreet Lakha   2019-09-26  8644  			dm_new_con_state->update_hdcp = true;
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8645  			continue;
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8646  		}
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8647  
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8648  		if (is_content_protection_different(new_con_state, old_con_state, connector, adev->dm.hdcp_workqueue))
b1abe5586ffcb1 Bhawanpreet Lakha   2019-08-28  8649  			hdcp_update_display(
b1abe5586ffcb1 Bhawanpreet Lakha   2019-08-28  8650  				adev->dm.hdcp_workqueue, aconnector->dc_link->link_index, aconnector,
23eb41917fc9f2 Bhawanpreet Lakha   2019-08-29  8651  				new_con_state->hdcp_content_type,
0e86d3d4fc5233 Yang Li             2021-02-18  8652  				new_con_state->content_protection == DRM_MODE_CONTENT_PROTECTION_DESIRED);
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8653  	}
0c8620d63d41fb Bhawanpreet Lakha   2019-09-16  8654  #endif
e7b07ceef2a650 Harry Wentland      2017-08-10  8655  
02d6a6fcdf68c4 David Francis       2018-12-18  8656  	/* Handle connector state changes */
c2cea7063b85fc Leo (Sunpeng  Li    2017-10-12  8657) 	for_each_oldnew_connector_in_state(state, connector, old_con_state, new_con_state, i) {
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8658) 		struct dm_connector_state *dm_new_con_state = to_dm_connector_state(new_con_state);
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8659) 		struct dm_connector_state *dm_old_con_state = to_dm_connector_state(old_con_state);
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8660) 		struct amdgpu_crtc *acrtc = to_amdgpu_crtc(dm_new_con_state->base.crtc);
263a4febd1cce6 Anson Jacob         2021-02-18  8661  		struct dc_surface_update dummy_updates[MAX_SURFACES];
19afd79951e630 Nathan Chancellor   2019-02-01  8662  		struct dc_stream_update stream_update;
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8663  		struct dc_info_packet hdr_packet;
e7b07ceef2a650 Harry Wentland      2017-08-10  8664  		struct dc_stream_status *status = NULL;
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8665  		bool abm_changed, hdr_changed, scaling_changed;
e7b07ceef2a650 Harry Wentland      2017-08-10  8666  
263a4febd1cce6 Anson Jacob         2021-02-18  8667  		memset(&dummy_updates, 0, sizeof(dummy_updates));
19afd79951e630 Nathan Chancellor   2019-02-01  8668  		memset(&stream_update, 0, sizeof(stream_update));
19afd79951e630 Nathan Chancellor   2019-02-01  8669  
44d09c6a577c8e Harry Wentland      2018-03-15  8670  		if (acrtc) {
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8671) 			new_crtc_state = drm_atomic_get_new_crtc_state(state, &acrtc->base);
44d09c6a577c8e Harry Wentland      2018-03-15  8672  			old_crtc_state = drm_atomic_get_old_crtc_state(state, &acrtc->base);
44d09c6a577c8e Harry Wentland      2018-03-15  8673  		}
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8674) 
e7b07ceef2a650 Harry Wentland      2017-08-10  8675  		/* Skip any modesets/resets */
0bc9706db3a35b Leo (Sunpeng  Li    2017-10-12  8676) 		if (!acrtc || drm_atomic_crtc_needs_modeset(new_crtc_state))
e7b07ceef2a650 Harry Wentland      2017-08-10  8677  			continue;
e7b07ceef2a650 Harry Wentland      2017-08-10  8678  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8679) 		dm_new_crtc_state = to_dm_crtc_state(new_crtc_state);
c1ee92f94ce3b9 David Francis       2018-11-26  8680  		dm_old_crtc_state = to_dm_crtc_state(old_crtc_state);
c1ee92f94ce3b9 David Francis       2018-11-26  8681  
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8682  		scaling_changed = is_scaling_state_different(dm_new_con_state,
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8683  							     dm_old_con_state);
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8684  
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8685  		abm_changed = dm_new_crtc_state->abm_level !=
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8686  			      dm_old_crtc_state->abm_level;
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8687  
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8688  		hdr_changed =
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8689  			is_hdr_metadata_different(old_con_state, new_con_state);
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8690  
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8691  		if (!scaling_changed && !abm_changed && !hdr_changed)
c1ee92f94ce3b9 David Francis       2018-11-26  8692  			continue;
e7b07ceef2a650 Harry Wentland      2017-08-10  8693  
b6e881c947417e Dmytro Laktyushkin  2019-09-13  8694  		stream_update.stream = dm_new_crtc_state->stream;
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8695  		if (scaling_changed) {
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8696) 			update_stream_scaling_settings(&dm_new_con_state->base.crtc->mode,
b6e881c947417e Dmytro Laktyushkin  2019-09-13  8697  					dm_new_con_state, dm_new_crtc_state->stream);
e7b07ceef2a650 Harry Wentland      2017-08-10  8698  
02d6a6fcdf68c4 David Francis       2018-12-18  8699  			stream_update.src = dm_new_crtc_state->stream->src;
02d6a6fcdf68c4 David Francis       2018-12-18  8700  			stream_update.dst = dm_new_crtc_state->stream->dst;
02d6a6fcdf68c4 David Francis       2018-12-18  8701  		}
02d6a6fcdf68c4 David Francis       2018-12-18  8702  
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8703  		if (abm_changed) {
02d6a6fcdf68c4 David Francis       2018-12-18  8704  			dm_new_crtc_state->stream->abm_level = dm_new_crtc_state->abm_level;
02d6a6fcdf68c4 David Francis       2018-12-18  8705  
02d6a6fcdf68c4 David Francis       2018-12-18  8706  			stream_update.abm_level = &dm_new_crtc_state->abm_level;
02d6a6fcdf68c4 David Francis       2018-12-18  8707  		}
70e8ffc55b98f3 Harry Wentland      2017-11-10  8708  
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8709  		if (hdr_changed) {
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8710  			fill_hdr_info_packet(new_con_state, &hdr_packet);
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8711  			stream_update.hdr_static_metadata = &hdr_packet;
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8712  		}
b232d4ed92eafb Nicholas Kazlauskas 2019-05-28  8713  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8714) 		status = dc_stream_get_status(dm_new_crtc_state->stream);
e7b07ceef2a650 Harry Wentland      2017-08-10  8715  		WARN_ON(!status);
3be5262e353b8a Harry Wentland      2017-07-27  8716  		WARN_ON(!status->plane_count);
e7b07ceef2a650 Harry Wentland      2017-08-10  8717  
02d6a6fcdf68c4 David Francis       2018-12-18  8718  		/*
02d6a6fcdf68c4 David Francis       2018-12-18  8719  		 * TODO: DC refuses to perform stream updates without a dc_surface_update.
02d6a6fcdf68c4 David Francis       2018-12-18  8720  		 * Here we create an empty update on each plane.
02d6a6fcdf68c4 David Francis       2018-12-18  8721  		 * To fix this, DC should permit updating only stream properties.
02d6a6fcdf68c4 David Francis       2018-12-18  8722  		 */
02d6a6fcdf68c4 David Francis       2018-12-18  8723  		for (j = 0; j < status->plane_count; j++)
263a4febd1cce6 Anson Jacob         2021-02-18  8724  			dummy_updates[j].surface = status->plane_states[0];
98e6436d3af5fe Anthony Koo         2018-08-21  8725  
02d6a6fcdf68c4 David Francis       2018-12-18  8726  
02d6a6fcdf68c4 David Francis       2018-12-18  8727  		mutex_lock(&dm->dc_lock);
02d6a6fcdf68c4 David Francis       2018-12-18  8728  		dc_commit_updates_for_stream(dm->dc,
263a4febd1cce6 Anson Jacob         2021-02-18  8729  						     dummy_updates,
3be5262e353b8a Harry Wentland      2017-07-27  8730  						     status->plane_count,
02d6a6fcdf68c4 David Francis       2018-12-18  8731  						     dm_new_crtc_state->stream,
263a4febd1cce6 Anson Jacob         2021-02-18  8732  						     &stream_update,
263a4febd1cce6 Anson Jacob         2021-02-18  8733  						     dc_state);
02d6a6fcdf68c4 David Francis       2018-12-18  8734  		mutex_unlock(&dm->dc_lock);
e7b07ceef2a650 Harry Wentland      2017-08-10  8735  	}
e7b07ceef2a650 Harry Wentland      2017-08-10  8736  
b5e83f6fe1f003 Nicholas Kazlauskas 2019-04-08  8737  	/* Count number of newly disabled CRTCs for dropping PM refs later. */
e1fc2dca1295c4 Leo (Sunpeng  Li    2017-10-18  8738) 	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state,
e1fc2dca1295c4 Leo (Sunpeng  Li    2017-10-18  8739) 				      new_crtc_state, i) {
fe2a19652918a5 Lyude Paul          2018-06-21  8740  		if (old_crtc_state->active && !new_crtc_state->active)
fe2a19652918a5 Lyude Paul          2018-06-21  8741  			crtc_disable_count++;
fe2a19652918a5 Lyude Paul          2018-06-21  8742  
54d76575246798 Leo (Sunpeng  Li    2017-10-12  8743) 		dm_new_crtc_state = to_dm_crtc_state(new_crtc_state);
e1fc2dca1295c4 Leo (Sunpeng  Li    2017-10-18  8744) 		dm_old_crtc_state = to_dm_crtc_state(old_crtc_state);
66b0c973d7f74e Mario Kleiner       2019-03-29  8745  
585d450c76d1d5 Aurabindo Pillai    2020-08-12  8746  		/* For freesync config update on crtc state and params for irq */
585d450c76d1d5 Aurabindo Pillai    2020-08-12  8747  		update_stream_irq_parameters(dm, dm_new_crtc_state);
057be086603feb Nicholas Kazlauskas 2019-04-15  8748  
66b0c973d7f74e Mario Kleiner       2019-03-29  8749  		/* Handle vrr on->off / off->on transitions */
66b0c973d7f74e Mario Kleiner       2019-03-29  8750  		amdgpu_dm_handle_vrr_transition(dm_old_crtc_state,
66b0c973d7f74e Mario Kleiner       2019-03-29  8751  						dm_new_crtc_state);
e7b07ceef2a650 Harry Wentland      2017-08-10  8752  	}
e7b07ceef2a650 Harry Wentland      2017-08-10  8753  
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8754  	/**
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8755  	 * Enable interrupts for CRTCs that are newly enabled or went through
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8756  	 * a modeset. It was intentionally deferred until after the front end
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8757  	 * state was modified to wait until the OTG was on and so the IRQ
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8758  	 * handlers didn't access stale or invalid state.
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8759  	 */
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8760  	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8761  		struct amdgpu_crtc *acrtc = to_amdgpu_crtc(crtc);
8e7b6fee9b03d6 Wayne Lin           2021-02-09  8762  #ifdef CONFIG_DEBUG_FS
86bc221918925a Wayne Lin           2021-03-02  8763  		bool configure_crc = false;
8e7b6fee9b03d6 Wayne Lin           2021-02-09  8764  		enum amdgpu_dm_pipe_crc_source cur_crc_src;
8e7b6fee9b03d6 Wayne Lin           2021-02-09  8765  #endif
585d450c76d1d5 Aurabindo Pillai    2020-08-12  8766  		dm_new_crtc_state = to_dm_crtc_state(new_crtc_state);
585d450c76d1d5 Aurabindo Pillai    2020-08-12  8767  
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8768  		if (new_crtc_state->active &&
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8769  		    (!old_crtc_state->active ||
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8770  		     drm_atomic_crtc_needs_modeset(new_crtc_state))) {
585d450c76d1d5 Aurabindo Pillai    2020-08-12  8771  			dc_stream_retain(dm_new_crtc_state->stream);
585d450c76d1d5 Aurabindo Pillai    2020-08-12  8772  			acrtc->dm_irq_params.stream = dm_new_crtc_state->stream;
8fe684e97c86e3 Nicholas Kazlauskas 2020-07-13  8773  			manage_dm_interrupts(adev, acrtc, true);
e2881d6d0a2653 Rodrigo Siqueira    2021-01-07  8774  

:::::: The code at line 8466 was first introduced by commit
:::::: 7578ecda14d521f39e74166103270c62b15af96d drm/amd/display: make a bunch of stuff in amdgpu_dm.c static

:::::: TO: Alex Deucher <alexander.deucher@amd.com>
:::::: CC: Dave Airlie <airlied@redhat.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105052028.V7hP755T-lkp%40intel.com.

--UugvWAfsgieZRqgk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--UugvWAfsgieZRqgk--
