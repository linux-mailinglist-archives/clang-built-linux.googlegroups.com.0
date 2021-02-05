Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPEP62AAMGQED52G3JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 958D9310F4F
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 19:00:28 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id i13sf7223846edq.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 10:00:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612548028; cv=pass;
        d=google.com; s=arc-20160816;
        b=kjJ15DS768DVPAeeYwon/IAwcZ9I1VqSZrqr9JNA29u1cGTccFBLtsf7cOUQVUbZya
         5V7cG0EwZbZpPUqb6PhjjxAM6PnIeTwqoN0nI/A29UZJT0XkmryilMl7pOE4rQLOE1gD
         g8DaNEhi3X531MrcumOwVqJLIuhGd+SNzNN2rEekHpToCKDXMF3nHg17WUpNxIUa7HQP
         xo4MZUR0WBTFMQSljzuPialh3XO5cZudYBAsX5jxwLgLQFkQsBygvcEr7KOLzh4NYP5u
         Brkslf3H8DJfXNPQgY6bU3aweFIQV5KJPX48klCUbOdEwJrD+CbkqqLqmlHAbuj78dqN
         Iocg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eXspM5n6MfL5tMKRO+QKIUEeTyI7H31JicdOQLRxJfg=;
        b=auWWwgOy5b4tg9ZXhjwghb4vMYbT5B2TuYgzinn917nPLXnCYRG1144TVyWbV8Jpty
         pgTs1x/eHtomlMvFIGqOCX0uDuNUb94UfhXiQO5J7x1RqAKYkLZTgbCBnZD45KIPRAPf
         pnq1jQ9QtcYUzp545V1ez6qXbU28s6dIDMnX1EzBkm+xlKZ0hQwEUYtOTrsZPfzN/fLG
         3VQHYtB+KKRYGuxql/V7eptHPKHysw8m8dlQXOsQ7hdXrHmB2mrOg2JI2MY+saf5jE5h
         sTo0Zeeg+HDO3pVjBv/62U2jpLhWkiPvhPHpYbR0BdOe0+cAMse1+nVqkVxi+6o9N35v
         +q2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lP8jBr1c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eXspM5n6MfL5tMKRO+QKIUEeTyI7H31JicdOQLRxJfg=;
        b=cYXskhHtKl/0VOypQuRm7hkJqD3s4bPem4xVro2/sQy3wT2/WWaxBQbjzQ/F+127m1
         aXMtBQ4KE4ZLuKPBnJ+tWADv//BwiZbrGUWVAa7GTbVjHVrNXPwmdxyQ3AKguc705/lD
         1CdtNQa8cKOrUVFAYLBY8X0KIqp1Ti3kI8evIiCjHgcZy240YsJ1XsIaDZK2p8hXM8pB
         PnW0vg+oFFqdowciCY0LeJnfUNYidimRONRBHgg2NpY43i4Kf2dO7HPwlPbLwfYIs7Xa
         EhMAKZBhOXzJLRz9TiL/soKIcsOQLueNJLY2fW3CSFS5nAfw+v8CESq/eu5C4C5mYp6b
         QwpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eXspM5n6MfL5tMKRO+QKIUEeTyI7H31JicdOQLRxJfg=;
        b=FWM7WzCbDUld9cskETGEVxP77ZvWhrgfOKt/a8I9c1Q2EBGNCtaurpwh/jvDxqA4/R
         P0oihnQwi0tdWVeLIx20zVibucDEIM5wEY04ZfrkcPXIckyQwGJylOiE5wN31C+mQa3X
         W1BWfD1Tci8gQ4anE0w/SwJP6el7JKSqCKMDT7f1spRPsFU1Qcs4tGU/pVEiMLcrErhz
         Iy3crr3Irbbu8LQbVHVN+qJpS3j3KmTd9VkLgYmSHKhJrgnL9mVxwp+aAzFkFieN54A7
         hp7/QoxJ88C+zKh9OKgja4kDW4qk0On/qNdtx3P2KtybgTtNJ2W3geoWCm/ZUFjgMCIZ
         3/vw==
