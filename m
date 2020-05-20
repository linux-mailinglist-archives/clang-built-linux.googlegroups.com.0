Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBIVYSP3AKGQEWNSGDDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AB71DAC04
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 09:28:35 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id a13sf1960426ila.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 00:28:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589959714; cv=pass;
        d=google.com; s=arc-20160816;
        b=yCavAtEF0/mIpWqGNuksQHLWCYZbYuO38WCi4rWpZsDEPLAx/d+N/uo3fk871oTlTn
         nE9mRhU/vOF1pC8UG+jsKmvRRPcMLcbp6rH6FVtkGu7VpRDCFkHB+VNR2pyD8CS6DnCv
         KI/+KjfbJ1uBXhxUznCY0OMSG3pXkGirQ5JeAl4pVOQKJw39SAM1PIrhGUtmDZRWZdGo
         1zXwSurVzs5gVC5eT8qbesO/bF+U3yVAjM6z0z1UMc49fZ50XFtuBApfBdKf4yacWPje
         nai2FvqZIhpvk+FKaj+cDeYaosOGCsHXRXKxOSoclfvUeunae4BijH6jCLrQqSi4ReHG
         37ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cJ/bHAdY2WxhR7TqPmM3JLc6a2NXkGGNXLjQDQnt+gI=;
        b=HaLtF84wpkoyK6qc86ZxxqzpHVdkXWQNVGqFu8jBqtE7cRXLCC54VCl/zVmh1i/RsT
         ivlzc52fnRXtXpqUztjZR4nfM3WXRMrWweFS7+gFHdN0huv8HGb6fRJculsABBNh9JOr
         9vrLkeA3dF4fQ7gtIOEflWQTXqCIXlAB+LszCH/K9s+WnnF/3jhxWFpQfQJVtes+N8IB
         AZLkvf2ksWssw16D+EF01z9pTu/Je4Jj7ipQ1PyyJa6SBgWClf0UvRzPF7pGadqL7dG2
         7tuw/fnLA/FLNhz1uw8D/ElXxepTiD4InwPkrJsFqH5iri3tIUvxNGVhSO9G1WC4pfJt
         6PVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pEvWD2Pb;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cJ/bHAdY2WxhR7TqPmM3JLc6a2NXkGGNXLjQDQnt+gI=;
        b=P2aoQx8681H6unH+0Wbp8OQ2AM6KzuUE4xrVr7vZqosl24dx0ImPihaiW6AOltDCjC
         uW2h1LIZoLWnCKcui0vjGyJEi6uY3zhdqdAdNEt8xsAFs1GPszvpv+Gt5bMtYYAhRlRE
         8luhWIeRkZzx8nvFxotPzMEzQxzH8vCgRImEedxi9TOl1DsaN4EFdh6Bb5e3CLawo7wM
         6CkXRDbVbBbx69MuOYYUrl++sSe/iDhm8vt12bwTjAGInWrxdf0Q7HHGBCih58k4Xys6
         J9YtHZy9ZRei6ACNnKzLEAw4i9ZR2un2aFKqazMFGN77JuZSroN3wr+c9u+7wekMB5Oy
         +PLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cJ/bHAdY2WxhR7TqPmM3JLc6a2NXkGGNXLjQDQnt+gI=;
        b=oXid/LTHbHrjxX+XDohjiGDdkHW/JaYnMt4prLq6QNxEMlRwdifKZ10qBlst9dF5DG
         djAOcqmaOswiL7LxgDH7NKuyWA70BlyPCVZOjLDpt9QT9AYFjdWHXHg5tKo3HA3Q9YJN
         adzGuH8Ulgu/CyjRzOe70l9WYOL/FMDYKgsuB0+pOUQP4NzcG7oDeLkg6apuZB7itWsK
         eW93Fk27SlzXmDj/+M/g4kozvjHpEzHxhimuEjfuG874b5lQ+ziNHeKMmzL+B9s8bQhs
         EFHGgPzpApAciAgbV0CXQk30v9dUZez2ed3PmaGLhxuhEjhHjHi83L33ptz2Cu6hEM5F
         PxAA==
