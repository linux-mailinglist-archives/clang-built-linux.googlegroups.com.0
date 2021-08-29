Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBDP6V2EQMGQETAHBKJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB7D3FAD51
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 19:08:35 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id x4-20020a50d9c4000000b003bed5199871sf5376082edj.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 10:08:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630256910; cv=pass;
        d=google.com; s=arc-20160816;
        b=QXX8Mg9Unn3UJDsediBwgRQm9bc4XI8mYZEwyOUJWh6pSZg3JIxJXF+nz6gCLs+/TL
         BLrIIHkEgJMinQFofeAfHM9f+mD6z2P0KK0sNxVIG9o25S0L0jmeIpZ4Aq2IzuIDN3em
         5K2+JQ8aT9ffrhY2sz8Q3UMy3S8iFTWc2cl9f1PSI7kaGRFmkZxWef82lLkVvKMQj6Z7
         mjhzSB7Iy6DI0XQrtFUIv3yyu3bloJNYONlNHwSD9SDEbvoBWExqxjm+oXwZXrl5gyhv
         O45vgCxjTCLYdqRfrqJGnMxwvj9vqy3KeH/jiJHUc+Yg/VjRCXYwso+sUnb7X1N2TfEQ
         p0BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hKHLatelb+mFvs9jyKumKulDrz4vhHFL4ExSsPOfRiI=;
        b=J+7rqjfud8F112xoCi9k+a6zD3TJOXqzcG8xNRhloR4sqZRpNqX9G54bce2lLHvBT+
         k/ZwsG3jl8+8tk26OfA9KkgI1lkVtsnrZhZDUslZ8jXFnvuzqsGJmRnNWTR/aH921wlu
         SER1/bIkotnSJBT/qxUoBxHZC0jUXRXyGIA0jdwiCtSR/PC5fwuyvs4csqznxiOyr62Z
         tdZW9XJAEzL5+U3N0ysuaJPuD6jXdsaB8k5govsNw30eVXL8O9ksL7CFWbi9JvG+yYJq
         dkOoaFz/2jVH6QB9NjbUf4cq6xrwLGWLPQhQhtjw68+SefHmUR5w9uNH7yR5gP+W932/
         SWCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=FHRuADfK;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hKHLatelb+mFvs9jyKumKulDrz4vhHFL4ExSsPOfRiI=;
        b=KxPy+qWNzy9W47ltkNaFkz/1QlgCW4RpsjNR7nsCKmdlI88Q8rg/2ceNNXgcxCXJzk
         prwN1MkrJ7YuHf3FL9TYVxagXcNCkyal4RgP0Cb/bnQi43dSX9aByw78h26FxCzAa97e
         R1fBQJ/SgtxpPzUUlPvVb84fgFROrQ9gp7Mhep8ixVt4VnYNOIwp5rfjdlYcjB9/zGhq
         gUTyhlMtPbHCobRwFpIsfGkops5WKDRm03lJ0Le3HUqtJuwYWYDoFFwFyEvpQ9Qc4V22
         eSSfwakJ1vq1OhH5/kyJMTyee7nyOxMN8I/GW4eLKe+EiFa8+fsdLbjcHomMlTJfjw1D
         BSYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hKHLatelb+mFvs9jyKumKulDrz4vhHFL4ExSsPOfRiI=;
        b=MhLVxSIfckKQ3/WxlChzoZYn30v8JIRml/IbietHD2s6bBpBtg5hEYr0LrngFDNyqm
         5pIa5Jf2UOVp52TLxC6SIRSNklWvRqn7pxVgT4hy2A92LyI+CHElb0b1T6wNfr8gqPrg
         pkv9Zq5f3UkVD8+QTFhmvPm1MrFC350TYxgtkJaU+Ja73FL7VGHkUj2S8XE4/AbojhYb
         ZaYUBsLcclT0MhGfrkRaUZ5ldtbc60AnZjdXTREvqE0ndUj1OXlgXHPuRmVbdtKZ9Vqu
         sGw77fTcVcBiy77MEJzeQGB9mMvAUWv5cmvEDPvarceJ56myhYKAV8cnhbbMQXmfJ7Mp
         dv4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vR+3BUbIYFJE0IRXkP1VgxmtFmJQvaYvg/52D0DjY1Dit9zko
	OnefRtfnIAZ1uM7iCCOE/tc=
X-Google-Smtp-Source: ABdhPJwm8JTOznlrD7lzCqOaz2QBSMhg/enCZD/vPsNJI+pZfAVkjQ7Tbo9HXxG2ampw2IF9UdVuxQ==
X-Received: by 2002:a50:e789:: with SMTP id b9mr19881105edn.101.1630256909971;
        Sun, 29 Aug 2021 10:08:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4882:: with SMTP id v2ls6769145ejq.9.gmail; Sun, 29
 Aug 2021 10:08:29 -0700 (PDT)
