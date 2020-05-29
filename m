Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBVNMYX3AKGQE32GSRAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D859C1E86C0
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 20:37:10 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id o21sf213569ooo.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 11:37:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590777430; cv=pass;
        d=google.com; s=arc-20160816;
        b=HAOl+caRACYllEvewoiW+ZSVOXUdRWodqqTagR9Y7kCdwxuEnS6utBMJwHLIyjwdLw
         mtVESD7C6Ba4YbOxvbaItVlk5APtQFFik//fJPPOZFDDIOxCyhAOleayIoa8V12/gsY8
         lEtOC1NPga5Hpdw40T4RdHcp0vm8IeK9Cc2WB2nC6lAddEY+4m9OVWj4zuPIY7/1+/dw
         VgePtoP7zu8eju3Q2RaPjK/drcpA7UJeADlAYAUKbPGKezmGMN55VmpYLMQ//Sq35hYA
         BSD/XtXI64Nyimy4B8mh5TIL/bGxDXRnTlh4Ez5ktAibM08II2uRBAgyMjlv3ETqCJjO
         PktA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ua2rcark5IXBdg0uVQWYAdiZUYYG3KYmLaMCpjGIXsU=;
        b=aOnc8J28drmZ24SPFVaHYbnT+d5Pv1UAMDyawj35ARnkFFHrPftmOvxk8tr2o1Qp45
         793DdP0ODgbOpg+RS23VKPCAyHS0Ggqu24WJ8PezP7IF6JAbgi2vSAX/XaZlQWKvGIcI
         71Dkd2ZygyLUGE7vo1T8C7tdIvdDWYjJKHaSxzt5CRdZXcCrNdMxama9pgP55il01Qd2
         Tr0Lra/bBP4MPnnksOWgmuo3R3tVGe4h4F9OIwJ2c1GMw/cU7qwPuiJeutIu7OT0gFRr
         pjPT6IY5yz0MRfbGHLSRSQr4RuLgaar1vgPmY97BPgp/61B2myBeBUxNJad/uUAAANyc
         cWHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZMny2DF2;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ua2rcark5IXBdg0uVQWYAdiZUYYG3KYmLaMCpjGIXsU=;
        b=lB7bomZp8x5o0Fh1lnZfze7TpCvFHuEs1pJcTXvqhyjw8Pr5ks7ptICU63DUlaaeB5
         EVTMNRauZGeT3dDvmaB3IzND3VC7I271t/q+Lmb0sKJQ8PfMAOq1KG/lkZ0v3jYrrk4P
         9GNT5NvRz6E7fcTrdSaEGo3jzD4bPcI56WK7NopsFUHN28SAmcDkPEsWml8qoWoS7AeU
         wdLVzhsKsS/uzn9BepGwEpaI1lwMF9CW+L7HxdJRSO5HMj0uRFFUIo3LZURQSTtjCv5v
         LTzTUDB40KrqCzCmCN1GuMkFOv/MC0t3OV4iOw2klnizQVg/0y0WKquIwwLkXxcbYusg
         kWxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ua2rcark5IXBdg0uVQWYAdiZUYYG3KYmLaMCpjGIXsU=;
        b=VTVEPLwbL14qCq3SVrpR2rDOSP8mwGSWNDljWMx6HgaYIINJJeNThU9b1b0uVFyKdX
         IvhdRZMDv/5n1QT2HbA3LfKPdgIIuHBqcAGY2lnACNoBVTwVVgtZsGfSlm2CxlM/YekO
         XKfDOmp6gY+TGwFoxq+dLzJbrphfHdKTNgxlRQUXbABN1Z1M5pUQkqnanS2hPaV7yTkC
         tXVzSkZsExz855z3sMQ+wPkmSeSt0Xp3VSsepbZ8UfNKLNcrkHNOGYEgxbyE2DEtlVbs
         oBOEi9PiS9FVXb2zJI+RHOmRKMDCPGKW8Wdhh0ELxX3LJmBJRsqAO1ZaxmXgugrFis1+
         qh3w==
X-Gm-Message-State: AOAM531WLthW6b8MTKBApjhGTVg/ou3gArtwyzJ1VCsfdHccUj/vl5Ux
	lyPLyZ/SH1GWO/72AtfcECQ=
