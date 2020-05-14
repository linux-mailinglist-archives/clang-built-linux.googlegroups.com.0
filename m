Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWE6632QKGQEO7KDQWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4A01D392A
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 20:35:05 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id y4sf2987484pgo.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 11:35:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589481304; cv=pass;
        d=google.com; s=arc-20160816;
        b=MPncwQH1YGzezoCR0+APdBnJ+G1/yjw7Lz4rhObtYoqMBeF2ZbFtUMkZDdRmSM7TLH
         h5U5rTwNbMgRZoSw+lyo67qIyVffB9wjFG3AKSk6SKAl0sTf45P7vHjcNmPERzxjHW8A
         ztcVHApMjVTQi8OwyUqGq7mEcSHcvSPX6LtqUrH/3zVIPF1t7Eix66xl0Wdq9mFasYez
         PkvECwsQhS23ByfzvIli7lW7kW306CLkPUdYiWVoWyE0d6GMfRNIUl436eTm0kCrbmBo
         QeF5oOzRSddSQFfQcunGPGEu5cmdZcY+n/pS/Y5vHf17ChzciriQBRjEXzqdCS9PtDgz
         jCvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qeQLoAedY85IBPiRbW0ZbqreDBfD7Ef63C9klMEOLL4=;
        b=yH3f0u4gNz9PPIfMRcTute9O4jWXsApnqWETFequ9pu5Jgh0q1vwNykkHnqY/4/9pp
         iDqn+IRbwG3U78iQQUcc45ZJRtP13OXz7lc6mXbqtwtkoWLF2pUFRefGUV7gsCeKVMOP
         nNYgp5OUX+pVC4KRteMiI7IIUEKyqU0R5dqK2GTa0aAcR+aN63Qj8fYh8sqz1ig20Of9
         9k3t21vtBBEk+RBybFIlyU5tzsZUa+yZ25ACRWC1CTPTif9Iz4UMTjcq7B/q33YuroXp
         4EYW+YiKpRkq0RPy6HCfhg+HTmLDl2lW/BPKg2gKzWlvKBl3hLWEFi3cqfUY73ImcckV
         0g5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bQqLW/BV";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qeQLoAedY85IBPiRbW0ZbqreDBfD7Ef63C9klMEOLL4=;
        b=QW2ylwCxqKeBUY6U2UaLQIcvr/VVxPt7ie9UGaHBPT9KcuP6iMc200RW2eNygvCBaa
         u6mYA7YbhKncZqt3cX7aDO4V3D3o2v/cxKBcrA09OYOL/vjD6hL3iAEQZbK3KqMw7tSl
         Y858dYw3QqKZjMwJnFsY16jM3lncVcRYqpgtFVWKNi0jRABwfd4J/UxpNMS8D1d/2wqQ
         ZMMWdU8krL+nXJuBEjq/B2L+1FWIXmvjaaGnxiEpqZ+rr0kL1gTmJp0dMT5jpOLhD2SK
         k69RMKdPOgr8XpQDQqW3n4sNcpRd3N/UZ5XdTa5LSHoigN4y98TVok3DSRq/Wz0T3khm
         c55g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qeQLoAedY85IBPiRbW0ZbqreDBfD7Ef63C9klMEOLL4=;
        b=njcTC40tGDWU3IzCtxsLjsHkpd5PSrPxZnqE3/P2Ajnnc5FdOSCdgcqkmUxqSgNBam
         kLgUJhHSvyaUcfivnMAxyZuou4o6aWcYnW8g8JWa9BJ4KN8PM1tPGg3yJSYUncYdt5Fq
         mZbLxLqpgX6qU6lCKSBBaApL6VmvNsDeyANv4WcydZkcJoQ8gPIzDkyPpAf8c2bdB/Fb
         CiZEZm+UM3QIf06eIVuRWufh0R7taLddhjp7G0wEKzCeprhjdBu0rPF3KAQmvQBSv3Vd
         651coaxI/hM/yZ0/eHKGJY/kpvJlCyqWx+tMul3SIMSLjaTVAmekkh+KLIIUb09wS5ot
         mxUQ==
