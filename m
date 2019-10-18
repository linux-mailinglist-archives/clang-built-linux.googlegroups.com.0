Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJGDVDWQKGQEFXIRDCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EA39FDD052
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 22:33:41 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id l25sf3625564otp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 13:33:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571430820; cv=pass;
        d=google.com; s=arc-20160816;
        b=R/uASwAHvzsEBvCv45cRwG/hiewuQ1WV1U2R1zlvUANREaTmnF7YtS5PzbscuXbSPo
         /zPsRZb8DTGDMucUkB7wrdkvdToUdqa/noeIa8vodrTaibksvwSXGvlyXvzV6pkTKO9o
         kh6wk1Ap0ET5qWhpTTK9G05qpdbrrIK/UAv03E17wznWuhY5/+Cdxwyp4E6Btdsp43Zs
         yVReMLKDSQhM/quAB+8SrQqCllWB+VwgkPtVNM67MuRVxH9zzhYoGldvaFsKVnb8f+8l
         Tf0sonx4bjDvfbdjhDqeZfyOgSGDamN4zwJhBzWR7191g0Psh0wx/U3mrEuHEA28tIL6
         rXGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Dtj6Ceqia+fWRJ6V5MZfDSKxwbLMHj7BQsogCdZQJFY=;
        b=LafC6dbi/Qr9gRre2ieOguxz+mM4yCT5zylP03pO5uYhh4YLhfqJv+db1DwpU/T5eN
         XyWhbbRCoyC8STxQS3Yci7rpEBIzGKBV5zc/fEYX2RXDEq47vElII0aF7oWl1/W6Moxn
         jk58XybuGNVVYeIFCJ9UrMswMP3Xrv2HkHG1ETF6EvSpHD9kEXaK47n26BCvwVHoIW2A
         15JeS5qTJckoA3TPOVuXsqYWwtllH/o8BUcivYU4GlmTdPZJwJmPTD2sB78ezkKRXmAf
         msLW1JWJejtBcrgNYiTindiGwoeNH0vMO/DC9xzEw+czYQixgLRM7xs6WO3H0j2FSVaC
         KwDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KQhoMvQg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dtj6Ceqia+fWRJ6V5MZfDSKxwbLMHj7BQsogCdZQJFY=;
        b=esdZHHfUshbiF+IH6mrhQ1y+/btBfclN8tfU9xndciUpLf+QC1oZ3v1fZR1T5LX/OI
         VbKZk/G0ReDIwSQmnLhwrCZMnVxOyOmjUGPgsfnk+nfwElWpYdTStQ5hjJvzNZZf1mto
         bdW2O1da35wFaEkduRYZrGgIXjTRdsTMF37UjRkNFmK36lXOWXCkHtNQHq9kGqjwHceu
         5/+AQ/QzRYQ3DOAoz8c2cV15XJi4u44jl8aEqTWd0kOqDrP3FrAO9g/c/Z8Y7GEYghNz
         hil1BHHhx6OngkxHXwv5x4xBjQpm0f50jRbX+UG80Tz3AvKduzW78juXEwZp2P2vUdr1
         UA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dtj6Ceqia+fWRJ6V5MZfDSKxwbLMHj7BQsogCdZQJFY=;
        b=boelOnCutwVhflUq3sSbsBe2jQmvqhJWDY3/rmHoIDqmLGJr9sEdn0ayhCqRyeAfDF
         55qYdCti52cGK102ChsEBYd2/5p5IAw705/KmRLFClZmUHs+l41XiHnO2ATh6iMpiKKt
         dltBXpExj9v+DIT895m5YILRz+3mCK9tkUH5GwWS0HZNoeME8Gr+Se380a8iMu2+E3bQ
         /0NQauBilUez9ND1Z9tWgJf3nYSnz9tsJmlNJgzLVef48xpOymPKix5ON6oZoIEXAiKz
         ufR86OiYvebTW/ruTubPSoWyK6x7wQV+qY1gCpSUI87KlN4purNKyDRccxiSFtebIxhY
         np+Q==
X-Gm-Message-State: APjAAAVZdBl66ta1i9P0R++69QaNcR5ZrYKTZaPUP9ynwTEAy89tlxpl
	J4O4GaK8nLjp0h6o4SX6Tf4=
X-Google-Smtp-Source: APXvYqzVpIx14pDcUEAcAZ3F1x/zKZVGZLEJ3JdFDg7JWU7STpE8bTRK9f0RptY5umZu18M7hgsrRQ==
X-Received: by 2002:a9d:7d02:: with SMTP id v2mr9112594otn.301.1571430820841;
        Fri, 18 Oct 2019 13:33:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f56:: with SMTP id t83ls1236915oib.5.gmail; Fri, 18 Oct
 2019 13:33:40 -0700 (PDT)