X-Gm-Message-State: AOAM530TB15/TsSJuQRa8geTj5jBtt9toW3cyrwudmIMfwdWfqukNu0i
	so5PcSXaxyZ41ICo9AGzDlE=
X-Google-Smtp-Source: ABdhPJxO+95Ux+S+5fumZ8pUpgWVSsioshV0k/BAEnY/Wzuopy755f8prD5xgtc9Oo63EU7uUUN2PQ==
X-Received: by 2002:a17:906:ecfb:: with SMTP id qt27mr5023528ejb.123.1612548028326;
        Fri, 05 Feb 2021 10:00:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6a87:: with SMTP id p7ls4934140ejr.10.gmail; Fri, 05
 Feb 2021 10:00:27 -0800 (PST)
X-Received: by 2002:a17:906:e104:: with SMTP id gj4mr5095621ejb.349.1612548027405;
        Fri, 05 Feb 2021 10:00:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612548027; cv=none;
        d=google.com; s=arc-20160816;
        b=uBpLuSiN5H0qGKzyGvBEzdOl35Nzj5Ax+CSH7JhlOOSxKOqpzWJi4nRGdhchW6MvBU
         oSIOe/mV4KivWPn41U/vFIfVRJs727YkOimODNTNQUS82chxWhoFg/lfRNpzQzgU8YYe
         XnIaDYBsyrJn2ipDA7XFxCUyL3xuhVhdmAUPlE4fUdlghEv2z4b8WZRQM4EC73olk34p
         rGl7TIRvXH8ZBJlY9qQutkd7ryTyDFAV1hYI0G9mYxme+ufFXXleZrPwtQ6AJmDA7C45
         PiOAnVdkC6/XDrbfomeeo2PAEISP2w2/mQN/0PjuKP7IVG8xHd+KboLc9L9L1ZmhZArU
         doGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pSE0sW9HDz15zHSVgPXcggYny/sFfBMwmGghDuU5vck=;
        b=tf8p/OBNEoA873/KAmFhkL28THDRa2tpwlz7UlSinJXqfrh7WhIUoW4texSPFU6USv
         IWibMX8m8qn1lsyqyX85D4QpI6b9DY884yywsQI1brViZA/FZwX3QlHi6DzisaN0c2q8
         hdCMcj1yqcxfl9oFAungHm/LmW8F4kmHgJ39zpRMsZlG1VfUaUGwA7I8ZdCkZlqI/tXo
         ZccOtKT9JhGjxSvGbAMMnswRY35U9pJ1dDcifsj2c60rbKI8cXgpdyKcnvkVHlZOKZ7L
         qEHpg8YGzfhVuG54nSDEJi9YV5ITlWcgKGd9hEhx+Ia4/cTsoCfr74UFJ895ko2GmaCE
         ECPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lP8jBr1c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id z69si224392ede.1.2021.02.05.10.00.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 10:00:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id q12so11047147lfo.12
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 10:00:27 -0800 (PST)
X-Received: by 2002:ac2:5622:: with SMTP id b2mr3092499lff.297.1612548026909;
 Fri, 05 Feb 2021 10:00:26 -0800 (PST)
MIME-Version: 1.0
References: <20210205085220.31232-1-ardb@kernel.org>
In-Reply-To: <20210205085220.31232-1-ardb@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Feb 2021 10:00:14 -0800
Message-ID: <CAKwvOdkg75CRM0QNeO4ojM=OndFgJ+j7fO3Yt=jE4k0eTfYmRQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: decompressor: fix BSS size calculation for LLVM ld.lld
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <nathan@kernel.org>, 
	Guillaume Tucker <guillaume.tucker@collabora.com>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lP8jBr1c;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Fri, Feb 5, 2021 at 12:52 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> The LLVM ld.lld linker uses a different symbol type for __bss_start,
> resulting in the calculation of KBSS_SZ to be thrown off. Up until now,
> this has gone unnoticed as it only affects the appended DTB case, but
> pending changes for ARM in the way the decompressed kernel is cleaned
> from the caches has uncovered this problem.
>
> On a ld.lld build:
>
>   $ nm vmlinux |grep bss_
>   c1c22034 D __bss_start
>   c1c86e98 B __bss_stop
>
> resulting in
>

