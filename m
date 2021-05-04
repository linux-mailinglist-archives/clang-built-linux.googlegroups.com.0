Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYNTY2CAMGQEIF2ZGMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DF9373028
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 21:00:50 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id i2-20020a056e021b02b029018159d70cffsf7864795ilv.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 12:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620154849; cv=pass;
        d=google.com; s=arc-20160816;
        b=VWfgb0a6XuTE0xu772KIRXI7WqMpPL/PNb2gJ2dCOsxZmPj/htEzh5hzgfyLdYdcy6
         UAgLF22gbC0SpxPt6oYIhPZv59zboodQBrQNLrpBGxWN+4h3A300U8AQwbCama2oHQr1
         4g2NkqOKxk6CPCSPdY8raEpsff87ScE26qY+x+BsFJJz9feA6jE0EydQDdlFY0TXWK5D
         XBMElkIk7afNIDleetVCG3XysK55yj2F6t4XaDVKoxAlfxG201OY89TaIkSsk/mZp5ir
         uPTM4e1UAsQQbELUDW9+sZT7aACJAzcHhGeuqky212v8lR/LN1iTLs76VFSKQgLuXn0H
         UmKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=V5CPUSN9ZyTIRCP+0uXkJ8L8RUbdamXzYY0/PtX1hAE=;
        b=gwzlzNblFsGCTdJf6QLAg5QVTP2bESGgf946tm1VOCofyr3uDy+jqyxa5YtxEZqEAJ
         qVyUiF/Jqj64szgb7CddHIujlNISoR1+1mZ0rDXSiQJMwtx4aItnGH53tiWUkxvO0nTu
         6RYtvToMPOMp04vxgn8gGBryoPHOHKhT8Hbmwb5kyIpCIqUDml+UebXQUqb4KsNtx19n
         KNuayNwQCgcD7UJKCT1ab29dM3xetUUu5jDI13f8Qpy7JxebkbjdWY+4OIiBCowKpLQJ
         thN+FmhOJLomX+93JxdSstPHhGecngO2WlOA5xUtz1wySRMbOeembc2Kjs/6uOv9nM/k
         BJpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V5CPUSN9ZyTIRCP+0uXkJ8L8RUbdamXzYY0/PtX1hAE=;
        b=rjEbuioCxYU6pYElOaHFBuwXGiV0Ea1IO6csBzIewj+OgjO58uDzkFfbusrtaeW97v
         4oaAximew6NNeOHFclYJUOdgZXTJakJUb8XPdrrSeaBqz8/E01+gZHEW+pXpYvZZ2Zp7
         s8nBkY02uUjrQbNCOMeVeraL4Zc/orh2tPpTvhClwI0FkC8sad/t4uR0FjkdMBTChLCk
         4HNXVDK193LlClEXrBSElGsJKTBbkWKIeUjSkwLAQcYWruytof+1pNLnCu7cp+7tO78Q
         +MDV6pUfT7h6ynF3LW1W8otK+Jc0kajbJxLWEQ7X9/5Pg07qo6my4R1yaGeWAXAiLeJI
         SmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V5CPUSN9ZyTIRCP+0uXkJ8L8RUbdamXzYY0/PtX1hAE=;
        b=g0X7Nvcro6xhSgeoRElM5eJjVDXjMQrKPhhhNbfUljE9CEBeesTEq96VNYENaL7qJf
         tYcUqwcgRi77bsH71G9GLl4O4vWsvZhHSLYuLabfohwcmSXyh5YuR8jvHRR2vEawl0EP
         H4corYlYyiozQLDMlUC3GwgqHgNqNa4qD5/GzndIhCt4ODMOuBj9y7nupTXSCidkbWf+
         Iof/Gjqnrxqqqo1VWAigy/YZbYgVouILH29sXej2Yzo/AOEjOA5nyjJWhaElr0nVtZBm
         ZYCDHfGj92BV5sYIGGiFrMERhelhduvsTr3fU7YJ0xUULcUml1ACdsCTA5Lpmh+8vmmE
         jQCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iMMcsjCw82XVLFGe17SeE2mqsYGLzJcVvb2Peb1AGNUiC5hkV
	YgJyO6Yz9fsNgMJTSEZu4wM=
