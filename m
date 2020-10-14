Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAECT36AKGQEYAODJEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBFC28E8E7
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 00:51:45 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id w126sf279093oif.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 15:51:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602715904; cv=pass;
        d=google.com; s=arc-20160816;
        b=kcgHw3t1I5te9XqXrklo4MAvRFmHSRrfu05gk5GbnKW3xtoAseLt2doBF/w3Qws9Tx
         tB1Nqq7YHIf3vzvrsKwlJ6jPVxwCDCf/i09oQBaBvYIL7/lUC31iEFXEibDZWyf5n6wZ
         ICAYw9g6or67xf5vW1NEHYhYAUE3GEVU5O9GmYRezJEXWpQ30e37OaoYRVV5uJ4DXDd3
         3OBC3K/XlHMlwI9vkgfeEDPN/2byZWLQ3UBQy+mOyGGCstDgCQR6IWwdvtHq9Zs2dDfs
         UIdpvK2TgqC7leIeQnjTb+RKXS0y30bkm4x9fGEL19M6jA1ysdxRWaNPEP9GeqUsahAB
         GHBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rSqos3DzgaGpSaKbURe2pBpyxpMYbJPFyDYPOEfJwXc=;
        b=bKlHnLgZrI/Mgo+JTifZTCb8E/g3cljr7w7NYAYuD16M+OHsg0ww3FSMG77ELg5QsI
         XQLhqr0o9Fy+Ks9NFZ9Ut1RTPSBJOF0BYaWwMeYzd04S4UYzQyk/c8AIps6ji2E3aWLd
         77B6bM43HUHFh53uVgapZhBNyeE7LYgR+EvtsUeIXx9obMoQsFk9RNItnA6Uwq8kOgm1
         cgiVqWFUVTBD8uMeJawAzoTBgSy3+zls9+vfqVkZiRLIcNeKcYLnMXE1bNTkiHmQ1yX1
         yysvHLTQp98RhojaC6tCLYE8M/GFqBJmTx1dUG5Qw5M7rLBfJudp34AhLaSRa7qu023c
         dAdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qGuXJ+TK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rSqos3DzgaGpSaKbURe2pBpyxpMYbJPFyDYPOEfJwXc=;
        b=LV1KvB594jflmQY25bpGDKzbA8eEUgvk764ecdRJaoSg5bVSmptqvtQ53J/BN7Viv7
         6XDhhsArY4bkuG+eJ0CTdU4XkPiw6yHo4UN48SC96A0DZ7Us8RgedIOxY3pPCM+PMava
         5/zs503T6Mg8ZGCiNsgr3bb9WuglHprMxwunA1PnmNpQwcTTmZWmlrOhuHxT1qi9k0uI
         Gkh72VXdrGilAUKdbOgJmCkBc1gc3wcixZ9p+97iMMB27TsyGg2Q9j14bMze4AoZxvJV
         1GaDM9bGzc5P9/ra/L9bZ+0DNa76TdAJgCE84yc0nhwCYx4A6gBbJuyQ6ZtVxfrj57Cx
         e2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rSqos3DzgaGpSaKbURe2pBpyxpMYbJPFyDYPOEfJwXc=;
        b=m2zuJsSR7AY22Jat2RpP4tmLGpPZIJ4vcvis4AAn1sUUhqs4HAawhSpiyl8TctDmqN
         5mt7BNem7YDafuhzGrWFWyJeksR4sik8EuUQ+Eobi4ID1oDt/NzH3UmU2IBhcCV4Sah0
         1+lhUkikhpbqGpXrfqnjhfL5ESZt/Lu5abjXyyQDWhC6vqDoP52C1Dr+xIc8Dg99RzUz
         eBvxStVcOHiJVUUeaM1olMJqR7Qu9bQ5GJF4bFiqe+/zvY5jKiyUMObtNPOhN5nf42Bd
         jJmcxI/KonzIVjkc03tyEMW3dP4QdRlYiC61coYqbH3sboO8ZjYZF8jQeB+pnzi2Obms
         ap2A==
