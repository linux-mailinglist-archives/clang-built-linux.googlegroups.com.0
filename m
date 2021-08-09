Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAHCYWEAMGQE3TKI7UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6E63E4BF9
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 20:16:33 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id 85-20020a1c01580000b02902511869b403sf6326wmb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 11:16:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628532993; cv=pass;
        d=google.com; s=arc-20160816;
        b=rH1MVxdHRo8SIatqcZ3EAOLd3UeVNvEfpgT3w0PQpVq/Pxv3r2UHWi0Vjz0lqMxbyL
         /E1bRXsQvuHNOuqvnNze8IYGDV3iASSrmN18cf1fku75ZB3duHe0hlVBm7egmKgNrXuh
         F6XQQV6zcl+6dq84JcRr2/ECONPjF4xyimtAoyq7Q+tTaEqKpLZM+AoNgKAtF6fAz8lU
         n1DlEZ5zPM6mpGd70bWAvsBlhq9s5vWwU6x87E2YYIcewijsoM9d6S38SELagGtcrDFn
         FtPlgWLU4KtNp9UL7mVtILFJZZ4PYWfLQgNKFncKRR43qVzlLybRccC1b/5TtR3Zy1TQ
         cSHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DI3r9M0XFyNCxYz3xWT08xkeKoTdrf3clouM/z6nQOI=;
        b=NjEbYaRdt01Gnv3NaZnGICOD0w3N52cDxuzoR5VlRd/iGim4j6fDgm0MFT064HmLPm
         rXGSqKISbwipxsuenMxbTYGfOzrwgeQCoiWoKcoJUlgG9lloMYW16Gg+ipywbDmwAJvF
         tjkrn4mGxTG8hCiifoJWbgF2bR2kR2mt2zcn9Jwxh4Xr//Hsol6K2eNrQo1ZL1qwi/rb
         D2U+ZelOWUnOhgEdqCd7sRPAnq+t2bCqbEl2+vrKkhHTn60UJax31bIfDC3gpIXod5wd
         fRGxfVAyyBi1Hlsz5uwUaW+joQR+iHxchMSh8rLNu8BmDHiL+aMVvoIW9vKMbKN8v2D0
         75Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oRKTlK00;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DI3r9M0XFyNCxYz3xWT08xkeKoTdrf3clouM/z6nQOI=;
        b=PIivk8Tnvu/jI+i9I6ejyy/IiJEPI2lmQHNFhLXK6jPJf00GeU6GDgL2HQKwLd0jIq
         IToM51xLFlAlCWIl1vj9Vd7JFeXMIZ8bfEE9STtsg0Cnb91WPjTEha/oXO5X9H5+SzxH
         uKf5mf2KX4Vdi1SS07zq7b+ibpLzsRS+ujvg3qMxqyn/dABGBNPN5i6VKnPhz4j9wr6F
         6S9xBbnT8mU9sV1qyfgbDhgsSEJeS9wij0/TYqO05L16nF4hQRt0UyJWzAv1CU5bwJvj
         Vrr5KlzEdgaaWXD4SiJAgo0GRczu4ququujU7dfZ2+E2vo3xM6MqBFbllXxmkabKpuUj
         7QCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DI3r9M0XFyNCxYz3xWT08xkeKoTdrf3clouM/z6nQOI=;
        b=FE0WCX9B7JWRxlV5UQw0l+YpOh9ioEmDDjyQRDcPlyhTvsrb92maSVifQ7GT85K+k0
         fQ3PX3s9bLlblbvnuGEzBAmMYis0xQGS2NhhcEggxSnCAbMbQpzHUFn50lZz6DL++eus
         AeiIcQlJxzX7XUJGBA7jGfhNHatBk4kzHvOb2yzbK+FmJ5IxC/uNxileYnwTueg3INaa
         Ph3gwh+StDbjDZQ4COMhcEB79KVDxH0LkkYi8La68JK5HUmtITCDs/U538XgDVJkrAhJ
         x54D9jk/q8ceEAfpkZuUHPd0TdnQpzYGlCH1JodGOlDbtbrn+s1jPNmH2ix1+lh6XZ2n
         r62Q==
