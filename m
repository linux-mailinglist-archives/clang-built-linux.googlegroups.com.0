Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDMB6P7QKGQEJU2YCBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8422F21A1
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 22:18:06 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id u67sf202392vkb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 13:18:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610399885; cv=pass;
        d=google.com; s=arc-20160816;
        b=DHHT9gfpU1Dq/fBopUbOrwN9/icI4ELLXE9031BQ3UXe0BJc61ryMsxAUsjnYZXLPu
         AgMssgSi3pjY/7wl8lLCqQUlap2OiHcSTIcMiAO5aNHnylMy4XBUIZooWBM9OXARe7vv
         UdAhQGThdY3l9Y0JsrosNKZsfP/Ybm0zcIwV56izwEWkBBHL1xyYFWQ1gvHlmi2pgsdM
         8/V74Tn6K5OABXc/IHH7MwhOgLU5atg3OWicX5vUye33BGOrAXlYBHP2NcwpdWW/M1PE
         3bm+kjcWtTfLWvSquneDdlBMVloxg05QJFhTlEx7CqNBTuHizd0iTgVHtetkLMp2cVDS
         1f1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0PrIt5lrcP3F7pcvrKmmm03Z1VxHELWD02T1PvmsAO8=;
        b=kYjJ++0xf0Pc6EjuAobn2ZAAEIdpuoUxhAPx/MeMsFDCFiLsTTjMh2dlbIG7mlflvv
         R7LYPK91zC5tZPVa4AI7f2vc6Uw6O/5OU6RVO1iEjVE3BNeRTah+hrBYcV8Usig1PteQ
         wfP4+woTCvyu6OpcIAgKK79McWwf4sF16VLU84l0Dw50peyK4Yhc5u/tTDKemIgFehiA
         FyQ71rWiXPnkYx5BzeUrlnjznH5aUn3c4pnG78X2giMeZ687aOxAKTyfpqtTQuL3aMld
         kNTp0FYVi30+R7ef4ZkZCAmk0xvdKQHRTpXZhnWfdCDOiIcv0gwe2ccpWgDxI3XsXMZ6
         mSMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="j2/sB7/R";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0PrIt5lrcP3F7pcvrKmmm03Z1VxHELWD02T1PvmsAO8=;
        b=d2Kq6KhdRy8mEeau41QHwmgnVN1XWSMVcpAfwjZJXi0n0Lc05htR/vwRGZUia3ulNp
         riekFxSgdj14ctbL+kXiPlSRRElsr4hjS9ir7SbU1HZGmndvrGVEgfr/T8+CXUrEjcFq
         9z00FkNA6UthzI7+QB7pCkDUxeDaGDe42SQohEl/i6rqod8RFPjgB7vwevxSZFiaRvre
         7tNcD9zCISjzwxaIaceBlFXebGd3qo8/oxFA1pvIBFWbKxu0wJ1Pb1VaqjRn/6WI1g10
         zJ+4hmhzLLXhPp6CAHBz1oye7f0SOJWyUO01zBLqjuPtmwD9h9s3sR8o3mDyIY3gPmlp
         ROaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0PrIt5lrcP3F7pcvrKmmm03Z1VxHELWD02T1PvmsAO8=;
        b=ms8XRpo+XRLXjx6q5yW4QADv7Zgefz6H/i4XRcHkLTsrvbP6JBb3kM+zM8fiC2wKZW
         uBkW81kD9ikjLShkiM8yXkCsSy2KxT442deJzRE+v2z5/qc+N5brt8HxXztlHTajATnF
         oi9hXO8DOWa1Yzecg5fyCQ4NVPBwjf+ATD/WJJnRqKeKp7S+kph9asnoFYm0srOqqvD1
         ByILrfEwlkrNdJ/YKaCPztkT+LSpmKVZujNkdS8T2+FTJ5SipdcNzx4QYMHbrt29Xj5v
         lbwAbjjqnboNogq5d7Z5ySjyLn2a9/CdjoMuwfwoaXWThNpu+WYqOW2q6lM+4J6J16rc
         JCyg==
X-Gm-Message-State: AOAM530T6cPr2YCUBz2AmgYpbTTTSQy/C3VBPmgWl/DWCL3BtZzpu6wQ
	/bRJZvh4RqkQ0way5FPTM0g=
X-Google-Smtp-Source: ABdhPJzjYVn+jzMum+5RNgbBCrTL8B77JJqm8J5bLr+zjHh8dS+KlxO3kHcSMEEd1ugYdARmuV9i1w==
X-Received: by 2002:a67:b341:: with SMTP id b1mr1347413vsm.18.1610399885511;
        Mon, 11 Jan 2021 13:18:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5c83:: with SMTP id q125ls45292vkb.9.gmail; Mon, 11 Jan
 2021 13:18:05 -0800 (PST)
