Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4U436CQMGQEWPBF3UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8807939928F
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 20:31:14 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id nd10-20020a170907628ab02903a324b229bfsf1028294ejc.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 11:31:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622658674; cv=pass;
        d=google.com; s=arc-20160816;
        b=yej3KbCPM4azvbOOUEWkv69LPjp7Aw2D7GtII8m8bU8S3ajtf2g2QNeHp1LE0KNZYQ
         WTtKaRqXdnd8LZUyR5VqjvqbWe5i96Os+6L92YxAMBrfDgbWXiNZ0fEcGp08YdaTD25c
         wP8FtvJSPeWRRaeWktqr3t65Ek5KxEOeJsIAu7QbML2+KehSvWomLSkBW2aMPbs08wXn
         ymC/ibFeJT/HvIcpJkpm+NUqdQjA12OZ6nhHnWO9thY8gQIZK84bx/XV7lQ97x7ovECB
         NQYxKm1FtiHOuJMrFP4QOaB+Tc+2ykSTLAv446IJNoexXljo4OjWek/ZLui9gS7k66dj
         1+2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E5aLt4oEJOi4bpp4XSgdqEoI129NAvup7uVs56Q2sQM=;
        b=eTupeLaz/xpW+1wnZ/g4dKML1b7d7DwzWYp+KbJwCEa+rty7UbvDgrP9Hjvdaid/p0
         svls8CzLAgAKlZ9Elc5uA5RUU5IIaSqIogXFiLYYmeMq8pkrzlFdAWfo7e0KKLI2MDGC
         l499YRq1VmXsRHpEng1Ta1rZSPxsC5o6tHQO8QxwNdCRG3Ssr18cZKsrK/qdCHhpD/p+
         ZJeh4YYYFW6lqyvXXh6K3UGoqq4UFQ/4NRpq5IRGAH4EvRxFSNt6YlRrH5qVXHwjKQH3
         xeAL2Md6vn++m1q3i7IUxfOLGwmfCqBEkbVWGMkwoUowQ4QbBv3w0CnLmmqN5VzMzFpk
         pPDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wag97yn+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E5aLt4oEJOi4bpp4XSgdqEoI129NAvup7uVs56Q2sQM=;
        b=Cf88kiY9mBsT5nrvFRjv/J1RJgcAasRlXWf0qpHfucfNtPWyvdrJPMmYQoJXiCiWiN
         lE53j9sTF5Jp4ATEfBdRVEnnsfEAFdkKL2fYOg2/hVfsR9GZ/AndhUEOBhYM6Oy6h1bZ
         BW87Mz5ZqtUL8JoQE++w8LDFZYMiQa9L0YU6KjTTynkFWk23xqtVEqyoEqpbROBEoeh8
         sgJcx0pzcjaCZGjIDH80XDV0aCjGX04ZmtzG2aYssvDxo08QBQdRjkEH42/ufCRt6qey
         QKSpRvjgTbV4iu7c6l3xICeVPC5FwnsZ35vva6yk9Gth8Ww2vjcogWRx4DjfuqnvbjYn
         ElIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E5aLt4oEJOi4bpp4XSgdqEoI129NAvup7uVs56Q2sQM=;
        b=WPddaem457fcoEuSPaNJALinnmQxMHUfRl8AdIbsApo3KLSMdNycNmm/wAnCkrnNTv
         rqVGnQij8MRPvOOH8l/SmNOsZ+COB4ovM5aKIyknziUGyxx02CFGMGzCN1EqXGE49xOM
         0CQz6dVxl1xvpLc8XKA9rZKnZZz4bp/dFPGulX3lflbh5yKoKW5LMYyeMarbLGtSQjNJ
         um5enT0kn9hkvLrVdDcxrO4r1z+AUaAGU0oVtUVbVEPGAeeh5K9TqMduyNDfXl7sF364
         3vbdGh1gDnPBj+JGXOuoO2tTltjnaadQoNnmP5a/OpY3j2L2vSxPvGi9U3aW3Ir5ZW7Q
         u4ug==
X-Gm-Message-State: AOAM530HBzHv1gpqMHN7R7YVqLIQHLz0Yibq9Vja0lHkDjSAMqxVrenv
	QhA4qK2QY+6fIvIpf94RN5M=
