Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSFJ62AAMGQEXTNC7QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D3F31106A
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:56:09 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id n18sf5883362wrm.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:56:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612551368; cv=pass;
        d=google.com; s=arc-20160816;
        b=ErbeEmPI5Vy09qgU7eOcJ9Sw12O5ieNbH9xdmOdsMyc8B+WEl4dhSLFs4yCWftvLYw
         Tv2Slh7sP1xgubBikRYig3TJry7PePhka7/JRE+bgknVoan7gzuX9pXOc8MYb7Ns9fZe
         zM5TxzZPyo7bDl7ksTn163+0cRZY+Rl5zenGnRVMddS2VtQpf6RbkN2S74r1GfjKKr9l
         Hr+fcep6HuuljlX24ZzSTBiNiGyJ72OLF8IN7lxKJ0//KX00kBAo/SekFhiWMwfyatOk
         vNvMAgIanKL9J5sZaZ6Mat+Un3Fq2EeI2TmeHF4aA/Tm4wyX4spLts/8iz9WscUjULD4
         QytA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fe3ydTDCQxqen86ZT2fAkfYxKLv4TSam2e1AIYFTr2U=;
        b=ueoZfJFWoVd6HWP5f41cXEgJIYUg21v0HNHzZ0xqgYKwNy7SCIU4IcYXpqAdwjfCm0
         HXPC+DhkzqH3rJu3JoGxLwc9YanWPAIAfVSP2gvRtvoVq86i8h45Y00jjbdy9YK3Va7p
         7Vmpx47gmgbeYtQWVsZwtSJiNwQRF+cC0YvUQh6k94+yAV0GGdzdv0NGm1lEe/a84Fiw
         d0sUn3KiwEfbw5X1zjh5eH/0+boWuRDUQbyWEkt/pxYfisfSEP+YwfInuCvPF25TiyKy
         S+sIezYARh9jp4FKS37tTaGuQ8a0+1LDqrAm1FyOCGMWlK25L5f6MnGMuzQYz2+08m9V
         lvlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nSPKDptT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fe3ydTDCQxqen86ZT2fAkfYxKLv4TSam2e1AIYFTr2U=;
        b=gGNx8JUcSZKMJqnrrR34Rst/dKIy7E1DIJBfw3hZ29o8NHWOLur7gZyWk8z3MQXMU0
         J6YDOex8ykS+ims8OdyAW//OI40qzOTjxHAmzSs9lsTmuRBFvy3Xjh1wHsoN+Dg4OcAw
         iSl5F7jea8xTYRM5ZvOXbSC0cW6sSlbN8V8V/uEcswB7iu8RLOgPkQbxJZ+IdFEK1hxP
         s1lWmIkcYnTaucqGdS4xtW9aklm5u8W+aKPUWw90lIfdCx/Wh1ToYBZ+TxswT45L3Lyq
         qZhKHi9ebLNHigFvCqB4IS75uBmSl0katKIHUocvZJGsm+lYCxxGPPVeIZqfXKaBwPfr
         c/uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fe3ydTDCQxqen86ZT2fAkfYxKLv4TSam2e1AIYFTr2U=;
        b=nSd3vpw5T0UqPsdIdiGMJKAFZBDbM8NeAAHcBNvjuKW+hQ3f3FsLIMYuhq0s0GC+DT
         SVWCdy1u7L4QWodD5g5y56NS4bQY+ka0IEEwrgX+JSzJvHlkcuds2QcInZqG6sgDLyuj
         MjphyOm0VTN/0umCkvn9eIHTC3VelYZFc4QYJrPFHf8gwtki1J+bN0DodvmI+ma4+Uuw
         88MmHpOyPYXdS6JjXqk/xmqD+a5gZvHZY0Thx915IAIxgM13faR122nsSHdVXxjDEAoC
         r6txpWUPuWURb7Vfp2ML+8uLtCRnLiSHLK2DA5d06Ye4p0ezoKVrHQVZp5i/ms5ZBecJ
         Tg9A==
X-Gm-Message-State: AOAM533X/6WhnqW4XcRdwPrJb3RnT4qtFUEo7OIrHGgy3l5oKZZFtNWk
	Eo3fgK5pkW2Ue6/8lmdjR4M=
X-Google-Smtp-Source: ABdhPJwXxpR7vvGw2mcdodn+ZvQyhLJ2obFFrhKDHu1zJ1Tut4f4NCLC2t0CShd3aPEhdMyv6FEhMg==
X-Received: by 2002:a5d:6b47:: with SMTP id x7mr6746380wrw.170.1612551368893;
        Fri, 05 Feb 2021 10:56:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fd09:: with SMTP id e9ls1494299wrr.0.gmail; Fri, 05 Feb
 2021 10:56:08 -0800 (PST)
