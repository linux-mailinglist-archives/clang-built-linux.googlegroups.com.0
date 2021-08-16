Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6VZ5KEAMGQETDOWPAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id D80BF3EDC24
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:14:35 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id v28-20020a05622a189cb029028e697f617dsf9585655qtc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 10:14:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629134075; cv=pass;
        d=google.com; s=arc-20160816;
        b=caSTxq0xWIX+WK2+mHZHouOHIk+UPmZN9tMVE205ycaudooVMJovgxzg1cp9poyCMi
         AbwpQQqe9bpZMAlCtDBLNpCwUQUTg5s1Tho4uFnoWmNPggoA3fd8505zaPRdJKnuVLx+
         ZZrTm7sQd7W+s71jxfKJMH5btu/tbmXfRfjhv80vp3x/rGeWKgwxw254088YcPWehlQc
         vG8c/pfY1HEC+v4uoFiaE2OiPkNpC+ItFQMgWhcF9IvlWCGNyOjUIJ+OGSkzi9ju9wH6
         l07uhhIbOQbsItPx2VW1mtcSzBcW/NAsxYuskMNa4dlHoopHiP/1H3f2kC1+eYLOlhWy
         dZVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=y1uWSrBA25BgucqQWM/tubrlLDe6VX125Mnz9aZXJRY=;
        b=Hcs+U35ZMQFqJwd3LiZA1fcfBKwtyR4KO++FfQsO5wsemh3YI7sZjdWoYbF1KxdQZa
         h2WlbcKTGrFKeB9E8tR78OcxkyWz1D4yJUlXIdmJRm/rOKVMe5lXFO9Ge+JTTEJ7/60n
         pRNGeORhKAJEzYr9BqDAKBkaowPvCTeSXTnYxvuv0dm9sAPGUKax7Dx05BnlWoK2ypiX
         En/plFCvUT+fPZ/wEFxWaufEyC+W0+CKG2HLjAyE9vnf+bpmLRFmq9M/vXy+eLH/wmLm
         WqWODy56kyqhKdynVvskec9IRtHNK35B7wkjnEF+ANo1JNP7ZlnJywQP5peeCF2GSd7d
         BxoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y1uWSrBA25BgucqQWM/tubrlLDe6VX125Mnz9aZXJRY=;
        b=jSSZ0/W3VLY2E/xj9cxbgs86e8DftKhofMGjNgcYYifWg6KYth2p1nZA5eDf1zWGiR
         u0oeHFf/aVpp8K5+fV8SB3Jwd0lYlaekhiNrCS66wtWQWJ1l74VFP0dbkOp0y/v1zhFW
         DbwXjULHYEk6bux9Gs25+/8kSfXq42CwExr2437OJIZeSRda+PQackUmptJR+iVarD06
         b9tc3hW8a6ehPWcdibOsjWOEbyB8E64K0bRfIHNdcZzNhOfKJfFxJOcGfJIKyTWKb05H
         tkq2RyBRnqoV+SLjUWArcTaL7JbiMrJ/5QqjCoqFPs76RywlgcIAQuCTnOOPxhEuJ7sP
         jD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y1uWSrBA25BgucqQWM/tubrlLDe6VX125Mnz9aZXJRY=;
        b=QzIwes8b/9H6agWEoXOu4cdkU2k1/GsF29cCGL9pUmo5SVujRDK5OKN98xrIIYeW0e
         ghLGRw7qpUomaLvLPHdWB84Q3AmN5twovghf8dSQY2wJJvo3cFS6uPXN2nKnGiKLYdrC
         QOtxaOyTtBzLKwzR7XrV3xEK87wF6oVN3JhXyfq3kiqVt1eaCNdu0KwPoobDnbbGR9aj
         od+iJ5yQC7F2TvrqyidKgIfVXVYxkHEalfHIiZLEA44E90dDAPLqnH5xruvMQG45z+s/
         17yw7AqF2dgzhl6rABFlSFw62swA5iK+ZCKOQltv3iZVRIyjLD1HNfk2e04+T9NBR9LP
         /JsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BBWAcwdgSYvHyq9X5I2imX0ladPf1jXtXSSDRwbrjin62OxSo
	vjo6uNi+3SDE+w5W0J29Sis=
