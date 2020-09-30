Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD4L2T5QKGQEHQ4CA5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6354527F510
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:24:17 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id t11sf1748716pgu.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:24:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601504656; cv=pass;
        d=google.com; s=arc-20160816;
        b=DuRG/J4/2wxbmjCaD8AzD0RPhDv+3OrmTZy2wAAihV/+67ZDduDPrNQe3GnxYPXhRI
         j6kPiVwT1eO+yolBvVySLT017FesE7sG5myXkldVs/J3HlBPm1vO0ZIZF0FPdnSKVoOt
         aVyvQSREZOEqIgEuwA2Yeao4ATlBQUAqJPq4u/5Db5Eh0/vykwn4pzmD1kVedR876vJv
         1umqKvAAMnL7p1g50xDZgDUTW2/4fAxDhZ+BSoIdBPbcBXO/9jBE1n+sbpnqQEdXR3CO
         u2LVcgMAk10BiFPJYNrU4b6Jg3AdT5jdyrBFMXOQh4qag6b0mIuPnwLjAUwYI5ovcUeT
         p6SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=enldJtM9PMvin6jPtUr9rr1Y76m7Y6nRKirm12devLs=;
        b=FikShTtuD/hpd7PyUfzDsxFqvKO4JzfUX/R59IT8ClvEVpO9FwRpXFehMKhcbsuhKH
         amy3gPEj3LkZi+n0EKNVog6rFq6VjJ46OPmHdehqS4xQ2qz0WEr4HHUOxnLSdiP677gH
         AXkD+GGcqnd2pPtOG/Hgu17K+05ian+BFHrdZ/ItNcIjYyclg6tKiz26RMuJ/WTrt74r
         A7id+BkIo1K6m/d06TT9N9ZIVpXcMeFY5mejG8tJarxHof2B/IakR7k5tyYuW0Qr8fZh
         QIUDWcI4qD3JvHH02PdanxOQpbQBTC/iIxMuzomOttOvXSPLTRxUXw2OulYE2Ukn6i3Y
         TTZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=clj+atnC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=enldJtM9PMvin6jPtUr9rr1Y76m7Y6nRKirm12devLs=;
        b=Ee/k08qT/B0UE9aWKZcvjyLD5nN97CEivI9JFOeFhQi/OWQdwPLSS3jOQVPpNMqAkB
         u/PIpmzPur0F52yL7DFna5/6bqcWSIj0Mta3fSfQJjVyaR4y5aZB0nGfj4fkq6LLkjtE
         a99yN/f7nn6NgpH96CALHlV8VyqGtsTiU25DArwun6PWEbavIHQrkI/nSiKRUTHQOUZe
         8DZFMCSPYkF2nhos3jESR5MwlSnbUhx9bkwLkKp0AFSfwnSkJXob5j4e8wxSt9MnsA2n
         hk/ntFAW6U1JCBKbQWdOfFW1N9jZJ6512bZMX3IiDLhoqZ7rb7iu5P95PIZNaVMdDXSs
         +6Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=enldJtM9PMvin6jPtUr9rr1Y76m7Y6nRKirm12devLs=;
        b=JhmFWJJKLvkukP5e2U3jVjSIgdwn/ucOJSfeL1XxVduPIZtgh5S7Dn+tywgpuuHtGO
         W5hv9BzcxVOFB+YJVs2mTJspg68+Bg1SKyyNzUdfQkEt3o/Xx1rnyyXW8jPBoO5MCU4Z
         OKASJjjh12Pc5SM7GKUUeebJOAxdSODdwQ7yQ6frcJoWZ9b6bEYYlrVKA0scOzzm3XYk
         wkspXGdVPdG4v1OBkWJMk2oY4/e/mauYBnaL+fQMHdfwPY2cLMN7YsoZPfKDLEcGWqwX
         1e5aIwSZCFDevJecGRfgyZS4nKM+9O6lCkA4xz40hwNfH4MOhkXh1wYQFbYLnQDXRCov
         sc7w==
X-Gm-Message-State: AOAM532L0IwMgFYih9FPmUQf96xXUu9byTY/EY9+kc/wwyRoej3kWpLq
	Q2amhCkDcaGmOHqL6U4vLFU=
X-Google-Smtp-Source: ABdhPJwMr7wbZAPKz1m+pGT/CzrbjjC5jsJmf3M4wSljgr6Obg7AWB4TIO2e4/fE/Yry57nV55XhBw==
X-Received: by 2002:a63:a546:: with SMTP id r6mr3693773pgu.160.1601504655874;
        Wed, 30 Sep 2020 15:24:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3855:: with SMTP id f82ls1329680pfa.10.gmail; Wed, 30
 Sep 2020 15:24:15 -0700 (PDT)
