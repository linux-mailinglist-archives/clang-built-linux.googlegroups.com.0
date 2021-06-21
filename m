Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF7UYODAMGQERAUXOKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD5F3AF6EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 22:44:07 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id j27-20020ac2551b0000b02903185ffe0984sf5239961lfk.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 13:44:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624308247; cv=pass;
        d=google.com; s=arc-20160816;
        b=KF5u0Zqjt9XJqeH5NjGFO8kez+FcgYKJqje722lykgfVtvh8UCHcuVZzHggqU5avoC
         Jkh8dBIKmZqbl8K0gVZ8tZvLMaiPt8i2gp8j5REmYnZxku50AqkjNicaYxQQ9V1D0EyR
         B+PGUrDxT6C6LSpW7yFB6/ftw254vU4dgujrPn32Y2p/qjisPBNDjI65TSPcOgYfeora
         Sn6d0jblVERvL2D3hkmxMJbE+BJO2/+tX3akVaS3MyyFMHDZ9itzf2zRFcStmdos+6Ad
         DB7uNKZv65swJF/EYP5OUqoGGniWSmFjI6ZSsJqf6M8P4hTIrswbyvPKOyBi5YocOshB
         DRkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mE3bfrPyZZmFJe1X3xkpdYuZTrNCnwM/6BoeDjK8KuA=;
        b=oRUQGRQcY8UUI3aLBME9m7iYTxlVCuwV0KpBJ5ZvqdDmT9sqk16SNcQHFr2b7hIuFu
         BkhPAlZTwIeXO/EhMWdFZktnLpLjDR7cFgpD+FpsW3OSv4K/PGA40mI/NVv/kJuBUx+I
         OAd6zMxFjIxeWsZ9hG0Xt0l48z5moyQCZXyY4+0XgwicJruJVADThwBNGIrxtnFD8WjJ
         ODy7LsFEeZCFmFK7C4xQd6yhkeiL59E8PyfUp796gXiaOwEaj/ANTUoPtGpkP7excKW8
         BuCHb+Vcp3j1udUZyXebC91DI+iTQT2b5mpiixy6aRVMKTmCyi03s/+OBz1/ny/TvrDv
         Y7Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Tv/B3mY+";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mE3bfrPyZZmFJe1X3xkpdYuZTrNCnwM/6BoeDjK8KuA=;
        b=OpFNDl7zmktiuMXbEv6bDOQ0dWGRXY8wI9O9Jz0BNTR5Ejm34JjcEhZv0whKlv0eNt
         uzrjhmDRG9meu+UWb96hi791BD1ZgxP43E1UiTTj0zTPHrAWO0/EOnyJfIGi/7CnDsxP
         vmp+Nxlc27R6+2bxIxlTsNvrceIECDZ5muuHSnsrKGPtOfiXBGbYcmY9fWuEfwsXOXW3
         aLzlr0M6lR8lppaVTfCUBMVTZxNW6gV9/GHmOqUyUKutciusHkVo206+R19f5JR/xwr+
         pgZJjKF1csyEyYzduU4NUMEvLw7ulqGlbtp6/H3iX0wKUiif/F7r2ttCViNAIQWRVTQG
         MURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mE3bfrPyZZmFJe1X3xkpdYuZTrNCnwM/6BoeDjK8KuA=;
        b=BLkPZzhuBQojDCV6WZOiMVlBoLqFp6f94k9U55UyQcdroZX6NzLHlrhe+HXihsIPql
         a4omkc+7tOQkZQPOll+d5R2N0VA8NYsLR7ANG6AenZMDqzRclE2cQzOWPR/QNDNC0yE4
         yjZzwxj4UT5vSj+GDti1oF+YcLbCxsY+BGHyqeHW/Ht1ywhFj4i7Hy5l10tZ2kStPATg
         S2IjrL12C8JAdhAxJCPxFSZevbM7Zg8zYLKTtUA+on1cD7PsiNgWOc76KUOIerzj6pc0
         t3U3uY3lm7EaDBEXO/orjtpjzKRBVW2yuSr/icKmcgCyQd7sONgY9fy8Ez7TV3CHYoqv
         G42w==
X-Gm-Message-State: AOAM533ONuF5i3hwNnJ0j0wTpXRXK1FeiTV8uZjrGXmWC0OLKFdQph3i
	6kL6eZUS334eiz2m5M2d+Iw=
X-Google-Smtp-Source: ABdhPJw1M7l9CkeW0TJTPyN22kLaCMQq27M/a6BKuZ2A/7Qz4mjlZ172txjGgnTd7mAXL23kKNAqng==
X-Received: by 2002:a19:6a19:: with SMTP id u25mr82942lfu.313.1624308247308;
        Mon, 21 Jun 2021 13:44:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc1c:: with SMTP id b28ls564935ljf.4.gmail; Mon, 21 Jun
 2021 13:44:06 -0700 (PDT)