X-Gm-Message-State: AOAM531UwK3rHsVKWODRyg/FO94nHNbyhb7Yn60FFYNitgSMEu6SIpNl
	O7KWHT+e2dhOcSp0B8SRStE=
X-Google-Smtp-Source: ABdhPJzwkWK6mGkf0V4hWPqF4fFgZELf8zZtBFBjOSKczO1F80Ov64H1kyPkPu8eKFCOcsxIaj5Fdw==
X-Received: by 2002:aca:f203:: with SMTP id q3mr275975oih.148.1602715904605;
        Wed, 14 Oct 2020 15:51:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:c1:: with SMTP id t1ls152469oic.7.gmail; Wed, 14
 Oct 2020 15:51:44 -0700 (PDT)
X-Received: by 2002:aca:c654:: with SMTP id w81mr281073oif.83.1602715904191;
        Wed, 14 Oct 2020 15:51:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602715904; cv=none;
        d=google.com; s=arc-20160816;
        b=Ga+zzXW7vWkqJ1+Uu+Wv+hZeEDt+iOWWj2q9mHrqJYfLSSfFuGrK7Au6UM2KTqpjqa
         u/gGPNk7WzHhvalNVPoYTU1X8wiWsgf2AzBx8MGugPEpEhsOO2sil/aHx3V6g14uXX7N
         OQopfncgvLv6aJuKiZWO7o7lq+mb4X73jUbmQP7rI2nLduPi6g6ym/uZv+TCCKpZZ4nE
         10FWlzRGkRJlMmC8q/9Rlz7dlDmLwYjMjR7cpAzkMAhgWQiDP7TJDblRT7tutygInrXr
         /JTMMMEpFgTBt5qjeBzMqNy6EMOG1U1EmlSAUCMXngcTn0jnEgVv3q2IExxukndpA+WX
         eI8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m1RlPQ41pOi2BLMFnH+YdlsJUL1/xTYXwZ0zleFqEx8=;
        b=HgxtjBYkGBoa70kk4DecbFB0sIu7S4zRBZZ/Ie16NkDnDSS3gxSnQ1NctZF6tWNkBm
         yZt7xB0VNMQ/hIpEZggGA2eyjyMb3eIAaEpLpr75oSZqzpu6kclLuedZ92C/iMQq3olT
         +ZICylBfdZzKBYfeZ5Tpo5lce36QggRe8Kh3gK9C6UMcYiX3RyT7xL5OPRIeU6/U/vuR
         rdaErI7YgjgTH30MvetKdmpcAm7QiuyrwHnGAgpa2CFUyrUnSRK7yCdl4WlWQ1Umjww0
         m+3NFmuXLeKeaEUo1eVQymjwYB8wB5mWaQD4dxAvuWWroGJ4XVB3pR2M2CeZ/sh5YFH7
         tP5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qGuXJ+TK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r6si155377oth.4.2020.10.14.15.51.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 15:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id f19so700295pfj.11
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 15:51:44 -0700 (PDT)
X-Received: by 2002:a63:f74a:: with SMTP id f10mr945665pgk.263.1602715903247;
 Wed, 14 Oct 2020 15:51:43 -0700 (PDT)
MIME-Version: 1.0
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
In-Reply-To: <20201014212631.207844-1-nivedita@alum.mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Oct 2020 15:51:32 -0700
Message-ID: <CAKwvOdkinv0dSuuTV7xTwqOVChpZM=Mu0GvEoAQYTtiXXtcERg@mail.gmail.com>
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
To: Arvind Sankar <nivedita@alum.mit.edu>, Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qGuXJ+TK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, Oct 14, 2020 at 2:26 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Commit
>   815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
>
> neglected to copy barrier_data() from compiler-gcc.h into
> compiler-clang.h. The definition in compiler-gcc.h was really to work
> around clang's more aggressive optimization, so this broke
> barrier_data() on clang, and consequently memzero_explicit() as well.
>
> For example, this results in at least the memzero_explicit() call in
> lib/crypto/sha256.c:sha256_transform() being optimized away by clang.
>
> Fix this by moving the definition of barrier_data() into compiler.h.
>
> Also move the gcc/clang definition of barrier() into compiler.h,
> __memory_barrier() is icc-specific (and barrier() is already defined
> using it in compiler-intel.h) and doesn't belong in compiler.h.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")

