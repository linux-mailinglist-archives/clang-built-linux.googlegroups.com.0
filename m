Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMV63L3AKGQENWQ74GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 60ABE1EC220
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 20:49:25 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id h18sf10826592qkj.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 11:49:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591123763; cv=pass;
        d=google.com; s=arc-20160816;
        b=W0RAAkspu/DB1TYBlWJffwlLrJJgWDA1Zwq7Z/XZKszZ2jz8eTr3vQ/Xv7x0oyZ3Mt
         dE3fUlPZAFgKwuZ/hRLcZocSrwBHdaMuAlsWo7MawV3sGP6P6SkX2uNQpjxoV1BcLV5d
         SNnLyEVsUuGc27OYWx/ggiWMpV/P+ewIfpRbY/uvQGqfzXXYN0wT1gbqsrDnfTvAjoOt
         iuqTSEVaHLeFQwohIiIz0AKKDmQHonFDbxR+jJ8Uxcvw+vqCzti8cs0GwJXBxV3I639B
         KD3V9mQnKqAYzFj4UyvPA+Fpl+zAgESvkNsrX6fZz6zCyJ5Bq5eQLh+gH0We9JJKARYr
         wHyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=F46fN3tMxdoMPgZKOOPy65cgBBwP29afX8EKcsDc0GE=;
        b=TMaZp4daxi1xVL1083E+rwTUZ6d30l46ycvDk7ubWDmylGvkBugPHGT09xp8qe6yMI
         aLesI5k/4yxO2rD3jUgGu9aTROh2slvr8ditCVOL+/OkdX8v2RuTC6BF51I3XqJbr1Gk
         Vl+LWZUuWWKy2LifP8x6ZUHp91tu0nsij7K6hoYHG3EWwVH8v6viYWZuETjCKisom4wO
         gy3vzztsVF7n6cT5rFQ8VHPNomJGVWP9Y8Zqp+/uwer/TjxB/tv7GVd7VOMcQ2G81Uyk
         LlVLOURJLCFo/t2u00DxyQGgmXlTDmCykvG2f8xMZ554v8QmavmzeSKb9Byn5bsPer1N
         8ZRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cmj2yrH3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F46fN3tMxdoMPgZKOOPy65cgBBwP29afX8EKcsDc0GE=;
        b=Qk0631qKY58GBu17MZAZzJnKQq9XEvRO750txw7/U1yP2uzik+4bh9y9FMw9V8vOV2
         OMcvK3t0vrg9NvR/JFGLb2Js++agFUjGda2o7N6FX/0cqUkjHXpofgpiKsqg9VmEgEny
         doZMwnVGjULfhPnMR7Nrj5DSyP/YGseGuP0CUXZL+qKblzQyLKoMqQvY7zMk/TV3zmmm
         ksCCkxYZoSKLht47dGq8JdGfiqyxGeptW+rYoKGw5l0s8+ZcqW56IBsn1FqIGVAR0pgd
         l//MLCbnY+D5c90dQCnD3tyImaIiOmE/MYll2OVj+Wg+wVTATfJ+HMUdSA+omhcF4u91
         LH1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F46fN3tMxdoMPgZKOOPy65cgBBwP29afX8EKcsDc0GE=;
        b=s9yi9QNjOaZBoLUAcYhlOiBnzk/Eu3qt/DtMsf3b8YG4B9Hx0+Gsy2FPSq7Msbd2FB
         j+oW6rufzI0Vq3xRCsFONBBTbb6Uemf4+fBHXhbr8SjlhmTNbizPHQfttD0SJP0W3qQ5
         lzbBHviN3cD6oZJ0KBGZgW8bb0EzW7ptomlpjJ8XBTn9YfVQcss9o9lhKQWxcyKb71gO
         4tkikf2frCjfxjxaNBcZ6zGoaNZTQ/RkIEY+0FlK93csU2WBsN5ybzgNjrYP+/2vfH4W
         bHKTykIjfqutgL3qgc/SbWHNI75UaFrHkxbKKhqjQyjouNv7O+CVF5mHjlRlZN6fkGYo
         MHKw==
X-Gm-Message-State: AOAM530ZIpQChCsySWUBKlNcx5kPNwa6YJtYXUKK+MPN8b9/yZsV7pCc
	OGSnrzXH5eFULbApdE+uzR4=
X-Google-Smtp-Source: ABdhPJwdf4x6IKGmpA8YjMzS4uGygRxmJBSC8fPlM1WTjIbo3t7hHQPoRQr1f/NBP1DVoJvK5y0mUw==
X-Received: by 2002:a37:9f44:: with SMTP id i65mr26931173qke.103.1591123763116;
        Tue, 02 Jun 2020 11:49:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fc4a:: with SMTP id w10ls4545087qvp.7.gmail; Tue, 02 Jun
 2020 11:49:22 -0700 (PDT)