X-Gm-Message-State: AOAM5306FN56HYxuYnXre1BOvbGs+LpB2w91a1bX4TodouU1cMSwKYH/
	uJtFWqv3WyeYZLZFRzd73ak=
X-Google-Smtp-Source: ABdhPJxXA0FN7IujM2qBqYWvsH2J/qjMJa3SBuBZCZLfPNS7l32Rge6T0nFX+6BFFcDt9BslmLpVjQ==
X-Received: by 2002:a05:6602:2dca:: with SMTP id l10mr2341641iow.163.1589959714513;
        Wed, 20 May 2020 00:28:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3e8b:: with SMTP id s133ls247510jas.5.gmail; Wed, 20 May
 2020 00:28:34 -0700 (PDT)
X-Received: by 2002:a02:a58b:: with SMTP id b11mr3132922jam.56.1589959714097;
        Wed, 20 May 2020 00:28:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589959714; cv=none;
        d=google.com; s=arc-20160816;
        b=MA0dV4EmHp1dPC5VgR4krrNnMTtTd/Tn7Kxe+8gIrFFw1kHjKp0dx5etzfP9gSQLCg
         MyJVWayTN+cACcEn1fzFQ4iGs7NUKFyxZCC6BRTN0Lj2Z17uQvqnNyVPVBZuIaqX6752
         XtMRMA4Ua+MaCoTucmh34ZZT2cQiuVbXBcku5Qx6+VR5wU6kORklVfwf9L1vLZTMSK9a
         2sCwv24346ciK+ZSTaz1QpBn2erycYFlpUn2mMVofo0eO5moxQRkV74jyIa7EQeQ+Iy5
         b2xJusK1ekQld5wv9KiELfy6N9Qym4l5oYLCj/SG6JtWzAL7Q9NCI2LEyQmvW2RsZVQ3
         O9Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xkPHVoXP68BKS5mey7jq2q721wyLayczstvvUEvUVF8=;
        b=CqPDj5cDjM7tUktRZUR2gVcZyM4GZtyov9djnNcGPe3QGzVB9lT4UeMc9wW+O5KcmJ
         MTSw89vuCKTf8qM9wKPSau05TCOhDk3a1i5m0/UmKUn3QRARTbehPkzdwSKuiGzYYMl9
         Cyb5vlW0PL+1+JROoKi+08lPJRbJd130tFDjlmMxqmTMhfc7zGtfg7BFqIbfSOV1oRqc
         8rGt1jDsoTifNKbA0nMgwfLXa1fgzJIGVaOK777q1C+v3ADzb4vhJbFUCOZcPDuhRPQo
         O9+3cvDB4GzRraNe9BpPvJra+CBpbBtK4wqtt40N0XZRsWz6M5Yt8lqfn9JCvRGJY5Oe
         3zbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pEvWD2Pb;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id k8si98772ilq.3.2020.05.20.00.28.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 00:28:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id f18so1674231otq.11
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 00:28:34 -0700 (PDT)
X-Received: by 2002:a05:6830:18ce:: with SMTP id v14mr2045756ote.251.1589959713491;
 Wed, 20 May 2020 00:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <87y2pn60ob.fsf@nanos.tec.linutronix.de> <360AFD09-27EC-4133-A5E3-149B8C0C4232@lca.pw>
 <20200520024736.GA854786@ubuntu-s3-xlarge-x86> <CAG=TAF4M5s1kQ98ys_YCgRS9WqjV_9KEbPCFiS71MA_QK8epdA@mail.gmail.com>
 <20200520034426.GA1027673@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200520034426.GA1027673@ubuntu-s3-xlarge-x86>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 May 2020 09:28:20 +0200
Message-ID: <CANpmjNMiiDN0AueijLbkbhEX0vLc3xfPyA7kec5_T3Qku7wkMw@mail.gmail.com>
Subject: Re: [PATCH] READ_ONCE, WRITE_ONCE, kcsan: Perform checks in __*_ONCE variants
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>, 
	Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>, 
	Will Deacon <will@kernel.org>, "Paul E . McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pEvWD2Pb;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as
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

