Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHP6WP7QKGQE4767EHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE9E2E7CF6
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 23:28:46 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id 1sf16290772ilg.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 14:28:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609367325; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2YPq0fagI4l3xwnPKUOLadBluH0+ZEGznBx9lKj4jfbEW+0MPUJb40wIfPdEXhCG7
         5RP+2VE+8qz+ykiHZdqD/fnnnEK9jpkdLvbJ/7K9O8JTwlVtfbI9yTgfNvmsaM2nIlvN
         K+eccX1i+K+ulRUjaNQFEdaP/XXKa6gaThCG+mVdgqUECJYKAvtL10MkTMuUbqZluxXJ
         w05vQs8Ryf2qw9rgZFcuKeQ3A5+oRBWLivnl95T3zZeaqeWsW+MxZkSmmeF4CER1MfWM
         8HIecYbjx/hnxOzHdcuFZkmIcUa6AY70x3gfoiPlwbgdTLTOIHOhtSHO2mjxEdfIAuLs
         xJug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=nEEs1hKIMMhRBygS+nVtMXLbraYvT0q6ix4mMX+Evoo=;
        b=vtCVG2KNE+xHz/I8ePcgHIrvSSpsO3uYiU3gI8nhI7crbpmT66Cwq23wMJxltnMhot
         2AIDsTk2QScu/O8B+cUo53GUoSnAJZbwv7f83MtkD2a1Lyhv+Q9fk/BVgughieiOMofA
         wOAGqNXJtlUlQKqgXlhpeBiJJ125bfnbjblMwIbQNN8ikFR5+m9zxRBWLAtdrKot1EbB
         sPUedkdAJaLFKaEP1eug8nKhhFRar4J4+UJcbYLFJw3UewtBSKARG/w6hdnzDIMJQFYX
         JKfEUBLPxxJBC3LG45n5lad9JbFlwJ3E1DgZZi/HokC0LTKYn2hXHldPU4SNk8T80lZz
         oZCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nEEs1hKIMMhRBygS+nVtMXLbraYvT0q6ix4mMX+Evoo=;
        b=N/UuQ9nssY4JlNHf+qsAQ04VZrydwNGVkiPJiJ7kKx1AGovRgRhVYuZ1fG/Xy9TNEs
         2W5JVmeJMlbnHMuoPqOvxduLvr3ws4R8bIJ8WClx/tYRIrTYdyE0lShnraisv5WwXTqR
         GvHa1gJ55PBbd6NT8yrukX4xiBKYuEPtKtPov3S29/qaFFLfNZFWsTd94mkg8nbR6+SB
         fuJnNFt2XWccD+3kDCQMWM9VxOwxd3dvqEL2RWDQQHD2VZVm4XmAmwqa57VqkOMSDBSW
         5IRvqKsPQmGHW4ayB4omG0FzDiwKgNIUcTxwbfJO5SG1HixLbfBA/XUbhBpYNAGhaOy0
         ASaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nEEs1hKIMMhRBygS+nVtMXLbraYvT0q6ix4mMX+Evoo=;
        b=TTUVtqqTZEiOUbpWcryzWTFyL4mzimyPYOWswfPxkXjXlgaT6/ce/o39dmncfD9To9
         rXv1hXJCMPnobDGr3GsNx8Kfe8gV5ZsVIYWuUr9RkJgZX0e0hmNhCyWQBvI+bMYsWrXA
         9CZy4O23Q1j5OaTaXde3AYAs7eCU7KDUgT5yWJMoiVmkLpA91xx4KpsN1OGxlu4I3SRK
         cpFiMip254YNq5glS99k0jeQK3HPKbO1ZuKfGphYf9cOaSdGOfjvmMHuoGsIFM2bY22f
         ktzmtVHQBmZCVkjwySDMCHZ0tqCuD3DMANoDr3ys5mH+OKmlGuEt2+61H526Q/BtiJe4
         eQzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GAusuhyHh9M1iErI6PFm0JNyAdD/Ew455yD0l3kdFBdBcH5Qe
	FdqVWH6yKGaBuSXVBnumX2A=
X-Google-Smtp-Source: ABdhPJwVk2kKPHEP5UqjUCdtbw5OoinqlkS/4CXBSU4YDNya1DLuqWyKO7q0as0NMBctkTWHtDrNrw==
X-Received: by 2002:a05:6602:314b:: with SMTP id m11mr45388588ioy.165.1609367325321;
        Wed, 30 Dec 2020 14:28:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:921:: with SMTP id o1ls16729819ilt.2.gmail; Wed, 30
 Dec 2020 14:28:44 -0800 (PST)
