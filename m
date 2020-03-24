Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP7X5DZQKGQEKCUDI6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BD3191705
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:56:33 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id v11sf14004273pgs.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:56:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585068991; cv=pass;
        d=google.com; s=arc-20160816;
        b=CwRAd3+yD8MYm7IaABlDkLh9SKVGR0KYgKFb4wyQlD2QlYkyn4AaJn7IlwEPqBspsC
         7I55nY3SpiXchFBllEzKL+s0pHZGHbFPnCdlLoSdQVqjnGLT6zq8exhf8wdSbThjmAMK
         MFQKhL/otDEN8bjBCPvk5GE7T//0MQVrbRp0L8yeVw5Qq6tlDJDsQHhKoMQUuBd/ocar
         jyPohzwaQwhIS2yaVsoh87/IG6dL7d4evsKF7fa7041Gr2OihRc9WC4V9+TeZUa4asmk
         vFOjRKJ3SWLYNijc+CxStHilyT2RVGcy3Z8jcB0k4RiLE2GCtCkTEU+lM3L3Zz3obAOk
         N21w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6UgbsWj4yzvvQCG5jdTzwFZnGfknT9GK5dQBf0pGqqA=;
        b=nnplPJGB/1DvUFQRD57GkfmupLcLdR1u1eimfgwjR2Ei+MeqO/vHKJJbM2AMe8AnAj
         m1wuH2n6fsnJxPbu/GYhsjwt2lgpFIZFbGbzdipO1FcnJWv5A19ESkNKYJsPA1FJ21/x
         qjvjtuRT3M6RbR+M09g0FKsgVqR7qMS/j2xD8UaAYM4iQ37dz27E9wq4YK02wsjmhxml
         92ef7I6sqG+TsApb6YUgnu5L4IDPV2DbZuu9izbZS1Hu4IYUPWy1KLsfLoZfV8Bs/V6G
         bkPmJJtt8kbc5YXeUGzsWl6837nDwn+b+Wwduz1Z60PaZVLMeIVSlAQLlGimwD3VNrzD
         AdrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nwb+jWCc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UgbsWj4yzvvQCG5jdTzwFZnGfknT9GK5dQBf0pGqqA=;
        b=B0yojEIzK1cwEWsiTTMYyRRHbJta9tTHAyUVf0g4CIvfC4kTM6tIaQlgjOXKH7ozY7
         dPDh2kb8M3pvoiZFR875enhey+KcGyGyJIiknrNc+hb3fT7J9gx3S27usT2WBCoseo/e
         OvkPemyzmdm+zfETbBNZAKLmT3YXlS7pzw7+izCVgxIr1TVDeafy5gQFoxABOT7eaK76
         +ZUsHgRig67Zo4cYeRxl2Hhc6yeChitriMi2JbHd1B4EiTUEiRF+/8iLS8b469PSPB1r
         GpIlXU9uenUeIEMcW1Yiwa2y5x4fxqSK5TrAuwQU5YeyVWGhellOij644oS0niGSDHPd
         J4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6UgbsWj4yzvvQCG5jdTzwFZnGfknT9GK5dQBf0pGqqA=;
        b=UyDF+eBjWdjfFUUXcARH7ib48zWnP5e3ehQmisW0T0v4goJwTiUU4OWP32tSp+JKD+
         YRcidmBZykAE5malwgHZMB/zBZB0WrK7AK+ZujmYjGnDk6OlyvCJpCvFGns7QW9XqesT
         ZFmM3BFPfS1sO9zKL1GEAGqzRAW6I1fg5AMZ4ze7U5uVWSAB7kWqrStXg/xCdDFKJDDO
         TWNcOKcD+JFjdyn7krngGBAPkpLVJQ8xYnC1Bobb2AZ6JShEP9wyZoIuCBVeQ/yCe5lz
         Ye2T+zYhbY6j9ul5bEOC7kvwg+9fETVrbocuSI9zSmW2DYGNwG4Jd3Hm2h3ucY5VVNCi
         fqLg==
X-Gm-Message-State: ANhLgQ1HfNoswOpRyXZH2D1qo2o0yVA4XK06KO/N/h49Zk3cy02YlKZw
	U4Xpngkj7oGKL+blhb2riyk=
