Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG4YQKEAMGQEIKQOMOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 1187B3D8349
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 00:43:40 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id u14-20020a7bcb0e0000b0290248831d46e4sf271962wmj.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 15:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627425819; cv=pass;
        d=google.com; s=arc-20160816;
        b=pmzwgHNx28hzJJllerN/y5szuhe/wM0NCvZPx6WvnRDZR7YnalRJCQxqeGNYBaQRY0
         seaZqckS2jjIHPKkIF1bez/70RyhS0vqSgmO/9UTyAnwkO0LTj7tntXcD1T+syPbrRQN
         QweLXprIGUEuK0JnsBz1VQIJNr4/aIKpGU4drtsS6pRbf2iC0nnX7KAkUhl5KhCUKkid
         KGpoiZTNs8qnnrwaJcTK4FVX/fVeYyzGNIGzdIsabpav/LuQHUYX56Fi3eSoNDnY2AHO
         df0IYBlNaMYKuP+V0HJdvL7Okv4xOgUN0lff2RNxRYNqFqTUuCZEnPUixQKX7GnzX82B
         Ge7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2WBE+6AvRtIzB6xBuU/EPh9Wtjr0QufjRwLf5PyfyO8=;
        b=My/ULAiLZJYAPKTQdf72qxzpTVOdr417eV2CZISqxqmzT6Kze/GmHGAR6cNZvS0mTb
         1IoQj1dzPUpvrTCN4vsehSyMhDIyfx+IRNB+wrnE0G1l+BI4jnUt/ctj5D74h8py5CMN
         kT1A8RpdfwmEn4WOVFtumU0j63pkeX2C4hj55vPNdK2rOSqk0BYQUUF8lhVjatFyEb2d
         mK8fcOHIz3+LPE7Sj/yqGGiLuFIh+AfARO1ACiSmA4hxU4YiN3ld8B2JqtiZoIc6KOTQ
         ovkVtPyWquLSirTEMIonkOKFL8Vg/YAjykYAyORkMRMX3rL9agPBR/6EJSelAMeNgUXj
         lmNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oPdc+CQO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2WBE+6AvRtIzB6xBuU/EPh9Wtjr0QufjRwLf5PyfyO8=;
        b=UYy8jVGVS/d6nnKEq5d+jd+I+nuOjhxbX/Ow8HPoDXUfj9YthPHiJ3PI7+jEoLYH3k
         Mg21u8AyjQO3nuh2uP0abPdYP4mDY6wYr0CB2uDQ1qgkE3WEBVn9vN38iDl6pmiHmnbZ
         odI39GMYIiGgPxp6sOo3pUE88i6BdwvxBZ3seuZ7vNq833zmBqTWJjfInmLRvX/A147H
         miLfj1NZo3DYeoc0jggyRB4V6VSy0E8nNMilA353bcQ9gSp172rDT0JKDssvByPn3AzM
         tpR/fCB1FC52mdfLjjJ9+2dmSabfKuqLvkhtpSkaVFoRTKYxwRyFiOMazOtLNhKUacd4
         cDYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2WBE+6AvRtIzB6xBuU/EPh9Wtjr0QufjRwLf5PyfyO8=;
        b=ce2f8BLIXZ+hTRHrKcr3K3DaRrJ74+6h/NphCL+E2sYXuBNTC0zKgx+QdDIFTuUnOK
         yEQxYjSI7F83M0ka0PpCnsluNouV2kLFengSVqgkiK+KpRjOqk+STcVtSSZFXcQYnM4j
         qKRWXXVnQJmkKwRCF1cJxiVnJfZhGrZV0hLt+75yHR65QH0C9N1+Oc8frAMA4sMBVTIx
         jcAnVR4ES9spjZLXXEqIc4ZE72iVYbSt2tqkr6HxlRcJlO3Epw3dgcrZTJyp50absSCP
         3uNzMLT4x36q4RziiwGStNvTw5kRatGOXSgnTCR2sM5xWwP99aCZI1V62ww5NTwFN2Sg
         Qsyg==
