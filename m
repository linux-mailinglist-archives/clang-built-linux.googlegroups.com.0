Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2H53LVQKGQE3DVWKIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id BA300AE025
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 23:06:49 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id h11sf2656072vsj.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 14:06:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568063208; cv=pass;
        d=google.com; s=arc-20160816;
        b=wp575UZDIfYYz9GE8RP2mbQP2hG+CjWux6FldrHfDzWqa5Jye7dgLUlLdqFBkVIdmu
         iXon3bJPMaatDwZeVPiPE/ZK+V53d3AevfJtI9fmvOaMsgN2OiEoXPy6N7MyADMNNF4G
         zeiPc4hQYQ8JVJbs71RCSrPmIE7W8uOR0MzrK6d1pHSnt2RRq7juoYjxjx87t/MwWNok
         c0U0+GYk8qBW++dUnxYIdMwLajRdSYDjuIagjkAnasxDmoBtZtjphUn/NCDI9Wd5haTH
         ShOT1slplLAo0fGh6ITH1qzxJuUe8wA2e38fNd7sqC60LX5poBrUFSx9a5NoWIqmITTV
         8dmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=z90/cAwkL/8lSWAtyAGyW8yA3bKuAfM2I7wSwPWeuyI=;
        b=PcqlhpvEqERHgM3DpkwLU9kfBIA7cnsTjnJECUS7coXGmrR4WpPf/07a3CgA5NDj4i
         HzwuSxEEa/IEgKKap8b7CrwWwjOdvZHhURHDoZZV4XNkAUfxXQUPGrALaeIc/zXEPzZF
         VHRNhuxv+Sf38kqWZvFYj7Vm7jeRAgfaz47mlRHPtEhN7drXvV7Oix7trm3UqDOV5QeX
         pC6nCVh7b26IedWEAYobTHGR+etlhUJb3VdhIz/dK8R+MRoqgfJyIL1CP7BgXNswki/j
         golHgHFzHQ65DkzXi38RT7zwVpePV7fusKTM86nFwc3X7NAkuVCeXVxZy70R89VzrLuY
         FWhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rnbbday6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z90/cAwkL/8lSWAtyAGyW8yA3bKuAfM2I7wSwPWeuyI=;
        b=LyE9C0KVDnLjq9I2BFGwsylxdQ5IAyS07PPqjUbWgAIP0HC5A3ghemc/3mHXNzrxsv
         PQHj24Gn77p4czxFnEXlyzBPObk+zVkcHlCYIJki8ls4/mvrmK4vSrqXoWz9Ucd1hq6m
         rB76bXO19hr6KTKD0k4BaedgaA4Jo0dBw9s8yEJ37sk6Qc8gVH3q7zEYowsBND2nSTzQ
         tGl+6G5DFzhLgkXP6gl1i7c0FDWcE/JfK/aSTaTuUv4WQGVhljcecm/cgrzhhROEtL1v
         /uNEHVeiF0a3zuAc6JPkeSUWAFdj+Z12nIkyQMc5M5bvCR0+b/P7pBd5wivVqMFhyB4V
         1tHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z90/cAwkL/8lSWAtyAGyW8yA3bKuAfM2I7wSwPWeuyI=;
        b=UIKRFJ6txvHrAQmX1bZuer0OzDsdyHBnqJnFw5DO1nbgnoZXTIoeiB7MzUdG1BpFJ7
         Lf8CzbWKnWjQMt7lNezBeSxZmJrs18rWsrLnuxlPIaD1/BuDtTHpyNbxZv5cI6Ms/4dc
         2KYNJ4HXX7UHnIBMz/A90cm1wYLtGLDUvb5cqLHybfMiWBmcA8u7/9xcNS0kBySPoJEa
         31Fc7MwWrhBX91SFnfccTX16dvqeOl5S0O45jW1i+kQ66HSr6rELwXTb5NYcsnCTC8oe
         pGBGMIMGNFKTHOQhZozx2quMvEMBnR+u4bXb0y0U4mVxZv/lJA6LaB7VaxomaMxAxguW
         KJDA==
X-Gm-Message-State: APjAAAUFNEgR/qdQKSiF7C+odW9ArnH0KpND9hiSs9jF3xxNrIkl6CgL
	lHbydfEzFW2dH1Nh0KVdBIg=
X-Google-Smtp-Source: APXvYqxkRtX+bmI3LLMWc+EOEx4BphZOVSWjNu//jtsHReKaI9xoR4ddSvI65k+H4v364h0Rb5dt6w==
X-Received: by 2002:a67:2fcf:: with SMTP id v198mr14286613vsv.182.1568063208470;
        Mon, 09 Sep 2019 14:06:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2407:: with SMTP id f7ls772571uan.13.gmail; Mon, 09 Sep
 2019 14:06:48 -0700 (PDT)
