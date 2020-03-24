Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBRXU5DZQKGQEYHUORDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0961916DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:50:15 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id x22sf1236157lfq.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:50:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585068614; cv=pass;
        d=google.com; s=arc-20160816;
        b=MjA2n9Mo5OAl7sknfOb7M7y0Qm0oJ4TokYwm+q93nNa1yTWHjBkjI9fDDedzoW6rZ1
         raWksdGPV/Rv4KI9UfojAtSH6O6BPRbEbOd0lY5UHymhuwXTe1zInvG7gLAP1iw7JENz
         YKlQXzkfpMttlPfNP/UccI2sVGA7EoryzlL1y8zHUwGUOlLNjcb0feBAWaCOO3k8K71C
         WLLBUwpbc98qY1zSTkjXVRt9f4ZmuhzrPhsx4kwNhIlyef3dDcYkC2DlmXvNxB9E6hUu
         1uQHBRZJNACfeEjkZ9OzTg0boBM/4V493OCYckcapuPGNxKP4Lv5UzohCIbZmxlKkjar
         DIBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=dKWeDYVWQIIL1+b5KAMsh4uhrR/UjgE+EoWs3cEJfL4=;
        b=luV8MrowLxyJefQwnjgkQAXJ8L/EXR2Q9pblOcLL5HvoDj5e1Kz7DoelWdGAUc8W6E
         1iULsgYrEdnLSGOfONrMdGF6q60S99ZeULnFd37p2AxBBWAoyr8c5dWt+NjH/TJutgG5
         Pe13tmjfjPbPCu/s1Vh4ZgASyVenZkwIwDEJhSJANfyL8+IyQOfgx+iREYES4+wKbMN+
         tQh34hdeyyZPD2ADyUYNu0dMij1RA7Mu3IKywwUy2rAQ6nDUReTDfaBFCOJL3e713AiN
         mxolTZprrVNhzHNpoPydS80RTeZ/EVtTrTPjST9qRduZWH7Ic43bGXXBeDwLwmAH5upm
         bLNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=FCr6ibYs;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dKWeDYVWQIIL1+b5KAMsh4uhrR/UjgE+EoWs3cEJfL4=;
        b=WlgIiAw7ZnOjPLelXzY4o0c2fFqjV6f8iMIs91WkGFG3Rglei1alLlaAINwK2cZl9n
         xRbHxCCAGvhvGLrBsiRb/lg1e7NYq1pkksV5ueWYMp+Mz+CIeqklegCg4yBITIh4pXzF
         TEZlaakSYY+4bDnaxBlGaemLT8l7fLhFjCNyaA3/1OnDMn6DjFLJn15tm5rxzZHEEMYV
         Q57/KiPRlLGC7OFugDysBssoe/b2xHk7jgsXSD5mNT/33Ys39Fo4Com7gpjqxPzriTaT
         f6B6zSZ9jwrWvrEhbhSdi4HQAmI0Nb7gXMnyUnZuqOiCqQDNUttvexug4XElL4CSDiqM
         6/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dKWeDYVWQIIL1+b5KAMsh4uhrR/UjgE+EoWs3cEJfL4=;
        b=FK8C5/PJhIvEO2m10svdj3Jd/QrrK6pKB26G/m1zzYkImLHhY6TWaaSt33vqPP0dli
         1pdHEWWIacSAMCoXjE8yaVcA9Yb45HypFJRWx8OqR1JTu/xE8iwwXT+q1VBLKpg5u8Dt
         MLfqm3OfsCJmGvG7u7rPWSH35yaHeE9gZsfdq5TAYkJlg5TsgQo309svgn2CdXh2VYPB
         iqfxb/coSCjLVq9KRwvKY1OmUDSNLdFouueaDx4BdCBQz4aXrixk3nSosHrZW1vPQRsV
         XwZaJVrh2IHqDo57mZAOxpin/+xuZwCQXyxRUEZ7TlE1St8/2Mq5KYPXQ4h9eZ8q0NO3
         2VOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0TKnvGBI2M6YlNuNhfFuQ/euNYN5vXTaPubtIQtOclp8rrg4YJ
	+lBbX3BvonY1eCYGar9kCFI=
X-Google-Smtp-Source: ADFU+vvP4QSZzgiAg3rBNv8PPOsR+9Rb6n4PMO0zOQaKLlZ83ggrbyz3z2d6mPMWg1pJQ3xkQoLzxQ==
X-Received: by 2002:a05:6512:31d3:: with SMTP id j19mr17293274lfe.178.1585068614587;
        Tue, 24 Mar 2020 09:50:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls2680629lfe.3.gmail; Tue, 24
 Mar 2020 09:50:13 -0700 (PDT)
