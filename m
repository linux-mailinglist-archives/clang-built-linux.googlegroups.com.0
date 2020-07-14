Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTG3W34AKGQESCEMBZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C26821F21D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 15:06:22 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id b22sf9678700otp.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 06:06:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594731981; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDgILBSmq31GsxTVAUn0BTo0MIXYgBT14SVrDJP4tXmCsP/kUSfSYFuMiAEKiqn7Js
         GxDHH1tLY1ZOsEzh49PNT0F/oPU64qx3Mf1vqJ8ld+XWg/d+Cxz9avvvxlFlhK3G31nw
         YGfgC1XVsP+i0MXzUrlv9foLWv0wejIFWZ0LIaUb04/KHIDBOK+U7Q2zVghDyMCbaYIH
         JAve9ZN7LN+eiOOqCIxSaQhBI9Cyw1zAMSJs4d8XBOX/Q6zs3Sx4D1EY1keNZLj++Wt9
         ITMof1EmSUagwHfuWaYcnCeI0Fl8nMf0i2TE4cRHC1VVsHv5gRlQ2p1xQrYVD5UwXjSX
         B1XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sULb/pkq2K1JytoahMjTf9iBoeGuquKOL0GV5HDsXFI=;
        b=hWuZvJv5+rETxknL6bn30Dj3MoimNfNev7yyF/RQF02B/MiSSj2pyItQTQl6SZRBec
         fOdT73kVqgzDclCVC+ubwYFhCtXDQaUsWmYwm+w67X0HWYTyqVTPiJsKLmBBVfPjFsrK
         vDPLdQlhWwO1yeMWI2p+uCRlPRef91JwhadRocXXYv9NQw63QMAELBZhkDoCe8VJAnUX
         LPfCQFPhgiMiCKHiZYLq11lJu96F5wjYoWSJbnbHGMcbl64KbBjFwDK1wPKclEoXhA4K
         9pSfpACczWWwlsrgpsA4HQ7rF4PNywQOc9NPghihiNJPVENMQa7tAnTm9iLlIX8+JkGr
         ODig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sULb/pkq2K1JytoahMjTf9iBoeGuquKOL0GV5HDsXFI=;
        b=HtpO7Xo6N0jyAIQXPT0R5v2BJr34OkGYh5qxuLPRGL+tlVDxJJD1HzxyzBtnelDP3a
         t/TNaxDIHLMdpCQ0+bxeIACrZOZMat1Ipnb0cXDxtHtSE60LzwoySi2A0heiF5oPJ8qU
         2XNphiOgkqQFxQw6IL5zS+YT2KyKBmiTs6FayBd5vZfPMbMU6TWWjlsVGkXVPPj/gNAy
         UFOQ5OODjecS6e5tp1FIQ0pKI1juGuSNlPqUx22yePJWUs3C6vgDVbPhkkqQPAd5Gphr
         CcpPQejPHPe12d9FDKFNwYCDrF2+ffF9zErddfG1U/fcGosqNXwdO6PkDb3cV1hyxrNC
         slLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sULb/pkq2K1JytoahMjTf9iBoeGuquKOL0GV5HDsXFI=;
        b=Ces2GjVLXRHgQ2zWlG4gbjg+5JA77Xyy/CSm4sGBVlnFRUO9ZC/zi4kEyXDhU4suSK
         l0q0H30rKYOfEIkN8poxqn6Qt1tmjYD2ZErE6FWLYDZ4VXlRDZLMEFSINh4Yswcx4GEk
         ZAXaAbYjfrNgMROMdFOr2oFRQfAtT2TcyItngdm3HPXHuZFBDdAAIoL2YC27MHr7AKDS
         aJH8xATnzfuVbkzhhKzkPWvQq/+9ZCD98vPbTJF0zq5S2B1bISmT4/+VMMTlO9vVruCy
         q4K4x2I+BbarW88WuSEzhsyR5Eci0ho4/sKDucaychxpVidM6G9RU9e9ilhcbnjlWW/H
         lN5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CLKJPq7FZ9IZ1uLaVeEmf/0zIVney4Mvab4atVtWHkhBWygyK
	baTC9u3Qg9Y8tkuOLRvsQ0U=
