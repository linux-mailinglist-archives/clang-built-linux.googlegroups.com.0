Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBB7DUSDAMGQECZULVFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 755373A8C30
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 01:02:32 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id 3-20020a4a03030000b029024950bdb69dsf427016ooi.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 16:02:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623798151; cv=pass;
        d=google.com; s=arc-20160816;
        b=tiM9afE5luYG+S4NopJB0aZuW1YYPaERCzbZDfxtEveRo0ZcrDx/mPDA/+qFqLPH/F
         5APFFxXeMVTm/dYujGq1D9JvNSpv4yb9jKtXBgwtfwRbmnU5pixOujpG+L+vlLCYDtYI
         bbOiMRwL6MBbX3VhM/EvGQONO8TP4m70Iw8ugmoguIbyl+0eCpLXKBpLBjJqF3vf/4Bx
         kSLiOXWHGe3tjSW9y61GAg1nVAan9lZvlUemlFzRAjE8AgUsjou6BY42nZTPs9S6mzC1
         6R20fP9LIMdTRRnG77DQnNrONVmjGV94GaLCgEzfpcWo6YSJfUA0PlI5/9uV9Ht9pxS2
         cWmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kITcVRrDNi+J6kLmFkJMbvAiC6sYO7Aofpn1JjWzrIs=;
        b=HTHmjCx5s/rVijb31Cwv+0ukZio1qJ2hkYYPd38CRqGjcxXaOB4lo76H+kKTQGUa8Z
         hIybTCdYL44x0VIyBvym3KEvje8yJTUFO8AB1ZXlaxPj/Hiq3xhSV2DnwNMObE97Yk/r
         XInzbPMGdS7d4AxUeF1sjA50Y4+WXDhuAMG80UCQjoU7JXmxC95BKyARvwYA9f27aTcJ
         Pd2pExu55hF1wQ6XoQdC5hkWQ9dR1AMmk2YP8coG9LIZvTd1BWo2ksuyLEYlNTaTVQCy
         jYZj3km9gMLemPw5u7t4y44lL7zAQxVy9lkRKTfDK2oxRHGDWAFuz44byScX/l4q3g9X
         d18g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bUpthdLx;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kITcVRrDNi+J6kLmFkJMbvAiC6sYO7Aofpn1JjWzrIs=;
        b=g0b1vh5POrf3HGuKpO8WDpy7qMp/2jdiQNlGZGwOW0FVo+L/svJ1MQMEgimTOIcQ5K
         72H/rcItQ0K1JvSFj68mUgZIIM7HzRL/iIo8YedEAD+z0PRf5IeKvGMBz0uwzMvN0MZo
         qP7DtSEGhzd7wjyMaakrVXqyYnSkolyp1W1j5im3HgD4iwlNGFLodcZjn2RFN4qpFGNF
         NxQjtfvTqNzI+hAYzNtydM+lsVPgJBpzwkbtiioYxSZV++sNPIK0NlQya7bBb6eVvHSQ
         lCYHuwoTNeDbBB8zTidgVT5xQQtjrwnzykyEAUamGxtMuys8x6OFy3tlYpGHfV2ibioq
         p0jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kITcVRrDNi+J6kLmFkJMbvAiC6sYO7Aofpn1JjWzrIs=;
        b=BbItWEcxu3B33MmXD7Tim6Q3tE5EUfpxL2o5JATTd2w7Kd7iPLd7qO8PoFpEUfahqD
         aHquON7feelKvQ3Ak+97wi/SPcucXLC58hcBT6JYsZXnJp565IGlQJbRnTbgGVNoucxC
         wdGZ1xqTPix34R4Dz1aSBhikKathkUziiAiSS1Xtc0ezIHhyrQH2uclwuxjdh+aR5cYR
         1dArMxIaVJ7VZFITbZOT/13SXKSx/rbl1aaYZENNAWiXQXerEyTmXo8BgwH/o95K6roj
         cLqsj+l7JH+yor0U5vxW4mQeoKcOFH+mdzDcBzlX/khehQbjekfc6Sp2snaBHdmlbKgT
         omuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ko5JijkzwRxVejMDYj/2WQCbjyQtVGH0ZslnBageov9i/6Dv4
	Xf4PVrNzNp7nsacj7tCdXaQ=
X-Google-Smtp-Source: ABdhPJyGhBxR0MfL4uHIMepAD7TPOYyi6ZzpiL+pD/E3S6BhIB8TCpU09qjTVL447pQzFZpDn7bMCg==
X-Received: by 2002:a05:6830:1002:: with SMTP id a2mr1250494otp.144.1623798151485;
        Tue, 15 Jun 2021 16:02:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b102:: with SMTP id a2ls140276oif.5.gmail; Tue, 15 Jun
 2021 16:02:31 -0700 (PDT)
