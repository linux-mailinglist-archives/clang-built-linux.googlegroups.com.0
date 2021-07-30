Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBL6ER6EAMGQE6IAJYWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8413DB7D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 13:27:45 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id v2-20020a17090ac902b0290176b4310aaesf13714384pjt.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 04:27:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627644464; cv=pass;
        d=google.com; s=arc-20160816;
        b=oEeaHulEOUa6HkkhTRzu80XooSB4TXJQN4fiFoaZQ1Ube1Sru784TY8tSgURjWXbCq
         2sUgQGB8TVsssh9OPN4w92L87vb5HX2SEZZSi12y7R19RhsSKDwvVK7TlVtlnroX+uwy
         EqYKzeIQhwuU4nt56AV75ZK66153j6jb+z3a4mtH0rrTT4TJMFrzHdWiWBKoX5KWKNc5
         CUAO0Y9tG4OtkGw+xpQJlhItPPgNqjIhg4JvuAFoljNH58rzALjXMJjEPujY5x09Ho5j
         MyLTU9KaVQXSL1Lscrkk4GqsCPfj+8n9iwMCk6gItEczwUcPs7ge7SgwRggiFZScnU8L
         MuxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MAyPOSRK1vO5ZusLgEO4oZfBQN6iH5qn4cMSbe+ZtmU=;
        b=PmmVKQw8BTyaoXsYUec66ZuCwNQ7/nPYnTf1ZMUHA6vUOAmLGohX9InkgFOjaAv+Mg
         Zi/rH1hkyffPF3j6We/Do5XWnRTStmdq9riqm7R70ylJMYVRrmv530qUAfqZx+il+NTP
         mM+wz6SL3/PoEZraB5Io9yrTEE94pw101apslG5HGaC4rkjp+bosVgFzFi9rhELCmBPw
         9VVHTvOh7DKp/HCBFHcOdhVAbHkcFSY/CWWngBtTMRWyKRBz9ceUvn5YpIoi2mbbSzOt
         FJrT/FxTI/5/aP7okLtbuiuzpmiC50nSEzYtkcXFPou3I57vfQ8tMYpB9iWhJsb/Iw94
         8q0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MAyPOSRK1vO5ZusLgEO4oZfBQN6iH5qn4cMSbe+ZtmU=;
        b=KqvotPDiuBS8HlQsOv20qtrWvz4bqb6tCI2g+UNC3hq9ihYprVCRkpBdkCca+mmIUb
         Jh1sEhNbAuP3eTWJU8LpvaovViSAMhlUvMYNj4VVmGwDISGzBjst+fh6m574gtaQ/UL5
         ZSXmpjW9w2WFUeLRm9xMxnOk+83PV9tzHp9JkO/NLqC+3udVMadJbXcehu5tnjvnrBhq
         XpmjNIpMC8j0iEazynZa95OtZnvBV2DMwPETBE4PbTOprF7ABti5ejF8ED66rdDDW2g/
         uqKwbBK57ayM/tVA5swZY8zqyCB9p8H6Es2PoNaIxf60jEjUZ1+C34/YzGIMno+fUQgs
         955Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MAyPOSRK1vO5ZusLgEO4oZfBQN6iH5qn4cMSbe+ZtmU=;
        b=m1zOaTjmkI/i3E04Wi7vtqU+v1fs0UFAI3GKe1jiX1NUInfAHco6fDfRP0GyBG9XuA
         ZLXXntVet3cxpFeD3ZstNAKdS0vjF2AHPcujS+XemASCCnEADy7oBCPR905wV4WlF4Dw
         Eez9llSFlFAHVOAjL85TYfZXTmrvXiB23rENW7yEqn/sFZLKNLavQJV4j9/k2vQtYll7
         68OQ/H8CSj0bSB4i40xGWjlmV3n60chd5KPjxF2TQ9cmaxTck9y1GxRxNwYimAQDXj9h
         FMnlKiTcfh9l/gWTUCwUWxEj8JaKm12NOZ1wCAkuz573OhXvPBJFtjQJhUfJbaXZM3+9
         EIiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RCZSEOadKyr+e3V7Q607AB/Rax2gkfrPbqpvn9/pAL2nGXL9n
	mwSV7ZDLwtt+mcmFfc5bsdg=
X-Google-Smtp-Source: ABdhPJxYvITKlO8mI8SwgLMrkoiDzC9lOHP++CfuUTuTIIi1/lHQin5T1kgWMz3SmdgL6HOsNjGb+w==
X-Received: by 2002:a65:428c:: with SMTP id j12mr327766pgp.354.1627644463690;
        Fri, 30 Jul 2021 04:27:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a4c3:: with SMTP id l3ls913159pjw.0.gmail; Fri, 30
 Jul 2021 04:27:43 -0700 (PDT)