X-Google-Smtp-Source: ABdhPJzgvKBNYhBfNctd3dLWw8zIQKkrH5wslZl1OdnGBE4NJ2TDAMKUcslGbTUp5EXXXUmEHv/cvg==
X-Received: by 2002:ac8:5f4e:: with SMTP id y14mr14973738qta.138.1629134074728;
        Mon, 16 Aug 2021 10:14:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:298b:: with SMTP id r11ls5835928qkp.5.gmail; Mon,
 16 Aug 2021 10:14:34 -0700 (PDT)
X-Received: by 2002:a05:620a:1525:: with SMTP id n5mr3494467qkk.386.1629134074092;
        Mon, 16 Aug 2021 10:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629134074; cv=none;
        d=google.com; s=arc-20160816;
        b=bhayNvnrL32LUEP3VTv22pceObEwTgTRYndZ6PlFNjavnpIs5RT0UIiPyOljGcsdWf
         6wLwm16sU/k1aO25q0g/6XYQlDoji/xSTqIz96HNIHQNm18Vh4JOP2aWTbnfs9NCmNpE
         nZRwyyWXIH+2RQDnHrCQ363adLAYFCROgwDh6DPQ9bh4jR9c1/fuauX6xqCoQEMghmku
         Xk3Xf1simVJh6jZONGQDYEMHLMPqJtGgx0GfT+iKzFhaIzMjYw48MuIa9nPaXuUFY03W
         RiHI1bB8cYVyyuo55DmyOM+wotiLqRRY6iw9pXEesVVVJJqoXU+lJp36/u+axnoNmFge
         FqlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=nHUEXatIr5rl56bRGkMMxsMT2oRdWYOsXhiOqNr3HrU=;
        b=dFFiueD6em3/GlzydNckx4vJWdGZtqnDIduhmySH9WhZTiAQcrceGjrabkE1JvjaFp
         U88za5tMYrEAcwfQwCeHVYncmu59el+horKdc3DlDy8NBiUc3P1VUV8jSSqF50VXTI5L
         DRmSohsiw8GNvMg6yeTTuymfAkgKgpg3Mw6i7wcvfQwNVtXctXv3iNINs7P6jmk9JzcN
         J75pZeKa/9AcEt2EAfntsflpDzfFbyBErbdiCx5Fr0qYodI9EsHfXv7MdbkTFWk0s7ig
         G8jZ9RdAdgLXHcpcq3EJA+zaY0tcEu7hRgWF64S3XgDxmS25aJ4ewyjOeHKtTSapQLCF
         Kwgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id n2si638479qkg.5.2021.08.16.10.14.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 10:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="195485380"
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; 
   d="gz'50?scan'50,208,50";a="195485380"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2021 10:14:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,326,1620716400"; 
   d="gz'50?scan'50,208,50";a="675819862"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 16 Aug 2021 10:14:29 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mFgBw-000Qn2-Q8; Mon, 16 Aug 2021 17:14:28 +0000
Date: Tue, 17 Aug 2021 01:13:28 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: drivers/gpu/drm/i915/gt/selftest_execlists.c:167:4: error: format
 string is not a string literal (potentially insecure)
Message-ID: <202108170124.rAdAgEas-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="a8Wt8u1KmwUX3Y2C"
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


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chris,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   7c60610d476766e128cc4284bb6349732cbd6606
commit: 70a2b431c36483c0c06e589e11c59e438cd0ac06 drm/i915/gt: Rename lrc.c to execlists_submission.c
date:   8 months ago
config: i386-randconfig-r024-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=70a2b431c36483c0c06e589e11c59e438cd0ac06
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 70a2b431c36483c0c06e589e11c59e438cd0ac06
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108170124.rAdAgEas-lkp%40intel.com.

--a8Wt8u1KmwUX3Y2C
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--a8Wt8u1KmwUX3Y2C--
