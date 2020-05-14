Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBDFS632QKGQENMNMVLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C32361D3C9F
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 21:16:29 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id w198sf17947632oie.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 12:16:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589483788; cv=pass;
        d=google.com; s=arc-20160816;
        b=du3ELjtG5bSzgXhHhKJmTHBy4bCqP1patlCMcWaW5iPG9TSUvarTsXYo5+XOEsbdV/
         jnm7lBFOSzgttQ+TJDg53KJ8p6YrrYWH7htuUibTnXr0l8iJlbaqz1+4ThsXU+VVH0td
         /iX+/uM6nQlnjXmSYnUZcYKJvad32W7H7j+iwJ56DMUgU6JLKB4ALXq6KmrUaYSKeUEW
         uDwf4263oM/DN018KJURI1M1lJzasIaXwgLOLDVzUMui6ah4t5Eipo2MLmy1Gx5k+zEL
         XqMmLbmvTI98vD14Ert9cXeKI2BJj9mI/1wlI3s9AngtzgCreVzQyIBERQQ0t6PWt/pf
         Hkkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QuF31JcCfDDRh2TiMt9gmFpCMz0TlSbnEu86+tmi/gY=;
        b=qZRJU43FKGieLgtZp+t0hZzvLcDoU4G2A/cjxEFGksRrg7nDCwzjGTqaemDRF00Cno
         AOINv6BElWuj7LKnZcU0zOFwGhF4M0EyAdQy54Xm8OTkr2zh/YVfSMv0ro+ME4g7dXEI
         0kJrPKm6TvlzGw7phF97XdgS6V3ao+kPX5DZ+JjhF2c+dC1n8cbhaj/6WKPk01Z2RJst
         JzDmlx3dfSW9jMgcOCP6EpdO3cQUxszxhkHsfdRBrcnWljxSFRw76F3MLX0sGjj0ihru
         oXA9hS5YL2zjXuH3kRfDDPsCvse4StwtWurwjgx/gW4AORE9L1H0DwuuxaQGk23d5GFL
         YHbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VPs/Qast";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QuF31JcCfDDRh2TiMt9gmFpCMz0TlSbnEu86+tmi/gY=;
        b=p6rsqrtVB9dDX2Kdt274HT01/0WkiSVWtlrSpOlegnu70NJgT/Nr3c+9F9H7oUPZpo
         qRrGMkDPtgtFrYsYkVnhLR1ehkISwk4CTeWaOJxvGoFEsqbB5rmEnIOIXg4fvsA2bnyG
         YK4nb5zGE5VzXAu7Hx+0BJBIl6rsZAc7d/a138dSMtfRfdJcZ3b7UQbQ2/HDSBe2QyVb
         D3QKBrl7jD27T27z//dOGul4NM9xzycCMIFAT+1f2b/KPLvgFxBHMkcDyJx1R1howJgD
         +pDmhFrE7oUQxUYD0Se6IX2X/ofikou3sd/myJfQGlX7A3yq5GjmIwuL3A3SA/LLW8Yh
         g2vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QuF31JcCfDDRh2TiMt9gmFpCMz0TlSbnEu86+tmi/gY=;
        b=W1DU3UA6Flf+Rvg3RW4zM9jYUkCZEDrk1wgkoNJostdS31bzuWFqwt725xM9e5CYqc
         Q5oGiHqysO0WRqWfPi+/RaC+LQVD8R8K7NEbM/OAhxfex4lv4+EjS1xLUAiycSytCpda
         fALIuzg64sz5XtDxftrH4FUu4eyT3gqyAMBH+Nm+4/nW+HZ3DOpE5ZJJ23PBD74LsIvh
         OlFrSrH/GIvrrTPYOEBjpkbnPDqKxdXOuC1+mZSUeA5Q+htCybcOwac4VnpoXIM7wCJt
         sf1TpQzGDpMXpL1ulCB+tAF+4hZ8LAUhfgjSF5x89ksgYavv48wE31k/KxwoD85UKkzo
         qQwQ==
X-Gm-Message-State: AGi0PuaVp9M0okCMMZ9CxMSMhqyUfGUgXGxiM31/F1/nt9xOCaC3g5uG
	tSeEOREfPqx+BfkQXfzHSaA=
