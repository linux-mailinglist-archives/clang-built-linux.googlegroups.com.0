Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMWDUWBAMGQEE6CUBLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A46A533687C
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 01:17:55 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id o206sf5478628vka.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 16:17:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615421874; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jwjw3r86kKNiq6FsS7lC16+PFUhFOk+s87ktDrlZQnHc3FPa3ge8BHUZe6m3ZDuDtQ
         r2OJzbrc7Tq/u4qulCddHSxdWhym9iB9n50WtP7R6+gVkrNidASzb0lMJK195NW7ePK7
         H7pVEocaDo5A64BpYf9L7j+gMF0iReQrp8OTYxRjpSn7SIpbN9FP96iDCJ8jqMo50exo
         sQ5aVL4lo+3Oz0lNfgZ9b2vJLmoIfDS1uQscsALOo6AyIBdtsODas6t/zcHSDFqpfshQ
         8SSqd5rV51iCXVAoTOaT/qbTukpX0whgD8M9TTpnTuqCBs2ePMALhNbN74HQ5JVB9f+9
         /+jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=sTIzmZNV8NEXxY2YUP7zopS50+vg+h0NgUrq6LZDqeY=;
        b=08zfbp0kP7TXKWnl0I9dnXyzNEI2rj60ISfZK8abaPSzl58GS8YsCIdAzavvpvXdY2
         deGOnTCSEp25Kmg0TngBveQABDnutIM6gmbbn+VQa3XdwkgF4d5mJoEvJUWftgLzkdyv
         jgej+JMLlgUAMF5rxVZzWD68FA+OMQpZNkAqzkqcYI6mWd2jfRvnQ6ysNVpSpTbkVCqU
         A+QNd67ymLvnihDMwv5Zs0e2UQv8CzbIx8BCBoM21imOTIziWOu2BNR3Y0ALSidcmZbO
         daWjvCH2PnDzwFSpiVWSlVC3LV+xqMXoSD3sbIP4V9+VE7U6dxcf5EitYVLhseHvoUsk
         GpJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sTIzmZNV8NEXxY2YUP7zopS50+vg+h0NgUrq6LZDqeY=;
        b=m+r7O5tVsqZkJHOT206/1Jj1tWf4l65DHq+AdDWEGFmPiNwHCYS3pzTovEluKMp6/I
         5OgVv0D6uJtwhAkh7fKG6rAFV4q36FFmgMYSfZ5lgx1TbxoT9Zg4LAiY4RGu0OxPabVv
         sgFGY1G4FZ5h5DW1mpTwR4Ya1UZSJQr/CowJZE/Vn7pfmKWRyeyOnncwsgAHRyJSZ3V2
         0VUIK3s513sUP6VT6kkxnzeoiEZplOgNEPA0x13URHHR+5iQ9SVfSx9XrBDJwQrNBuKI
         Jvkca6ctV5C/3fMq3yLN794P9wBL/uRFqHJ0D+omDDuOGeePnWsOseH+diqnpIXIfltT
         iY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sTIzmZNV8NEXxY2YUP7zopS50+vg+h0NgUrq6LZDqeY=;
        b=C7dhc2fXF1HyYxG2OhqfyvsD+sx6MoJFzJwf2XRmzVWPbe8h1bWU91Nfb+vALguMQf
         n+F379gcQ1NUAf3pyZis3Gdwyq1xFiueAz6TJ9n7Nr9DqH/KoN72txZXsNdH83Dn5jAu
         LbqMQszTfPAVK3NPNGIjo0RN8ceNR6CpAjgamYg/x75tnt6gtBsJFUKGYsjKuPOdghNU
         iLB/exvvIwRovfcc6gy+jnVMLHUXtfQhBn60npcoyaCCwqvHGas/jT1KcotN1vOu7OLM
         GCa9Y0IVR2Yn/sGRznQ4yhzgh0ynecec6E33bMKZrrifuBSrHQuvovcLc+gdV7ZjGTS2
         xQUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Yntx32Ve9Rq1Q34kb1pJWrMrty9M4n1qI93NHebVLpI31oDnb
	I3B3FQwuBneyD3LD18lXPDo=
X-Google-Smtp-Source: ABdhPJwpqNmPHiZL210m+Oyy/75PpFmAwBWu3qiNBWJeMvvX+OepiWMxfvc9pR7eHabpqniAEII4mw==
X-Received: by 2002:a67:f948:: with SMTP id u8mr3859152vsq.34.1615421874647;
        Wed, 10 Mar 2021 16:17:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cc66:: with SMTP id w6ls210397vkm.10.gmail; Wed, 10 Mar
 2021 16:17:54 -0800 (PST)
