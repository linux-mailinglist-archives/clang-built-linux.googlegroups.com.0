Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6HH3XUQKGQE7AKZOOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A65872125
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 22:54:17 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 65sf22674456plf.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 13:54:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563915256; cv=pass;
        d=google.com; s=arc-20160816;
        b=B5An72UvfXJOHYENFKX2FV9qWy3Vd3CdRgI5nMuSgmRFp9WZm3bFEPhyt2DAoR2eaJ
         qkWh1YQ+zYN/5LIhlapXdQOqN7NSv0X/KcyAt7MgPNTrd6Gr8cG48GozAm0GF1wQvDFE
         HVyE/ay+LZiv4nI1E1D3KyZ62c8YZX7GK+hUnN+o2WnVevIYXwezj7zYbohMHEjrWmSX
         LtvzqE1oMq4ITxsDICptJG1Jnfe0lZ2vcpdwGC7MncFxuMqsbEeXptlFauWI5hHN+CIu
         IyDSNm4FEDPgit1lTXsqCTFH1NkBbhvUyENIl9NK1bp3nK+ZXNVoPiAxzI64oJE1zAIM
         tMlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SnwUxHmC1I+hCAp1Ygn8Aox4WSGWh4YHwbAr52aHa8E=;
        b=Hntj4MsDVHezeiUgwhUakH3sgQ6Q5kubfymh9xmJ0oihaOCe6EiGSMLQkVUO9spcYV
         AhxD9P1D6TE8ZLX7vei+XJbhfntsxY7TMvFHb89WrOZ9MoXf9SlkL2Ll8nL5jWe784TD
         x1Yx4SIc/pmaZYHczP7aDAXAVAnwdqsVge4yJPQJda8GDCIQ/8kcowsIF7ILiWWvxff6
         T2ls1ofekBACC6CNrHdCx7Mqzm9FmUvQkl6gUlbyFNkGLFuTXRJTibCiEpBauP/dwkXq
         uODGhXwxn9B5lVXKnERUIiikSXrvhJFNhT2/2TM6xbK4UyG6DIrlGTBl/gyrvL40k/dY
         NXFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iuLvEGih;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnwUxHmC1I+hCAp1Ygn8Aox4WSGWh4YHwbAr52aHa8E=;
        b=GWojNXPrhHxi8/MeM9YxXY7LajwvdKXGImVR1DT2KT1ob3ASqCBiK/6Yoq2uWRU5dT
         hXUNit+G5N3cIBzwm5XAec5KwgXKjIZXYX5H3TifiSboypoH5VykctNbhhC3WMskU9cI
         L0wLx5Vcwcicrqtg46S6I2PT3YVjblyS8afpWOhgRIpplKzocHkvRThWTsPW5zFsRKIi
         dqucbVZiXl2PiTJdpiUqDm8SGGKdxj/zhZFnf80z9hglG/ZsCcFVXLlXoeV8oYEE7jD9
         EJ8K5575IDW/PsXmbfDCZBbGmAsDxEFviaN6rvFTXSmC/Qaa6g6y9Nrg8uHYDf4P9yQ9
         32CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnwUxHmC1I+hCAp1Ygn8Aox4WSGWh4YHwbAr52aHa8E=;
        b=PoGnkc165WrQEQyBECaWpp93RG2p4ASb9hfkyEabo+VyJ5rsTWL/496mXpnCvHuhNv
         Na1iVLy/sb2l9JhvxpO4M67BXn6LkZU64fECBpmZKxCCzFjITXR9FZhgEXEv1aIAHDOA
         Ghdz2yBz8hmb7Lo9OrG2hP2RPbIXUMBPFUB/p90wBv8xqaR7kx5sZVig03PzSgJVz2Jb
         ewpQ+ZrWqHGBFD6IYNb/h2uTmX9T3ZSH0fhwhoWNgChNF1n3464NTF8mY7zuQpMYe03m
         gll7aF0AUYW9ujzf3RnXRThZmD8JMu9HnwMQkfYvh64R5Z+ve14HSvLSjR53px8GFRye
         qBAg==
X-Gm-Message-State: APjAAAVVbhIW5W6oPekjRlXDg+1+fJF72KnGzJfES5gRs1n+hoNN/m4w
	92A/ZKbu4wz5v02aV8S/beU=
X-Google-Smtp-Source: APXvYqy3Rf2Wj0dTsQhYvGOAjkJENYguOd6/IvL2sSu08RBx4OMENWsbRaXhqTDIJwRX8OnaIjlRYQ==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id h1mr84769368pjs.119.1563915256105;
        Tue, 23 Jul 2019 13:54:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:614e:: with SMTP id o14ls7643498pgv.7.gmail; Tue, 23 Jul
 2019 13:54:15 -0700 (PDT)