X-Gm-Message-State: AOAM531RGr6Lx2CajQJNaY8p90vn3aWRx9yJELq7oXMriWO8FNA3LjPL
	IekOikO/hY6yzzEqpIpO+xM=
X-Google-Smtp-Source: ABdhPJw27D8jKLUWFUGGHksAPVOLg3Eb2mDpf7V/yGImtO6hw/bzTs5i73xiKWAZkclG8hol8s+cdQ==
X-Received: by 2002:a62:e10b:: with SMTP id q11mr5969355pfh.34.1589481304400;
        Thu, 14 May 2020 11:35:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:608c:: with SMTP id t12ls1021886pgu.3.gmail; Thu, 14 May
 2020 11:35:04 -0700 (PDT)
X-Received: by 2002:a65:6799:: with SMTP id e25mr5409547pgr.9.1589481303973;
        Thu, 14 May 2020 11:35:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589481303; cv=none;
        d=google.com; s=arc-20160816;
        b=h0qvH3z7B7TTj8v09opR+D0Jcy1jlL6ktI17yH+ZneQx4NbJRsgELghoaJONIjaBGX
         TIre0E+koIV0VeSy/SdVP+mB9hvB/FMmxCUZK1SYimRB8XITScgUPgcM70t5Oy7zwKxl
         HjtaddHfLOv1eeUFuvJP1ExFxZxaeiSp6JanujNQUEMOoj3g0pcYinuBB+2KpEssyrW9
         ij7qqMfZSqOgb2eovdQ0w8cZjBIHc2IEp08ZoYDTQJ6Za/MI1OmczKYAnQiQvkExmmHL
         9NIf+5xp7aqXeTcauGzo7fJxyYP25G13hzWlu4r29Nu8aeeXcMM6b5IW/4apK0gTQ8Us
         lugw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mtE5hwcvwfyJVGtyn1TG67y7LoZm45ccVgYKdHYy5J0=;
        b=hBurgkNpvREVFoh2dxmvbjOpxGdmdRgTvj9IJECil6A5yKaueykkkPeRelJuOzrtMH
         gYI2X2cNZMTGCZudhrId4SNJE8ag3peAEN6wQGLod46h2GarrCt82T1PYP+bRlfDZUOW
         zpYWHDn0Kd1wZrLGl1XQYTM5seDSvKhmlMIEBZ051I41oXULZSXUqIQ39MO7Jp8ED7jm
         BKdZlWL1fhk0MY0bFdruTR8g98BZjIKeB6EnQe3RT29wln6aXL32IieJ/sDTZlDM6xN6
         dMh81hwets5jIx8smi0KKen2ZBTjfdYQwiIMPFG8fMYdSkUmR4ArN8riybWqFSd1H+hU
         Q8Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bQqLW/BV";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id bi9si231744plb.3.2020.05.14.11.35.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 11:35:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w65so1699484pfc.12
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 11:35:03 -0700 (PDT)
X-Received: by 2002:a65:5ac4:: with SMTP id d4mr4987649pgt.381.1589481303167;
 Thu, 14 May 2020 11:35:03 -0700 (PDT)
MIME-Version: 1.0
References: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
 <CAKwvOdnQaeQ2bLqyXs-H3MZTPBd+yteVG4NiY0Wd05WceAad9g@mail.gmail.com> <CANpmjNPLgFdFpHzj5Hb_1CfFzPMmqy3z1O98N=wsr8kQ1VS9_Q@mail.gmail.com>
