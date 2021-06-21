Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWNRYODAMGQE5TFQFRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 430613AF4F3
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 20:22:18 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id z11-20020a194c0b0000b029032331652cf9sf758966lfa.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:22:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624299737; cv=pass;
        d=google.com; s=arc-20160816;
        b=XiW61xxjwJMM/L7rQ/M58X8vYokM1ufRP/Np89J8tWVZQ5apqzk1rn/sojjN6Az1Gb
         LmQI8mcqFZcC6jatqBq9exzKkFan/0cPC6xnY/WsqDDcjRh3scLHy+ruvdJyzafFyik5
         MnqAdh5eoga3Y+uxHo8QW/Nexh5gaBn0RaMQEXh5OSYH5geki/V4HUhFvldGqiuP/Rwo
         hE9C6U7xM00N5yT7zc4c3Nz9OVMZFJCF6YoCkG8d0Lzb97TnOGRwkowdizLO0/KBwapG
         Lm62EHDnESDeiz3+SPzBcuEALtterncmPlwp9T0wAcB5MpX+pRaT7WEQ3wWS57ge43p+
         zLNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=il30aweVhJbiBclncAAuM0H9OhHfUboc7quxIYltzN8=;
        b=bOIJmNz20NFsQgMFIRYXOIo8ODPrFm4V0LgWFydaFRhuaY9OTFXABVYnA7rWgh4GAb
         GhwbYPPrFjoxSM3KTTTjy8QBeLLK2wSmuTCNcnSq3QATF5hBy+mkHyCuoeOtZVhUPFnn
         HvNNcOvZAHtlENOecB5ei07KiT/j0mkW7N4ZPPOuWx1DCCx7xyLKZ5cW9A7wFBHTJJO+
         2oKqNuUk+2Ixq66eJLXefZAffsMyCC5nA4oJh9CWS+zwxbPSolfXpqFdX1R2QjDMeUls
         gTbEGcftsccNoo2g7mjt0qMQoPyoszWSip5RJ8W3QOQJ974B/fOzOZUiNe8KGWCCcMeU
         bScA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NETQKlp2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=il30aweVhJbiBclncAAuM0H9OhHfUboc7quxIYltzN8=;
        b=p0JxOLXSNPLNnyVskiql7S9tCwQAuTvCKtYFxEhHb4ohZzc9JgQbMZc9DaoPSdFDVT
         5PqKb1f5Ipoav+qiC7fqGgjKunpzppcIXWIPL6vEpap/PlB7lXkyU0m3ZfgC7jBJldiE
         V5mwmYBRRgjEbtgnCKyALwqGklHAAkaC5MzrfRvyERPm3XIe2GFXKB7TK/HH6dapX9yw
         dxVcnIkljFxaKfkP5dujiqonkixnQ2bgnuo+MgxwKAaVbNZyVi5q9j+2TbIubZUooULO
         bx78KNWOxiKf6oyGmYm7m3go2dfEFi0aEaOx7tNE+PqrSflP/jx/E6Q1nvnireMunKfp
         XGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=il30aweVhJbiBclncAAuM0H9OhHfUboc7quxIYltzN8=;
        b=Ces3wC2LRaCS0QZS/4a7o3oP87yF1XRUISerwT2ZiV1vB5QFbq2Vv1EWBUorWi+5Hm
         Z0/4Y/PWYw4WwsmIeG6WCMECOp5xYvekxgakhM/CcEJD45ZRxCO/2UV8tFvDYwUnRfjC
         /9ebJhbVQ7ANOomNugCt/CQXaTk6U3w3GwlNtaig7+XGdZviYXFUozDPjrjKKFRt8NdW
         Fum0x1OwvbL0yRu28F1rshzzT400pD+RLRV9q4zfKDJp01xp4Zmmz5YEvMIoBmdBmpnB
         csMCJ6SUzd5AEbWZyogKmhaH4MO9Rhn6Z5q9kLzOi5IQ1Y9b9g4PqvsEkzD0unkKD8nu
         et9Q==
