Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEFRVCAAMGQEP4WFOCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1D22FF941
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 01:13:06 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id b4sf2517597pji.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 16:13:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611274384; cv=pass;
        d=google.com; s=arc-20160816;
        b=NDvMEu1UUtjILTW/BbnTC1C543yXnZK2WwSzboTcPOxu4gBP3nq8pM5Z4j9ov0OEmv
         wx3GfC7V2WS2FThYO2L3VgXbTzTcDuCky/q1amgNRvUIvSVkTf2eIBpZ4x6B1mG8SRy0
         UM9ciWf9gYuNixVaGNHh7UKuKHgy7gyHmPrREl48elrQ8sXM20CJYzwOB3uPpK9TkBtz
         gaMjoyQTInni8qqp4qWlIcSzjHoNtCyxRfzFJDtC71jzEZjUBsv9qtPIkVS9TpyTmHlj
         oKtiYEYfEQnwsCs4INU8t3LIac8gmLlAioA+VVAta9PrvmtKnNuMtWexqrC3ZolBdR1g
         56HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3HqkgvO1lUovTYwHX1g21aUPYN3RpCi5rvKpd1N9DN8=;
        b=FqdnUATjDWhufdVHOTIN6YCEk/TknNWHpUiIbh+38Wo6K3m6TvE7bYVGAtv5APwNG/
         LepoCAFlrtIXGE+rIAfn/fjOl/tlZSibu6tDZKpx4s44j7WT2viowNdvaoxdDldctiGy
         xqUndNyinzcXyNA+p1OeIZh9UTdztKGNf68A1U0c5D+xxjcQatoWph9i1xsv/LXTfAC+
         JePtmiWqmFd4h7inpBtMu5l4XqrlKpaJEslIdTVJD2or/i0iFDuuY1Cg7V4sBR5YfcSr
         vlCQv+2HM2ToDyavFuETSWXYjtlKKwf13tgqZRQja35DIKtSclkyyD/sLn7m1hCxoHIf
         nJlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lF7PPJEx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3HqkgvO1lUovTYwHX1g21aUPYN3RpCi5rvKpd1N9DN8=;
        b=ZBk43c6JgdoBO+tD/7EvcmaYuNamkhh+MC/XqjBFzwwj349T5ZszlPODPct/nH6ShV
         Srp17bSWCU02r6F6Tzn0In8DmHljAx9V7UzJCToYea3NKmSGqkxvx+O3NEL85DgpmffO
         7UCbDk9hblm69vrX9QS6iFfnW1ISnVuyg6YF8xZ70ZsYUHUOK79vg5Zcl7zjIg4p+VKE
         QLHnE1PnH0djbKesruXlcx1IoK8/zW/heekTpaOwZnQZ0m3NArrXCU307FgL6AY/pQHF
         1C6AH8j3THRemHCvYUGgvIwPDc2Z1HpoxDaDypxEhlP8OGv4gZIT8eqBYwbYXZCGk06b
         //gA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3HqkgvO1lUovTYwHX1g21aUPYN3RpCi5rvKpd1N9DN8=;
        b=K4fty7v9+HbNtmBSj6tpooUwAoAwuDKv3BP6tGzkADMIk3GZtT4CuOWDzu5uW8ACx3
         rtFfqrVhoEhggLg+W4pb11fke24GRxky3RvsooWrDEOUeiGUiOyVEpo9Q+NLi02C1LNP
         SHo3OqKWO3Ai0JgJIyioBt6TgP/trQAWWK23ubhCrSEHhDdN2exEkEq+0QbY6R1vBelG
         yPQLztkQdRgN+EuPNY67tzI1euKOOM98TDjLi6uYvMMu1OHibaFvumo9KuekCW+6ZD23
         vOqPMKfzxWoSS0hS8HXxmaIYtyWo74uBvNW1Nsjv5kWanE2lXpKJUo9brwsVIegTaw+G
         N7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3HqkgvO1lUovTYwHX1g21aUPYN3RpCi5rvKpd1N9DN8=;
        b=Xkk7FSF94rQL2C/HNHLDtcS1fRkHtfShhpqqVNAz5VSZpdu3dQYCFosB2P79NxHJir
         IPlNM1+bIduG6uAey2chu/PYFKEYBVBrQeA78jeY6YYQVoeorAsUVmOHh0+5ev8DhYkD
         cFyNegID9zjDtc3r5/cyehQZFij62XT6dOcFWbJkfxYm2MDtLz9+J4gSlAPT6z7YuDdz
         rLlYJiPkOf7SQy10dGbgbGkVDbJ5bOjTkDzCG7kWh87IfouFis3/18uh4VP+75oOusaI
         PKck4w3OvsWXsykvW0zR/GDYgvOS57iVPDKcdLsnHVvFo6W40P1g4QbFGbQ9fnIaXF4l
         4U9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oUZKpNdpTWzWvd3idSi1Gi4V0QmSy8riMpT8gBR+WX/V75egu
	wVmPABNvyLomB3kYRd4NL7o=