Thanks for the patch! Curious how you spotted this? My mistake for
missing it.  Definite difference in the disassembly before/after.

Cc: stable@vger.kernel.org
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

akpm@ would you mind picking this up when you have a chance?

See also:
commit 7829fb09a2b4 ("lib: make memzero_explicit more robust against
dead store elimination")

I'm pretty sure `man 3 explicit_bzero` was created in libc for this
exact problem, though the manual page is an interesting read.

> ---
>  include/linux/compiler-clang.h |  6 ------
>  include/linux/compiler-gcc.h   | 19 -------------------
>  include/linux/compiler.h       | 18 ++++++++++++++++--
>  3 files changed, 16 insertions(+), 27 deletions(-)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index cee0c728d39a..04c0a5a717f7 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -52,12 +52,6 @@
>  #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
>  #endif
>
> -/* The following are for compatibility with GCC, from compiler-gcc.h,
> - * and may be redefined here because they should not be shared with other
> - * compilers, like ICC.
> - */
> -#define barrier() __asm__ __volatile__("" : : : "memory")
> -
>  #if __has_feature(shadow_call_stack)
>  # define __noscs       __attribute__((__no_sanitize__("shadow-call-stack")))
>  #endif
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 7a3769040d7d..fda30ffb037b 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -15,25 +15,6 @@
>  # error Sorry, your compiler is too old - please upgrade it.
>  #endif
>
> -/* Optimization barrier */
> -
> -/* The "volatile" is due to gcc bugs */
> -#define barrier() __asm__ __volatile__("": : :"memory")
> -/*
> - * This version is i.e. to prevent dead stores elimination on @ptr
> - * where gcc and llvm may behave differently when otherwise using
> - * normal barrier(): while gcc behavior gets along with a normal
> - * barrier(), llvm needs an explicit input variable to be assumed
> - * clobbered. The issue is as follows: while the inline asm might
> - * access any memory it wants, the compiler could have fit all of
> - * @ptr into memory registers instead, and since @ptr never escaped
> - * from that, it proved that the inline asm wasn't touching any of
> - * it. This version works well with both compilers, i.e. we're telling
> - * the compiler that the inline asm absolutely may see the contents
> - * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> - */
> -#define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
> -
>  /*
>   * This macro obfuscates arithmetic on a variable address so that gcc
>   * shouldn't recognize the original var, and make assumptions about it.
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 92ef163a7479..dfba70b2644f 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -80,11 +80,25 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>
>  /* Optimization barrier */
>  #ifndef barrier
> -# define barrier() __memory_barrier()
> +/* The "volatile" is due to gcc bugs */
> +# define barrier() __asm__ __volatile__("": : :"memory")
>  #endif
>
>  #ifndef barrier_data
> -# define barrier_data(ptr) barrier()
> +/*
> + * This version is i.e. to prevent dead stores elimination on @ptr
> + * where gcc and llvm may behave differently when otherwise using
> + * normal barrier(): while gcc behavior gets along with a normal
> + * barrier(), llvm needs an explicit input variable to be assumed
> + * clobbered. The issue is as follows: while the inline asm might
> + * access any memory it wants, the compiler could have fit all of
> + * @ptr into memory registers instead, and since @ptr never escaped
> + * from that, it proved that the inline asm wasn't touching any of
> + * it. This version works well with both compilers, i.e. we're telling
> + * the compiler that the inline asm absolutely may see the contents
> + * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> + */
> +# define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
>  #endif
>
>  /* workaround for GCC PR82365 if needed */
> --
> 2.26.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkinv0dSuuTV7xTwqOVChpZM%3DMu0GvEoAQYTtiXXtcERg%40mail.gmail.com.