X-Received: by 2002:a1f:f247:: with SMTP id q68mr3484904vkh.4.1615421873961;
        Wed, 10 Mar 2021 16:17:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615421873; cv=none;
        d=google.com; s=arc-20160816;
        b=FFuCJ5E2K+gK0orC1cmPoARZFwHItAa+bGL4wfL6tka/IHl+DRhoPzIPLojqebzGW4
         QX4wYVsGw8d2Eeg1wBG1RTn2pgIEkixRtDj2eaecn8HT6y4VoNwC4c+g35J+ldU4Re9J
         bQiQMPawTUkBhiGAo3muj6cKTr9H6OnsMKN9RQAKx2RaPle7p1XzOZc5OKWWKAGamsAA
         e2hn7gro5gw9WhALDSDgfjME3zo7sJcVT561OmbwAe4NW4bBo1TXyTormwK0oa3k2XRi
         EvFcTm18rF0BRUwzluQJj4QmFED0ZCuwbGNF3SqL7z4wIvK7eSiHlEi6ZYhtmwSRuFcF
         tUvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=iMDJK9qAqvJ4cFrMpv51vDrzuOmWGz4syKDD2z3K+g4=;
        b=PvPnqLBx3XZjBtUsEO5jK+tT6HFTJLYR33gvG5NSYYoWY9ysuqRV961Cyuz/wFg7F3
         0e2m87J1jISkOq/aLfkasfkofTloI3c1FWnN+547sXa5xbhiLShVsKOFyfNm/Jl6oLcR
         fbj8Wz1MsUGE9Ug5gxL1X7nS1fYWvEj8a2JM7jQbmnF4MRM5iUe5VIy1A/ybaSpwQ3D6
         Cbdve5EYc15wOP4anrtm3Huw0tptU03IXwltQ8aeK/5LW0Z5OiBuRdbXgDueJep8eOOz
         nBpQ5BWfhDBxBt96dgtegWIznjWcm+H9Uai/GVckBRjD7335jhP/3apeIsf6kMFMe0Hp
         cI5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id i18si93744ual.1.2021.03.10.16.17.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 16:17:53 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: t0I8Kctrhz4+ckxEmj3uwg6JgguVcdbrDSUBrV9NMEUnT/A1H66OPu7L3r250Mhm2hpkVrQMa/
 o/YYyYahL+Mw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="167862385"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; 
   d="gz'50?scan'50,208,50";a="167862385"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2021 16:17:52 -0800
IronPort-SDR: KcXmy0uwcYSUJDRvUr0tg675nt6ChIgEtT/4u95ki979W777MjPE3irMUhRs1CgRNVO5YM+NPJ
 FEU6BBqZfR2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; 
   d="gz'50?scan'50,208,50";a="520916063"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 10 Mar 2021 16:17:49 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lK91Q-0000TJ-N3; Thu, 11 Mar 2021 00:17:48 +0000
Date: Thu, 11 Mar 2021 08:16:52 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: drivers/gpu/drm/i915/gt/selftest_execlists.c:167:4: error: format
 string is not a string literal (potentially insecure)
Message-ID: <202103110847.xekElvac-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
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


