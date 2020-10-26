Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBN4X3H6AKGQEO32LI5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF54298605
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 05:08:25 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id x24sf4886853pfi.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Oct 2020 21:08:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603685303; cv=pass;
        d=google.com; s=arc-20160816;
        b=NIVx7CN4zanPeoyQeiluf/uTS/noV7F579ozU2shF9iO375lwDsfMlkrjGRbO8DNto
         +4H29H2SYRAtzMyvTKHUPh1u+VRZJY7OGoR8nPf55Gsxd5OkbZD5tXrseiMQl8WYPvJo
         Mexva0sTvnIAN6d9KSl+vIa/iwi2W8/HgFaFfTyWa5zKV6plYzvClYm080nTs12idUwb
         swMKYoWUKfVb8Pa34+KXhQcChjQbBUcjyMgiwRZmFkX/nyqS7mBhC5MWZpYX3Q+avZ2G
         uJXVksXJLkWfTDfoxcQGJuJIlXKkTtVnZsMdZV209pEYFErTs+XH2NIprEm8JoAI/9aS
         /qjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=c0W3BMK+uxVguJl+vRyASVSqBQqP17ggYxBPvha+HWc=;
        b=e0tRBLVyk9oAPqlWneaFXHgcP5oWFjcwiu0yP7BRK/efAZQ9Pce+3BuWhrPCtQgVyE
         hmGYN6BPteVu8sfYiQcV67q7ut6PIR9rcT6UffOD2NSW5/1ILPRdwaKs+/GNcagW0kGX
         7uLurUHwm1oafPO5cEMkjHnkNXImnNHWqTfKlBSqfTq/yfHZWPGYV/oXK5T6542J49s4
         SuRrFc7tVaeWnD6mYoYxL73drB+LzJjVjSm/r5wP4+PT8ZXgfL0o6z1u0GLVR89/CuCb
         mvRdikyIwaiNKIuO2otgjHVIom6DadvCRpT2h3ITWoMVtI6y9NphKcZeHwg6tvpVTFjm
         ni1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c0W3BMK+uxVguJl+vRyASVSqBQqP17ggYxBPvha+HWc=;
        b=q6O9SuG2zeK8vdVzwTo8YvPRn5X/2vbUboOARoOMOETXLC74R0velIpcjNvakieXHG
         0JJL8AIlcdEg77eRu3k9IveIY93FMNV0FPDBOo3aU7fnZT1GFzngFkvr5/+i2/c/qyMd
         DuL2+CbWXBNT54JIreor4464aDhX1CNmZW1CMrwxs0XXdlacjH9gVa11FljJLncZI2BK
         siYtp6viIOC0FYEUqioGHTht+mRpn1HGIzPqB4OXjrvTkrsBU+PxIWgK2R8BJaZgUKgi
         ONQeozDeB544PZnBilJ8sild41Ic4DIPBCyTX4h1cmzmOx+lYW6BR9J54s3d1YjU5gqN
         I0hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c0W3BMK+uxVguJl+vRyASVSqBQqP17ggYxBPvha+HWc=;
        b=eGTWrGd33wtszaK2SHbpQ6WS5CGA5pfU+9LisfN/ViffVVqm5ZfCYWh3P88HtLGsex
         +gn6S5elPPBGXoqUqWlI8eItw04ffXSJk7mjAUrimnAIvfuKENmZwPnIBliWtzvNgSMM
         /oIgwC3WxHwfNdmBxbz8+8tn0cajf2RiHVM9dRuID+dRetvqY3cThrJ63Zcw8xp3qURQ
         F4GL5dMFFphypAzdStMwdMfDvsJUTrME+ViWMg1IF3wmST9VQvD4oQXl6zZ+QsETPDDd
         Hif2R3JgRxnbYKvFo3bdW7LxcEcH5C+m+8hDWTyeDdJLwE0bQzH5u9/7HHmzjCeQ/4SF
         B3nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TA/f8lwvc89lBu4k2MGeiE1g8Zidv5ByPlFMY2r+q9dPQeb4R
	f+6eaRmI0YLI3DN0gm6NMWI=
X-Google-Smtp-Source: ABdhPJwnljq8F2+Y7N6peg3MVAhGNnsvd4x85uMjfN2EgXeAhVEGn/wuZph23kxVtcAQCXyI4yXe5A==
X-Received: by 2002:a17:90a:d584:: with SMTP id v4mr18359368pju.194.1603685303218;
        Sun, 25 Oct 2020 21:08:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d8d:: with SMTP id y135ls2706820pfc.3.gmail; Sun, 25
 Oct 2020 21:08:22 -0700 (PDT)
X-Received: by 2002:a62:1856:0:b029:155:1718:91a3 with SMTP id 83-20020a6218560000b0290155171891a3mr11309536pfy.66.1603685302375;
        Sun, 25 Oct 2020 21:08:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603685302; cv=none;
        d=google.com; s=arc-20160816;
        b=LOt1xaR4NBAMADahhIjnYoVsaZaCp+zNE3BV/cWNYFlWy75bW4mWNylStaQEauLUo9
         2zuszNax/q+DknFK/ThNkxo/tVIXLpkqH4TOeuAxWnG4JUkNWE8CHQJZ3V0hCSBz8aKV
         IZL3GeCvg1fbuxbLlyE+wAiT6hy1JM+GLiHeCKhnF5TG4UU5FaS07dCBCSbYIJyB54VZ
         Y8UkFKH0Ud1maSUuJ7mVaE+kF1J2hF9ZfqZZ4l5NLabseIZHgxhRiLOiLAJhpSxE/mVv
         Q4QbNy1wygGylbDOkw4kQUK1p98sIV7JXQsHIM23pcVjdQ8iMl71eHvA4kj99g7Hleee
         smmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=aZwVidBdjggaWaquDyeR2DH0ft8Ad7MJ8n4rUXc+Ahw=;
        b=cpiFacIh97o49pWftYDXOSq8ejx9dmCXMbl4wA5jT3uB9FtGE0mzktfGWOpYC4oXyT
         dDeXMJF2DDwNyVd9ssig+b9u8WQa4cXa0X4G0NLrLtEADkvUjVuZLTz9LZ3TiMue9Yb1
         w2ufo7N6g/i44fGGs1AYKWiAh1t204KW1HpbfeyJam+JASJPQ78+KQyxiZqKgJXHS+p6
         CRZ58nDqm5sXkWcC2JFWfC/8nNJQKI5IbBtbxSMG1B1C7NBTCYPahWtuCK7p6h47gT5p
         LJOh57bG2AeHp663p80HR7Vd2SDMPZV9C2Xz9IKDiF5CmoNbwht4XRzxws5FP+PzxQXg
         DeJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id d2si591678pfr.4.2020.10.25.21.08.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 21:08:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: Y4u8psCNbtg/G9z/eAdheliKqauc0yAzy3LI9+L7qTd2z3ARlL4XNhWd45seHnqHwS163jqyHT
 S72Ps7+6SRKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9785"; a="147162915"
X-IronPort-AV: E=Sophos;i="5.77,417,1596524400"; 
   d="gz'50?scan'50,208,50";a="147162915"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2020 21:08:20 -0700
IronPort-SDR: sgZF3FRzhGMCFSw66X0M+2YySkwv7LG4Slr0Hphxmyt3jJ0yyOXHo5sShKzuz8HKKeDncwpmyQ
 AaM3OyhVBHbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,417,1596524400"; 
   d="gz'50?scan'50,208,50";a="317734389"
Received: from lkp-server01.sh.intel.com (HELO cda15bb6d7bd) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 25 Oct 2020 21:08:17 -0700
Received: from kbuild by cda15bb6d7bd with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kWtns-00018q-Tv; Mon, 26 Oct 2020 04:08:16 +0000
Date: Mon, 26 Oct 2020 12:07:53 +0800
From: kernel test robot <lkp@intel.com>
To: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Alex Deucher <alexander.deucher@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3640:6:
 warning: stack frame size of 2104 bytes in function
 'dml30_ModeSupportAndSystemConfigurationFull'
Message-ID: <202010261250.hwc1OKsw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AhhlLboLdkugWU4S"
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


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Bhawanpreet,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   3650b228f83adda7e5ee532e2b90429c03f7b9ec
commit: 96134346bb6ae3f212617dd66a1105250f31a7ef drm/amd/display: Add DCN3 to Kconfig
date:   4 months ago
config: x86_64-randconfig-r003-20201026 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1c8371692dfe8245bc6690ff1262dcced4649d21)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=96134346bb6ae3f212617dd66a1105250f31a7ef
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 96134346bb6ae3f212617dd66a1105250f31a7ef
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3640:6: warning: stack frame size of 2104 bytes in function 'dml30_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than=]
   void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
        ^
   1 warning generated.

vim +/dml30_ModeSupportAndSystemConfigurationFull +3640 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c