X-Gm-Message-State: AOAM531qoOlB6ch0F5uzsAg36RFZJIhXjD83hpl+Nvu9oDyVG2xSM2jp
	RiQKeytS2hLYbHnYwsd6KCs=
X-Google-Smtp-Source: ABdhPJwbPn3lcZZgY3zxouCVk55/tPLHOEPlkBWftF9noBhGwSXw9UwMGxBExOMdVgeQee83nZABaA==
X-Received: by 2002:a2e:9757:: with SMTP id f23mr8625579ljj.53.1624299737737;
        Mon, 21 Jun 2021 11:22:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9617:: with SMTP id v23ls5354673ljh.7.gmail; Mon, 21 Jun
 2021 11:22:16 -0700 (PDT)
X-Received: by 2002:a2e:9a85:: with SMTP id p5mr11528090lji.313.1624299736721;
        Mon, 21 Jun 2021 11:22:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624299736; cv=none;
        d=google.com; s=arc-20160816;
        b=HK3DfA45zDq3foln2HC6bTJIQ+4CuWiyhnqRYnyiElztta6zkfa884jf3r4/kLeobK
         4mepKzpJqAbAUPbTVhfL+BvkaDvcttA6isKqM87lCoOS5Z7EBdQDoI0YZLHzd8me0UUO
         9o/P5rtlcyHK0FkEQBH1W1EhvDNXox8hdNrrDr2LiuQu6KBqKpla69Z+QL/HBRX72hCJ
         isr82+Sy5Zljc7xDM51nr2xMNGwzkXAKGk1XPVGnuJ/Sxtnp4nJQ7ECdnMPpH45Q30I9
         t9ZFmkR6rj+ivCTlxyUyuGB1KZ3+cyGav+45NfFiNT8bOdTLVkhp1GxKZsOBiZdE1GHM
         GxVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IajW38MHwcZeFZ73RMsHWpIwYjHEkpzka+be7I9DYGw=;
        b=eX1N5fcH5dPczOGU9HRoCJQaxBq6MSK+7K+Q0iP3Jiqo2lHWesDPHHRDgxhA5wrReH
         efhRMzuXmMNBbuuSuVTAK5s7snsXmr46NS89LOPvMnvABjDU+NJd5VaaD1f0RElZKEtZ
         OcBzRB/olBqf7AdGy/8HNnjixLSMu/5L7OhRKARrwK4PT8YY4GuEzcjH49NK9bCyStdx
         aWVHHaO87+7JizPo9TLbkmlPzzolNC0886FT+IW+cln2YveWcRcQ3WOLFvfhWcfO6Dm/
         60vE6IWdeJGspmNfuwf96dJIWBp7xhSV7ePLPUy3C1sPcUNRCnrYB9ep6hex6bn/0Vby
         xxmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NETQKlp2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id d3si1673lfl.12.2021.06.21.11.22.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 11:22:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id f30so31798290lfj.1
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 11:22:16 -0700 (PDT)
X-Received: by 2002:ac2:4438:: with SMTP id w24mr3339709lfl.73.1624299736217;
 Mon, 21 Jun 2021 11:22:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-3-ndesaulniers@google.com> <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
In-Reply-To: <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Jun 2021 11:22:05 -0700
Message-ID: <CAKwvOdmxGt6nAj+dDZEPdQtXNbYb8N6y3XwoCvCD+Qazskh7zw@mail.gmail.com>
Subject: Re: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for
 GCOV and PGO
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Peter Oberparleiter <oberpar@linux.ibm.com>
Cc: Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, LKML <linux-kernel@vger.kernel.org>, 
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
 header.i=@google.com header.s=20161025 header.b=NETQKlp2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Fri, Jun 18, 2021 at 11:23 PM Marco Elver <elver@google.com> wrote:
>
> On Sat, 19 Jun 2021 at 01:30, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > We don't want compiler instrumentation to touch noinstr functions, which
> > are annotated with the no_profile function attribute. Add a Kconfig test
> > for this and make PGO and GCOV depend on it.
> >
> > Cc: Masahiro Yamada <masahiroy@kernel.org>
> > Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> > Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> > Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  init/Kconfig        | 3 +++
> >  kernel/gcov/Kconfig | 1 +
> >  kernel/pgo/Kconfig  | 3 ++-
> >  3 files changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 1ea12c64e4c9..540f862b40c6 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
> >  config CC_HAS_ASM_INLINE
> >         def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
> >
> > +config CC_HAS_NO_PROFILE_FN_ATTR
> > +       def_bool $(success,echo '__attribute__((no_profile)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
> > +
> >  config CONSTRUCTORS
> >         bool
> >
> > diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> > index 58f87a3092f3..19facd4289cd 100644
> > --- a/kernel/gcov/Kconfig
> > +++ b/kernel/gcov/Kconfig
> > @@ -5,6 +5,7 @@ config GCOV_KERNEL
> >         bool "Enable gcov-based kernel profiling"
> >         depends on DEBUG_FS
> >         depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
> > +       depends on !X86 || (X86 && CC_HAS_NO_PROFILE_FN_ATTR)
>
> [+Cc Mark]
>
> arm64 is also starting to rely on noinstr working properly.

Sure,
Will, Catalin, other arm64 folks:
Any thoughts on requiring GCC 7.1+/Clang 13.0+ for GCOV support?  That
way we can better guarantee that GCOV (and eventually, PGO) don't
touch noinstr functions?

If that's ok, I'll add modify the above like:

+ depends on !ARM64 || (ARM64 && CC_HAS_NO_PROFILE_FN_ATTR)

to the above hunk in v2.  Oh, looks like arch/s390 also uses noinstr.
Same question applies then:

+ depends on !S390 || (S390 && CC_HAS_NO_PROFILE_FN_ATTR)

Or, we could just do

+ depends on CC_HAS_NO_PROFILE_FN_ATTR

Though that will penalize architectures not using noinstr, that still
would like to use GCOV with versions of GCC older than 7.1.  Perhaps
there are no such such users, or they should consider upgrading their
tools to we can stick with the simpler Kconfig? Thoughts?

>
> This should probably be a 'select ARCH_HAS_GCOV_PROFILE_ALL if
> CC_HAS_NO_PROFILE_FN_ATTR' in the relevant arch/../Kconfig.
>
> Alternatively, using:
> https://lkml.kernel.org/r/YMcssV/n5IBGv4f0@hirez.programming.kicks-ass.net
>
> But I'd probably not overcomplicate things at this point and just use
> ARCH_HAS_GCOV_PROFILE_ALL, because GCOV seems to be a) rarely used,
> and b) if someone decides to selectively instrument stuff like entry
> code, we can just say it's user error.
>
>
> >         select CONSTRUCTORS
> >         default n
> >         help
> > diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> > index d2053df1111c..26f75ac4c6c1 100644
> > --- a/kernel/pgo/Kconfig
> > +++ b/kernel/pgo/Kconfig
> > @@ -8,7 +8,8 @@ config PGO_CLANG
> >         bool "Enable clang's PGO-based kernel profiling"
> >         depends on DEBUG_FS
> >         depends on ARCH_SUPPORTS_PGO_CLANG
> > -       depends on CC_IS_CLANG && CLANG_VERSION >= 120000
> > +       depends on CC_IS_CLANG
> > +       depends on CC_HAS_NO_PROFILE_FN_ATTR
> >         help
> >           This option enables clang's PGO (Profile Guided Optimization) based
> >           code profiling to better optimize the kernel.
> > --
> > 2.32.0.288.g62a8d224e6-goog
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmxGt6nAj%2BdDZEPdQtXNbYb8N6y3XwoCvCD%2BQazskh7zw%40mail.gmail.com.