X-Google-Smtp-Source: APiQypLj0UlS9b1v27f++l+ketA58jMG0fAoHUQ9xDME4XOc38UpFGc5l/YRgIxA4rzFap+u3yMmRA==
X-Received: by 2002:aca:d585:: with SMTP id m127mr31928670oig.27.1589483788725;
        Thu, 14 May 2020 12:16:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:aace:: with SMTP id t197ls406052oie.4.gmail; Thu, 14 May
 2020 12:16:28 -0700 (PDT)
X-Received: by 2002:aca:e005:: with SMTP id x5mr6243803oig.130.1589483788345;
        Thu, 14 May 2020 12:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589483788; cv=none;
        d=google.com; s=arc-20160816;
        b=CLwHlEQ1Fb1bP4AN8n/xWZlROu00cnh46EyPcYCaOCjMssoY6aTDy8PKVz3XCILeoD
         COjgYwlaYQ6y/PRrAhQVkqraW9ySD1gV7eSqPBX0um5ocM28ZXR13I8dBaqV3ZNQfvTs
         j/Hnhw1ESCdV12+iPRK9aUlJD+TyUzUVwSHjFNhPiWqfFi28FqUO3bKJhQCwX7V9PPdR
         6YYa6MbXc/oFfG1ypC+wPzMd+GMxRRZP/8Di6zxqkC+2A3vsbDgWc9csOckw0aQ3vb/9
         /Wigi8Pr/iz7iCEQfueGpyr9lW+HiVvtO5r2PG732DvyHFjVDyRJW5zecNwLs5bnOYxS
         3Lyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Py18wA5N29X3tShwOlaJKFh5xwNW9HxDBsL7uWnBtiQ=;
        b=TJeKDwb0ERta8wZDMknJfEzW1qYkwiz9pk1Ylpga+4mLBKM6HbLeudtiLUzAnqXzIU
         Ijq1z+5ykfLS1dNeNWK+uBGZvxL6zEM8G22Z28oWP392ce4nRTXxLFJbJuit38Hl7t0K
         beUOhD39si2jEuzkMwTKRM/I/NLNuh1mGtOQcBhNHEMlDQXRdM7UeMuV98J9TOxeEIie
         JI/BxbcJc36zgqAk2JfmE3oL4Umh/5sjTcHHANof5cohYboIhwkhsLj+iecLben4VbTB
         Gw9I9m9FpcumxQ29Z2K7ITyAzJMWMEDcRnk8vT41ow5Uf6E1kzuw3jvlghnkdnzxwE+D
         Pk0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VPs/Qast";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id u15si379769oth.5.2020.05.14.12.16.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 12:16:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id i22so8936557oik.10
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 12:16:28 -0700 (PDT)
X-Received: by 2002:aca:3254:: with SMTP id y81mr11707277oiy.172.1589483787767;
 Thu, 14 May 2020 12:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
 <CAKwvOdnQaeQ2bLqyXs-H3MZTPBd+yteVG4NiY0Wd05WceAad9g@mail.gmail.com>
 <CANpmjNPLgFdFpHzj5Hb_1CfFzPMmqy3z1O98N=wsr8kQ1VS9_Q@mail.gmail.com> <CAKwvOd=0Ducgnkf8tzNGH10_UJSk56Ff_oSyGMddBCyG3Xt5Gg@mail.gmail.com>
In-Reply-To: <CAKwvOd=0Ducgnkf8tzNGH10_UJSk56Ff_oSyGMddBCyG3Xt5Gg@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 May 2020 21:16:16 +0200
Message-ID: <CANpmjNNZ=50HgbSxoyha0+0-ucO_FLSyB7VfBT7WnmOdpF7uvw@mail.gmail.com>
Subject: Re: ORC unwinder with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="VPs/Qast";       spf=pass
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

