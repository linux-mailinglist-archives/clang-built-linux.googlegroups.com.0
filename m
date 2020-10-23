Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSVPZP6AKGQEUHHPQPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E21297028
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 15:16:59 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id ec4sf920528qvb.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 06:16:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603459018; cv=pass;
        d=google.com; s=arc-20160816;
        b=tlLV51SOXrTlUCvjUslWlt1bb9e5860xC4/vT84qeyyJwJFGKp+QUeBnj3FECQY/at
         bovhhxTftOKZAvRSOJLszP7ODVhJK2+Gv9DEJ0IDfc89MIH1UfAL6/muyWyMN42QplPB
         5VxxeLXeYikZw9jOtm7gLdmKgNwpU6XbwL5LLWlpjKGwYTgoGof7jR4z/JKzVLgQJoJ5
         D6TT0KmePYOBfPhVXEolZ9U7GwFRLR5upsDEasxAwdMcwbNYDJ6qpgED4n5PTdK49WJ5
         2iT5UWDSitUKpDe25K5zcoBAjKv3FuYInUKCtwiJvzuadzmEsndmlZ89hqU2/F3J6d8t
         yBJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ixkd0edzgBy5VUy8RgACFU3ej5huJfbuyO2suNZcrY4=;
        b=gFhcwah8KEffECjAXOI/zHxn3GRGJ9ojv6s6oxMgCFDW1rUH7iTxLu+P/JRp47y89k
         RXt9DyILf9/oDG4GdBVjHqQrrjcn0cuBBgy/56hkwE3sl/zSBK+NiaawXe6K+026sz+M
         T8Llm4YiMnaZRwEBbRKxKWUJRIkhJ6BxpcfJniRynQIIbCF5tgZF0jOL8vI636PuWp98
         kZ/86/DbPvEEXr6+FH9wOkCUcNN32OnYLTP6bSHdc01u1bJVen51TKXni1zUs3dUrhPI
         14bPSWK1M3XzWkgyVXTfOYT4oS3ShcPmSrRujhv5e14ILCo42tG3KJRxHWeepGHHwmzE
         16oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ixkd0edzgBy5VUy8RgACFU3ej5huJfbuyO2suNZcrY4=;
        b=f1tDtDD65XF7LCHwl5B8NXw9VJMJmJn80otfr+Tn6a89ovhc2YxWmWgzgwvxCiLnr1
         Y//vKQl6j13YwZiEYujg08FazUg1GuNt+4tTaul4F+mwobfCu23K7gIO/8rbkgI3gYmo
         U6F12phFcWv0PrxekvwWSN+vAxqpW47PkIhOdNbJn20OhXi7GZGl67qrzYg9/gNSniv7
         4ldIQ2auHaS/HNtW/QzdqrYpCUtQDeBUObLu1BBxkg1AgZnCrSqkEzJ+h9TN4LzX9BtN
         xNAl+x/Uy7xzdAHaszraHPahKbWTZKvstFVIS7uYYYEUfFKJy7YOnDgp7FbNwNKUAsj0
         uAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ixkd0edzgBy5VUy8RgACFU3ej5huJfbuyO2suNZcrY4=;
        b=pQQ0pZUoT857gG4s7kw66KryBSkjFs9ZJUfX2XyAjQW6AJ4gODGJJACzlVOrBcscH/
         +dzsIBz8XxwMQKPF9QKA8zTO25H+21AiXFKgBETs7EsvTqrDUwzu/twBDBmycymsisrB
         6Vcq6KotuPrYjiccxa3jjFBer6uCXdbMT9xXsgt7qStr0RQQlRQC2VdM2dslwBmwabQP
         ep5a4/vH2FhxrTW2Qi/WP77tgTYXOGK2GtwWWr3a5/VDv5RskPCD5asEZOy4U5tSkUYK
         6jbIo853OmyOAPZcxlwPYV5J0DQQ96VQvg/liH6BqGNTSDqgJzXQohlGJPtloL4DDMTY
         I9lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ntgfgdKZyaThq5SZLzxWJn4Ju421e0aHn6+qcBmIPIJ5c9jI7
	Lsh9JbogttQg4200Ql8RuTY=