X-Google-Smtp-Source: ABdhPJxJU1wVjLucKMHoG9hqBqf392smuWtELTfnz9t3lDP3irAE0RBdQEE3vxVvggoTAk2qkIyQJA==
X-Received: by 2002:a17:90a:6c26:: with SMTP id x35mr2223336pjj.52.1611274384632;
        Thu, 21 Jan 2021 16:13:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9309:: with SMTP id 9ls1422588pfj.0.gmail; Thu, 21 Jan
 2021 16:13:03 -0800 (PST)
X-Received: by 2002:a62:2f07:0:b029:1bb:5f75:f985 with SMTP id v7-20020a622f070000b02901bb5f75f985mr1972074pfv.76.1611274383551;
        Thu, 21 Jan 2021 16:13:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611274383; cv=none;
        d=google.com; s=arc-20160816;
        b=c5AKrFiMQQfhTGieXBKUB9x/9kLzIdqEZDCtRRYnneOGPefnAuUfG7dV6EVo3QVnfK
         x/YXb0coKl58pK00hGsdvxWor1t3XemxHkxH7cNjCCJQUX+ohERYU6aeuxeoe1TvbZ52
         fzT8jG8UljbcUDUTaonpWrBM78WpjmhK4U6FVdKvFw4tysi5C8Rcm9Xzu4+ooWRzPhuJ
         6AAOtUIYij8So1mkky3pLtLDM+E7fH7kGrI7Tbn28prF2Qxx0NZDiIGqcbgctR0yRZgV
         XMKccs8IZc2hD2z05tVsGZvdrFBEi0pgHYSryGcTlHbB3m11GTSQj6mAtAgGNM32myKq
         YONA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rg4F4fY1x1Ys+AVDMAzCYT98XvORKJFOa8hJzzR365Y=;
        b=iX5Dgt4KDrh8nm8W53/AJAA1AXLsLRTDlJaVW0gfInmSlI4Q+PXRRmW8xJ2GH8sM3F
         Bt0i1LJiTvyWwHu0VWnlXIn1JkFxyLhkYWH1CAylOdOTbqu8Zdx7Y2qvR76gQeFSQ7f1
         zB242y6JaEAGGb3Og+dA7sox5h7vPkBcIky+a62HR2K81nfR+HOL9SD1tPjd9UpJx9Sl
         ye1t1vf4nQOpJFkHrsWGY6t3UJ2ZeBRVatMhO8/cKq5/mWNFGdTfrDK2U/ect2DHFKKn
         d5IUO67C4AGA5nM87WZ6uLnAcwGmfztWADMQXoI8yGtdqyApFWfr7Jr2InIME10F5TgA
         cWPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lF7PPJEx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id w2si129641ply.1.2021.01.21.16.13.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 16:13:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id h11so7712334ioh.11
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 16:13:03 -0800 (PST)
X-Received: by 2002:a92:d990:: with SMTP id r16mr1914693iln.10.1611274383015;
 Thu, 21 Jan 2021 16:13:03 -0800 (PST)
MIME-Version: 1.0
References: <20210116095413.72820-1-sedat.dilek@gmail.com> <20210120223546.GF1798087@krava>
 <CAEf4Bza2W061YpxtUx9ZKQUtE0-tS6gf4yg2Le_2g4kyi3FhnQ@mail.gmail.com>
