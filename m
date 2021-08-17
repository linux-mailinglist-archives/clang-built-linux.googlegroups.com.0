Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7HY5WEAMGQEMAOWZKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E964B3EE92D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:08:13 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id b127-20020a25e485000000b005943f1efa05sf10139990ybh.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:08:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629191293; cv=pass;
        d=google.com; s=arc-20160816;
        b=I7Nq7AlgZ7l+C8DJ0GQjwFWynh2BmaDvFp5DngK377/ictU8UTUk/FhWF3pnuiowUR
         eBSWS/i22fWSSQMWR/HIUWfwt+g+f41SI4WJTIe691Zkoa3GH5xzkVEJChVhVwgIOYAI
         8ud5rRdVyvXTT4jFoCTDwJaDOOHvmaMfPGqRO/doS0Dc9CNRR6ZmJjXgn8qnZsvvSGnh
         sa/TzzcQU9hwN83spWCiGGhX80yJFpKOAJayeYTGD0eHQ9taBNhQRtDJYJAKXaZuD6YH
         o36XZW5pR2O7xSYkeKhCjAK20dUvQYmbJGo7bcKAArk10jX2N2wuzS1nmPUiCCIxGT82
         HTXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=b4VyBDFGsWAd9dY0xABRsmUbVg0PctYftBlpWypbzx0=;
        b=WUKtfZcxiiWu+7CuIJlF0ewLzqu0typVSejuonNZrW+l0BWO2QIGS/1j0/IewwrZ0r
         JNdsmF+/ioxOWpoveretDjm3Ddz5tNkkcWpFwqh8CDdK/YPT2OKrgx3WONq3LCaLMA76
         SomzH+VmOk0hgJPYGu+TUljAwdLBR/BdB+TpXpg61VfB7vJz7KN5+NNa7BK7YXsBlxqO
         wZ9IVRKZbEJ5obaMZxvuwKlaIUIGiLZAW5sp8FmySnO4oZ8J80X2znxPLWIbb/cXieRq
         +B2MRxdJECsA3qK2wn0fdI5/SQnQxncqfhuY3wNnsMlUcTgc1liPla3M+1MeMpiTkPeN
         4CQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b4VyBDFGsWAd9dY0xABRsmUbVg0PctYftBlpWypbzx0=;
        b=GwtLKK7TwTupVlxUmztKCX/OefcOzNftD9VNkjANYI1JcOZj5KKXTd33RTkPUMNC/V
         +l1oIpQTpTgGDjsdI3ju2EEWa6nWJMrQ4tZ5splXKABi2rEHwtTuJBXnN80nvUt1cUsA
         HCusmCvYRuo2N1pWdiFSyAJnSlG7GIbDlltj3VX37s3E4pCtPgDAp+R4WJ9Ap3ZSupph
         GyarQfWVZvaYJ3aU/++X7w3wA2ZTU1SRFMv4ITXoaJnuTTCMvrXSHcZNCvnXwzmvbi+Z
         LD/WZmykFL/OERNKlcMqSDdL8pscIxR/dzmiZvoNPAbNTlox+qsezsNFdVd3roYGPvTV
         hXqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b4VyBDFGsWAd9dY0xABRsmUbVg0PctYftBlpWypbzx0=;
        b=fiXweS4IMzBdPRTDxxq+7D4DC4+f1i/fjUWFv13qy1M+NR9Nyxqew+OAhD1+1y0r7s
         OUEtfRL/dqXedmwkWnGmXVSk/78CMr+7DAcE9lSDsTh1QpxIPJxrjxmkB/X2/2p6hcOw
         sppvqK9iJHefcP72EkwUak/vzJHxkAWjnSCp5+Ud+57oYKrIWn/Wttz3kboHKFCJXbXU
         CgFawkqcWh40Gc2yOeuS3xTwfm347Xb89GQvIZiT3Hs0f9Haq5OJNN4BjG5HwRWEr5/j
         kzqNavZIN2cRk0bZhDiNQrBLY3rnbJj3QW1+YDeHtpOKWyuRLIDOdg0rf0dx/7CteW3V
         ynlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+SnRGwsAF8UjagDPjyKx4j4R2sg02v96MqilANE8T7mT4tn+Q
	Rsy+lyXB70Q6hFkHwuBw79I=