X-Google-Smtp-Source: ABdhPJxqjBmoPvqZM5PRsCmDv724lRGvjXbCzvAJvm/oCW49hNFF8bChDWFwoQUZc8awwAXJS0wGDw==
X-Received: by 2002:a0c:ee8a:: with SMTP id u10mr2312805qvr.31.1603459018256;
        Fri, 23 Oct 2020 06:16:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2927:: with SMTP id s36ls533621qtd.1.gmail; Fri, 23 Oct
 2020 06:16:57 -0700 (PDT)
X-Received: by 2002:ac8:7409:: with SMTP id p9mr2083920qtq.390.1603459017608;
        Fri, 23 Oct 2020 06:16:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603459017; cv=none;
        d=google.com; s=arc-20160816;
        b=RfWMwGI9RK+m2WKET/OCofTeYELRfmIRhi4BM/olTLKgbWjuPIiosxD6OzW690G0LU
         Rxx0noK6SYNudfUboCkOnixbCyitsVjNlgEX9peFa8D1Q/ijVBA42YWwpwdc5hbZusIp
         WcsijNB9m4M+8KgO7+6KZgGfoymbD27s4Bt1XfrJZSIlVe6HIqSpOApDjwv0wRxNlARy
         fSN6lRr3WM0T4k+L3axEzwuJUsR9B23pyq7s5RLjd1HnRIdD8GSMJZ78Ho5sGYoLvKm8
         HLsH0K+Zv4RsyExsmQShSk9hdA0MDRyWgcY6PQ/fuFLH2mzQVwg0t0NhiL0J4iJLQS+f
         0Tow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=UmOBaU+5XlS4+ec0JkjGbCJFrlmJEtjilePVWJ3ei/0=;
        b=i5J6Fn27196B68fr0E57bkFV8BO/9ho1Q0sCbW8+hbX+m5wejPLht5UiqWzFnNAb2p
         cOYfWEEs7WewwGYWx/39BVNCkkeQKGZW14RyJtWxJxW49gA9nfvWojMclF9fVLoh/7cS
         usKT93KmCEO5GW55+naPxJh1smad/ByrltkjSUbfgJ53bOgM9c1w6Le4BEyIrkaQH/f9
         M6OR8LjEoiO2sWhNxQ72oFlb78UXOWdITqL1wbCN1Xv9DCXG+sGMTtk/a3jbwim02eBX
         ZxTbOS5u0RiPpKrc08tu16osNsb2uhlda0khfXcynpBFplDtuAApwJgY9WdMRSqtiBZI
         YvUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id p51si103935qtc.4.2020.10.23.06.16.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2020 06:16:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: ZPN3DXKwbJvPm/BGSqSnDKIKvgLlSbF++xPj9juGyRIbN071RWEb79zyy3MSa/BURaQzR1kv8O
 jtrmSt9reinA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="165081272"
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; 
   d="gz'50?scan'50,208,50";a="165081272"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Oct 2020 06:16:53 -0700
IronPort-SDR: YohSFCqx7u2TA+IMmzMgBnJ0UM5xH32mx/JqLvDX2BTS4pallIsFJq5ihN31p41SfjS87gomq4
 56F/rUVnQYHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,408,1596524400"; 
   d="gz'50?scan'50,208,50";a="333302608"
Received: from lkp-server01.sh.intel.com (HELO 1f55bd7cde4b) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 23 Oct 2020 06:16:49 -0700
Received: from kbuild by 1f55bd7cde4b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kVww4-0000DW-TX; Fri, 23 Oct 2020 13:16:48 +0000
Date: Fri, 23 Oct 2020 21:16:07 +0800
From: kernel test robot <lkp@intel.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>,
	Daniel Bristot de Oliveira <bristot@redhat.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH V2 1/2] sched/core: Rename and move schedutil_cpu_util()
 to core.c
