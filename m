Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBD6IWSBQMGQEE72E24I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE343561C9
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 05:16:33 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id q19sf6875937pgk.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 20:16:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617765392; cv=pass;
        d=google.com; s=arc-20160816;
        b=nBddxUVm9zpHlKn77pfpJtDiY9yblwtstsktzJAW4NNGmT8ARZ2owp7w6Q2OiNR0Rc
         6Bz4hnVzLgNM8ZrTy2BAVXySHuKS88Tjzo4aI0P9mS2sznxdEalJsSS5pQO6LoMfCoy9
         w9Ie+pB4yDe7luODHWUIPU9waB+3fMCcXXmsPXXcgfzmOyGagsqvNhuiv/sCXftjH069
         bLTQqEJmk4lQpWhqv2QWtwr502UR/mtZybM/sAi0AaSXm4+jEAIwO3BHAyzffnJY/x6m
         FC8pdzRI1dIWy22ZJNFBWNlDgcY9D5E9r5o9UgFzWe3qhrmW244ZjaAbxttBH+KD1ubF
         WPIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=rjRKDDJ39YXJMBpBiajBQmSqDkiC3KthTtc2V2hlvZM=;
        b=p5nYkHEb4z+EQc+l1hZoziQMigyyRmWZLtvb2jJKdC7kCF/JOt7fzK6E0Xt9xMqG7A
         cc6Y5KCfN3zVS5CIL2m3kvhGn6XQIqjjTkXiyVPIEj7ZcP5Rz0LISUZa6EhKayPsDCdX
         7HGhfa2vAWlqZDiUNF+cgJmUBzxEbVGPWArrT/dEkL5vFc/h4BmXBztmcHCzFeAnLjhM
         zm1M/M+z3BbhdScE4+MDqtL8KytZoXiqUOLRv/GrA2yJY9FgRUHRGIJdRr24hLBYQ7+f
         igdPo8XJjhLg7Y1WH+VSBvLVGlKCPLxLbOWSis9xabgYkoe2rKbfiF4JY2fy5Agbevxa
         Pn1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DunEHaiO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rjRKDDJ39YXJMBpBiajBQmSqDkiC3KthTtc2V2hlvZM=;
        b=J0sUJ2pPpvjE0D+y51HqWHP2as+P5E6oQrAcuOrMu7rxs0xqIpzYea434kS1Jpi6Bo
         +cnkoNxAHHvHe79B22McgrwoW0yKKH+KLHo7iLgG1aizsEacyNlW4mZax4rYnItpBxde
         cboe5jjFXELLv6ep1/khUuvz6MCH9z1bKHHI/P+YRUSU21GOe3MNs7w3n21r2xemqmlN
         ubkyAn8JlbDg4PwJRqoaazIuzS7LbuOwZW84A0BmNKQT9QT8jkkRH03azQPMTBcOm9ey
         tNOWgnkExlrElTBQKotCqnuNZOUFl9CWVSykurWHiemvJxN7vk5zA9BNyPwrZZGUM9LM
         IYFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rjRKDDJ39YXJMBpBiajBQmSqDkiC3KthTtc2V2hlvZM=;
        b=OUKoOC+gKEwAVJjPOvPY10Z77f0c/eGulgIVtv+cZ6/kFlX4YRu6ZMIRSDg/65wTki
         +kFzd5VaU0PZSyccS5vfLP9jcZ7SG16zScUmCWvmZRFYUubMt9/ZZ/A8miZqKiML6rr5
         i0fLFgLx8M/bXtV+/NlLSuWMYkIX1o6HimwD8w9nc1XBz6vrlsIKLTEdCF99rq1pAQW3
         I7QoYugDHnzxSDh+hoDWQmIt0hk0+szXl7MW8/Mfu53xvOU1PuvqXhO+QhEcG16pF4hE
         WS4lA0WWegZCQG8SIYw13VDOfBp76+uZTmkB2Wm26VJpPHucTuZnooBKl8mPvwVIJ4XI
         iTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rjRKDDJ39YXJMBpBiajBQmSqDkiC3KthTtc2V2hlvZM=;
        b=qaQpCewYXIylWi7QSto4cyqOAIk3qjthqCpGQ7vfL+3X19vp0L/oIrfw5/uXIIoN6E
         dyUOghY2HGaPlNYCs3Ov3G9gzk2V/6aT0yBg+r+WV8ZqbjcDuM0LjIaCRXAGEdqT5A3q
         2eYxz5I4UlNw5Geq7ZdpLkfnMsY3MKFvWSSpIgZZuPcsmigUYNf1vTiWvQ1fnoOjeozE
         iTwKXkd1Swc5GHkBg70REESoUm7O5ntdtCyYNwvcCPJlaJvg6EmJeLXKGg/X4JuC7qih
         TxaIH6MOW26WDgSkRDYAm1fdd39PR+ssMg4K//MzHnejHP32tw969eoTfLFURsOhkpcw
         UQxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bUn+HKtDsZodEqAXb9XEGRtnJFSJTloPGODOgFys76rWwi5xK
	kjsLjQgbHwXiH6EXaerlnsw=