X-Google-Smtp-Source: ADFU+vv51mlVN2G0R04s6dm6hJ7LwafR9480uvtNNhJFk/bteZ/ZcxFD3897L0KPP3XrgbuFJcWLjQ==
X-Received: by 2002:aa7:9e46:: with SMTP id z6mr31155645pfq.17.1585068991729;
        Tue, 24 Mar 2020 09:56:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fd82:: with SMTP id cx2ls2229566pjb.1.canary-gmail;
 Tue, 24 Mar 2020 09:56:31 -0700 (PDT)
X-Received: by 2002:a17:90a:fd90:: with SMTP id cx16mr6582950pjb.41.1585068991227;
        Tue, 24 Mar 2020 09:56:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585068991; cv=none;
        d=google.com; s=arc-20160816;
        b=R4xmh7cIniY7mM4Irh5HN5303BEFVDD7Z8krV9ZLh3JuWNg4EF6ciulA43QLhHrbMw
         4ln4ovHYWypGE2/JsKy1fxNGMP1HBFrE5XsSxG0eNy8seWJTqcKt1Y/dXpGOLjM1egDN
         EXfr4wQKcvebOAOo4wy+ru6HCy3IB4eC/X9mMSear+/k51v5lHYLhznyNc1JxGQJczJM
         PYWnDGfaJly2Cz+iV6mM/ZgT/+tH8qT70M58zpUwWwsGLTbjsHGOFMbKtTDOtrBXF/Zj
         S+YdyFrGP3UprICEqxvZAwLnRwAz3bJ8G6Wycg+0nW3LgfYx4gobnRRKTqiw9GVxh54z
         JGCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1TpragRZcw0zTQSnhep+0z7BDuiqv6MvTdfAt2UZcKM=;
        b=NiuwQr53egDdloOLcYel8quB85oE0+ZxWBBKPVsOpoS6gIafGdl0dyeOwjEQqWPO0Z
         kd45my6viRzPUQI5zOyxiAp1TfVLxNWi5CVHBRju6qVHJ9sETOwIyM1PEvcw+9C5j8ZU
         pc93qCKv8TKQvjaWesS67MCMY9u/ueX8xSTiILVcXmyR4uuhXRLfU2VpkfPlQWJvolVW
         ii4T7TP9NnWhGWOSU36D6M/AHPAxKS2UP/+4ETciuDqMtgIbWDk53yBES5QInUKyXsBM
         Gfbybl7ctzU/HgniBmCPyp35vIJyZvcXD9Vht2LvWGMOwdSx7MKs/do9fV53LVNd9pHM
         JtbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nwb+jWCc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id x12si1168354plv.3.2020.03.24.09.56.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:56:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id mj6so1818844pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 09:56:31 -0700 (PDT)
X-Received: by 2002:a17:902:6bc8:: with SMTP id m8mr21047743plt.223.1585068990536;
 Tue, 24 Mar 2020 09:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-7-masahiroy@kernel.org>
In-Reply-To: <20200324084821.29944-7-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 09:56:18 -0700
Message-ID: <CAKwvOdkc6WgW7Knnk8rb92iYUOjc7bBZ6Ln69jjRa+N=-JLz+g@mail.gmail.com>
Subject: Re: [PATCH 06/16] x86: remove always-defined CONFIG_AS_SSSE3
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	"H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Nwb+jWCc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> CONFIG_AS_SSSE3 was introduced by commit 75aaf4c3e6a4 ("x86/raid6:
> correctly check for assembler capabilities").
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").