X-Google-Smtp-Source: ABdhPJwWA5HodcK65VFbJkRyjrR9eoxkWyggX2o8njHeagEjEE6vwFNHok3sETwJwols+B7hlx6AcQ==
X-Received: by 2002:a4a:2f15:: with SMTP id p21mr4397350oop.20.1594731980622;
        Tue, 14 Jul 2020 06:06:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4684:: with SMTP id z4ls4343311ote.1.gmail; Tue, 14 Jul
 2020 06:06:20 -0700 (PDT)
X-Received: by 2002:a05:6830:4c6:: with SMTP id s6mr4014970otd.345.1594731980230;
        Tue, 14 Jul 2020 06:06:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594731980; cv=none;
        d=google.com; s=arc-20160816;
        b=vMOZkwzzwlRSwLIOuNwYH/FF0dj3qm2gvJ339F3mbYeOA0S448H09KEBavT55WyyZl
         Tscg7pYQMzfTF9AnhYpgDnCDFUyhdMwxthFFx/ZdCp9oDEqvdK8FHtEd3jzZ/EL1LQAh
         tLqVFYY/mCWwprUVKEuipRGsFG9Xq/ZN7zhcyWgyOQwUGrM1EbASiZ4gBSM8B/Jp9vxj
         slI48of7aiIMJWJmFODWZXxn/GKATsYLvSf+OVql66kVxfj6AntP4V+wJQAroswAe4mr
         nCKmWZ8R2jgg6Z9o/QjmXymZovB1kCq++jlqOIxqU9TQbg4IqFJ6q+rdru4bKAJGWGNg
         EnyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=J84ZorcmJj3JzcVJvgWganddMN7LQvc6iSwK3UZQDA4=;
        b=trHtwY7BJlJwtwA9bG3+tcZqFx1iQsOLqNhbxEAvAn0z2UxTa+sQD4gmCvJ2sHw882
         wRQqWKjAqJp0NKFQinyGg1VqCV8pzP3FB/jSmcVJ+fJ+xDyqZxGd+E4HCTjOP/OamGS4
         b6rL7MDtj88nIJ4jlBMnZonCowzw1tDwdLziEdtN7/2W+vPLn4gDw2XdbLTTPW+2jOnA
         uf0A6HkMm13yBWgGkX4ULmMfeH47dqSJO69HTIFGx09jzTS1TGB21J5YftZ/LXbuF6L5
         1GvcBRKqyzweV+c3WSoM2kxkjRnorIINYENW4ddD+T3iJrob+vcXcFO13Dm6f/D2anQK
         mCZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id n25si1239695otf.2.2020.07.14.06.06.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 06:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: Y6IdsrxGYKvUzP5SDLOy7+3Zy3e9mddwGnEuUrZ5EhkizaFpdV0YV+h7P5RZ7Fy1G4m4jTtkIX
 SWDNfrljFDhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="150310806"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; 
   d="gz'50?scan'50,208,50";a="150310806"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2020 06:06:18 -0700
IronPort-SDR: 8NV1/yY8HuSu1q6zHyIS0Kn28uDmTmCFiQzmMJrAHFucd7pzaOxaHYrDzf/yc5x3O8OQKhhaX7
 35supydG5OzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; 
   d="gz'50?scan'50,208,50";a="324538590"
Received: from lkp-server02.sh.intel.com (HELO 393d9bdf0d5c) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 14 Jul 2020 06:06:15 -0700
Received: from kbuild by 393d9bdf0d5c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jvKdS-00008t-Cc; Tue, 14 Jul 2020 13:06:14 +0000
Date: Tue, 14 Jul 2020 21:05:18 +0800
From: kernel test robot <lkp@intel.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] sched/core: Rename and move schedutil_cpu_util to
 core.c
Message-ID: <202007142126.cce7w0AU%lkp@intel.com>
References: <83d42cb2e589235750d68c9beada882ec93aeedd.1594707424.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
In-Reply-To: <83d42cb2e589235750d68c9beada882ec93aeedd.1594707424.git.viresh.kumar@linaro.org>
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


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Viresh,