X-Google-Smtp-Source: ABdhPJyqRMq0ANM4+WEixvzXeXQB7yPXRZRRRh8B9AoTRYfgOrp3Znuiuj4GhAlxiIDBIbOLDd/6gg==
X-Received: by 2002:a25:c712:: with SMTP id w18mr3203678ybe.390.1629191292788;
        Tue, 17 Aug 2021 02:08:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ac8b:: with SMTP id x11ls788804ybi.1.gmail; Tue, 17 Aug
 2021 02:08:12 -0700 (PDT)
X-Received: by 2002:a25:9201:: with SMTP id b1mr3072586ybo.354.1629191292030;
        Tue, 17 Aug 2021 02:08:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629191292; cv=none;
        d=google.com; s=arc-20160816;
        b=uKHCErD+uyzHFl1tkP2MmDBOD3AxiQAniEreOhBZhmjUtUrk7Hpi30FClpiFICwxHJ
         H6PdD/1Yf31k6ThrcQM60vBsC8X2mD7eiJgowRjg8pS5pGyUq5qM4GlrRyl56dBqzkTW
         /fx0iqSUC0iBqeVndk1t7/FdM1oEgfSPM4x81dUprDuwSiHKbcDhLqHXqK6pceAO9u8V
         H0Gk3tjySGeETdscHrOStaopCbMt7pz6f20wLG0adV3fEhDETlZB9VOZYTcYpKTHaosC
         DoQF9F6LNtmnDMLk4vjerb9tda9c4ToDpJuQ2UQiy067RTFAzW8JA/9fSZO9QFZIiRZM
         34eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=w0cd4tHfNguFD2SRRjrbrm8jRTKIQudNiwr50SIRQNg=;
        b=wkdPhCE6xSpA7DUtHBm1He0sVgY/gSW806Jaa+upIV+qFn36cExyZRdDuKYejwRzFF
         TlmfjPIVAvKmjdl3nWjzXHwGEyWT/5c1phz45kAYnGgTIMalchGD0afx6vodceY7z5BM
         MgLhr3zXKVFueBe7E4e2swX+dtTPRtIDqdiPDi3i3J0P/QE+Jjuz4GhgghuGZ8OQAy1y
         TxDgPj+r1ZxdIu0mHHtzA27oS8XGt0znlnQgRJ1Fywin2/mp7xoKMvCAH8EiQUUipk0G
         vaAYzhPTejhd8Cs5Wo9PCciiDZrDqLQQc6j6HkuRnfBmo3PMc+jL2ONnEj8X8U2/+B2l
         4ItQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id u17si106017ybc.5.2021.08.17.02.08.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 02:08:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="203179860"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; 
   d="gz'50?scan'50,208,50";a="203179860"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Aug 2021 02:08:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; 
   d="gz'50?scan'50,208,50";a="449194069"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 17 Aug 2021 02:08:05 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFv4n-000Rbf-3O; Tue, 17 Aug 2021 09:08:05 +0000
Date: Tue, 17 Aug 2021 17:07:20 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Matthew Auld <matthew.auld@intel.com>
Subject: [linux-next:master 282/8423]
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c:137:60: warning: unused parameter
 'bo'
