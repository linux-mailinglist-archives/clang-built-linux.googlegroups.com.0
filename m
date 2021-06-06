Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM6X6KCQMGQELIFIJLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id BD31539CEA4
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 13:04:21 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id t8-20020a17090aba88b029016baed73c00sf8134197pjr.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Jun 2021 04:04:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622977460; cv=pass;
        d=google.com; s=arc-20160816;
        b=YM/FBmxN5sv0hnKQzLaa/e3mS3wgWVOd4KZW28Nuryvh+3+awBGjg5I0UUizgbgQrM
         S1A8+ko5IgZXFZz7h6iX23gTqV+7fqATFN1FU1mWnqviYSoJU2RCkJk10ScGRl1Bf8ft
         9WZJ5efHlbus5KSxNAtH7v9kHILb7LeuilYupNfiZjDrXP+nnbykZzOpPTB6/gtEevno
         dfgxgoTj+C+W6EsckAE1BAraxLm8vwuD8pcLCr5taqAcNGB+b4jBBh6XFAlPXMJAnxAc
         eqoOPXEon0BOMcDULNjj2iBAxwIScGyKzzyqEbR4d3/vGx7bvPh9CJ9+1ohMynD3zbRn
         K3uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=e5YliE2bQbFY8qVrk+lHDTgusFe7poQNyYE6BbNbcYg=;
        b=xFkTOiYGRCbjRVgG+H53cR8gZG2aSQpUEfiCvHlFaOnZMAlRf0PXxmwIgjo9RVwBYm
         RgdZttozLMOejqHBxXhdBZQVwEM9aa5HlM1nH4A5B75HphSONaHfHE/IBuE2pzHcFK2D
         skHoBSB7U/6fGBUu4vJP5MHf8UQDlngzGfG3rBPRCe0FXPl40CKqi1f78PsngyDV3zP7
         Vvn0fIGSOtnLga/JA3xPlGlzDNV5WTcfgWZAHnRcHh4G98ZXF8EgeTZW4pVCa1ypE8Oy
         j9lsb8KsC1blk5bvm6eAWYamRePaIesWZnYk4djk+EB4p7tSqfgqYgjyjnYQqvyx7IbQ
         JGJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e5YliE2bQbFY8qVrk+lHDTgusFe7poQNyYE6BbNbcYg=;
        b=WGtkAvLHakCou6gwvkZnBEfD8RaWZ10poifBbC2LgnyEVchoRCkRsyUQ8Tr4kZS7GS
         sve+MNOwIFnMgAFq41IEsWGHzurCQ/wacmnByMelAs+ioPr4IQ8+aD+BWmEwcESHdyr1
         tYZlr+pWBDkUkUAodNjLa+CArVn8N6qXk9vNbl846fe6Sv/G0O6kNUodqc/x1PcakPB6
         TFEoywtzZtigQeQXOxXmtOxqqCtE8pRMA1eTEKSBofwnH5/8y+noG0hFZM+z5TQ/LiR4
         3K/UqmzP930WBqfrZ02GUijBhKpp+MStuLHrF97oL71qnvECFQrqM8L+NZ3AuH8Em/ih
         1mew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e5YliE2bQbFY8qVrk+lHDTgusFe7poQNyYE6BbNbcYg=;
        b=Bk5xHEagvKbZzXvTVTKeeanWxaPBHfmlYUzvUKH5Jc/7PQtWZov+ktYr3Ziq/eMgnJ
         sZEpTAkQ6d211CTmK1stYOeu3A3oPNqaQC/nYmO5elRcEK90WjSpcOuRENwSTofayD27
         19fOuIIysgkTanE1dM/fq1zQAh9fxJpY4Pont4XPyRxNXxs6T3AAqG/XCwy+CvAwadF1
         d8A9nV6uY9hx2nRmjDjnb6k3EpBYY/4M2l7Y81YAerrfSITsptJq0Ir9EO4aQG4Qz4x1
         yNeJ5lrB29PNUTA6pofDOzVIEJW6vad7k1VaIHIqDZZJhx7GEuak7lmeOyUg09gvwGwA
         YbSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QDhEARji37bIq4/5B2srQ56OBgHKJXFNVT1ihss3H/tXce5H1
	lIrBjysPZii3JLWKksGHKUE=
