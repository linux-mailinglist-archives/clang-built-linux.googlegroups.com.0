Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQML3PVQKGQEGUDVFBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B47AE04D
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 23:36:03 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id f2sf11453476pfk.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 14:36:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568064962; cv=pass;
        d=google.com; s=arc-20160816;
        b=L3CNg7sk9FcLkHNCWT2tA/0kv9o6VmXHV2iyPOqhf7LhOXs7USagEQQ3jrrvhWM1v4
         iuRxvA81NdnzQcDPxycL9pYlW5Dsu6PDSP/pNblBi/caAAAun9Q7307CqU8HBmRrdi0r
         cno3a8eAkDbiW4VTJ77hrONODL7dvcH3Xes1a5jTJCTTv4wkDKuKKGAr9AYrf+Lyq+FQ
         EVqCmE9uekctwi+eytzLqcxfqGM/iipnNrfkGIHJga9o//TBhnBBSJxB44JxsEO28PDn
         MDUxtZlEx1nfQ6AqjYprnQYhRiTR2iLKG+0aEOszWldcyYFLxx2tyuDbJ3+G5CAikRFD
         2A7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X2k8EnRYoZAQB63MpzrWJIp4FnJjLSOYnMqfAiNv9ck=;
        b=XEw02MVHK6IaX0m7adZljxPCpy0hScurviYetineCbWYG/0C/062OdR21B60uKz7/2
         bEGpNikd6WQiJFUnVf/9mZlSDgPa2bX8Z96fvGZsd45aj3HOaqThf6eAOMZO7p1pPe8b
         5lKliHCBEtL+2rGpxCsCpGK9Sdm4V69TN109WWkk6/gD8lYG6fFJGbpZBKGr24kTylTn
         tBNIoaxNermXFw4Ync3Z24gcnI5ifXN0loqvgZ8iNaw+D96REpo77vYoMnt0fFiE7HKZ
         gqamis1ksSc6QOZeP3ZWVEL1Pf0OaR4p2F3neBZKQST5tWnjbNMjaBfrhhQ+T+QmJRbX
         acNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HooNS6Li;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X2k8EnRYoZAQB63MpzrWJIp4FnJjLSOYnMqfAiNv9ck=;
        b=Ea7DjGu5+QELqWh0Pb29auQrnCHb5u7kCNHVd4iS+PR4gvLkQzeKvy8JyrLIbxSErq
         fg/PkvML7ki9ErFAGfBYZjofabKQYGiVda8qubixTqEl0Cb69NClaOEElyfUBiNIVtV2
         P7GLW01PdFKHH3P5hk8dMYcXor12yDoMAwi31Qa/+cadL4Ee7xg3riooJA9UWy4t5DGS
         r28swOfqNPHuHm51gJM9NyrQJyw/D/en+VJtY5VeHkJL+irRkzT3BdM5mDyGjQJ29vXI
         Oq4E+6r8oHJOC5F9NYpqrv03kqjwvlYGO+u1EfdcEbiY25/aicFsIKo2R7LQV2IKhaXB
         BGEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X2k8EnRYoZAQB63MpzrWJIp4FnJjLSOYnMqfAiNv9ck=;
        b=F9+noW7O7RKeCAWUz430TFOlhBPyZPQEen2tF5b8w0JcCBN1p+0cd+onc9N+IeCaRA
         Y+tF2RKc9oNqdFqNRmSudj5ycYQ/fA3HCiMt5BiNetDkpsPqKFj2e+P/DMBDNwYjQ+Tp
         3wzSnhd0VYU8/q/VqDrutNBB38vNWPKYPHTlWD9CNyQRYOXoG0IWgfunhJoIro8qGsE3
         GALnPD18xkwsaBm9/+3F2owR5YmBvvHVEsuCmo1ML6YnRlQSBZKsfc4EoRorhhcqq+QX
         9gpdOLlB3YgPOQ47MBe3IKJWhidU03pzFPT01oiRuqwDPZI0VdR0kFGnSdHsniLSGkA+
         wE2A==
X-Gm-Message-State: APjAAAVpPtTtguApLOdHsOGnJ5eLZv4F0u3gRNqAJqQx5vRK6VtHbQER
	tpgjCB8mKzy5Uclt/QPW3yE=
X-Google-Smtp-Source: APXvYqyLQe2NcQPrtp0evjbBE/3CfJSP37iYrOX7akwrDQpYhHjcOO2Elgkch+NpfDotk5ZSMuP9XQ==
X-Received: by 2002:a63:481c:: with SMTP id v28mr23688039pga.50.1568064961791;
        Mon, 09 Sep 2019 14:36:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8687:: with SMTP id x129ls3829220pfd.12.gmail; Mon, 09
 Sep 2019 14:36:01 -0700 (PDT)