Message-ID: <202108171758.sVrSfJdY-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   b9011c7e671dbbf59bb753283ddfd03f0c9eb865
commit: 213d5092776345ad5d6e2efa36a6bfbe9899e8b3 [282/8423] drm/i915/ttm: Introduce a TTM i915 gem object backend
config: i386-randconfig-r021-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=213d5092776345ad5d6e2efa36a6bfbe9899e8b3
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 213d5092776345ad5d6e2efa36a6bfbe9899e8b3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                                                            ^
   include/linux/pci.h:2154:69: warning: unused parameter 'dev' [-Wunused-parameter]
   static inline resource_size_t pci_iov_resource_size(struct pci_dev *dev, int resno)
                                                                       ^
   include/linux/pci.h:2154:78: warning: unused parameter 'resno' [-Wunused-parameter]
   static inline resource_size_t pci_iov_resource_size(struct pci_dev *dev, int resno)
                                                                                ^
   include/linux/pci.h:2156:61: warning: unused parameter 'dev' [-Wunused-parameter]
   static inline void pci_vf_drivers_autoprobe(struct pci_dev *dev, bool probe) { }
                                                               ^
   include/linux/pci.h:2156:71: warning: unused parameter 'probe' [-Wunused-parameter]
   static inline void pci_vf_drivers_autoprobe(struct pci_dev *dev, bool probe) { }
                                                                         ^
   In file included from drivers/gpu/drm/i915/gem/i915_gem_ttm.c:9:
   In file included from drivers/gpu/drm/i915/i915_drv.h:84:
   In file included from drivers/gpu/drm/i915/gt/intel_engine.h:17:
   In file included from drivers/gpu/drm/i915/gt/intel_gt_types.h:18:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9:
   drivers/gpu/drm/i915/gt/uc/intel_guc.h:109:59: warning: unused parameter 'guc' [-Wunused-parameter]
   static inline u32 intel_guc_ggtt_offset(struct intel_guc *guc,
                                                             ^
   In file included from drivers/gpu/drm/i915/gem/i915_gem_ttm.c:9:
   In file included from drivers/gpu/drm/i915/i915_drv.h:84:
   In file included from drivers/gpu/drm/i915/gt/intel_engine.h:17:
   In file included from drivers/gpu/drm/i915/gt/intel_gt_types.h:18:
   In file included from drivers/gpu/drm/i915/gt/uc/intel_uc.h:10:
   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h:24:72: warning: unused parameter 'guc' [-Wunused-parameter]
   static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
                                                                          ^
   In file included from drivers/gpu/drm/i915/gem/i915_gem_ttm.c:9:
   In file included from drivers/gpu/drm/i915/i915_drv.h:101:
   drivers/gpu/drm/i915/i915_gpu_error.h:276:43: warning: unused parameter 'gt' [-Wunused-parameter]
   i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask)
                                             ^
   drivers/gpu/drm/i915/i915_gpu_error.h:276:67: warning: unused parameter 'engine_mask' [-Wunused-parameter]
   i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask)
                                                                     ^
   drivers/gpu/drm/i915/i915_gpu_error.h:281:50: warning: unused parameter 'i915' [-Wunused-parameter]
   i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
                                                    ^
   drivers/gpu/drm/i915/i915_gpu_error.h:281:62: warning: unused parameter 'gfp' [-Wunused-parameter]
   i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
                                                                ^
   drivers/gpu/drm/i915/i915_gpu_error.h:287:42: warning: unused parameter 'gt' [-Wunused-parameter]
   intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
                                            ^
   drivers/gpu/drm/i915/i915_gpu_error.h:287:52: warning: unused parameter 'gfp' [-Wunused-parameter]
   intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp)
                                                      ^
   drivers/gpu/drm/i915/i915_gpu_error.h:293:53: warning: unused parameter 'engine' [-Wunused-parameter]
   intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
                                                       ^
   drivers/gpu/drm/i915/i915_gpu_error.h:293:67: warning: unused parameter 'gfp' [-Wunused-parameter]
   intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
                                                                     ^
   drivers/gpu/drm/i915/i915_gpu_error.h:299:65: warning: unused parameter 'ee' [-Wunused-parameter]
   intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
                                                                   ^
   drivers/gpu/drm/i915/i915_gpu_error.h:300:28: warning: unused parameter 'rq' [-Wunused-parameter]
                                     struct i915_request *rq,
                                                          ^
   drivers/gpu/drm/i915/i915_gpu_error.h:301:13: warning: unused parameter 'gfp' [-Wunused-parameter]
                                     gfp_t gfp)
                                           ^
   drivers/gpu/drm/i915/i915_gpu_error.h:307:61: warning: unused parameter 'ee' [-Wunused-parameter]
   intel_engine_coredump_add_vma(struct intel_engine_coredump *ee,
                                                               ^
   drivers/gpu/drm/i915/i915_gpu_error.h:308:43: warning: unused parameter 'capture' [-Wunused-parameter]
                                 struct intel_engine_capture_vma *capture,
                                                                  ^
   drivers/gpu/drm/i915/i915_gpu_error.h:309:36: warning: unused parameter 'compress' [-Wunused-parameter]
                                 struct i915_vma_compress *compress)
                                                           ^
   drivers/gpu/drm/i915/i915_gpu_error.h:314:52: warning: unused parameter 'gt' [-Wunused-parameter]
   i915_vma_capture_prepare(struct intel_gt_coredump *gt)
                                                      ^
   drivers/gpu/drm/i915/i915_gpu_error.h:320:51: warning: unused parameter 'gt' [-Wunused-parameter]
   i915_vma_capture_finish(struct intel_gt_coredump *gt,
                                                     ^
   drivers/gpu/drm/i915/i915_gpu_error.h:321:30: warning: unused parameter 'compress' [-Wunused-parameter]
                           struct i915_vma_compress *compress)
                                                     ^
   drivers/gpu/drm/i915/i915_gpu_error.h:326:50: warning: unused parameter 'error' [-Wunused-parameter]
   i915_error_state_store(struct i915_gpu_coredump *error)
                                                    ^
   drivers/gpu/drm/i915/i915_gpu_error.h:330:68: warning: unused parameter 'gpu' [-Wunused-parameter]
   static inline void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu)
                                                                      ^
   drivers/gpu/drm/i915/i915_gpu_error.h:335:49: warning: unused parameter 'i915' [-Wunused-parameter]
   i915_first_error_state(struct drm_i915_private *i915)
                                                   ^
   drivers/gpu/drm/i915/i915_gpu_error.h:340:68: warning: unused parameter 'i915' [-Wunused-parameter]
   static inline void i915_reset_error_state(struct drm_i915_private *i915)
                                                                      ^
   drivers/gpu/drm/i915/i915_gpu_error.h:344:70: warning: unused parameter 'i915' [-Wunused-parameter]
   static inline void i915_disable_error_state(struct drm_i915_private *i915,
                                                                        ^
   drivers/gpu/drm/i915/i915_gpu_error.h:345:14: warning: unused parameter 'err' [-Wunused-parameter]
                                               int err)
                                                   ^