6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3639  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21 @3640  void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3641  {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3642  	struct vba_vars_st *v = &mode_lib->vba;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3643  	int MinPrefetchMode = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3644  	int MaxPrefetchMode = 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3645  	int i;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3646  	unsigned int j, k, m;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3647  	bool   EnoughWritebackUnits = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3648  	bool   WritebackModeSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3649  	bool   ViewportExceedsSurface = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3650  	double MaxTotalVActiveRDBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3651  	long ReorderingBytes = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3652  	bool NotUrgentLatencyHiding[DC__NUM_DPP__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3653  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3654  	/*MODE SUPPORT, VOLTAGE STATE AND SOC CONFIGURATION*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3655  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3656  	/*Scale Ratio, taps Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3657  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3658  	v->ScaleRatioAndTapsSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3659  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3660  		if (v->ScalerEnabled[k] == false
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3661  				&& ((v->SourcePixelFormat[k] != dm_444_64
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3662  						&& v->SourcePixelFormat[k] != dm_444_32
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3663  						&& v->SourcePixelFormat[k] != dm_444_16
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3664  						&& v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3665  						&& v->SourcePixelFormat[k] != dm_mono_8
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3666  						&& v->SourcePixelFormat[k] != dm_rgbe
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3667  						&& v->SourcePixelFormat[k] != dm_rgbe_alpha)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3668  						|| v->HRatio[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3669  						|| v->htaps[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3670  						|| v->VRatio[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3671  						|| v->vtaps[k] != 1.0)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3672  			v->ScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3673  		} else if (v->vtaps[k] < 1.0 || v->vtaps[k] > 8.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3674  				|| v->htaps[k] < 1.0 || v->htaps[k] > 8.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3675  				|| (v->htaps[k] > 1.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3676  						&& (v->htaps[k] % 2) == 1)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3677  				|| v->HRatio[k] > v->MaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3678  				|| v->VRatio[k] > v->MaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3679  				|| v->HRatio[k] > v->htaps[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3680  				|| v->VRatio[k] > v->vtaps[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3681  				|| (v->SourcePixelFormat[k] != dm_444_64
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3682  						&& v->SourcePixelFormat[k] != dm_444_32
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3683  						&& v->SourcePixelFormat[k] != dm_444_16
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3684  						&& v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3685  						&& v->SourcePixelFormat[k] != dm_mono_8
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3686  						&& v->SourcePixelFormat[k] != dm_rgbe
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3687  						&& (v->VTAPsChroma[k] < 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3688  							|| v->VTAPsChroma[k] > 8
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3689  							|| v->HTAPsChroma[k] < 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3690  							|| v->HTAPsChroma[k] > 8
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3691  							|| (v->HTAPsChroma[k] > 1 && v->HTAPsChroma[k] % 2 == 1)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3692  							|| v->HRatioChroma[k] > v->MaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3693  							|| v->VRatioChroma[k] > v->MaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3694  							|| v->HRatioChroma[k] > v->HTAPsChroma[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3695  							|| v->VRatioChroma[k] > v->VTAPsChroma[k]))) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3696  			v->ScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3697  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3698  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3699  	/*Source Format, Pixel Format and Scan Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3700  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3701  	v->SourceFormatPixelAndScanSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3702  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3703  		if ((v->SurfaceTiling[k] == dm_sw_linear && (!(v->SourceScan[k] != dm_vert) || v->DCCEnable[k] == true))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3704  				|| ((v->SurfaceTiling[k] == dm_sw_64kb_d || v->SurfaceTiling[k] == dm_sw_64kb_d_t || v->SurfaceTiling[k] == dm_sw_64kb_d_x)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3705  						&& !(v->SourcePixelFormat[k] == dm_444_64))) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3706  			v->SourceFormatPixelAndScanSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3707  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3708  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3709  	/*Bandwidth Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3710  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3711  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3712  		CalculateBytePerPixelAnd256BBlockSizes(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3713  				v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3714  				v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3715  				&v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3716  				&v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3717  				&v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3718  				&v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3719  				&v->Read256BlockHeightY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3720  				&v->Read256BlockHeightC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3721  				&v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3722  				&v->Read256BlockWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3723  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3724  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3725  		if (v->SourceScan[k] != dm_vert) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3726  			v->SwathWidthYSingleDPP[k] = v->ViewportWidth[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3727  			v->SwathWidthCSingleDPP[k] = v->ViewportWidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3728  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3729  			v->SwathWidthYSingleDPP[k] = v->ViewportHeight[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3730  			v->SwathWidthCSingleDPP[k] = v->ViewportHeightChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3731  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3732  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3733  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3734  		v->ReadBandwidthLuma[k] = v->SwathWidthYSingleDPP[k] * dml_ceil(v->BytePerPixelInDETY[k], 1.0) / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3735  		v->ReadBandwidthChroma[k] = v->SwathWidthYSingleDPP[k] / 2 * dml_ceil(v->BytePerPixelInDETC[k], 2.0) / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k] / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3736  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3737  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3738  		if (v->WritebackEnable[k] == true
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3739  				&& v->WritebackPixelFormat[k] == dm_444_64) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3740  			v->WriteBandwidth[k] = v->WritebackDestinationWidth[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3741  					* v->WritebackDestinationHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3742  					/ (v->WritebackSourceHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3743  							* v->HTotal[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3744  							/ v->PixelClock[k]) * 8.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3745  		} else if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3746  			v->WriteBandwidth[k] = v->WritebackDestinationWidth[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3747  					* v->WritebackDestinationHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3748  					/ (v->WritebackSourceHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3749  							* v->HTotal[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3750  							/ v->PixelClock[k]) * 4.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3751  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3752  			v->WriteBandwidth[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3753  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3754  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3755  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3756  	/*Writeback Latency support check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3757  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3758  	v->WritebackLatencySupport = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3759  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3760  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3761  			if (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave ||
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3762  			    v->WritebackConfiguration == dm_whole_buffer_for_single_stream_interleave) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3763  				if (v->WriteBandwidth[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3764  						> 2.0 * v->WritebackInterfaceBufferSize * 1024
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3765  								/ v->WritebackLatency) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3766  					v->WritebackLatencySupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3767  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3768  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3769  				if (v->WriteBandwidth[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3770  						> v->WritebackInterfaceBufferSize * 1024
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3771  								/ v->WritebackLatency) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3772  					v->WritebackLatencySupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3773  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3774  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3775  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3776  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3777  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3778  	/*Writeback Mode Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3779  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3780  	v->TotalNumberOfActiveWriteback = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3781  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3782  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3783  			v->TotalNumberOfActiveWriteback =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3784  					v->TotalNumberOfActiveWriteback + 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3785  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3786  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3787  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3788  	if (v->TotalNumberOfActiveWriteback > v->MaxNumWriteback) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3789  		EnoughWritebackUnits = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3790  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3791  	if (!v->WritebackSupportInterleaveAndUsingWholeBufferForASingleStream
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3792  			&& (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3793  					|| v->WritebackConfiguration == dm_whole_buffer_for_single_stream_interleave)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3794  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3795  		WritebackModeSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3796  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3797  	if (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave && v->TotalNumberOfActiveWriteback > 1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3798  		WritebackModeSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3799  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3800  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3801  	/*Writeback Scale Ratio and Taps Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3802  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3803  	v->WritebackScaleRatioAndTapsSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3804  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3805  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3806  			if (v->WritebackHRatio[k] > v->WritebackMaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3807  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3808  							> v->WritebackMaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3809  					|| v->WritebackHRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3810  							< v->WritebackMinHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3811  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3812  							< v->WritebackMinVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3813  					|| v->WritebackHTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3814  							> v->WritebackMaxHSCLTaps
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3815  					|| v->WritebackVTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3816  							> v->WritebackMaxVSCLTaps
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3817  					|| v->WritebackHRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3818  							> v->WritebackHTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3819  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3820  							> v->WritebackVTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3821  					|| (v->WritebackHTaps[k] > 2.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3822  							&& ((v->WritebackHTaps[k] % 2)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3823  									== 1))) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3824  				v->WritebackScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3825  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3826  			if (2.0 * v->WritebackDestinationWidth[k] * (v->WritebackVTaps[k] - 1) * 57 > v->WritebackLineBufferSize) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3827  				v->WritebackScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3828  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3829  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3830  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3831  	/*Maximum DISPCLK/DPPCLK Support check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3832  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3833  	v->WritebackRequiredDISPCLK = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3834  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3835  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3836  			v->WritebackRequiredDISPCLK = dml_max(v->WritebackRequiredDISPCLK,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3837  					dml30_CalculateWriteBackDISPCLK(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3838  							v->WritebackPixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3839  							v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3840  							v->WritebackHRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3841  							v->WritebackVRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3842  							v->WritebackHTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3843  							v->WritebackVTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3844  							v->WritebackSourceWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3845  							v->WritebackDestinationWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3846  							v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3847  							v->WritebackLineBufferSize));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3848  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3849  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3850  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3851  		if (v->HRatio[k] > 1.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3852  			v->PSCL_FACTOR[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput * v->HRatio[k] / dml_ceil(v->htaps[k] / 6.0, 1.0));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3853  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3854  			v->PSCL_FACTOR[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3855  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3856  		if (v->BytePerPixelC[k] == 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3857  			v->PSCL_FACTOR_CHROMA[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3858  			v->MinDPPCLKUsingSingleDPP[k] = v->PixelClock[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3859  					* dml_max3(v->vtaps[k] / 6.0 * dml_min(1.0, v->HRatio[k]), v->HRatio[k] * v->VRatio[k] / v->PSCL_FACTOR[k], 1.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3860  			if ((v->htaps[k] > 6.0 || v->vtaps[k] > 6.0) && v->MinDPPCLKUsingSingleDPP[k] < 2.0 * v->PixelClock[k]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3861  				v->MinDPPCLKUsingSingleDPP[k] = 2.0 * v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3862  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3863  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3864  			if (v->HRatioChroma[k] > 1.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3865  				v->PSCL_FACTOR_CHROMA[k] = dml_min(v->MaxDCHUBToPSCLThroughput,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3866  						v->MaxPSCLToLBThroughput * v->HRatioChroma[k] / dml_ceil(v->HTAPsChroma[k] / 6.0, 1.0));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3867  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3868  				v->PSCL_FACTOR_CHROMA[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3869  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3870  			v->MinDPPCLKUsingSingleDPP[k] = v->PixelClock[k] * dml_max5(v->vtaps[k] / 6.0 * dml_min(1.0, v->HRatio[k]),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3871  							v->HRatio[k] * v->VRatio[k] / v->PSCL_FACTOR[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3872  							v->VTAPsChroma[k] / 6.0 * dml_min(1.0, v->HRatioChroma[k]),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3873  							v->HRatioChroma[k] * v->VRatioChroma[k] / v->PSCL_FACTOR_CHROMA[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3874  							1.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3875  			if ((v->htaps[k] > 6.0 || v->vtaps[k] > 6.0 || v->HTAPsChroma[k] > 6.0 || v->VTAPsChroma[k] > 6.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3876  					&& v->MinDPPCLKUsingSingleDPP[k] < 2.0 * v->PixelClock[k]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3877  				v->MinDPPCLKUsingSingleDPP[k] = 2.0 * v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3878  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3879  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3880  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3881  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3882  		int MaximumSwathWidthSupportLuma = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3883  		int MaximumSwathWidthSupportChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3884  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3885  		if (v->SurfaceTiling[k] == dm_sw_linear) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3886  			MaximumSwathWidthSupportLuma = 8192.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3887  		} else if (v->SourceScan[k] == dm_vert && v->BytePerPixelC[k] > 0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3888  			MaximumSwathWidthSupportLuma = 2880.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3889  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3890  			MaximumSwathWidthSupportLuma = 5760.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3891  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3892  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3893  		if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3894  			MaximumSwathWidthSupportChroma = MaximumSwathWidthSupportLuma / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3895  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3896  			MaximumSwathWidthSupportChroma = MaximumSwathWidthSupportLuma;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3897  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3898  		v->MaximumSwathWidthInLineBufferLuma = v->LineBufferSize * dml_max(v->HRatio[k], 1.0) / v->LBBitPerPixel[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3899  				/ (v->vtaps[k] + dml_max(dml_ceil(v->VRatio[k], 1.0) - 2, 0.0));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3900  		if (v->BytePerPixelC[k] == 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3901  			v->MaximumSwathWidthInLineBufferChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3902  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3903  			v->MaximumSwathWidthInLineBufferChroma = v->LineBufferSize * dml_max(v->HRatioChroma[k], 1.0) / v->LBBitPerPixel[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3904  					/ (v->VTAPsChroma[k] + dml_max(dml_ceil(v->VRatioChroma[k], 1.0) - 2, 0.0));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3905  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3906  		v->MaximumSwathWidthLuma[k] = dml_min(MaximumSwathWidthSupportLuma, v->MaximumSwathWidthInLineBufferLuma);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3907  		v->MaximumSwathWidthChroma[k] = dml_min(MaximumSwathWidthSupportChroma, v->MaximumSwathWidthInLineBufferChroma);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3908  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3909  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3910  	CalculateSwathAndDETConfiguration(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3911  			true,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3912  			v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3913  			v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3914  			v->MaximumSwathWidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3915  			v->MaximumSwathWidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3916  			v->SourceScan,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3917  			v->SourcePixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3918  			v->SurfaceTiling,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3919  			v->ViewportWidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3920  			v->ViewportHeight,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3921  			v->SurfaceWidthY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3922  			v->SurfaceWidthC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3923  			v->SurfaceHeightY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3924  			v->SurfaceHeightC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3925  			v->Read256BlockHeightY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3926  			v->Read256BlockHeightC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3927  			v->Read256BlockWidthY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3928  			v->Read256BlockWidthC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3929  			v->odm_combine_dummy,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3930  			v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3931  			v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3932  			v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3933  			v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3934  			v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3935  			v->HActive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3936  			v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3937  			v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3938  			v->DPPPerPlane,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3939  			v->swath_width_luma_ub,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3940  			v->swath_width_chroma_ub,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3941  			v->SwathWidthY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3942  			v->SwathWidthC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3943  			v->SwathHeightY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3944  			v->SwathHeightC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3945  			v->DETBufferSizeY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3946  			v->DETBufferSizeC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3947  			v->SingleDPPViewportSizeSupportPerPlane,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3948  			&v->ViewportSizeSupport[0][0]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3949  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3950  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3951  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3952  			v->MaxDispclkRoundedDownToDFSGranularity = RoundToDFSGranularityDown(v->MaxDispclk[i], v->DISPCLKDPPCLKVCOSpeed);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3953  			v->MaxDppclkRoundedDownToDFSGranularity = RoundToDFSGranularityDown(v->MaxDppclk[i], v->DISPCLKDPPCLKVCOSpeed);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3954  			v->RequiredDISPCLK[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3955  			v->DISPCLK_DPPCLK_Support[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3956  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3957  				v->PlaneRequiredDISPCLKWithoutODMCombine = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3958  						* (1.0 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3959  				if ((v->PlaneRequiredDISPCLKWithoutODMCombine >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3960  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3961  					v->PlaneRequiredDISPCLKWithoutODMCombine = v->PixelClock[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3962  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3963  				v->PlaneRequiredDISPCLKWithODMCombine2To1 = v->PixelClock[k] / 2 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3964  						* (1 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3965  				if ((v->PlaneRequiredDISPCLKWithODMCombine2To1 >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3966  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3967  					v->PlaneRequiredDISPCLKWithODMCombine2To1 = v->PixelClock[k] / 2 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3968  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3969  				v->PlaneRequiredDISPCLKWithODMCombine4To1 = v->PixelClock[k] / 4 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3970  						* (1 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3971  				if ((v->PlaneRequiredDISPCLKWithODMCombine4To1 >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3972  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3973  					v->PlaneRequiredDISPCLKWithODMCombine4To1 = v->PixelClock[k] / 4 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3974  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3975  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3976  				if (v->ODMCombinePolicy == dm_odm_combine_policy_none) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3977  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3978  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithoutODMCombine;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3979  				} else if (v->ODMCombinePolicy == dm_odm_combine_policy_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3980  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3981  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3982  				} else if (v->ODMCombinePolicy == dm_odm_combine_policy_4to1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3983  						|| v->PlaneRequiredDISPCLKWithODMCombine2To1 > v->MaxDispclkRoundedDownToDFSGranularity) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3984  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_4to1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3985  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine4To1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3986  				} else if (v->PlaneRequiredDISPCLKWithoutODMCombine > v->MaxDispclkRoundedDownToDFSGranularity) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3987  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3988  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3989  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3990  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3991  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithoutODMCombine;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3992  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3993  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3994  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3995  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3996  					v->NoOfDPP[i][j][k] = 4;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3997  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 4;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3998  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  3999  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4000  					v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4001  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4002  				} else if ((v->WhenToDoMPCCombine == dm_mpc_never
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4003  						|| (v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) <= v->MaxDppclkRoundedDownToDFSGranularity
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4004  								&& v->SingleDPPViewportSizeSupportPerPlane[k] == true))) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4005  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4006  					v->NoOfDPP[i][j][k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4007  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4008  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4009  					v->MPCCombine[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4010  					v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4011  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4012  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4013  				v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->PlaneRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4014  				if ((v->MinDPPCLKUsingSingleDPP[k] / v->NoOfDPP[i][j][k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4015  						> v->MaxDppclkRoundedDownToDFSGranularity) || (v->PlaneRequiredDISPCLK > v->MaxDispclkRoundedDownToDFSGranularity)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4016  					v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4017  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4018  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4019  			v->TotalNumberOfActiveDPP[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4020  			v->TotalNumberOfSingleDPPPlanes[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4021  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4022  				v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4023  				if (v->NoOfDPP[i][j][k] == 1)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4024  					v->TotalNumberOfSingleDPPPlanes[i][j] = v->TotalNumberOfSingleDPPPlanes[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4025  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4026  			if (j == 1 && v->WhenToDoMPCCombine != dm_mpc_never) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4027  				while (!(v->TotalNumberOfActiveDPP[i][j] >= v->MaxNumDPP || v->TotalNumberOfSingleDPPPlanes[i][j] == 0)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4028  					double BWOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4029  					unsigned int NumberOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4030  					BWOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4031  					NumberOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4032  					for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4033  						if (v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k] > BWOfNonSplitPlaneOfMaximumBandwidth
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4034  								&& v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_disabled && v->MPCCombine[i][j][k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4035  							BWOfNonSplitPlaneOfMaximumBandwidth = v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4036  							NumberOfNonSplitPlaneOfMaximumBandwidth = k;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4037  						}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4038  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4039  					v->MPCCombine[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4040  					v->NoOfDPP[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4041  					v->RequiredDPPCLK[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = v->MinDPPCLKUsingSingleDPP[NumberOfNonSplitPlaneOfMaximumBandwidth]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4042  							* (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100) / 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4043  					v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4044  					v->TotalNumberOfSingleDPPPlanes[i][j] = v->TotalNumberOfSingleDPPPlanes[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4045  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4046  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4047  			if (v->TotalNumberOfActiveDPP[i][j] > v->MaxNumDPP) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4048  				v->RequiredDISPCLK[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4049  				v->DISPCLK_DPPCLK_Support[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4050  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4051  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4052  					if (v->SingleDPPViewportSizeSupportPerPlane[k] == false && v->WhenToDoMPCCombine != dm_mpc_never) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4053  						v->MPCCombine[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4054  						v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4055  						v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4056  					} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4057  						v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4058  						v->NoOfDPP[i][j][k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4059  						v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4060  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4061  					if (!(v->MaxDispclk[i] == v->MaxDispclk[v->soc.num_states - 1] && v->MaxDppclk[i] == v->MaxDppclk[v->soc.num_states - 1])) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4062  						v->PlaneRequiredDISPCLK = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4063  								* (1.0 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4064  					} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4065  						v->PlaneRequiredDISPCLK = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4066  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4067  					v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->PlaneRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4068  					if ((v->MinDPPCLKUsingSingleDPP[k] / v->NoOfDPP[i][j][k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4069  							> v->MaxDppclkRoundedDownToDFSGranularity) || (v->PlaneRequiredDISPCLK > v->MaxDispclkRoundedDownToDFSGranularity)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4070  						v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4071  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4072  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4073  				v->TotalNumberOfActiveDPP[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4074  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4075  					v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4076  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4077  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4078  			v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->WritebackRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4079  			if (v->MaxDispclkRoundedDownToDFSGranularity < v->WritebackRequiredDISPCLK) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4080  				v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4081  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4082  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4083  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4084  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4085  	/*Total Available Pipes Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4086  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4087  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4088  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4089  			if (v->TotalNumberOfActiveDPP[i][j] <= v->MaxNumDPP) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4090  				v->TotalAvailablePipesSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4091  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4092  				v->TotalAvailablePipesSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4093  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4094  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4095  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4096  	/*Display IO and DSC Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4097  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4098  	v->NonsupportedDSCInputBPC = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4099  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4100  		if (!(v->DSCInputBitPerComponent[k] == 12.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4101  				|| v->DSCInputBitPerComponent[k] == 10.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4102  				|| v->DSCInputBitPerComponent[k] == 8.0)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4103  			v->NonsupportedDSCInputBPC = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4104  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4105  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4106  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4107  	/*Number Of DSC Slices*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4108  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4109  		if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4110  			if (v->PixelClockBackEnd[k] > 3200) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4111  				v->NumberOfDSCSlices[k] = dml_ceil(v->PixelClockBackEnd[k] / 400.0, 4.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4112  			} else if (v->PixelClockBackEnd[k] > 1360) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4113  				v->NumberOfDSCSlices[k] = 8;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4114  			} else if (v->PixelClockBackEnd[k] > 680) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4115  				v->NumberOfDSCSlices[k] = 4;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4116  			} else if (v->PixelClockBackEnd[k] > 340) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4117  				v->NumberOfDSCSlices[k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4118  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4119  				v->NumberOfDSCSlices[k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4120  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4121  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4122  			v->NumberOfDSCSlices[k] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4123  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4124  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4125  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4126  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4127  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4128  			v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4129  			v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4130  			if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4131  				if (v->Output[k] == dm_hdmi) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4132  					v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4133  					v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4134  					v->OutputBppPerState[i][k] = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4135  							dml_min(600.0, v->PHYCLKPerState[i]) * 10,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4136  							3,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4137  							v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4138  							v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4139  							v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4140  							v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4141  							false,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4142  							v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4143  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4144  							v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4145  							v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4146  							v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4147  							v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4148  							v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4149  				} else if (v->Output[k] == dm_dp || v->Output[k] == dm_edp) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4150  					if (v->DSCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4151  						v->RequiresDSC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4152  						v->LinkDSCEnable = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4153  						if (v->Output[k] == dm_dp) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4154  							v->RequiresFEC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4155  						} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4156  							v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4157  						}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4158  					} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4159  						v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4160  						v->LinkDSCEnable = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4161  						v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4162  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4163  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4164  					v->Outbpp = BPP_INVALID;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4165  					if (v->PHYCLKPerState[i] >= 270.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4166  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4167  								(1.0 - v->Downspreading / 100.0) * 2700,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4168  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4169  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4170  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4171  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4172  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4173  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4174  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4175  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4176  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4177  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4178  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4179  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4180  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4181  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4182  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4183  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR"
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4184  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4185  					if (v->Outbpp == BPP_INVALID && v->PHYCLKPerState[i] >= 540.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4186  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4187  								(1.0 - v->Downspreading / 100.0) * 5400,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4188  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4189  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4190  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4191  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4192  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4193  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4194  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4195  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4196  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4197  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4198  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4199  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4200  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4201  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4202  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4203  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR2"
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4204  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4205  					if (v->Outbpp == BPP_INVALID && v->PHYCLKPerState[i] >= 810.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4206  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4207  								(1.0 - v->Downspreading / 100.0) * 8100,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4208  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4209  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4210  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4211  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4212  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4213  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4214  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4215  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4216  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4217  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4218  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4219  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4220  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4221  						if (v->Outbpp == BPP_INVALID && v->ForcedOutputLinkBPP[k] == 0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4222  							//if (v->Outbpp == BPP_INVALID && v->DSCEnabled[k] == dm_dsc_enable_only_if_necessary && v->ForcedOutputLinkBPP[k] == 0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4223  							v->RequiresDSC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4224  							v->LinkDSCEnable = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4225  							if (v->Output[k] == dm_dp) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4226  								v->RequiresFEC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4227  							}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4228  							v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4229  									(1.0 - v->Downspreading / 100.0) * 8100,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4230  									v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4231  									v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4232  									v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4233  									v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4234  									v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4235  									v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4236  									v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4237  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4238  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4239  									v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4240  									v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4241  									v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4242  									v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4243  						}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4244  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4245  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4246  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR3"
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4247  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4248  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4249  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4250  				v->OutputBppPerState[i][k] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4251  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4252  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4253  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4254  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4255  		v->DIOSupport[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4256  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4257  			if (v->BlendingAndTiming[k] == k && (v->Output[k] == dm_dp || v->Output[k] == dm_edp || v->Output[k] == dm_hdmi)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4258  					&& (v->OutputBppPerState[i][k] == 0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4259  							|| (v->OutputFormat[k] == dm_420 && v->Interlace[k] == true && v->ProgressiveToInterlaceUnitInOPP == true))) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4260  				v->DIOSupport[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4261  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4262  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4263  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4264  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4265  	for (i = 0; i < v->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4266  		v->ODMCombine4To1SupportCheckOK[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4267  		for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4268  			if (v->BlendingAndTiming[k] == k && v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4269  					&& (v->ODMCombine4To1Supported == false || v->Output[k] == dm_dp || v->Output[k] == dm_edp || v->Output[k] == dm_hdmi)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4270  				v->ODMCombine4To1SupportCheckOK[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4271  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4272  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4273  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4274  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4275  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4276  		v->DSCCLKRequiredMoreThanSupported[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4277  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4278  			if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4279  				if (v->Output[k] == dm_dp || v->Output[k] == dm_edp) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4280  					if (v->OutputFormat[k] == dm_420) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4281  						v->DSCFormatFactor = 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4282  					} else if (v->OutputFormat[k] == dm_444) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4283  						v->DSCFormatFactor = 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4284  					} else if (v->OutputFormat[k] == dm_n422) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4285  						v->DSCFormatFactor = 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4286  					} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4287  						v->DSCFormatFactor = 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4288  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4289  					if (v->RequiresDSC[i][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4290  						if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4291  							if (v->PixelClockBackEnd[k] / 12.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4292  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4293  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4294  							}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4295  						} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4296  							if (v->PixelClockBackEnd[k] / 6.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4297  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4298  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4299  							}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4300  						} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4301  							if (v->PixelClockBackEnd[k] / 3.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4302  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4303  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4304  							}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4305  						}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4306  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4307  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4308  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4309  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4310  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4311  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4312  		v->NotEnoughDSCUnits[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4313  		v->TotalDSCUnitsRequired = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4314  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4315  			if (v->RequiresDSC[i][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4316  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4317  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 4.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4318  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4319  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4320  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4321  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 1.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4322  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4323  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4324  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4325  		if (v->TotalDSCUnitsRequired > v->NumberOfDSC) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4326  			v->NotEnoughDSCUnits[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4327  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4328  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4329  	/*DSC Delay per state*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4330  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4331  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4332  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4333  			if (v->OutputBppPerState[i][k] == BPP_INVALID) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4334  				v->BPP = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4335  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4336  				v->BPP = v->OutputBppPerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4337  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4338  			if (v->RequiresDSC[i][k] == true && v->BPP != 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4339  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_disabled) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4340  					v->DSCDelayPerState[i][k] = dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4341  							v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4342  							v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4343  							dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4344  							v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4345  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4346  							v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4347  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4348  					v->DSCDelayPerState[i][k] = 2.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4349  							* dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4350  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4351  									v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4352  									dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4353  									v->NumberOfDSCSlices[k] / 2,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4354  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4355  									v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4356  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4357  					v->DSCDelayPerState[i][k] = 4.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4358  							* (dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4359  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4360  									v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4361  									dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4362  									v->NumberOfDSCSlices[k] / 4,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4363  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4364  									v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4365  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4366  				v->DSCDelayPerState[i][k] = v->DSCDelayPerState[i][k] * v->PixelClock[k] / v->PixelClockBackEnd[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4367  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4368  				v->DSCDelayPerState[i][k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4369  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4370  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4371  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4372  			for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4373  				if (v->BlendingAndTiming[k] == m && v->RequiresDSC[i][m] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4374  					v->DSCDelayPerState[i][k] = v->DSCDelayPerState[i][m];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4375  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4376  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4377  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4378  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4379  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4380  	//Calculate Swath, DET Configuration, DCFCLKDeepSleep
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4381  	//
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4382  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4383  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4384  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4385  				v->RequiredDPPCLKThisState[k] = v->RequiredDPPCLK[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4386  				v->NoOfDPPThisState[k] = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4387  				v->ODMCombineEnableThisState[k] = v->ODMCombineEnablePerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4388  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4389  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4390  			CalculateSwathAndDETConfiguration(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4391  					false,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4392  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4393  					v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4394  					v->MaximumSwathWidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4395  					v->MaximumSwathWidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4396  					v->SourceScan,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4397  					v->SourcePixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4398  					v->SurfaceTiling,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4399  					v->ViewportWidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4400  					v->ViewportHeight,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4401  					v->SurfaceWidthY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4402  					v->SurfaceWidthC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4403  					v->SurfaceHeightY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4404  					v->SurfaceHeightC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4405  					v->Read256BlockHeightY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4406  					v->Read256BlockHeightC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4407  					v->Read256BlockWidthY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4408  					v->Read256BlockWidthC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4409  					v->ODMCombineEnableThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4410  					v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4411  					v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4412  					v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4413  					v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4414  					v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4415  					v->HActive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4416  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4417  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4418  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4419  					v->swath_width_luma_ub_this_state,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4420  					v->swath_width_chroma_ub_this_state,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4421  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4422  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4423  					v->SwathHeightYThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4424  					v->SwathHeightCThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4425  					v->DETBufferSizeYThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4426  					v->DETBufferSizeCThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4427  					v->dummystring,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4428  					&v->ViewportSizeSupport[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4429  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4430  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4431  				v->swath_width_luma_ub_all_states[i][j][k] = v->swath_width_luma_ub_this_state[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4432  				v->swath_width_chroma_ub_all_states[i][j][k] = v->swath_width_chroma_ub_this_state[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4433  				v->SwathWidthYAllStates[i][j][k] = v->SwathWidthYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4434  				v->SwathWidthCAllStates[i][j][k] = v->SwathWidthCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4435  				v->SwathHeightYAllStates[i][j][k] = v->SwathHeightYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4436  				v->SwathHeightCAllStates[i][j][k] = v->SwathHeightCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4437  				v->DETBufferSizeYAllStates[i][j][k] = v->DETBufferSizeYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4438  				v->DETBufferSizeCAllStates[i][j][k] = v->DETBufferSizeCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4439  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4440  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4441  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4442  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4443  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4444  		v->cursor_bw[k] = v->NumberOfCursors[k] * v->CursorWidth[k][0] * v->CursorBPP[k][0] / 8.0 / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4445  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4446  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4447  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4448  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4449  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4450  				v->swath_width_luma_ub_this_state[k] = v->swath_width_luma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4451  				v->swath_width_chroma_ub_this_state[k] = v->swath_width_chroma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4452  				v->SwathWidthYThisState[k] = v->SwathWidthYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4453  				v->SwathWidthCThisState[k] = v->SwathWidthCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4454  				v->SwathHeightYThisState[k] = v->SwathHeightYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4455  				v->SwathHeightCThisState[k] = v->SwathHeightCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4456  				v->DETBufferSizeYThisState[k] = v->DETBufferSizeYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4457  				v->DETBufferSizeCThisState[k] = v->DETBufferSizeCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4458  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4459  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4460  			v->TotalNumberOfDCCActiveDPP[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4461  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4462  				if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4463  					v->TotalNumberOfDCCActiveDPP[i][j] = v->TotalNumberOfDCCActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4464  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4465  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4466  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4467  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4468  				if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4469  						|| v->SourcePixelFormat[k] == dm_rgbe_alpha) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4470  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4471  					if ((v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12) && v->SourceScan[k] != dm_vert) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4472  						v->PTEBufferSizeInRequestsForLuma = (v->PTEBufferSizeInRequestsLuma + v->PTEBufferSizeInRequestsChroma) / 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4473  						v->PTEBufferSizeInRequestsForChroma = v->PTEBufferSizeInRequestsForLuma;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4474  					} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4475  						v->PTEBufferSizeInRequestsForLuma = v->PTEBufferSizeInRequestsLuma;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4476  						v->PTEBufferSizeInRequestsForChroma = v->PTEBufferSizeInRequestsChroma;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4477  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4478  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4479  					v->PDEAndMetaPTEBytesPerFrameC = CalculateVMAndRowBytes(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4480  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4481  							v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4482  							v->Read256BlockHeightC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4483  							v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4484  							v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4485  							v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4486  							v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4487  							v->SourceScan[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4488  							v->SwathWidthCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4489  							v->ViewportHeightChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4490  							v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4491  							v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4492  							v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4493  							v->GPUVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4494  							v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4495  							v->PTEBufferSizeInRequestsForChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4496  							v->PitchC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4497  							0.0,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4498  							&v->MacroTileWidthC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4499  							&v->MetaRowBytesC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4500  							&v->DPTEBytesPerRowC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4501  							&v->PTEBufferSizeNotExceededC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4502  							&v->dummyinteger7,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4503  							&v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4504  							&v->dummyinteger28,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4505  							&v->dummyinteger26,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4506  							&v->dummyinteger23,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4507  							&v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4508  							&v->dummyinteger8,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4509  							&v->dummyinteger9,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4510  							&v->dummyinteger19,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4511  							&v->dummyinteger20,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4512  							&v->dummyinteger17,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4513  							&v->dummyinteger10,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4514  							&v->dummyinteger11);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4515  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4516  					v->PrefetchLinesC[i][j][k] = CalculatePrefetchSourceLines(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4517  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4518  							v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4519  							v->VTAPsChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4520  							v->Interlace[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4521  							v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4522  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4523  							v->ViewportYStartC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4524  							&v->PrefillC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4525  							&v->MaxNumSwC[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4526  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4527  					v->PTEBufferSizeInRequestsForLuma = v->PTEBufferSizeInRequestsLuma + v->PTEBufferSizeInRequestsChroma;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4528  					v->PTEBufferSizeInRequestsForChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4529  					v->PDEAndMetaPTEBytesPerFrameC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4530  					v->MetaRowBytesC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4531  					v->DPTEBytesPerRowC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4532  					v->PrefetchLinesC[i][j][k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4533  					v->PTEBufferSizeNotExceededC[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4534  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4535  				v->PDEAndMetaPTEBytesPerFrameY = CalculateVMAndRowBytes(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4536  						mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4537  						v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4538  						v->Read256BlockHeightY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4539  						v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4540  						v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4541  						v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4542  						v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4543  						v->SourceScan[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4544  						v->SwathWidthYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4545  						v->ViewportHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4546  						v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4547  						v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4548  						v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4549  						v->GPUVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4550  						v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4551  						v->PTEBufferSizeInRequestsForLuma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4552  						v->PitchY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4553  						v->DCCMetaPitchY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4554  						&v->MacroTileWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4555  						&v->MetaRowBytesY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4556  						&v->DPTEBytesPerRowY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4557  						&v->PTEBufferSizeNotExceededY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4558  						v->dummyinteger4,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4559  						&v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4560  						&v->dummyinteger29,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4561  						&v->dummyinteger27,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4562  						&v->dummyinteger24,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4563  						&v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4564  						&v->dummyinteger25,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4565  						&v->dpte_group_bytes[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4566  						&v->dummyinteger21,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4567  						&v->dummyinteger22,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4568  						&v->dummyinteger18,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4569  						&v->dummyinteger5,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4570  						&v->dummyinteger6);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4571  				v->PrefetchLinesY[i][j][k] = CalculatePrefetchSourceLines(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4572  						mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4573  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4574  						v->vtaps[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4575  						v->Interlace[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4576  						v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4577  						v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4578  						v->ViewportYStartY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4579  						&v->PrefillY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4580  						&v->MaxNumSwY[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4581  				v->PDEAndMetaPTEBytesPerFrame[i][j][k] = v->PDEAndMetaPTEBytesPerFrameY + v->PDEAndMetaPTEBytesPerFrameC;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4582  				v->MetaRowBytes[i][j][k] = v->MetaRowBytesY + v->MetaRowBytesC;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4583  				v->DPTEBytesPerRow[i][j][k] = v->DPTEBytesPerRowY + v->DPTEBytesPerRowC;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4584  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4585  				CalculateRowBandwidth(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4586  						v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4587  						v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4588  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4589  						v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4590  						v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4591  						v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4592  						v->MetaRowBytesY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4593  						v->MetaRowBytesC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4594  						v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4595  						v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4596  						v->DPTEBytesPerRowY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4597  						v->DPTEBytesPerRowC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4598  						v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4599  						v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4600  						&v->meta_row_bandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4601  						&v->dpte_row_bandwidth[i][j][k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4602  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4603  			v->UrgLatency[i] = CalculateUrgentLatency(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4604  					v->UrgentLatencyPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4605  					v->UrgentLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4606  					v->UrgentLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4607  					v->DoUrgentLatencyAdjustment,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4608  					v->UrgentLatencyAdjustmentFabricClockComponent,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4609  					v->UrgentLatencyAdjustmentFabricClockReference,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4610  					v->FabricClockPerState[i]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4611  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4612  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4613  				CalculateUrgentBurstFactor(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4614  						v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4615  						v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4616  						v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4617  						v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4618  						v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4619  						v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4620  						v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4621  						v->CursorBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4622  						v->CursorWidth[k][0],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4623  						v->CursorBPP[k][0],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4624  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4625  						v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4626  						v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4627  						v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4628  						v->DETBufferSizeYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4629  						v->DETBufferSizeCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4630  						&v->UrgentBurstFactorCursor[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4631  						&v->UrgentBurstFactorLuma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4632  						&v->UrgentBurstFactorChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4633  						&NotUrgentLatencyHiding[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4634  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4635  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4636  			v->NotUrgentLatencyHiding[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4637  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4638  				if (NotUrgentLatencyHiding[k]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4639  					v->NotUrgentLatencyHiding[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4640  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4641  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4642  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4643  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4644  				v->VActivePixelBandwidth[i][j][k] = v->ReadBandwidthLuma[k] * v->UrgentBurstFactorLuma[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4645  						+ v->ReadBandwidthChroma[k] * v->UrgentBurstFactorChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4646  				v->VActiveCursorBandwidth[i][j][k] = v->cursor_bw[k] * v->UrgentBurstFactorCursor[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4647  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4648  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4649  			v->TotalVActivePixelBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4650  			v->TotalVActiveCursorBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4651  			v->TotalMetaRowBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4652  			v->TotalDPTERowBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4653  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4654  				v->TotalVActivePixelBandwidth[i][j] = v->TotalVActivePixelBandwidth[i][j] + v->VActivePixelBandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4655  				v->TotalVActiveCursorBandwidth[i][j] = v->TotalVActiveCursorBandwidth[i][j] + v->VActiveCursorBandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4656  				v->TotalMetaRowBandwidth[i][j] = v->TotalMetaRowBandwidth[i][j] + v->NoOfDPP[i][j][k] * v->meta_row_bandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4657  				v->TotalDPTERowBandwidth[i][j] = v->TotalDPTERowBandwidth[i][j] + v->NoOfDPP[i][j][k] * v->dpte_row_bandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4658  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4659  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4660  			CalculateDCFCLKDeepSleep(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4661  					mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4662  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4663  					v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4664  					v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4665  					v->VRatio,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4666  					v->VRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4667  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4668  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4669  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4670  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4671  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4672  					v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4673  					v->PSCL_FACTOR,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4674  					v->PSCL_FACTOR_CHROMA,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4675  					v->RequiredDPPCLKThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4676  					v->ReadBandwidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4677  					v->ReadBandwidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4678  					v->ReturnBusWidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4679  					&v->ProjectedDCFCLKDeepSleep[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4680  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4681  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4682  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4683  	//Calculate Return BW
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4684  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4685  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4686  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4687  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4688  				if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4689  					if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4690  						v->WritebackDelayTime[k] = v->WritebackLatency
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4691  								+ CalculateWriteBackDelay(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4692  										v->WritebackPixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4693  										v->WritebackHRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4694  										v->WritebackVRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4695  										v->WritebackVTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4696  										v->WritebackDestinationWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4697  										v->WritebackDestinationHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4698  										v->WritebackSourceHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4699  										v->HTotal[k]) / v->RequiredDISPCLK[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4700  					} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4701  						v->WritebackDelayTime[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4702  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4703  					for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4704  						if (v->BlendingAndTiming[m] == k && v->WritebackEnable[m] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4705  							v->WritebackDelayTime[k] = dml_max(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4706  									v->WritebackDelayTime[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4707  									v->WritebackLatency
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4708  											+ CalculateWriteBackDelay(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4709  													v->WritebackPixelFormat[m],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4710  													v->WritebackHRatio[m],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4711  													v->WritebackVRatio[m],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4712  													v->WritebackVTaps[m],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4713  													v->WritebackDestinationWidth[m],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4714  													v->WritebackDestinationHeight[m],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4715  													v->WritebackSourceHeight[m],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4716  													v->HTotal[m]) / v->RequiredDISPCLK[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4717  						}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4718  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4719  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4720  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4721  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4722  				for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4723  					if (v->BlendingAndTiming[k] == m) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4724  						v->WritebackDelayTime[k] = v->WritebackDelayTime[m];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4725  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4726  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4727  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4728  			v->MaxMaxVStartup[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4729  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4730  				v->MaximumVStartup[i][j][k] = v->VTotal[k] - v->VActive[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4731  						- dml_max(1.0, dml_ceil(1.0 * v->WritebackDelayTime[k] / (v->HTotal[k] / v->PixelClock[k]), 1.0));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4732  				v->MaxMaxVStartup[i][j] = dml_max(v->MaxMaxVStartup[i][j], v->MaximumVStartup[i][j][k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4733  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4734  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4735  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4736  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4737  	ReorderingBytes = v->NumberOfChannels
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4738  			* dml_max3(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4739  					v->UrgentOutOfOrderReturnPerChannelPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4740  					v->UrgentOutOfOrderReturnPerChannelPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4741  					v->UrgentOutOfOrderReturnPerChannelVMDataOnly);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4742  	v->FinalDRAMClockChangeLatency = (v->DRAMClockChangeLatencyOverride > 0 ? v->DRAMClockChangeLatencyOverride : v->DRAMClockChangeLatency);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4743  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4744  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4745  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4746  			v->DCFCLKState[i][j] = v->DCFCLKPerState[i];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4747  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4748  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4749  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4750  	if (v->UseMinimumRequiredDCFCLK == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4751  		UseMinimumDCFCLK(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4752  				mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4753  				v->MaxInterDCNTileRepeaters,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4754  				MaxPrefetchMode,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4755  				v->FinalDRAMClockChangeLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4756  				v->SREnterPlusExitTime,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4757  				v->ReturnBusWidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4758  				v->RoundTripPingLatencyCycles,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4759  				ReorderingBytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4760  				v->PixelChunkSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4761  				v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4762  				v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4763  				v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4764  				v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4765  				v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4766  				v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4767  				v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4768  				v->DynamicMetadataVMEnabled,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4769  				v->ImmediateFlipRequirement,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4770  				v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4771  				v->MaxAveragePercentOfIdealSDPPortBWDisplayCanUseInNormalSystemOperation,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4772  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4773  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4774  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4775  				v->VTotal,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4776  				v->VActive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4777  				v->DynamicMetadataTransmittedBytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4778  				v->DynamicMetadataLinesBeforeActiveRequired,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4779  				v->Interlace,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4780  				v->RequiredDPPCLK,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4781  				v->RequiredDISPCLK,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4782  				v->UrgLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4783  				v->NoOfDPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4784  				v->ProjectedDCFCLKDeepSleep,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4785  				v->MaximumVStartup,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4786  				v->TotalVActivePixelBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4787  				v->TotalVActiveCursorBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4788  				v->TotalMetaRowBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4789  				v->TotalDPTERowBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4790  				v->TotalNumberOfActiveDPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4791  				v->TotalNumberOfDCCActiveDPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4792  				v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4793  				v->PrefetchLinesY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4794  				v->PrefetchLinesC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4795  				v->swath_width_luma_ub_all_states,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4796  				v->swath_width_chroma_ub_all_states,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4797  				v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4798  				v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4799  				v->HTotal,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4800  				v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4801  				v->PDEAndMetaPTEBytesPerFrame,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4802  				v->DPTEBytesPerRow,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4803  				v->MetaRowBytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4804  				v->DynamicMetadataEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4805  				v->VActivePixelBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4806  				v->VActiveCursorBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4807  				v->ReadBandwidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4808  				v->ReadBandwidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4809  				v->DCFCLKPerState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4810  				v->DCFCLKState);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4811  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4812  		if (v->ClampMinDCFCLK) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4813  			/* Clamp calculated values to actual minimum */
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4814  			for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4815  				for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4816  					if (v->DCFCLKState[i][j] < mode_lib->soc.min_dcfclk) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4817  						v->DCFCLKState[i][j] = mode_lib->soc.min_dcfclk;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4818  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4819  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4820  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4821  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4822  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4823  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4824  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4825  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4826  			v->IdealSDPPortBandwidthPerState[i][j] = dml_min3(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4827  					v->ReturnBusWidth * v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4828  					v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4829  					v->FabricClockPerState[i] * v->FabricDatapathToDCNDataReturn);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4830  			if (v->HostVMEnable != true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4831  				v->ReturnBWPerState[i][j] = v->IdealSDPPortBandwidthPerState[i][j] * v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelDataOnly
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4832  						/ 100;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4833  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4834  				v->ReturnBWPerState[i][j] = v->IdealSDPPortBandwidthPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4835  						* v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData / 100;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4836  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4837  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4838  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4839  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4840  	//Re-ordering Buffer Support Check
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4841  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4842  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4843  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4844  			if ((v->ROBBufferSizeInKByte - v->PixelChunkSizeInKByte) * 1024 / v->ReturnBWPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4845  					> (v->RoundTripPingLatencyCycles + 32) / v->DCFCLKState[i][j] + ReorderingBytes / v->ReturnBWPerState[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4846  				v->ROBSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4847  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4848  				v->ROBSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4849  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4850  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4851  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4852  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4853  	//Vertical Active BW support check
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4854  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4855  	MaxTotalVActiveRDBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4856  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4857  		MaxTotalVActiveRDBandwidth = MaxTotalVActiveRDBandwidth + v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4858  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4859  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4860  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4861  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4862  			v->MaxTotalVerticalActiveAvailableBandwidth[i][j] = dml_min(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4863  					v->IdealSDPPortBandwidthPerState[i][j] * v->MaxAveragePercentOfIdealSDPPortBWDisplayCanUseInNormalSystemOperation / 100,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4864  					v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth * v->MaxAveragePercentOfIdealDRAMBWDisplayCanUseInNormalSystemOperation
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4865  							/ 100);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4866  			if (MaxTotalVActiveRDBandwidth <= v->MaxTotalVerticalActiveAvailableBandwidth[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4867  				v->TotalVerticalActiveBandwidthSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4868  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4869  				v->TotalVerticalActiveBandwidthSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4870  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4871  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4872  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4873  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4874  	//Prefetch Check
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4875  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4876  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4877  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4878  			int NextPrefetchModeState = MinPrefetchMode;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4879  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4880  			v->TimeCalc = 24 / v->ProjectedDCFCLKDeepSleep[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4881  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4882  			v->BandwidthWithoutPrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4883  			if (v->TotalVActivePixelBandwidth[i][j] + v->TotalVActiveCursorBandwidth[i][j] + v->TotalMetaRowBandwidth[i][j] + v->TotalDPTERowBandwidth[i][j]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4884  					> v->ReturnBWPerState[i][j] || v->NotUrgentLatencyHiding[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4885  				v->BandwidthWithoutPrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4886  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4887  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4888  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4889  				v->NoOfDPPThisState[k] = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4890  				v->swath_width_luma_ub_this_state[k] = v->swath_width_luma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4891  				v->swath_width_chroma_ub_this_state[k] = v->swath_width_chroma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4892  				v->SwathWidthYThisState[k] = v->SwathWidthYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4893  				v->SwathWidthCThisState[k] = v->SwathWidthCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4894  				v->SwathHeightYThisState[k] = v->SwathHeightYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4895  				v->SwathHeightCThisState[k] = v->SwathHeightCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4896  				v->DETBufferSizeYThisState[k] = v->DETBufferSizeYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4897  				v->DETBufferSizeCThisState[k] = v->DETBufferSizeCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4898  				v->ODMCombineEnabled[k] = v->ODMCombineEnablePerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4899  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4900  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4901  			v->ExtraLatency = CalculateExtraLatency(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4902  					v->RoundTripPingLatencyCycles,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4903  					ReorderingBytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4904  					v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4905  					v->TotalNumberOfActiveDPP[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4906  					v->PixelChunkSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4907  					v->TotalNumberOfDCCActiveDPP[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4908  					v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4909  					v->ReturnBWPerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4910  					v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4911  					v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4912  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4913  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4914  					v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4915  					v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4916  					v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4917  					v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4918  					v->HostVMMaxNonCachedPageTableLevels);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4919  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4920  			v->NextMaxVStartup = v->MaxMaxVStartup[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4921  			do {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4922  				v->PrefetchModePerState[i][j] = NextPrefetchModeState;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4923  				v->MaxVStartup = v->NextMaxVStartup;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4924  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4925  				v->TWait = CalculateTWait(v->PrefetchModePerState[i][j], v->FinalDRAMClockChangeLatency, v->UrgLatency[i], v->SREnterPlusExitTime);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4926  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4927  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4928  					Pipe myPipe = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4929  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4930  					myPipe.DPPCLK = v->RequiredDPPCLK[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4931  					myPipe.DISPCLK = v->RequiredDISPCLK[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4932  					myPipe.PixelClock = v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4933  					myPipe.DCFCLKDeepSleep = v->ProjectedDCFCLKDeepSleep[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4934  					myPipe.DPPPerPlane = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4935  					myPipe.ScalerEnabled = v->ScalerEnabled[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4936  					myPipe.SourceScan = v->SourceScan[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4937  					myPipe.BlockWidth256BytesY = v->Read256BlockWidthY[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4938  					myPipe.BlockHeight256BytesY = v->Read256BlockHeightY[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4939  					myPipe.BlockWidth256BytesC = v->Read256BlockWidthC[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4940  					myPipe.BlockHeight256BytesC = v->Read256BlockHeightC[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4941  					myPipe.InterlaceEnable = v->Interlace[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4942  					myPipe.NumberOfCursors = v->NumberOfCursors[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4943  					myPipe.VBlank = v->VTotal[k] - v->VActive[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4944  					myPipe.HTotal = v->HTotal[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4945  					myPipe.DCCEnable = v->DCCEnable[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4946  					myPipe.ODMCombineEnabled = !!v->ODMCombineEnabled[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4947  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4948  					v->NoTimeForPrefetch[i][j][k] = CalculatePrefetchSchedule(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4949  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4950  							v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4951  							v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4952  							&myPipe,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4953  							v->DSCDelayPerState[i][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4954  							v->DPPCLKDelaySubtotal + v->DPPCLKDelayCNVCFormater,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4955  							v->DPPCLKDelaySCL,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4956  							v->DPPCLKDelaySCLLBOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4957  							v->DPPCLKDelayCNVCCursor,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4958  							v->DISPCLKDelaySubtotal,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4959  							v->SwathWidthYThisState[k] / v->HRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4960  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4961  							v->MaxInterDCNTileRepeaters,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4962  							dml_min(v->MaxVStartup, v->MaximumVStartup[i][j][k]),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4963  							v->MaximumVStartup[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4964  							v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4965  							v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4966  							v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4967  							v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4968  							v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4969  							v->DynamicMetadataEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4970  							v->DynamicMetadataVMEnabled,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4971  							v->DynamicMetadataLinesBeforeActiveRequired[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4972  							v->DynamicMetadataTransmittedBytes[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4973  							v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4974  							v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4975  							v->TimeCalc,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4976  							v->PDEAndMetaPTEBytesPerFrame[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4977  							v->MetaRowBytes[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4978  							v->DPTEBytesPerRow[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4979  							v->PrefetchLinesY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4980  							v->SwathWidthYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4981  							v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4982  							v->PrefillY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4983  							v->MaxNumSwY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4984  							v->PrefetchLinesC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4985  							v->SwathWidthCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4986  							v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4987  							v->PrefillC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4988  							v->MaxNumSwC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4989  							v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4990  							v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4991  							v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4992  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4993  							v->TWait,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4994  							v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4995  							&v->DSTXAfterScaler[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4996  							&v->DSTYAfterScaler[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4997  							&v->LineTimesForPrefetch[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4998  							&v->PrefetchBW[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  4999  							&v->LinesForMetaPTE[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5000  							&v->LinesForMetaAndDPTERow[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5001  							&v->VRatioPreY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5002  							&v->VRatioPreC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5003  							&v->RequiredPrefetchPixelDataBWLuma[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5004  							&v->RequiredPrefetchPixelDataBWChroma[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5005  							&v->NoTimeForDynamicMetadata[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5006  							&v->Tno_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5007  							&v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5008  							&v->Tdmdl_vm[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5009  							&v->Tdmdl[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5010  							&v->VUpdateOffsetPix[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5011  							&v->VUpdateWidthPix[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5012  							&v->VReadyOffsetPix[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5013  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5014  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5015  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5016  					CalculateUrgentBurstFactor(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5017  							v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5018  							v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5019  							v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5020  							v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5021  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5022  							v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5023  							v->UrgentLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5024  							v->CursorBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5025  							v->CursorWidth[k][0],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5026  							v->CursorBPP[k][0],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5027  							v->VRatioPreY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5028  							v->VRatioPreC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5029  							v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5030  							v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5031  							v->DETBufferSizeYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5032  							v->DETBufferSizeCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5033  							&v->UrgentBurstFactorCursorPre[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5034  							&v->UrgentBurstFactorLumaPre[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5035  							&v->UrgentBurstFactorChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5036  							&v->NoUrgentLatencyHidingPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5037  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5038  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5039  				v->MaximumReadBandwidthWithPrefetch = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5040  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5041  					v->cursor_bw_pre[k] = v->NumberOfCursors[k] * v->CursorWidth[k][0] * v->CursorBPP[k][0] / 8.0 / (v->HTotal[k] / v->PixelClock[k])
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5042  							* v->VRatioPreY[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5043  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5044  					v->MaximumReadBandwidthWithPrefetch = v->MaximumReadBandwidthWithPrefetch
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5045  							+ dml_max4(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5046  									v->VActivePixelBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5047  									v->VActiveCursorBandwidth[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5048  											+ v->NoOfDPP[i][j][k] * (v->meta_row_bandwidth[i][j][k] + v->dpte_row_bandwidth[i][j][k]),
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5049  									v->NoOfDPP[i][j][k] * v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5050  									v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5051  											* (v->RequiredPrefetchPixelDataBWLuma[i][j][k] * v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5052  													+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5053  															* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5054  											+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5055  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5056  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5057  				v->NotEnoughUrgentLatencyHidingPre = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5058  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5059  					if (v->NoUrgentLatencyHidingPre[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5060  						v->NotEnoughUrgentLatencyHidingPre = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5061  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5062  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5063  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5064  				v->PrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5065  				if (v->BandwidthWithoutPrefetchSupported[i][j] == false || v->MaximumReadBandwidthWithPrefetch > v->ReturnBWPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5066  						|| v->NotEnoughUrgentLatencyHidingPre == 1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5067  					v->PrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5068  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5069  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5070  					if (v->LineTimesForPrefetch[k] < 2.0 || v->LinesForMetaPTE[k] >= 32.0 || v->LinesForMetaAndDPTERow[k] >= 16.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5071  							|| v->NoTimeForPrefetch[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5072  						v->PrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5073  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5074  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5075  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5076  				v->DynamicMetadataSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5077  				for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5078  					if (v->NoTimeForDynamicMetadata[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5079  						v->DynamicMetadataSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5080  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5081  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5082  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5083  				v->VRatioInPrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5084  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5085  					if (v->VRatioPreY[i][j][k] > 4.0 || v->VRatioPreC[i][j][k] > 4.0 || v->NoTimeForPrefetch[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5086  						v->VRatioInPrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5087  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5088  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5089  				v->AnyLinesForVMOrRowTooLarge = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5090  				for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5091  					if (v->LinesForMetaAndDPTERow[k] >= 16 || v->LinesForMetaPTE[k] >= 32) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5092  						v->AnyLinesForVMOrRowTooLarge = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5093  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5094  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5095  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5096  				if (v->PrefetchSupported[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5097  					v->BandwidthAvailableForImmediateFlip = v->ReturnBWPerState[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5098  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5099  						v->BandwidthAvailableForImmediateFlip = v->BandwidthAvailableForImmediateFlip
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5100  								- dml_max(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5101  										v->VActivePixelBandwidth[i][j][k] + v->VActiveCursorBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5102  										v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5103  												* (v->RequiredPrefetchPixelDataBWLuma[i][j][k] * v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5104  														+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5105  																* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5106  												+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5107  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5108  					v->TotImmediateFlipBytes = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5109  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5110  						v->TotImmediateFlipBytes = v->TotImmediateFlipBytes + v->NoOfDPP[i][j][k] * v->PDEAndMetaPTEBytesPerFrame[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5111  								+ v->MetaRowBytes[i][j][k] + v->DPTEBytesPerRow[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5112  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5113  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5114  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5115  						CalculateFlipSchedule(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5116  								mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5117  								v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5118  								v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5119  								v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5120  								v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5121  								v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5122  								v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5123  								v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5124  								v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5125  								v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5126  								v->PDEAndMetaPTEBytesPerFrame[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5127  								v->MetaRowBytes[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5128  								v->DPTEBytesPerRow[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5129  								v->BandwidthAvailableForImmediateFlip,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5130  								v->TotImmediateFlipBytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5131  								v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5132  								v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5133  								v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5134  								v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5135  								v->Tno_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5136  								v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5137  								v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5138  								v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5139  								v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5140  								v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5141  								&v->DestinationLinesToRequestVMInImmediateFlip[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5142  								&v->DestinationLinesToRequestRowInImmediateFlip[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5143  								&v->final_flip_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5144  								&v->ImmediateFlipSupportedForPipe[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5145  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5146  					v->total_dcn_read_bw_with_flip = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5147  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5148  						v->total_dcn_read_bw_with_flip = v->total_dcn_read_bw_with_flip
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5149  								+ dml_max3(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5150  										v->NoOfDPP[i][j][k] * v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5151  										v->NoOfDPP[i][j][k] * v->final_flip_bw[k] + v->VActivePixelBandwidth[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5152  												+ v->VActiveCursorBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5153  										v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5154  												* (v->final_flip_bw[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5155  														+ v->RequiredPrefetchPixelDataBWLuma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5156  																* v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5157  														+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5158  																* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5159  												+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5160  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5161  					v->ImmediateFlipSupportedForState[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5162  					if (v->total_dcn_read_bw_with_flip > v->ReturnBWPerState[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5163  						v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5164  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5165  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5166  						if (v->ImmediateFlipSupportedForPipe[k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5167  							v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5168  						}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5169  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5170  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5171  					v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5172  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5173  				if (v->MaxVStartup <= 13 || v->AnyLinesForVMOrRowTooLarge == false) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5174  					v->NextMaxVStartup = v->MaxMaxVStartup[i][j];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5175  					NextPrefetchModeState = NextPrefetchModeState + 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5176  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5177  					v->NextMaxVStartup = v->NextMaxVStartup - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5178  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5179  			} while (!((v->PrefetchSupported[i][j] == true && v->DynamicMetadataSupported[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5180  					&& ((v->HostVMEnable == false && v->ImmediateFlipRequirement != dm_immediate_flip_required)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5181  							|| v->ImmediateFlipSupportedForState[i][j] == true))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5182  					|| (v->NextMaxVStartup == v->MaxMaxVStartup[i][j] && NextPrefetchModeState > MaxPrefetchMode)));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5183  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5184  			CalculateWatermarksAndDRAMSpeedChangeSupport(
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5185  					mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5186  					v->PrefetchModePerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5187  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5188  					v->MaxLineBufferLines,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5189  					v->LineBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5190  					v->DPPOutputBufferPixels,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5191  					v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5192  					v->WritebackInterfaceBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5193  					v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5194  					v->ReturnBWPerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5195  					v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5196  					v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5197  					v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5198  					v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5199  					v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5200  					v->WritebackLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5201  					v->WritebackChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5202  					v->SOCCLKPerState[i],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5203  					v->FinalDRAMClockChangeLatency,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5204  					v->SRExitTime,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5205  					v->SREnterPlusExitTime,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5206  					v->ProjectedDCFCLKDeepSleep[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5207  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5208  					v->DCCEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5209  					v->RequiredDPPCLKThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5210  					v->DETBufferSizeYThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5211  					v->DETBufferSizeCThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5212  					v->SwathHeightYThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5213  					v->SwathHeightCThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5214  					v->LBBitPerPixel,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5215  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5216  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5217  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5218  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5219  					v->vtaps,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5220  					v->VTAPsChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5221  					v->VRatio,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5222  					v->VRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5223  					v->HTotal,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5224  					v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5225  					v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5226  					v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5227  					v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5228  					v->DSTXAfterScaler,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5229  					v->DSTYAfterScaler,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5230  					v->WritebackEnable,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5231  					v->WritebackPixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5232  					v->WritebackDestinationWidth,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5233  					v->WritebackDestinationHeight,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5234  					v->WritebackSourceHeight,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5235  					&v->DRAMClockChangeSupport[i][j],
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5236  					&v->UrgentWatermark,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5237  					&v->WritebackUrgentWatermark,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5238  					&v->DRAMClockChangeWatermark,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5239  					&v->WritebackDRAMClockChangeWatermark,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5240  					&v->StutterExitWatermark,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5241  					&v->StutterEnterPlusExitWatermark,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5242  					&v->MinActiveDRAMClockChangeLatencySupported);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5243  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5244  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5245  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5246  	/*PTE Buffer Size Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5247  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5248  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5249  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5250  			v->PTEBufferSizeNotExceeded[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5251  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5252  				if (v->PTEBufferSizeNotExceededY[i][j][k] == false || v->PTEBufferSizeNotExceededC[i][j][k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5253  					v->PTEBufferSizeNotExceeded[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5254  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5255  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5256  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5257  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5258  	/*Cursor Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5259  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5260  	v->CursorSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5261  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5262  		if (v->CursorWidth[k][0] > 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5263  			if (v->CursorBPP[k][0] == 64 && v->Cursor64BppSupport == false) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5264  				v->CursorSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5265  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5266  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5267  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5268  	/*Valid Pitch Check*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5269  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5270  	v->PitchSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5271  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5272  		v->AlignedYPitch[k] = dml_ceil(dml_max(v->PitchY[k], v->SurfaceWidthY[k]), v->MacroTileWidthY[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5273  		if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5274  			v->AlignedDCCMetaPitchY[k] = dml_ceil(dml_max(v->DCCMetaPitchY[k], v->SurfaceWidthY[k]), 64.0 * v->Read256BlockWidthY[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5275  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5276  			v->AlignedDCCMetaPitchY[k] = v->DCCMetaPitchY[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5277  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5278  		if (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32 && v->SourcePixelFormat[k] != dm_444_16 && v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5279  				&& v->SourcePixelFormat[k] != dm_rgbe && v->SourcePixelFormat[k] != dm_mono_8) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5280  			v->AlignedCPitch[k] = dml_ceil(dml_max(v->PitchC[k], v->SurfaceWidthC[k]), v->MacroTileWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5281  			if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5282  				v->AlignedDCCMetaPitchC[k] = dml_ceil(dml_max(v->DCCMetaPitchC[k], v->SurfaceWidthC[k]), 64.0 * v->Read256BlockWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5283  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5284  				v->AlignedDCCMetaPitchC[k] = v->DCCMetaPitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5285  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5286  		} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5287  			v->AlignedCPitch[k] = v->PitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5288  			v->AlignedDCCMetaPitchC[k] = v->DCCMetaPitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5289  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5290  		if (v->AlignedYPitch[k] > v->PitchY[k] || v->AlignedCPitch[k] > v->PitchC[k] || v->AlignedDCCMetaPitchY[k] > v->DCCMetaPitchY[k]
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5291  				|| v->AlignedDCCMetaPitchC[k] > v->DCCMetaPitchC[k]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5292  			v->PitchSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5293  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5294  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5295  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5296  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5297  		if (v->ViewportWidth[k] > v->SurfaceWidthY[k] || v->ViewportHeight[k] > v->SurfaceHeightY[k])
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5298  			ViewportExceedsSurface = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5299  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5300  		if (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32 && v->SourcePixelFormat[k] != dm_444_16
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5301  				&& v->SourcePixelFormat[k] != dm_444_16 && v->SourcePixelFormat[k] != dm_444_8 && v->SourcePixelFormat[k] != dm_rgbe) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5302  			if (v->ViewportWidthChroma[k] > v->SurfaceWidthC[k] || v->ViewportHeightChroma[k] > v->SurfaceHeightC[k]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5303  				ViewportExceedsSurface = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5304  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5305  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5306  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5307  	/*Mode Support, Voltage State and SOC Configuration*/
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5308  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5309  	for (i = v->soc.num_states - 1; i >= 0; i--) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5310  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5311  			if (v->ScaleRatioAndTapsSupport == 1 && v->SourceFormatPixelAndScanSupport == 1 && v->ViewportSizeSupport[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5312  					&& v->DIOSupport[i] == 1 && v->ODMCombine4To1SupportCheckOK[i] == 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5313  					&& v->NotEnoughDSCUnits[i] == 0 && v->DSCCLKRequiredMoreThanSupported[i] == 0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5314  					&& v->DTBCLKRequiredMoreThanSupported[i] == 0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5315  					&& v->ROBSupport[i][j] == 1 && v->DISPCLK_DPPCLK_Support[i][j] == 1 && v->TotalAvailablePipesSupport[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5316  					&& EnoughWritebackUnits == 1 && WritebackModeSupport == 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5317  					&& v->WritebackLatencySupport == 1 && v->WritebackScaleRatioAndTapsSupport == 1 && v->CursorSupport == 1 && v->PitchSupport == 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5318  					&& ViewportExceedsSurface == 0 && v->PrefetchSupported[i][j] == 1 && v->DynamicMetadataSupported[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5319  					&& v->TotalVerticalActiveBandwidthSupport[i][j] == 1 && v->VRatioInPrefetchSupported[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5320  					&& v->PTEBufferSizeNotExceeded[i][j] == 1 && v->NonsupportedDSCInputBPC == 0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5321  					&& ((v->HostVMEnable == 0 && v->ImmediateFlipRequirement != dm_immediate_flip_required)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5322  							|| v->ImmediateFlipSupportedForState[i][j] == true)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5323  				v->ModeSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5324  			} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5325  				v->ModeSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5326  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5327  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5328  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5329  	{
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5330  		unsigned int MaximumMPCCombine = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5331  		for (i = v->soc.num_states; i >= 0; i--) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5332  			if (i == v->soc.num_states || v->ModeSupport[i][0] == true || v->ModeSupport[i][1] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5333  				v->VoltageLevel = i;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5334  				v->ModeIsSupported = v->ModeSupport[i][0] == true || v->ModeSupport[i][1] == true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5335  				if (v->ModeSupport[i][1] == true) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5336  					MaximumMPCCombine = 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5337  				} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5338  					MaximumMPCCombine = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5339  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5340  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5341  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5342  		v->ImmediateFlipSupport = v->ImmediateFlipSupportedForState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5343  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5344  			v->MPCCombineEnable[k] = v->MPCCombine[v->VoltageLevel][MaximumMPCCombine][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5345  			v->DPPPerPlane[k] = v->NoOfDPP[v->VoltageLevel][MaximumMPCCombine][k];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5346  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5347  		v->DCFCLK = v->DCFCLKState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5348  		v->DRAMSpeed = v->DRAMSpeedPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5349  		v->FabricClock = v->FabricClockPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5350  		v->SOCCLK = v->SOCCLKPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5351  		v->ReturnBW = v->ReturnBWPerState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5352  		v->maxMpcComb = MaximumMPCCombine;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5353  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5354  }
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  5355  

:::::: The code at line 3640 was first introduced by commit
:::::: 6725a88f88a7e922e91c45bf83d320487810c192 drm/amd/display: Add DCN3 DML

:::::: TO: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010261250.hwc1OKsw-lkp%40intel.com.

--AhhlLboLdkugWU4S
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
7/ZVSV0bTn9jhn/g710nRoQ0E/g/VaI5ys4RAgA=

--AhhlLboLdkugWU4S--