X-Received: by 2002:a1f:ec47:: with SMTP id k68mr1826794vkh.12.1610399885150;
        Mon, 11 Jan 2021 13:18:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610399885; cv=none;
        d=google.com; s=arc-20160816;
        b=NnkfSnYLrD3LB5+erhhX9cQOEfNTyAbYnqkqTWzOfc9qDjNwHTO1kyKClP3GkuYqIl
         FALZLGB+jxeLY/i/ZJw+4A/7q2tcSr/pZEPVMxx8VGmHwtL+2FKE7oUDBrITlZSr5rh8
         jX/HsxBfunQ51hrTCCTB3stGicwBteGMufOMzlLt7iMGoMkjFdf8+VX4nX+u+SXFfxTS
         WG+LCFAzfKciSF8QNefBqLiHAhvRA0CAUTqv2ARdqRxuRsvcCxeIdBzJLAXka/DtHGe5
         X3bL0T0kY3cGrXcyyc9lza707Y8Fxe2KjIlk6PYfMDPr9keYGoIgWkUV9blSQIuJzni0
         zpRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0qOSbOIoHdN2DZPTqNutcK6F4X/pENnDZjQfdlW5H0c=;
        b=WXm7lI9ouz2OIPqv/i5Zv50HUIcnx4NhGvCHCaUQRSVoEgT3rku6b9zgkY1TscfpGc
         3q+aWJTXsoONDSatPHi7DaNnmIFcQAOweRAb5twMghNulq8GHbcYltxyDaksLk8iLKys
         ZmDyEEJDV4onoYdFqldQ1B4Rn9jrxfEIiFek4qg0ay14c1Y0S3Sq2daYQUp3HMQw8wN4
         Y7UBfNqE4oK4jTonbzhCTaf/nGxpceVNh5tuD+JavvraTt0RBmXR9S+NswIGV+ATM21v
         7VIUK7VBmsJN/NCR1uzS211GNuksyA2PLIxjWGMH9IW4hNOg5z/somsTY8O1OJO5E54y
         F1PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="j2/sB7/R";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id y127si65175vsc.0.2021.01.11.13.18.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 13:18:05 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id n3so489277pjm.1
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 13:18:05 -0800 (PST)
X-Received: by 2002:a17:90a:cb0b:: with SMTP id z11mr786374pjt.101.1610399884135;
 Mon, 11 Jan 2021 13:18:04 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210111210418.GA3660906@ubuntu-m3-large-x86>
In-Reply-To: <20210111210418.GA3660906@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 Jan 2021 13:17:52 -0800
Message-ID: <CAKwvOdnssY=CV4daRQvGa659AzGvMT+Kb10g5-DDuZjqbp-J5A@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="j2/sB7/R";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
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

On Mon, Jan 11, 2021 at 1:04 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Jan 11, 2021 at 12:18:21AM -0800, Bill Wendling wrote:
> > From: Sami Tolvanen <samitolvanen@google.com>
> >
> > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > profile, the kernel is instrumented with PGO counters, a representative
> > workload is run, and the raw profile data is collected from
> > /sys/kernel/debug/pgo/profraw.
> >
> > The raw profile data must be processed by clang's "llvm-profdata" tool before
> > it can be used during recompilation:
> >
> >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> >
> > Multiple raw profiles may be merged during this step.
> >
> > The data can be used either by the compiler if LTO isn't enabled:
> >
> >     ... -fprofile-use=vmlinux.profdata ...
> >
> > or by LLD if LTO is enabled:
> >
> >     ... -lto-cs-profile-file=vmlinux.profdata ...
> >
> > This initial submission is restricted to x86, as that's the platform we know
> > works. This restriction can be lifted once other platforms have been verified
> > to work with PGO.
> >
> > Note that this method of profiling the kernel is clang-native and isn't
> > compatible with clang's gcov support in kernel/gcov.
> >
> > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Co-developed-by: Bill Wendling <morbo@google.com>
> > Signed-off-by: Bill Wendling <morbo@google.com>
>
> I took this for a spin against x86_64_defconfig and ran into two issues:
>
> 1. https://github.com/ClangBuiltLinux/linux/issues/1252

"Cannot split an edge from a CallBrInst"
Looks like that should be fixed first, then we should gate this
feature on clang-12.

>
>    There is also one in drivers/gpu/drm/i915/i915_query.c. For the time
>    being, I added PGO_PROFILE_... := n for those two files.
>
> 2. After doing that, I run into an undefined function error with ld.lld.
>
> How I tested:
>
> $ make -skj"$(nproc)" LLVM=1 defconfig
>
> $ scripts/config -e PGO_CLANG
>
> $ make -skj"$(nproc)" LLVM=1 olddefconfig vmlinux all
> ld.lld: error: undefined symbol: __llvm_profile_instrument_memop

Err...that seems like it should be implemented in
kernel/pgo/instrument.c in this patch in a v2?

> >>> referenced by head64.c
> >>>               arch/x86/kernel/head64.o:(__early_make_pgtable)
> >>> referenced by head64.c
> >>>               arch/x86/kernel/head64.o:(x86_64_start_kernel)
> >>> referenced by head64.c
> >>>               arch/x86/kernel/head64.o:(copy_bootdata)
> >>> referenced 2259 more times
>
> Local diff:
>
> diff --git a/drivers/char/Makefile b/drivers/char/Makefile
> index ffce287ef415..4b2f238770b5 100644
> --- a/drivers/char/Makefile
> +++ b/drivers/char/Makefile
> @@ -4,6 +4,7 @@
>  #
>
>  obj-y                          += mem.o random.o
> +PGO_PROFILE_random.o           := n
>  obj-$(CONFIG_TTY_PRINTK)       += ttyprintk.o
>  obj-y                          += misc.o
>  obj-$(CONFIG_ATARI_DSP56K)     += dsp56k.o
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index e5574e506a5c..d83cacc79b1a 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -168,6 +168,7 @@ i915-y += \
>           i915_vma.o \
>           intel_region_lmem.o \
>           intel_wopcm.o
> +PGO_PROFILE_i915_query.o := n
>
>  # general-purpose microcontroller (GuC) support
>  i915-y += gt/uc/intel_uc.o \

I'd rather have these both sorted out before landing with PGO disabled
on these files.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnssY%3DCV4daRQvGa659AzGvMT%2BKb10g5-DDuZjqbp-J5A%40mail.gmail.com.
