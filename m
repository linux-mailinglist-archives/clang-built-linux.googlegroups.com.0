Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEFW3D6QKGQEQVLSOVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7362B8C03
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 08:13:21 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id t188sf1989945oot.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:13:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605770000; cv=pass;
        d=google.com; s=arc-20160816;
        b=FsDV3L4YVx8LvHqvUaGWkwcXqSce9PmKWy638pZ+SO9iAIcYB/uTx5C/r9dLWEX+Ty
         +VvZ4nqbeLOeYpsmD4/t24qxE/Ht7umh9th7mypqRlaXWshGo2jMAgBqcQT5RkbrkTX+
         qWGcxJh/IKnIlB3RvMqYNoTIuhVDFj+Ug9c/mLVgXkexI9pot99SOp3ba700IJKcS62J
         TCoRZ0gE/o3VwUSgn8zNN5Wwy2cQmsG34gs1uWKcA/mEzYBG32437EFKnLl5fqoySQNt
         wBvqQcmUXXtlFQNEtyXIXHVQosCgCKt0aYoDjxQZzpx7nPto2Qs2SkLb2F3mSSFvLvaL
         8q6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=j+g0glnbrWSog/vXFSgad7IzA7qODJ+qcHNnBkXXiqM=;
        b=riYtJKvVqYrGiR3yuhpbW5dnAevwQrjX4127gKvA80p2n1Gnr6D2rxJOQQerHSYneS
         4qS4HIb11yqURWC+iRQC5C64MKnbtkGpahW0+N0VR8sgeg23uDVF65ENHBDlpC8SGdtK
         6u9kiS+leoitTvXvPVe0UedpCoszrGR/2kcgFi0hfJir3vVhII65BlmSFold9uoDxRqx
         EQbszrysFMjJ1d8APcpso8WBjLnrtB2dMXVwS0Bd/xCe/V8EcQ/G5HLSUvqJ9FZYExfq
         CQKhqFRznpgzsv5C1E1l66uBxmMjajMcxCVxBd+AOvC4EzFk062kHe+0KQGRj2e2gvZm
         6E5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+g0glnbrWSog/vXFSgad7IzA7qODJ+qcHNnBkXXiqM=;
        b=ToqVVuy9zj6IeQFR7UZ2TTiYYoxiep2n9H6EXxHK21qW9I9eaAKrHftB5WoKyTCPlh
         2fIhfZ+PYeS22H0o984zAV1IwSbl5l9Eoe9BHnkmpgXZr3dAxcLQKQasuleyEchzLsvm
         itZDBoOZ+x4jSdGDeqQrmbDONevlI0imDEjEmmkk/hlrq5Qjs3viH6h2Qg4SQleqdGWo
         Bk6KUalQf/wgGOd3j60tu4B8+iPe1srweQR1cKGtQ3C3G7uqp1jIPEF0xlJpJ4niVmLq
         nUi/SqMvyCQrqb5KtMg8Vpqkv03uLXRXgS1/6xYJDj2t+YeZ6mkIuATPdwZXXGMmyvkd
         08jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+g0glnbrWSog/vXFSgad7IzA7qODJ+qcHNnBkXXiqM=;
        b=oF8lm/TQqqAABZZSF1L1tIii4y3I3rxYTOghvTkMfxeiyTGKCvvnLV1uHnhMV60u4m
         64bJLQZRqSaw95KiGBBurtiim6vdS0Q3xa69587sGDnRBPLwqINF7vBmlJ9plOVHQPXZ
         Hr27bT7zwo9BazyeB8NrkFJdYAd1a3vXod3ByVV1AFCntCDKUlIaJHvBwk0UqLd1WfQ/
         B0xu0jJ9tejLL7fTfpmy3A78KM0j2tfgm/a3uVX07JwRUJT/k0Ri51vx3y9ceZxWUC60
         vWUrf/XW1xRQ5QQVN/Eo9C2ylOGFbEHrNz0PhPFLCVJV29e2dEERY1EAI/upCzd0r7Tl
         P7Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332Sdpq215y97FzyusWxxW7mzBunHSVACi4IsK+Ps7sVj/PClk5
	RsoF1bC8Lnids7TpKHhtd3M=
X-Google-Smtp-Source: ABdhPJxrZfcYTrLhptTgoESUvefoqFJ6i2juukDcK+WQwHPpBFIJoctKBOa6C6GCtr6XPNXmJ9ZaaA==
X-Received: by 2002:aca:b887:: with SMTP id i129mr1878695oif.25.1605770000728;
        Wed, 18 Nov 2020 23:13:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb2:: with SMTP id 47ls514207oth.9.gmail; Wed, 18 Nov
 2020 23:13:20 -0800 (PST)