>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:137:60: warning: unused parameter 'bo' [-Wunused-parameter]
   static void i915_ttm_evict_flags(struct ttm_buffer_object *bo,
                                                              ^
>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:275:61: warning: unused parameter 'evict' [-Wunused-parameter]
   static int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
                                                               ^
>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:278:23: warning: unused parameter 'hop' [-Wunused-parameter]
                            struct ttm_place *hop)
                                              ^
>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:396:28: warning: unused parameter 'st' [-Wunused-parameter]
                                  struct sg_table *st)
                                                   ^
   1566 warnings and 1 error generated.


vim +/bo +137 drivers/gpu/drm/i915/gem/i915_gem_ttm.c

   136	
 > 137	static void i915_ttm_evict_flags(struct ttm_buffer_object *bo,
   138					 struct ttm_placement *placement)
   139	{
   140		*placement = i915_sys_placement;
   141	}
   142	
   143	static int i915_ttm_move_notify(struct ttm_buffer_object *bo)
   144	{
   145		struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
   146		int ret;
   147	
   148		ret = i915_gem_object_unbind(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
   149		if (ret)
   150			return ret;
   151	
   152		ret = __i915_gem_object_put_pages(obj);
   153		if (ret)
   154			return ret;
   155	
   156		return 0;
   157	}
   158	
   159	static void i915_ttm_free_cached_io_st(struct drm_i915_gem_object *obj)
   160	{
   161		if (obj->ttm.cached_io_st) {
   162			sg_free_table(obj->ttm.cached_io_st);
   163			kfree(obj->ttm.cached_io_st);
   164			obj->ttm.cached_io_st = NULL;
   165		}
   166	}
   167	
   168	static void i915_ttm_purge(struct drm_i915_gem_object *obj)
   169	{
   170		struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
   171		struct ttm_operation_ctx ctx = {
   172			.interruptible = true,
   173			.no_wait_gpu = false,
   174		};
   175		struct ttm_placement place = {};
   176		int ret;
   177	
   178		if (obj->mm.madv == __I915_MADV_PURGED)
   179			return;
   180	
   181		/* TTM's purge interface. Note that we might be reentering. */
   182		ret = ttm_bo_validate(bo, &place, &ctx);
   183	
   184		if (!ret) {
   185			i915_ttm_free_cached_io_st(obj);
   186			obj->mm.madv = __I915_MADV_PURGED;
   187		}
   188	}
   189	
   190	static void i915_ttm_swap_notify(struct ttm_buffer_object *bo)
   191	{
   192		struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
   193		int ret = i915_ttm_move_notify(bo);
   194	
   195		GEM_WARN_ON(ret);
   196		GEM_WARN_ON(obj->ttm.cached_io_st);
   197		if (!ret && obj->mm.madv != I915_MADV_WILLNEED)
   198			i915_ttm_purge(obj);
   199	}
   200	
   201	static void i915_ttm_delete_mem_notify(struct ttm_buffer_object *bo)
   202	{
   203		struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
   204	
   205		if (likely(obj)) {
   206			/* This releases all gem object bindings to the backend. */
   207			__i915_gem_free_object(obj);
   208		}
   209	}
   210	
   211	static struct intel_memory_region *
   212	i915_ttm_region(struct ttm_device *bdev, int ttm_mem_type)
   213	{
   214		struct drm_i915_private *i915 = container_of(bdev, typeof(*i915), bdev);
   215	
   216		/* There's some room for optimization here... */
   217		GEM_BUG_ON(ttm_mem_type != I915_PL_SYSTEM &&
   218			   ttm_mem_type < I915_PL_LMEM0);
   219		if (ttm_mem_type == I915_PL_SYSTEM)
   220			return intel_memory_region_lookup(i915, INTEL_MEMORY_SYSTEM,
   221							  0);
   222	
   223		return intel_memory_region_lookup(i915, INTEL_MEMORY_LOCAL,
   224						  ttm_mem_type - I915_PL_LMEM0);
   225	}
   226	
   227	static struct sg_table *i915_ttm_tt_get_st(struct ttm_tt *ttm)
   228	{
   229		struct i915_ttm_tt *i915_tt = container_of(ttm, typeof(*i915_tt), ttm);
   230		struct scatterlist *sg;
   231		struct sg_table *st;
   232		int ret;
   233	
   234		if (i915_tt->cached_st)
   235			return i915_tt->cached_st;
   236	
   237		st = kzalloc(sizeof(*st), GFP_KERNEL);
   238		if (!st)
   239			return ERR_PTR(-ENOMEM);
   240	
   241		sg = __sg_alloc_table_from_pages
   242			(st, ttm->pages, ttm->num_pages, 0,
   243			 (unsigned long)ttm->num_pages << PAGE_SHIFT,
   244			 i915_sg_segment_size(), NULL, 0, GFP_KERNEL);
   245		if (IS_ERR(sg)) {
   246			kfree(st);
   247			return ERR_CAST(sg);
   248		}
   249	
   250		ret = dma_map_sgtable(i915_tt->dev, st, DMA_BIDIRECTIONAL, 0);
   251		if (ret) {
   252			sg_free_table(st);
   253			kfree(st);
   254			return ERR_PTR(ret);
   255		}
   256	
   257		i915_tt->cached_st = st;
   258		return st;
   259	}
   260	
   261	static struct sg_table *
   262	i915_ttm_resource_get_st(struct drm_i915_gem_object *obj,
   263				 struct ttm_resource *res)
   264	{
   265		struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
   266		struct ttm_resource_manager *man =
   267			ttm_manager_type(bo->bdev, res->mem_type);
   268	
   269		if (man->use_tt)
   270			return i915_ttm_tt_get_st(bo->ttm);
   271	
   272		return intel_region_ttm_node_to_st(obj->mm.region, res);
   273	}
   274	
 > 275	static int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
   276				 struct ttm_operation_ctx *ctx,
   277				 struct ttm_resource *dst_mem,
 > 278				 struct ttm_place *hop)
   279	{
   280		struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
   281		struct ttm_resource_manager *dst_man =
   282			ttm_manager_type(bo->bdev, dst_mem->mem_type);
   283		struct ttm_resource_manager *src_man =
   284			ttm_manager_type(bo->bdev, bo->resource->mem_type);
   285		struct intel_memory_region *dst_reg, *src_reg;
   286		union {
   287			struct ttm_kmap_iter_tt tt;
   288			struct ttm_kmap_iter_iomap io;
   289		} _dst_iter, _src_iter;
   290		struct ttm_kmap_iter *dst_iter, *src_iter;
   291		struct sg_table *dst_st;
   292		int ret;
   293	
   294		dst_reg = i915_ttm_region(bo->bdev, dst_mem->mem_type);
   295		src_reg = i915_ttm_region(bo->bdev, bo->resource->mem_type);
   296		GEM_BUG_ON(!dst_reg || !src_reg);
   297	
   298		/* Sync for now. We could do the actual copy async. */
   299		ret = ttm_bo_wait_ctx(bo, ctx);
   300		if (ret)
   301			return ret;
   302	
   303		ret = i915_ttm_move_notify(bo);
   304		if (ret)
   305			return ret;
   306	
   307		if (obj->mm.madv != I915_MADV_WILLNEED) {
   308			i915_ttm_purge(obj);
   309			ttm_resource_free(bo, &dst_mem);
   310			return 0;
   311		}
   312	
   313		/* Populate ttm with pages if needed. Typically system memory. */
   314		if (bo->ttm && (dst_man->use_tt ||
   315				(bo->ttm->page_flags & TTM_PAGE_FLAG_SWAPPED))) {
   316			ret = ttm_tt_populate(bo->bdev, bo->ttm, ctx);
   317			if (ret)
   318				return ret;
   319		}
   320	
   321		dst_st = i915_ttm_resource_get_st(obj, dst_mem);
   322		if (IS_ERR(dst_st))
   323			return PTR_ERR(dst_st);
   324	
   325		/* If we start mapping GGTT, we can no longer use man::use_tt here. */
   326		dst_iter = dst_man->use_tt ?
   327			ttm_kmap_iter_tt_init(&_dst_iter.tt, bo->ttm) :
   328			ttm_kmap_iter_iomap_init(&_dst_iter.io, &dst_reg->iomap,
   329						 dst_st, dst_reg->region.start);
   330	
   331		src_iter = src_man->use_tt ?
   332			ttm_kmap_iter_tt_init(&_src_iter.tt, bo->ttm) :
   333			ttm_kmap_iter_iomap_init(&_src_iter.io, &src_reg->iomap,
   334						 obj->ttm.cached_io_st,
   335						 src_reg->region.start);
   336	
   337		ttm_move_memcpy(bo, dst_mem->num_pages, dst_iter, src_iter);
   338		ttm_bo_move_sync_cleanup(bo, dst_mem);
   339		i915_ttm_free_cached_io_st(obj);
   340	
   341		if (!dst_man->use_tt)
   342			obj->ttm.cached_io_st = dst_st;
   343	
   344		return 0;
   345	}
   346	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108171758.sVrSfJdY-lkp%40intel.com.

--LQksG6bCIzRHxTLp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--LQksG6bCIzRHxTLp--
