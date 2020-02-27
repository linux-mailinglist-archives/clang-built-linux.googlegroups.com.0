Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB6XU3XZAKGQEUIRYSLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 09405171235
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 09:14:52 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id k6sf1220768oij.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 00:14:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582791290; cv=pass;
        d=google.com; s=arc-20160816;
        b=gDKuV6ap9UNRzfKoHT6zgUGlPmqR3Rznnxe9aS6tO1tK5nEAIK9TVS7147k0NbUkvN
         yks7XyYqOaKrWeMSywrGjeJ+a71kvHSSh38Y9RV8uNe+IsKXnKXAOa7VxuMY21y4r4o1
         OOOHlR5EKbV9qlCGlt2lPVzhoZUb7M5TNW7D/jCmgMX2+ZvJyyiE7ve8xSIDc8BjISwW
         +JdpBTGeZLNTXF921MXcUhUMitkuZFtvk8kJIF62h5zZ0JF5R9nm8F0Hq++/8HKoOV0W
         ngOOpyO4BOu+2Yktp2D4Kl87fjMIzZ0Hxpm0bK7b6TqgwArJ6BsAO/TBFGAHDZ3j2Sqz
         fj7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/+cjpl36B0v4mFgJY664yGGiD8F5q9mxbBdXwWPSkII=;
        b=bmJ8nV5GPzF6bKTYqf9bi4WUUFYp2rU3WOEEISoL/Bte4gLp6hnx7PS4ql9Piwb55K
         mI8DVFDRi8wKz+gqUk9xI5YbLA4Jk0KN00OAZmfcEYdiNmIdTMFVZNqEQVYnf/0ra+U/
         lqk13fFI8I8bG1QrWUFMC+Fd2iKt3Hjp5uaaOmjmWJqvEvJj2FrR7QsIoIOPfCb5Baw3
         7XmssU0+1wnGS6vGlMNDGTYfR9u+mR5dIdtFFod7T31+q7gkbVKld5Z+n9+VdLsr7/dj
         Pi25MrNQOoMYIlCA0uL+bvKH1kUqtoZ1ZnbPpZeeQ2+C/XvqolA0JXjWNN5WUFRO7/CG
         HLZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=hN2LVDA9;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/+cjpl36B0v4mFgJY664yGGiD8F5q9mxbBdXwWPSkII=;
        b=gLdTcPpKtqx+YH/ZzMfereqxf0J6ec0Owa0WRZpVElEZ2/JlXvr7qYOs7AaGUbcmOU
         JzpwX5cn0yZZkM9mDY4CY2NgI58+7utbFtVCzg3UkYrr+QcO7zzVXp2U+M+SRFxhPaD9
         5HIWiOoOHmfTBOOGBS4bNQkyjWBlEC8PN6esn9JcpSvzmKsJQIcMho4kj6/RwVIN4JzG
         ZMdjKP3SRKQOt3iVccZjbzR4XRFeqeKRv3ClsNiy2OdExFWZZ9xn1ZVNOYxoMlREapEe
         BVEyIh0VaOhsG7CsSLIgaEFbADVztCo7/fCZhhF9/Ry88XTp11Na7vQkj3V+5+Dzk1rp
         RAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/+cjpl36B0v4mFgJY664yGGiD8F5q9mxbBdXwWPSkII=;
        b=Y01ZWXfhMtuwuxWvycUMNceanRU8za0B4Q3wp+OtBXp7498iiky3tfDlvGlpG8kf7y
         +Ybe8qN2THjKQ8oLA4ct/PlXojZJphcsnX29gmkivCZzaoR+P+UTQcvBq6HESA0Vv44A
         3cBvhTSXwueTWTO8gumgTL/+eR8Sa+vK6THWoSJikdAtVprNV/4J5bO3CBz/XPVjoxvV
         hF8+gxOjaoGLVOZg4XK0H2pMpnzlWQhVZtnAPJxQG2IerKqIxKXGDlkJjDc9WsK3NcQA
         EfpUKDjJsGuxSnIRNWJ/l8EO0rTY8TupuLqrCUQ+HA37/NCTc8Lv7YLZgcjPjH05+pHv
         inUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViwfyI+6K62nEOV4MbBdgok3uMPVIB8NfnHnEX1jHIXO+1iH5p
	7KajLE5Nlm27cpNTBTeMC1U=
X-Google-Smtp-Source: APXvYqxDzw7drRhAC61u3IlUCZrXnCk3k5w8yLQXqUu8CMpBSapfqDL6jKu9Ugp1qMwxw4gzbKaXew==
X-Received: by 2002:a05:6808:658:: with SMTP id z24mr2402391oih.91.1582791290627;
        Thu, 27 Feb 2020 00:14:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d615:: with SMTP id n21ls635428oig.5.gmail; Thu, 27 Feb
 2020 00:14:50 -0800 (PST)