X-Gm-Message-State: AOAM5323JLsPMHl+87477V9t8C3CLI3225GbytdoDZdIZUxcObGyp2Nn
	OJsezwLViieGlkrhSj+9j5Q=
X-Google-Smtp-Source: ABdhPJx1zotAvMaKfqCu+Zc13QJC6lVmYNowwqeUn62IbbIR2gEzz0JwwojsFP0vR7h9G0+ayvHGkg==
X-Received: by 2002:a05:600c:4c11:: with SMTP id d17mr6245887wmp.121.1627425819853;
        Tue, 27 Jul 2021 15:43:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4dd1:: with SMTP id f17ls429058wru.0.gmail; Tue, 27 Jul
 2021 15:43:39 -0700 (PDT)
X-Received: by 2002:adf:f544:: with SMTP id j4mr2437963wrp.51.1627425819005;
        Tue, 27 Jul 2021 15:43:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627425819; cv=none;
        d=google.com; s=arc-20160816;
        b=oF7ahGFxl+e9wWR3yQGHN/oCqWyJN9UZ7lI7kiUikc6IlQEzpaZ8zBNHPdqdN3TCsU
         L4x2VjIEOTlIqFBP06x2aBih63aBD1zzYjghul1UNdXREmiCqNPIUXxuVsBFWHQMZZ0h
         eZcubY5eBeraJBkzbm3+RfyVy4r9KpwPHOI2t+EGkzJBhgW9bKWNwv9EzG+mK1orXrr+
         GjPfwpAHWDWPeGOZeEd1H7jBBca4o5+sDMshidJ01BOwswYAe6DwXklp49Z1JRjiVFCA
         Y1+g//G19s95M81TJUtNCnQC2myiizFF8KOJ6itkhWZeh048bGDKqoIphodHT38DtJFy
         Z+qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+SboYQvLEoV+Q5oWgHDYhiCn7Tx7IEj91yehwnQAbvM=;
        b=XOXBJhLooXG7JkR7+BWI9Z2HhGh/Df+5BiwN4aiYms0FUX9dSTK69oZxeRR+ZNPqR1
         UpzyQcDhctiCVECQd0LKZy55Uxx5AnEH/1DiWJCkYt4OwEtCYQ8FKINRYIzMiUl63Fp7
         40WcZwKwBDt8dmR8casW7f1Vxi6jCizXxofSazHHnI2b/csEioAkbCx26dSL9J1ZbXri
         2Tw1fMFvWmK5aP8lEKab9qWNOLaQ5vdASmNnphoL/OQDgNTbUxe6WLrnyzJrXjBNdMEp
         DdjECjIwaRQw0tftUSwiVo789L9HZ5O1RF9JvfhvD/V3lDKxDhzHY2ttKemKYtnS9Xr1
         4RoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oPdc+CQO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id b15si236427wru.0.2021.07.27.15.43.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 15:43:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id h14so219338lfv.7
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 15:43:38 -0700 (PDT)
X-Received: by 2002:ac2:596a:: with SMTP id h10mr11005339lfp.374.1627425818438;
 Tue, 27 Jul 2021 15:43:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210727205855.411487-1-keescook@chromium.org> <20210727205855.411487-35-keescook@chromium.org>
In-Reply-To: <20210727205855.411487-35-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 15:43:27 -0700
Message-ID: <CAKwvOdknit8DtWaFvLupmNEebjbwVa6R3xiGc2D4AqB_6+i52g@mail.gmail.com>
Subject: Re: [PATCH 34/64] fortify: Detect struct member overflows in memcpy()
 at compile-time
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith Packard <keithpac@amazon.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oPdc+CQO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

On Tue, Jul 27, 2021 at 2:17 PM Kees Cook <keescook@chromium.org> wrote:
>
> To accelerate the review of potential run-time false positives, it's
> also worth noting that it is possible to partially automate checking
> by examining memcpy() buffer argument fields to see if they have
> a neighboring. It is reasonable to expect that the vast majority of