X-Google-Smtp-Source: ABdhPJxn5+l2YfpfS9op9CmRKAhPEvBBbn4x1LB1KEeLxPafw1nKjbQxPz0TQjJEwCPhsALJ05C9Pw==
X-Received: by 2002:a17:906:9b0a:: with SMTP id eo10mr35521983ejc.305.1622658674275;
        Wed, 02 Jun 2021 11:31:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:94d4:: with SMTP id dn20ls299763ejc.6.gmail; Wed, 02
 Jun 2021 11:31:13 -0700 (PDT)
X-Received: by 2002:a17:906:c0c9:: with SMTP id bn9mr36116278ejb.7.1622658673338;
        Wed, 02 Jun 2021 11:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622658673; cv=none;
        d=google.com; s=arc-20160816;
        b=VXIiyf3XaYv5OCDHwCN76HvdR9As0Zbg8cpr548V1cmLdH15rcAoJq4o+76AxK+rkq
         p0aIocS7yJaBzmmbX1/KDB/mwaVcc+G7MJnhi+bxqHljMWLXDAwB5OQhyZEFJG5Livit
         Eh0qrcqekacxjUG7lsq0D/vXZqCMFY0bxK74RGuDL0jlmTDW5kjw8oJcK5SXKwpamnU4
         TgrgSRKamLT956nGvKQcULXTUmmOjqIfhn7ZxNKb+PSl7EASWS2jROsRMLbViGsnshVs
         rexMrJMZWHl2Q2UbpKlTe7zQYU8eZ+MIvfksxFhG16EzImAVPw94TE7aV9CK++k/2uO1
         bynQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p/KfO5KINag1CdRXF2skRaiIKT1AFBNN76N3IG3W7uA=;
        b=xC1uKnMtyoi9FlD42o7hZDseWF3rbCLvrT7ReAXGtpORZ+qW9eS3kMDkKf9V3P8NzV
         fQRbPr0L5M28bHwVGvJTBBeHFWAAlyjswuzasLuE0mncFuW2sSr6fpKKmSQnqwXsJldd
         unU2Z5hoY3k/F/mGXGKckl4RhomHMyAfuslJzETcx6OhOwcI4VbFryfdh5sdinDa7Lgr
         go6PgO/zC+qX0hKxQwOyUEFWB0e+yT/azm1YRFcfXiRdHbduppr/dXtsTV2+m7fKFhZL
         6IKnoFxrH6Tv8K+bj8v4bLblrSz2/xmFp470caISSiW+Xd2s6tnzL3ZHUWsStwBQ/Y22
         HcGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wag97yn+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id e26si42574edj.1.2021.06.02.11.31.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 11:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id m3so3783154lji.12
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 11:31:13 -0700 (PDT)
X-Received: by 2002:a2e:b0f2:: with SMTP id h18mr15316820ljl.244.1622658672840;
 Wed, 02 Jun 2021 11:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <26f81a61-e2eb-47e9-b6e0-3989582bb955n@googlegroups.com>
In-Reply-To: <26f81a61-e2eb-47e9-b6e0-3989582bb955n@googlegroups.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Jun 2021 11:31:01 -0700
Message-ID: <CAKwvOdmSV34MqtU+3xLSp-7gx4fnnirbsqDCenCXx=f=Tp-2tA@mail.gmail.com>
Subject: Re: Building an existing .config (provided for gcc) with clang?
To: Mathieu Acher <mathieu.acher@gmail.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arnd Bergmann <arnd@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wag97yn+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Wed, Jun 2, 2021 at 3:13 AM Mathieu Acher <mathieu.acher@gmail.com> wrote:
>
> Hi,
>
> tldr; some "fixes" seem needed to build an arbitrary .config with gcc *and* clang
>
> I'm investigating a build scenario where I already have a .config typically generated with randconfig and originally set up for building with gcc...
> And I want to use clang instead to build it.
> My experience so far is that the --syncconfig Kconfig asks me to fix some options' values
> first, to choose between INIT_STACK_NONE and INIT_STACK_ALL... and then to choose KCSAN: dynamic data race detector (KCSAN)  or not...

Hi Professor,
It's a good question, one I don't really have a satisfactory answer for.