X-Received: by 2002:a17:90a:ab0b:: with SMTP id m11mr2534326pjq.221.1627644462908;
        Fri, 30 Jul 2021 04:27:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627644462; cv=none;
        d=google.com; s=arc-20160816;
        b=o/R4hX3Ji0n8OSITUX2FVWfwfWFWlUeslbETgJpfsLVwauuuw3+OxoQxW0m9zc+9ME
         cWE9rfaVQ+75+YgPJRcaF8kaLBQtk/PweBJPlIfGM+xI6dMH+xMCyqVg29qwndKNMhq3
         +GelkgTB+QgC59BjYvMLWPBG/KQVtMxakmcac1EW/UCkBUEh11n8IK6i1j7cWoQZO7IV
         1Rk2E85kriE2XR1CTVYs+/GfzqYV66llUr1FEDABf9eIGyWk6kj4XVRVKXTkYS3cph6y
         Jgs0L6/UtPxjsDJPEwvX33yc/aXisIfgJle7NQuDs4D5L81I71i8UXrvImmKbis+6wYf
         x4HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=Zg16MWOiEeo1miiask4NgSJPffogSl3E8KI2kUv5bDs=;
        b=ucHN3cgC9JMJr0t68xhTL+aBsN1pR8VrERUERU4vQDfB1xLf2Hwb7xK2+wQBPp8fCd
         tzY26HTcs2zglSk0OQWMyplateqTJ5QQm7L+h4dG/XTwzOYT3ofZJJ0SUyrsx5Wk0Vsx
         gFMDVPjdzx0/pIT+Qcoyf8F1CEJT1gyaAGwK9/Exzi8rS1Oky8IIGXTwirf9NDY1b1UB
         HeVTHg2dNybh2F3fKxshPigrxJaVKxckmXaPKnnJiUkBY2t9vCaj0oNGhGSOiQWnZXnJ
         UCdy6sBOFpJ7QHvGw0BdDdjjFV4b+pJcJHEZvZZNEB+cjADsgkl2Q0L527FCsoWoMYqU
         V/xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id s9si61315pfg.0.2021.07.30.04.27.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 04:27:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="213067860"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; 
   d="gz'50?scan'50,208,50";a="213067860"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jul 2021 04:27:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; 
   d="gz'50?scan'50,208,50";a="476930475"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 30 Jul 2021 04:27:39 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m9Qfy-0009wd-Vf; Fri, 30 Jul 2021 11:27:38 +0000
Date: Fri, 30 Jul 2021 19:27:17 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [hch-misc:dax-support-cleanups 6/7]
 drivers/gpu/drm/i915/gem/i915_gem_object.h:39:6: error: shift count >= width
 of type