a neighboring...field?

> diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> index 7e67d02764db..5e79e626172b 100644
> --- a/include/linux/fortify-string.h
> +++ b/include/linux/fortify-string.h
> @@ -2,13 +2,17 @@
>  #ifndef _LINUX_FORTIFY_STRING_H_
>  #define _LINUX_FORTIFY_STRING_H_
>
> +#include <linux/bug.h>

What are you using from linux/bug.h here?

> +
>  #define __FORTIFY_INLINE extern __always_inline __attribute__((gnu_inline))
>  #define __RENAME(x) __asm__(#x)
>
>  void fortify_panic(const char *name) __noreturn __cold;
>  void __read_overflow(void) __compiletime_error("detected read beyond size of object (1st parameter)");
>  void __read_overflow2(void) __compiletime_error("detected read beyond size of object (2nd parameter)");
> +void __read_overflow2_field(void) __compiletime_warning("detected read beyond size of field (2nd parameter); maybe use struct_group()?");
>  void __write_overflow(void) __compiletime_error("detected write beyond size of object (1st parameter)");
> +void __write_overflow_field(void) __compiletime_warning("detected write beyond size of field (1st parameter); maybe use struct_group()?");
>
>  #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KASAN_SW_TAGS)
>  extern void *__underlying_memchr(const void *p, int c, __kernel_size_t size) __RENAME(memchr);
> @@ -182,22 +186,105 @@ __FORTIFY_INLINE void *memset(void *p, int c, __kernel_size_t size)
>         return __underlying_memset(p, c, size);
>  }
>
> -__FORTIFY_INLINE void *memcpy(void *p, const void *q, __kernel_size_t size)
> +/*
> + * To make sure the compiler can enforce protection against buffer overflows,
> + * memcpy(), memmove(), and memset() must not be used beyond individual
> + * struct members. If you need to copy across multiple members, please use
> + * struct_group() to create a named mirror of an anonymous struct union.
> + * (e.g. see struct sk_buff.)
> + *
> + * Mitigation coverage
> + *                                     Bounds checking at:
> + *                                     +-------+-------+-------+-------+
> + *                                     | Compile time  | Run time      |
> + * memcpy() argument sizes:            | write | read  | write | read  |
> + *                                     +-------+-------+-------+-------+
> + * memcpy(known,   known,   constant)  |   y   |   y   |  n/a  |  n/a  |
> + * memcpy(unknown, known,   constant)  |   n   |   y   |   V   |  n/a  |
> + * memcpy(known,   unknown, constant)  |   y   |   n   |  n/a  |   V   |
> + * memcpy(unknown, unknown, constant)  |   n   |   n   |   V   |   V   |
> + * memcpy(known,   known,   dynamic)   |   n   |   n   |   b   |   B   |
> + * memcpy(unknown, known,   dynamic)   |   n   |   n   |   V   |   B   |
> + * memcpy(known,   unknown, dynamic)   |   n   |   n   |   b   |   V   |
> + * memcpy(unknown, unknown, dynamic)   |   n   |   n   |   V   |   V   |
> + *                                     +-------+-------+-------+-------+
> + *
> + * y = deterministic compile-time bounds checking
> + * n = cannot do deterministic compile-time bounds checking
> + * n/a = no run-time bounds checking needed since compile-time deterministic
> + * b = perform run-time bounds checking
> + * B = can perform run-time bounds checking, but current unenforced
> + * V = vulnerable to run-time overflow
> + *
> + */
> +__FORTIFY_INLINE void fortify_memcpy_chk(__kernel_size_t size,
> +                                        const size_t p_size,
> +                                        const size_t q_size,
> +                                        const size_t p_size_field,
> +                                        const size_t q_size_field,
> +                                        const char *func)
>  {
> -       size_t p_size = __builtin_object_size(p, 0);
> -       size_t q_size = __builtin_object_size(q, 0);
> -
>         if (__builtin_constant_p(size)) {
> -               if (p_size < size)
> +               /*
> +                * Length argument is a constant expression, so we
> +                * can perform compile-time bounds checking where
> +                * buffer sizes are known.
> +                */
> +
> +               /* Error when size is larger than enclosing struct. */
> +               if (p_size > p_size_field && p_size < size)
>                         __write_overflow();
> -               if (q_size < size)
> +               if (q_size > q_size_field && q_size < size)
>                         __read_overflow2();
> +
> +               /* Warn when write size argument larger than dest field. */
> +               if (p_size_field < size)
> +                       __write_overflow_field();
> +               /*
> +                * Warn for source field over-read when building with W=1
> +                * or when an over-write happened, so both can be fixed at
> +                * the same time.
> +                */
> +               if ((IS_ENABLED(KBUILD_EXTRA_WARN1) || p_size_field < size) &&
> +                   q_size_field < size)
> +                       __read_overflow2_field();
>         }
> -       if (p_size < size || q_size < size)
> -               fortify_panic(__func__);
> -       return __underlying_memcpy(p, q, size);
> +       /*
> +        * At this point, length argument may not be a constant expression,
> +        * so run-time bounds checking can be done where buffer sizes are
> +        * known. (This is not an "else" because the above checks may only
> +        * be compile-time warnings, and we want to still warn for run-time
> +        * overflows.)
> +        */
> +
> +       /*
> +        * Always stop accesses beyond the struct that contains the
> +        * field, when the buffer's remaining size is known.
> +        * (The -1 test is to optimize away checks where the buffer
> +        * lengths are unknown.)
> +        */
> +       if ((p_size != (size_t)(-1) && p_size < size) ||
> +           (q_size != (size_t)(-1) && q_size < size))
> +               fortify_panic(func);
>  }
>
> +#define __fortify_memcpy_chk(p, q, size, p_size, q_size,               \
> +                            p_size_field, q_size_field, op) ({         \
> +       size_t __fortify_size = (size_t)(size);                         \
> +       fortify_memcpy_chk(__fortify_size, p_size, q_size,              \
> +                          p_size_field, q_size_field, #op);            \
> +       __underlying_##op(p, q, __fortify_size);                        \
> +})

Are there other macro expansion sites for `__fortify_memcpy_chk`,
perhaps later in this series? I don't understand why `memcpy` is
passed as `func` to `fortify_panic()` rather than continuing to use
`__func__`?

> +
> +/*
> + * __builtin_object_size() must be captured here to avoid evaluating argument
> + * side-effects further into the macro layers.
> + */
> +#define memcpy(p, q, s)  __fortify_memcpy_chk(p, q, s,                 \
> +               __builtin_object_size(p, 0), __builtin_object_size(q, 0), \
> +               __builtin_object_size(p, 1), __builtin_object_size(q, 1), \
> +               memcpy)
> +
>  __FORTIFY_INLINE void *memmove(void *p, const void *q, __kernel_size_t size)
>  {
>         size_t p_size = __builtin_object_size(p, 0);
> @@ -277,27 +364,27 @@ __FORTIFY_INLINE void *kmemdup(const void *p, size_t size, gfp_t gfp)
>         return __real_kmemdup(p, size, gfp);
>  }
>
> -/* defined after fortified strlen and memcpy to reuse them */
> +/* Defined after fortified strlen to reuse it. */
>  __FORTIFY_INLINE char *strcpy(char *p, const char *q)
>  {
>         size_t p_size = __builtin_object_size(p, 1);
>         size_t q_size = __builtin_object_size(q, 1);
>         size_t size;
>
> +       /* If neither buffer size is known, immediately give up. */
>         if (p_size == (size_t)-1 && q_size == (size_t)-1)
>                 return __underlying_strcpy(p, q);
>         size = strlen(q) + 1;
>         /* test here to use the more stringent object size */
>         if (p_size < size)
>                 fortify_panic(__func__);
> -       memcpy(p, q, size);
> +       __underlying_memcpy(p, q, size);
>         return p;
>  }
>
>  /* Don't use these outside the FORITFY_SOURCE implementation */
>  #undef __underlying_memchr
>  #undef __underlying_memcmp
> -#undef __underlying_memcpy
>  #undef __underlying_memmove
>  #undef __underlying_memset
>  #undef __underlying_strcat
> diff --git a/include/linux/string.h b/include/linux/string.h
> index 9473f81b9db2..cbe889e404e2 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -261,8 +261,9 @@ static inline const char *kbasename(const char *path)
>   * @count: The number of bytes to copy
>   * @pad: Character to use for padding if space is left in destination.
>   */
> -static inline void memcpy_and_pad(void *dest, size_t dest_len,
> -                                 const void *src, size_t count, int pad)
> +static __always_inline void memcpy_and_pad(void *dest, size_t dest_len,
> +                                          const void *src, size_t count,
> +                                          int pad)