I think it's impossible (but would love to be corrected) to reuse
exactly the same .config with two different compilers (even different
versions of the same compiler can have differences).  This is because
KConfig also encodes not just various kernel drivers and features, but
whether the toolchain supports certain features.  So you can't force
one compiler to claim to support some compiler flag, then actually use
it.  If at Kconfig time we detect the compiler has support for say a
-fsanitize= flag, we encode that in the .config, then during the
actual build just look that up in the .config and use the -fsanitze=
flag.

Probably the closest to what you're trying to do is the `olddefconfig`
make target.

>
> Two examples below, on Linux kernel 5.8.
>
> First, with tinyconfig
>
> make CC=gcc tinyconfig
> gcc --version
> gcc (Debian 10.2.1-6) 10.2.1 20210110
>
> make CC=clang-11
> scripts/kconfig/conf  --syncconfig Kconfig
> *
> * Restart config...
> *
> *
> * Memory initialization
> *
> Initialize kernel stack variables at function entry
> > 1. no automatic initialization (weakest) (INIT_STACK_NONE)
>   2. 0xAA-init everything on the stack (strongest) (INIT_STACK_ALL) (NEW)
> choice[1-2?]: 2
> Enable heap memory zeroing on allocation by default (INIT_ON_ALLOC_DEFAULT_ON) [N/y/?] n
> Enable heap memory zeroing on free by default (INIT_ON_FREE_DEFAULT_ON) [N/y/?] n
>
> and then the build proceeds...
>
> Maybe it's my setup/build environment, but I got errors:
> CC      arch/x86/events/amd/core.o
> In file included from arch/x86/events/amd/core.c:12:
> arch/x86/events/amd/../perf_event.h:854:21: error: invalid output size for constraint '=q'
>         u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
>                            ^
> ./include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
>         raw_cpu_read(pcp);                                              \
>         ^
> ./include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
> #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                         ^
> ./include/linux/percpu-defs.h:321:23: note: expanded from macro '__pcpu_size_call_return'
>         case 1: pscr_ret__ = stem##1(variable); break;                  \
>                              ^
> <scratch space>:169:1: note: expanded from here
> raw_cpu_read_1
> ^
> ./arch/x86/include/asm/percpu.h:394:30: note: expanded from macro 'raw_cpu_read_1'
> #define raw_cpu_read_1(pcp)             percpu_from_op(, "mov", pcp)
>                                         ^
> ./arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>                     : "=q" (pfo_ret__)                  \
>                             ^
> In file included from arch/x86/events/amd/core.c:12:
> arch/x86/events/amd/../perf_event.h:854:21: error: invalid output size for constraint '=q'
> ./include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
>         raw_cpu_read(pcp);                                              \
>         ^
> ./include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
> #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                         ^
> ./include/linux/percpu-defs.h:322:23: note: expanded from macro '__pcpu_size_call_return'
>         case 2: pscr_ret__ = stem##2(variable); break;                  \
>                              ^
> <scratch space>:174:1: note: expanded from here
> raw_cpu_read_2
> ^
> ./arch/x86/include/asm/percpu.h:395:30: note: expanded from macro 'raw_cpu_read_2'
> #define raw_cpu_read_2(pcp)             percpu_from_op(, "mov", pcp)
>                                         ^
> ./arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>                     : "=q" (pfo_ret__)                  \
>                             ^
> In file included from arch/x86/events/amd/core.c:12:
> arch/x86/events/amd/../perf_event.h:854:21: error: invalid output size for constraint '=q'
> ./include/linux/percpu-defs.h:446:2: note: expanded from macro '__this_cpu_read'
>         raw_cpu_read(pcp);                                              \
>         ^
> ./include/linux/percpu-defs.h:420:28: note: expanded from macro 'raw_cpu_read'
> #define raw_cpu_read(pcp)               __pcpu_size_call_return(raw_cpu_read_, pcp)
>                                         ^
> ./include/linux/percpu-defs.h:323:23: note: expanded from macro '__pcpu_size_call_return'
>         case 4: pscr_ret__ = stem##4(variable); break;                  \
>                              ^
> <scratch space>:179:1: note: expanded from here
> raw_cpu_read_4
> ^
> ./arch/x86/include/asm/percpu.h:396:30: note: expanded from macro 'raw_cpu_read_4'
> #define raw_cpu_read_4(pcp)             percpu_from_op(, "mov", pcp)
>                                         ^
> ./arch/x86/include/asm/percpu.h:189:15: note: expanded from macro 'percpu_from_op'
>                     : "=q" (pfo_ret__)                  \
>                             ^
> 3 errors generated.
> make[3]: *** [scripts/Makefile.build:281: arch/x86/events/amd/core.o] Error 1
> make[2]: *** [scripts/Makefile.build:497: arch/x86/events/amd] Error 2
> make[1]: *** [scripts/Makefile.build:497: arch/x86/events] Error 2
> make: *** [Makefile:1756: arch/x86] Error 2
>
> The difference between the .config (.config with gcc vs manual "fix" of .config with clang) is as follows:
> scripts/diffconfig .config .config.old
> -CC_HAS_ASM_GOTO_OUTPUT y
> -CC_HAS_AUTO_VAR_INIT y
> -CC_HAS_KASAN_SW_TAGS y
> -CC_IS_CLANG y
> -HAVE_KCSAN_COMPILER y
> -INIT_STACK_ALL y
>  CC_VERSION_TEXT "Debian clang version 11.0.1-2" -> "gcc (Debian 10.2.1-6) 10.2.1 20210110"
>  CLANG_VERSION 110001 -> 0
>  GCC_VERSION 0 -> 100201
>  INIT_STACK_NONE n -> y
>  KASAN_STACK 0 -> 1
> +CC_IS_GCC y
>
>
> Interestingly, I've then tried:
> make CC=gcc tinyconfig
> make CC=clang-11 tinyconfig
> scripts/diffconfig .config .config.old
> -X86_PAE n
> +ARCH_ENABLE_MEMORY_HOTPLUG y
> +CRASH_DUMP n
> +DEBUG_HIGHMEM n
> +FRAME_POINTER y
> +HARDENED_USERCOPY n
> +HAVE_ALIGNED_STRUCT_PAGE y
> +HAVE_HARDENED_USERCOPY_ALLOCATOR y
> +HIGHMEM y
> +HIGHPTE n
> +SLAB_FREELIST_HARDENED n
> +SLAB_FREELIST_RANDOM n
> make
>
> and it builds nicely!
> It should be noted that the "diff" between .config is different.
>
> ==
>
> Second example, with a random configuration...
> (I can upload the .config if needs be)
>
> make randconfig # with gcc
> make CC=clang-11 # build was OK this time, manual fix seems effective
> scripts/diffconfig .config .config.old
> -CC_HAS_ASM_GOTO_OUTPUT y
> -CC_HAS_AUTO_VAR_INIT y
> -CC_HAS_KASAN_SW_TAGS y
> -CC_IS_CLANG y
> -HAVE_KCSAN_COMPILER y
> -INIT_STACK_ALL y
> -KCSAN n
>  CC_VERSION_TEXT "Debian clang version 11.0.1-2" -> "gcc (Debian 10.2.1-6) 10.2.1 20210110"
>  CLANG_VERSION 110001 -> 0
>  GCC_VERSION 0 -> 100201
>  INIT_STACK_NONE n -> y
>  KASAN_STACK 0 -> 1
>  LD_VERSION 235020000 -> 235010000
> +CC_IS_GCC y
>
> ===
>
> So my questions...
>
> Can we envision to have a generic procedure that would "fix" a .config (gcc oriented) in such a way clang can be used?
> if it's "just" taking a .config and fixing INIT_STACK and KCSAN, I'm fine :)

I think if you run `make CC=clang olddefconfig` that will reuse as
much as possible from the previous .config, no matter which toolchain
it was built with.

>
> It seems that some options are supported only by clang (and vice versa)...
> It could be useful for the fixing procedure...
> is it possible to list all such options?
>
> More generally, do you have some experiences of building an arbitrary .config with gcc and then clang?
>
> The goal is to investigate how clang may differ from gcc given a configuration (partly discussed at Plumbers https://youtu.be/FFjV9f_Ub9o?t=10761)
>
> Thanks for your help!
>
> Mathieu Acher
>
> Associate Professor
> Univ Rennes, Inria, CNRS, IRISA, France (DiverSE team)
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/26f81a61-e2eb-47e9-b6e0-3989582bb955n%40googlegroups.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmSV34MqtU%2B3xLSp-7gx4fnnirbsqDCenCXx%3Df%3DTp-2tA%40mail.gmail.com.
