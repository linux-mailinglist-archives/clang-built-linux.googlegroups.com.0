Return-Path: <clang-built-linux+bncBC2ORX645YPRBJPY2L5QKGQEZRFGHJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B81E27EFF4
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 19:11:02 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id a17sf718474lfl.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 10:11:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601485862; cv=pass;
        d=google.com; s=arc-20160816;
        b=W99wMB3J+BwRHsyBw08Yh5soPuXr6ywORz3Hc900ZIRJZMmT2WUxZuxm7FD3twMR/u
         umowr/vDmjw68499VAjyfD+XjSSSHPfkuT+kbhP1YKu19jBC/eXuIErNntCHtchQA0O/
         HCrDqcPlThNe8Xkilc4RIJLtQ+E/wXiCr7/RWFi+8Fez3J4tQr7rfxAxELkJ9o+abFvl
         m06dU7dvEPIzNk0n46kJC7T7uKgqNmkvhl9zlpp6o9I8XeRAS1+/+ITl+/BCheBhQ31e
         fZTedKSgksTRnBTwWfGaEhz7NiNWz4H+pNByiLgxAljY0GvAJeeORyu/78SCVHaKkMfE
         /c3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=x+GxxWwh5Un5k3APhbjfpl1pDxwKKeqSFKZbjU2jS28=;
        b=k/H8uCiPuE8P42Izuy614i/OS0bAUv64ErOtdko1wJHLE3BdrrI9VYgChyv+PoNo0l
         bdZjjpNvHsfds6NdEsPAg6IqpChnoF0IOPJohA4xtde1vfUQxwIXx/+36wPZiYSTQBFq
         MAZ+y01JZ0cKXawxkcNJtiZIDwv5JRQwv8dSwQPJHfIjsSDAJNeBlQZ6tDOheXeOwMoa
         pkzXHiYVtZQ1ms6xMOk/0GJ2kzNCUPkF5YZ/8PYKBmO8ujWJgoWVG7OqV60mFN0Sz73J
         78jiwf4/dD7vedVy1eK2pxyOWB0eEcezTgII5DhqBhNgShEwpdatbar1S36ta7wUHZvD
         sujQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sE8WZ6lf;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x+GxxWwh5Un5k3APhbjfpl1pDxwKKeqSFKZbjU2jS28=;
        b=TekIx0Cpy4qE3v8O7EFwEkEjZvay/msSHkuOwsUSmQwTNRGqsK2hzUgH1RKny3eIsJ
         KRPjhLDMwcS7dSMouCuJq/O+G3J2FlBh6YF1j3JetsMb8SWq+lUKPJOT6vdWSg1V9Ei1
         PM9V8+IC+CVDo32wfB5iJCi5KaqJ8dZoj7sI7Q6bX5/19aXihXflvdGDDiwLk8uYkVwl
         uVBYntN28xQLPpOFqCWGs6q736xLmkL73hBv9996VwLYyB5H8LoP16HhnmI1U934AmZ3
         38BZ1NMf8FpLNxCnNpckEUaAJHfIjE0LSEIER8kaI/SSLWVnd1EXH521rOlUhmaec0we
         xYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x+GxxWwh5Un5k3APhbjfpl1pDxwKKeqSFKZbjU2jS28=;
        b=XGW7yPJX6PfyKZewNMcJ6Gj3EjvW/LjFbgxZ4HXXZYwoH38sKa9rpblWx/hVniOnA7
         6XtUVI/K7FFwp/9ngtQ95u2uM30Oec0aFZ3m/XY9Hi0D0vLXBwIutuYgERLEiJxxZJ90
         akO9ztU7NIG7KDAQnlQHbyMV+c63Hn1+vcnItmk9oQcQNfHz7wZD7/c6JVkNShgQZp1N
         rUkcHmLnJ2/4Fm4QYK1ZoxEKk4CDeb2GbyWh/+dRwJCJk7lwrwegIermj/q15CfDUtm3
         5osgAWWEIihkUuwIodNraB4VbzY5Jlo077VjT+og5Oaq+MfZmhkTBS3QBm8l4/SI/1UV
         hmcw==
X-Gm-Message-State: AOAM531rSl+vzOM+ve/fZ1F6uwXyPd+p4/O+kxawNC5JkrievdNs4vza
	C0CdzULP8WveQSAbeFA5HPs=
X-Google-Smtp-Source: ABdhPJzp8nLpuTBtLfE2jv0jsvINVKAVsoQhAQMFpwIZnt6m/WYjXKObTi4SYg5Kk728/cVTwKJlCA==
X-Received: by 2002:a19:7605:: with SMTP id c5mr1311053lff.116.1601485861860;
        Wed, 30 Sep 2020 10:11:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b0e9:: with SMTP id h9ls432150ljl.5.gmail; Wed, 30 Sep
 2020 10:11:00 -0700 (PDT)