In-Reply-To: <CAEf4Bza2W061YpxtUx9ZKQUtE0-tS6gf4yg2Le_2g4kyi3FhnQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 Jan 2021 01:12:51 +0100
Message-ID: <CA+icZUUGKn4DiBGN8Tq3yrh0NH2Fqboaigwm4Q3yceDJVe9dAA@mail.gmail.com>
Subject: Re: [PATCH RFC] tools: Factor Clang, LLC and LLVM utils definitions
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Jiri Olsa <jolsa@redhat.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Shuah Khan <shuah@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Quentin Monnet <quentin@isovalent.com>, 
	Jean-Philippe Brucker <jean-philippe@linaro.org>, Tobias Klauser <tklauser@distanz.ch>, 
	Ilya Leoshkevich <iii@linux.ibm.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
	Yulia Kartseva <hex@fb.com>, Andrey Ignatov <rdna@fb.com>, Thomas Hebb <tommyhebb@gmail.com>, 
	Stephane Eranian <eranian@google.com>, "Frank Ch. Eigler" <fche@redhat.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Davide Caratti <dcaratti@redhat.com>, Briana Oursler <briana.oursler@gmail.com>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lF7PPJEx;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
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

On Fri, Jan 22, 2021 at 1:04 AM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Wed, Jan 20, 2021 at 2:36 PM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Sat, Jan 16, 2021 at 10:54:04AM +0100, Sedat Dilek wrote:
> > > When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> > >
> > > While looking into the source code I found duplicate assignments
> > > in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> > >
> > > Move the Clang, LLC and/or LLVM utils definitions to
> > > tools/scripts/Makefile.include file and add missing
> > > includes where needed.
> > > Honestly, I was inspired by commit c8a950d0d3b9
> > > ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> > >
> > > I tested with bpftool and perf on Debian/testing AMD64 and
> > > LLVM/Clang v11.1.0-rc1.
> > >
> > > Build instructions:
> > >
> > > [ make and make-options ]
> > > MAKE="make V=1"
> > > MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
> > > MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"
> > >
> > > [ clean-up ]
> > > $MAKE $MAKE_OPTS -C tools/ clean
> > >
> > > [ bpftool ]
> > > $MAKE $MAKE_OPTS -C tools/bpf/bpftool/
> > >
> > > [ perf ]
> > > PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/
> > >
> > > I was careful with respecting the user's wish to override custom compiler,
> > > linker, GNU/binutils and/or LLVM utils settings.
> > >
> > > Some personal notes:
> > > 1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
> > > 2. This patch is on top of Linux v5.11-rc3.
> > >
> > > I hope to get some feedback from especially Linux-bpf folks.
> > >
> > > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > ---
> > >  tools/bpf/bpftool/Makefile                  | 2 --
> > >  tools/bpf/runqslower/Makefile               | 3 ---
> > >  tools/build/feature/Makefile                | 4 ++--
> > >  tools/perf/Makefile.perf                    | 1 -
> >
> > for tools/build and tools/perf
> >
> > Acked-by: Jiri Olsa <jolsa@redhat.com>
> >
>
> It's pretty straightforward and looks good for bpftool and runqslower,
> but I couldn't apply directly to test due to merge conflicts.
>
> Also, which tree this should go through, given it touches multiple
> parts under tools/?
>

Sorry, for the conflicts.
AFAICS I should do this again against Linux v5.11-rc4 vanilla?
Is this OK to you?

Good hint, cannot say through which tree this should go through.

- Sedat -

> > jirka
> >
> > >  tools/scripts/Makefile.include              | 7 +++++++
> > >  tools/testing/selftests/bpf/Makefile        | 3 +--
> > >  tools/testing/selftests/tc-testing/Makefile | 3 +--
> > >  7 files changed, 11 insertions(+), 12 deletions(-)
> > >
> > > diff --git a/tools/bpf/bpftool/Makefile b/tools/bpf/bpftool/Makefile
> > > index f897cb5fb12d..71c14efa6e91 100644
> > > --- a/tools/bpf/bpftool/Makefile
> > > +++ b/tools/bpf/bpftool/Makefile
> >
> > SNIP
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUGKn4DiBGN8Tq3yrh0NH2Fqboaigwm4Q3yceDJVe9dAA%40mail.gmail.com.
