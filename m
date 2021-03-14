Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQN5WWBAMGQE3YHWQGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DDE33A21F
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 01:54:27 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id 6sf34069942ybq.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Mar 2021 16:54:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615683266; cv=pass;
        d=google.com; s=arc-20160816;
        b=A696JE3wPVfVPOBD22+uU179mXQSy+ENJD3tTmT7xAuRryOlAkNpDIpPSrGxsAmVpo
         JFj1D2Uxn3iv0Cuv71ChW2e84VMF4LOPXdyO+aZG0DjTLJL03rTyAJR5xLXwhTYcakCS
         dV9k33mgO7UgvkytUR3WKhr9cTvIBfQ9zj+sMfre7L63h2gQ+w/N26ssQCdT/KBv8U2a
         TXNtg+9t+qy4R0asMBkWeQvT1fbydJmcVorxAnlDwhNHx2R+e3bBSx4nDeR1CfRlJVzh
         EAl21ZKP8iZJR6AZrGVNM6jY8KhmnaUEJY6XK48xHz5gbzqVnSqW8j6opGKrwl0u3Nvy
         0lfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=2MCiL+c+1GQ9lYPnvym/NsPVVUlmrbkQUEl5EXCMeew=;
        b=JIiLUFkVnj8izR8JiYxlw44oS6XkYJlK2ZXx8E92cnGf1syqHhTy8yhM5eRvOMxn00
         IWXaFv7eSl1/XPuOJJGP/xdzIg93KnglW3OUv3+k/QidUD7z9Mpl9n0GDZFqow+SdPuE
         sHtMeVMqjFquuG53C7f1sPG90FNHTDWdxoA6PkD2GRdNLc86ILWsy8I+frJ6Pn4MJOKk
         31USRe1NmK6m5YoVU+ZywETsQGYMZMxtz8fcmLlANWlayzgeNMuuWzjhZthBCx/Zs7KB
         Kfg523ikOKV01lHryHjZkNmepEhRlhOYbNU1HHaZY0jISz/UqFeWmslKPAjs6+jdToF3
         3/Nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2MCiL+c+1GQ9lYPnvym/NsPVVUlmrbkQUEl5EXCMeew=;
        b=E0g8Oy4t+Nbs6xLED1RH1mgdd1s3GSgTYpZYSbJ+CdJFzKieSTiA2Z1VJKuJ7pSF4k
         0Hqq3GnPW4ofFaPMT0A/6dvDy8p4BujptsYHT+1zNCz1SYnPtefg8uVdHib5fYR03Hii
         6QKs43RUmhzD8HhB7P18d03s+mTzoVSFotC66F7u5E9uDugIYMw+EXnrpGUKkHJglL3o
         TRJjlZWewhAlLPFHRwmSHxAH6sEiZmdv6bDDIMeu7UdS6tCTJe6ENqEJ3Epvcc6WVB8l
         zE2PyPjXy7380S/vr5gvZcX242zVXb6EODnQd7hz9AS7tU2YB8Wv6KplM7bc4oxLhJaI
         eKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2MCiL+c+1GQ9lYPnvym/NsPVVUlmrbkQUEl5EXCMeew=;
        b=QiToADqVYl5MiiBapIN86maSdo53IRnpzjij9p38dRHDO1zHpXpVqZY5mC7KmpfzWR
         Mhv6HD4rVlDFjjRRj6WQ6xKqMFatpfJGt/c8p+atrFHSCEqSoi/mXbF6+T20enGGDMvu
         uANticK90/sqd0s0S+Bjparp/8xisqqzdTLZ+qKluvhGeEA9wlq8iuvKOYwThSXys1T7
         LBECE5dI66ustz+/LbcT89FFHhkaYKkMEabOysmqXXobpzRNTNWSePVxKsl9yGk08EYC
         yiDSHDZwLXolwlK2Y90KyzEPDDGRPxLcdDHmjoryhSHzZ9IXlmdRmyy//uOlJXZ5HdtL
         oCPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d8lgFaC7McAnQoNDSvE8eUl3noj5WgPb8t7eEFkXhc97mMbU6
	XidrnbmxKv6B5ev7xG+VAYI=
