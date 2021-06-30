Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUXL6KDAMGQE3CPJMLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D91823B8845
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 20:20:03 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id j190-20020a253cc70000b029054c72781aa2sf5044305yba.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 11:20:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625077203; cv=pass;
        d=google.com; s=arc-20160816;
        b=RmKHtYG6ByXEJO335kBBr2t5/spUE44mXVsqbEZ19+pe+tft7ausuWZVHiqVz1Ben8
         y5MFe3zjUwkUK75WYCaE2Y06fsJ4hnhl2/tL6GSWlv3DwoAQs+JgdqAWA99J7nspwFEN
         AHr7mIm9TqIELYPXnK9q2EwKPqhcIMnCDarQmOTwgcPQw61vkjLdTMxYWUnHXL85F5MB
         gIRZp0cS2HpyxAwlIGCXzudog+xtxI+T4Bs3yVh1EwDLM+1zYsbUTK0G4WHHD4hW/IYx
         grY0GWHaJEc4dKkdpuzf6Muz1aax62MbjlI3Jwa5Jef7gd7WCSQi8601KrKdPq8/lkzC
         49og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y7hcG7z+pcOiZXBSiiZcAtYSHRvh8gR3B5WnOFaymxE=;
        b=aQ7WinsMFiXHIfPj5bEY6m96tzlvBUEs7ZUT5hz0y0lurLmcJXts/dYT1CJxOH7pWg
         Ta5QCWyjtGwJhR4/GVMqwxurFTVERECgcTlS5c5XkseRnNh/Nl6gPSzc1QECJ1P2iMuy
         HHxVurV+IhSrBk6rxB/lSEr9XRCoAucNnlVJgys/MJrkk9OhOhp2ReayAuVB66d7hYo9
         WYOL3LGXPyiqyGqb5O6PjTDwOEmH0ivHH2Yb7D5lahfUq8mOKwDJTSNQgoZkvKd8nhrL
         96Jn1PQlAeeufKYxk8e8TXcO0k76iS+a5UAmPAECJ0R0TAUxxtIKEi54qFSCBkArk3gM
         DMVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MKPMABh1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y7hcG7z+pcOiZXBSiiZcAtYSHRvh8gR3B5WnOFaymxE=;
        b=AI9zAtBCvc1s86Gv32GPNaZZ1Tk7uQUliY/kM90Yd4ZE4yXehNln9L+kL9mW5a5IxY
         GFATBaETWDyJBgoAY4LKE3K/qWCo0v6taGrxnafoOS6O2egoAOpa1SkVy28fiRDMUN7x
         3UKM6/Sn6ThmCFxS5HLCffBsYyScBL+LWLt47Pt4bJCd74rz4SpfVh2dwMWHRd07WeAi
         dZDGlkB2T+qU6mozyHIGJqDTnTGdrv/WBHu/nUk/BoN16dr5I5qDobBYpTKyeU5yHL1h
         6dB4yT4kruUbZKw9osn5YRHPfZM8JKw4EiGLEFbwskb401I8fn3l9YVKqrGId3OLs4DZ
         8AsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y7hcG7z+pcOiZXBSiiZcAtYSHRvh8gR3B5WnOFaymxE=;
        b=hinNNpR6bTWVPV6MP7R5COwnLqYgKZBG6JSaiHdZ4t+7P50oi/XHxuQzzAWk3VXEeI
         7fVAc9KRf/0jhNlMT1UIV60rlEZNkhOH0NSklrxVP7V/4oezFEhEl0DYUoIXWzOOP4RF
         3+Z+arwvgOsbnw2aS8N6X8XbnyNWs2qrxajRrcek3QdJNcTzVcokl8GKFsGX4FvbjJHz
         XoCptLRlMZ34gWlUA0bqKMVAy6zIvMFJi/iC93NZfmjT6bjaHrsc76ZTLV6NtdQEDeEM
         H+g4oumcj+8mPoWYzUoyd44VziGOD/FdEzj9pFac1+pCKv+a003Z97admXF6fFymQKMv
         rVhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gvFt6SfmA6q6fK26lDrl7nfY1r4Iu4wLMwXK5f4WdafJwqdAb
	0XoEAD3FcPeu15c7dxPjacw=