X-Received: by 2002:a63:724f:: with SMTP id c15mr80005301pgn.257.1563915255747;
        Tue, 23 Jul 2019 13:54:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563915255; cv=none;
        d=google.com; s=arc-20160816;
        b=bj5zCwVXUQ8pfpJKrJWZtVv8HEyR/xQdzSHtnSsj/lWJ81kTomXwYYc3/Aj0NkKVKG
         UrGpClRfDuU+o26KzKJ1sTeAZAsolKNC9sXPlJl1182m4T+TI781O4XWyTs/gYIliLbr
         JyghCdlMb355HTyfuLCCdaBHCVYkGEz+rz9sunI+Lz1juFfprxQrAB5Ell/FiR3pj6MH
         VpUjv9g8avn3KM9T3iyH26AVeNdcpx44F/r/VgiI+A0qjPJioqtqmekmS1fOim1a8VXx
         MlITomFSnfm7rJ4Fg4Ir7dZ6gStfK/+A2V4M4y3UMTftRmEnsjw0UQilFf8L89rLQd8d
         WkUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DKCUv/Cx+CQnHVa5KxeusznvKIlpXN7+WLMqjunL/oE=;
        b=WhhHPzehCzJcXqZJLPwG8zWlHkYWY7tumgwKuPdCgR1zsMg30RqDyidWb5ZZ3BUWLd
         yvg47eXJvGWoGilhQTJj/8qvzgbGqg5/G45J2wQP6yLkcxl+BALp4G7CjikiYcAWTCEk
         /B+/h+xq5YL8HXZCjS60Cth1hig+stgNTFqhggQoG04zPERh9xAdpl0JMx7G1ISexlaz
         43jEAcuHf2/rdNNA4B1EDlW3Eo7HGKLzUr3ILhgCy2T57aRdefOkhwY+Ev3jeqWkw3mU
         OE8mZI+F6lOuVXrfJINsw/wwJIqd6PkRUlvMUQ++U/sroMHKeUk/X4DJRRPgrSSNNs2z
         7k/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iuLvEGih;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id fr4si2017596pjb.1.2019.07.23.13.54.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 13:54:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id c73so19722601pfb.13
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 13:54:15 -0700 (PDT)
X-Received: by 2002:a65:5687:: with SMTP id v7mr79613610pgs.263.1563915254944;
 Tue, 23 Jul 2019 13:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190719113638.4189771-1-arnd@arndb.de> <20190723105046.GD3402@hirez.programming.kicks-ass.net>
 <CAK8P3a3_sRmHVsEh=+83zR_Q3+Bh9fd+-iiCxt4PU4gkx0HZ7Q@mail.gmail.com> <20190723202159.GA79273@archlinux-threadripper>
In-Reply-To: <20190723202159.GA79273@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Jul 2019 13:54:03 -0700
Message-ID: <CAKwvOdnbDFkDhCz3VMM_A8D7VZQH5FubJpS0OTHBJJdS-WKPww@mail.gmail.com>
Subject: Re: [PATCH] [v2] waitqueue: shut up clang -Wuninitialized warnings
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iuLvEGih;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Tue, Jul 23, 2019 at 1:22 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Jul 23, 2019 at 01:03:05PM +0200, Arnd Bergmann wrote:
> > On Tue, Jul 23, 2019 at 12:50 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > > On Fri, Jul 19, 2019 at 01:36:00PM +0200, Arnd Bergmann wrote:
> > > > --- a/include/linux/wait.h
> > > > +++ b/include/linux/wait.h
> > > > @@ -70,8 +70,17 @@ extern void __init_waitqueue_head(struct wait_queue_head *wq_head, const char *n
> > > >  #ifdef CONFIG_LOCKDEP
> > > >  # define __WAIT_QUEUE_HEAD_INIT_ONSTACK(name) \
> > > >       ({ init_waitqueue_head(&name); name; })
> > > > -# define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
> > > > +# if defined(__clang__) && __clang_major__ <= 9
> > > > +/* work around https://bugs.llvm.org/show_bug.cgi?id=42604 */
> > > > +#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name)                                      \
> > > > +     _Pragma("clang diagnostic push")                                        \
> > > > +     _Pragma("clang diagnostic ignored \"-Wuninitialized\"")                 \
> > > > +     struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)      \
> > > > +     _Pragma("clang diagnostic pop")
> > > > +# else
> > > > +#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
> > > >       struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
> > > > +# endif
> > >
> > > While this is indeed much better than before; do we really want to do
> > > this? That is, since clang-9 release will not need this, we're basically
> > > doing the above for pre-release compilers only.
> >
> > Kernelci currently builds arch/arm and arch/arm64 kernels with clang-8,
> > and probably won't change to clang-9 until after that is released,
> > presumably in September.
> >
> > Anyone doing x86 builds would use a clang-9 snapshot today
> > because of the asm-goto support, but so far the fix has not
> > been merged there either. I think the chances of it getting
> > fixed before the release are fairly good, but I don't know how
> > long it will actually take.
> >
> >        Arnd
>
> Furthermore, while x86 will only be supported by clang-9 and up, there
> are other architectures/configurations that work with earlier versions
> that will never see that fix. There are a few people that still use
> clang-7 for example.
>
> In an ideal world, everyone should be using the latest version of clang
> because of all of the fixes and improvements that are going into that
> latest version but the same can be said of any piece of software. I am
> not sure that it is fair to force someone to upgrade when it works for
> them. Not everyone runs Ubuntu/Debian to get access to apt.llvm.org
> builds or wants to add random repositories to their list or wants to
> build clang from source.
>
> I suppose it comes down to policy: if we don't want to support versions
> of LLVM before 9.x then we should just break the build when it is
> detected but Nick has spoken out against that and I think that he has a
> fair point.
>
> https://lore.kernel.org/lkml/CAKwvOdnzrMOCo4RRsfcR=K5ELWU8obgMqtOGZnx_avLrArjpRQ@mail.gmail.com/

Note that pre-clang-9 can be used for LTS x86_64; I don't think
CONFIG_JUMP_LABEL was made mandatory for x86 until 4.20 release, IIRC.
There's only a small window of non LTS kernels and only for x86 where
clang-9+ is really necessary.

Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnbDFkDhCz3VMM_A8D7VZQH5FubJpS0OTHBJJdS-WKPww%40mail.gmail.com.