Message-ID: <202107301913.YuS3URWP-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/misc.git dax-support-cleanups
head:   109fe091fac0e3958ba459e292f22f6b60eb39f0
commit: 6ee1cc412315e2a92aa1b6b57e349f84ec4b1168 [6/7] dax: pass the dax_device to bdev_dax_supported
config: x86_64-randconfig-c001-20210730 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git remote add hch-misc git://git.infradead.org/users/hch/misc.git
        git fetch --no-tags hch-misc dax-support-cleanups
        git checkout 6ee1cc412315e2a92aa1b6b57e349f84ec4b1168
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/i915/display/intel_dsi.h:30:
   In file included from drivers/gpu/drm/i915/display/intel_display_types.h:47:
   In file included from drivers/gpu/drm/i915/i915_drv.h:49:
   In file included from include/linux/shmem_fs.h:7:
   In file included from include/linux/mempolicy.h:11:
   include/linux/dax.h:153:39: error: unknown type name 'truct'; did you mean 'struct'?
   static inline bool bdev_dax_supported(truct dax_device *dax_dev,
                                         ^~~~~
                                         struct
   In file included from <built-in>:4:
   In file included from drivers/gpu/drm/i915/display/intel_dsi.h:30:
   In file included from drivers/gpu/drm/i915/display/intel_display_types.h:47:
   In file included from drivers/gpu/drm/i915/i915_drv.h:84:
   In file included from drivers/gpu/drm/i915/gt/intel_engine.h:17:
   In file included from drivers/gpu/drm/i915/gt/intel_gt_types.h:18:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:17:
   In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>> drivers/gpu/drm/i915/gem/i915_gem_object.h:39:6: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
           if (overflows_type(size, obj->base.size))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^  ~~~~~~~~~~~~~~~~
   2 errors generated.
--
   In file included from drivers/gpu/drm/i915/gem/i915_gem_internal.c:11:
   In file included from drivers/gpu/drm/i915/i915_drv.h:49:
   In file included from include/linux/shmem_fs.h:7:
   In file included from include/linux/mempolicy.h:11:
   include/linux/dax.h:153:39: error: unknown type name 'truct'; did you mean 'struct'?
   static inline bool bdev_dax_supported(truct dax_device *dax_dev,
                                         ^~~~~
                                         struct
   In file included from drivers/gpu/drm/i915/gem/i915_gem_internal.c:11:
   In file included from drivers/gpu/drm/i915/i915_drv.h:84:
   In file included from drivers/gpu/drm/i915/gt/intel_engine.h:17:
   In file included from drivers/gpu/drm/i915/gt/intel_gt_types.h:18:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:17:
   In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>> drivers/gpu/drm/i915/gem/i915_gem_object.h:39:6: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
           if (overflows_type(size, obj->base.size))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^  ~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/gem/i915_gem_internal.c:172:6: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
           if (overflows_type(size, obj->base.size))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^  ~~~~~~~~~~~~~~~~
   3 errors generated.
--
   In file included from drivers/gpu/drm/i915/i915_gem.c:32:
   In file included from include/linux/shmem_fs.h:7:
   In file included from include/linux/mempolicy.h:11:
   include/linux/dax.h:153:39: error: unknown type name 'truct'; did you mean 'struct'?
   static inline bool bdev_dax_supported(truct dax_device *dax_dev,
                                         ^~~~~
                                         struct
   In file included from drivers/gpu/drm/i915/i915_gem.c:38:
>> include/linux/mman.h:158:9: error: division by zero is undefined [-Werror,-Wdivision-by-zero]
                  _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      ) |
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/mman.h:135:21: note: expanded from macro '_calc_vm_trans'
      : ((x) & (bit1)) / ((bit1) / (bit2))))
                       ^ ~~~~~~~~~~~~~~~~~
   In file included from drivers/gpu/drm/i915/i915_gem.c:44:
   In file included from drivers/gpu/drm/i915/gem/i915_gem_context.h:12:
   In file included from drivers/gpu/drm/i915/gt/intel_context.h:14:
   In file included from drivers/gpu/drm/i915/i915_drv.h:84:
   In file included from drivers/gpu/drm/i915/gt/intel_engine.h:17:
   In file included from drivers/gpu/drm/i915/gt/intel_gt_types.h:18:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:17:
   In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>> drivers/gpu/drm/i915/gem/i915_gem_object.h:39:6: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
           if (overflows_type(size, obj->base.size))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^  ~~~~~~~~~~~~~~~~
   3 errors generated.