X-Google-Smtp-Source: ABdhPJzauoyBHoMQUs6ove+d8aosBIk3grUjEtF5Ufh1KFJ5ceGXfhHak+mG50IxXHpGXJZvG2JWjw==
X-Received: by 2002:a17:90a:af97:: with SMTP id w23mr1194257pjq.101.1617765392039;
        Tue, 06 Apr 2021 20:16:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:545b:: with SMTP id e27ls443142pgm.3.gmail; Tue, 06 Apr
 2021 20:16:31 -0700 (PDT)
X-Received: by 2002:a63:d941:: with SMTP id e1mr1263606pgj.188.1617765391479;
        Tue, 06 Apr 2021 20:16:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617765391; cv=none;
        d=google.com; s=arc-20160816;
        b=m4Hd/l867J3e4MzRiHNpbfPskUFSGNMoWE6IBkIjA6SaMJ6HHW9aBCmL8ITtpn1LP6
         ylDbLqVVIKb1b8bGJgnqcAGYNq79I0v7A+fMwUhEJ5oxs4NtUhZqJyz/3f6y4zya/gUm
         Oce04BpQoqV/jJJ/HjfGeYrFYsYpolsK4QIJ6a5zvyJ/9ClJciIGYknuzqqhzrV1HNDZ
         a+1000qRs3tKW8p3uIbIfUc24CeMEUHAY0kFV0yNfGsjoOEsD0Bnfxc5JA/nQ8S8WuLY
         eF6xpnAgekKofOp2hcLFcHocuo1C7vvqqI2PoDbudUJR7uvxdGn0G+M7XsIers2QsMfn
         BqTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=gxsZLBTlYIxJZQg09QJLUdwI1nH3Y+T2Q5sP2Put2uc=;
        b=sOj0ykVDdnUu7LZdGs5CyDm0aYxSI1RH1KZrBGdJBK292x57zp5QdXY7oOqPoqOnMz
         2U5KqifptUWZqetsDjpe/WDTi3Hf1WMj58YdReLZZY7GKmEiTkibioM5pL8sUjxN8U06
         /M0JqUb2Xprg7kOMthy5zyC1t8SGx6FD+BmggpoBOs/F63H7VnL7FBUqDaUZNjSbsxu5
         Qb/yasuUUeG9GnvKsPY/FccFxPEngtfH8FNAnP1H/d5cJ4me5AVKDCj0zIleSGY7I65D
         nbPPdAGG25Y2mIfDLLU6FCfiKJUejpSY3Yys5uuq0fbm5ulNdwJ/Pxht0skhram5jEW3
         fsow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DunEHaiO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com. [2607:f8b0:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id k8si363792pjq.1.2021.04.06.20.16.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 20:16:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b as permitted sender) client-ip=2607:f8b0:4864:20::12b;
Received: by mail-il1-x12b.google.com with SMTP id n4so8205358ili.8
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 20:16:31 -0700 (PDT)
X-Received: by 2002:a92:c545:: with SMTP id a5mr1085444ilj.209.1617765391016;
 Tue, 06 Apr 2021 20:16:31 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
 <43e1416c-4597-8f29-e3d9-f1d45c9c6d33@debian.org> <CAKwvOdk5uDpTfVvXiuKOGVXDcnRdQcC5PdNxzsdLHh91Zmdkxg@mail.gmail.com>
 <20210406230216.ofnohyyzybhmbqgt@google.com>
In-Reply-To: <20210406230216.ofnohyyzybhmbqgt@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 7 Apr 2021 05:16:02 +0200
Message-ID: <CA+icZUVXmk08_Gw_dD2et_FV36qgfunnn9w9f5aB173o63SmAA@mail.gmail.com>
Subject: Re: The LLVM host/target TRIPLE padding drama on Debian
To: Fangrui Song <maskray@google.com>
Cc: Sylvestre Ledru <sylvestre@debian.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	cfe-dev@lists.llvm.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Matthias Klose <doko@debian.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DunEHaiO;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12b
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Apr 7, 2021 at 1:02 AM Fangrui Song <maskray@google.com> wrote:
>
> [Remove lve-dev which I think does not exist.  Add cfe-dev.]
>

