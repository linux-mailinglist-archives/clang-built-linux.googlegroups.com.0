Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBN6RUOAAMGQEY7ZFQMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 227D62FDF71
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 03:36:41 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id a33sf364159uae.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 18:36:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611196600; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cq4hS4DSrKEudBqyCWMFcBqu84QV68IwVOdKmVUFFEiQuz0vpcI0hUMnkHLoBjTg18
         PGry13W4czk1BKuTVR4gNxPO4OQNLY0Kq50LFD760xL3s/lOa2XHunKKlUDZNg5y8tgD
         xDnkoj86xffMXW6bfrMF781z/2qXcb4tCjINDP1VRqkP0XRbJ97dYmZMGp8KGdX4Lqg8
         9MmmFYhNSF8vlR0akIyJ8toXUeTrtPqJQaog+i1qthj8RveKvHD9hAdQ3D1eLe/vajSc
         fKQd3ael6lNEtKAmOse7/IJ5HWVDslmEnbsx6s+K2gaOjVBOaa8CrEaEI/Jqbc8OAo4Z
         BzKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9aznJSQn4mriGC6JcGWzaJarMQAIRIsWZpfJ99AQkQg=;
        b=t06/YUoOHS3M8NABuFjv6AyLksNRHjSoJanplPTFVwZdXsV3RJ9/b8NJIbBsZTC3wL
         out5Ni2MvEi5zIxdqvXZefNWXHdCwJ8zQ5iydos6NhNDJPg30pjF7sjZVEPeJduA2D/q
         6+nYmXyVzyqhSMaZFIidK5OWpzRYEWSbZu/sjTjjMXwC0WTxS5ctNyj/2Hkcx+8D8nf8
         lbUDpcMb2Z1AACDySD/mTa96OXc6kWKHAV0TIPDMJv0w/hsiItXKDkEZZdUo72G1Cw/T
         6++5dkeY3dI7PoExaMaQcsivhUB4hMfQNdjhD1xajuKVNkE7VON0VowsJdQ84iGxZwy5
         hlkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NnQsZ32a;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9aznJSQn4mriGC6JcGWzaJarMQAIRIsWZpfJ99AQkQg=;
        b=RrTObSVun2ozznJeCmWnV1sUA9pmWUAXYoA2z9wi7laIj2bY2Y7XdJ55CkIjkpvMcj
         +yj/p7iGoTk/6mMF+9rmcN0ZFEj7hugnJSaeXjBedBY5UoWcSPO/KKz001faOtmLnbQ8
         L2I4GMAER1N80v0Wb+m5Wjwq5uYRY0D2fHeFzstX9vVqHQGCeS4KBYbHJKYIY+b4U78D
         vZEoKmdgTNdzPiB7ObnJwWNJhIRAjmwtvKH6bMVbAUK63Zy01F5HIvmnldwKJI6Xgffb
         LxkE2IA6aMgXLig5RSvC/mH++fwFhR3fkd2GF9qyaMLbyqsvZSc0qCCpiAUKk93gZYxk
         wORA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9aznJSQn4mriGC6JcGWzaJarMQAIRIsWZpfJ99AQkQg=;
        b=VQA8V5rtK0UPiXtrT78ahRjpnuOUc9Xp8hRjPZ9dYMq6+enzn5AaHK8G+k0mXyWJZ7
         8kqzotWspuViLOV2O/BsweJ08SqBeOnlxgvGzBljSpvATDapaNux61MZBNu4YtRuLHZg
         x9kOsxvxkSk0nSoKyXRhiKP6lffd33aon2Ij77yf7ZLWBctionMfyInwd/5Y6ZAcDG7W
         ivV7OdV5LjlT4fnsIiHNo9NLbHbO7LvShq/OvvTY5VCiLJnHxPa8yTKNsO2GnV878YFc
         WIgPRLSMquq/tgFdwhOubxY1Xn/pYfdfwNWyEXKVXIZDxfNcL9BWCB0KpUWsqX0Q3hcL
         Io3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9aznJSQn4mriGC6JcGWzaJarMQAIRIsWZpfJ99AQkQg=;
        b=MR12r7eUnoQYXUnlp2HuW/WluYa4EQjE8YiDiof0+EclTfGoB/tHiNh/PRiFEAKdEK
         KOurSujDzFYEA1zWfnY+7fvlvzYLotfJzGQE9p442xMpj0oltx/OryxA4K2xsOAgXc/o
         yhO1/A//JgQmUXk0J91UvImd5PWzkPgqbZcWRsCB0QhHnscSWhUHw3DHDX/zD2lIzsnA
         uVJSkAbdJPqE2vgHtvbBrrDcxMX+utqr9bYw6v6OGNLa4ZmBREKKR+iju/1WeR/gLrE5
         83cjbgqQRtZCXzhavDm7cHnGbhgUQgrRBOM0lV5/N8drNwrRYGWI6NUj9TIRmK6lmLLL
         ueQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335Ks2D3H7DyU1yhiuPCT3l5DlFasBCtyRV1Zr/t9T4Y9SzrYDu
	1iPWZGTAgXapR3sNjsJmAt0=
