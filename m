Return-Path: <clang-built-linux+bncBDB2BCVHRUBBBEVK47YQKGQEAYUQN2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 83744152182
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 21:33:23 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id r74sf12567605iod.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 12:33:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580848402; cv=pass;
        d=google.com; s=arc-20160816;
        b=NOgtatpLREkjCRzyd7CczPPnDg8MpNlKD+5Tn/Iud8wQks6Q0RcpMe66hImhDLzOp8
         2kdGfD7ezEiEsXoZFm6t0c7OYekY/eEccgt5tJZDifzNBbjlh8tZOvi9KLboEQ/AoOae
         irYJRxF1MrYM0QlHmQA/Y5jnudDImHreGYgTG36/HBFYr2Wpab7TUUx6tiVcHWkwg9hy
         BRP1CJOFx8wn4PYk25l4wfxliz5qsJAu68EMelSZYNfzPd7wec9ecMmFu2nSgDeDLfED
         iGMo0mOWIu/jvQCKVtVUn0UQnzCkThz+9od1mme2D2/MZFDmY8gkuqX89GotZ1vrgfu/
         IbVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:subject:references:in-reply-to:message-id:cc:to:from
         :date:sender:dkim-signature:dkim-signature;
        bh=5XhJH5Pfl63QfJSsVoz9yrHAf83/us+u0Sde7nr7aPM=;
        b=EDg3QzZf8joh1r+xATbHAq6Wat/0aPp3TMtXCQr08iien7/IPvGuBAe8v+qHrSk55W
         uE9mk1UW9GpFHa5J75BzYSIYKKZ6g0INITq+G1CVTMDLIFf8oXextliCHsBkUkTh7VuG
         3wZPL1tZIm9/xm1zvqVxPkBGYyoOEBUwYe26z1qn4kT8Yc+5CP/srA2obuxKE09xg4Bn
         UhH6IjuXmMi7mRxClHmME+iaskbnk4x0jL7toqamUOXSwAIcL2UdR9g1X/yb+5XKKr6D
         YFxT3W/+t+HZEzqM/B+1mOvzEpVL+8CeuIPa0aqXbUo5zACaw+icB8uD4QqzJHDWsTzR
         Wr5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UM63F9EX;
       spf=pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5XhJH5Pfl63QfJSsVoz9yrHAf83/us+u0Sde7nr7aPM=;
        b=b/Z8QUzQmCb9ZJT6CI1ySnZ/zF4NRUMHqLLr5s8XriMXlKFBpxGEQwmZwvJI7BvDCi
         vvuh929rKHpU5XjNq4eD3/9KJeyhIO92InIrXG9SDG9JWDePGj4GHjvG5kZeaAJjHt4J
         PATrgABibXCgXl00FLgn31WETPmt6OUd95Pl8v/oCwkPHX+7d8NXm9+XIuvyNsgfw5nM
         OCiaPwUcoFAD59X4ezcb95kJhfkcUOPppKtd/HMcGT8p8RWzTFYh7zaHgJMEyror25tA
         M0/pr6j8/GA1qe3VJBk2G2iGzj7o/G+jkevBceJTV3j4YYKE7RGh8AggE+GhGCZ46JLS
         kjCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5XhJH5Pfl63QfJSsVoz9yrHAf83/us+u0Sde7nr7aPM=;
        b=mc28DmM7pihZQjnHr7FTEvuaIuRipywRTQwPBsCF7P0/FWKImOzX7P5pvV6K728TCj
         59SrzhbhVc0Pq1+Zh0wBamSVUBtEJcTsRFYCkSq3ovoB/OccdQ/7gmqvmzzQ6ZTm6Y8Q
         Sv1JVpRS1q5qoDmW6S/ttFQtCIoTRRrFiZ3t4ye4wcdyVZKhw4wqeICLTvrSlv0ygo41
         mUgPeUiIvQyMlvACrty2LK1LUx+CmcBkr2xH3ivjtM5k/GoYqXyWxPCY3+WMx+P+uZsm
         jxiLwwM1KV586YnDNkYeL8wIhfatisXBCaiDnWyuhTbmBKjyYLsRz03p5EAuGLanXE4j
         2NDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5XhJH5Pfl63QfJSsVoz9yrHAf83/us+u0Sde7nr7aPM=;
        b=JrEyuhY2/O3/7/BHDM52ATKh0u9m9/QvEmIfwrQ4/DhHEaDW5f9RhOydvmwAUq7zpT
         HeeKJKQApP8l2s1MCNTID5aB9NutE/U74CVDs3NaLW21l3v1JbrRGAMMlB7HItonABgO
         WKL2evvCe+KCPbTlJ2+OkH4XYIWC2VmFtdhqJFWxPgoadxrSxrVZN5pbO4ZnD69SF5zy
         /vfKXewIDk4QHMy+HW/7hY8u78/7jCTze999eU1OwSUOCtGLNwaaOeY7Z10xFZhdxAYO
         sGRTABfF9LeABvn2hRD3vow0ZGrr14FzhELd14KoUOPpCrckGRz1iR0Vtx5Lsv7/turS
         0zdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJsTcFgq2HVVcIxs0zgYCtkxpMraa9xlvRqLe0ao3HcH8dzuhh
	6fOiPd8Ydygiu8md4YSDRY4=