X-Received: by 2002:a92:d844:: with SMTP id h4mr54753731ilq.88.1609367324755;
        Wed, 30 Dec 2020 14:28:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609367324; cv=none;
        d=google.com; s=arc-20160816;
        b=XHH7uUIS1bvGSWakNK6RH9Pcp6ZigzZrMtMLGimG2I4x40m5JTs1CUbfCVYC7wnBNP
         MtaEZ49krTvrglM4f184WWKl4ikpc/m69H68t8+OVa0l4vOWFdG0+qXmZ4EeQyDsPRYd
         e+mBpnmIN6MoEdGe6j4QtwETxPyo4hb9gcgYpQrA8ny68CJG7TU1bpZz73bgSvCmsVwY
         yHyrEzfvwUnPtsg/10utQx796lG+4KPnyS8l773CHjq6iavPPpzGtCGLz/Oxj34twhe/
         WnT+j6C9Cu6eHi5OZOqIcYb5yuLXRLg1qpUFVd8JEO0xZxtaxGc8Zo28OAzJIuUG6i9W
         qqow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=yTLlM+yJTwbm04xmgsuAld6qLZth3Iv1JKBBopWYLV0=;
        b=y7s46QE/NfUNz80e7AgfAG0UhoBcS26Q9fhP+Ech7qH0lQSnlEzA6fFpOOfUqMpefW
         yLsJostVDlvr6x/a9uKxR4Oco2UXnM5ARsjuYV+VJsBnDTq0Rzg61CgkFXkCCbJGA6nF
         QgAftbBXyPNwl+LQ/rNwtqS994h4yrDTFdg0y6vtEqKkzotAOe06ENQ0ag2GJ2iu5ZTE
         NgcR7QsOdu3MVE/JwC21/u5v+bpMFABukMiIKRImR3TTn6tZAlxctJpK+Ih0hlu+S7RO
         p3YP82axGaeliQqArXWC/iPiICzhQ81B4Jm8aBwAIHTZHt1wzpNV/g7cnpdSYvrwxkbM
         HObQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id r17si4040711ilg.4.2020.12.30.14.28.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Dec 2020 14:28:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: ZdZNx1M/JH0+kCoyKpXQsNPWV3xz74aQMeyJsRlxQeD4H+5Xvc4XK45aYSpUfYiEmn9w592mi1
 lXXWfGOSURUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="155845636"
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; 
   d="gz'50?scan'50,208,50";a="155845636"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Dec 2020 14:28:43 -0800
IronPort-SDR: EdGaP+BjTMRvd3KiHEJR/Oeat7M0tqTunNkKl9hq1TMPEvINcsf0PbkL5Ml/u5RiOr49ApYgvL
 sDGHd57RW1Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; 
   d="gz'50?scan'50,208,50";a="359350823"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 30 Dec 2020 14:28:41 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kujxQ-0004Xm-EF; Wed, 30 Dec 2020 22:28:40 +0000
Date: Thu, 31 Dec 2020 06:28:07 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] i915: fix shift warning
Message-ID: <202012310653.2rvjNHL4-lkp@intel.com>
References: <20201230153928.456260-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
In-Reply-To: <20201230153928.456260-1-arnd@kernel.org>
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


--DocE+STaALJfprDB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Arnd,

