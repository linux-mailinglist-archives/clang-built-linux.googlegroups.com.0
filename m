Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB45KTH3AKGQE24YX2WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4732B1DCADD
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 12:18:28 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id q18sf2937532ota.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 03:18:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590056307; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wh33zpyoa+VR6yltsbtLmsuuA5/1uMfswS6Ez4gRQJWK/Q2ScRIgt9Y711Q8FWwDLq
         77cdFFKG0HdFs/LsJddeTHVTKFB3/rhbMTMJ6Ub/hoc1+EDK0d7BEAGtovaZ0LOq89mA
         YuEOVlMjpvbJPRNhkLxcWewvVPe52QQveqRHfq+FBsgSyhBjSvqMXiQfj5nco07ud4XP
         JykDI7S0ZV0xV9Xy377lYiNKLMiRbqB8t+3uEtSuyWbVFK1XM+vJL2qnE12nyVtXxAQp
         Y3o3L7+qfd5XNEbFOd51CZrQ/rTisozKlTIX0dq4pwVfFAxKn7a8EdxTvIQwkaNAVFnu
         rZ2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/4MgqApoG8xDPlysxi3FCpIHHuUjj76W1zdUnuqqfWw=;
        b=Vd+4GqaY5y7mPmV9oPUAeuozXt3PUhYtPZmPwbu5iAcyYuN5IDReJuS1rWt7t2XlMp
         v337eyoZ8sgWYXClnLTdVab4XrPUjLIzMqEgAuzNJ7d1oKgpBwwjpipfISczoV1LzJoS
         SIm4rMpBdtNrPi721NLtwWZ4wOJYDz56gUVS1g4/U0HXQQro5aECTn3/rT6b2xePBrcZ
         sRZkKjfYK+NO53YYwYRUNNx09wJsa3Tobs1g2bAP04WZSvCR64Bs10WXEodDg5JL2dlv
         d6RPEPdkF+hBWqu37hfo/jKkNmOU1U3pID5H9ABqYeh2a1mIZtU++IIh4iOwvX6tM1wx
         Ay7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g3fbfIYD;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/4MgqApoG8xDPlysxi3FCpIHHuUjj76W1zdUnuqqfWw=;
        b=MLmOBsuNI/PE6eXeRGlI6KPbcG21UuplUnv1Lzu1Ql4r/5scaZkdUGSz4gCdVNKluU
         rwJlwSCoPXa4ZodZq3nU3j6V2iLgp37ZqEipXrs+4q4jWE/9tetuInBtMJpXLHHGHOe3
         Nef07iKwq0Lf1s9pR7Dk3MYBs9IG000CbeCwu6VPThLvFEouC9OTOQlbjBS/6+zhsMpO
         nCl6HfGLrlku9RNDHqCHhYT7FyOyq6LGaZVQDf44FQBCIfClZvFF/cPPjI0TEzlOjW+0
         Z9tIrDL2KLjgw5GlRvG8fbQj4zDm8qgSxNyQFtSwTPqi3eKs91VQ+oWhQPEJFdfLISSe
         MN5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/4MgqApoG8xDPlysxi3FCpIHHuUjj76W1zdUnuqqfWw=;
        b=twMygZqperWCyMzAKu2FVS4V/ffkBOlpp0xd7FWHFqcyRwqjxdemH0GpH30zUjvQtU
         6sKDhhNTSd2GwgBOs2irChIm1ZYkcCDnTMpRPigZC/+Q9mU0srDjM15sRZZk2Yo7GGqc
         CYvkC7LR0uQr1NXYgtQcsp0lWWieAz0Jx2pPtmY+Oh0on5Wxz12FumbDAhBijCMmYhe+
         jsgdIio8Qy2UuNzlJmaGDb0ftnwfOrQPhyfY+gEZ4NGNqEDwXoKJsYWFOVr4Igi+AuH2
         aiM3mOtV7CNeFruOiG1F1iygn7StOX6HUAU+hfMJumBveQVt3O9heG4pEDhD4p+ToJ9K
         57mg==
X-Gm-Message-State: AOAM533KqRnfpFNzDwMQrnFmRTlxt/EFCQi7iAwJ6CGZwXID1As6Iz/3
	oZbWIJSY9af9InO6NKNXEJQ=
X-Google-Smtp-Source: ABdhPJy5dpPNAc5PUSJ6fxO3hi2EHmw6TYYplI0TFzJgZJ94t+52UlXxBQeVp/QmGjmC7s1vNHeL+A==
X-Received: by 2002:aca:aa4e:: with SMTP id t75mr6189167oie.18.1590056307187;
        Thu, 21 May 2020 03:18:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19af:: with SMTP id k44ls158688otk.4.gmail; Thu, 21 May
 2020 03:18:26 -0700 (PDT)
