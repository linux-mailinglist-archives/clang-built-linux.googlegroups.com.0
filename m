Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBH5NVCAAMGQEITGUMJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7322F2FF930
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 01:04:48 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id l17sf2208011pff.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 16:04:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611273887; cv=pass;
        d=google.com; s=arc-20160816;
        b=NPZW3vl37eHJ1un0rVVHR6H3EPSRR6hlwh3VY+WseriTYejT1ed3NrPTloo1KOOd4K
         okl1x8KTkMtTYjLzwSGM6wwqR/0r7X6v47wdtIN46LUf1sBnlexJRnmZwDyxmQKOMxvn
         uQ831p1eL0cGFhrqfhOenFZT8PElhG+AnPGNcCuwZY3015Y2k5BGcxooWme7J66veyou
         VD5q1IWcMJ5KJnyWeXWgXlNbFCEIPlyjDIvvvTvur2yAt5n4T3hIRZmKoA+ah5vKwnSk
         lOlBuiI8mmSjR9nPO7KY/MS1zHxdK6sOdQbrhaZrAR3kiN4yLIP0ln883UNsyuOhwwZp
         zrbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3jRlPWvGL2mAeH7OF42CyhIJNRJmrpIOS4tRgf6Aj0A=;
        b=us1y7/6o95TLjw9s6riSkJhEYGsOVxNKfkfFLsm1/Y0Mh96yip6/SPB9w7KtmTG+8g
         ycK1M+bxea67bMwnEuZi7O9ymTCSrzvwjhQQMbbyvvHkE4Zxc2gVtA36mBrp47caHPFQ
         Mca9jKtpK7/vF71l/N2wRAY2fr7UWGtSQw4UaOHdPQt/fiHQQ+7FycMNXWKpxtJr2w5m
         rXOEkBA20xb2hAZzgbWvdhaw1GowOHgHYcPH9U0oXSJqb+kLPMn/HD7A8800pS2KFEyu
         VcrBpoEjEb/v5zU6bnvQULpTCyveoPj5CYG7RSxP8wjttdGIzC7WBRudWDbkIymFWqMY
         fo9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WEZB+ES+;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3jRlPWvGL2mAeH7OF42CyhIJNRJmrpIOS4tRgf6Aj0A=;
        b=nvyrbvPk2sGNh+XBI2kPYoH/o7TET+gDXU8H8FYBkToFe+6NtNpwb190I/Kpo+h73Z
         teZX0O41WU0TrAexBhK1vZc8axCfNo0EwOiqbhu0LpMg2ea6uRh7G/BVC4DqqCQGwRQf
         fmcBpL825lCdizDc10mDVVW+LF8spWQn8YaRpiVWliv/LImXu4mHtqXyz9Hu7YcVESta
         v9HUlOGigT5R4BUMgQSosf86nV7zTDsi2AsBAib02cIDoTdpnMx2zP7Ia61rfMLgC54e
         LrNyycNSQAg0BjMPU8uQk1BQRM1swtiCEHJaj/a/egoK30kd6fZqOlOxiOG23CZSCVQ1
         6QzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3jRlPWvGL2mAeH7OF42CyhIJNRJmrpIOS4tRgf6Aj0A=;
        b=bPvNcxf95vfIN1THMzdsRHNrtkz6AjtK2m/QjnJsz472Qd5f3G0gwFqR0Mf65X94fU
         dy57s1IKtl/Lth++GK7z1yrP4CKb4N4GaAGY7DlKq555F36pc/mmWT05w9JkW4aYXETK
         X7aFo1jgRMs+mKYmGBS4DI55rUSF4q/GbKHDLFwpYZPPgAZV43PW6+4uCBhiTHH6qbCT
         mZeQgw6gJAkmWwfdeghM/pUZyyVlMGWokUkbTDgxjSdMDVKTdb797IQZf33aewM+JKoH
         iGRo9PwCcrDF7RMkQPJzuUADQVUKC9XZP0X8fR2DUMhJJRZJXfVhnFAc23rpPAYUhcRT
         bucA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3jRlPWvGL2mAeH7OF42CyhIJNRJmrpIOS4tRgf6Aj0A=;
        b=sLUuwD2t06+MAB/1WwvfD1LIEyen5JdOs4pSsQbSNNboDHf9dg8QRvZ7ncFesW/mBZ
         mPS7B3iJulUjlt4ri4MVu7ANHl6I8XMp/5Jz+GLXvEu3fojnvg5JCrjAdm6GakH4H9NZ
         QRhdHfYJlSYJJLttX5rYObvmvYtBBdYdbIPg7pRFOSaU9NfjGYCWAT5spPMEFu8Xjg12
         jFLyFPalb+gB0j6wkdWn48KACVg4PRljWNWs00BOIwJeOVhVA2t5Nkw6YAYgcOsMdi8X
         Moy9Wsk7MLo/G5gRd2Heo9sv1ANDRrK4o00O+34lb7X8s3mzg7cBJaIc3t5DKQZR1pcl
         UamQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lHwuWmpl9tzGCFrXEkRD4wSvP+gcJuPHnEXLoY1qm0JwpHv3B
	REvsSnWjh66f6yQ3UnwEnoA=
X-Google-Smtp-Source: ABdhPJw1B0+Ztc9wd1XgGPT89U/aNDghVpLhjhEZPYdoHn34mw9tLAA7sYyY7XjN3p/thAljD7k6fg==
X-Received: by 2002:a63:d903:: with SMTP id r3mr1838631pgg.445.1611273887173;
        Thu, 21 Jan 2021 16:04:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7904:: with SMTP id u4ls1397008pgc.11.gmail; Thu, 21 Jan
 2021 16:04:46 -0800 (PST)