X-Received: by 2002:ad4:528d:: with SMTP id v13mr12434223qvr.90.1591123762756;
        Tue, 02 Jun 2020 11:49:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591123762; cv=none;
        d=google.com; s=arc-20160816;
        b=wwsIO8gVfZwZ6kDDSJ0Fa/RlFIpS1qJlTl3s+GCx9UDRy7U4W6zC8lrrgftuGaLZBH
         eFNZcKs77EnTEGGOZJvvmUniR2K9ZoLsJgHavJnUuZ90yTtVv9Q7+fqPQaWEGc4w4LGb
         LFc7hRorDKLt30q9VoSsDXgmEY8+m8AyO74bIZr+VZGTgwQxRKd06zs+tNf51pVGWwP5
         HKoNJwDhpdffbS8vWD3s6uNZN+OkVeEe2+CwQh9RxYSjDUP9Wstoy9rkIBaEGrYNqPWT
         AZmROun4KRFIXcB1VuWCmbOox1qdXol/gaaxohNKYLO3BvxxKaOPtHdzUEyBDOjHWZO0
         Zb7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5xlo4rK4g8fnalu7U0lbya/uKNvvM9T5qVFKFRMeKAc=;
        b=A9GLseKcnQP4/xVsj7Vh9DMCA2pJpxzaN1YIaJrCmU97mImBh+b8ROvIi2IloUUddp
         SQikSwdAQCXUGEKmkWQ+qGyhzqHIVpsXfXa1YQysyNQil445kmbyZNYMLw9TR7JUlVmq
         1tJa2JzKhD+aM5RTlk0BkVBEls4yIzkhqcFUoHOU/H4xDu/CjujliFxGks73wyfSLumf
         bpqrwV/GKoZpg4ylqBPae0ZYk9ePusHK5zK+RE98t6m0thEIuMNzlc1aDT684HMvUCfO
         0+sY3hAarwxBUMSFMs8TkKS75ahFrvfk2Fo7crhS8NQ3netYOmobAGcErXAxNU7GlQ6O
         EICw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cmj2yrH3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id b1si210686qte.1.2020.06.02.11.49.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 11:49:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id m2so1969587pjv.2
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 11:49:22 -0700 (PDT)
X-Received: by 2002:a17:90b:4c47:: with SMTP id np7mr601098pjb.101.1591123761720;
 Tue, 02 Jun 2020 11:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <20200602184409.22142-2-elver@google.com>
In-Reply-To: <20200602184409.22142-2-elver@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 11:49:10 -0700
Message-ID: <CAKwvOdkXVcZa5UwnoZqX7_FytabYn2ZRi=zQy_DyzduVmyQNMA@mail.gmail.com>
Subject: Re: [PATCH -tip 2/2] compiler_types.h: Add __no_sanitize_{address,undefined}
 to noinstr
To: Marco Elver <elver@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cmj2yrH3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Tue, Jun 2, 2020 at 11:44 AM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Adds the portable definitions for __no_sanitize_address, and
> __no_sanitize_undefined, and subsequently changes noinstr to use the
> attributes to disable instrumentation via KASAN or UBSAN.
>
> Link: https://lore.kernel.org/lkml/000000000000d2474c05a6c938fe@google.com/
> Reported-by: syzbot+dc1fa714cb070b184db5@syzkaller.appspotmail.com
> Signed-off-by: Marco Elver <elver@google.com>

Currently most of our compiler attribute detection is done in
include/linux/compiler_attributes.h; I think this should be handled
there. +Miguel Ojeda

> ---
>
> Note: __no_sanitize_coverage (for KCOV) isn't possible right now,
> because neither GCC nor Clang support such an attribute. This means
> going and changing the compilers again (for Clang it's fine, for GCC,
> it'll take a while).
>
> However, it looks like that KCOV_INSTRUMENT := n is currently in all the
> right places. Short-term, this should be reasonable.
> ---
>  include/linux/compiler-clang.h | 8 ++++++++
>  include/linux/compiler-gcc.h   | 6 ++++++
>  include/linux/compiler_types.h | 3 ++-
>  3 files changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 2cb42d8bdedc..c0e4b193b311 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -33,6 +33,14 @@
>  #define __no_sanitize_thread
>  #endif
>
> +#if __has_feature(undefined_behavior_sanitizer)
> +/* GCC does not have __SANITIZE_UNDEFINED__ */
> +#define __no_sanitize_undefined \
> +               __attribute__((no_sanitize("undefined")))
> +#else
> +#define __no_sanitize_undefined
> +#endif
> +
>  /*
>   * Not all versions of clang implement the the type-generic versions
>   * of the builtin overflow checkers. Fortunately, clang implements
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 7dd4e0349ef3..1c74464c80c6 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -150,6 +150,12 @@
>  #define __no_sanitize_thread
>  #endif
>
> +#if __has_attribute(__no_sanitize_undefined__)
> +#define __no_sanitize_undefined __attribute__((no_sanitize_undefined))
> +#else
> +#define __no_sanitize_undefined
> +#endif
> +
>  #if GCC_VERSION >= 50100
>  #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
>  #endif
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 02becd21d456..89b8c1ae18a1 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -198,7 +198,8 @@ struct ftrace_likely_data {
>
>  /* Section for code which can't be instrumented at all */
>  #define noinstr                                                                \
> -       noinline notrace __attribute((__section__(".noinstr.text"))) __no_kcsan
> +       noinline notrace __attribute((__section__(".noinstr.text")))    \
> +       __no_kcsan __no_sanitize_address __no_sanitize_undefined
>
>  #endif /* __KERNEL__ */
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXVcZa5UwnoZqX7_FytabYn2ZRi%3DzQy_DyzduVmyQNMA%40mail.gmail.com.
