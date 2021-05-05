Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB35KZCCAMGQEE4DU25Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7502A3733FB
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 05:48:01 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id g11-20020a17090a578bb029015564873bf4sf140454pji.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 20:48:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620186480; cv=pass;
        d=google.com; s=arc-20160816;
        b=SseU1djZwSp/PSfYJr92AVvAUWCLNGsUoy9u7qSx4gaVIf8VdUc2qkQllw8uuvI9UY
         zWZWHR7RF6uIcIlDvrAzXN+WhuJ8nlgcFRmdut8pAmND2bRZvCxxbro3tDY+OIjyEkOy
         KZ+CTqfSa/TzV7c1nqEggK5G7FDYkmp4kF9m2e/rVQUoKmuhBtIbDS9X3rKPkK1FdP1M
         gCmRYUOSqZe3uG79nv7PlT33Z2JITuxZ12CyoE4tQq2MB+97WuGZTrYfacnYuHYKsHtH
         m44f2hgYZSr7CQJDacA98ou76jGQew147jRhxaj5WSEiZI6Q13qzBaVkWgMMEiZvBAdm
         vcCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=GeATVo86aeZ3ANF6UNVwRgufAtmWW2NIbsb/2J3sFfI=;
        b=PFsM1hw06Bf/wu+c2nHqPqHy5XsajuENxM3iPZXzQLx/V1Y613AXYNzjFcEP2O9I7B
         0UDrgnjME1VAgufDZJ1Oxjp+twWoRbm7aO2RFNdRCCEzivNmLzOJeRpTK7Tz1lt84xtR
         mE4bI4H90HJe+OLcwqR/KIcfF6Zmml2hdTMUvCg0bxpE/ErDA4/QI9hUQG5IiCrQcQLa
         3PJXW+cG0a0SmiMTI8axNIr1C+uL4e3Fv4aElroY7PtWFOGzfB38wU9b5syV1pfOLxal
         R4ObKkAMddGNhUDozY1MYMp7zZaZtNy+9Xl6+tPSNJOChu6mIAGhBf3qDT3iAgeCishB
         /1Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GeATVo86aeZ3ANF6UNVwRgufAtmWW2NIbsb/2J3sFfI=;
        b=duIepDyPHYaem+1SCCswqrtpTZcnq6iQGLB+OuC6p0O5Z3RHdMmKTZWbdkDBXs+lMI
         /D/9qbsrzkP4OpyeSRjcUzWzu1FtdL7QM76Nncs4Dn+7cqsm5sKg23sqbPeHZ5kftHX2
         Z12PWPb1FwgfpwkYH80Ab8mopvm05H9euT3kfCNXoxh3oNvA5AKxqIUL+pImimBzKkM4
         8qi08zjOc3ikaRsbgbit2zxcQr97dOSsA/6IFxvpWOLt8YT9exlExxKAJu8F1e18I6z1
         fdeIUbQsV47vdi8EfQr/TVyAUkv1f4jtzLHqfOgEcNql2sGb1VZS7Ts1/cDygzuzRlqo
         /bnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GeATVo86aeZ3ANF6UNVwRgufAtmWW2NIbsb/2J3sFfI=;
        b=PBo7mgrW4YbNzzu37Xik8Pc7K4QQBUuPny/93sf/zJG+hv9AYyI2omgguf4AYDZuQs
         J7omGWwbT9v6Mvgm0yEasOqnE4ogKnVV814UMbkmQKDXH1/7GeY0EAPSRJ0Ap+8tWpNx
         jDmigin9qP3i0Ig8nNFm90x8U6yQa65kRh9uttxZPaMhZqOFH5ZIhVwB93/DRljGVm07
         uyyXSS3YPQAYenVT9Smv5QYZVEh0aqydI1TXf0EJ/OQd7+2kHOrIQFZUQXgqRmLVYsC/
         Rg5ETsO7arlDsg/YhPnjm92MwiNARI+Nsy18IhpAFkrTW1j1jLpOv1vHB7tXufIHCrQH
         fnDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hVYHRTPPucXJAeadVJDUcBEnv+NI7Uu6lwyaZh+vPxsWq7xDS
	PnY5DBANMdHraye8VQkCc6E=