Why __always_inline here?

>  {
>         if (dest_len > count) {
>                 memcpy(dest, src, count);
> diff --git a/lib/Makefile b/lib/Makefile
> index 083a19336e20..74523fd394bd 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -370,7 +370,8 @@ TEST_FORTIFY_LOG = test_fortify.log
>  quiet_cmd_test_fortify = TEST    $@
>        cmd_test_fortify = $(CONFIG_SHELL) $(srctree)/scripts/test_fortify.sh \
>                         $< $@ "$(NM)" $(CC) $(c_flags) \
> -                       $(call cc-disable-warning,fortify-source)
> +                       $(call cc-disable-warning,fortify-source) \
> +                       -DKBUILD_EXTRA_WARN1
>
>  targets += $(TEST_FORTIFY_LOGS)
>  clean-files += $(TEST_FORTIFY_LOGS)
> diff --git a/lib/string_helpers.c b/lib/string_helpers.c
> index faa9d8e4e2c5..4d205bf5993c 100644
> --- a/lib/string_helpers.c
> +++ b/lib/string_helpers.c
> @@ -884,6 +884,12 @@ char *strreplace(char *s, char old, char new)
>  EXPORT_SYMBOL(strreplace);
>
>  #ifdef CONFIG_FORTIFY_SOURCE
> +/* These are placeholders for fortify compile-time warnings. */
> +void __read_overflow2_field(void) { }
> +EXPORT_SYMBOL(__read_overflow2_field);
> +void __write_overflow_field(void) { }
> +EXPORT_SYMBOL(__write_overflow_field);
> +

Don't we rely on these being undefined for Clang to produce a linkage
failure (until https://reviews.llvm.org/D106030 has landed)?  By
providing a symbol definition we can link against, I don't think
__compiletime_{warning|error} will warn at all with Clang?

>  void fortify_panic(const char *name)
>  {
>         pr_emerg("detected buffer overflow in %s\n", name);
> diff --git a/lib/test_fortify/read_overflow2_field-memcpy.c b/lib/test_fortify/read_overflow2_field-memcpy.c
> new file mode 100644
> index 000000000000..de9569266223
> --- /dev/null
> +++ b/lib/test_fortify/read_overflow2_field-memcpy.c
> @@ -0,0 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#define TEST   \
> +       memcpy(large, instance.buf, sizeof(instance.buf) + 1)
> +
> +#include "test_fortify.h"
> diff --git a/lib/test_fortify/write_overflow_field-memcpy.c b/lib/test_fortify/write_overflow_field-memcpy.c
> new file mode 100644
> index 000000000000..28cc81058dd3
> --- /dev/null
> +++ b/lib/test_fortify/write_overflow_field-memcpy.c
> @@ -0,0 +1,5 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#define TEST   \
> +       memcpy(instance.buf, large, sizeof(instance.buf) + 1)
> +
> +#include "test_fortify.h"
> --

I haven't read the whole series yet, but I assume test_fortify.h was
provided earlier in the series?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdknit8DtWaFvLupmNEebjbwVa6R3xiGc2D4AqB_6%2Bi52g%40mail.gmail.com.