X-Gm-Message-State: AOAM531rkUyi7AJR7F+e9tUmzrYM2IrEg9WSYw+gOtqsMCG6WbF0Lhc4
	Hjz46YAIjS/bKHe+pLZVP+8=
X-Google-Smtp-Source: ABdhPJwKXRs2i1Kxs/FwfPsmGvxhuBzVkmya45xmI6NWApOdknOs6tktzlWAALvUWGkidP0r5jOiSg==
X-Received: by 2002:a5d:5745:: with SMTP id q5mr25581579wrw.409.1628532993107;
        Mon, 09 Aug 2021 11:16:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c7c7:: with SMTP id z7ls6253912wmk.3.gmail; Mon, 09 Aug
 2021 11:16:32 -0700 (PDT)
X-Received: by 2002:a1c:46c2:: with SMTP id t185mr412518wma.107.1628532992240;
        Mon, 09 Aug 2021 11:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628532992; cv=none;
        d=google.com; s=arc-20160816;
        b=Mgzk833AqnEmR4h35HIxlQLIdK5C1m68liVaH2pGAFBbcKxfBgrH0nJ6LjS/nTeFIu
         jLT/C5WxRBiozUc1bfqhYTpqItZdjO2bq38J/8oXHI90Vw+b3AhqKHebJqVkxuvBbxYC
         7ogfNWYGzgf/jEYCszL+2R7uxtIZVJUl1B/+f5er+dQavRZHmpaXW/h9zHnSVRnV83Jl
         Ab8qLyC6THHwN9MJa6c5dZublVTvEWyxZy4/KER+EMY8dWZL/roLq5JPmMK0YCM1Cqbi
         Dro2EUahbg1jr94BIwbA8oddMnw486ST3EYnp7phgVhW7+6u9hJEJkjYx9WaCbe3cAXy
         AEHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6VbiwDcS7LINT1uLUnNtYgAA00vFfnOMefiQlwTi9YY=;
        b=TfRF9Du5FqzIwOdMXkbSGzTAjTbKQdXkolLpUO3nFu983SOywjqOUodJ7pKGEf05Gw
         TJy64eYX85bi4ZBIPEji7UXpVK0wlLY4kMD6T8d4neVsOYjlhgLl5M+Rsd8/Je4kHOrU
         hMjxxQtKcmHnaY3yhTFwqM578pL8jMOc9Elj5kmctgI9LzSugHPad6KFUHoTv+GJvzSV
         gf5Y0aVMitCavY9sjIOG/9yscHqR9R4mxcbaEI+YkrzFoMIhj8xoOHuFCx/HKqnEXCe4
         p21dIeb2NP+erXeT3Lmgh0T/HgT328H7SiH8paeuuZS7OKf4b7WnC2Gz3/jMZg7vdwXg
         SoRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oRKTlK00;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id z70si15316wmc.0.2021.08.09.11.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 11:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id g30so3561389lfv.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 11:16:32 -0700 (PDT)
X-Received: by 2002:a05:6512:3041:: with SMTP id b1mr18140580lfb.122.1628532991192;
 Mon, 09 Aug 2021 11:16:31 -0700 (PDT)
MIME-Version: 1.0
References: <CACku6g7x2bsY-nN0eyjhPtWNkXGSQ9csb7i7HgugF_TL8BAshQ@mail.gmail.com>
 <CAENS6EsBYGbjp7jbtG=8o6nQHBY35FJMvsaAtdubXf4F5BWZAQ@mail.gmail.com>
 <20210730171554.r5uvfkwzylrq6sw3@google.com> <CACku6g7Q_k2mP351++qhGqwzdEQxozr8bi+50hp1VSHXKktBzg@mail.gmail.com>
 <eaa6a67a-b818-d451-3f13-84006c0ab934@cl.cam.ac.uk>