X-Google-Smtp-Source: ABdhPJwBu3pC2sxTyx0ZE2krmVw2pJfHMZLjpV+SL90qpQj3hZiLtkb5fx7IeOHQcCSyUsctpZVy0Q==
X-Received: by 2002:a1f:8f08:: with SMTP id r8mr8985306vkd.15.1611196600010;
        Wed, 20 Jan 2021 18:36:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:e4:: with SMTP id 91ls63207uaj.3.gmail; Wed, 20 Jan 2021
 18:36:39 -0800 (PST)
X-Received: by 2002:a9f:204e:: with SMTP id 72mr7875737uam.19.1611196599559;
        Wed, 20 Jan 2021 18:36:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611196599; cv=none;
        d=google.com; s=arc-20160816;
        b=ud2EfXMawkPCbWAwcDJN343lTNrn1GMOZAqTop6deenG4HkbS8Ug8xe8O/4G6ksCgx
         szVNP1SekIwOY2sDh9U6AXbM8P3BIwdnqKyJ6GDk9ZD2Y/ypY4zbDlnW7LCdIeb1lj3K
         b2RoY+NNWXIoQWFT5pjtx0CA5iLwAR+FIk6GMNvMzNutYGOzrJA5FrN201AqKVFmJ/sV
         dyUPsBAuvyW8i8WM/lfvOHbDsYFYpVfiRf6VeSglSnj8HEnAcYdgV7Ni4KnAg7C0qNMv
         zcTWxL5/lo//7SHYo6/K/7x4xPbPZylAVR8ylkaESvtmzKG/eQc0M5kDS814pwPRPgJb
         7BkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g72wU/e2+tUMN8rrYgJKmfgNJZa+U65gluRGUeFny/w=;
        b=RU4AGT5n3pEnRCGgZhvuK0Oni2IBkemyQO8jaKt9VlySHJvIxiaqVmrAm1fzFi8Umy
         RfMJsTYnCdgm6somK/F+gyhPHzIlHjSzwJhVr85iO6V5S6VJXJ0ibuF5pPGWCX4x0d6/
         LDROtyW216pM84QSchAPePOApTkDj5163fWMINyAgTZkqJxCjyaJiFfBNGwCz87d/72A
         FkAxWYt6VAnzMR3ghHJilQVxyH3reBXmGvnh0vUW/ua/XM7KtqbPnKzuCplmRdpvjQYF
         9ljbv2WwSCcAaevqUMmmQvH2Fc9olBMPDgsUUUOS2DtukPG1WoJjvz189V6u2DvxyFKD
         dWJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NnQsZ32a;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id 25si357249vke.3.2021.01.20.18.36.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 18:36:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id q2so1064249iow.13
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 18:36:39 -0800 (PST)
X-Received: by 2002:a6b:90c4:: with SMTP id s187mr8980048iod.75.1611196599235;
 Wed, 20 Jan 2021 18:36:39 -0800 (PST)
MIME-Version: 1.0
References: <20210116095413.72820-1-sedat.dilek@gmail.com> <20210120223546.GF1798087@krava>
In-Reply-To: <20210120223546.GF1798087@krava>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 03:36:28 +0100
Message-ID: <CA+icZUU=nVxcQpfVR6s9fGomY0zEx22a8Ge4Uw8rL84JNu+0oA@mail.gmail.com>
Subject: Re: [PATCH RFC] tools: Factor Clang, LLC and LLVM utils definitions
To: Jiri Olsa <jolsa@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
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
	Davide Caratti <dcaratti@redhat.com>, Briana Oursler <briana.oursler@gmail.com>, netdev@vger.kernel.org, 
	bpf@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-kselftest@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NnQsZ32a;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33
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

On Wed, Jan 20, 2021 at 11:36 PM Jiri Olsa <jolsa@redhat.com> wrote:
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

Thanks Jiri for your feedback and ACK.

- Sedat -

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU%3DnVxcQpfVR6s9fGomY0zEx22a8Ge4Uw8rL84JNu%2B0oA%40mail.gmail.com.