X-Google-Smtp-Source: ABdhPJykdPxIX92PnqDjWpnXAQeS3JvhbBIITMevJ4swJv0Ehe1UcV2/8i8XjNYLbyGW7lyb2OOPbw==
X-Received: by 2002:a25:b049:: with SMTP id e9mr29865577ybj.71.1615683265971;
        Sat, 13 Mar 2021 16:54:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d907:: with SMTP id q7ls6304858ybg.3.gmail; Sat, 13 Mar
 2021 16:54:25 -0800 (PST)
X-Received: by 2002:a25:5289:: with SMTP id g131mr29317575ybb.178.1615683265350;
        Sat, 13 Mar 2021 16:54:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615683265; cv=none;
        d=google.com; s=arc-20160816;
        b=TbzqPlCKm4v6+rhBTHQt6QMYBoS30KzRTn0tHX/cH7qHpyYOum0I6XSnWLsRfxMltl
         G2m8LsuMFETKiwmg8BuHeaes7K7gDdUQQbHn3QXGl0XGMha4b9bH0F+taOFde/qSmFqG
         gae+pWtpwXZnd5s8pjwZdZW0aQOYg+bFpZAcswVB2dPxcHEnesl7Y38kSm/JEAjbtouq
         Oc63oU7Mm5crWges6VA3BxPuj18UxIhVSQsdLV+vnlH5R3B6iDUR7ryIw0T66s5k8W49
         SuA/sOkX2RZ4cMZffobi4UHkPdyePrFIIZjvMzIXyjwPFpgwX12XAzGi8XS9eci11xMG
         JrzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=oPphBNKvWATu8Qzac2BEI+BeH/xHy1pZpNx6v2R9HoM=;
        b=R9IW8TZ1skvyGU1w/XukjO1lbbfHVrEQgRbiclyTkA/hYZ8Ulh8bm8wWWBet7q4hEU
         sbVqJt4a61AZdc9hMM4VlisrOgVlv2x9nFMPamDu3zv91CrZmryrOjnZcuD/e0VFkho0
         bzIRzuQhwFHx01zhWWJqH2G11D1rNI5pEg9KT6bw5fD+7sz1VNZyIjHYqoJ4C71n1WdW
         gFwrjApuWqkb3C69IItfBY7Zbc3q+iEqQhdHvboZIoLHtWDseJD2+kCQ52f4kvEDirpn
         OJyefxRLyUEUm8PlqHCnflLQi6wUfy6mVrI1Cps/3wdPmPCo9inpRG7AR4QKIoMIUawE
         L7Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id x23si593843ybd.1.2021.03.13.16.54.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Mar 2021 16:54:24 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: UHhPibptUyQkO6BZiwd3dW0sea1xu5qKeLAvmu8M/xThNJWRkPhJwspifMypowdxHKppNdMbew
 d7bMA3VZEF1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9922"; a="188326031"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; 
   d="gz'50?scan'50,208,50";a="188326031"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2021 16:54:19 -0800
IronPort-SDR: NfISGXcphYfTxNx8OSMw2Dp3dYvGhcwZfGhl4LEMtJmyIprp6DctNFV+DCydN6PcMPlJxI4627
 P56gmJ7JOiZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; 
   d="gz'50?scan'50,208,50";a="521798686"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 13 Mar 2021 16:54:16 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lLF1L-0002LQ-Ka; Sun, 14 Mar 2021 00:54:15 +0000
Date: Sun, 14 Mar 2021 08:54:09 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: drivers/gpu/drm/i915/gt/selftest_execlists.c:167:4: error: format
 string is not a string literal (potentially insecure)
Message-ID: <202103140804.0IzazbDu-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chris,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   88fe49249c99de14e543c632a46248d85411ab9e
commit: 70a2b431c36483c0c06e589e11c59e438cd0ac06 drm/i915/gt: Rename lrc.c to execlists_submission.c
date:   3 months ago
config: x86_64-randconfig-r034-20210314 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dfd27ebbd0eb137c9a439b7c537bb87ba903efd3)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103140804.0IzazbDu-lkp%40intel.com.

--cNdxnHkX5QqsyA0e
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
kkhjl/8AePMSp+BQAgA=

--cNdxnHkX5QqsyA0e--
