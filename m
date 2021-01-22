Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBVXVCAAMGQERDHQXDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3002FF969
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 01:25:43 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id m2sf6097402iow.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 16:25:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611275142; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nm3UTws30ztE8mHeKJpVl5uu1GZo2+Z+aGigyg3P5HwYG3dDcBLUiHhtIgWzk7J6Ja
         dCy3KgQKCv/TB1G3KhCwV2HKUimHXjI2L52HZN6ZIKB0IXelTfFvJobhxICis53lU9+d
         aTEqpCt26UFM/txakwCXw3rIksC9zX4Uwx7qtaprqpkNCuckzC2l+1Ec48XQtzcfTQ8B
         5NkAgSfrUCAH4BTkfXoMX2EErLA5JPZUuHXw080NHFP2t2avqxfpawc6s+f9t6N1NGhn
         y6OLuT/+7Eu1HoKWK7X+DAPvUdheYDj4KY9kGPP+t96jOULsaYuCUq3DK8UV+/iD7USz
         pHTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ryCWcC6W9gFK0Otaompd/h5TuPgdEVDyBjrDMUFelQg=;
        b=Hf+PmWneunxDGv1qfzjgb/j9oK8nEoE2P3sqkzBaxS3ZYEnpCoz6vqyegrg+zR+Utd
         iXCrNQ+pNy96nJuFl/pbO5OKBz37FQpu/BSoq9tvGjia/bv7u5z/GqNTteT/NhS6wWH9
         zU9laaa2QTkpZvIz+P5Sv1rpaKiUPprq0z4Va4Pl01mziUA48LeBhdYx6CUNgRIsj0hb
         dJuOYAe6eReILF2O29exAeWQAjnRa9blU9s27Z31vNzQcvemIF30WESbOsikLJ9C5Cel
         XkhVrmdKUGXc0E8IKvxd1q007Nwbdt9+S5xX63p7QdiTvK0fC/cmVUph5KcbAkkoXiUK
         D7Nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QDG0JJpl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ryCWcC6W9gFK0Otaompd/h5TuPgdEVDyBjrDMUFelQg=;
        b=SStVrVEeLdahjTBznqtIu/4ZPKcgjDhd+abcfj/5RBJXyX+NE7lbHE3VLgGdDcbZJs
         UCavMvGmTUdlvJbt9ne91Gx9cAddEGArUu7G2UQymgBzKm7okAA7bQZxkEHiNk7jux0V
         ZIvZXjokgOId3osUWm/zAbwPxl6sIMwYzliX6cnfLoaLc/Zzn78VsbzckJygBK0ODcBr
         qIcNScBnD6N3lKGB4oBgXfI2UhgQpS0cCfHZhfdKjuiEQuZejWjoizRHJQrxvdG4oaZx
         VUBOi9G4ztGXPvw7FAdJF0GeMz1S9f72zuhl1iJdXDgdlzi4YC/Mz5KYFIPp5VI7jDt4
         5uEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ryCWcC6W9gFK0Otaompd/h5TuPgdEVDyBjrDMUFelQg=;
        b=vCm4HZlKxjN93f+Ilcfl6ySu8CUpr2Kh2BHJYyd7lDUYjKvSndkw4MkPRtXYefMQTn
         rT3DOIpWr+Vobjy6Id2qpc25tY+qs03bgBlyv92Hw5831BrzIeohrhLNMxPvEsaTLsK8
         Q+wzDFIxlZToBeRPoXf5DOU03W5kt561kviSTM5LkuGucgFN7ENf7F/OmIBCtCL5C++p
         yZlJ06muiQTOyE3VSgWVlmABh+d/hq4csprgDS5obJgn2oJWjdmivGE3R3/Fet/L5vgs
         RFlU7hB/rl2M5f8OT14NuH8iie9OzspJhJEDRyDM0alFSHS2mf9I9t11Z24dZiXVq5ws
         AW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ryCWcC6W9gFK0Otaompd/h5TuPgdEVDyBjrDMUFelQg=;
        b=pbUyTrcDjH35MvLEqtuFaprQkE/E37JewtRRbO+qFpQdb0bVIg+UKUtt9acJmUojFA
         /Q1srB/T96bFBwOLuMG3FWAAwIPgWBJ0Gp2udkcWSlQkZjyA+SfzHG0/CVmx7lXJR7pK
         iIBCo985ZQoiBuSOVSt7kLJK2z9E3HVAGL2Gzz6FFxcNRBO8Jbb53A08HJyUjBuu+KU2
         2PRg5chIZbGMnyGvFiIZu5nSgrSBgWH+CZhNsv9EToYwQLfq+hYGH2WHfYUiak9nBWL+
         6v4N/fyDA1+PvTBgV+OpIXw68V5Id4CpIqCY5ifptpgFjJwWJNjNAcMXnrVAnfHTtNi5
         qf4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VUu3Qz413Zzun0b82XQ/boGmTlYO7gqFGyRYkKVuic9PHN0GO
	J+o1c7ddqKplkajJkhiwIC4=
