Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMNSZCAAMGQEQGXWIOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6C3306ABF
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 02:53:54 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id o3sf2395979pju.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 17:53:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611798833; cv=pass;
        d=google.com; s=arc-20160816;
        b=JjMm41Swi+pWLXHZRveuA6/wZHZJcKb8I4IZsBZQLRv2cGUz1HPAUdJ6JaCU1CJcjV
         ThxbPfr+c+n2d437S22yIyHwfqom4JuIKIQCobed8CpunI1fN8zFjo1ls+yLgIItunah
         X2nWvDJ3MHVD9cmBilQnt1e2Fck70La7zoUsMBFtqfwCXNyUbGXEFX225k5Azkwcd4fj
         gw9A9gKmQvkF2tpefpWJ2s7yk0JFdJoNvwZX4AfAzfOGaE8eJBNKvmxIvKlKjqhW8y1Y
         S06yL9p1JMaSJcE565JOsjwHqm4zrS1OmFOZrvJde1cqVlW3CcYEwQiXol0rEJY3EoYr
         MDUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0XMDQEfwMDB6/U6KZud64U649zEhZhoo3tmql68Ocl4=;
        b=cghrokEqrWysVTn1R2z8+e3A3vi/GcobJe967dq4SsKnRw76683f/6JP02j+izDwj6
         kzSvCwOAdjunmXVXB/4bs196VGxbgB9Z8uqsAbbGp7J0SdBQpXteBw+pnmIvIx4FMi1p
         3Bx1RYOxhL8TVBBaJLycC+ey3UE0lHLf7eDpTLmJcWdq44U/Q8t04B/q0oOtU0Y1DTX+
         agaoqbuR75/QGfhspEsLKR1s75dSVVChOlR+eY2MbUDTVCIGaGMkFyjS9AEnVQx7b5Jl
         edqMIj62mP6d5bLLvg1Ic4XDcn88+sBh1LFo94qq66QJmoUTlt13YKtYWIASb3X9Pc2R
         gHyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e8bFsEyM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0XMDQEfwMDB6/U6KZud64U649zEhZhoo3tmql68Ocl4=;
        b=gJ8x+ohxB8wgipZOYgqazOK2UH51JnGJjqKs1D+jh6TtCrMe/4BOKmspvtwYms/9jG
         /E7fB1su652GoVSsOwNB1D1c4XmQCpEueasjR0wbF0Br4mJm9S9Xrspu7V43TfNndPqT
         6SBrWRbHFEd2oo8IDBQLw26bVG0UOMeL8VvDHznFm/F1I8Rk6bPzBCaG7DBGdJsZWcCW
         RJg00j53SmW6XlRYGtFiVzbV6+3KW5gwxmDrUqdbvCA5gjHqzpg61HMxhanw9GZda5Qr
         Yg24bhoNBhvu3OPyXGHJDESvEOIvT/ENknYor8ZtvEE4dU+STB0BlsOav3OQ749alDlA
         197w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0XMDQEfwMDB6/U6KZud64U649zEhZhoo3tmql68Ocl4=;
        b=vFNKeBHFdHM93MqxfyyUfeYgvSZoYVq2aN7SiPc8k9D0hvwV79i8P39aqM306B2JzQ
         +5PayP1YZuSyEzeXXM8GFSJS84zfxHkWr8v7moQuvh4HwK4yXrzJWSDagnNfajBk3wCZ
         UBiVpxxV7TbrW7a42I89vFJcPClmjmmF/c3FcJ+oaxprdG+XnZVVJlu3aTpMFZAhdcyU
         Jkq7Mu3qUWZxhjUhOMwORhrhzXAreZi5SVIkdAr01vxYXebm/Mn1LVXUzoIVHumqiRJK
         aAhQ00dXjMWkGBC8ZXMdPpltt3K5H/zhGec3HrmxPj7R+pVDAsg6Jb7OBmjBqFsx++iL
         dozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0XMDQEfwMDB6/U6KZud64U649zEhZhoo3tmql68Ocl4=;
        b=UA+lPANAiXUIJ1SKyKvvbn6o0SAjOuzZevt851v2Q0VqyNYzhTiVLctaEj3gZXmTjX
         5MaJf9FbcoWB8uvjOXfE2ojLkQFEiJE+aVWo2zwn8B3xoTgDbjEGjZ3OWFxYKCHv/j+6
         QtjtcSmY3SL9MiTNV8dODMeA7YiyKB36EfhWYpU+Ph8cp9AqFtnaJTWjB/2BT//T4PhG
         vJDEQ/kd0wPesJEcU3hWqIvWTm0b4xa9khD2klWsBQ6qKbamFA+eXW6vI6Ogsy7l2YxD
         QQXPd4PNAAExGAm/18/L5oFR6Ac0k9WDCR+sKGdYdOFqJ7BkmZepZkLj+sxIsm2HeAlk
         zUgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hXs2oKDKq3Ceg3kdXGcpfkPQ/z1Vx+wTyALhdwIllzzbm7tCy
	4Addzw7EKBMzEh0EJ537Gks=