In-Reply-To: <CANpmjNPLgFdFpHzj5Hb_1CfFzPMmqy3z1O98N=wsr8kQ1VS9_Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 May 2020 11:34:52 -0700
Message-ID: <CAKwvOd=0Ducgnkf8tzNGH10_UJSk56Ff_oSyGMddBCyG3Xt5Gg@mail.gmail.com>
Subject: Re: ORC unwinder with Clang
To: Marco Elver <elver@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="bQqLW/BV";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, May 14, 2020 at 11:04 AM Marco Elver <elver@google.com> wrote:
>
> On Thu, 14 May 2020 at 19:48, 'Nick Desaulniers' via kasan-dev
> <kasan-dev@googlegroups.com> wrote:
> >
> > + Josh, Peter
> >
> > On Thu, May 14, 2020 at 10:41 AM Marco Elver <elver@google.com> wrote:
> > >
> > > Hi,
> > >
> > > Is CONFIG_UNWINDER_ORC=y fully supported with Clang?
> >
> > We're down to 4 objtool warnings in an allyesconfig build.  3 I
> > understand pretty well, and patches exist for them, but I haven't
> > looked into the 4th yet.  Otherwise it works (to the best of anyone's
> > knowledge).  Though kbuild test robot has dug up 4 new reports from
> > randconfigs that I need to look into.
> >
> > Here's our list of open issues with the objtool label:
> > https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22%5BTOOL%5D+objtool%22
> >
> > I remember Josh mentioning
> > https://github.com/ClangBuiltLinux/linux/issues/612 which I haven't
> > had time to look into.
> >
> > >
> > > I'm seeing frames dropped in stack-traces with
> > > stack_trace_{dump,print}. Before I dig further, the way I noticed this
> > > is when running the KCSAN test (in linux-next):
> > >
> > > CONFIG_KCSAN=y
> > > CONFIG_KCSAN_TEST=y

(KCSAN_TEST depends on CONFIG_KUNIT=y, needed to enable that, too on
top of defconfig).

> > >
> > > The test-cases "test_assert_exclusive_access_writer" for example fail
> > > because the frame of the function that did the actual access is not in
> > > the stack-trace.
> > >
> > > When I use __attribute__((disable_tail_calls)) on the functions that
> > > do not show up in the stack traces, the problem goes away. Obviously
> > > we don't want to generally disable tail-calls, but it highlights an
> > > issue with the ORC unwinder and Clang.
> > >
> > > Is this a known issue? Any way to fix this?
> >
> > First I've heard of it.  Which functions, and what's the minimal set
> > of configs to enable on top of defconfig to reproduce?
>
> In linux-next:
>
> CONFIG_KCSAN=y
> CONFIG_KCSAN_TEST=y
>
> And wait for the "test_assert_exclusive*" test-cases, which will fail.

For me, all of the tests fail with:
test_basic-02: too few online CPUs (1 < 2) for test
but I guess that's because my QEMU virtual machine only has 1 cpu?
Ah, if I add `-smp $(nproc)` to my invocation I can get past that.

I see:
test_basic_*
test_concurrent_races*
test_novalue_change_exception*
test_kernel_write_nochange_rcu*
test_unknown_origin*
test_write_write_assume_atomic*
test_write_write_struct*
test_write_write_struct_part*
test_read_atomic_write_atomic*
test_read_plain_atomic_write*

Tests take about 3 minutes to run for me, but I didn't see any
test_assert_exclusive*.  Should I look again, or am I missing a
config, or perhaps a patch?  This is my first time running KUnit, too.
Is there a way to specify just the single unit test you'd like to run,
a la gunit, or do you have to run the full suite?

> The stack traces of the races shown should all start with a
> "test_kernel_*" function, but do not. Then:
>
>   sed -i "s/noinline/noinline __attribute__((disable_tail_calls))/"
> kernel/kcsan/kcsan-test.c
>
> which adds the disable_tail_calls attribute to all "test_kernel_*"
> functions, and the tests pass.

That's a good lead to start with.  Do the tests pass with
UNWINDER_FRAME_POINTER rather than UNWINDER_ORC?  Rather than
blanketing the kernel with disable_tail_calls, the next steps I
recommend is to narrow down which function caller and callee
specifically trip up this test.  Maybe from there, we can take a look
at the unwind info from objtool that ORC consumes?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D0Ducgnkf8tzNGH10_UJSk56Ff_oSyGMddBCyG3Xt5Gg%40mail.gmail.com.