X-Received: by 2002:ab0:664e:: with SMTP id b14mr12471009uaq.73.1568063208143;
        Mon, 09 Sep 2019 14:06:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568063208; cv=none;
        d=google.com; s=arc-20160816;
        b=NwAmaN3bAH7P35BnrH7t5JUaRbc8sahE8Dlmi04p2IA7uPgJ3wOv4NZAHPyouL7ILg
         fUM/pjd+P2Sz0HEzJJnOO22iA5PkdB2c5OcarLOxjx/w3k4huM6Xd4sPoPCdrReZBjD0
         yB2H7QdeSc6iaCdVDglALKJiKm5y9hkYEFtyeHDpRbeYKt+2bapTqOteeyOEGh4rXiX4
         6jSBGCVvPaEhx1NTK3XwonX/Ld8enZf4cjJd7/bOWzspZsoPLhTOVgSoxithwZ/Yykjp
         /h1GoxXd6k8H4Ml4w/mw58EAU1PEh6AF7LbBDFhgpTElvJNfeXrda03aGJcCdlt+ggyi
         s8YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=riKo6lp6s32m30Qr1OuM/6ctx9ExTRYBLP18cJRIJKc=;
        b=JcKrOtco/ADCLjg07o2v8K3YVH5y7+XzKdnWTdP99yeDxEIASQX98CbqwRriBWu8Fe
         SFwYZcll7GynBv73DZHDhkWYP+oef+9rsudVO2qrCO03KmdjJ/M/OrnfNeF+vaOqYg/N
         omRjeCcW1eZiX5ovQjabZcjD6beuXjbnq1k0pfGQXk0Yxb9ARcoQvOLv8nLpnKilX0GE
         /LTGAhZD5L+3p0OIzBMa3Ejyfi7l1sC0qjaNJkiE4aBTXgWwXQnWVcqHTfWrcKFv3F+d
         Q86FBr7yIeicvKI6lClhWEHNufxfwmFs28MCDxPO7wDbNO74aYnxhcQH/pQ6KhdsQpTE
         uxzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rnbbday6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id r72si386094vke.5.2019.09.09.14.06.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 14:06:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id k1so7239024pls.11
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 14:06:48 -0700 (PDT)
X-Received: by 2002:a17:902:d891:: with SMTP id b17mr5600711plz.119.1568063206716;
 Mon, 09 Sep 2019 14:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de>
In-Reply-To: <20190909202153.144970-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Sep 2019 14:06:36 -0700
Message-ID: <CAKwvOdn90naN2qLx6qBCii67HNOYeJmVqTKEKuUpXcTXLEEaLA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rnbbday6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Mon, Sep 9, 2019 at 1:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> when CONFIG_OPTIMIZE_INLINING is set.
> Clang then fails a compile-time assertion, because it cannot tell at
> compile time what the size of the argument is:
>
> mm/memcontrol.o: In function `__cmpxchg_mb':
> memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
>
> Mark all of the cmpxchg() style functions as __always_inline to
> ensure that the compiler can see the result.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> index a1398f2f9994..fd64dc8a235f 100644
> --- a/arch/arm64/include/asm/cmpxchg.h
> +++ b/arch/arm64/include/asm/cmpxchg.h
> @@ -19,7 +19,7 @@
>   * acquire+release for the latter.
>   */
>  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)      \
> -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)                \
> +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
>  {                                                                              \
>         u##sz ret;                                                              \
>         unsigned long tmp;                                                      \
> @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
>  #undef __XCHG_CASE
>
>  #define __XCHG_GEN(sfx)                                                        \
> -static inline unsigned long __xchg##sfx(unsigned long x,               \
> +static __always_inline  unsigned long __xchg##sfx(unsigned long x,     \
>                                         volatile void *ptr,             \
>                                         int size)                       \
>  {                                                                      \
> @@ -103,8 +103,9 @@ __XCHG_GEN(_mb)
>  #define arch_xchg_release(...) __xchg_wrapper(_rel, __VA_ARGS__)
>  #define arch_xchg(...)         __xchg_wrapper( _mb, __VA_ARGS__)
>
> -#define __CMPXCHG_CASE(name, sz)                       \
> -static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,      \
> +#define __CMPXCHG_CASE(name, sz)                                       \
> +static __always_inline u##sz                                           \
> +__cmpxchg_case_##name##sz(volatile void *ptr,                          \
>                                               u##sz old,                \
>                                               u##sz new)                \
>  {                                                                      \
> @@ -148,7 +149,7 @@ __CMPXCHG_DBL(_mb)
>  #undef __CMPXCHG_DBL
>
>  #define __CMPXCHG_GEN(sfx)                                             \
> -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,         \
> +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,        \
>                                            unsigned long old,           \
>                                            unsigned long new,           \
>                                            int size)                    \
> @@ -230,7 +231,7 @@ __CMPXCHG_GEN(_mb)
>  })
>
>  #define __CMPWAIT_CASE(w, sfx, sz)                                     \
> -static inline void __cmpwait_case_##sz(volatile void *ptr,             \
> +static __always_inline void __cmpwait_case_##sz(volatile void *ptr,    \
>                                        unsigned long val)               \
>  {                                                                      \
>         unsigned long tmp;                                              \
> @@ -255,7 +256,7 @@ __CMPWAIT_CASE( ,  , 64);
>  #undef __CMPWAIT_CASE
>
>  #define __CMPWAIT_GEN(sfx)                                             \
> -static inline void __cmpwait##sfx(volatile void *ptr,                  \
> +static __always_inline void __cmpwait##sfx(volatile void *ptr,         \
>                                   unsigned long val,                    \
>                                   int size)                             \
>  {                                                                      \
> --
> 2.20.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190909202153.144970-1-arnd%40arndb.de.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn90naN2qLx6qBCii67HNOYeJmVqTKEKuUpXcTXLEEaLA%40mail.gmail.com.