X-Google-Smtp-Source: ABdhPJwYnhi0yNGi00qFyCqKDVM4rPGcAQtbsy+fnhuHzzSLe03L+VroULeHLiQbSBKgGR1D53frvg==
X-Received: by 2002:a17:90b:514:: with SMTP id r20mr9177471pjz.193.1620186479857;
        Tue, 04 May 2021 20:47:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:dd46:: with SMTP id w67ls2809156pff.7.gmail; Tue, 04 May
 2021 20:47:59 -0700 (PDT)
X-Received: by 2002:a62:170e:0:b029:1fa:7161:fd71 with SMTP id 14-20020a62170e0000b02901fa7161fd71mr26366622pfx.35.1620186479067;
        Tue, 04 May 2021 20:47:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620186479; cv=none;
        d=google.com; s=arc-20160816;
        b=MKr2aa5unJ53cT11skmK21wgDq6CR5MzSAmJ2BG7mPyw8K7dN+CnCL/1tK/quCwMw2
         uQ1Sf/CGt/TdMmI4xMHxPBjBSEcI+nLiOtMYTs9/TOZlVghzB2fczMO5I7qi+5Gornry
         SysMPPeUFMh68CaOgqX4y7LyTxGBG8wdKwHnBu0fn/QSPyUhrjzOSERDYHzxK2ilalvT
         zzjfXZVXGyPqp6pMYCEv8jykTDL/snmAiK89l640sjvv+fQE7nmeZlIxi0ubqQ/BK/aF
         LZhKTxGT3n4GSTzIE2vTOvA5WrVtl8CPC+Ca4mZ2nsfRndz2diwn+I8V5NrfBrIOuIJ/
         PZLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=gGhgNJLwDTfNoux0hdunxjjhpAtgdAgRExuF85s1jHc=;
        b=pfGrDkGNCPkVRyPIEkRORK0JFOUzfUHWsKJbJbd6ng3teJ3EfLqCLJjfAKGKFy8kVU
         qZknK7L4vB+K1RCK3OsunJkkLDvaF2bb8oAQ15lDigHc+YITzXCARBq23qioDNeyZXSE
         HYPFS1l1C/5M4jsRxQ0LtHCE5ogULBHBDLy2cSYGWzoNsA5ki/Hm/lGPrVDE6w+TsN6G
         3yi/KJ/mYZxi04e4jrKPO0pZtAvoe2uEj/rZULFsT1ltXB+1Ny8CCSLmc9exVQ45/thD
         Atq9dQISPz06wQCJH9itPjxySu+vyH3fasAofsZ0G31NEgYi4lOpIHJ79bJ0qJKIyAR5
         Svig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id md7si577016pjb.3.2021.05.04.20.47.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 20:47:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 9kxKaxdcGmWgp307Vx5uFtXaA39HHKkuBU3WtejIGMCv5zOEvzXlsaDbmNHr0qx2GFsjCbq1n0
 s2b/6q2Gj6+g==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="283544081"
X-IronPort-AV: E=Sophos;i="5.82,273,1613462400"; 
   d="gz'50?scan'50,208,50";a="283544081"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2021 20:47:57 -0700
IronPort-SDR: SN0Uj7QPM0r5q/6ShTjCDN5Rp0tztGEuT1Kal0rOUqVzh90dd2PBWkJlBraLCs95oNKp5kiFJL
 WTDpAKk+8xUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,273,1613462400"; 
   d="gz'50?scan'50,208,50";a="458390141"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 04 May 2021 20:47:54 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1le8Vu-0009pr-83; Wed, 05 May 2021 03:47:54 +0000
Date: Wed, 5 May 2021 11:47:30 +0800
From: kernel test robot <lkp@intel.com>
To: Nikola Cornij <nikola.cornij@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Alex Deucher <alexander.deucher@amd.com>,
	Aurabindo Pillai <aurabindo.pillai@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8466:13:
 warning: stack frame size of 2112 bytes in function
 'amdgpu_dm_atomic_commit_tail'
Message-ID: <202105051123.4uHvZ9XN-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jRHKVT23PllUwdXP"
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


--jRHKVT23PllUwdXP
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105051123.4uHvZ9XN-lkp%40intel.com.

--jRHKVT23PllUwdXP
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
CtuZND12DNxAWXlPCqJptUPK/wDrouegpUUBAA==

--jRHKVT23PllUwdXP--