X-Google-Smtp-Source: ABdhPJwuE52+FyRXGyVs6/fF7J27sk1vDpQZp8Zf8QjfRCJ+e386e84o7mtfe/r/MOuE3Ltq2HjhXw==
X-Received: by 2002:a17:90a:2944:: with SMTP id x4mr8615939pjf.40.1611798833749;
        Wed, 27 Jan 2021 17:53:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cd09:: with SMTP id i9ls1513988pgg.10.gmail; Wed, 27 Jan
 2021 17:53:53 -0800 (PST)
X-Received: by 2002:a65:6a12:: with SMTP id m18mr13890175pgu.178.1611798833080;
        Wed, 27 Jan 2021 17:53:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611798833; cv=none;
        d=google.com; s=arc-20160816;
        b=UcXUiXZDeL+egoGlriJE0uxJddtzsFAy2zIakrMIJwFAOCHFU0sgzwZE+i0HJHJwGe
         TwOyzR71vuVFmTkbV1mGyhyqvAZpMXUXROYg6KbhKFhMIUUaiEg2MTU2DXWa06use+/Q
         Sd4b0XwmPL6UjhYTqp/qIccAsr60cJxGa6ILG0tt+PIv6nBQZ1kaHWEiALjJ641WKqCs
         KPJDmG3W3N0Y5YtZgjLG7qvbdKIpareWe5S713lpmeDTJzylnbkhfNEYRy2igbebIjHL
         yVDfGhaYq2yvT+oCHVan66/FYySrMCu6OrLschwYgSfsYRXpRPRxd7UXJD5bjCbZlTap
         FAvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mPzE75sxLYfUlCv97bbvkWvx0ps9bQE/9kEnSkv6IXw=;
        b=EgNUGFMlTmmmdSsh06fum6jabCgLy1w56zbo8k904dY69ARNFMjB1Zr54IM5lCHYOE
         UFXbqUtC4Mt4VgSvmQYsUN03iTXBheiajmsS85dL/I8/zL/2O5AL/ndCwXXA6P7lAm/x
         Lue02kEaCQ9rvV7aGcYX+qKm3iNNDSYTGqOxrB7bPjRSX7tDKbKg8tNFcGgX/5pqAyxb
         jQvh6Wlag7IPi8SeLiJ7E4UuehlecbArDfgUDNN8Ifdn8a7bTssNM1v45VL5XjlMa7Xb
         QgTKgCQafBSkardtPCQy45TLo5Hg8G0AIK2U5HzG9UD9b48bBLmLKP1EYzxP4tJmTlu/
         M40g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e8bFsEyM;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id n3si182780plx.5.2021.01.27.17.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 17:53:53 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id q9so3805941ilo.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 17:53:53 -0800 (PST)
X-Received: by 2002:a92:c80b:: with SMTP id v11mr10919105iln.215.1611798832520;
 Wed, 27 Jan 2021 17:53:52 -0800 (PST)