X-Received: by 2002:a2e:b6c1:: with SMTP id m1mr93011ljo.92.1624308246246;
        Mon, 21 Jun 2021 13:44:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624308246; cv=none;
        d=google.com; s=arc-20160816;
        b=VS2Is2xdJCJe8S1r8UtHFgWTIF4meg5a/mbqg3orb8Y8xzYQY2b8mQnrk4amiWWIlk
         AV37ugeokXnvrDzVIv1XyrrQv4dUbKKM+2JiUS8gastCWDx07oe2hK3axs5OFQd6RXtJ
         KfBGCv4YM803M3pYeRi89SBoGaNrhqGHQRaGzMsHPu/M38XZoB+YwL+AGXwNUV+z24EV
         h2/RgIKV/OfLH7XDWfXFuNCA1Gj22V5p9ezHksqJbt1KRgwONXv9NAHjveGGh4uXstq3
         V0/yaAMyV01fMtrI0czVu0uvrQcpSGDgDaAHqJ/+35D+4NaMlwUpXq0czrNiyZOvsKtZ
         3MOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GM7eO0vh1gXIyPgCEQpkeMLnL2AEGJ5aVi0qEu4LSo8=;
        b=HofPJRSd3VyObFn4PFk1oedq0ZCyfmLOQhivreMvqMGLmjJSeIXNwMvcXe2cJksMoT
         098QGXUnWrsfKdBg0zLQL/klpWuWS7eQXgcxwXOlyaOb4lCcYrp62TBm6mSuk8cQHtPz
         9D/C2+y4Zbm1McmFl/Rfsx3SsgO6N8LMuNtxxj2Nxht6Dn1rlti/DbIvQ3sb66qia6+j
         4UOSHho+2mJXqqTXY9VS6Gw9qMn8a5xAKJJT5eIyDowcc99KfpwJwxAJUdJCjRVoYPqc
         QjSDfmDplAZcx+8lBjaA2SHAGlFcdeMXqaZVHOTKmhzlHwD+fJne1gkIVnWATNK/i9gf
         ROuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Tv/B3mY+";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id e14si10763ljn.2.2021.06.21.13.44.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 13:44:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id u20so7347366ljl.13
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 13:44:06 -0700 (PDT)
X-Received: by 2002:a05:651c:1181:: with SMTP id w1mr88154ljo.116.1624308245741;
 Mon, 21 Jun 2021 13:44:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-3-ndesaulniers@google.com> <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
 <CAKwvOdmxGt6nAj+dDZEPdQtXNbYb8N6y3XwoCvCD+Qazskh7zw@mail.gmail.com> <CAGG=3QXeAxaf0AhKsg8P1-j2uHOoXne2KCOCEhq9SKa-e2dnag@mail.gmail.com>
In-Reply-To: <CAGG=3QXeAxaf0AhKsg8P1-j2uHOoXne2KCOCEhq9SKa-e2dnag@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Jun 2021 13:43:54 -0700
Message-ID: <CAKwvOd=9oAGPeuQmWnAMOxZn2ii_CRmyWnheoyXGcd09-U_CwA@mail.gmail.com>
Subject: Re: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for
 GCOV and PGO
To: Bill Wendling <morbo@google.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Johannes Berg <johannes.berg@intel.com>, linux-toolchains@vger.kernel.org, 
	Marco Elver <elver@google.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Tv/B3mY+";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
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

