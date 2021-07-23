Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBM6P5KDQMGQE2MLRDBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D0D3D3970
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 13:27:49 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id bc21-20020a0561220d95b0290258f921ac0dsf94929vkb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 04:27:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627039668; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9OQgwvHEgUPcNADtLsufT+4HvL3Sz7z9aQaq8hYMxGqoas9XaerHSk5+LV9oAjv2a
         09ZN3TVxHxgy7LVKRi5PS3b6TrbV3yup1KIzTZG2IcEtFhMaWxb4NQJ4ebLl9PqhZ9lg
         ipTi+omVD8iSavlXZLgOdOxTnOd0hHQpV3Io9vUTYb2/QA+T8p2kk6/93ZRlkqWqssXL
         LTiaAhHo0RIOUcJ96gfZQhTljPm/CtIGlB3OVqP6RhLxaOzrg0jD07dwyWlrzt9H4kxm
         9+lu5ktU9VUMX3P5PnyGIHpXXmM9jmIO5iz0eHYRR+aLlFv3ENI6IhoPeCSl1+zXf9LG
         pUUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lqMJfnwVSaC5CNmQeYpMbqtsQmH3HR+BSTEXaR+2JFI=;
        b=JTSgKhfTcx6NGYCZajCDvl+w4FtBHMIkS+zLIRzIvCvzFrfRxhS/I9pA10Ifv479dS
         VQwgjcSYUdVAy/J9nYjiQlY6keGs5to/PzgIGVkTt6DMLuwGyaxmmE0LPiuYrkwF5AMJ
         C8elPI2cvyr1yO9YbO9bIsGwzYGu6lIwXSWsdtKd0arUR+O5Ft4r1GfDWWRLBjMINODi
         VBxtpB28lpSNqvvK+ZAZzFjDPg4xPpm577NQLhkwwTq928pHvHOmadNTCXrO/iR3RXcT
         mhR0fUwDOj+af0BouZA4nSpSR9jbqzujbRONOL9VOiDubLrvsMMCotCwIRO971X/BNiM
         SGIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lqMJfnwVSaC5CNmQeYpMbqtsQmH3HR+BSTEXaR+2JFI=;
        b=at8O/HXyBLInstknjp/qhm6U3tEYdfvNAdJdnRucB+lN+QeMyTJlTJ31IiGcG5knoT
         Oa9n1H3cNNQbK3Aii5bW+WP5JLc7P6JXik3RGaLFsUICnMhe+Gs2tKYmxWeL68jxyzaa
         +HpP2qREP/eKWBf957ZBSnxWrpYGS2HD4cUVVQ1tGC5C9nCx0uw83/TB1V7CFTmKm8Vj
         o5qaqGJ3gTRrABLTJ2LAhWUZcjiAcYVnlPCynylrsKcc5npGkHHc+kHbf638FYJmI8+Y
         E7Ga8r2pyzkfWrd6gaDlFVBdBYk/1gK8pA2BqtA2S7C7AvZYlsbC9zCp3T6uExaOO/V8
         plyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lqMJfnwVSaC5CNmQeYpMbqtsQmH3HR+BSTEXaR+2JFI=;
        b=P5MfhuM4eqwtBRVps4eSLPAkpsB5YTXXmiryInlK0ymkDIXC29fTWkd7/FgM3T1LY/
         oM60kFAcnIz+FunqbQzQHLDar0DxCFh0Tm2QclbXGNBeuMGXLEAZ9J/PE+8b3w8N3pu0
         AFyQvmPKlYmpYakr1X65eC+mkh8Q5UAUFJsM3LJBfobyKrdSkIqJFHPK5G1O1qgjnNW9
         zF1FUsZkHsUAlKgAgCxSfNBFHzOVdHfrtVXt4DgIBuzBp+yirMgtbulffjTuyyYw1OnD
         n2FrcMnNNPNaCL4F9nJEYp9pwH5TcZ1IH9Bnj4RE+B4bW5oKOSde/gUO6fkgMVESScp7
         N6dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53203xpLOiM17hJ2H5chxG/gZX60cw5w2rX3sw2w6OvNSE2cTGMB
	ifMX8PIS8qwtWg+ChiQ2m1s=
