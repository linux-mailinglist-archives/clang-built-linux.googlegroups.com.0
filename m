Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBNNVY2DAMGQENTLT2IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 7266A3AFEC5
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 10:09:26 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id v134-20020a37618c0000b02902fa5329f2b4sf2618080qkb.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:09:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624349365; cv=pass;
        d=google.com; s=arc-20160816;
        b=IwPd5DFkBSmuEWFqBJBDM95FECZGToQK5341hKZgG2IpJHbtDAJg0fW6SuV6yFXpDM
         UqNBjKzBas8tEPgh0RuSEUhEwCIQBqv26pZxzw3zNOLA7mB6PuB2kX5rikZth7TjyLiZ
         yPR+kz6UP5sYOXu8TaXTFx3a35zHP64F/F410PcCC3LT0isj+yymxf2UshMUdxV88E0G
         6rBSVZm9cQEHErtRfHxhuICcab8pDRqMWP6X0Xqe/oHli+K+wxxjlZMWnIzzJXw2vQ/x
         29XFq1UGd960QWPBpxwfoRo8EAollpYSrKRxhPtZorzP2YbIbdOwczLmz3m7yy4exGAt
         8afw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=a9Ewc43ydEgHKif7GrRT/HB8PLt9r46vB1xQXypkmIE=;
        b=MVwBhPYgfVndTY098M/C7grLJM2WfSoQZkZ0YIq4ERvNuhWiyn9lk92+NsBJpjbrju
         e7x4Gi02wDbso1nmr9zvp4hSO/oZBqCec2vOT2f3FZEDgwNCllU8qNPJhdnn4Yl3qyk8
         ZPlyzANATdRnuAc7AHM0D0YbXJLOF19iTwNeZNiXowJFcJtQSfEHJXu5Y4ZJxs5hlMQd
         GspB4/vOJOvmSRN99mPoQUzlOwHvKc7c9B7n/Z9LfxlI9agfIqA4HEL3HJKQjDGpuc9o
         vzpr/6RGoj2b9Ed7n5tl/BLkflaci/SDDq47Q1iDEv1LgBdvWL9zKx0BaxXsNIfoDuMo
         TS2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ym455yby;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a9Ewc43ydEgHKif7GrRT/HB8PLt9r46vB1xQXypkmIE=;
        b=Mux0ZA9ayfWNrKW4JGginEnWBlAlKGCw0EL+irDNW+glU2DqsKxK79BVsuuiRyaiVz
         J/fLS6ghr/WlLmIYkeUJmTVr/AkDl6aJjfu55Ln9Ha1oXBa62wdn7dVIyLwR3al8N2Ro
         W0V5ZDPRggdjCO2VHz7NsnPfZSRL3c06QQwtVrOb9De5sHioS6XItyB8t3ipB+3cnsoy
         FPPRn53Y0RIwcouY5VNm/wDyVFYr8IfzOFpF12cm6T4IR5Huq7ekW24cLsOKQmq0PHtg
         3TZcmvZ2d1SK6wdd4c6AarjR15l0DrmQnVbDbIp7IIIVoNciXOTt5PwyU6AAXpf/e0tF
         CEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a9Ewc43ydEgHKif7GrRT/HB8PLt9r46vB1xQXypkmIE=;
        b=Oz6mQPB1GP55ABMt4CS1FORFaMmlSAWf5GAo+8//6d1Nw1TlcA4NB52iqYAZ+OeOWP
         rPEzYJGG3lXeKgV3Ih9Kv7W/8pL/tV9WHfn0r8IeRiO6R+XbT6ACqyIBVnm5pxA9sZzA
         iSxdQek6TDM2gvBF5u9oojPgJgQEc0JVWJvwzqk5KcO3aTTSYkGPjMvndmcM5qynz0FM
         Eurq5l/Y+22Xvh+Qgnq6apC3xsCeP1ZbSTUSkya7mspm9WOShd4CIHQUBRS7t4z9fJ8p
         qluctSwMm8fSlDUu7eD0V7BpqPoFn1o3fiR0japF/8/WvAvwV8jqFBzQGaJcztk/qhob
         y2CQ==
X-Gm-Message-State: AOAM531EtDDnoZmJ1DnRKE13Ct3Ay9X4BVEdpOVfzQNujqEHpT4OAtzA
	NZBQH1SmqApcnHJhqwZA66Y=
X-Google-Smtp-Source: ABdhPJxShlJXviqFVMsW6uo0r76fASe1VqupQANnHayfJJSORRbOuaUR+9785HTFlVliFFiQoLZeMg==
X-Received: by 2002:ac8:7d0c:: with SMTP id g12mr2382197qtb.248.1624349365206;
        Tue, 22 Jun 2021 01:09:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:80d:: with SMTP id 13ls13605347qki.4.gmail; Tue, 22 Jun
 2021 01:09:24 -0700 (PDT)