X-Google-Smtp-Source: APXvYqwfVDTKtkfiZSZcEmmmmPQ57w5f9R0iWnl7Yi00L6flmO4C9gZ0vnvgxGsCOUURS76unrqV5A==
X-Received: by 2002:a6b:ee01:: with SMTP id i1mr25461743ioh.109.1580848402388;
        Tue, 04 Feb 2020 12:33:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba5b:: with SMTP id o88ls7161ili.2.gmail; Tue, 04 Feb
 2020 12:33:22 -0800 (PST)
X-Received: by 2002:a92:ad0b:: with SMTP id w11mr23007578ilh.241.1580848401945;
        Tue, 04 Feb 2020 12:33:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580848401; cv=none;
        d=google.com; s=arc-20160816;
        b=Nyntyee3C4kqAAn0tjjeiu8oo9jDAfvlgyGtwRWAgdRFqJQnraC+uce5YfcK8sOcgk
         AABFKK46aPs9QXu22wcMPgWGYcWVzwXOXHrUnrSJ0CEHcn2EOdJlN0RcvPcsyXCqQUCG
         jmA1tp7RqOEiWgVL7GhSooVlXlQHBHy16niYo9tRh6LQdDpg0xtNAWq+t02F2pPCaWXQ
         J1/B+Mb4/ZXsHveqSHX6/nX3jw6i1MYUXSUo4PT7mzJxB5gKOO2LPQhlKNvspQhY0GLX
         W8z8PokqbjNIIils5v7uFTMyeWB4qgc2LTzy+M0bn09JlFVz45ITk7wr4u8r8vNmiy8g
         psUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:dkim-signature;
        bh=4Y76WudeWCG5zXmxP2Nw4YSkfa14RC4kqB6t3Lg4X9M=;
        b=djtB4LzjBCTXUF1GUVScZlwKq3M+lpWE4bwCimf1D+/fYphfAp1SkNnuugWmCfUIdo
         Eh8Kt/zQ55Ml+B3ho9lvLLO0Hfn58f3TMlr4MZhnOLDHcsakrWU8SBxEMkLv6YN5cHl1
         XkabooFYYrit0aiglNn7X1MO4AVA31IGdxAdJ9G9jA9O0lQbHOJciampcX0kk89YtcIj
         Or08s32tvHL5UMe7kCIAG8wqj140rzZRBGEMxnCiTzL6XziQ8178IfDY7a70SBthbckR
         EGvwq/btZDzaOiQoyCSpG0Xh2TyeoPCqKWTB8ZLBLbljP7hfrH1n6x0ti7EZ37n8fOkC
         QpZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UM63F9EX;
       spf=pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id g12si1015932iok.4.2020.02.04.12.33.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2020 12:33:21 -0800 (PST)