X-Received: by 2002:ac2:4316:: with SMTP id l22mr17253218lfh.150.1585068613812;
        Tue, 24 Mar 2020 09:50:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585068613; cv=none;
        d=google.com; s=arc-20160816;
        b=OSTIRhfb9izj3TYa0m0GHQHAQJdIxeujNrRgXA/AsAAm9FIRnOwry1VSPjmOIdXLU+
         KcefoCoxwRrXte9gss995C+XtspkwB6tQbx5gWRaaD+yuGYzB9QO+irQlG6VxPUtNjs/
         QLbs9YI3NPWFVAcGNfkW8rnjmcP/rToCWbk9zp2ReTet5+xscOo/m8RA5LikHTsuT+LN
         DFiI6HWKh65iDZ7zD1psMOA1Z+XZvbr8LNAVIPjojHC7QNs3RJc5lZPO9XIn0Y8NRzBe
         31jleeI/8UH1HalcMPP/qCTSxjUKZbsOVLrM2+UP+ird1ja5FNVSNsBCVhLaETLh0xiX
         OKsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vzlhu4gnVzn2hRm91aI4t+rV9ACuQRWBszKf90/7A6s=;
        b=sSCoZUuHL9htyBLC1+Zs01WP7YPy6JDyxzq/d5vpvm33rosU8E/b44m4GA11Gms+JT
         G5Lxb4lapxfK4En3yGpNZVrEmgGhzVI+XXYg5W7r4gtYNV9WZIUkk5sSRdhd/V0ggSmS
         DTmWpVd3KawqHE+Lt+Hqr262oIU3fJ2PkQ6oqg9X9VaPDS83+W5kUNs+zlqtvq/ShWqO
         lkiy7KXdnBSY9u/6rYXu27JTAMimF5Q50dG2J/mJyN3nobSRl+sKdYNMwgkqxBeZxDjv
         iTbbbl64kJ1ZZF1Wh12pt/C6IWBCl7Ej6cz3e4+Vh1maP1tYkj7yAmmqbsm7oQSYOPq2
         Hv6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=FCr6ibYs;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id c15si878634ljn.3.2020.03.24.09.50.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id r24so19418203ljd.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 09:50:13 -0700 (PDT)
X-Received: by 2002:a05:651c:200c:: with SMTP id s12mr8601644ljo.30.1585068612647;
        Tue, 24 Mar 2020 09:50:12 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id b198sm3826952lfg.11.2020.03.24.09.50.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:50:11 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id n17so9011779lji.8
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 09:50:11 -0700 (PDT)
X-Received: by 2002:a2e:b4cb:: with SMTP id r11mr3506571ljm.201.1585068611234;
 Tue, 24 Mar 2020 09:50:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
 <20200320101455.GB20696@hirez.programming.kicks-ass.net> <CAKwvOd=edOBdTL=FcmXYuN8crykrEoJbfdVy4CmKL7ETj_TpnQ@mail.gmail.com>
 <20200323212538.GN2452@worktop.programming.kicks-ass.net> <CAKwvOdm1fPpdwoEprcvp=yKWWWP752eXj7zYnJJZ8TzYsx+M3Q@mail.gmail.com>
 <20200324131338.GG20713@hirez.programming.kicks-ass.net>
In-Reply-To: <20200324131338.GG20713@hirez.programming.kicks-ass.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 24 Mar 2020 09:49:55 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgwSWe4MS-4t+PdUH-sQ2ix0_xZAc3UjSZ=P10rQZcmPw@mail.gmail.com>
Message-ID: <CAHk-=wgwSWe4MS-4t+PdUH-sQ2ix0_xZAc3UjSZ=P10rQZcmPw@mail.gmail.com>
Subject: Re: call to memset() with UACCESS enabled
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	"H. Peter Anvin" <hpa@zytor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=FCr6ibYs;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Mar 24, 2020 at 6:13 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> Let's add them to the Cc here. Linus, HPA, clang is 'optimizing' some
> code inside user_access_begin() / user_access_end(), namely it replaces
> the two 0 assignments in sas_ss_reset() with a single call to memset().

Augh. I remember that issue having come up before. Or something very
similar to it.

I still hesitate to add memset() to the whitelist, for that whole KASAN reason.

It's completely insane to replace two stores with a memset call, so
I'd be inclined to say "clang is doing the WrongThing(tm) here". But
can we perhaps work around it with some hack?

In particular, how about just moving the SS_AUTODISARM code out of
that macro entirely?

In fact, that save_altstack_ex() macro is complete garbage anyway. It
can only work on x86, because the whole "put_user_ex()" thing was
x86-only. So it shouldn't exist as a generic macro in <linux/signal.h>
in the first place.

And it has exactly two uses, both of which are in arch/x86/kernel/signal.c.

So instead of special-casing memset(), how about just doing this:

 - move that macro to where it belongs (the only file where it's used)

 - split it into "save" and "reset" parts

 - make the "save" part happen under the user_access_begin/end() part.
It should be renamed anyway as it's turned from "ex" to "unsafe".

 - make the "reset" part happen afterwards

There are only two users of that disgusting macro anyway.

Isn't that the right thing to do?

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgwSWe4MS-4t%2BPdUH-sQ2ix0_xZAc3UjSZ%3DP10rQZcmPw%40mail.gmail.com.
