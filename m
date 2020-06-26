Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBCPT3H3QKGQE6WV4G2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF7320BCD9
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 00:41:14 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id e82sf11333895ybh.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 15:41:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593211274; cv=pass;
        d=google.com; s=arc-20160816;
        b=sFoWC0BgJ07uoZeW6gXbhU1oYsEbyTSFQKbens0qWsmzR/GweJydsM0q2+brIX1X8W
         pUzzztfOf4SoMkZevw/r91kNQdaZnc+BkmhrfjWPw8S0VAhr0CdkUS6JYWv1Y01MH0Mu
         U0FzBrJjiI21xrnLxtiZ4j2GucLtr8fMFYe4M4ZFKunyvC4R/3gNa6NmIrNT+wPQW5Ve
         IdqfevrClDBhNwldsmmNiGxMIuaCcsOPY/r9sc1ZDppHsPalK40wpHT7EADKaXSu023c
         QUzW1hgOcC+GXA5i/P2o2GGljkZTksbEgLfl0RpqkQhkBDQKhQ4G3VZBSmATRZI+4j0G
         j+Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hTKd401uzZArxIuuyQP6ZrI6JD2tl0BM88SnmRpCJus=;
        b=AuFT2jASXvKvI95z/6I+atE0+e64xfwETqw26cZUIGw/zmYDFe9FdMkoY6m2lgtGUo
         Gce5/436ekRBfRMU3iR5l5Lo3x2vs2qeYlliAyb4FuSpaGLRp0R/bKAUSepCMfiYZNT+
         l5JNQj+3pXGgo5eF9aStnILvBpQarD/CPjNee/laKP4Lm8pu0Fm0WBUVXNOHfJzgNZgh
         ZMqVVBIxia/PoMmi9rzfdGgzyqo6UZwBurUznbMxURwSjLCT7KreX9U57pFTnqg7bWoJ
         C6SGGfpYyegxlCLbPft6SVDwMza05jO+9ilF38k9Sytrc1GnaiE6bsLqEj3QNMBpLi15
         fUyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsYdt1m7;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hTKd401uzZArxIuuyQP6ZrI6JD2tl0BM88SnmRpCJus=;
        b=m/RWxntU89UX8bM/m3PXnrPbKrQwA2S3Gcijq/apofnz7y/0gwRX1nZ91MRQI8xzgl
         vs//I5WjMsa3pbtd6zKQMFXMP2ZnZJa83oEOKWuDKcclXIcRnUl7cKMe5IdlqzFdAkVY
         mQ6mE/yg2iLNWSb2K6Sfrcx5lA2HnnUGmOXdQBO2TPzlyrSpmL3TPvI1e3Bi7otCHhzB
         PL8qFaWy6FIK43eTdsqr3uV8SVpJpDQfnpQ5amvmW3VzLdBx+kNObhe3mpj4mC2h33yv
         eeMJ9lPuJ4aEbXS0HL7J8MEghQkTaLYRzUdHrwnEP2SJ90Ag6gEmYGICm5je54JRi/av
         VHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hTKd401uzZArxIuuyQP6ZrI6JD2tl0BM88SnmRpCJus=;
        b=WfIpyyd6+QZJ+NshLXXf1l/WQSJVqVpdrtiPtkH8Q9/L9ay2LB5PvdL6Tf30Dv4KME
         IoAsAPR8Z9unmbA3X3fY9FSNsalWthemWuBFN200FOhFKB2PYkSBxZo6zvtHc9cWYdtM
         bxqD1pT9AgqjoTaxTQR3xHtVr/VQXrjVqsDCYpACU0iE9JZNxB2ciRh7OD4GBjudOb/t
         97PXix4EgxUFvU7m9uhsFB6s4XyPqeutsKj8nnjS6OImrNIgMQfgWKRyGWh2QagpyPja
         Mh50/pTTldbw5K8t17wyrGbgE6Ibxr46kILbViHablDFv0VbRgOoH2tlKdHl/wxMNREd
         QRHw==
X-Gm-Message-State: AOAM532B4v63gS384izhnXAbJizZn8lnmAdP8bIedrhz99p+gN3YSxK/
	KVOHQHYABQkwr93QwQksfuM=
