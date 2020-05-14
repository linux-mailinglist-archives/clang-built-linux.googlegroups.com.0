Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBIUQ632QKGQETDXO6RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D611D38C5
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 20:04:20 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id s13sf3943197ilt.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 11:04:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589479459; cv=pass;
        d=google.com; s=arc-20160816;
        b=OnuV4yCwr8A71CUEC1gNlwI1SshMCKQQ4X2+sHOJYyri+KJe/5mEcIX9VEbaj13HsT
         CoDtrO8Xi6z2jbzbCxjWRBlEPYyh7b7JAKt4mb2ZS+G1kvTqcmsU1XCEv8HZLE4WMRGI
         5LV34xf64+rMYDqrti2Meb5hQng6sj5wbUkU9TQkTu7SwsXULmd537ULeu2MDouujcI+
         ibBdH4rwTApv9+yhp5chlv9DNOJKGJj95knroKfqFYU899dhev9RGZSeDFQToUQ3aAIG
         6Z5DWg9YyNbu3Jk9cHHhO21D9vScrnRvieemVmk72F8O6BfmG6uRtiQOI4DAPhTyAgx6
         8kBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TyDpFzCx6g7ftYkFgcZJSWpuxgFwp3NyequqFzMUcHg=;
        b=N1hFfe0rfQpWqfe2BTz6EiARnvrqWOSS58k76GDVCznCyPFZnwtZ/Ykdk2woaeZxk7
         i+xY/KdcRh7SfyrrAlAH6UXkgpQO7g423uM1wGe+46cUIZ4pw/19seFA6GkTdHklpt35
         0V5IUPBmB28CxmcmaklznGzZgqoU/Ap025UIsDpMGT7CugGtlCwRUqiKvMUnE95dRncG
         yoDBLKIi0OJArMIY7yNZRWG0sd9NLLTHFuiQH6EgIekinoI1jeqd4xZdK+kL7GKZ5a3U
         ZwF6smgspuYSHJbhifW31pMUxbDm7p2pdpK/oVRr53suqCffwnCemP3aPVBaE9OT9vtz
         DtDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dZsQllqj;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TyDpFzCx6g7ftYkFgcZJSWpuxgFwp3NyequqFzMUcHg=;
        b=OsiNR3/ezdnD7aMskDLF+3EcddPsCZ03U0aKOnax2TDKQZTq1SM/N5amfxpk0jqTTV
         7aXqJZBCwhRacmlksm01Ted24MVZZj+SzObL8NNrdx8kQoCpD8fnHSttv/MEEM0BXtCf
         xfS2z8gSKQFoVULH5GhQRJPmYu4srN9gac00fOEuzSOQYwPiMNT/iReSBy9vgIrKTz38
         Je2HGPDaJ4oK7sd2wJicEhmoSXgeVM75mh0jeevAAoEofZwM1f+HNCwHdGFCIrDj8sTM
         b13gWJFIn2i8204QyXhHXn0zyViOhtr3yzjvsRTWkxc2RH38u915TNypmcYCuiWQKbQI
         dv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TyDpFzCx6g7ftYkFgcZJSWpuxgFwp3NyequqFzMUcHg=;
        b=AR86sLPEvjoBVuYTGyENm0UVr8d00ZyNWB9OpNcpXCWvw7q8hR9/bVVhumriDaJ3uV
         ele5QsqTHRi8/QiBkjdLd1RdUQX5/ynYz5yRVTJap24yilokMdIrEl/yf02YapBH0mHc
         S7YwYpOYjDuFs+gxTVcbb5O6xmeRdPZmqBnVSocWhQ4zCd/dfMpc1ghdYpvnxuCGhLc+
         ab1BMTPnqFR1Au+Ll/nRrzs60oOQS9/1nB0+qaJxHEb33vMhPHaQhirsQ9iK/nQnycge
         QwaT63fD6yEOy4o+5qx/Ks8kmSr8Hc1SSK8wW91LyeSC+nQoKxIA9jhd8N36Adce85sX
         xKhw==
X-Gm-Message-State: AOAM531UTQ2PRZY1PH6YUk7+Dmi7OF/5M7O0mS+kT5UAjPvn6nl7xRL5
	IiRAIv016L2c6XGiSU8JPRQ=
X-Google-Smtp-Source: ABdhPJw4iPiWkJA7KaS2IfhvL53Y7kMUDKy9ivlpJwzeENsQQyggp3LT/QXGnnL7CVHx3cUUxVPTDw==
X-Received: by 2002:a02:5b89:: with SMTP id g131mr5639050jab.75.1589479458617;
        Thu, 14 May 2020 11:04:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:de45:: with SMTP id e5ls936037ilr.3.gmail; Thu, 14 May
 2020 11:04:18 -0700 (PDT)