X-Received: by 2002:a17:906:1856:: with SMTP id w22mr20464579eje.393.1630256908975;
        Sun, 29 Aug 2021 10:08:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630256908; cv=none;
        d=google.com; s=arc-20160816;
        b=tM2UXcejUHtecGIk84klcZJ6/yS0gojKoG9MeGann7+1VkwPNUw0vUQQEhbxQcFOGP
         OPpBKrr1p5BaQz7YW27cpw+88CM/qhEoioC00rvEzYaWRvnxQivRE7nKReQFEDNhqNae
         u3Df65HKvaXGQnpHCcp/7RVQ1vdv+7dTVTHwegabzJcgoeKP+O6QOODNRkYemn+puPAi
         /D/VSp/oRrW6rQgGxxB97KNm0tu1uQaBfz4/c4INuxKasX/fP8P0wx6oz7C/+HkvQZLM
         ZWCYNj5QN7ZQ6OWK44pZanhjCvTB74mJsL68FJh1MF8UbLZCOyv0ZQqzGMd//oJDrpyC
         IhmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zVDLa4dAhB4ogAfKSWX0LylxNqUVw8O1PoFKqltpAWg=;
        b=i8AMn9xHXjmXLsYous2kMFUcgcQU+Q/YyH87EpXPjRWSEPJ7Ol9k8no+3r5JggTIjs
         WVAnxNS68e3dG7e6FoBRPE8QaRPixiW5YgJcOnX1gz8CPyVJjatSF8frp1g3TEbitjfu
         CaEmMOwD1qApvtxJn6+xMyYdYLKKtGqF9NajTRm5Z6mXPeWElSDOYTJgGSIn0v/Vbtof
         z9KTb3FLMbAdFqn1cGNH40rEUgphs6NGc5R5+vqbnTQsEEI0O6n5zDRBoBZv7A3YN/vs
         6fFh0ue/DwRF0xpkVvt76ilAgtILEGFwQHqJX+McK2j8rB9biMo9E3V/FrfroVRwaU2L
         uVig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=FHRuADfK;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id dy22si596945edb.2.2021.08.29.10.08.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Aug 2021 10:08:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id f2so21584195ljn.1
        for <clang-built-linux@googlegroups.com>; Sun, 29 Aug 2021 10:08:28 -0700 (PDT)
X-Received: by 2002:a2e:b5b9:: with SMTP id f25mr16848705ljn.145.1630256907889;
        Sun, 29 Aug 2021 10:08:27 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id d18sm1374119ljq.110.2021.08.29.10.08.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Aug 2021 10:08:26 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id s10so1356540lfr.11
        for <clang-built-linux@googlegroups.com>; Sun, 29 Aug 2021 10:08:26 -0700 (PDT)
X-Received: by 2002:ac2:4da5:: with SMTP id h5mr14002627lfe.40.1630256905942;
 Sun, 29 Aug 2021 10:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wiNHx_GpjoWt9VMffKunZZy5MaTe3pM+cpBgE7OyyrX5Q@mail.gmail.com>
 <CAKwvOdnbiLk4N6Qqdz=RT9nsjYQv41XnXK71azYte7h0JqoohQ@mail.gmail.com>
 <37453471-1498-4C1C-8022-93697D8C2DD4@sifive.com> <9e517b5d-f0e5-240a-2e3c-5cc24eda601e@switchbackcompilers.com>
In-Reply-To: <9e517b5d-f0e5-240a-2e3c-5cc24eda601e@switchbackcompilers.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 29 Aug 2021 10:08:09 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj+BdSAGfiJO2G8QzwLbg98mzCXF95s=-5k_gLR4evdnw@mail.gmail.com>
Message-ID: <CAHk-=wj+BdSAGfiJO2G8QzwLbg98mzCXF95s=-5k_gLR4evdnw@mail.gmail.com>
Subject: Re: Nasty clang loop unrolling..
To: Philip Reames <philip@switchbackcompilers.com>
Cc: Craig Topper <craig.topper@sifive.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=FHRuADfK;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sat, Aug 28, 2021 at 6:50 PM Philip Reames
<philip@switchbackcompilers.com> wrote:
>
> Here's the IR resulting the generic implementation from lib/string.c.

[ Again, note that this isn't really a function we care about in the
kernel. It came up mainly because I wanted to make sure it wasn't a
_total_ disaster, and the kernel ends up actually generally wanting
"small and simple" code because I$ misses is often one of the more
noticeable things.

  We have _very_ few loops with big loop counts in the kernel outside
of basically just some memory copies, and most of those are
handcrafted (often handcrafted C, but asm isn't unheard of). Most of
the time, the loops are all in user space, and then user space does a
system call that does something a small handful of times,

  So things like "loop over pathname lookup" is common, but the "loop"
is often just a couple of path components.

  And code size matters, often because the L1 I$ has been flushed by
the "real work" in user space, and so the kernel often has somewhat
cold caches (except for microbenchmarks, which lie). ]

That said:

> To me, the most interesting piece of this is not that we unrolled - it is the lowering of the select (e.g. the address manipulation).

Ok, so clang *can* turn the address generation into arithmetic (and
yes, I guess "cmp+sbb" is the much more idiomatic x86 generation, not
my odd "addb+adc"). Interesting.

It probably can go either way. The data dependency chain is likely
much worse than a well-predicted branch.

So for the kernel, I suspect that the main issue is just that "one I$
line vs three I$ lines for the unrolled case".

Having looked at all the other cases where clang makes for bigger code
with loop unrolling, I'm getting the feelign that I just need to test
"-fno-unroll-loops" more.

We actually tried to use "-Os" with gcc because of the code size
issues. But it generated so much truly horribly expensive code (using
"rep movs" for small constant-sized copies, using divide instructions
because they were smaller than multiplies with reciprocals etc) that I
gave up on that.

In general, for the kernel, we tend to aim for "do all the serious
optimizations, but avoid stuff that blows up code size". Turning the
occasional constant divide (common for things like pointer differences
in C) into a reciprocal multiply is a good optimization: it makes the
code a few bytes bigger but easily much faster. But unrolling loops is
almost always a loss, because the loop counts are small, and the
overhead of the unrolling is simply bigger than the win.

                  Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwj%2BBdSAGfiJO2G8QzwLbg98mzCXF95s%3D-5k_gLR4evdnw%40mail.gmail.com.