MIME-Version: 1.0
References: <20210122003235.77246-1-sedat.dilek@gmail.com> <CAEf4Bzb+fXZy1+337zRFA9v8x+Mt7E3YOZRhG8xnXeRN4_oCRA@mail.gmail.com>
 <CA+icZUWVGHqM00qd7-+Hrb9=rkL6AvEQ7Aj8zBK=VPpEi+LTmg@mail.gmail.com> <CAEf4BzZ0S-SzVy=Ym0x27Ab2QS8vwA66OzX4KjC88nSg7wD9SQ@mail.gmail.com>
In-Reply-To: <CAEf4BzZ0S-SzVy=Ym0x27Ab2QS8vwA66OzX4KjC88nSg7wD9SQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 28 Jan 2021 02:53:41 +0100
Message-ID: <CA+icZUVYdFEZ_P_JVNO4cCrPw=JD-XMf1560cHuqOM8GbniP+Q@mail.gmail.com>
Subject: Re: [PATCH RFC v2] tools: Factor Clang, LLC and LLVM utils definitions
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Quentin Monnet <quentin@isovalent.com>, Jean-Philippe Brucker <jean-philippe@linaro.org>, 
	Tobias Klauser <tklauser@distanz.ch>, Ilya Leoshkevich <iii@linux.ibm.com>, Andrey Ignatov <rdna@fb.com>, 
	Stephane Eranian <eranian@google.com>, "Frank Ch. Eigler" <fche@redhat.com>, Thomas Hebb <tommyhebb@gmail.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Briana Oursler <briana.oursler@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Davide Caratti <dcaratti@redhat.com>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=e8bFsEyM;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::129
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

On Thu, Jan 28, 2021 at 2:41 AM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Wed, Jan 27, 2021 at 5:30 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Thu, Jan 28, 2021 at 2:27 AM Andrii Nakryiko
> > <andrii.nakryiko@gmail.com> wrote:
> > >
> > > On Thu, Jan 21, 2021 at 4:32 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> > > >
> > > > While looking into the source code I found duplicate assignments
> > > > in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> > > >
> > > > Move the Clang, LLC and/or LLVM utils definitions to
> > > > tools/scripts/Makefile.include file and add missing
> > > > includes where needed.
> > > > Honestly, I was inspired by commit c8a950d0d3b9
> > > > ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> > > >
> > > > I tested with bpftool and perf on Debian/testing AMD64 and
> > > > LLVM/Clang v11.1.0-rc1.
> > > >
> > > > Build instructions:
> > > >
> > > > [ make and make-options ]
> > > > MAKE="make V=1"
> > > > MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
> > > > MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"
> > > >
> > > > [ clean-up ]
> > > > $MAKE $MAKE_OPTS -C tools/ clean
> > > >
> > > > [ bpftool ]
> > > > $MAKE $MAKE_OPTS -C tools/bpf/bpftool/
> > > >
> > > > [ perf ]
> > > > PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/
> > > >
> > > > I was careful with respecting the user's wish to override custom compiler,
> > > > linker, GNU/binutils and/or LLVM utils settings.
> > > >
> > > > Some personal notes:
> > > > 1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
> > > > 2. This patch is on top of Linux v5.11-rc4.
> > > >
> > > > I hope to get some feedback from especially Linux-bpf folks.
> > > >
> > > > Acked-by: Jiri Olsa <jolsa@redhat.com> # tools/build and tools/perf
> > > > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > > ---
> > >
> > > Hi Sedat,
> > >
> > > If no one objects, we'll take this through bpf-next tree. Can you
> > > please re-send this as a non-RFC patch against the bpf-next tree? Feel
> > > free to add my ack. Thanks.
> > >
> >
> > I am OK with that and will add your ACK.
> > Is [1] bpf-next Git?
>
> Yes, please use [PATCH bpf-next] subject prefix and cc
> bpf@vger.kernel.org as well.
>

Please see link:

https://lore.kernel.org/r/20210128015117.20515-1-sedat.dilek@gmail.com

- Sedat -

> >
> > - Sedat -
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/
> >
> > > > Changelog RFC v1->v2:
> > > > - Add Jiri's ACK
> > > > - Adapt to fit Linux v5.11-rc4
> > > >
> > >
> > > [...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVYdFEZ_P_JVNO4cCrPw%3DJD-XMf1560cHuqOM8GbniP%2BQ%40mail.gmail.com.