X-Google-Smtp-Source: ABdhPJzmth3HdUBYErznr6FTwjKLTmm/hSshyEgFeFHOFCDhBW1y3efMhWKHEU/1HM6cLLQlCk8+8Q==
X-Received: by 2002:aa7:93b8:0:b029:2e9:df8c:d5e0 with SMTP id x24-20020aa793b80000b02902e9df8cd5e0mr12888306pff.19.1622977459697;
        Sun, 06 Jun 2021 04:04:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6487:: with SMTP id e7ls5999092pgv.7.gmail; Sun, 06 Jun
 2021 04:04:19 -0700 (PDT)
X-Received: by 2002:aa7:820f:0:b029:2e9:3aea:2e05 with SMTP id k15-20020aa7820f0000b02902e93aea2e05mr12730951pfi.13.1622977458939;
        Sun, 06 Jun 2021 04:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622977458; cv=none;
        d=google.com; s=arc-20160816;
        b=Y0YTtbxkThe3qZTct0chJm3K/F1c4UXEm9w+HGNdQw+cOVdhIZ+Udm/11gNkwsI9cN
         nzw4ttjVM3j9Dj940nEFsA1KeRwUKliKb1vgQSHnDY8P+LmmXWRpJijbPKdy8I+2r0PE
         rczzRyj84qcC64f98mRnTrjEgC8dGQn25VO0d9vfhHgCQAthTby3F4TUGPe+zAYI8zBK
         d+D/7wQ0RC7Cmo6mpq8ya1NY/gEgMhlxrGF2zrMJG05EgCmGmcUMjcjzQ2nWBwfls7yW
         CTD3C55BijUvVUk5TE0uWFrsFcorRB1+3qGbu7X3JmpVq4PtnrmSbupAWyyfWUshzsCR
         8JKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=3V+G/dXMnV4FIbmkux0mXidY27mDe1CWfYy3Hy6Z4ZE=;
        b=qSc6wXjEPGhxiyqHnftglqGWL0cX6Ov2I2Im48tnovRJ2Q/0EkjNAE4x/MoA5ls5UE
         9Ec6zWDyb6xEDcEt/pu2APFEQnyri95hcGC/Rrjhh8mgtvbYivn5ppyRvqG4nasr3+MZ
         ccRw3G2wpaFdQNEq9dRT9C/h3Nq3JIoOM92nDEw4dFruVB7lbDg6H/kwpk+ZhUEU/rqZ
         YivcLhwum9e/UTf0+tHDkCWgrFofwiCe/5NyMS9fQNSmubd8qf4bjaMK7nVERzNAIOQN
         wZf91F7pp88wPy/2Ol9q+rDpXOwDx86RAVxrjf4Qj0WVOkCfEfdgTJOlHtJYsmPAfMG+
         AsBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id s14si163936pfu.0.2021.06.06.04.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Jun 2021 04:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 7UMWN7BuyTLIrzpnwT0vkTnatzYcnVp/ahOt0mhI0K5tvCtHw5hcJncyg7g2bRnfbz3Zxani5r
 cBTyIb2Nuo7w==
X-IronPort-AV: E=McAfee;i="6200,9189,10006"; a="191830123"
X-IronPort-AV: E=Sophos;i="5.83,253,1616482800"; 
   d="gz'50?scan'50,208,50";a="191830123"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2021 04:04:17 -0700
IronPort-SDR: jyHn05vT4g3oUYZzqcyyt2KVzi6ReqMnEJSLPrxj5Q6LZrdvMdHZn+kTwT6YQ6iInbvfGm2GIE
 cfck+NMMV6+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,253,1616482800"; 
   d="gz'50?scan'50,208,50";a="481207134"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 06 Jun 2021 04:04:13 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lpqZh-0007sz-74; Sun, 06 Jun 2021 11:04:13 +0000
Date: Sun, 6 Jun 2021 19:03:56 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: drivers/gpu/drm/i915/gt/selftest_execlists.c:167:4: error: format
 string is not a string literal (potentially insecure)
Message-ID: <202106061948.X58BVN34-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k+w/mQv8wyuph6w0"
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chris,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
commit: 70a2b431c36483c0c06e589e11c59e438cd0ac06 drm/i915/gt: Rename lrc.c to execlists_submission.c
date:   6 months ago
config: x86_64-randconfig-a013-20210606 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8ec9aa236e325fd4629cfeefac2919302e14d61a)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106061948.X58BVN34-lkp%40intel.com.

--k+w/mQv8wyuph6w0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
HxbsmY10dgIA

--k+w/mQv8wyuph6w0--