X-Received: by 2002:a62:e910:: with SMTP id j16mr31359791pfh.123.1568064961493;
        Mon, 09 Sep 2019 14:36:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568064961; cv=none;
        d=google.com; s=arc-20160816;
        b=GFKCO5IzSe+SJHvuSRLBwZRERta2R4sPhP2ZRiZV5odWCLyy+Wq1Ewp+8UxMbAX9bD
         sR5JO2upeNbhYH6QIRALiCNyH+lsxdgc5GFV36rW02M5Ksq8pJMFV1Mltby24Ef+AnuO
         bEvJ+XPNaw6a6bchO5U1iouOL+swP+VU/j0ccL6WZXGT+n/RrO3tLj/YUUJFRTUo0LzM
         sS6JMCwAvRi+dRb6aSWUXSNiRZ8zNfC4Zn8e8rZJsi/B/T6ygi9B1/zgXTB3la4LEbdl
         BVdjZWoDmA/LqYz2hhrhk5QIYHZUZPj0sDxDzgnHuX31NPjRg6/rWclkad7xCOghXGr6
         COGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AWfChiuUJemWX/xDu17NLd8EQGs1u1yuvhrocXkkuOg=;
        b=pE2Xp2T+VwUbTkUjqk9gfaGToM8j5g7YwIJR/OMB+e7J97A7SmLpZiq4PdgWUnFkQh
         DIz1KLAq/8PR89DUprnPFqwkMrXn/7XoinRnl8Ppf+xVD/qNmWG+2K4GhQk5T8EI9sP0
         lHQgoDOrUwX/7yflQaq1+Cur7U+9y20qSgex54XcOxAh2XlG6keMkUoyZX6EhD+Nm/Rr
         +sq9iRsVnLENu2vp0TngVV3+nqGsoPQjajxyHqwwzGSmmPgLF0Avw6Xd205DsV/YYeD7
         6DFKQf27h+Xe3VgZG7TJT+4bLBFmE1YoBSm9xNG7xrKuDnNueoP0FV1lXuXay0I79ts8
         e2+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HooNS6Li;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id l72si668412pge.0.2019.09.09.14.36.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 14:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s17so2376758plp.2
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 14:36:01 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr26519733plo.223.1568064960627;
 Mon, 09 Sep 2019 14:36:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de> <CAKwvOdn90naN2qLx6qBCii67HNOYeJmVqTKEKuUpXcTXLEEaLA@mail.gmail.com>
In-Reply-To: <CAKwvOdn90naN2qLx6qBCii67HNOYeJmVqTKEKuUpXcTXLEEaLA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Sep 2019 14:35:49 -0700
Message-ID: <CAKwvOdnnsQHkLG02oa2hkP8JDEiqnaH_xsxLrWBxSs0bvZetsQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HooNS6Li;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Mon, Sep 9, 2019 at 2:06 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Sep 9, 2019 at 1:21 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > when CONFIG_OPTIMIZE_INLINING is set.
> > Clang then fails a compile-time assertion, because it cannot tell at
> > compile time what the size of the argument is:
> >
> > mm/memcontrol.o: In function `__cmpxchg_mb':
> > memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
> > memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'
> >
> > Mark all of the cmpxchg() style functions as __always_inline to
> > ensure that the compiler can see the result.
>
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>

Also, I think a Link tag may be appropriate as I believe it fixes this report:

Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/648

>
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > index a1398f2f9994..fd64dc8a235f 100644
> > --- a/arch/arm64/include/asm/cmpxchg.h
> > +++ b/arch/arm64/include/asm/cmpxchg.h
> > @@ -19,7 +19,7 @@
> >   * acquire+release for the latter.
> >   */
> >  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)      \
> > -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)                \
> > +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
> >  {                                                                              \
> >         u##sz ret;                                                              \
> >         unsigned long tmp;                                                      \
> > @@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
> >  #undef __XCHG_CASE
> >
> >  #define __XCHG_GEN(sfx)                                                        \
> > -static inline unsigned long __xchg##sfx(unsigned long x,               \
> > +static __always_inline  unsigned long __xchg##sfx(unsigned long x,     \
> >                                         volatile void *ptr,             \
> >                                         int size)                       \
> >  {                                                                      \
> > @@ -103,8 +103,9 @@ __XCHG_GEN(_mb)
> >  #define arch_xchg_release(...) __xchg_wrapper(_rel, __VA_ARGS__)
> >  #define arch_xchg(...)         __xchg_wrapper( _mb, __VA_ARGS__)
> >
> > -#define __CMPXCHG_CASE(name, sz)                       \
> > -static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,      \
> > +#define __CMPXCHG_CASE(name, sz)                                       \
> > +static __always_inline u##sz                                           \
> > +__cmpxchg_case_##name##sz(volatile void *ptr,                          \
> >                                               u##sz old,                \
> >                                               u##sz new)                \
> >  {                                                                      \
> > @@ -148,7 +149,7 @@ __CMPXCHG_DBL(_mb)
> >  #undef __CMPXCHG_DBL
> >
> >  #define __CMPXCHG_GEN(sfx)                                             \
> > -static inline unsigned long __cmpxchg##sfx(volatile void *ptr,         \
> > +static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,        \
> >                                            unsigned long old,           \
> >                                            unsigned long new,           \
> >                                            int size)                    \
> > @@ -230,7 +231,7 @@ __CMPXCHG_GEN(_mb)
> >  })
> >
> >  #define __CMPWAIT_CASE(w, sfx, sz)                                     \
> > -static inline void __cmpwait_case_##sz(volatile void *ptr,             \
> > +static __always_inline void __cmpwait_case_##sz(volatile void *ptr,    \
> >                                        unsigned long val)               \
> >  {                                                                      \
> >         unsigned long tmp;                                              \
> > @@ -255,7 +256,7 @@ __CMPWAIT_CASE( ,  , 64);
> >  #undef __CMPWAIT_CASE
> >
> >  #define __CMPWAIT_GEN(sfx)                                             \
> > -static inline void __cmpwait##sfx(volatile void *ptr,                  \
> > +static __always_inline void __cmpwait##sfx(volatile void *ptr,         \
> >                                   unsigned long val,                    \
> >                                   int size)                             \
> >  {                                                                      \
> > --
> > 2.20.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190909202153.144970-1-arnd%40arndb.de.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnnsQHkLG02oa2hkP8JDEiqnaH_xsxLrWBxSs0bvZetsQ%40mail.gmail.com.