X-Received: by 2002:a9d:f67:: with SMTP id 94mr9354226ott.282.1605770000208;
        Wed, 18 Nov 2020 23:13:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605770000; cv=none;
        d=google.com; s=arc-20160816;
        b=Zbig7hSPyhSo0X3G36ncCgxXV0SAgNsvYTdn4RFOIGXI4+tRPiM3uVTrwY4AnKPfsA
         RbRVrbacUd2AAtYno1/Xc7jEzlOqI8kagPdeTdzY6L6p+Rn93GxJMkQeVx4zSNluuIK9
         5iS+RxLp2n3NQQ2zfcCN2JIq1ipKv/nwhT1WblLXkPp4jOUKM90sdS16xe0A3dDaEC6y
         HFu5HhdGHp+AJgEi5SnxB7z+Gw+ZKqwYOLZ5yJ8u7vOI0TtdhH2asXMCP49hnRaq+89T
         SeYZwDgti89bZNdvib7wV8Kfz4Havrcwiei5EI+iHh2lgLnNZ0VAMEkMCDAt33oEwPFu
         5smQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=os20HTA9L89hqx3zAV/x5354d3s/pgSfWSTLy/2FsEo=;
        b=Ga9ID9frUQerjXxjsUSNyihaFItvdsWRz4htTSo4rlfBBUiGriWpNp8Riy1okELOl3
         yjW7laUjo1NTKSk4ON3Fek5OkQJ+/aRmmJylps/dGrrDAF5OLIUJf67xD9jFJdkfte09
         8whYhPm425NRHkSWLBFlPgker1b6AeRaqovxqS0liEIka7t2hNFUmBCt1XrbT7iMbHTe
         kXpfrZLwPJkI7sjX/dZ5ONpwmpM1uxwnqqzv6BpEGgx2DARMcRiumGdg0suasQQUht5e
         qE7c9uo7Y5wdQ+GB2gAQyuI2fxR3np/eq62P6Y4Rme9RM6STHhVR16cledqU5WzxVKWL
         RFJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id i23si1867984oto.5.2020.11.18.23.13.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 23:13:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: Cco6/E2rOGPQA9ORtv4yZ0xa72MU9deCH73Q0zaj+mW9+gxgkc4qkA4oB3s0Rml1aYLYyJRlvo
 vedXiTU+J3lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="232858455"
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400"; 
   d="gz'50?scan'50,208,50";a="232858455"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Nov 2020 23:13:18 -0800
IronPort-SDR: cXJLdLWonUf67EhjucyLSJuaNw36Pr0joS57u0Ra4tPbP4CQtWjMSgdn9hf5rutcrtUhiR5JqA
 Uh0sr2u6bDzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400"; 
   d="gz'50?scan'50,208,50";a="534651149"
Received: from lkp-server01.sh.intel.com (HELO beb8a34b6883) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 18 Nov 2020 23:13:15 -0800
Received: from kbuild by beb8a34b6883 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kfe82-00003G-II; Thu, 19 Nov 2020 07:13:14 +0000
Date: Thu, 19 Nov 2020 15:12:44 +0800
From: kernel test robot <lkp@intel.com>
To: Dave Airlie <airlied@gmail.com>, dri-devel@lists.freedesktop.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Dave Airlie <airlied@redhat.com>,
	David Laight <David.Laight@aculab.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Wen Pu <puwen@hygon.cn>
Subject: Re: [PATCH] drm/vram: fix incorrect flag variable usage.
Message-ID: <202011191522.DDXivO9t-lkp@intel.com>
References: <20201119011423.14224-1-airlied@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
In-Reply-To: <20201119011423.14224-1-airlied@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dave,

I love your patch! Yet something to improve:

[auto build test ERROR on tegra-drm/drm/tegra/for-next]
[also build test ERROR on linus/master v5.10-rc4]
[cannot apply to drm-exynos/exynos-drm-next drm-intel/for-linux-next drm-tip/drm-tip drm/drm-next next-20201118]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Dave-Airlie/drm-vram-fix-incorrect-flag-variable-usage/20201119-091523
base:   git://anongit.freedesktop.org/tegra/linux.git drm/tegra/for-next
config: riscv-randconfig-r034-20201119 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/34989355252d40699a479afefb95750e30b90766
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Dave-Airlie/drm-vram-fix-incorrect-flag-variable-usage/20201119-091523
        git checkout 34989355252d40699a479afefb95750e30b90766
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/drm_gem_vram_helper.c:143:3: error: use of undeclared identifier 'invariant_flag'; did you mean 'invariant_flags'?
                   invariant_flag = TTM_PL_FLAG_TOPDOWN;
                   ^~~~~~~~~~~~~~
                   invariant_flags
   drivers/gpu/drm/drm_gem_vram_helper.c:138:6: note: 'invariant_flags' declared here
           u32 invariant_flags = 0;
               ^
   1 error generated.

vim +143 drivers/gpu/drm/drm_gem_vram_helper.c

   134	
   135	static void drm_gem_vram_placement(struct drm_gem_vram_object *gbo,
   136					   unsigned long pl_flag)
   137	{
   138		u32 invariant_flags = 0;
   139		unsigned int i;
   140		unsigned int c = 0;
   141	
   142		if (pl_flag & DRM_GEM_VRAM_PL_FLAG_TOPDOWN)
 > 143			invariant_flag = TTM_PL_FLAG_TOPDOWN;
   144	
   145		gbo->placement.placement = gbo->placements;
   146		gbo->placement.busy_placement = gbo->placements;
   147	
   148		if (pl_flag & DRM_GEM_VRAM_PL_FLAG_VRAM) {
   149			gbo->placements[c].mem_type = TTM_PL_VRAM;
   150			gbo->placements[c++].flags = TTM_PL_FLAG_WC |
   151						     TTM_PL_FLAG_UNCACHED |
   152						     invariant_flags;
   153		}
   154	
   155		if (pl_flag & DRM_GEM_VRAM_PL_FLAG_SYSTEM || !c) {
   156			gbo->placements[c].mem_type = TTM_PL_SYSTEM;
   157			gbo->placements[c++].flags = TTM_PL_MASK_CACHING |
   158						     invariant_flags;
   159		}
   160	
   161		gbo->placement.num_placement = c;
   162		gbo->placement.num_busy_placement = c;
   163	
   164		for (i = 0; i < c; ++i) {
   165			gbo->placements[i].fpfn = 0;
   166			gbo->placements[i].lpfn = 0;
   167		}
   168	}
   169	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011191522.DDXivO9t-lkp%40intel.com.

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--sm4nu43k4a2Rpi4c--