X-Google-Smtp-Source: ABdhPJx127rbQPeB33SLjvvivPRXTCGakGf+xClpsWZqwQxEvGT3/oKrajDHNXMqyjUhMUg336fTnQ==
X-Received: by 2002:a25:324d:: with SMTP id y74mr32072938yby.198.1625077202945;
        Wed, 30 Jun 2021 11:20:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e095:: with SMTP id x143ls224804ybg.7.gmail; Wed, 30 Jun
 2021 11:20:02 -0700 (PDT)
X-Received: by 2002:a05:6902:1505:: with SMTP id q5mr45839019ybu.68.1625077202500;
        Wed, 30 Jun 2021 11:20:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625077202; cv=none;
        d=google.com; s=arc-20160816;
        b=Z6/NdJf5wzQR0sfiCxpL7cF5R8KlGXXdeIuMLr0qGGbxiIvPaQHd9SMjpQ1eDghWV4
         WoW6EVpUUy70ogxIy6/E/ZCOp6H777X1hNX9A9yT2qPc14+FpkycvttfDr91V4JNrQYQ
         fTyiKNmyiwBMr0ApN7g+y55B/nUsaZcYInIZg0bBloQ2oYqHS4IKBxuiyjEUXFQObSmj
         5lJzpJHMcz0p9m1S7CAjmBHD7hdry/U4sAx7zbE92Vjo04/FVhLy8Q0Anrg1ngvV5swC
         LCfvOk4EOV6Nfq43Nv1RJN1AgbRltm7XiRrlxl673OEY8u2UiHeQen7P1dVZb8jGqQHr
         Xpxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qNWoODgXUcuO+WpQc3xQz9B/+q+DdggArArPLrN/4o0=;
        b=ag0C+TkPWY870HGVIrkyavkFtxOA0ijFBjbV5FdQ2ss+s1SZj9xMavV7OEtqCz4Q0X
         +bnU//DTVgHfz2hVCfhRwPNcDb8JIn0WMXWmXFEtEyL2rFs811AAuLtSd0IWCnX122UX
         AVmkUH0hbcIZE3KscF/KTUZl8wGACi/JJVbb994N78WzMXMJAQJ9og2Q1VzKgTmuuHhB
         YcJVc2irrY+Zsrp3o5b88oxUKI9Ski3mvGD388ulDwTXAcvFcJ8Vhz9YyCJ/EOosLKih
         SY5upEToA+7h5UoPtV0viCipNJpVBgtSBRMwcenBoXJ1/FG2zRUSPfw21mMqWZyoNEkb
         uJrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MKPMABh1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id r9si3244504ybb.1.2021.06.30.11.20.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jun 2021 11:20:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso4311842pjx.1
        for <clang-built-linux@googlegroups.com>; Wed, 30 Jun 2021 11:20:02 -0700 (PDT)
X-Received: by 2002:a17:90b:370d:: with SMTP id mg13mr4674058pjb.10.1625077201535;
        Wed, 30 Jun 2021 11:20:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q24sm23109340pgk.32.2021.06.30.11.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 11:20:00 -0700 (PDT)
Date: Wed, 30 Jun 2021 11:19:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>,
	Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>,
	"automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Vishal Bhoj <vishal.bhoj@linaro.org>,
	Antonio Terceiro <antonio.terceiro@linaro.org>,
	Remi Duraffort <remi.duraffort@linaro.org>,
	Alexandra da Silva Pereira <alexandra.pereira@collabora.com>,
	Collabora Kernel ML <kernel@collabora.com>
