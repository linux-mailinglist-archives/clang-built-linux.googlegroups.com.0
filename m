Return-Path: <clang-built-linux+bncBDTI55WH24IRBZXQ3XVQKGQEJ7UVXRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFD5AE7C7
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:18:15 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id f22sf2527805uaq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:18:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568110694; cv=pass;
        d=google.com; s=arc-20160816;
        b=jWFPUzkKFUeGx9GnA/pGwPtB8urYmRkYkV5GcJECR/D/uQLjOjt5zb1ixgz88R8Kay
         6zY5DRgudnH0+D6PdkOUuxtaDzKkOIR1PAKLY/Sg/B/ZMW9xJ0UVo4kpXeS5pIRHY0D4
         p5ADjR7vPfQLYvhjj00/QWvTHmtQfxpYX6X/c0o/Epe6/6JJx3SePbjg7AlM4l0v/lp8
         n4RE0WW6mBZZB2FD8KlLu2T/MIu9RYHsbgfhK2QZeROn+tVMnNSat6PQn6IhUUbkvww1
         Y4E2XTUOkwQpFPtYEh0Fl9xPAaAWzivgjGwqtCd8tkIlzAfsfmWpcgfofCi3HNpxq6tz
         V89Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=vWftlPkVnZY59D6MjGCTo5MpJFFK78YM0emnsftAI4Q=;
        b=g06WSGI7ooyimzP7wt4X35T6vxeGPxYUxyX+bqf/8WaSZYhclD80kZiKzFtGeFg2hK
         TCejaSdKPZX1GqT0lZRbH6gH7VOsbQd8Ba+efJDXct6ebT6H4PLCRY+7MkJKhK51S7mw
         VoX5yXOBqePiFuHOD4Iq4rZRfuyd9gXllYU5dTUx+Pccn1Qq1eU95r4ZuuKB3xlusX6S
         7Cala+YVG5miRZ7NlaQqpbVnOMcFaFMeko7ngDve3dfJmyyqPJPSdjwu5dv5ECWIsf+v
         VbKreN1NNeGpVjpQDG22moHYGQhfHgz0W5/l7z9H/g4P7Ue78qN0PI+A8Yt9SDpWiOoy
         N21w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qcXNzlf0;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vWftlPkVnZY59D6MjGCTo5MpJFFK78YM0emnsftAI4Q=;
        b=nxsFj2RRf4wMUr7kE4hbq/gzB51I3yoIBCrC1RGzc5cox275bSrf9qBdw/3xyjF+PF
         OpWLQGLUBcBGkwbUQO4xBSvC4NEYQe5ccUjyBIQcLzv9dElXAzMkWcTZAIOfP9MBIeN6
         scTUK8RJXQ9LIdD4bsJfCaGArGDNBI/az8TOU7Ftt6Pj2KZMY5ezv2wb84e4dekbIu+Q
         Lvt6/6rnPU93sQuLS1oWY+LRsc0QXJ29Eg+2m/etacLqJquEZ0c6CLo0ZcXxP4xzUoEz
         5IjvQc2DArU2NLR9W+bnCrKzXsLDLPAtk9ly86ZL9TkwOXHOhuNECDSduLAbu6/YqsA8
         BOPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vWftlPkVnZY59D6MjGCTo5MpJFFK78YM0emnsftAI4Q=;
        b=fFXXwbGr+2ueQs/BGd6TqxTlgG+V9jbzHGW+awttkfYN3zQCWyK0/VjsUI0OBT8225
         f18Ozx8cmynNYWmjKk8YgK1HiscygmX9rjO30fCVgdfGbcU0a+e3PxVcDGhjeqG/O3Ok
         LIIJAKPE4sBY46jnofSzOtE+/SFcjUrZgcAmVlBcE88V9b1JC3YAnuSsIXVnT7dA8If5
         hXrP1RJXcHaKDsBtEJlPrvKjUrA2X1FOq2e9Y4Q4ZWBHMcL4d1kFEB1F7FvD8rCDt7nu
         Jb5r1tytGj8ik8ZNLOd7ZUWV/XGlCBsbtFk4JwatZhQa1/ggbu91p3fYQR1Gc3D5smqN
         YP1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUBtFINNui986qBWtLYhJYYlAUNzzSCTjXmYuJ8tr8xDPeTaKrD
	zaG7Y1/POC9+Z4BruZ8pZcA=
X-Google-Smtp-Source: APXvYqxpatTyQ6ayrsklfijEyysB78y8Rou03iyhAUGYI2xPzXJgokzq1psLGy3ybUjspwwMaujaIg==
X-Received: by 2002:a67:de13:: with SMTP id q19mr14281035vsk.102.1568110694212;
        Tue, 10 Sep 2019 03:18:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:e144:: with SMTP id y65ls259950vkg.7.gmail; Tue, 10 Sep
 2019 03:18:14 -0700 (PDT)