I sent a subscribe to <subscribe@llvm.org> with no answer.

The offline archive shows activity.

https://lists.llvm.org/cgi-bin/mailman/listinfo/llvm-dev
https://lists.llvm.org/pipermail/llvm-dev/2021-April/date.html

> On 2021-04-06, Nick Desaulniers wrote:
> >On Tue, Apr 6, 2021 at 1:57 AM Sylvestre Ledru <sylvestre@debian.org> wr=
ote:
> >>
> >> Hello
> >>
> >> Could you please report a bug https://bugs.llvm.org/ with a shorter ve=
rsion of this email ?
> >> (with less jokes ;)
> >
> >Heh, I got a laugh. Let me highlight below precisely what should be in
> >the bugreport.
> >
> >>
> >> Thanks
> >> Sylvestre
> >>
> >> Le 06/04/2021 =C3=A0 10:50, Sedat Dilek a =C3=A9crit :
> >> > [ CC some ClangBuiltLinux and Debian GNU/LLVM toolchain folks ]
> >> >
> >> > Hi,
> >> >
> >> > this is not a late April-1st-joke.
> >> > "This is a REAL DRAMA written by (my) LIFE."
> >> > ( See the end of this Email. )
> >> >
> >> > [ INTRO ]
> >> >
> >> > /me uses LLVM/Clang and tools - Debian folks call this "LLVM
> >> > toolchain" - for building latest upstream Linux-kernels.
> >> >
> >
> >include from here ---->
> >
> >> > On Debian x86-64 I see this dpkg-architecture warning in my
> >> > Linux-kernel build-logs:
> >> >
> >> > specified GNU system type x86_64-linux-gnu does not match CC system
> >> > type x86_64-unknown-linux-gnu, try setting a correct CC environment
> >> > variable
> >
> ><----- to here
> >
> >Also, how do you check the logs? This is during a kernel build?  If so
> >then it sounds like something wrong with that build script.
> >
> >> >
> >> > [ CHECK ]
> >> >
> >> > Check "GNU system type" on my Debian system:
> >> >
> >> > $ dpkg-architecture --query DEB_HOST_GNU_TYPE
> >> > x86_64-linux-gnu
> >> >
> >> > What says clang (here: Selfmade LLVM version 12.0.0-rc4 - Debian's
> >> > clang show the same "Target:"):
> >> >
> >> > $ /opt/llvm-toolchain/bin/clang --version
> >> > dileks clang version 12.0.0 (https://github.com/llvm/llvm-project.gi=
t
> >> > 04ba60cfe598e41084fb848daae47e0ed910fa7d)
> >> > Target: x86_64-unknown-linux-gnu
> >> > Thread model: posix
> >> > InstalledDir: /opt/llvm-toolchain/bin
> >> >
> >> > [ ABOUT KNIFES AND TRIPLE(S) ]
> >> >
> >> > You remember the famous quote from Crocodile Dundee cinema movie?
> >> > "*This* is a KNIFE!"
> >> >
> >> >      This is a TRIPLE: x86_64-linux-gnu
> >> > This is NOT a TRIPLE: x86_64-unknown-linux-gnu
> >
> >Heh, yes, "triples" (3) actually have 4 segments.
> >https://clang.llvm.org/docs/CrossCompilation.html#target-triple
> >
> >I would think they're equivalent if the "vendor" is left out, so to me
> >it's a bug in whatever is printing that message.
> >
> >> >
> >> > Personally, I do not see a benefit in having an "unknown" but I am n=
ot
> >> > familiar with other operating systems and (its) architectures.
> >> > Maybe, there is a real need for this extra "padding" (3 -> 4).
> >> >
> >> > [ "SOURCE (OF) TRUST" ]
> >> >
> >> > I do not follow LLVM development that much.
> >> > But I know to check the source-code.
> >> >
> >> > NOTE: Here: Latest <llvm-project.git#release/12.x>
> >> >
> >> > [ clang/test/Driver/program-path-priority.c ]
> >> >
> >> > /// We cannot trust clang --version, or cmake's LLVM_DEFAULT_TARGET_=
TRIPLE
> >> > /// to give us the one and only default triple.
> >> > /// Can't trust cmake because on Darwin, triples have a verison
> >> > appended to them.
> >> > /// (and clang uses the versioned string to search)
> >> > /// Can't trust --version because it will pad 3 item triples to 4 e.=
g.
> >> > /// powerpc64le-linux-gnu -> powerpc64le-unknown-linux-gnu
> >> > /// (and clang uses the former to search)
> >> > /// So we write to both names which is a bit odd but still proves th=
at the
> >> > /// lookup is working.
>
> I created https://reviews.llvm.org/D99996 to drop $DEFAULR_TRIPLE-gcc
> from appearing in an unrelated target triple cross compilation.
>
> >> > LIFE is about TRUST :-).
> >> > No TRUST - No nothing!
> >> >
> >> > [ INSPIRED-BY ]
> >> >
> >> > Initially, I was inspired by this change in "tc-build" - the Swiss
> >> > army knife (YES, this is a KNIFE) from/for ClangBuiltLinux folks.
> >> >
> >> > commit 227a77175f81fc9b2e76b2d11b91b686ce41b35b
> >> > "build-llvm.py: Define LLVM_HOST_TRIPLE for certain distributions"
> >> >
> >> > Link: https://github.com/ClangBuiltLinux/tc-build/commit/227a77175f8=
1fc9b2e76b2d11b91b686ce41b35b
> >> >
> >> > As a man-child I played with...
> >> >
> >> > DEB_HOST_GNU_TYPE=3D"x86_64-linux-gnu"
> >> > LLVM_HOST_TRIPLE_OPTS=3D"-D LLVM_HOST_TRIPLE=3D$DEB_HOST_GNU_TYPE"
> >> >
> >> > ...in my custom LLVM toolchain build-script.
> >> >
> >> > Unfortunately, this results in a ***mixture of target TRIPLEs***.
> >> >
> >> > This is from my comment when playing with LLVM v13-git (see below li=
nk).
> >> >
> >> > Link: https://github.com/ClangBuiltLinux/tc-build/pull/141#issuecomm=
ent-791179738
> >> >
> >> > LLC and llvm-dwarfdump say "x86_64-linux-gnu":
> >> >
> >> > $ /opt/llvm-toolchain/bin/llc --version
> >> > LLVM (http://llvm.org/):
> >> >    LLVM version 13.0.0git
> >> >    Optimized build.
> >> >    Default target: x86_64-linux-gnu
> >> >    Host CPU: sandybridge
> >> >
> >> >    Registered Targets:
> >> >      bpf    - BPF (host endian)
> >> >      bpfeb  - BPF (big endian)
> >> >      bpfel  - BPF (little endian)
> >> >      x86    - 32-bit X86: Pentium-Pro and above
> >> >      x86-64 - 64-bit X86: EM64T and AMD64
> >> >
> >> > $ /opt/llvm-toolchain/bin/llvm-dwarfdump --version
> >> > LLVM (http://llvm.org/):
> >> >    LLVM version 13.0.0git
> >> >    Optimized build.
> >> >    Default target: x86_64-linux-gnu
> >> >    Host CPU: sandybridge
>
> sys::getDefaultTargetTriple()
>
> >> > Whereas clang says "x86_64-unknown-linux-gnu":
> >> >
> >> > $ /opt/llvm-toolchain/bin/clang --version
> >> > dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.gi=
t
> >> > 9c0274cdeae904089806be6faee72b9126d2cf5b)
> >> > Target: x86_64-unknown-linux-gnu
> >> > Thread model: posix
> >> > InstalledDir: /opt/llvm-toolchain/bin
>
> The vendor part "unknown" may be added by
> computeTargetTriple in clang/lib/Driver/Driver.cpp
>
> If you specify --target, "Target: " will be overridden.
>
> % clang --version --target=3Daarch64-linux-gnu
> clang version 13.0.0
> Target: aarch64-linux-gnu
> Thread model: posix
> InstalledDir: /tmp/RelA/bin
>
> I think this is a matter of finding the right place and removing the extr=
a
> normalization...
>

Interesting, so pass `clang --target=3Dx86_64-linux-gnu` as an alias in
my kernel build-script?

I had no deep look into the LLVM sources in things of "normalization".

- Sedat -

> >> > As said I am an end-user of LLVM not an LLVM developer and I do not
> >> > follow LLVM upstream development.
> >> > If there was progress on this topic, please let me know.
> >> >
> >> > Final quote from Mark Twain (translated from German):
> >> > "In my LIFE I had several DRAMA(S) - some of them REALLY happened."
> >> >
> >> > For me this is NOT a drama.
> >> > But I do not know about the consequences of having a mixture of targ=
et
> >> > TRIPLEs in my Debian system.
> >> > Thus, I dropped above LLVM_HOST_TRIPLE_OPTS from my build-script.
> >> >
> >> > Please, let me know if you need further information.
> >> >
> >> > Thanks.
> >> >
> >> > Regards,
> >> > - Sedat "A real drama queen" -
> >> >
> >>
> >
> >
> >--
> >Thanks,
> >~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUVXmk08_Gw_dD2et_FV36qgfunnn9w9f5aB173o63SmAA%40m=
ail.gmail.com.