X-Google-Smtp-Source: ABdhPJxjHIxAEK0JUQEQFKRFLTHy2r3WAZ3KdpMu8hIOMmfQWHGMXN1EOUnvchHvs+4lHJY5o7G0Xg==
X-Received: by 2002:a25:69d1:: with SMTP id e200mr8708760ybc.127.1593211273848;
        Fri, 26 Jun 2020 15:41:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:44:: with SMTP id e4ls3826891ybp.10.gmail; Fri, 26 Jun
 2020 15:41:13 -0700 (PDT)
X-Received: by 2002:a25:7804:: with SMTP id t4mr9668773ybc.43.1593211273411;
        Fri, 26 Jun 2020 15:41:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593211273; cv=none;
        d=google.com; s=arc-20160816;
        b=BYiv3x0InYtsbQpOl2WB2xJr5ZJi1QsamzB4vtT5fAvYSPqmojMm9jm38reWkPx5hj
         u9YC8dTEQ924a/S18ggVIHjRU8Y+IxN54VrdY0MXydY25R2+pchDcUOkG/8Jom194sit
         nlbk13uMJCyEX9CZCYbfdWkoM8ukbzC9zicdYOMZcSZqAqEOzHXEMBsh7Y3XlvEnG/MI
         /mLOqHu8McuxSnOTITMvDMeY/5ov5d2UtVbTG6eFB0kLg7k2fA8LE5EhA7LWjnDGdlOS
         X3cIH6Ziq2Bwqf6JJqdLqChAlvkfBd1z5RxC724NUiJfCGlGL96YkQpOAdJE+8E3x7yX
         k1sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jyAPAzsMhs9Zr4S/upw4vcz2u3YBAX8bVwtFvbGa900=;
        b=AvA4bjn5FS3pBHgOcG+pc84bAIgbkwlRPhAAWarmjVw5V4WvQqzm+oWy2y35LDK+Yt
         DQ2hSOXf4qnhCwk1Y+1To89cdHeMEn/jDSS2D1R2b8iAFUU0/ihz+PBNelKy9NDeUKb+
         0sO4Y8PEw+gN/8rqZUvgCNoHjA3WuULYGxvp7yINRu5SY09v42OeqRCtlqHSP1esnQMg
         X9P+U0KViBSNN1Ca3rca9Y1Zh6CYFO3Edi9fqLiaBFTqYTVjbkxGBvjL4czhQPh9P/HU
         3xOSaHpSLKxec5LRLjxCjNT+S3WVQ6a2hQVJlcphAGuSWW6ZCuzPB40gZw4XXdzFszlR
         Bmcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WsYdt1m7;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id n63si1643528ybb.1.2020.06.26.15.41.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 15:41:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id cm23so5530525pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 15:41:13 -0700 (PDT)
X-Received: by 2002:a17:90b:78b:: with SMTP id l11mr5619404pjz.59.1593211272683;
        Fri, 26 Jun 2020 15:41:12 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id m20sm28737108pfk.52.2020.06.26.15.41.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Jun 2020 15:41:12 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 26 Jun 2020 15:41:11 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: kernel test robot <lkp@intel.com>
Cc: Ingo Molnar <mingo@redhat.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] sched: Declare sched_rt_bandwidth_account() in include
 file
Message-ID: <20200626224111.GB256865@roeck-us.net>
References: <20200626140253.141358-1-linux@roeck-us.net>
 <202006270351.lVmaZ420%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006270351.lVmaZ420%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WsYdt1m7;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Sat, Jun 27, 2020 at 03:16:15AM +0800, kernel test robot wrote:
> Hi Guenter,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on tip/sched/core]
> [also build test ERROR on tip/auto-latest linux/master linus/master v5.8-rc2 next-20200626]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Guenter-Roeck/sched-Declare-sched_rt_bandwidth_account-in-include-file/20200626-220544
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 01e377c539ca52a6c753d0fdbe93b3b8fcd66a1c
> config: x86_64-allnoconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6e11ed52057ffc39941cb2de6d93cae522db4782)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> kernel/sched/deadline.c:1315:7: error: implicit declaration of function 'sched_rt_bandwidth_account' [-Werror,-Wimplicit-function-declaration]
>                    if (sched_rt_bandwidth_account(rt_rq))
>                        ^

Guess I missed some condition. I'll try again.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200626224111.GB256865%40roeck-us.net.
