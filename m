Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDVHZP6QKGQEQXYZGPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 459822B5128
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 20:31:27 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id n203sf8787292oif.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 11:31:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605555086; cv=pass;
        d=google.com; s=arc-20160816;
        b=kbO27rorwUnz8WH0wqVB3VD68HzswRzfZ2Tv+QU3+hSYBbKGpj/+Mu3NFrM0qOQeyt
         Oq6ziNxbyyoOy3V66frawKOPmRiTiZxCRiZ8AKQS8y6oxA4r9a4Zy3stwgKL/vnVlgYL
         hG/J9OpnUIzPaZBwntFNXZkt5fpDAD1fV1H0dMNgzp1yOsXdBuu0A1Pj3b9V2sPRCJQC
         lruDcGxeohV9Gq71Raqo8X6okk/jseITutyBdBAmFYdVdnaJoS7M+oIDx1utGIA9LW/b
         j5J0z5Pjk9xRuyou0rS1RRNMVaFXYfvrKmMfLDscu5OemJofKZV1J2Y5dywkbceAs4LD
         RLdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OpE8nqYXV2hTJlX7RIeHklMeB+jqhetjv5u1ddgNQhM=;
        b=FZf5z1jOGntieR0JOFE1JFUFs12SBU2Hn1F8GFZM06ZC+qPF/kC9fdTohPYsmIWYV4
         6BlNifFQWhGGrwg1s2AMPtUeX0UBIQcZ3/ziEq1TJ0Bylem3YYRLQDe0N7SSVbVh7Y/+
         FyC5e2X5oveSgQwtk2yOUv43pJZaDLw+wCg5KEkr0tr2U0iGPenUJxAbHD1EWM+NCN6V
         //ypHYWLYVb4m67689RLCzWbeePnqpqRHi9/5Mf9t0R6+WbT28COvjiLvaVrP7pfmaZ3
         Wh6lmZVe9B3abFE8bCVMviadNF9WwT16zpYn9hHb4p2cvo4Qj3/pp6wNQUHgoPDtAE+4
         jKpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QDAYt3WU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OpE8nqYXV2hTJlX7RIeHklMeB+jqhetjv5u1ddgNQhM=;
        b=qVRUJkuxMyJNYamJFnfjCQk/shhOdttCjCn18m6K6X8JVa4BZVB8q35490KwfF8hEf
         h9/RTx/r8F8zUqMpmRPhbKyh4PqI9Hds+i8Xaiv+KXTFhtkZdDVIjyfIKnVpsb2qwIvC
         VskV+BD841WlJB1iizZtzr+Epmi4D6d3+4qnLbMzMNWSnVfZZAiuAHX0b9maafDihowM
         2RyMBUScojs3x1EGrOtEtm2pG+EgyYH5wqZPFKoqfWnVX9GBMm5i2Btd5m08leQw0k34
         /Q6UzvcxMRLBbU3xurKIcc7HKJF6aLWiqO7AdnKz0xgewHUuhn4EJ4ccrMPaowpALnBS
         HbxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OpE8nqYXV2hTJlX7RIeHklMeB+jqhetjv5u1ddgNQhM=;
        b=L6yFIfpag+YlyRUzo70mus6y+B3GKJ5/0+fRMaDupGe3/PorZyHw14svBD2fLNJQpV
         Y3E+2KYsKV3arTfqdiqh0hmBxDaOIADIx0zp2zF55s7HxMHGfreoj+u5VPTXFy6xAwv/
         wUqjeCFdlmQe9u3+CIKsYmjrH1BnTzhI6ycPnrTk54R8NGeXabr/atZiNvceuTIaaCju
         ESsbeuxDKANUclmTowoUnWvvpmMGJg6GBl/UilgXfFEDeeqamsnBcXud1fOs710YtB8q
         2mEzNOvsQXG8bwznDKanseNwkDDOuOFDAPD5Qj+UK3wHzO8CgHnvnDzbsHxGg9HM1Yry
         h3Dw==
X-Gm-Message-State: AOAM531eSxBcHym3x+Xn5LRao4bHMrZmRNdo7pWdNheDBFkDbIuwGlkx
	FLZax9LsITB0rkcx8SS3wnI=
X-Google-Smtp-Source: ABdhPJz9pJa6YKyO28tNqpFla9MmlhK/qs9W5KJxTxYeuT59Z7Zg1pn8MCFTYWauNBfrkIgH1/q1Mw==
X-Received: by 2002:a05:6830:1308:: with SMTP id p8mr570467otq.330.1605555086117;
        Mon, 16 Nov 2020 11:31:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:130e:: with SMTP id p14ls3546734otq.10.gmail; Mon,
 16 Nov 2020 11:31:25 -0800 (PST)