X-Received: by 2002:a54:4195:: with SMTP id 21mr4965371oiy.131.1623798151114;
        Tue, 15 Jun 2021 16:02:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623798151; cv=none;
        d=google.com; s=arc-20160816;
        b=T8flEMY24aTXF6yb6s0wHcYqXCdsuJpASOgWn/1QcphbIn5Yxr5ZELg5NHi9a6MLYD
         GAtPRryEaOX8tiBJRsyrCRuLjlI9GFLNidPWrH3LR6tRMX3hQMzKaeJZKNFjNSGqvEYX
         OP9rtNeSa0YgrMC6F9qe77wELXnv+mYducK9YpC6VqWsXGN+5OaW5bfankOGt3LuCkhG
         mx+4nTOD69X9vThjGniYcZg3Mspah3vT2EMfJYGRrb++Wa7lmGDupFNSR55/98vcxKU3
         fl6jyvwTdDx8DW4z3gRRzeJoiJUisWPl7OA1q7mwkwJdof4H8L09ZhWGdgv1ZJSfsZTO
         fsAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ds9Ro6O3NsCwK1ipjkTFfpt2xNE2FHBAgSTM2mYoqYg=;
        b=K2X9W30RyV5kHx3edHCvmCAuMfGE21EGJkVGknnDun+NY8LPoPBSQ4y9GrZFSi9C9S
         +/mz0C7t+L23NUJWMJhNZRi88hIb92vkPvNlBPOw0+HEsIp6BquH07kq3tmYTmqe606G
         CqMHuDyV0FWrZ8xPzD8s4QICp/ZVPrFDs49wFYhRZAzN0JEgpX+539gKrB55s+sceFyO
         tk5GFYbi85qORgfNMmlldPe5VhFsevHrIZNcekjze/r5QidJIAXWLS1hy958ozMBAJjk
         WBNh1Kx+bV5yNjXYvmHqXXwuHoIcjnbDw0tRQlpEke86w7VDOfGleBD2LznaGvEunApH
         0DEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bUpthdLx;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id d12si25259otu.2.2021.06.15.16.02.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 16:02:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id 11so114782plk.12
        for <clang-built-linux@googlegroups.com>; Tue, 15 Jun 2021 16:02:31 -0700 (PDT)
X-Received: by 2002:a17:90b:1808:: with SMTP id lw8mr1673602pjb.30.1623798150784;
        Tue, 15 Jun 2021 16:02:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 60sm165710pjz.42.2021.06.15.16.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 16:02:30 -0700 (PDT)
Date: Tue, 15 Jun 2021 16:02:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>,
	Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>,
	"automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Vishal Bhoj <vishal.bhoj@linaro.org>,
	Antonio Terceiro <antonio.terceiro@linaro.org>,
	Remi Duraffort <remi.duraffort@linaro.org>,
	Alexandra da Silva Pereira <alexandra.pereira@collabora.com>
Subject: Re: #KCIDB engagement report
Message-ID: <202106151557.B2C839D@keescook>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <202106011315.432A65D6@keescook>
 <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
 <202106151501.235746C5@keescook>
 <f68058fe-a047-2c02-ce35-8349a95f69b8@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f68058fe-a047-2c02-ce35-8349a95f69b8@collabora.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bUpthdLx;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Jun 15, 2021 at 11:23:35PM +0100, Guillaume Tucker wrote:
> +alex 
> 
> On 15/06/2021 23:03, Kees Cook wrote:
> > On Fri, Jun 11, 2021 at 05:11:59PM +0100, Guillaume Tucker wrote:
> >> Hi Kees,
> >>
> >> On 01/06/2021 21:26, Kees Cook wrote:
> >>> On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> >>>> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
> >>>> <Nikolai.Kondrashov@redhat.com> wrote:
> >>>>> [...]
> >>>>>      KernelCI native
> >>>>>          Sending (a lot of) production build and test results.
> >>>>>          https://staging.kernelci.org:3000/?var-origin=kernelci
> >>>>> [...]
> >>>
> >>> Apologies for the thread hijack, but does anyone know what's happening
> >>> with kselftest? It seems missing from the listed[1] build artifacts, but
> >>> it is actually present[2] (and I see the logs for generating the tarball
> >>> there too), but I can't find any builds that actually run the tests?
> >>>
> >>> (Or how do I see a top-level list of all tests and search it?)
> >>
> >> The kselftest results are all there on the KernelCI native
> >> dashboard, for example the futex tests:
> >>
> >>   https://linux.kernelci.org/test/job/mainline/branch/master/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/
> > 
> > Thanks for looking at this for me! :)
> > 
> > How do I find the other kselftest stuff? I just see "kselftest-futex"
> > and "kselftest-filesystem". I was expecting _all_ of the kselftests, but
> > I can't find them.
> > 
> > (Specifically, I can't find a top-level "list of all test plans")
> 
> That's because kselftest is rather large, and we're only enabling
> subsets of it one at a time.  As more test labs and more devices

Ah-ha! Okay.

> become available, we'll gradually expand coverage.  We might also
> choose to have full coverage only on say, linux-next, mainline
> and LTS branches but not everywhere to not overload the labs.

Doing this for -next, mainline, and LTS would be extremely helpful for
me, though I suppose I mostly only care about the lkdtm, seccomp, and
pstore tests.

> To answer your question about "all the tests", well you can look
> at any kernel revision to see the tests that were run for it
> since it won't be the same for all of them.  Typically,
> linux-next has the highest number of tests so here's an example:
> 
>   https://linux.kernelci.org/test/job/next/branch/master/kernel/next-20210615/

Right, that's helpful, but I need to know which kernel to test. It'd be
nice to have a top-level "all the tests", and for each test, it should
list the kernels that run those tests, etc.

> As you've already found, there are only 3 kselftest subsets
> or "collections" being run there at the moment.  That's by design
> in the KernelCI configuration, but at least we have good enough
> support for running kselftest now which wasn't completely
> trivial to put in place...

Right, totally understood. I spent time tweaking those pieces too. :)

> There are still a few issues to fix, but I would expect kselftest
> coverage to keep growing over the coming weeks.
> 
> If there are kselftest collections you really want to have
> enabled, you can always make a PR to add them to this file:
> 
>   https://github.com/kernelci/kernelci-core/blob/main/config/core/test-configs.yaml#L187
> 
> As long as there's capacity for it at least on some types of
> devices and it runs as expected, we should be able to get this
> deployed in production pretty easily.

Awesome. I will do so immediately. :)

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106151557.B2C839D%40keescook.