On Wed, 20 May 2020 at 05:44, Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, May 19, 2020 at 11:16:24PM -0400, Qian Cai wrote:
> > On Tue, May 19, 2020 at 10:47 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Tue, May 19, 2020 at 10:28:41PM -0400, Qian Cai wrote:
> > > >
> > > >
> > > > > On May 19, 2020, at 6:05 PM, Thomas Gleixner <tglx@linutronix.de>=
 wrote:
> > > > >
> > > > > Yes, it's unfortunate, but we have to stop making major concessio=
ns just
> > > > > because tools are not up to the task.
> > > > >
> > > > > We've done that way too much in the past and this particular prob=
lem
> > > > > clearly demonstrates that there are limits.
> > > > >
> > > > > Making brand new technology depend on sane tools is not asked too
> > > > > much. And yes, it's inconvenient, but all of us have to build too=
ls
> > > > > every now and then to get our job done. It's not the end of the w=
orld.
> > > > >
> > > > > Building clang is trivial enough and pointing the make to the rig=
ht
> > > > > compiler is not rocket science either.
> > > >
> > > > Yes, it all make sense from that angle. On the other hand, I want t=
o be focus on kernel rather than compilers by using a stable and rocket-sol=
id version. Not mentioned the time lost by compiling and properly manage my=
 own toolchain in an automated environment, using such new version of compi=
lers means that I have to inevitably deal with compiler bugs occasionally. =
Anyway, it is just some other more bugs I have to deal with, and I don=E2=
=80=99t have a better solution to offer right now.
> > >
> > > Hi Qian,
> > >
> > > Shameless plug but I have made a Python script to efficiently configu=
re
> > > then build clang specifically for building the kernel (turn off a lot=
 of
> > > different things that the kernel does not need).
> > >
> > > https://github.com/ClangBuiltLinux/tc-build
> > >
> > > I added an option '--use-good-revision', which uses an older master
> > > version (basically somewhere between clang-10 and current master) tha=
t
> > > has been qualified against the kernel. I currently update it every
> > > Linux release but I am probably going to start doing it every month a=
s
> > > I have written a pretty decent framework to ensure that nothing is
> > > breaking on either the LLVM or kernel side.
> > >
> > > $ ./build-llvm.py --use-good-revision
> > >
> > > should be all you need to get off the ground and running if you wante=
d
> > > to give it a shot. The script is completely self contained by default=
 so
> > > it won't mess with the rest of your system. Additionally, leaving off
> > > '--use-good-revision' will just use the master branch, which can
> > > definitely be broken but not as often as you would think (although I
> > > totally understand wanting to focus on kernel regressions only).
> >
> > Great, thanks. I'll try it in a bit.
>
> Please let me know if there are any issues!
>
> Do note that in order to get support for Marco's series, you will need
> to have a version of LLVM that includes [1], which the current
> --use-good-revision does not. You can checkout that revision exactly
> through the '-b' ('--branch') parameter:
>
> $ ./build-llvm.py -b 5a2c31116f412c3b6888be361137efd705e05814
>
> I also see another patch in LLVM that concerns KCSAN [2] but that does
> not appear used in Marco's series. Still might be worth having available
> in your version of clang.
>
> I'll try to bump the hash that '--use-good-revision' uses soon. I might
> wait until 5.7 final so that I can do both at the same time like I
> usually do but we'll see how much time I have.
>
> [1]: https://github.com/llvm/llvm-project/commit/5a2c31116f412c3b6888be36=
1137efd705e05814
> [2]: https://github.com/llvm/llvm-project/commit/151ed6aa38a3ec6c01973b35=
f684586b6e1c0f7e

Thanks for sharing the script, this is very useful!

Note that [2] above is used, but optional:
https://lore.kernel.org/lkml/20200515150338.190344-5-elver@google.com/
It's not required for KCSAN to function correctly, but if it's
available it'll help find more data races with the default config.

Thanks,
-- Marco

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CANpmjNMiiDN0AueijLbkbhEX0vLc3xfPyA7kec5_T3Qku7wkMw%40mai=
l.gmail.com.