I love your patch! Yet something to improve:

[auto build test ERROR on tip/sched/core]
[cannot apply to tip/auto-latest pm/linux-next linus/master v5.8-rc5 next-20200713]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Viresh-Kumar/cpufreq_cooling-Get-effective-CPU-utilization-from-scheduler/20200714-144059
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 9d246053a69196c7c27068870e9b4b66ac536f68
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:300:10: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                   ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:300:39: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                                                ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:301:10: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                   ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:301:38: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                                               ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:48: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                                         ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:25: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                  ^
   include/linux/compiler_types.h:288:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:46: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                                       ^
   include/linux/compiler.h:280:65: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                    ^
   include/linux/compiler_types.h:288:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:46: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                                       ^
   include/linux/compiler.h:280:72: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                           ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:286:10: note: expanded from macro '__READ_ONCE_SCALAR'
           (typeof(x))__x;                                                 \
                   ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:9: error: returning 'void' from a function with incompatible result type 'unsigned long'
           return READ_ONCE(rq->avg_dl.util_avg);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:289:28: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x)                                                    \
                                                                           ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:300:10: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                   ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:300:39: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                                                ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:301:10: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                   ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:301:38: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                                               ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:291:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/linux/compiler.h:405:48: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                                         ^
   include/linux/compiler.h:392:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler.h:380:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler.h:372:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:25: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                  ^
   include/linux/compiler_types.h:288:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:46: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                                       ^
   include/linux/compiler.h:280:65: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                    ^
   include/linux/compiler_types.h:288:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:284:46: note: expanded from macro '__READ_ONCE_SCALAR'
           __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
                                                       ^
   include/linux/compiler.h:280:72: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                           ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/linux/compiler.h:292:21: note: expanded from macro 'READ_ONCE'
           __READ_ONCE_SCALAR(x);                                          \
                              ^
   include/linux/compiler.h:286:10: note: expanded from macro '__READ_ONCE_SCALAR'
           (typeof(x))__x;                                                 \
                   ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.

vim +2493 kernel/sched/sched.h

d4edd662ac1657 Juri Lelli      2017-12-04  2490  
8cc90515a4fa41 Vincent Guittot 2018-06-28  2491  static inline unsigned long cpu_util_dl(struct rq *rq)
8cc90515a4fa41 Vincent Guittot 2018-06-28  2492  {
8cc90515a4fa41 Vincent Guittot 2018-06-28 @2493  	return READ_ONCE(rq->avg_dl.util_avg);
8cc90515a4fa41 Vincent Guittot 2018-06-28  2494  }
8cc90515a4fa41 Vincent Guittot 2018-06-28  2495  
d4edd662ac1657 Juri Lelli      2017-12-04  2496  static inline unsigned long cpu_util_cfs(struct rq *rq)
d4edd662ac1657 Juri Lelli      2017-12-04  2497  {
a07630b8b2c16f Patrick Bellasi 2018-03-09 @2498  	unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
a07630b8b2c16f Patrick Bellasi 2018-03-09  2499  
a07630b8b2c16f Patrick Bellasi 2018-03-09  2500  	if (sched_feat(UTIL_EST)) {
a07630b8b2c16f Patrick Bellasi 2018-03-09  2501  		util = max_t(unsigned long, util,
a07630b8b2c16f Patrick Bellasi 2018-03-09  2502  			     READ_ONCE(rq->cfs.avg.util_est.enqueued));
a07630b8b2c16f Patrick Bellasi 2018-03-09  2503  	}
a07630b8b2c16f Patrick Bellasi 2018-03-09  2504  
a07630b8b2c16f Patrick Bellasi 2018-03-09  2505  	return util;
d4edd662ac1657 Juri Lelli      2017-12-04  2506  }
371bf42732694d Vincent Guittot 2018-06-28  2507  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007142126.cce7w0AU%25lkp%40intel.com.

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
IKLk9FQUc4fBZoquGMwJ3H8iVy7gKWwAAA==

--pf9I7BMVVzbSWLtt--