X-Received: by 2002:a1f:19d8:: with SMTP id 207mr10302200vkz.54.1568110693925;
        Tue, 10 Sep 2019 03:18:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568110693; cv=none;
        d=google.com; s=arc-20160816;
        b=GHahj6zn+aP/3+1u+f0aIq8Ud9ydN8/lu24aDr+kJbvB/dNa55FUhpVwZA3URnJ7vm
         EkcuZJvc1Av81ZKlgeS7MLZZ2nZVjfrFFpZapO8rRWJvN9fhO5NgRLHHyKGeuvbVzWIF
         sM98wt8PF+CP/NJ4dZP/v/J2bF4LWv0BQAV66lXZm21YUygjQlFkWKjW2DrUMlAb64Yd
         a3SR/Nvi1REgVvG7CTyc628+KLzUsEAND1k7gHHF2gRoPtZPnzbxiWSR1BMdIobHrEER
         9nNjS1PdVvOh6YWAXMxfAS+5oC2RlKbagmrpNM+5d/nkp9Be53GjQKGdkxljyE24R9LB
         HOAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=yIKQfh97GgxHjqDfeFwoaAFGiMM6pmiH8tsXc3yeVNw=;
        b=Yn+3TkbNwYD2ou/MSDhMMZ570pTTxDl/dnK5tK3NpQ3pJsa0+XmXRdYPP7DUtNzU6R
         3xyXbczF3BXwihMzKJPLRxgIrGpvDVWmomKi6deHfEzBVjD8ZKNXjbCKfr03iXsISd+U
         jwrir4iqE7eH1h1Xos34ruIxWfe20iNC8NAf3Iwae6Vf8ClMMs+UyDuj5bPhVWGmxVxM
         xQ+kujbiZV5M66D9DIHpT6tLm4bNFEknCzEp5roEgcmQdLs0N2lcHbDj4XvOs0tyOwXO
         Hf/1b1op6rDWdny3wDhHK/kZ1z0DmWX/JuXxpZA6gIa3KVKzW5YxSu/FzjOIp9hmYpPu
         33aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qcXNzlf0;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id y23si811473vsn.1.2019.09.10.03.18.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:18:13 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id x8AAHun4020205
	for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 19:17:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x8AAHun4020205
X-Nifty-SrcIP: [209.85.221.171]
Received: by mail-vk1-f171.google.com with SMTP id s72so3412927vkh.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:17:56 -0700 (PDT)
X-Received: by 2002:a1f:60c2:: with SMTP id u185mr1443841vkb.0.1568110675632;
 Tue, 10 Sep 2019 03:17:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de> <20190910092324.GI9720@e119886-lin.cambridge.arm.com>
 <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
In-Reply-To: <CAK8P3a2Vk+KSUGJyPTRuLPD=KPEAR43SZ1ofB6k+KeQi3fSERw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 10 Sep 2019 19:17:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQbjPhDqN9ZeC_qnxzMAhPdrSpG4te0HmRrnxuuM6bquw@mail.gmail.com>
Message-ID: <CAK7LNAQbjPhDqN9ZeC_qnxzMAhPdrSpG4te0HmRrnxuuM6bquw@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andrew Murray <andrew.murray@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qcXNzlf0;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.80 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Tue, Sep 10, 2019 at 6:38 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, Sep 10, 2019 at 11:23 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> >
> > >  arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
> > >  1 file changed, 8 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
> > > index a1398f2f9994..fd64dc8a235f 100644
> > > --- a/arch/arm64/include/asm/cmpxchg.h
> > > +++ b/arch/arm64/include/asm/cmpxchg.h
> > > @@ -19,7 +19,7 @@
> > >   * acquire+release for the latter.
> > >   */
> > >  #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)    \
> > > -static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)              \
> > > +static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
> >
> > This hunk isn't needed, there is no BUILD_BUG here.
>
> Right, I noticed this, but it seemed like a good idea regardless given the small
> size of the function compared with the overhead of a function call.  We clearly
> want these to be inlined all the time.


Generally speaking, this should be judged by the compiler, not by humans.
If the function size is quite small compared with the cost of function call,
the compiler will determine to inline it anyway.
(If the compiler's inlining heuristic is not good, we should fix the compiler.)

So, I personally agree with Andrew Murray.
We should use __always_inline only when we must to do so.

Masahiro Yamada



>
> Same for the others.
>
> > Alternatively is it possible to replace the BUILD_BUG's with something else?
> >
> > I think because we use BUILD_BUG at the end of a switch statement, we make
> > the assumption that size is known at compile time, for this reason we should
> > ensure the function containing the BUILD_BUG is __always_inline.
> >
> > Looking across the kernel where BUILD_BUG is used as a default in a switch
> > statment ($ git grep -B 3 BUILD_BUG\( | grep default), most instances are
> > within macros, but many are found in an __always_inline function:
> >
> > arch/x86/kvm/cpuid.h
> > mm/kasan/generic.c
> >
> > Though some are not:
> >
> > include/linux/signal.h
> > arch/arm64/include/asm/arm_dsu/pmu.h
> >
> > I wonder if there may be a latent mole ready to whack with pmu.h?
>
> Right, it can't hurt to annotate those as well. I actually have another
> fixup for linux/signal.h that I would have to revisit at some point.
> See https://bugs.llvm.org/show_bug.cgi?id=38789, I think this is
> fixed with clang-9 now, but maybe not with clang-8.
>
>       Arnd



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQbjPhDqN9ZeC_qnxzMAhPdrSpG4te0HmRrnxuuM6bquw%40mail.gmail.com.