Received-SPF: pass (google.com: domain of john.fastabend@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id 12so1907248pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 04 Feb 2020 12:33:21 -0800 (PST)
X-Received: by 2002:a17:90a:a78b:: with SMTP id f11mr1202943pjq.8.1580848401174;
        Tue, 04 Feb 2020 12:33:21 -0800 (PST)
Received: from localhost ([184.63.162.180])
        by smtp.gmail.com with ESMTPSA id v9sm4620636pja.26.2020.02.04.12.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2020 12:33:20 -0800 (PST)
Date: Tue, 04 Feb 2020 12:33:13 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>, 
 Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>, 
 Alexei Starovoitov <ast@kernel.org>, 
 zlim.lnx@gmail.com, 
 catalin.marinas@arm.com, 
 will@kernel.org, 
 Martin KaFai Lau <kafai@fb.com>, 
 Song Liu <songliubraving@fb.com>, 
 Yonghong Song <yhs@fb.com>, 
 Andrii Nakryiko <andriin@fb.com>, 
 Shuah Khan <shuah@kernel.org>, 
 Netdev <netdev@vger.kernel.org>, 
 bpf <bpf@vger.kernel.org>, 
 linux-arm-kernel@lists.infradead.org, 
 LKML <linux-kernel@vger.kernel.org>, 
 linux-kselftest@vger.kernel.org, 
 clang-built-linux@googlegroups.com, 
 kernel-team@android.com
Message-ID: <5e39d509c9edc_63882ad0d49345c08@john-XPS-13-9370.notmuch>
In-Reply-To: <CAJ+HfNh2csyH2xZtGFXW1zwBEW4+bo_E60PWPydJkB6zZTVx3A@mail.gmail.com>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
 <CAJ+HfNh2csyH2xZtGFXW1zwBEW4+bo_E60PWPydJkB6zZTVx3A@mail.gmail.com>
Subject: Re: arm64: bpf: Elide some moves to a0 after calls
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: john.fastabend@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UM63F9EX;       spf=pass
 (google.com: domain of john.fastabend@gmail.com designates
 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=john.fastabend@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Bj=C3=B6rn T=C3=B6pel wrote:
> On Tue, 28 Jan 2020 at 03:14, Palmer Dabbelt <palmerdabbelt@google.com> w=
rote:
> >
> > There's four patches here, but only one of them actually does anything.=
  The
> > first patch fixes a BPF selftests build failure on my machine and has a=
lready
> > been sent to the list separately.  The next three are just staged such =
that
> > there are some patches that avoid changing any functionality pulled out=
 from
> > the whole point of those refactorings, with two cleanups and then the i=
dea.
> >
> > Maybe this is an odd thing to say in a cover letter, but I'm not actual=
ly sure
> > this patch set is a good idea.  The issue of extra moves after calls ca=
me up as
> > I was reviewing some unrelated performance optimizations to the RISC-V =
BPF JIT.
> > I figured I'd take a whack at performing the optimization in the contex=
t of the
> > arm64 port just to get a breath of fresh air, and I'm not convinced I l=
ike the
> > results.
> >
> > That said, I think I would accept something like this for the RISC-V po=
rt
> > because we're already doing a multi-pass optimization for shrinking fun=
ction
> > addresses so it's not as much extra complexity over there.  If we do th=
at we
> > should probably start puling some of this code into the shared BPF comp=
iler,
> > but we're also opening the doors to more complicated BPF JIT optimizati=
ons.
> > Given that the BPF JIT appears to have been designed explicitly to be
> > simple/fast as opposed to perform complex optimization, I'm not sure th=
is is a
> > sane way to move forward.
> >
>=20
> Obviously I can only speak for myself and the RISC-V JIT, but given
> that we already have opened the door for more advanced translations
> (branch relaxation e.g.), I think that this makes sense. At the same
> time we don't want to go all JVM on the JITs. :-P

I'm not against it although if we start to go this route I would want some
way to quantify how we are increasing/descreasing load times.

>=20
> > I figured I'd send the patch set out as more of a question than anythin=
g else.
> > Specifically:
> >
> > * How should I go about measuring the performance of these sort of
> >   optimizations?  I'd like to balance the time it takes to run the JIT =
with the
> >   time spent executing the program, but I don't have any feel for what =
real BPF
> >   programs look like or have any benchmark suite to run.  Is there some=
thing
> >   out there this should be benchmarked against?  (I'd also like to know=
 that to
> >   run those benchmarks on the RISC-V port.)
>=20
> If you run the selftests 'test_progs' with -v it'll measure/print the
> execution time of the programs. I'd say *most* BPF program invokes a
> helper (via call). It would be interesting to see, for say the
> selftests, how often the optimization can be performed.
>=20
> > * Is this the sort of thing that makes sense in a BPF JIT?  I guess I'v=
e just
> >   realized I turned "review this patch" into a way bigger rabbit hole t=
han I
> >   really want to go down...
> >
>=20
> I'd say 'yes'. My hunch, and the workloads I've seen, BPF programs are
> usually loaded, and then resident for a long time. So, the JIT time is
> not super critical. The FB/Cilium folks can definitely provide a
> better sample point, than my hunch. ;-)

In our case the JIT time can be relevant because we are effectively holding
up a kubernetes pod load waiting for programs to load. However, we can
probably work-around it by doing more aggressive dynamic linking now that
this is starting to land.

It would be interesting to have a test to measure load time in selftests
or selftests/benchmark/ perhaps. We have some of these out of tree we
could push in I think if there is interest.

>=20
>=20
> Bj=C3=B6rn


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e39d509c9edc_63882ad0d49345c08%40john-XPS-13-9370.notmuc=
h.