X-Received: by 2002:a05:6830:1e8b:: with SMTP id n11mr3335366otr.52.1590056306807;
        Thu, 21 May 2020 03:18:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590056306; cv=none;
        d=google.com; s=arc-20160816;
        b=thX6lQMA51FOHUkO//Spl+T9I4ltrUxjft7AbgpugDc1xSh9TpqEWo5k0Oy/g+OXSD
         wXdSBwmXaVQRJhTx65jc2J38xiGHb0EH1B+QFQgTzWDgdeuba5buooNiaYSedTTi9QW1
         Xvsb3I6cqtv1Xi8f1d0NOJzaaKPneDW/gTgbiCj++lmm+Ve26lcmcbAfpR4j/PEaT42P
         Q2YOYE/j2sequWLA5okRYoLyDFzmJffhqdSFTVgrBbuBaUl4fNjMKCEI8+LDffWrgSaj
         h1RuNTP4yirtImL0v1FFP80Sb/X08B8wiqPiCz330wvGYRH3NtamSMQRJm5nUseX0UiY
         dfdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=izKU/C7ocKPbE+164Qwv+Ka88gTqLAT8wcuVjIle3sU=;
        b=jrAObOOJp3XpCb3W0Cui+sZl4unh2tJ0elnQeGakGANM4h5jHLVyh25vgnYKwxjywD
         A5QfLAnIr8n/QWXiPJuXQCEJe4E0QRnENzMSAWIISNJZ+kgoEYtZcj1Ayzf06NoLNjIg
         jczNq8juZP/STWdiSm41XiZPA5bYDgZfGv+aXgsn/LOShkdlDSROw53jHr5tEunF+VKc
         33dSNMcOfdf+x/vVwOrbGY9G+R8+Uw6Dm6bEl/NTpha9NQgf3gvVr99B04n5iPl+KFvg
         lRtrKzrHCM4SBomp/gPrhbo62ZFV2yqTtvK7AUXFQfRAddhcTPSiRnYe8T3/gHT7g4gk
         7DyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g3fbfIYD;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id u15si461448otq.2.2020.05.21.03.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 03:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-oo1-xc42.google.com with SMTP id p67so1331892ooa.11
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 03:18:26 -0700 (PDT)
X-Received: by 2002:a4a:6241:: with SMTP id y1mr4526981oog.14.1590056306345;
 Thu, 21 May 2020 03:18:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200515150338.190344-1-elver@google.com> <20200515150338.190344-9-elver@google.com>
 <CANpmjNNdBrO=dJ1gL+y0w2zBFdB7G1E9g4uk7oDDEt_X9FaRVA@mail.gmail.com>
In-Reply-To: <CANpmjNNdBrO=dJ1gL+y0w2zBFdB7G1E9g4uk7oDDEt_X9FaRVA@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 12:18:14 +0200
Message-ID: <CANpmjNPLVMTSUAARL94Pug21ab4+zNikO1HYN2fVO3LfM4aMuQ@mail.gmail.com>
Subject: Re: [PATCH -tip 08/10] READ_ONCE, WRITE_ONCE: Remove data_race() wrapping
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g3fbfIYD;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c42 as
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

On Thu, 21 May 2020 at 11:47, Marco Elver <elver@google.com> wrote:
>
> On Fri, 15 May 2020 at 17:04, Marco Elver <elver@google.com> wrote:
> >
> > The volatile access no longer needs to be wrapped in data_race(),
> > because we require compilers that emit instrumentation distinguishing
> > volatile accesses.
> >
> > Signed-off-by: Marco Elver <elver@google.com>
> > ---
> >  include/linux/compiler.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > index 17c98b215572..fce56402c082 100644
> > --- a/include/linux/compiler.h
> > +++ b/include/linux/compiler.h
> > @@ -229,7 +229,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> >  #define __READ_ONCE_SCALAR(x)                                          \
> >  ({                                                                     \
> >         typeof(x) *__xp = &(x);                                         \
> > -       __unqual_scalar_typeof(x) __x = data_race(__READ_ONCE(*__xp));  \
> > +       __unqual_scalar_typeof(x) __x = __READ_ONCE(*__xp);             \
> >         kcsan_check_atomic_read(__xp, sizeof(*__xp));                   \
>
> Some self-review: We don't need kcsan_check_atomic anymore, and this
> should be removed.
>
> I'll send v2 to address this (together with fix to data_race()
> removing nested statement expressions).

The other thing here is that we no longer require __xp, and can just
pass x into __READ_ONCE.

> >         smp_read_barrier_depends();                                     \
> >         (typeof(x))__x;                                                 \
> > @@ -250,7 +250,7 @@ do {                                                                        \
> >  do {                                                                   \
> >         typeof(x) *__xp = &(x);                                         \
> >         kcsan_check_atomic_write(__xp, sizeof(*__xp));                  \
>
> Same.

__xp can also be removed.

Note that this effectively aliases __WRITE_ONCE_SCALAR to
__WRITE_ONCE. To keep the API consistent with READ_ONCE, I assume we
want to keep __WRITE_ONCE_SCALAR, in case it is meant to change in
future?

> > -       data_race(({ __WRITE_ONCE(*__xp, val); 0; }));                  \
> > +       __WRITE_ONCE(*__xp, val);                                       \
> >  } while (0)
> >
> >  #define WRITE_ONCE(x, val)                                             \
> > --
> > 2.26.2.761.g0e0b3e54be-goog
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPLVMTSUAARL94Pug21ab4%2BzNikO1HYN2fVO3LfM4aMuQ%40mail.gmail.com.