X-Received: by 2002:a62:760f:0:b029:1b7:a967:6162 with SMTP id r15-20020a62760f0000b02901b7a9676162mr2034757pfc.60.1611273886425;
        Thu, 21 Jan 2021 16:04:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611273886; cv=none;
        d=google.com; s=arc-20160816;
        b=I9OksCSALkRiv3ADiuocYfW71MUqQBlAAujmH9p2fXLRkowK6qnS0mbxwmPBmPjVBd
         y103bko9qbhau87ke95nn5zDOy/gAo3wxpptJgh50EVDIzW+jCdp5fK16MT2osEwuMLl
         cNV3O/7XpY2Y0G4e0RnZ3i/JqevDVUGGYcPAQZcncWQibFucqWjb/x3wqQGKRGTxxTew
         CHN8kQC2foXhzxKFUF3hEusbX/TVSeRAL9olWFxCHEoiUZhKygXSpXGdthgpkIvrab+N
         ITJV7Pe0i33yd44AlsxByVi2BXnZ2qGbKDMHCYFZxuubtASAei3tzGWRO64p4gaHCAk3
         z0WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B+c6Vsc2Hr1NYtehFNtn1wrNndygwXtWUpkJB2b6HZE=;
        b=p6DzXmuzTGbrYslBnk8m8S3hIKOYIqblG84U5OARe747LlVzIvyia3Wz8PsAHIa04c
         o1dUEkzVzIlv5hKJrx12viGqDQubIsjx4UdMvq0i2Mmigg/IT9KsaeDlUJrSI/LormVV
         O+ipgW6RhsQy8QHr5TXNqrvjtC+ffGroIoYJhhSotboAuOXe/tumVowvmL4Gjugq77Fr
         6mls4WZsdENL+Jxi6WPPWFKot9l+My/XED6Q5G5S/vsC15qL82Ggq7Is37GZnB9iENSY
         7+m9N2frsRvWcfBdCP/8vdCjhhXZFzhq6Uf4IUTQAR+KvT/QMceOR7xkwGIRex+ZcwDF
         eVww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WEZB+ES+;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id m63si368933pfb.3.2021.01.21.16.04.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 16:04:46 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id r32so3815486ybd.5
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 16:04:46 -0800 (PST)
X-Received: by 2002:a25:d6d0:: with SMTP id n199mr2624997ybg.27.1611273885731;
 Thu, 21 Jan 2021 16:04:45 -0800 (PST)
MIME-Version: 1.0
References: <20210116095413.72820-1-sedat.dilek@gmail.com> <20210120223546.GF1798087@krava>
In-Reply-To: <20210120223546.GF1798087@krava>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 21 Jan 2021 16:04:34 -0800
Message-ID: <CAEf4Bza2W061YpxtUx9ZKQUtE0-tS6gf4yg2Le_2g4kyi3FhnQ@mail.gmail.com>
Subject: Re: [PATCH RFC] tools: Factor Clang, LLC and LLVM utils definitions
To: Jiri Olsa <jolsa@redhat.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Alexei Starovoitov <ast@kernel.org>, 
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
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WEZB+ES+;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Wed, Jan 20, 2021 at 2:36 PM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Sat, Jan 16, 2021 at 10:54:04AM +0100, Sedat Dilek wrote:
> > When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> >
> > While looking into the source code I found duplicate assignments
> > in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> >
> > Move the Clang, LLC and/or LLVM utils definitions to
> > tools/scripts/Makefile.include file and add missing
> > includes where needed.
> > Honestly, I was inspired by commit c8a950d0d3b9
> > ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> >
> > I tested with bpftool and perf on Debian/testing AMD64 and
> > LLVM/Clang v11.1.0-rc1.
> >
> > Build instructions:
> >
> > [ make and make-options ]
> > MAKE="make V=1"
> > MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
> > MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"
> >
> > [ clean-up ]
> > $MAKE $MAKE_OPTS -C tools/ clean
> >
> > [ bpftool ]
> > $MAKE $MAKE_OPTS -C tools/bpf/bpftool/
> >
> > [ perf ]
> > PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/
> >
> > I was careful with respecting the user's wish to override custom compiler,
> > linker, GNU/binutils and/or LLVM utils settings.
> >
> > Some personal notes:
> > 1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
> > 2. This patch is on top of Linux v5.11-rc3.
> >
> > I hope to get some feedback from especially Linux-bpf folks.
> >
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > ---
> >  tools/bpf/bpftool/Makefile                  | 2 --
> >  tools/bpf/runqslower/Makefile               | 3 ---
> >  tools/build/feature/Makefile                | 4 ++--
> >  tools/perf/Makefile.perf                    | 1 -
>
> for tools/build and tools/perf
>
> Acked-by: Jiri Olsa <jolsa@redhat.com>
>

It's pretty straightforward and looks good for bpftool and runqslower,
but I couldn't apply directly to test due to merge conflicts.

Also, which tree this should go through, given it touches multiple
parts under tools/?

> jirka
>
> >  tools/scripts/Makefile.include              | 7 +++++++
> >  tools/testing/selftests/bpf/Makefile        | 3 +--
> >  tools/testing/selftests/tc-testing/Makefile | 3 +--
> >  7 files changed, 11 insertions(+), 12 deletions(-)
> >
> > diff --git a/tools/bpf/bpftool/Makefile b/tools/bpf/bpftool/Makefile
> > index f897cb5fb12d..71c14efa6e91 100644
> > --- a/tools/bpf/bpftool/Makefile
> > +++ b/tools/bpf/bpftool/Makefile
>
> SNIP
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bza2W061YpxtUx9ZKQUtE0-tS6gf4yg2Le_2g4kyi3FhnQ%40mail.gmail.com.