X-Received: by 2002:a5d:4d8b:: with SMTP id b11mr6550375wru.215.1612551368130;
        Fri, 05 Feb 2021 10:56:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612551368; cv=none;
        d=google.com; s=arc-20160816;
        b=CSAV1craUL6OnDOknkAv86ZKeP+4+de+YhNDu81uk/MPElHvbfXnTPPRqHKcZAhybL
         /9Xw84BdCDbhzB/TS5R8pECMTMujtQxzXFyWY3TDXMyvR/TluZ/7+R68h7LmeW+hihlR
         M0S/+tjMNyivP8HkCFarNK4YENL5ASylXC7bipkRLqJ2od8X2gY2g0bFZQwHe/VVsXgv
         oxKLBLKQ+YVQ/gs4OoAlsiR+7IMN06GeRy8Rq5O96UCNaffTUVdRvR+SPCJ6U8ZQ/bSM
         6QmzmzZFKDHYk94eQpcl7o9BKSgunT92X+R9f0JTfQ/3HU8D/U+/a9Blncqpjr4X3gWE
         1fYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dXbF3gESexP5jf547OTG2kLlzkt9MNfOpNyUGdGQX1s=;
        b=ryNv0apThwk+oL/0X5qWsll9l3PM8YEq/XsBd0AAVVq3Eq0i3VtEwXjDEWIFcQV69I
         I0U7ykaMW7iZ3OgMbiXw5ZmoL2mxaB0Aae/f8XmvbfTuqRKaQUYNQl0iXt6DegwLlZYG
         xuztaAh1tZ2pUGOLJQ0gS4Vg5lbi1j6nXp/iYMt2IaeHIGpu9hKyfTE/aws8jGq/FciP
         tFlSXy1nMqAOO2W9XvuFSmrb5pvip7TusDCp4grPiCCgoKINRfRxtNhjNl1LEF+pPxOD
         OhIux1ZvA5JlR5eISlkdK4zZ9X5+M8/dbmdN+AaEGOfvOIFY/0j02aciCXPgbpKUZSg2
         Cw4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nSPKDptT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id s74si393630wme.0.2021.02.05.10.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:56:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id i187so11351893lfd.4
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 10:56:08 -0800 (PST)
X-Received: by 2002:ac2:5622:: with SMTP id b2mr3201385lff.297.1612551367653;
 Fri, 05 Feb 2021 10:56:07 -0800 (PST)
MIME-Version: 1.0
References: <20210205085220.31232-1-ardb@kernel.org> <CAKwvOdkg75CRM0QNeO4ojM=OndFgJ+j7fO3Yt=jE4k0eTfYmRQ@mail.gmail.com>
 <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com>
In-Reply-To: <CAMj1kXHKOEJokzHH_Bf0bq-ATmJ4u-yZUN_tAYJvTX4c_trMXw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 10:55:55 -0800
Message-ID: <CAKwvOdnB6y=juVMtVfTqrRiCu-Nmj90=8EQEkddmqOwq6kaAhw@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: fix BSS size calculation for LLVM ld.lld
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <nathan@kernel.org>, 
	Guillaume Tucker <guillaume.tucker@collabora.com>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nSPKDptT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
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

On Fri, Feb 5, 2021 at 10:11 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 5 Feb 2021 at 19:00, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Fri, Feb 5, 2021 at 12:52 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > The LLVM ld.lld linker uses a different symbol type for __bss_start,
> > > resulting in the calculation of KBSS_SZ to be thrown off. Up until now,
> > > this has gone unnoticed as it only affects the appended DTB case, but
> > > pending changes for ARM in the way the decompressed kernel is cleaned
> > > from the caches has uncovered this problem.
> > >
> > > On a ld.lld build:
> > >
> > >   $ nm vmlinux |grep bss_
> > >   c1c22034 D __bss_start
> > >   c1c86e98 B __bss_stop
> > >
> > + Fangrui,
> > Fangrui, __bss_start looks like it's linker script defined by the
> > BSS_SECTION macro from include/asm-generic/vmlinux.lds.h:1160 being
> > used in arch/arm/kernel/vmlinux.lds.S:149.  Should these symbols be
> > placed in .bss? Might save a few bytes in the image, unless there's an
> > initial value that's encoded with them?
> >
>
> Not sure what you are asking here. These symbols just delineate .bss,
> they don't take up any space themselves.
>
> What seems to be happening is that the placement of __bss_start
> outside of the .sbss/.bss section declarations causes it to be
> annotated as residing in .data.

Perhaps a misunderstanding on my part on how symbols are represented
in ELF, but my understanding is:

$ cat foo.c
int foo;
int bar = 0;
int baz = 42;
$ cc -c foo.c
$ nm foo.o
0000000000000004 B bar
0000000000000000 D baz
0000000000000000 B foo
$ ls -l foo.o
-rw-r----- 1 ndesaulniers primarygroup 1016 Feb  5 10:47 foo.o

$ cat bar.c
int foo;
int bar = 0;
int baz = 0; // changed from foo.c
$ cc -c bar.o
$ nm bar.o
0000000000000004 B bar
0000000000000008 B baz
0000000000000000 B foo
$ ls -l bar.o
-rw-r----- 1 ndesaulniers primarygroup 1008 Feb  5 10:48 bar.o
# ^ smaller object file

That if a symbol's value was an address within .bss, then there was no
additional space reserved in an ELF object since the initial value for
all such symbols in the section can memset to 0 by the loader.  But if
a symbol's value was an address in .data, that initial value must
occupy space in the object file.  Perhaps that's not the case though
for linker defined symbols, since I'm not sure what data/initial value
they would correspond to besides the Elf{32|64}_Sym's value in the
symbol table?  (I should go reread the relevant section from Expert C
Programming: Deep C Secrets, or finish reading Linkers and Loaders).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnB6y%3DjuVMtVfTqrRiCu-Nmj90%3D8EQEkddmqOwq6kaAhw%40mail.gmail.com.