X-Google-Smtp-Source: ABdhPJys17SAg+ulLuc2drr+Lp/HbVqDGX7CZn5HyJJiYK3PZ7GgjCHFd3xDBATthmWFHkgH+GYAuw==
X-Received: by 2002:a67:ffc2:: with SMTP id w2mr3406071vsq.36.1627039667875;
        Fri, 23 Jul 2021 04:27:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:7cc:: with SMTP id y12ls2012752vsg.3.gmail; Fri, 23
 Jul 2021 04:27:47 -0700 (PDT)
X-Received: by 2002:a67:e1c7:: with SMTP id p7mr3763298vsl.21.1627039667108;
        Fri, 23 Jul 2021 04:27:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627039667; cv=none;
        d=google.com; s=arc-20160816;
        b=vIz7qZ3WFOpDMSwMwXrfTyAzGBwAc9SRqE/md+diZRn92ubAeXPOt0HmhrwvraKlMG
         1EZJO0GcoDXqlXX6XZTdkCoN7zwzFoJZ4RgNfOfbh6kY3iAS6B18zoyWJ1o/mpc8NWX1
         noxNk1Pmlc+tTDZsSG/TEa8bAwu5LMqXYKJYQFAJqX6chqjCnq1iN6RnTERqqVadhm54
         cAeqpvazL87H37lrbQc5nPhxDTIRf5A73LjtkhDd/Iq+ZXd5FUp699/d2LA5vo3L72IF
         SuG177H1LpwEV+EJOvUoIrJM+NZxfuZLmqvFCuaeQdKWJ4KnlhnItGn31RnZRdCV4e+6
         e2MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=4JiIA7ZG/+zFJRPHi4qDdK5fF2SFpBPEnLURwtbmoUw=;
        b=VGI/jLFLB1/3YtmDdUC6Sr9/c7HgZvs4HxwIozWLxLkSkFppFGmj1a22hVa0Lu/rb3
         nq3F6g+pkTb9g3ydIi4HKi3+kAvHetS/eFXVfTJ3AACCGx02+NS583oNBw/w4tN2b8XH
         SRZ+6qsfazWune0cJHggpigwevSuuBkgJxE9FzHsIRCnO1SvAHcvAxI8ul3Ls9cW67p8
         SrZ1/x4B+sysZz89hvLzos9KAVYMKaJQ2FItm6zVTBKlj3K643ZK80XFnNmHz9P6xJwt
         zJDb1xEKWWYa0JqzdTwgaKurDIZXNAGLP79c7XRyQWBoVAH0A0rhB7mqTH6vmiLoFr+W
         6rnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id t21si3034985vkk.4.2021.07.23.04.27.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Jul 2021 04:27:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="275679424"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; 
   d="gz'50?scan'50,208,50";a="275679424"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2021 04:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; 
   d="gz'50?scan'50,208,50";a="513267437"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 23 Jul 2021 04:27:41 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m6tLB-0001eq-B8; Fri, 23 Jul 2021 11:27:41 +0000
Date: Fri, 23 Jul 2021 19:27:12 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: drivers/gpu/drm/i915/gt/selftest_execlists.c:167:4: error: format
 string is not a string literal (potentially insecure)
Message-ID: <202107231905.rS6sURU7-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chris,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   8baef6386baaefb776bdd09b5c7630cf057c51c6
commit: 70a2b431c36483c0c06e589e11c59e438cd0ac06 drm/i915/gt: Rename lrc.c to execlists_submission.c
date:   8 months ago
config: x86_64-randconfig-r036-20210723 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9625ca5b602616b2f5584e8a49ba93c52c141e40)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107231905.rS6sURU7-lkp%40intel.com.

--WIyZ46R2i8wDzkSu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
L3XRAvqb9kqmytC5v5dPg72S/gMJHywVgAgCAA==

--WIyZ46R2i8wDzkSu--