X-Google-Smtp-Source: ABdhPJzU+EZAY7k2ykvkrzBgpiSZGAENevuJ6zZPuVa2mFlI7lZ14C06bdIWY/+sH8AE6Y9yKkhC+A==
X-Received: by 2002:a6b:db07:: with SMTP id t7mr1542772ioc.95.1611275142499;
        Thu, 21 Jan 2021 16:25:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:223:: with SMTP id f3ls487111jaq.6.gmail; Thu, 21
 Jan 2021 16:25:42 -0800 (PST)
X-Received: by 2002:a02:3541:: with SMTP id y1mr189224jae.66.1611275142096;
        Thu, 21 Jan 2021 16:25:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611275142; cv=none;
        d=google.com; s=arc-20160816;
        b=O4s5cC/ClVmZEuC85k0u4wsWhWcvAPESU5ux7oL9sLclmaZtBQYW2XjNLNH3ZE2psA
         zUBvkmkaO55dozRG+7JX3+VeCtarSNaa2lpc11CYzMKZHpIM/NRxN1Mx+BUzwEbkl5Mt
         GfLSDsJJOEjljuktbNIXR1ccdsVNDStax1PXpyPGmWDKlyzOWqQoPqCdn8urwCUSPa23
         nZSmvtpwZ44THZkQfi16cBHFwERmAV8sbuPOJWctc++WtamnfMhoCcrzN6qaxZvrIDbo
         fl0+IyTj+VUEqvMTmVSVsv28IKIhUXHMA2aozkEz9ysbuQY0sSlSH50KNffJFXqwX08h
         ThCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ykOiitFyiN0YSC/lJm0MiGgBb0JXAdtJs/AnjN6QPxY=;
        b=plxQWPUUo0LY5w7pf99/lTPw4Bbb6Sfrg0JYs4Az1u+t+j/1w7PU4mZ1pN6piZHSmr
         IIIbIfrNhtW8DLGtqPY8ObpWwFkjNCvqHT4kxl5Vqct6Eju4WMR6IyxhyfjsV7pvFiXX
         v/JAAjunvX0aJ1JZabJPs3/QT+RqYdESaB5T8PEGQQ2VXDtyB9xIWkCZ+My6GwJbL9gA
         MkXFavaJ3Ej5xpBziF4zpTYZoEC1Ty+8rSNkFqxSGjDsjFCdr0zM/Y3FYPFdf3ODbKLM
         CZNh8hstWiN5vaI0x4B+KwxCA5zWKf1TxQD/hufz1ES2E5zWsjTDkSwYIPj5ev8Wiuhi
         4cwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QDG0JJpl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id k6si501745ioq.1.2021.01.21.16.25.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 16:25:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id p72so7757216iod.12
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 16:25:42 -0800 (PST)
X-Received: by 2002:a6b:6a0e:: with SMTP id x14mr1540463iog.57.1611275141850;
 Thu, 21 Jan 2021 16:25:41 -0800 (PST)
MIME-Version: 1.0
References: <20210116095413.72820-1-sedat.dilek@gmail.com> <20210120223546.GF1798087@krava>
 <CAEf4Bza2W061YpxtUx9ZKQUtE0-tS6gf4yg2Le_2g4kyi3FhnQ@mail.gmail.com>
 <CA+icZUUGKn4DiBGN8Tq3yrh0NH2Fqboaigwm4Q3yceDJVe9dAA@mail.gmail.com> <CA+icZUX_DsEi+k5kpko5fxrG2+-oL8H4gVRq93fXHjN6ny9K=Q@mail.gmail.com>