Subject: Re: #KCIDB engagement report
Message-ID: <202106301111.F53C46E03@keescook>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <202106011315.432A65D6@keescook>
 <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
 <202106151501.235746C5@keescook>
 <f68058fe-a047-2c02-ce35-8349a95f69b8@collabora.com>
 <202106151557.B2C839D@keescook>
 <faeea07c-6e5d-8efa-a246-b5ec1b1ef5a1@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <faeea07c-6e5d-8efa-a246-b5ec1b1ef5a1@collabora.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MKPMABh1;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
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

On Wed, Jun 30, 2021 at 09:54:31AM +0100, Guillaume Tucker wrote:
> +collabora
> 
> On 16/06/2021 00:02, Kees Cook wrote:
> > On Tue, Jun 15, 2021 at 11:23:35PM +0100, Guillaume Tucker wrote:
> >> +alex 
> >>
> >> On 15/06/2021 23:03, Kees Cook wrote:
> >>> On Fri, Jun 11, 2021 at 05:11:59PM +0100, Guillaume Tucker wrote:
> >>>> Hi Kees,
> >>>>
> >>>> On 01/06/2021 21:26, Kees Cook wrote:
> >>>>> On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> >>>>>> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
> >>>>>> <Nikolai.Kondrashov@redhat.com> wrote:
> >>>>>>> [...]
> >>>>>>>      KernelCI native
> >>>>>>>          Sending (a lot of) production build and test results.
> >>>>>>>          https://staging.kernelci.org:3000/?var-origin=kernelci
> >>>>>>> [...]
> >>>>>
> >>>>> Apologies for the thread hijack, but does anyone know what's happening
> >>>>> with kselftest? It seems missing from the listed[1] build artifacts, but
> >>>>> it is actually present[2] (and I see the logs for generating the tarball
> >>>>> there too), but I can't find any builds that actually run the tests?
> >>>>>
> >>>>> (Or how do I see a top-level list of all tests and search it?)
> >>>>
> >>>> The kselftest results are all there on the KernelCI native
> >>>> dashboard, for example the futex tests:
> >>>>
> >>>>   https://linux.kernelci.org/test/job/mainline/branch/master/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/
> >>>
> >>> Thanks for looking at this for me! :)
> >>>
> >>> How do I find the other kselftest stuff? I just see "kselftest-futex"
> >>> and "kselftest-filesystem". I was expecting _all_ of the kselftests, but
> >>> I can't find them.
> >>>
> >>> (Specifically, I can't find a top-level "list of all test plans")
> >>
> >> That's because kselftest is rather large, and we're only enabling
> >> subsets of it one at a time.  As more test labs and more devices
> > 
> > Ah-ha! Okay.
> > 
> >> become available, we'll gradually expand coverage.  We might also
> >> choose to have full coverage only on say, linux-next, mainline
> >> and LTS branches but not everywhere to not overload the labs.
> > 
> > Doing this for -next, mainline, and LTS would be extremely helpful for
> > me, though I suppose I mostly only care about the lkdtm, seccomp, and
> > pstore tests.
> > 
> >> To answer your question about "all the tests", well you can look
> >> at any kernel revision to see the tests that were run for it
> >> since it won't be the same for all of them.  Typically,
> >> linux-next has the highest number of tests so here's an example:
> >>
> >>   https://linux.kernelci.org/test/job/next/branch/master/kernel/next-20210615/
> > 
> > Right, that's helpful, but I need to know which kernel to test. It'd be
> > nice to have a top-level "all the tests", and for each test, it should
> > list the kernels that run those tests, etc.
> > 
> >> As you've already found, there are only 3 kselftest subsets
> >> or "collections" being run there at the moment.  That's by design
> >> in the KernelCI configuration, but at least we have good enough
> >> support for running kselftest now which wasn't completely
> >> trivial to put in place...
> > 
> > Right, totally understood. I spent time tweaking those pieces too. :)
> > 
> >> There are still a few issues to fix, but I would expect kselftest
> >> coverage to keep growing over the coming weeks.
> >>
> >> If there are kselftest collections you really want to have
> >> enabled, you can always make a PR to add them to this file:
> >>
> >>   https://github.com/kernelci/kernelci-core/blob/main/config/core/test-configs.yaml#L187
> >>
> >> As long as there's capacity for it at least on some types of
> >> devices and it runs as expected, we should be able to get this
> >> deployed in production pretty easily.
> > 
> > Awesome. I will do so immediately. :)
> 
> Closing the loop here, it's now all enabled in production.
> Thanks Kees for all the patches both in KernelCI and kselftest.
> 
> Here's some sample results on mainline:
> 
>   lkdtm https://linux.kernelci.org/test/plan/id/60dbfb7de0e18e28fc23bc03/
>   seccomp https://linux.kernelci.org/test/plan/id/60dbfbe2a9a5def16e23bbeb/
> 
> 
> As a bonus, here's a regression already on linux-next:
> 
>   https://linux.kernelci.org/test/case/id/60db556ec143e8c85323bbf6/
> 
> It's passing with next-20210628:
> 
> 19:26:49.968767  # selftests: lkdtm: READ_AFTER_FREE.sh
> 19:26:49.978731  # [   40.808124] lkdtm: Performing d[   41.274300] lkdtm: Performing direct entry SLAB_INIT_ON_ALLOC
> 19:26:49.982030  irect entry READ_AFTER_FREE
> 19:26:49.985157  # [   40.813688] lkdtm: Value in memory before free: 12345678
> 19:26:49.991294  # [   40.841184] lkdtm: Attempting bad read from freed memory
> 19:26:49.995147  # [   40.868690] lkdtm: Memory correctly poisoned (0)
> 
> Full log:  https://storage.kernelci.org/next/master/next-20210628/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/lab-collabora/kselftest-lkdtm-hp-11A-G6-EE-grunt.html#L3880
> 
> And failing with next-20210629:
> 
> 17:15:39.454516  # selftests: lkdtm: READ_AFTER_FREE.sh
> 17:15:39.458520  # [   55.832953] lkdtm: Performing direct entry READ_AFTER_FREE
> 17:15:39.462522  # [   55.852501] lkdtm: Value in memory before free: 12345678
> 17:15:39.470520  # [   55.879964] lkdtm: Attempting bad read from freed memory
> 17:15:39.474530  # [   55.907455] lkdtm: FAIL: Memory was not poisoned!
> 17:15:39.490501  # [   55.934343] lkdtm: This is probably expected, since this kernel was built *without* CONFIG_INIT_ON_FREE_DEFAULT_ON=y (and booted without 'init_on_free' specified)
> 17:15:39.498502  # READ_AFTER_FREE: missing 'call trace:|Memory correctly poisoned': [FAIL]
> 
> Full log: https://storage.kernelci.org/next/master/next-20210629/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/lab-collabora/kselftest-lkdtm-hp-11A-G6-EE-grunt.html#L3879
> 
> Does this look legit?
> 
> I haven't checked if there was a patch to actually disable
> CONFIG_INIT_ON_FREE_DEFAULT_ON=y and no automated bisection has
> been run yet.  I'll share any results we may get.

Right -- this is probably a CONFIG regression, rather than a kernel code
regression, but yeah, it's quite nice to have this all visible now!

I've got three more changes ready, but I'm waiting for the merge window
to end before I send them for linux-next:

https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=for-next/lkdtm

Thank you again for all your help with this!

Some ideas for future improvements that I might try poking at if someone
doesn't beat me to it:

- Find a way to separate test output from dmesg output (so the interleaved
  lines don't make log reading so hard any more).

- Have the Web UI for a specific test show just that test's output
  (instead of just having a link to the entire boot log).

- Have a way to do side-by-side comparisons across kernel versions and/or
  architectures, so there's an easy way to have a URL for a dashboard that
  shows "these tests all pass on x86_64, but arm64 is failing on that one",
  etc. Something that would look like:

	  v5.13-rc7

				x86_64		arm64		s390
	  lkdtm.ARRAY_BOUNDS	 pass           pass		xfail
	  lkdtm.EXEC_RO		 pass		FAIL		pass



-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106301111.F53C46E03%40keescook.