X-Google-Smtp-Source: ABdhPJzkv/p7RVY3cU68Ox47/XEJCITrXU7roqAzrSuky+09DsKq7gbbD3DHoyaR6XIRwisxpGsXgw==
X-Received: by 2002:a9d:2f07:: with SMTP id h7mr6913322otb.32.1590777429628;
        Fri, 29 May 2020 11:37:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:db77:: with SMTP id o23ls388802ood.6.gmail; Fri, 29 May
 2020 11:37:09 -0700 (PDT)
X-Received: by 2002:a4a:49ce:: with SMTP id z197mr7770496ooa.74.1590777429249;
        Fri, 29 May 2020 11:37:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590777429; cv=none;
        d=google.com; s=arc-20160816;
        b=CgFZjmL0fuAAnXel8+g+6AyiUo504C4hZfNaaIHMC42512gn5nj/HKAjThV0n4gF50
         gq6aSlIyoBqDluuhcxFpIf9+0VXEP72cmP1AVlogEiw5VlsF00wtICtFlppZz/Yn1NII
         6YAauOAmh5fEKzVuHeqJbvEeSl08b1pghemV01r5G3/NonkgFB7LdcuYeWofpyi1Zt4r
         LiCSMU0ausHphD0W5Rjv+D23l5QdaX8hDERMfwwtUo7GEDdIMeJ+MNGNfSqgl0+SHIUZ
         O+ITXYU0ily4IZRi/o/6dsSRjNBGOQkqglbpC5LXSa7kaaEe18ECFgcihjvGhvks6P5U
         5+1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qgm4s52vNNhERtvdEgwZpi9/hHsa34APX0EThyas0Hg=;
        b=UTGdUJiiaKfoHEEUbqKMDhHF2cIrrexWQ/XUiZkncVhxPGLYUdXtu/v26FrKGcUBou
         03ZQgizjw5EK79MHz2lTf+TmT+vn1oyoxlAcoDKjNThf63w/J2zaxEHUcQ/5LozoMyOA
         9YcTRtNtBMjwxO2RukXEpffqMhSvfU4YDfbNcb0t5o4PRcGKuru6vGYlba1QN9pvyLlG
         BP1NG+CXWrE2qTg3EP+mWoyWO9re9FdLVSZzmEbQkR+lf9lCn60Vgfp0o8817NaziygZ
         zrPfsVAnA8ASVGayR5KBRYYmWMnFLx1Xh4XLl6RZJXzIGEn8Cu03hHEleX3ZGLw/TnUl
         VMMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZMny2DF2;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id e23si646721oti.4.2020.05.29.11.37.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 11:37:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id b3so3429575oib.13
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 11:37:09 -0700 (PDT)
X-Received: by 2002:aca:d0d:: with SMTP id 13mr6951426oin.172.1590777428688;
 Fri, 29 May 2020 11:37:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-6-elver@google.com>
 <20200529170755.GN706495@hirez.programming.kicks-ass.net>
In-Reply-To: <20200529170755.GN706495@hirez.programming.kicks-ass.net>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 May 2020 20:36:56 +0200
Message-ID: <CANpmjNPaL=HRvaJOC37_Cf4S4kskZezmgRiDSGn460rO2dM4+g@mail.gmail.com>
Subject: Re: [PATCH -tip v3 05/11] kcsan: Remove 'noinline' from __no_kcsan_or_inline
To: Peter Zijlstra <peterz@infradead.org>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZMny2DF2;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as
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

On Fri, 29 May 2020 at 19:08, Peter Zijlstra <peterz@infradead.org> wrote:
[...]
>
> Doesn't this mean we can do the below?

If nobody complains about the lack of __no_kcsan_or_inline, let's do
it. See comments below.