In-Reply-To: <CA+icZUX_DsEi+k5kpko5fxrG2+-oL8H4gVRq93fXHjN6ny9K=Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 Jan 2021 01:25:30 +0100
Message-ID: <CA+icZUW11s-rmu+hw4ue44cn4FDBLoJWSrZ78qpdfk-CSYHYHQ@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=QDG0JJpl;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35
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

On Fri, Jan 22, 2021 at 1:21 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 22, 2021 at 1:12 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 22, 2021 at 1:04 AM Andrii Nakryiko
> > <andrii.nakryiko@gmail.com> wrote:
> > >
> > > On Wed, Jan 20, 2021 at 2:36 PM Jiri Olsa <jolsa@redhat.com> wrote:
> > > >
> > > > On Sat, Jan 16, 2021 at 10:54:04AM +0100, Sedat Dilek wrote:
> > > > > When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> > > > >
> > > > > While looking into the source code I found duplicate assignments
> > > > > in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> > > > >
> > > > > Move the Clang, LLC and/or LLVM utils definitions to
> > > > > tools/scripts/Makefile.include file and add missing
> > > > > includes where needed.
> > > > > Honestly, I was inspired by commit c8a950d0d3b9
> > > > > ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> > > > >
> > > > > I tested with bpftool and perf on Debian/testing AMD64 and
> > > > > LLVM/Clang v11.1.0-rc1.
> > > > >
> > > > > Build instructions:
> > > > >
> > > > > [ make and make-options ]
> > > > > MAKE="make V=1"
> > > > > MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
> > > > > MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"
> > > > >
> > > > > [ clean-up ]
> > > > > $MAKE $MAKE_OPTS -C tools/ clean
> > > > >
> > > > > [ bpftool ]
> > > > > $MAKE $MAKE_OPTS -C tools/bpf/bpftool/
> > > > >
> > > > > [ perf ]
> > > > > PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/
> > > > >
> > > > > I was careful with respecting the user's wish to override custom compiler,
> > > > > linker, GNU/binutils and/or LLVM utils settings.
> > > > >
> > > > > Some personal notes:
> > > > > 1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
> > > > > 2. This patch is on top of Linux v5.11-rc3.
> > > > >
> > > > > I hope to get some feedback from especially Linux-bpf folks.
> > > > >
> > > > > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > > > ---
> > > > >  tools/bpf/bpftool/Makefile                  | 2 --
> > > > >  tools/bpf/runqslower/Makefile               | 3 ---
> > > > >  tools/build/feature/Makefile                | 4 ++--
> > > > >  tools/perf/Makefile.perf                    | 1 -
> > > >
> > > > for tools/build and tools/perf
> > > >
> > > > Acked-by: Jiri Olsa <jolsa@redhat.com>
> > > >
> > >
> > > It's pretty straightforward and looks good for bpftool and runqslower,
> > > but I couldn't apply directly to test due to merge conflicts.
> > >
> > > Also, which tree this should go through, given it touches multiple
> > > parts under tools/?
> > >
> >
> > Sorry, for the conflicts.
> > AFAICS I should do this again against Linux v5.11-rc4 vanilla?
> > Is this OK to you?
> >
>
> I re-checked:
> This patch was on top of Linux v5.11-rc3 and applies cleanly against
> Linux v5.11-rc.
>

Bullshit.

I will send out a v2 against Linux v5.11-rc4 - was on the wrong local
Git branch.

- Sedat -

> Please let me know if I should adapt to a different Git tree.
>
> - Sedat -
>
> > Good hint, cannot say through which tree this should go through.
> >
> > - Sedat -
> >
> > > > jirka
> > > >
> > > > >  tools/scripts/Makefile.include              | 7 +++++++
> > > > >  tools/testing/selftests/bpf/Makefile        | 3 +--
> > > > >  tools/testing/selftests/tc-testing/Makefile | 3 +--
> > > > >  7 files changed, 11 insertions(+), 12 deletions(-)
> > > > >
> > > > > diff --git a/tools/bpf/bpftool/Makefile b/tools/bpf/bpftool/Makefile
> > > > > index f897cb5fb12d..71c14efa6e91 100644
> > > > > --- a/tools/bpf/bpftool/Makefile
> > > > > +++ b/tools/bpf/bpftool/Makefile
> > > >
> > > > SNIP
> > > >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW11s-rmu%2Bhw4ue44cn4FDBLoJWSrZ78qpdfk-CSYHYHQ%40mail.gmail.com.