On Mon, Jun 21, 2021 at 11:50 AM Bill Wendling <morbo@google.com> wrote:
>
> On Mon, Jun 21, 2021 at 11:22 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jun 18, 2021 at 11:23 PM Marco Elver <elver@google.com> wrote:
> > >
> > > On Sat, 19 Jun 2021 at 01:30, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > >
> > > > We don't want compiler instrumentation to touch noinstr functions, which
> > > > are annotated with the no_profile function attribute. Add a Kconfig test
> > > > for this and make PGO and GCOV depend on it.
> > > >
> > > > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > > > Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> > > > Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> > > > Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> > > > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > ---
> > > >  init/Kconfig        | 3 +++
> > > >  kernel/gcov/Kconfig | 1 +
> > > >  kernel/pgo/Kconfig  | 3 ++-
> > > >  3 files changed, 6 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/init/Kconfig b/init/Kconfig
> > > > index 1ea12c64e4c9..540f862b40c6 100644
> > > > --- a/init/Kconfig
> > > > +++ b/init/Kconfig
> > > > @@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
> > > >  config CC_HAS_ASM_INLINE
> > > >         def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
> > > >
> > > > +config CC_HAS_NO_PROFILE_FN_ATTR
> > > > +       def_bool $(success,echo '__attribute__((no_profile)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
> > > > +
> > > >  config CONSTRUCTORS
> > > >         bool
> > > >
> > > > diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> > > > index 58f87a3092f3..19facd4289cd 100644
> > > > --- a/kernel/gcov/Kconfig
> > > > +++ b/kernel/gcov/Kconfig
> > > > @@ -5,6 +5,7 @@ config GCOV_KERNEL
> > > >         bool "Enable gcov-based kernel profiling"
> > > >         depends on DEBUG_FS
> > > >         depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
> > > > +       depends on !X86 || (X86 && CC_HAS_NO_PROFILE_FN_ATTR)
> > >
> > > [+Cc Mark]
> > >
> > > arm64 is also starting to rely on noinstr working properly.
> >
> > Sure,
> > Will, Catalin, other arm64 folks:
> > Any thoughts on requiring GCC 7.1+/Clang 13.0+ for GCOV support?  That
> > way we can better guarantee that GCOV (and eventually, PGO) don't
> > touch noinstr functions?
> >
> > If that's ok, I'll add modify the above like:
> >
> > + depends on !ARM64 || (ARM64 && CC_HAS_NO_PROFILE_FN_ATTR)
> >
> Wouldn't "!ARM64 || CC_HAS_NO_PROFILE_FN_ATTR" be more succinct?

We need to be able to express via Kconfig "GCOV should not be enabled
for architectures that use noinstr when the toolchain does not support
__attribute__((no_profile_instrument_function))."

Where "architectures that use noinstr" are currently arm64, s390, and
x86.  So I guess we could do:

+ depends on !ARM64 || !S390 || !X86 || CC_HAS_NO_PROFILE_FN_ATTR

(We could add a Kconfig for ARCH_WANTS_NO_INSTR, which might be more
informative than listed out architectures which might be non-obvious
to passers-by).

It would be most succinct to raise the requirements to: "GCOV should
not be enabled when the toolchain does not support
__attribute__((no_profile_instrument_function))." Then we could do:

+ depends on CC_HAS_NO_PROFILE_FN_ATTR

Assuming no one has the requirement to support GCOV on PPC with GCC <
7.1, for example.

>
> > to the above hunk in v2.  Oh, looks like arch/s390 also uses noinstr.
> > Same question applies then:
> >
> > + depends on !S390 || (S390 && CC_HAS_NO_PROFILE_FN_ATTR)
> >
> > Or, we could just do
> >
> > + depends on CC_HAS_NO_PROFILE_FN_ATTR
> >
> > Though that will penalize architectures not using noinstr, that still
> > would like to use GCOV with versions of GCC older than 7.1.  Perhaps
> > there are no such such users, or they should consider upgrading their
> > tools to we can stick with the simpler Kconfig? Thoughts?
> >
> > >
> > > This should probably be a 'select ARCH_HAS_GCOV_PROFILE_ALL if
> > > CC_HAS_NO_PROFILE_FN_ATTR' in the relevant arch/../Kconfig.
> > >
> > > Alternatively, using:
> > > https://lkml.kernel.org/r/YMcssV/n5IBGv4f0@hirez.programming.kicks-ass.net
> > >
> > > But I'd probably not overcomplicate things at this point and just use
> > > ARCH_HAS_GCOV_PROFILE_ALL, because GCOV seems to be a) rarely used,
> > > and b) if someone decides to selectively instrument stuff like entry
> > > code, we can just say it's user error.
> > >
> > >
> > > >         select CONSTRUCTORS
> > > >         default n
> > > >         help
> > > > diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> > > > index d2053df1111c..26f75ac4c6c1 100644
> > > > --- a/kernel/pgo/Kconfig
> > > > +++ b/kernel/pgo/Kconfig
> > > > @@ -8,7 +8,8 @@ config PGO_CLANG
> > > >         bool "Enable clang's PGO-based kernel profiling"
> > > >         depends on DEBUG_FS
> > > >         depends on ARCH_SUPPORTS_PGO_CLANG
> > > > -       depends on CC_IS_CLANG && CLANG_VERSION >= 120000
> > > > +       depends on CC_IS_CLANG
> > > > +       depends on CC_HAS_NO_PROFILE_FN_ATTR
> > > >         help
> > > >           This option enables clang's PGO (Profile Guided Optimization) based
> > > >           code profiling to better optimize the kernel.
> > > > --
> > > > 2.32.0.288.g62a8d224e6-goog
> > > >
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D9oAGPeuQmWnAMOxZn2ii_CRmyWnheoyXGcd09-U_CwA%40mail.gmail.com.