X-Received: by 2002:a9d:6f91:: with SMTP id h17mr636349otq.224.1605555085806;
        Mon, 16 Nov 2020 11:31:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605555085; cv=none;
        d=google.com; s=arc-20160816;
        b=LMYn8xHCMzw0K74dDzwgvPADXl0PBMx8rBeCAPwZoQvf0qsTJx8n4wTPmLcW3fvSFH
         uoJ3QEK0SDAZikYhdP8eXqzBCYr7rZJtruCmnQDYBWrPbV65EhNjuCILyqC4W0zslXvV
         mGB8WhnAb31YCDxf2MV1R9Nfri+wlYHF1zEIJYXu17RqLh9B6A/omzVBk9ghK9Jib5Zh
         gfQfqBJMtMUHROfRlrbxMZF1HEw0eTtgphk60nGUysoejEnYJoyGxniVbAXSVv7SDyKZ
         7XmcVF1hZc917Tt9RTzkEs9mywrwfleQUDxXZYb+vexRIPMbpDOoXgn2a8xaxLVVieT5
         xVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cGlOiQidYdOUuFpFQrkW0TeHEuSg5zbmdMF9LAJd9eM=;
        b=BdW0SBvxdBZQGN84aJFKYMElDSHDAbSHS0vmAr/wYxkhfihH6YkjMeMKOJDDdxf728
         R2lY43EQRP8/6/yTgJSn5ZScHWSUfqm8Ih5zvQ7XDZCY5S5ecxpm0Nwrm47qX+2vyyVM
         +Pa0LoWScMf4jfdG4bZxFamnF5TrF05YNyRbdd8Xq0lOBcSECHSkLhdXHQhnbjgvuTmG
         N32p0g55RE1c9+nziEzpDfjcN5S055agx+qZBs2Gd877eiDAI/yhRQ7y215KG22vwive
         tfPVKlQPTFcBYcBiLQR5nvrOF5KoIW/IGt1bVl7wVvhGIwrAs5Y+yfdd/sjk34l6vdos
         /WSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QDAYt3WU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d20si1818833oti.1.2020.11.16.11.31.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 11:31:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id m9so4501608pgb.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 11:31:25 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr493181pjh.32.1605555084999;
 Mon, 16 Nov 2020 11:31:24 -0800 (PST)
MIME-Version: 1.0
References: <20201014212631.207844-1-nivedita@alum.mit.edu> <87sg999ot0.fsf@igel.home>
In-Reply-To: <87sg999ot0.fsf@igel.home>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Nov 2020 11:31:13 -0800
Message-ID: <CAKwvOdn8aOr0=22idJ_KetgJ_rhk5-7i29VvxofoLrRo138f_g@mail.gmail.com>
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
To: Andreas Schwab <schwab@linux-m68k.org>, Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QDAYt3WU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Nov 16, 2020 at 9:47 AM Andreas Schwab <schwab@linux-m68k.org> wrote:
>
> On Okt 14 2020, Arvind Sankar wrote:
>
> > Commit
> >   815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> >
> > neglected to copy barrier_data() from compiler-gcc.h into
> > compiler-clang.h. The definition in compiler-gcc.h was really to work
> > around clang's more aggressive optimization, so this broke
> > barrier_data() on clang, and consequently memzero_explicit() as well.
> >
> > For example, this results in at least the memzero_explicit() call in
> > lib/crypto/sha256.c:sha256_transform() being optimized away by clang.
> >
> > Fix this by moving the definition of barrier_data() into compiler.h.
> >
> > Also move the gcc/clang definition of barrier() into compiler.h,
> > __memory_barrier() is icc-specific (and barrier() is already defined
> > using it in compiler-intel.h) and doesn't belong in compiler.h.
> >
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
>
> This breaks build on riscv:
>
>   CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
> In file included from ./include/vdso/processor.h:10,
>                  from ./arch/riscv/include/asm/processor.h:11,
>                  from ./include/linux/prefetch.h:15,
>                  from drivers/net/ethernet/emulex/benet/be_main.c:14:
> ./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
> ./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
>    14 |  barrier();
>       |  ^~~~~~~
> cc1: some warnings being treated as errors
> make[5]: *** [scripts/Makefile.build:283: drivers/net/ethernet/emulex/benet/be_main.o] Error 1
> make[4]: *** [scripts/Makefile.build:500: drivers/net/ethernet/emulex/benet] Error 2
> make[3]: *** [scripts/Makefile.build:500: drivers/net/ethernet/emulex] Error 2
> make[2]: *** [scripts/Makefile.build:500: drivers/net/ethernet] Error 2
> make[1]: *** [scripts/Makefile.build:500: drivers/net] Error 2
> make: *** [Makefile:1799: drivers] Error 2
>
> Andreas.

A lot of VDSO's reset KBUILD_CFLAGS or use a new variable for their
compiler flags.  As such, they're missing `-include` command line flag
that injects include/linux/compiler_types.h, which `#includes`
numerous other headers if `__KERNEL__` is defined (`-D__KERNEL__`).
So the RISCV VDSO Makefile might need to `-include
$(srctree)/include/linux/compiler_types.h -D__KERNEL__`, or `#include
<linux/compiler.h>"` directly in
arch/riscv/include/asm/vdso/processor.h.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn8aOr0%3D22idJ_KetgJ_rhk5-7i29VvxofoLrRo138f_g%40mail.gmail.com.