--
   In file included from drivers/gpu/drm/i915/i915_query.c:9:
   In file included from drivers/gpu/drm/i915/i915_drv.h:49:
   In file included from include/linux/shmem_fs.h:7:
   In file included from include/linux/mempolicy.h:11:
   include/linux/dax.h:153:39: error: unknown type name 'truct'; did you mean 'struct'?
   static inline bool bdev_dax_supported(truct dax_device *dax_dev,
                                         ^~~~~
                                         struct
   In file included from drivers/gpu/drm/i915/i915_query.c:9:
   In file included from drivers/gpu/drm/i915/i915_drv.h:84:
   In file included from drivers/gpu/drm/i915/gt/intel_engine.h:17:
   In file included from drivers/gpu/drm/i915/gt/intel_gt_types.h:18:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:17:
   In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>> drivers/gpu/drm/i915/gem/i915_gem_object.h:39:6: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
           if (overflows_type(size, obj->base.size))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^  ~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/i915_query.c:513:7: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
                   if (overflows_type(item.query_id - 1, unsigned long))
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^  ~~~~~~~~~~~~~~~~
   3 errors generated.
--
   In file included from drivers/gpu/drm/i915/display/intel_fb.c:9:
   In file included from drivers/gpu/drm/i915/display/intel_display_types.h:47:
   In file included from drivers/gpu/drm/i915/i915_drv.h:49:
   In file included from include/linux/shmem_fs.h:7:
   In file included from include/linux/mempolicy.h:11:
   include/linux/dax.h:153:39: error: unknown type name 'truct'; did you mean 'struct'?
   static inline bool bdev_dax_supported(truct dax_device *dax_dev,
                                         ^~~~~
                                         struct
   In file included from drivers/gpu/drm/i915/display/intel_fb.c:9:
   In file included from drivers/gpu/drm/i915/display/intel_display_types.h:47:
   In file included from drivers/gpu/drm/i915/i915_drv.h:84:
   In file included from drivers/gpu/drm/i915/gt/intel_engine.h:17:
   In file included from drivers/gpu/drm/i915/gt/intel_gt_types.h:18:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:17:
   In file included from drivers/gpu/drm/i915/i915_vma.h:34:
>> drivers/gpu/drm/i915/gem/i915_gem_object.h:39:6: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
           if (overflows_type(size, obj->base.size))
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^  ~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/intel_fb.c:660:2: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
           assign_chk_ovf(i915, remap_info->offset, obj_offset);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_fb.c:642:28: note: expanded from macro 'assign_chk_ovf'
           drm_WARN_ON(&(i915)->drm, overflows_type(val, var)); \
           ~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_utils.h:125:32: note: expanded from macro 'overflows_type'
           (sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
                                         ^
   include/drm/drm_print.h:563:19: note: expanded from macro 'drm_WARN_ON'
           drm_WARN((drm), (x), "%s",                                      \
           ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/drm/drm_print.h:553:7: note: expanded from macro 'drm_WARN'
           WARN(condition, "%s %s: " format,                               \
           ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/bug.h:130:25: note: expanded from macro 'WARN'
           int __ret_warn_on = !!(condition);                              \
                                  ^~~~~~~~~
   3 errors generated.


vim +39 drivers/gpu/drm/i915/gem/i915_gem_object.h

f0e4a06397526d Chris Wilson 2019-05-28  18  
ae2fb480f32f65 Matthew Auld 2021-01-22  19  /*
ae2fb480f32f65 Matthew Auld 2021-01-22  20   * XXX: There is a prevalence of the assumption that we fit the
ae2fb480f32f65 Matthew Auld 2021-01-22  21   * object's page count inside a 32bit _signed_ variable. Let's document
ae2fb480f32f65 Matthew Auld 2021-01-22  22   * this and catch if we ever need to fix it. In the meantime, if you do
ae2fb480f32f65 Matthew Auld 2021-01-22  23   * spot such a local variable, please consider fixing!
ae2fb480f32f65 Matthew Auld 2021-01-22  24   *
ae2fb480f32f65 Matthew Auld 2021-01-22  25   * Aside from our own locals (for which we have no excuse!):
ae2fb480f32f65 Matthew Auld 2021-01-22  26   * - sg_table embeds unsigned int for num_pages
ae2fb480f32f65 Matthew Auld 2021-01-22  27   * - get_user_pages*() mixed ints with longs
ae2fb480f32f65 Matthew Auld 2021-01-22  28   */
ae2fb480f32f65 Matthew Auld 2021-01-22  29  #define GEM_CHECK_SIZE_OVERFLOW(sz) \
ae2fb480f32f65 Matthew Auld 2021-01-22  30  	GEM_WARN_ON((sz) >> PAGE_SHIFT > INT_MAX)
ae2fb480f32f65 Matthew Auld 2021-01-22  31  
ae2fb480f32f65 Matthew Auld 2021-01-22  32  static inline bool i915_gem_object_size_2big(u64 size)
ae2fb480f32f65 Matthew Auld 2021-01-22  33  {
ae2fb480f32f65 Matthew Auld 2021-01-22  34  	struct drm_i915_gem_object *obj;
ae2fb480f32f65 Matthew Auld 2021-01-22  35  
ae2fb480f32f65 Matthew Auld 2021-01-22  36  	if (GEM_CHECK_SIZE_OVERFLOW(size))
ae2fb480f32f65 Matthew Auld 2021-01-22  37  		return true;
ae2fb480f32f65 Matthew Auld 2021-01-22  38  
ae2fb480f32f65 Matthew Auld 2021-01-22 @39  	if (overflows_type(size, obj->base.size))
ae2fb480f32f65 Matthew Auld 2021-01-22  40  		return true;
ae2fb480f32f65 Matthew Auld 2021-01-22  41  
ae2fb480f32f65 Matthew Auld 2021-01-22  42  	return false;
ae2fb480f32f65 Matthew Auld 2021-01-22  43  }
ae2fb480f32f65 Matthew Auld 2021-01-22  44  

:::::: The code at line 39 was first introduced by commit
:::::: ae2fb480f32f657d896d78b6214c2efebfa61993 drm/i915/gem: consolidate 2big error checking for object sizes

:::::: TO: Matthew Auld <matthew.auld@intel.com>
:::::: CC: Daniel Vetter <daniel.vetter@ffwll.ch>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107301913.YuS3URWP-lkp%40intel.com.

--mP3DRpeJDSE+ciuQ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
QaYDjij7zlJF4trPLrQTyobN3f4PojIc/wTCAQA=

--mP3DRpeJDSE+ciuQ--