> ---
>  Documentation/dev-tools/kcsan.rst |  6 ------
>  arch/x86/include/asm/bitops.h     |  6 +-----
>  include/linux/compiler_types.h    | 14 ++++----------
>  kernel/kcsan/kcsan-test.c         |  4 ++--
>  4 files changed, 7 insertions(+), 23 deletions(-)
>
> diff --git a/Documentation/dev-tools/kcsan.rst b/Documentation/dev-tools/kcsan.rst
> index ce4bbd918648..b38379f06194 100644
> --- a/Documentation/dev-tools/kcsan.rst
> +++ b/Documentation/dev-tools/kcsan.rst
> @@ -114,12 +114,6 @@ functions, compilation units, or entire subsystems.  For static blacklisting,
>    To dynamically limit for which functions to generate reports, see the
>    `DebugFS interface`_ blacklist/whitelist feature.
>
> -  For ``__always_inline`` functions, replace ``__always_inline`` with
> -  ``__no_kcsan_or_inline`` (which implies ``__always_inline``)::
> -
> -    static __no_kcsan_or_inline void foo(void) {
> -        ...
> -
>  * To disable data race detection for a particular compilation unit, add to the
>    ``Makefile``::

I suppose, if we say that __no_kcsan_or_inline should just disappear
because '__no_kcsan inline' is now good enough, we can delete it.

I think functions that absolutely must be __always_inline would break
with __no_kcsan_or_inline under KCSAN anyway. So, let's simplify.

> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index 35460fef39b8..0367efdc5b7a 100644
> --- a/arch/x86/include/asm/bitops.h
> +++ b/arch/x86/include/asm/bitops.h
> @@ -201,12 +201,8 @@ arch_test_and_change_bit(long nr, volatile unsigned long *addr)
>         return GEN_BINARY_RMWcc(LOCK_PREFIX __ASM_SIZE(btc), *addr, c, "Ir", nr);
>  }
>
> -static __no_kcsan_or_inline bool constant_test_bit(long nr, const volatile unsigned long *addr)
> +static __always_inline bool constant_test_bit(long nr, const volatile unsigned long *addr)
>  {
> -       /*
> -        * Because this is a plain access, we need to disable KCSAN here to
> -        * avoid double instrumentation via instrumented bitops.
> -        */

Yes, we should have reverted this eventually.

>         return ((1UL << (nr & (BITS_PER_LONG-1))) &
>                 (addr[nr >> _BITOPS_LONG_SHIFT])) != 0;
>  }
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 4e4982d6f3b0..6a2c0f857ac3 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -118,10 +118,6 @@ struct ftrace_likely_data {
>  #define notrace                        __attribute__((__no_instrument_function__))
>  #endif
>
> -/* Section for code which can't be instrumented at all */
> -#define noinstr                                                                \
> -       noinline notrace __attribute((__section__(".noinstr.text")))
> -
>  /*
>   * it doesn't make sense on ARM (currently the only user of __naked)
>   * to trace naked functions because then mcount is called without
> @@ -192,17 +188,15 @@ struct ftrace_likely_data {
>  #endif
>
>  #define __no_kcsan __no_sanitize_thread
> -#ifdef __SANITIZE_THREAD__
> -# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
> -# define __no_sanitize_or_inline __no_kcsan_or_inline

I think we just want to keep __no_sanitize_or_inline, for
READ_ONCE_NOCHECK. Having READ_ONCE_NOCHECK do KCSAN-checking seems
wrong, and I don't know what might break.

> -#else
> -# define __no_kcsan_or_inline __always_inline
> -#endif
>
>  #ifndef __no_sanitize_or_inline
>  #define __no_sanitize_or_inline __always_inline
>  #endif
>
> +/* Section for code which can't be instrumented at all */
> +#define noinstr                                                                \
> +       noinline notrace __attribute((__section__(".noinstr.text"))) __no_kcsan
> +

Will this eventually need __no_sanitize_address?

>  #endif /* __KERNEL__ */
>
>  #endif /* __ASSEMBLY__ */
> diff --git a/kernel/kcsan/kcsan-test.c b/kernel/kcsan/kcsan-test.c
> index a8c11506dd2a..374263ddffe2 100644
> --- a/kernel/kcsan/kcsan-test.c
> +++ b/kernel/kcsan/kcsan-test.c
> @@ -43,7 +43,7 @@ static struct {
>  };
>
>  /* Setup test checking loop. */
> -static __no_kcsan_or_inline void
> +static __no_kcsan inline void
>  begin_test_checks(void (*func1)(void), void (*func2)(void))
>  {
>         kcsan_disable_current();
> @@ -60,7 +60,7 @@ begin_test_checks(void (*func1)(void), void (*func2)(void))
>  }
>
>  /* End test checking loop. */
> -static __no_kcsan_or_inline bool
> +static __no_kcsan inline bool
>  end_test_checks(bool stop)
>  {
>         if (!stop && time_before(jiffies, end_time)) {

Acked -- if you send a patch, do split the test-related change, so
that Paul can apply it to the test which is currently only in -rcu.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPaL%3DHRvaJOC37_Cf4S4kskZezmgRiDSGn460rO2dM4%2Bg%40mail.gmail.com.