X-Received: by 2002:a05:6a00:22d4:b029:150:bd5d:ce11 with SMTP id f20-20020a056a0022d4b0290150bd5dce11mr4242956pfj.38.1601504655122;
        Wed, 30 Sep 2020 15:24:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601504655; cv=none;
        d=google.com; s=arc-20160816;
        b=uC+G+6b++dCWsaA7Xf5dUXvHj1e8BbUWmkmHq23wa58VYlHij7A37nBO1wnfzTnjRR
         w26LLFSyFBzHJKV9NpNMnDsviKE0GggbzFnQjhat8R+0j/pth7NXkeoFTVvdQtlERtmo
         pJCbSbtI/K4ecB1ciANvlmhSTWnrIkm4myuc8N3Evf5HpjCca3pM/DKcrETIs/i5hrlp
         HyRTuueDWQQ1EVSoZkZsrS3Q9KR6X626fxsiL5goQP1HQmnq8Co+RaQFE8AEBwmr+BfZ
         VucPlTZARS68xkRAB+unJ/NL4PDD6fnERhrpJVxGyuLi+6Oo15YEMJZBNDRN0nNS10WY
         adDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JYdEiH+2AP+bLDP8rJcRkSqBKY/idKxOE3Os+BZSQUs=;
        b=AXArpGmcipnr7M2dt1/tzR1iId1i0vVvJ7XVzL2RfzpW0UJIWpUIMcKEQOQbJDKIHP
         /JVf7RS4+a/JrMvqgUwKapYMtKlOl5bRzzLn8dyoBC/ItRskNrAY+rOO8StukIhx5Ydj
         Z7ljMzOMDCi4ciQXuZWCUpMWxBEZPENVh+rN6vDv2VY2xO/+zoVNuSxY6fV83L43D2X2
         WS9TSmssrfPXexYpxN/01UVG7dEkRk4qK/9gKR7s0gOJCDfBAoXEwPjA7HcoMLxz4hE5
         xPTTdSIa9V1a6/Zv2bUFBbBuep0dG9x65F9eNJsp77x+x3xU64lft/XyaZiEgP9hqAd8
         LrSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=clj+atnC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id bk9si198021pjb.1.2020.09.30.15.24.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 15:24:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id f18so2353528pfa.10
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 15:24:15 -0700 (PDT)
X-Received: by 2002:a63:1f03:: with SMTP id f3mr769946pgf.381.1601504654533;
 Wed, 30 Sep 2020 15:24:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200930153642.GA319225@elver.google.com> <CAKwvOd=0FV_VoSD8j4xP_k5esOtQ7KQHOq1cFFAkXYM0UQ2-ww@mail.gmail.com>
 <CANpmjNOvDR-rCn=1Q7Sj-cOuXORTwZj0Ceg2cAH3XpH2EicBhg@mail.gmail.com>
In-Reply-To: <CANpmjNOvDR-rCn=1Q7Sj-cOuXORTwZj0Ceg2cAH3XpH2EicBhg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 30 Sep 2020 15:24:02 -0700
Message-ID: <CAKwvOdmN=F9JMiSAbCk2HbOwPfyy4u3ticusjZO43nAjhM_wQA@mail.gmail.com>
Subject: Re: Clang 12 possible memory corruption
To: Marco Elver <elver@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Alexander Potapenko <glider@google.com>, 
	James Y Knight <jyknight@google.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=clj+atnC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

On Wed, Sep 30, 2020 at 3:08 PM Marco Elver <elver@google.com> wrote:
>
> On Wed, 30 Sep 2020 at 23:03, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Wed, Sep 30, 2020 at 8:36 AM Marco Elver <elver@google.com> wrote:
> > >
> > > Hi folks,
> > >
> > > I would like to escalate
> > > https://github.com/ClangBuiltLinux/linux/issues/1125 (if the problem is
> >
> > Thanks for filing a bug in our issue tracker! Bonus points.
> >
> > It sounds like you're running a bisection? Please let us know how it
> > goes and we'll help get it resolved.
>
> Looks like this is in Clang 11 RC as well. I commented on the Github
> issue. Looks like:
>
> # first bad commit: [4b0aa5724feaa89a9538dcab97e018110b0e4bc3] Change
> the INLINEASM_BR MachineInstr to be a non-terminating instruction.

Great! /s

Thanks for doing the bisection.  That change was part of supporting
`asm goto` with outputs, so not surprising.  p0 for us to root cause.
Let's follow up on the issue tracker.  Next thing is to isolate which
config tickles this, since I doubt it's observed in a defconfig.

Are you able to quickly test if https://reviews.llvm.org/D88438 resolves it?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmN%3DF9JMiSAbCk2HbOwPfyy4u3ticusjZO43nAjhM_wQA%40mail.gmail.com.