X-Received: by 2002:aca:d1a:: with SMTP id 26mr9672962oin.136.1571430820449;
        Fri, 18 Oct 2019 13:33:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571430820; cv=none;
        d=google.com; s=arc-20160816;
        b=mIurjyxhnx1dbZHY/4P1Ta2SyZV+yxnMAWakyGlzYhFacdc27ueRPQ/0zaRnnBaCG0
         6PvzHii0FE5BizuoabpzzA3Tv40M5F/mqvwXmfuqD8e1mMrIDib5jYSh5LzltcTAwD2k
         8PKPTltlTCI4zkgUSJ3ApmxQwnQT2DI8FezWSMzSM8l9XZqHSvLDsJgVo6YCeo9SbNdx
         JTBj9MtOa5L6If8Bd3QWpiWHJIGOk2uHIUmI+rZzdB60UU20KQVj/c1KdAUj6XWBMMTs
         wEWhqV2O9gO4bq6EchFdXrfS0CBc0LKyfg+Nn6nxDDFXIwPe7CpPuRemXjN663svQHiD
         eLFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s5h/GhSdlUicoMowUqjyBoWS/+duNMzdyCGodDdcTtc=;
        b=HeXrU4+XD/xXIqaaLXkANGs/RwpLi0F+3r10RY4H2kgZH5js0xfX05Uq3RYrUQCqTj
         8pXHIIJB8ESY6Vz14oJB4XzHoaxoQgV8k4Ti/iJNrEc4sp5IXnqOc7wmnd0v9f3sj8yJ
         B86Cja0a/eOYhmeTi/Nf/dH318rj9e5ZojsFPmSVyPf/4isiUWShLPybIdvCQHXCyogn
         fwc7V34zy2bSxNkqsFPklfE0GpkA/Wkt3s+gvQJWCxPU82Y63D9RhtRF6zoRzxIG+Ahq
         Ub4/1jplNmVAOSZx2jAnzO42aq9uWNeA34PbjPJVmuYHdY4zgUJBs/BjE2NyoeYvwEAf
         P65Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KQhoMvQg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id n63si420057oib.3.2019.10.18.13.33.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 13:33:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id d22so3405646pls.0
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 13:33:40 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr11637082plp.179.1571430819228;
 Fri, 18 Oct 2019 13:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <CAKwvOd=z3RxvJeNV1sBE=Y1b6HgXdnT4M9bwMrUNZcvcSOqwTw@mail.gmail.com>
 <CABCJKud6+F=yhTo6xTXkHhtLWcSE99K=NcfKW_5E4swS4seKMw@mail.gmail.com> <CANiq72=PSzufQkW+2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg@mail.gmail.com>
In-Reply-To: <CANiq72=PSzufQkW+2fikdDfZ5ZR1sw2epvxv--mytWZkTZQ9sg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 13:33:27 -0700
Message-ID: <CAKwvOdkqfbXVQ8dwoT5RVza6bZw3cBQUEGcuRHu0-LhObkg--w@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KQhoMvQg;       spf=pass
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

On Fri, Oct 18, 2019 at 11:33 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 7:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Fri, Oct 18, 2019 at 10:08 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > > > index 333a6695a918..9af08391f205 100644
> > > > --- a/include/linux/compiler-clang.h
> > > > +++ b/include/linux/compiler-clang.h
> > > > @@ -42,3 +42,5 @@
> > > >   * compilers, like ICC.
> > > >   */
> > > >  #define barrier() __asm__ __volatile__("" : : : "memory")
> > > > +
> > > > +#define __noscs                __attribute__((no_sanitize("shadow-call-stack")))
> > >
> > > It looks like this attribute, (and thus a requirement to use this
> > > feature), didn't exist until Clang 7.0: https://godbolt.org/z/p9u1we
> > > (as noted above)
> > >
> > > I think it's better to put __noscs behind a __has_attribute guard in
> > > include/linux/compiler_attributes.h.  Otherwise, what will happen when
> > > Clang 6.0 sees __noscs, for example? (-Wunknown-sanitizers will
> > > happen).
> >
> > Good point, I'll fix this in v2. Thanks.
>
> +1, please CC whenever you send it!

Sami pointed out to me off thread that __has_attribute would only
check `no_sanitize`, not `shadow-call-stack`.  So maybe best to keep
the definition here (include/linux/compiler-clang.h), but wrapped in a
`__has_feature` check so that Clang 6.0 doesn't start complaining.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkqfbXVQ8dwoT5RVza6bZw3cBQUEGcuRHu0-LhObkg--w%40mail.gmail.com.