Message-ID: <202010232145.QD0YMHVL-lkp@intel.com>
References: <80c66f55ac7f04b3ecd4ebf12d69d86c89480fa7.1603448113.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
In-Reply-To: <80c66f55ac7f04b3ecd4ebf12d69d86c89480fa7.1603448113.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Viresh,

I love your patch! Yet something to improve:

[auto build test ERROR on tip/sched/core]
[also build test ERROR on tip/master pm/linux-next linus/master v5.9 next-20201023]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Viresh-Kumar/cpufreq_cooling-Get-effective-CPU-utilization-from-scheduler/20201023-182231
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git feff2e65efd8d84cf831668e182b2ce73c604bbb
config: x86_64-randconfig-a011-20201023 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 147b9497e79a98a8614b2b5eb4ba653b44f6b6f0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/7ed0d9b8178634eb10ca1f4d7c20df13d6b36d19
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Viresh-Kumar/cpufreq_cooling-Get-effective-CPU-utilization-from-scheduler/20201023-182231
        git checkout 7ed0d9b8178634eb10ca1f4d7c20df13d6b36d19
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:281:10: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                   ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:281:39: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                                                ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:282:10: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                   ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:282:38: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                                               ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:48: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                                         ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/asm-generic/rwonce.h:50:14: note: expanded from macro 'READ_ONCE'
           __READ_ONCE(x);                                                 \
                       ^
   include/asm-generic/rwonce.h:44:65: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                    ^
   include/linux/compiler_types.h:270:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:23: error: no member named 'avg_dl' in 'struct rq'
           return READ_ONCE(rq->avg_dl.util_avg);
                            ~~  ^
   include/asm-generic/rwonce.h:50:14: note: expanded from macro 'READ_ONCE'
           __READ_ONCE(x);                                                 \
                       ^
   include/asm-generic/rwonce.h:44:72: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                           ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2493:9: error: returning 'void' from a function with incompatible result type 'unsigned long'
           return READ_ONCE(rq->avg_dl.util_avg);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/asm-generic/rwonce.h:47:28: note: expanded from macro 'READ_ONCE'
   #define READ_ONCE(x)                                                    \
                                                                           ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:281:10: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                   ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:281:39: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                                                ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:282:10: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                   ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:282:38: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                                               ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:48: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                                         ^
   include/linux/compiler_types.h:319:22: note: expanded from macro 'compiletime_assert'
           _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                               ^~~~~~~~~
   include/linux/compiler_types.h:307:23: note: expanded from macro '_compiletime_assert'
           __compiletime_assert(condition, msg, prefix, suffix)
                                ^~~~~~~~~
   include/linux/compiler_types.h:299:9: note: expanded from macro '__compiletime_assert'
                   if (!(condition))                                       \
                         ^~~~~~~~~
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:50:14: note: expanded from macro 'READ_ONCE'
           __READ_ONCE(x);                                                 \
                       ^
   include/asm-generic/rwonce.h:44:65: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                    ^
   include/linux/compiler_types.h:270:13: note: expanded from macro '__unqual_scalar_typeof'
                   _Generic((x),                                           \
                             ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:41: error: no member named 'avg' in 'struct cfs_rq'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:50:14: note: expanded from macro 'READ_ONCE'
           __READ_ONCE(x);                                                 \
                       ^
   include/asm-generic/rwonce.h:44:72: note: expanded from macro '__READ_ONCE'
   #define __READ_ONCE(x)  (*(const volatile __unqual_scalar_typeof(x) *)&(x))
                                                                           ^
   In file included from kernel/sched/core.c:13:
>> kernel/sched/sched.h:2498:16: error: initializing 'unsigned long' with an expression of incompatible type 'void'
           unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
                         ^      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   kernel/sched/sched.h:2502:27: error: no member named 'avg' in 'struct cfs_rq'
                                READ_ONCE(rq->cfs.avg.util_est.enqueued));
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:281:10: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                   ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/kernel.h:874:38: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                               ^
   include/linux/kernel.h:864:19: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                                   ^
   include/linux/kernel.h:850:40: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                                                        ^
   In file included from kernel/sched/core.c:13:
   kernel/sched/sched.h:2502:27: error: no member named 'avg' in 'struct cfs_rq'
                                READ_ONCE(rq->cfs.avg.util_est.enqueued));
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:281:39: note: expanded from macro '__native_word'
           (sizeof(t) == sizeof(char) || sizeof(t) == sizeof(short) || \
                                                ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/kernel.h:874:38: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                               ^
   include/linux/kernel.h:864:19: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                                   ^
   include/linux/kernel.h:850:40: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                                                        ^
   In file included from kernel/sched/core.c:13:
   kernel/sched/sched.h:2502:27: error: no member named 'avg' in 'struct cfs_rq'
                                READ_ONCE(rq->cfs.avg.util_est.enqueued));
                                          ~~~~~~~ ^
   include/asm-generic/rwonce.h:49:33: note: expanded from macro 'READ_ONCE'
           compiletime_assert_rwonce_type(x);                              \
                                          ^
   include/asm-generic/rwonce.h:36:35: note: expanded from macro 'compiletime_assert_rwonce_type'
           compiletime_assert(__native_word(t) || sizeof(t) == sizeof(long long),  \
                                            ^
   include/linux/compiler_types.h:282:10: note: expanded from macro '__native_word'
            sizeof(t) == sizeof(int) || sizeof(t) == sizeof(long))
                   ^
   note: (skipping 4 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   include/linux/kernel.h:874:38: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                               ^
   include/linux/kernel.h:864:19: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                                   ^
   include/linux/kernel.h:850:40: note: expanded from macro '__typecheck'
                   (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                                                        ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.

vim +2493 kernel/sched/sched.h

d4edd662ac16571 Juri Lelli      2017-12-04  2490  
8cc90515a4fa419 Vincent Guittot 2018-06-28  2491  static inline unsigned long cpu_util_dl(struct rq *rq)
8cc90515a4fa419 Vincent Guittot 2018-06-28  2492  {
8cc90515a4fa419 Vincent Guittot 2018-06-28 @2493  	return READ_ONCE(rq->avg_dl.util_avg);
8cc90515a4fa419 Vincent Guittot 2018-06-28  2494  }
8cc90515a4fa419 Vincent Guittot 2018-06-28  2495  
d4edd662ac16571 Juri Lelli      2017-12-04  2496  static inline unsigned long cpu_util_cfs(struct rq *rq)
d4edd662ac16571 Juri Lelli      2017-12-04  2497  {
a07630b8b2c16f8 Patrick Bellasi 2018-03-09 @2498  	unsigned long util = READ_ONCE(rq->cfs.avg.util_avg);
a07630b8b2c16f8 Patrick Bellasi 2018-03-09  2499  
a07630b8b2c16f8 Patrick Bellasi 2018-03-09  2500  	if (sched_feat(UTIL_EST)) {
a07630b8b2c16f8 Patrick Bellasi 2018-03-09  2501  		util = max_t(unsigned long, util,
a07630b8b2c16f8 Patrick Bellasi 2018-03-09  2502  			     READ_ONCE(rq->cfs.avg.util_est.enqueued));
a07630b8b2c16f8 Patrick Bellasi 2018-03-09  2503  	}
a07630b8b2c16f8 Patrick Bellasi 2018-03-09  2504  
a07630b8b2c16f8 Patrick Bellasi 2018-03-09  2505  	return util;
d4edd662ac16571 Juri Lelli      2017-12-04  2506  }
371bf42732694d1 Vincent Guittot 2018-06-28  2507  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010232145.QD0YMHVL-lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--dDRMvlgZJXvWKvBx--