Looks like binutils gained SSE3 support in 2005; 2.21 was released in 2010.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> I confirmed the code in $(call as-instr,...) can be assembled by the
> binutils 2.21 assembler and also by LLVM integrated assembler.
>
> Remove CONFIG_AS_SSSE3, which is always defined.
>
> I added ifdef CONFIG_X86 to lib/raid6/algos.c to avoid link errors
> on non-x86 architectures.
>
> lib/raid6/algos.c is built not only for the kernel but also for
> testing the library code from userspace. I added -DCONFIG_X86 to
> lib/raid6/test/Makefile to cator to this usecase.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
> ---
>
>  arch/x86/Makefile              | 5 ++---
>  arch/x86/crypto/blake2s-core.S | 2 --
>  lib/raid6/algos.c              | 2 +-
>  lib/raid6/recov_ssse3.c        | 6 ------
>  lib/raid6/test/Makefile        | 4 +---
>  5 files changed, 4 insertions(+), 15 deletions(-)
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index e4a062313bb0..94f89612e024 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -178,7 +178,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
>  endif
>
>  # does binutils support specific instructions?
> -asinstr += $(call as-instr,pshufb %xmm0$(comma)%xmm0,-DCONFIG_AS_SSSE3=1)
>  avx_instr := $(call as-instr,vxorps %ymm0$(comma)%ymm1$(comma)%ymm2,-DCONFIG_AS_AVX=1)
>  avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
>  avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
> @@ -186,8 +185,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
>  sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
>  adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
>
> -KBUILD_AFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -KBUILD_CFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_AFLAGS += $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> +KBUILD_CFLAGS += $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
>
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>
> diff --git a/arch/x86/crypto/blake2s-core.S b/arch/x86/crypto/blake2s-core.S
> index 24910b766bdd..2ca79974f819 100644
> --- a/arch/x86/crypto/blake2s-core.S
> +++ b/arch/x86/crypto/blake2s-core.S
> @@ -46,7 +46,6 @@ SIGMA2:
>  #endif /* CONFIG_AS_AVX512 */
>
>  .text
> -#ifdef CONFIG_AS_SSSE3
>  SYM_FUNC_START(blake2s_compress_ssse3)
>         testq           %rdx,%rdx
>         je              .Lendofloop
> @@ -174,7 +173,6 @@ SYM_FUNC_START(blake2s_compress_ssse3)
>  .Lendofloop:
>         ret
>  SYM_FUNC_END(blake2s_compress_ssse3)
> -#endif /* CONFIG_AS_SSSE3 */
>
>  #ifdef CONFIG_AS_AVX512
>  SYM_FUNC_START(blake2s_compress_avx512)
> diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
> index bf1b4765c8f6..df08664d3432 100644
> --- a/lib/raid6/algos.c
> +++ b/lib/raid6/algos.c
> @@ -97,13 +97,13 @@ void (*raid6_datap_recov)(int, size_t, int, void **);
>  EXPORT_SYMBOL_GPL(raid6_datap_recov);
>
>  const struct raid6_recov_calls *const raid6_recov_algos[] = {
> +#ifdef CONFIG_X86
>  #ifdef CONFIG_AS_AVX512
>         &raid6_recov_avx512,
>  #endif
>  #ifdef CONFIG_AS_AVX2
>         &raid6_recov_avx2,
>  #endif
> -#ifdef CONFIG_AS_SSSE3
>         &raid6_recov_ssse3,
>  #endif
>  #ifdef CONFIG_S390
> diff --git a/lib/raid6/recov_ssse3.c b/lib/raid6/recov_ssse3.c
> index 1de97d2405d0..4bfa3c6b60de 100644
> --- a/lib/raid6/recov_ssse3.c
> +++ b/lib/raid6/recov_ssse3.c
> @@ -3,8 +3,6 @@
>   * Copyright (C) 2012 Intel Corporation
>   */
>
> -#ifdef CONFIG_AS_SSSE3
> -
>  #include <linux/raid/pq.h>
>  #include "x86.h"
>
> @@ -328,7 +326,3 @@ const struct raid6_recov_calls raid6_recov_ssse3 = {
>  #endif
>         .priority = 1,
>  };
> -
> -#else
> -#warning "your version of binutils lacks SSSE3 support"
> -#endif
> diff --git a/lib/raid6/test/Makefile b/lib/raid6/test/Makefile
> index b9e6c3648be1..60021319ac78 100644
> --- a/lib/raid6/test/Makefile
> +++ b/lib/raid6/test/Makefile
> @@ -34,9 +34,7 @@ endif
>
>  ifeq ($(IS_X86),yes)
>          OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
> -        CFLAGS += $(shell echo "pshufb %xmm0, %xmm0" |         \
> -                    gcc -c -x assembler - >/dev/null 2>&1 &&   \
> -                    rm ./-.o && echo -DCONFIG_AS_SSSE3=1)
> +        CFLAGS += -DCONFIG_X86
>          CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |   \
>                      gcc -c -x assembler - >/dev/null 2>&1 &&   \
>                      rm ./-.o && echo -DCONFIG_AS_AVX2=1)
> --
> 2.17.1
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkc6WgW7Knnk8rb92iYUOjc7bBZ6Ln69jjRa%2BN%3D-JLz%2Bg%40mail.gmail.com.