X-Received: by 2002:a05:620a:f03:: with SMTP id v3mr3033138qkl.96.1624349364692;
        Tue, 22 Jun 2021 01:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624349364; cv=none;
        d=google.com; s=arc-20160816;
        b=G0NpSgq8a7q02sOEbNS74GDt+V+QSczlu3zwyoyRjXEW/WLiRxWocf4vrL/EsGWJhx
         0pN++UR9VIrugS/hzZtHp7xWA8Co0spCmvmU4VEXrOCbhZZiAPAW7mtrE9j180Ebbvmd
         H/aC64YcX1W/1CfFZwqC9+HCoETL5zTDuKQ91MN2av94xy3YpeFU9+HQLZY7ehLpYueF
         roh2NMTeG3I2zyvVAyF1ov2yIkAqfVTGUUTZV6M1DZz9MlxRbzMAxskaBbrtOmxFriYr
         q1qAelyzixjJFZR5aAPnK3x/x05GW71YENGplZJApMgUWjdki//pdGRx2m0BZYmcLnms
         R/Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+KIhMHmG9xEoplSTe5YdDdzfi1paJ8XARniBwjTg03k=;
        b=Spx2X1pK/BEy5O1ZI6F/bdoYiTD4rWu0i1KhvzcrpkXsWyZCHrpxrJDeMH990Y8ZWC
         k5LQgV7vVNtP4NsJ0W+Cxj0I+IJSgI7PqWgIqetdqNFu7XMs0QOhjWsQOCm9PrStOQPO
         jaRhuAZMQcbF/46h5F2JCiftNXOKgLP4Uh9MbHve20jGBxESCUT/Q+dfkP7Jye+Y10IS
         CKv3EVT9Tw6WYbZnPtpf6VwQP4cfXJZMlEd+9o+jkzxLecll2QvvHRiZXYMFlMO4BRV2
         v9gdTyeu6sDaMry048P8qSqHZ+53dvI0SgXM/RNmgoATa7698f0Rj2ILf1e6Tjeqiw0/
         Szbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ym455yby;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id c24si116114qtw.1.2021.06.22.01.09.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 01:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as permitted sender) client-ip=2607:f8b0:4864:20::32a;
Received: by mail-ot1-x32a.google.com with SMTP id h24-20020a9d64180000b029036edcf8f9a6so20447074otl.3
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 01:09:24 -0700 (PDT)
X-Received: by 2002:a05:6830:1bcb:: with SMTP id v11mr2131100ota.251.1624349363988;
 Tue, 22 Jun 2021 01:09:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210621231822.2848305-1-ndesaulniers@google.com>
 <20210621231822.2848305-4-ndesaulniers@google.com> <YNGQhgKd9Ruti5qZ@hirez.programming.kicks-ass.net>
In-Reply-To: <YNGQhgKd9Ruti5qZ@hirez.programming.kicks-ass.net>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Jun 2021 10:09:10 +0200
Message-ID: <CANpmjNMsM+tgf2Moy72Xd2oAxpVsAkXXYFtOodvVP5vRZDwdaA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] Kconfig: add ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR,
 depend on for GCOV and PGO
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	x86@kernel.org, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, linux-doc@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com, 
	linux-toolchains@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ym455yby;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32a as
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

On Tue, 22 Jun 2021 at 09:26, Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Mon, Jun 21, 2021 at 04:18:22PM -0700, Nick Desaulniers wrote:
> > We don't want compiler instrumentation to touch noinstr functions, which
> > are annotated with the no_profile_instrument_function function
> > attribute. Add a Kconfig test for this and make PGO and GCOV depend on
> > it.
> >
> > If an architecture is using noinstr, it should denote that via this
> > Kconfig value. That makes Kconfigs that depend on noinstr able to
> > express dependencies in an architecturally agnostic way.
> >
> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> > Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> > Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes V1 -> V2:
> > * Add ARCH_WANTS_NO_INSTR
> > * Change depdendencies to be !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
> >   rather than list architectures explicitly, as per Nathan.
> > * s/no_profile/no_profile_instrument_function/
> >
> >  arch/Kconfig        | 7 +++++++
> >  arch/arm64/Kconfig  | 1 +
> >  arch/s390/Kconfig   | 1 +
> >  arch/x86/Kconfig    | 1 +
> >  init/Kconfig        | 3 +++
> >  kernel/gcov/Kconfig | 1 +
> >  kernel/pgo/Kconfig  | 3 ++-
> >  7 files changed, 16 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 2b4109b0edee..2113c6b3b801 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -285,6 +285,13 @@ config ARCH_THREAD_STACK_ALLOCATOR
> >  config ARCH_WANTS_DYNAMIC_TASK_STRUCT
> >       bool
> >
> > +config ARCH_WANTS_NO_INSTR
> > +     bool
> > +     help
> > +       An architecure should select this if the noinstr macro is being used on
> > +       functions to denote that the toolchain should avoid instrumenting such
> > +       functions and is required for correctness.
> > +
> >  config ARCH_32BIT_OFF_T
> >       bool
> >       depends on !64BIT
>
> There's also CC_HAS_WORKING_NOSANITIZE_ADDRESS in lib/Kconfig.kasan that
> might want to be hooked into this, but that can be done separately I
> suppose.

KASAN already depends on this for all compiler instrumentation modes,
not just for 'noinstr' but also to avoid false positives. So it's not
just for noinstr's benefit, and we should not weaken the requirement
there.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMsM%2Btgf2Moy72Xd2oAxpVsAkXXYFtOodvVP5vRZDwdaA%40mail.gmail.com.