On Thu, 14 May 2020 at 20:35, 'Nick Desaulniers' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> On Thu, May 14, 2020 at 11:04 AM Marco Elver <elver@google.com> wrote:
> >
> > On Thu, 14 May 2020 at 19:48, 'Nick Desaulniers' via kasan-dev
> > <kasan-dev@googlegroups.com> wrote:
> > >
> > > + Josh, Peter
> > >
> > > On Thu, May 14, 2020 at 10:41 AM Marco Elver <elver@google.com> wrote:
> > > >
> > > > Hi,
> > > >
> > > > Is CONFIG_UNWINDER_ORC=y fully supported with Clang?
> > >
> > > We're down to 4 objtool warnings in an allyesconfig build.  3 I
> > > understand pretty well, and patches exist for them, but I haven't
> > > looked into the 4th yet.  Otherwise it works (to the best of anyone's
> > > knowledge).  Though kbuild test robot has dug up 4 new reports from
> > > randconfigs that I need to look into.
> > >
> > > Here's our list of open issues with the objtool label:
> > > https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22%5BTOOL%5D+objtool%22
> > >
> > > I remember Josh mentioning
> > > https://github.com/ClangBuiltLinux/linux/issues/612 which I haven't
> > > had time to look into.
> > >
> > > >
> > > > I'm seeing frames dropped in stack-traces with
> > > > stack_trace_{dump,print}. Before I dig further, the way I noticed this
> > > > is when running the KCSAN test (in linux-next):
> > > >
> > > > CONFIG_KCSAN=y
> > > > CONFIG_KCSAN_TEST=y
>
> (KCSAN_TEST depends on CONFIG_KUNIT=y, needed to enable that, too on
> top of defconfig).

Sorry, yes that one was missing.

> > > >
> > > > The test-cases "test_assert_exclusive_access_writer" for example fail
> > > > because the frame of the function that did the actual access is not in
> > > > the stack-trace.
> > > >
> > > > When I use __attribute__((disable_tail_calls)) on the functions that
> > > > do not show up in the stack traces, the problem goes away. Obviously
> > > > we don't want to generally disable tail-calls, but it highlights an
> > > > issue with the ORC unwinder and Clang.
> > > >
> > > > Is this a known issue? Any way to fix this?
> > >
> > > First I've heard of it.  Which functions, and what's the minimal set
> > > of configs to enable on top of defconfig to reproduce?
> >
> > In linux-next:
> >
> > CONFIG_KCSAN=y
> > CONFIG_KCSAN_TEST=y
> >
> > And wait for the "test_assert_exclusive*" test-cases, which will fail.
>
> For me, all of the tests fail with:
> test_basic-02: too few online CPUs (1 < 2) for test
> but I guess that's because my QEMU virtual machine only has 1 cpu?
> Ah, if I add `-smp $(nproc)` to my invocation I can get past that.
>
> I see:
> test_basic_*
> test_concurrent_races*
> test_novalue_change_exception*
> test_kernel_write_nochange_rcu*
> test_unknown_origin*
> test_write_write_assume_atomic*
> test_write_write_struct*
> test_write_write_struct_part*
> test_read_atomic_write_atomic*
> test_read_plain_atomic_write*

Strange. That's definitely missing something. Maybe we get to where we
want to be by modifying the test as follows:

  sed -i '/CASE(test_[^a].*),/d' kernel/kcsan/kcsan-test.c

And I double-checked, the code is definitely in linux-next.

> Tests take about 3 minutes to run for me, but I didn't see any
> test_assert_exclusive*.  Should I look again, or am I missing a
> config, or perhaps a patch?  This is my first time running KUnit, too.
> Is there a way to specify just the single unit test you'd like to run,
> a la gunit, or do you have to run the full suite?

You can make the tests run quicker with:

CONFIG_KCSAN_REPORT_ONCE_IN_MS=100

> > The stack traces of the races shown should all start with a
> > "test_kernel_*" function, but do not. Then:
> >
> >   sed -i "s/noinline/noinline __attribute__((disable_tail_calls))/"
> > kernel/kcsan/kcsan-test.c
> >
> > which adds the disable_tail_calls attribute to all "test_kernel_*"
> > functions, and the tests pass.
>
> That's a good lead to start with.  Do the tests pass with
> UNWINDER_FRAME_POINTER rather than UNWINDER_ORC?  Rather than
> blanketing the kernel with disable_tail_calls, the next steps I
> recommend is to narrow down which function caller and callee
> specifically trip up this test.  Maybe from there, we can take a look
> at the unwind info from objtool that ORC consumes?

Indeed, UNWINDER_FRAME_POINTER works as expected.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNZ%3D50HgbSxoyha0%2B0-ucO_FLSyB7VfBT7WnmOdpF7uvw%40mail.gmail.com.