X-Received: by 2002:a2e:7d07:: with SMTP id y7mr1234047ljc.179.1601485859948;
        Wed, 30 Sep 2020 10:10:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601485859; cv=none;
        d=google.com; s=arc-20160816;
        b=jwlHGDtYopvaAOT/0QWQ1pWxP4CFh+NF8Khn5NY0IhwE7I5yhbOml0ky9CEuss0r2j
         G6rT/JkVz5K2RWeVKBM2p4O3fsBL86CjhxFvEbntm14Eyjo1uV0JEuOMZY8UgDR78uH/
         8lyCvbGY6AkjNzebH4h1yWRTyuPeAEcbaq+ODxk0fwSYXEuAvK86ru8rkL3ENZDN4Li/
         O2zd/+rxiGNnj8E6bdfhBq/3151uGJVwO4i1xHKOgPRErgnaG5yzQuVz560Jt4LlksF8
         Y7Bg1er3SWfMZHgHUNhTPaRyTIptaE+3GdUHist8ZbwPl+vM+F3mmQ+YZAVi4GRHrvos
         Gfvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BqedzlGX8MsdvOmncyCbTeaSpoiIv6tQfCYOfAGCm1I=;
        b=vYKz9I6y3M8ZGhkwgy4mGFrOIraNjvjgJIUAl+DXTciwEtufpAl6lUf7gHQJvdE/wz
         BdbPPrRRpXNeLRdnOeZ1zVnmufukWrrUqrD6ZP/KdTKo1M0UMYa5nwqeTyIcxG1PVwrQ
         R3daNB2SdYj4npeaRHoOwWiUQV5j9kykPIrpo4/UZYuFyQlE/d+flZwRnCAC3iFjkwja
         oDu84B6xyyWT6iHV4HDy5xBfOWmWMtt1T97J7dLAIho6mcv9fMBN67roMvn5o5y0S4uz
         2hnZVX6Tt+x4hbNpiv4bohXERPV8lhs3D6tIlvULID5fhDH5XbneftRYiOnO0AkkAqBc
         wc+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sE8WZ6lf;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id f12si72657lfs.1.2020.09.30.10.10.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 10:10:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id j11so3985430ejk.0
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 10:10:59 -0700 (PDT)
X-Received: by 2002:a17:906:a256:: with SMTP id bi22mr3767975ejb.375.1601485859067;
 Wed, 30 Sep 2020 10:10:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
 <20200929214631.3516445-10-samitolvanen@google.com> <20200930095850.GA68612@C02TD0UTHF1T.local>
In-Reply-To: <20200930095850.GA68612@C02TD0UTHF1T.local>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 10:10:47 -0700
Message-ID: <CABCJKuegb4MzniWOk2+R3FngZpdWuSEAZuj=arRm0mE6HQ9anw@mail.gmail.com>
Subject: Re: [PATCH v4 09/29] arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
To: Mark Rutland <mark.rutland@arm.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sE8WZ6lf;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Hi Mark,

On Wed, Sep 30, 2020 at 2:59 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi Sami,
>
> On Tue, Sep 29, 2020 at 02:46:11PM -0700, Sami Tolvanen wrote:
> > Select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY to disable
> > recordmcount when DYNAMIC_FTRACE_WITH_REGS is selected.
>
> Could you please add an explanation as to /why/ this is necessary in the
> commit message? I couldn't figure this out form the commit message
> alone, and reading the cover letter also didn't help.

Sorry about that, I'll add a better explanation in the next version.

Note that without LTO, this change is not strictly necessary as
there's no harm in running recordmcount even if it's not needed. It
might slow down the build slightly, but I suspect a few thousand
invocations of the program won't take that long. However, with LTO we
need to disable recordmcount because it doesn't understand LLVM
bitcode.

> If the minimum required GCC version supports patchable-function-entry
> I'd be happy to make that a requirement for dynamic ftrace on arm64, as
> then we'd only need to support one mechanism, and can get rid of some
> redundant code. We already default to it when present anyhow.

That would be great, but Documentation/process/changes.rst suggests
the minimum gcc version is 4.9, and according to Godbolt we would need
gcc >= 8 for -fpatchable-function-entry:

  https://godbolt.org/z/jdzcMW

> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 6d232837cbee..ad522b021f35 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -155,6 +155,8 @@ config ARM64
> >       select HAVE_DYNAMIC_FTRACE
> >       select HAVE_DYNAMIC_FTRACE_WITH_REGS \
> >               if $(cc-option,-fpatchable-function-entry=2)
> > +     select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY \
> > +             if DYNAMIC_FTRACE_WITH_REGS
>
> This doesn't look quite right to me. Presumably we shouldn't allow
> DYNAMIC_FTRACE_WITH_REGS to be selected if HAVE_DYNAMIC_FTRACE_WITH_REGS
> isn't.

This won't allow DYNAMIC_FTRACE_WITH_REGS to be selected without
HAVE_DYNAMIC_FTRACE_WITH_REGS. Testing with a compiler that does
support -fpatchable-function-entry, I get the following, as expected:

$ grep -E '(DYNAMIC_FTRACE|MCOUNT_USE)' .config
CONFIG_HAVE_DYNAMIC_FTRACE=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_DYNAMIC_FTRACE=y
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY=y

And if the compiler doesn't support -fpatchable-function-entry, we
would end up with the following:

$ grep -E '(DYNAMIC_FTRACE|MCOUNT_USE)' .config
CONFIG_HAVE_DYNAMIC_FTRACE=y
CONFIG_DYNAMIC_FTRACE=y
CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT=y

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuegb4MzniWOk2%2BR3FngZpdWuSEAZuj%3DarRm0mE6HQ9anw%40mail.gmail.com.