I love your patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on v5.11-rc1 next-20201223]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Arnd-Bergmann/i915-fix-shift-warning/20201230-234054
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-a015-20201230 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3c0d36f977d9e012b245c796ddc8596ac3af659b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/6b837ba40d73c6c02cdf26654c577a90130a6b99
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Arnd-Bergmann/i915-fix-shift-warning/20201230-234054
        git checkout 6b837ba40d73c6c02cdf26654c577a90130a6b99
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_engine_cs.c:509:15: warning: format specifies type 'unsigned long' but the argument has type 'unsigned long long' [-Wformat]
                   vdbox_mask, VDBOX_MASK(gt));
                               ^~~~~~~~~~~~~~
   include/drm/drm_print.h:448:48: note: expanded from macro 'drm_dbg'
           drm_dev_dbg((drm)->dev, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                  ~~~    ^~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:1630:2: note: expanded from macro 'VDBOX_MASK'
           ENGINE_INSTANCES_MASK(gt, VCS0, I915_MAX_VCS)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:1623:49: note: expanded from macro 'ENGINE_INSTANCES_MASK'
   #define ENGINE_INSTANCES_MASK(gt, first, count) ({              \
                                                   ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/intel_engine_cs.c:524:15: warning: format specifies type 'unsigned long' but the argument has type 'unsigned long long' [-Wformat]
                   vebox_mask, VEBOX_MASK(gt));
                               ^~~~~~~~~~~~~~
   include/drm/drm_print.h:448:48: note: expanded from macro 'drm_dbg'
           drm_dev_dbg((drm)->dev, DRM_UT_DRIVER, fmt, ##__VA_ARGS__)
                                                  ~~~    ^~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:1632:2: note: expanded from macro 'VEBOX_MASK'
           ENGINE_INSTANCES_MASK(gt, VECS0, I915_MAX_VECS)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:1623:49: note: expanded from macro 'ENGINE_INSTANCES_MASK'
   #define ENGINE_INSTANCES_MASK(gt, first, count) ({              \
                                                   ^~~~~~~~~~~~~~~~~
   2 warnings generated.


vim +509 drivers/gpu/drm/i915/gt/intel_engine_cs.c

e26b6d4341476f6 Chris Wilson           2019-12-22  455  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  456  /*
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  457   * Determine which engines are fused off in our particular hardware.
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  458   * Note that we have a catch-22 situation where we need to be able to access
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  459   * the blitter forcewake domain to read the engine fuses, but at the same time
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  460   * we need to know which engines are available on the system to know which
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  461   * forcewake domains are present. We solve this by intializing the forcewake
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  462   * domains based on the full engine mask in the platform capabilities before
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  463   * calling this function and pruning the domains for fused-off engines
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  464   * afterwards.
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  465   */
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  466  static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  467  {
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  468  	struct drm_i915_private *i915 = gt->i915;
792592e72aba416 Daniele Ceraolo Spurio 2020-07-07  469  	struct intel_gt_info *info = &gt->info;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  470  	struct intel_uncore *uncore = gt->uncore;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  471  	unsigned int logical_vdbox = 0;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  472  	unsigned int i;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  473  	u32 media_fuse;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  474  	u16 vdbox_mask;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  475  	u16 vebox_mask;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  476  
792592e72aba416 Daniele Ceraolo Spurio 2020-07-07  477  	info->engine_mask = INTEL_INFO(i915)->platform_engine_mask;
792592e72aba416 Daniele Ceraolo Spurio 2020-07-07  478  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  479  	if (INTEL_GEN(i915) < 11)
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  480  		return info->engine_mask;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  481  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  482  	media_fuse = ~intel_uncore_read(uncore, GEN11_GT_VEBOX_VDBOX_DISABLE);
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  483  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  484  	vdbox_mask = media_fuse & GEN11_GT_VDBOX_DISABLE_MASK;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  485  	vebox_mask = (media_fuse & GEN11_GT_VEBOX_DISABLE_MASK) >>
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  486  		      GEN11_GT_VEBOX_DISABLE_SHIFT;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  487  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  488  	for (i = 0; i < I915_MAX_VCS; i++) {
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  489  		if (!HAS_ENGINE(gt, _VCS(i))) {
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  490  			vdbox_mask &= ~BIT(i);
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  491  			continue;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  492  		}
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  493  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  494  		if (!(BIT(i) & vdbox_mask)) {
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  495  			info->engine_mask &= ~BIT(_VCS(i));
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  496  			drm_dbg(&i915->drm, "vcs%u fused off\n", i);
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  497  			continue;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  498  		}
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  499  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  500  		/*
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  501  		 * In Gen11, only even numbered logical VDBOXes are
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  502  		 * hooked up to an SFC (Scaler & Format Converter) unit.
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  503  		 * In TGL each VDBOX has access to an SFC.
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  504  		 */
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  505  		if (INTEL_GEN(i915) >= 12 || logical_vdbox++ % 2 == 0)
792592e72aba416 Daniele Ceraolo Spurio 2020-07-07  506  			gt->info.vdbox_sfc_access |= BIT(i);
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  507  	}
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  508  	drm_dbg(&i915->drm, "vdbox enable: %04x, instances: %04lx\n",
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07 @509  		vdbox_mask, VDBOX_MASK(gt));
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  510  	GEM_BUG_ON(vdbox_mask != VDBOX_MASK(gt));
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  511  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  512  	for (i = 0; i < I915_MAX_VECS; i++) {
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  513  		if (!HAS_ENGINE(gt, _VECS(i))) {
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  514  			vebox_mask &= ~BIT(i);
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  515  			continue;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  516  		}
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  517  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  518  		if (!(BIT(i) & vebox_mask)) {
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  519  			info->engine_mask &= ~BIT(_VECS(i));
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  520  			drm_dbg(&i915->drm, "vecs%u fused off\n", i);
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  521  		}
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  522  	}
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  523  	drm_dbg(&i915->drm, "vebox enable: %04x, instances: %04lx\n",
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  524  		vebox_mask, VEBOX_MASK(gt));
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  525  	GEM_BUG_ON(vebox_mask != VEBOX_MASK(gt));
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  526  
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  527  	return info->engine_mask;
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  528  }
f6beb38100778b7 Daniele Ceraolo Spurio 2020-07-07  529  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012310653.2rvjNHL4-lkp%40intel.com.

--DocE+STaALJfprDB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
qeKFBi+ZlfQU/H+AuNS9aZgCAA==

--DocE+STaALJfprDB--