X-Received: by 2002:a92:d186:: with SMTP id z6mr5756298ilz.119.1589479458297;
        Thu, 14 May 2020 11:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589479458; cv=none;
        d=google.com; s=arc-20160816;
        b=K046T25ctQ71Cf6KXilslQ9Xqtnb/lWlKsgMNSM0AqdEPvYuOlzq4xy5Zqvc2a4Zan
         P9F8Nh4Hs/uYNQ+jol8aGl9O6hyFCrHo46B4743PTVIaTX4BDdD0/f7aFIsN373peEoI
         J3TRvJMAcMD5HyKNQnmmUnA+Zpx6N47Slbs1kQ4cNL/4GPapa8FMHN2Janr0jZmTljQv
         psIpXG8zVquG5Vo3ZKhpwTd4YdbkMy7qtzmVSrFtJyaOKOSkzraLpsn9HiR/9VEydiLJ
         D3ZtId6QGd7+jBBoP1obc4wZK2QQO06OGUndCTwXfHE9E1BnJWMCDSzAJ+/ibXdhVIul
         6r0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hm1L4TxK6USvoL4ulsK5K70owcN6rXPibVE1+OmeBO8=;
        b=dr5H59jJUumV4odN/wX2jjo4KajGCEU4AyYRmBUKaTa1WUmOqLKCW+ytDo/DyhwFzg
         /hAjae4g1g6/axRDmQY3sFiezRAtNBJBipSjn9oiB6QcKgiuddEKoF5SymAyqnVa+0YE
         ZIgJ2LxdYwCzL2VWZ1g2gPD1FppLue9JUfWXciOFq/O/gE/SrXJ12yb5OzX0kUD/iVfp
         W3SQzQyA+5TvxokZn+eKY4cR7g0iwWsvg9fiUVBHBGP8o3P2krUyHTwzi71nLLqy6e56
         Clf6BwccnJhbtYMSAT5MFwyFyroK5OPMuFEQYeJn7DsK6yxW4jg05dKyTVxWw/hNCZHu
         PmYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dZsQllqj;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s66si331629ild.2.2020.05.14.11.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 11:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id o7so25359050oif.2
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 11:04:18 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr2465007oih.70.1589479457678;
 Thu, 14 May 2020 11:04:17 -0700 (PDT)
MIME-Version: 1.0
References: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
 <CAKwvOdnQaeQ2bLqyXs-H3MZTPBd+yteVG4NiY0Wd05WceAad9g@mail.gmail.com>
In-Reply-To: <CAKwvOdnQaeQ2bLqyXs-H3MZTPBd+yteVG4NiY0Wd05WceAad9g@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 May 2020 20:04:06 +0200
Message-ID: <CANpmjNPLgFdFpHzj5Hb_1CfFzPMmqy3z1O98N=wsr8kQ1VS9_Q@mail.gmail.com>
Subject: Re: ORC unwinder with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dZsQllqj;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 14 May 2020 at 19:48, 'Nick Desaulniers' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> + Josh, Peter
>
> On Thu, May 14, 2020 at 10:41 AM Marco Elver <elver@google.com> wrote:
> >
> > Hi,
> >
> > Is CONFIG_UNWINDER_ORC=y fully supported with Clang?
>
> We're down to 4 objtool warnings in an allyesconfig build.  3 I
> understand pretty well, and patches exist for them, but I haven't
> looked into the 4th yet.  Otherwise it works (to the best of anyone's
> knowledge).  Though kbuild test robot has dug up 4 new reports from
> randconfigs that I need to look into.
>
> Here's our list of open issues with the objtool label:
> https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22%5BTOOL%5D+objtool%22
>
> I remember Josh mentioning
> https://github.com/ClangBuiltLinux/linux/issues/612 which I haven't
> had time to look into.
>
> >
> > I'm seeing frames dropped in stack-traces with
> > stack_trace_{dump,print}. Before I dig further, the way I noticed this
> > is when running the KCSAN test (in linux-next):
> >
> > CONFIG_KCSAN=y
> > CONFIG_KCSAN_TEST=y
> >
> > The test-cases "test_assert_exclusive_access_writer" for example fail
> > because the frame of the function that did the actual access is not in
> > the stack-trace.
> >
> > When I use __attribute__((disable_tail_calls)) on the functions that
> > do not show up in the stack traces, the problem goes away. Obviously
> > we don't want to generally disable tail-calls, but it highlights an
> > issue with the ORC unwinder and Clang.
> >
> > Is this a known issue? Any way to fix this?
>
> First I've heard of it.  Which functions, and what's the minimal set
> of configs to enable on top of defconfig to reproduce?

In linux-next:

CONFIG_KCSAN=y
CONFIG_KCSAN_TEST=y

And wait for the "test_assert_exclusive*" test-cases, which will fail.
The stack traces of the races shown should all start with a
"test_kernel_*" function, but do not. Then:

  sed -i "s/noinline/noinline __attribute__((disable_tail_calls))/"
kernel/kcsan/kcsan-test.c

which adds the disable_tail_calls attribute to all "test_kernel_*"
functions, and the tests pass.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPLgFdFpHzj5Hb_1CfFzPMmqy3z1O98N%3Dwsr8kQ1VS9_Q%40mail.gmail.com.