X-Google-Smtp-Source: ABdhPJwiyVBzViwbCmqTkrTcm9SxNLFSDfF3VAdKN3g89HsYvfQQzOIaiX9GIrmCYcgMgLjRZQUX6w==
X-Received: by 2002:a02:5b85:: with SMTP id g127mr25536054jab.80.1620154849372;
        Tue, 04 May 2021 12:00:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1888:: with SMTP id o8ls4197146ilu.4.gmail; Tue, 04
 May 2021 12:00:49 -0700 (PDT)
X-Received: by 2002:a05:6e02:5d1:: with SMTP id l17mr20730271ils.78.1620154848821;
        Tue, 04 May 2021 12:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620154848; cv=none;
        d=google.com; s=arc-20160816;
        b=zO7vsdKGh19CdoGWtrZm+Ssvb2fBEzUCxSkOgN3p668peJtgLbkEncjFiXUe7j5ZX8
         R9gDBoC39pR0D49tcQgbCCwTGErqGAF0HprAX8BoaHBdGPS/k3wKq6SuSw5mv2PI2ffy
         uYM9E4NvEIYNmUVSAFuqxeLUSVORQHCqWFp9zDD9Y5eMvb73NuYAeVTfJ3pd9WC++Ikf
         Uo9oDLw54Zfvg0ig9C2ij3EKtCJgypZDVbvhxH6bH9PPYDbzmO+e2x1GzqaEhGDnD6Mn
         aw3Fs5iJFNlWLjBrrULwApyDUfNuS5Dqo5OTKIckLc+LM5aa5iaPgq7ms/a+84wWjrwP
         QrZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Rc7dJvQdVIAjxHu5JI5B98B1gsyyfcQI9UfgtFJZtL0=;
        b=rfGVZcCoFs0xbfGDpEkmHhC6o9kIewRPAyoeGyfY/ipRPKAV6h8omuC+mmiFlKL5hM
         o+e+5uwP2DeTIybkS8YMM7nvI5S4GBeDlOMBuBcDsz+uXumsdgAcTynSpIUUyOa5m65Z
         UfBj/GnWEwPlI+GLW72ibIVW6ju3X/1ASsx5zAqAykVF74M/Ij7/XuZ4pfgZf2VIAuZt
         NcIFJh4+Hd1KVoN42+bg/tdC9zxVtZCgyAO37yNar1lmUYaOqEZ5IvHCnaO2fDXk6OLW
         YG55uBOABP75gocQf9Iafl3CYC4VzIzApUfgRyyKfta6Y1JVZI0PlqEX5sxPiCINdL10
         wI+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id l9si150583iow.1.2021.05.04.12.00.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 12:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: mUj9mUuYx7RM4pnW64quWTBFuv5P7W9pALkWGB35gPNa2T07VLV3fFYI52QmD8KZch3LPwD+Vv
 /L0b5uPMw8Rg==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="194916981"
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; 
   d="gz'50?scan'50,208,50";a="194916981"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2021 12:00:29 -0700
IronPort-SDR: n1cgfwRbIlis+J97LsxZyWUEgFhW2k/hvpgE7QSemZYwcUyJGsaIUeKMkEYMwn0X4ewKxms8GB
 uEkmOHvWD9OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; 
   d="gz'50?scan'50,208,50";a="388913953"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 04 May 2021 12:00:26 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1le0HR-0009iS-Ek; Tue, 04 May 2021 19:00:25 +0000
Date: Wed, 5 May 2021 03:00:02 +0800
From: kernel test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
	Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: drivers/gpu/drm/i915/gt/selftest_execlists.c:167:4: error: format
 string is not a string literal (potentially insecure)
Message-ID: <202105050251.ke3gvCxj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chris,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   5e321ded302da4d8c5d5dd953423d9b748ab3775
commit: 70a2b431c36483c0c06e589e11c59e438cd0ac06 drm/i915/gt: Rename lrc.c to execlists_submission.c
date:   5 months ago
config: x86_64-randconfig-a012-20210505 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
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
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105050251.ke3gvCxj-lkp%40intel.com.

--TB36FDmn/VVEgNH/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
f7Zju/D3qhcARllQ/T8HIV/3F/IBAA==

--TB36FDmn/VVEgNH/--