In-Reply-To: <eaa6a67a-b818-d451-3f13-84006c0ab934@cl.cam.ac.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Aug 2021 11:16:19 -0700
Message-ID: <CAKwvOdnB8UtfBPwgWS0UzicC6tG+MOVyAZQt=ZNcb-etPyZNKg@mail.gmail.com>
Subject: Re: [llvm-dev] Inline function not eventually inlined is removed
To: David Chisnall <David.Chisnall@cl.cam.ac.uk>
Cc: llvm-dev@lists.llvm.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oRKTlK00;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Wed, Aug 4, 2021 at 4:46 AM David Chisnall via llvm-dev
<llvm-dev@lists.llvm.org> wrote:
>
>
> On 02/08/2021 18:05, Mariusz Sikora via llvm-dev wrote:
>  > I'm just trying to understand is this _Code_ undefined behavior or
> this is a bug in LLVM? Because why LLVM is removing functions without
> inlining it? For example GCC is not removing function event after
> inlining it.
>
> C++ `inline` means 'the definition is provided in line with the
> declaration, the compiler and linker are responsible for ensuring that
> exactly one definition exists in the final binary'
>
> C `inline` means 'this definition is provided in line with a declaration
> and may be used by the compiler in preference to one that a linker finds'
>
> C `inline extern` means 'a definition of this may appear in line with
> the declaration but please provide a canonical definition here for when
> the compiler decides not to emit it'
>
> C `inline static` means 'a definition exists here inline and it is not
> an error if this is not used.  If it is, then it is private to this
> compilation unit and it is not an error for the same static function to
> exist in multiple compilation units'.
>
> *None* of these say anything about whether the compiler is required to
> inline the function, but they all specify what must happen to the
> original definition:
>
>   - C++ `inline`: Must exist in at least one compilation unit and the
> linker must discard duplicates.
>   - C `inline`: Must be eliminated
>   - C `inline extern`: must be emitted, the linker should error if two
> definitions of the same inline extern function exist in different
> compilation units.

Also, note that the meaning of `extern inline` changed between C90 and
C99; it's one of the few semantic changes that are drastic changes
that I know of between C standard revisions.  You can get the previous
behavior by either compiling with -std=c89/c90/gnu89, -fgnu89-inline,
or using __attribute__((gnu_inline)) on function definitions.  The
behavior of the prior standard and gnu_inline was to NOT emit any
symbol; a definition was provided only for the purposes of inline
substitution.

We've actually used this in the Linux kernel to provide two
definitions of a function; one in C for inlining, one in assembler to
avoid stack protectors and other compiler instrumentation (such as
coverage and sanitizers), though now we have better constructs for
describing these intents.

>   - C `inline static`: It must be emitted if references to it exist in
> the object code but it may be eliminated if it is unused (including if
> all uses of it are inlined).
>
> Clang is generating IR that makes LLVM do exactly what the language
> semantics require: eliminate the definition.
>
> The `inline` keyword is probably the most confusingly named keyword in
> C/C++, though `static` comes close.  The general rule of thumb for C is:
>
>   - If you think you mean `inline` you probably mean `inline static`.
>   - If you're really sure you mean `inline`, you almost certainly mean
> `__attribute__((always_inline))` or `__forceinline` (depending on
> whether you're writing GNU or Microsoft-flavoured C)

It's also useful to note that always (in always_inline) doesn't mean
always. The machinery handling inline substitution can still bail. Use
-Rpass-missed=inline (or maybe -Rpass-missed=always-inline) to learn
*why*.

>   - If you're not sure but think you might mean `inline`, you really
> mean to be writing C++ and not C.
>
> David

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnB8UtfBPwgWS0UzicC6tG%2BMOVyAZQt%3DZNcb-etPyZNKg%40mail.gmail.com.