$ readelf -s arch/arm/boot/compressed/vmlinux | grep bss_size

>   433: c1c86e98     0 NOTYPE  GLOBAL DEFAULT  ABS _kernel_bss_size
>
> which is obviously incorrect, and may cause the cache clean to access
> unmapped memory, or cause the size calculation to wrap, resulting in no
> cache clean to be performed at all.
>
> Fix this by updating the sed regex to take D type symbols into account.
>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Guillaume Tucker <guillaume.tucker@collabora.com>
> Link: https://lore.kernel.org/linux-arm-kernel/6c65bcef-d4e7-25fa-43cf-2c435bb61bb9@collabora.com/
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>


Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for debugging+fixing this, and Guillaume for the report.  It's
nice to see a fix so early; thinking back to last year before KernelCI
integration, we probably would have only noticed when CrOS went to
upgrade their rk3288 platform devices.

Some other tags that might be nice to apply:

Cc: stable@kernel.org
Fixes: 429f7a062e3b ("ARM: decompressor: fix BSS size calculation")
Reported-by: Guillaume Tucker <guillaume.tucker@collabora.com>
Reported-by: "kernelci.org bot" <bot@kernelci.org>

Tests run:

Before (LLD):
$ llvm-nm vmlinux | grep bss_
c1c1a3fc D __bss_start
c1c7e998 B __bss_stop
$ llvm-readelf -s arch/arm/boot/compressed/vmlinux | grep bss_size
   440: c1c7e998     0 NOTYPE  GLOBAL DEFAULT   ABS _kernel_bss_size

After (LLD):
$ llvm-nm vmlinux | grep bss_
c1c1a3fc D __bss_start
c1c7e998 B __bss_stop
$ llvm-readelf -s arch/arm/boot/compressed/vmlinux | grep bss_size
   440: 0006459c     0 NOTYPE  GLOBAL DEFAULT   ABS _kernel_bss_size

Before (BFD):
$ llvm-nm vmlinux | grep bss_
c1c1a3fc B __bss_start
c1c7e998 B __bss_stop
$ llvm-readelf -s arch/arm/boot/compressed/vmlinux | grep bss_size
   463: 0006459c     0 NOTYPE  GLOBAL DEFAULT   ABS _kernel_bss_size

After (BFD):
$ llvm-nm vmlinux | grep bss_
c1c1a3fc B __bss_start
c1c7e998 B __bss_stop
$ llvm-readelf -s arch/arm/boot/compressed/vmlinux | grep bss_size
   463: 0006459c     0 NOTYPE  GLOBAL DEFAULT   ABS _kernel_bss_size

+ Fangrui,
Fangrui, __bss_start looks like it's linker script defined by the
BSS_SECTION macro from include/asm-generic/vmlinux.lds.h:1160 being
used in arch/arm/kernel/vmlinux.lds.S:149.  Should these symbols be
placed in .bss? Might save a few bytes in the image, unless there's an
initial value that's encoded with them?

> ---
>  arch/arm/boot/compressed/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index fb521efcc6c2..54307db7854d 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -115,8 +115,8 @@ asflags-y := -DZIMAGE
>
>  # Supply kernel BSS size to the decompressor via a linker symbol.
>  KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
> -               sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
> -                      -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
> +               sed -n -e 's/^\([^ ]*\) [ABD] __bss_start$$/-0x\1/p' \
> +                      -e 's/^\([^ ]*\) [ABD] __bss_stop$$/+0x\1/p') )) )

I wasn't sure whether we still needed `A`, but
commit 6cea14f55474 ("ARM: replace unnecessary perl with sed and the
shell $(( )) operator")
references that depending on the version of binutils you might observe
that.  There's no more info on which version or under what conditions.
Lest we reintroduce this same problem for that version, it's fine to
leave it.

>  LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
>  # Supply ZRELADDR to the decompressor via a linker symbol.
>  ifneq ($(CONFIG_AUTO_ZRELADDR),y)
> --
> 2.30.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkg75CRM0QNeO4ojM%3DOndFgJ%2Bj7fO3Yt%3DjE4k0eTfYmRQ%40mail.gmail.com.