X-Received: by 2002:a54:4010:: with SMTP id x16mr2474779oie.174.1582791290229;
        Thu, 27 Feb 2020 00:14:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582791290; cv=none;
        d=google.com; s=arc-20160816;
        b=JLQF70Ri4tG0GaUn02UysAYrim/oVo0DPKcneS5Mv7JZ0TMmzphJuR1AQ2RUhd1fbl
         SF8qL/R8a3/spJUbakt8Q4FRTro8Ifolr2lkTjWElyZmM1R8aUhV8ktRK2SFsepNC08y
         FEZxYbuXw/UpKvWqcf5OvFqZ0QDFlPhp9YDKZtp02vmS8wcEHpmJ6UDMJrYYfJKyButX
         DqfB9r2PxaeEs4SsvNJACHf8y5mIiP6pufM/d7KV6MJrMZyppUDSMtOQn3GPO7ppf03f
         w2H8Ec8zAinD+k81J6s4FobmOvQOkMhSbvW8n4NlFMTx4jvSj2+RFO4c+uXnGI41HcQL
         p1ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gVAzurngXRERgwqvXquzO0zk6sbkP7H9EoltFEV/ei8=;
        b=ktQ+UZ23VQb29vHyA2NHCiGJPeQeZluS6HIz0AoTmATcFu1SZ70+tIYFStz/QHsNiC
         H5DkJ33qXNBWfFFz0CPr9NYsRAimicBbM2LhLSk7ILwf1uA0KWrvNFJh7TEvUQdjCwin
         A54My315ABuasSX/bzGS6tPV/Du4JN4rxKhh8tDZOnzZcFvsKjpT+7/iHudWv07A5SYY
         tqaj1AGCEIOgrmQRGvimsNTkaSOuElvw4MZ1GKo/v+SLFOU0bNX1B2IYqokGx4TQCQBc
         hndPMfkClFvefisuzUTS43MGhXf2gxNFG9xE5e+2WcOqEYRkV+v2m9oHxjTAvND6SHRr
         tdnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=hN2LVDA9;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id z12si203992oid.0.2020.02.27.00.14.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 00:14:47 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7EJe-0000vC-E6; Thu, 27 Feb 2020 08:14:42 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E6CEF30018B;
	Thu, 27 Feb 2020 09:12:43 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C85592B756CBF; Thu, 27 Feb 2020 09:14:39 +0100 (CET)
Date: Thu, 27 Feb 2020 09:14:39 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Vincent Guittot <vincent.guittot@linaro.org>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [peterz-queue:sched/wip-deadline 3/19]
 kernel//sched/pelt.c:393:43: error: too many arguments to function call,
 expected 2, have 3
Message-ID: <20200227081439.GE18400@hirez.programming.kicks-ass.net>
References: <202002261428.LgRaxM1P%lkp@intel.com>
 <6374b5e6-8059-2107-1e0d-e3d47a08c4a5@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6374b5e6-8059-2107-1e0d-e3d47a08c4a5@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=hN2LVDA9;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Feb 26, 2020 at 11:35:24PM -0500, Thara Gopinath wrote:
> 
> 
> On 2/26/20 1:59 AM, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/wip-deadline
> > head:   0467e3b09008e97dabd2373eaaa471fce23d32b4
> > commit: 15ebf004a9f97a00bd84abab23bacfad39029623 [3/19] sched/pelt: Add support to track thermal pressure
> > config: arm64-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (git://gitmirror/llvm_project 396b7253944e927878dff2f6321efabb3aaa0f45)
> > reproduce:
> >          # FIXME the reproduce steps for clang is not ready yet
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> > > > kernel//sched/pelt.c:393:43: error: too many arguments to function call, expected 2, have 3
> >                     ___update_load_avg(&rq->avg_thermal, 1, 1);
> >                     ~~~~~~~~~~~~~~~~~~                      ^
> >     kernel//sched/pelt.c:241:1: note: '___update_load_avg' declared here
> >     ___update_load_avg(struct sched_avg *sa, unsigned long load)
> >     ^
> >     1 error generated.
> 
> Hi Peter,
> 
> This is caused due to patch[1] from Vincent which has changed removed
> runnable load avg parameter from __update_load_avg.  The fix is quite
> trivial and is as follows.
> 
> @@ -390,7 +390,7 @@ int update_thermal_load_avg(u64 now, struct rq *rq, u64
> capacity)
>                                capacity,
>                                capacity,
>                                capacity)) {
> -               ___update_load_avg(&rq->avg_thermal, 1, 1);
> +               ___update_load_avg(&rq->avg_thermal, 1);
>                 trace_pelt_thermal_tp(rq);
>                 return 1;
>         }
> 
> 
> 
> How do you want me to proceed here?
> Do you want me to resend the entire series after re-basing to tip/sched/core
> or do you just want to fix this in your branch?

I had already fixed this up and re-pushed. My bad for not doing a local
compile test before pushing it out :-)

See here:

  https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/log/?h=sched/core

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227081439.GE18400%40hirez.programming.kicks-ass.net.