--gKMricLos+KVdGMg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chris,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   a74e6a014c9d4d4161061f770c9b4f98372ac778
commit: 70a2b431c36483c0c06e589e11c59e438cd0ac06 drm/i915/gt: Rename lrc.c to execlists_submission.c
date:   3 months ago
config: x86_64-randconfig-a014-20210311 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project cd9a69289c7825d54450cb6829fef2c8e0f1963a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=70a2b431c36483c0c06e589e11c59e438cd0ac06
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 70a2b431c36483c0c06e589e11c59e438cd0ac06
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/gt/intel_execlists_submission.c:6116:
>> drivers/gpu/drm/i915/gt/selftest_execlists.c:167:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
                           GEM_TRACE("spinner failed to start\n");
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:69:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:724:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:738:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/selftest_execlists.c:167:4: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:69:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:724:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:738:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   In file included from drivers/gpu/drm/i915/gt/intel_execlists_submission.c:6116:
   drivers/gpu/drm/i915/gt/selftest_execlists.c:1790:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
                           GEM_TRACE("lo spinner failed to start\n");
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:69:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:724:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:738:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/selftest_execlists.c:1790:4: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:69:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:724:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:738:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   In file included from drivers/gpu/drm/i915/gt/intel_execlists_submission.c:6116:
   drivers/gpu/drm/i915/gt/selftest_execlists.c:1807:4: error: format string is not a string literal (potentially insecure) [-Werror,-Wformat-security]
                           GEM_TRACE("hi spinner failed to start\n");
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_gem.h:69:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:724:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:738:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/gt/selftest_execlists.c:1807:4: note: treat the string as an argument to avoid this
   drivers/gpu/drm/i915/i915_gem.h:69:24: note: expanded from macro 'GEM_TRACE'
   #define GEM_TRACE(...) trace_printk(__VA_ARGS__)
                          ^
   include/linux/kernel.h:724:3: note: expanded from macro 'trace_printk'
                   do_trace_printk(fmt, ##__VA_ARGS__);    \
                   ^
   include/linux/kernel.h:738:30: note: expanded from macro 'do_trace_printk'
                   __trace_bprintk(_THIS_IP_, trace_printk_fmt, ##args);   \
                                              ^
   3 errors generated.


vim +167 drivers/gpu/drm/i915/gt/selftest_execlists.c

280e285dc78f73 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2020-02-27  134  
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  135  static int live_sanitycheck(void *arg)
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  136  {
1357fa8136ea03 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-10-16  137  	struct intel_gt *gt = arg;
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  138  	struct intel_engine_cs *engine;
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  139  	enum intel_engine_id id;
8d2f6e2f272109 drivers/gpu/drm/i915/selftests/intel_lrc.c Tvrtko Ursulin 2018-11-30  140  	struct igt_spinner spin;
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  141  	int err = 0;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  142  
1357fa8136ea03 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-10-16  143  	if (!HAS_LOGICAL_RING_CONTEXTS(gt->i915))
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  144  		return 0;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  145  
1357fa8136ea03 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-10-16  146  	if (igt_spinner_init(&spin, gt))
2af402982ab382 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-10-04  147  		return -ENOMEM;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  148  
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  149  	for_each_engine(engine, gt, id) {
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  150  		struct intel_context *ce;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  151  		struct i915_request *rq;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  152  
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  153  		ce = intel_context_create(engine);
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  154  		if (IS_ERR(ce)) {
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  155  			err = PTR_ERR(ce);
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  156  			break;
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  157  		}
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  158  
f277bc0c98a407 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-07-31  159  		rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  160  		if (IS_ERR(rq)) {
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  161  			err = PTR_ERR(rq);
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  162  			goto out_ctx;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  163  		}
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  164  
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  165  		i915_request_add(rq);
8d2f6e2f272109 drivers/gpu/drm/i915/selftests/intel_lrc.c Tvrtko Ursulin 2018-11-30  166  		if (!igt_wait_for_spinner(&spin, rq)) {
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04 @167  			GEM_TRACE("spinner failed to start\n");
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  168  			GEM_TRACE_DUMP();
1357fa8136ea03 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-10-16  169  			intel_gt_set_wedged(gt);
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  170  			err = -EIO;
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  171  			goto out_ctx;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  172  		}
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  173  
8d2f6e2f272109 drivers/gpu/drm/i915/selftests/intel_lrc.c Tvrtko Ursulin 2018-11-30  174  		igt_spinner_end(&spin);
1357fa8136ea03 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-10-16  175  		if (igt_flush_test(gt->i915)) {
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  176  			err = -EIO;
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  177  			goto out_ctx;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  178  		}
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  179  
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  180  out_ctx:
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  181  		intel_context_put(ce);
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  182  		if (err)
e6ba76480299a0 drivers/gpu/drm/i915/gt/selftest_lrc.c     Chris Wilson   2019-12-21  183  			break;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  184  	}
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  185  
8d2f6e2f272109 drivers/gpu/drm/i915/selftests/intel_lrc.c Tvrtko Ursulin 2018-11-30  186  	igt_spinner_fini(&spin);
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  187  	return err;
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  188  }
2c66555ec19235 drivers/gpu/drm/i915/selftests/intel_lrc.c Chris Wilson   2018-04-04  189  

:::::: The code at line 167 was first introduced by commit
:::::: 2c66555ec19235efd689741c44bbeb893aa8e7de drm/i915/selftests: Add basic sanitychecks for execlists

:::::: TO: Chris Wilson <chris@chris-wilson.co.uk>
:::::: CC: Chris Wilson <chris@chris-wilson.co.uk>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103110847.xekElvac-lkp%40intel.com.

--gKMricLos+KVdGMg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AyPB0ayrQQIA

--gKMricLos+KVdGMg--
