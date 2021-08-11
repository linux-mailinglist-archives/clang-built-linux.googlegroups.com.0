Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEGH2CEAMGQEJZV3UUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8143E98AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 21:22:57 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id 15-20020a056122070fb0290283b6c2a3dcsf742465vki.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 12:22:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628709776; cv=pass;
        d=google.com; s=arc-20160816;
        b=H6kO8TDE1J2tX7KC2t95Jwd3UlTyJMEE86JqV7MkEmcRndwoYFLt/W6H+txo5nmBsP
         woQrXXSfE24SEBuwPnjEN/f9tBUv0Xxc6TPmhgUpe3KU+Qf3XtIujldibiI2ZYMx/f66
         LhdpeOTxBo/9U6PspePwaRoSKAGyvhZGu3ZLhEh2jpW94Wtziujz8zXZL955qNT+OizD
         1n+ZCoXKZFYemUuYtUizh8XydvsW8M1UhW+wTaJ139ItAOGrnRXduPHEJf7g5aLktPJY
         F3UIwRcOLkWnDhdRk7otqt/U+Ye4cGH66cY0HqjKawudiho3t+byCp7SAAAsyV15YiO+
         X6gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=DGBgl1a+Xmi47glbiDX38nUYIoMXLv5jMH2ZsRV0kjc=;
        b=eGhS+tjmLuXmihVu/AJpjTG8J7uVWc0Gmt+/imibY4/R3EEe4IpvkjyP8ccPL9jsRd
         IYT3MgD2KpusCTBjRg5ttu9tb0eHUa3PrFeCil+1dp/csy2qpFVxEqhvWB0Ea2U5Pezs
         j4yuCEpNY+tHyxKjsbZNyFhP6Pzd4VrC7XP8MZ//xsnfua8NGQtcBAu0jiNOUG+Q8fqJ
         adTf9B0g+UiFu+hV+Ctuh6euckUBthu9EE9Enz+NTlB6YuR1/iLdK63O/t6T5mEDV7n+
         wHJWYaBYxSsGqIssVaGRD7MkxUZ7QubTvogYXWbjsgCx6hZfPz2I+mKZj2lYD3k3b/Qn
         8niw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=beHhS5XP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DGBgl1a+Xmi47glbiDX38nUYIoMXLv5jMH2ZsRV0kjc=;
        b=OFw1mOYN8AgrYfp+UpJRuH8XQAnqiUF9Kiw7rCrbZYVbtc3+hf9Kbs2+02vvOuEXtG
         dzSBAe2OOs+sMB7DE/FR+NLa9kP/gXQGtAPzO8eIqdT+ksfl4cCdWhe3LIyB1nOGVt1a
         dBhngBdA/iybFSWOYOGXnLlneWvzLTFo5O5nE7k7kGCqpvi2muku1x/oVdl64POMsj1g
         5BOKMk6dht5WHhLEbmpcK1sjZvHLOb/B6Sm4kjY0se+CsO3K+nNiJwT4hS7gqjfOgJoe
         rut3L41jDHpecvbGlXdIahWlYN52gwI9TexsxOkcM0uR6hYyz20BtPN8drSiGbYVrSPZ
         N5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DGBgl1a+Xmi47glbiDX38nUYIoMXLv5jMH2ZsRV0kjc=;
        b=oYNOnQEL0i5kOwOSrEwzynifAgpKGwWmySf4nePHOssmSi7zaWoIiC8HqYx2rpp3UD
         Wby8HYzDkknNCgt9aUyyrQcm8UWX83lKyd6tDlblf9ynSvdIsuH544WuFrhOXZkaZoku
         A6eHIs9VlZUeEQDyqhSxMifxglkiEni8SerZqc/BCk7TY6jlBRNIyUtixk6FMQIzwOod
         iYbx9E1oLH0CsVkIGzaTAhoknRrfVB3d989HMnnzOEqunsZWGXuX+YppEkkx3R4hVfdz
         ZBxlXIztZacC8YS0CuMbDUJA9dRT2C988Uoq1OFu+cEGUl278n8Vk6+jCQZiqwkxhlIo
         Gpxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530L7qEqdMy0Nm2R3LS02hPABBFkS9E0aHWErd3+g/40WVjWcecW
	PaD1LlMJ55tefBDcAXCrvZY=
X-Google-Smtp-Source: ABdhPJxJ/A92L3JjnOnyKet8vXGN+Hexhs73WFZT/rwY7JgvesUQ6IcMHj2xPcZCgLtMSzONuIQ5Zw==
X-Received: by 2002:a1f:aa8c:: with SMTP id t134mr586146vke.4.1628709776734;
        Wed, 11 Aug 2021 12:22:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:edd7:: with SMTP id e23ls639240vsp.5.gmail; Wed, 11 Aug
 2021 12:22:56 -0700 (PDT)
X-Received: by 2002:a67:79c9:: with SMTP id u192mr172697vsc.28.1628709776207;
        Wed, 11 Aug 2021 12:22:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628709776; cv=none;
        d=google.com; s=arc-20160816;
        b=M8wHXyFSQosOnI+Fm0hZYQjAwonxLY5Q4zgnIXtbnL/xM3lwp7mkXM+pZF3QP/xtjr
         M+DAWXT+d2BEROIzgSoKdxaMf4E8LFa2i6DKZ0RI23HSNTNDOWX/RnhzUn1gvxg5WJS0
         23tD48YY+eadFiRbC1DnOWOLBDetC/SimjQlB9tCdYXCndbINY+a7QkueGrlaMfEuIyS
         eQ07Daq12yLN8yWrOz306T4iYxICXv1rI6crSV/MvKt8gR6om7u4Vdf0rumpIuxiSo2Q
         gpKv8i8St6+WQXa5Z/OYsK85m8fmxcOgb2McrvZcpuPDJCTjQJ4i0yK9wvAoj9s+LYtS
         A/LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FoBz5dstCHUEW2qQf9tt25kWick+CAkYmgNbkC+Xd1w=;
        b=JqKTuQh2YrTYAEkkFGeci6OqqouVjvaSAFdpgX0RoDfJ5ea5ORiVwAlH2eS4vqrqzx
         pEZ50F8m59/kkhDFigYEb8rkNfO7KCgejI1SEhHffGdap1Epye4R6x2Zj5OqR0DnKFQQ
         iJ1o8c/HuGsiPd1e0iN8GiRjEw0/KrcEuGbp1YA5WpBxa2meqXh8mafgQdRRC23a3C6m
         uoHGkk+ojupnzQC9LdBSYtZ/Ok7EyDWplUZCM37duzt1DqgPUKA24VzvktD1r7VwU8EQ
         Rw8B3PRV5gg7btk7tXYDfVkegIY0Rv2hfAPNO9GRx6pbdq9yNldfSQO80xue0KYI3v3Q
         wv6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=beHhS5XP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ay9si15615vkb.0.2021.08.11.12.22.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Aug 2021 12:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6629960F21;
	Wed, 11 Aug 2021 19:22:54 +0000 (UTC)
Subject: Re: [PATCH] x86/build: remove stale cc-option checks
To: Nick Desaulniers <ndesaulniers@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 "H. Peter Anvin" <hpa@zytor.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210811175647.3851629-1-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <cf568688-01a3-849e-2bcc-1cbe6845c9f8@kernel.org>
Date: Wed, 11 Aug 2021 12:22:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210811175647.3851629-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=beHhS5XP;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 8/11/2021 10:56 AM, Nick Desaulniers wrote:
> cc-option, __cc-option, cc-option-yn, and cc-disable-warning all invoke
> the compiler during build time, and can slow down the build when these
> checks become stale for our supported compilers, whose minimally
> supported versions increases over time. See
> Documentation/process/changes.rst for the current supported minimal
> versions (GCC 4.9+, clang 10.0.1+). Compiler version support for these
> flags may be verified on godbolt.org.
> 
> The following flags are supported by all supported versions of GCC and
> Clang. Remove their cc-option, __cc-option, and cc-option-yn tests.
> * -Wno-address-of-packed-member
> * -mno-avx
> * -m32
> * -mno-80387
> * -march=k8
> * -march=nocona
> * -march=core2
> * -march=atom
> * -mtune=generic
> * -mfentry
> 
> -mpreferred-stack-boundary= is specific to GCC, while
> -mstack-alignment= is specific to Clang. Rather than test for this three
> times via cc-option and __cc-option, rely on CONFIG_CC_IS_* from
> Kconfig.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1436
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

A few comments below.

> ---
>   arch/x86/Makefile | 51 +++++++++++++++++------------------------------
>   1 file changed, 18 insertions(+), 33 deletions(-)
> 
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 0fa7dc73b5d8..6de2985ba1a5 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -14,10 +14,13 @@ endif
>   
>   # For gcc stack alignment is specified with -mpreferred-stack-boundary,
>   # clang has the option -mstack-alignment for that purpose.
> +ifdef CONFIG_CC_IS_GCC
>   ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)

Is this cc-option call still needed? It looks like it was added by 
commit d77698df39a5 ("x86/build: Specify stack alignment for clang"), 
which at the time claimed to support back to gcc 3.2, but that flag 
appears to be supported at least back to gcc 4.1.2 according to godbolt.

>         cc_stack_align4 := -mpreferred-stack-boundary=2
>         cc_stack_align8 := -mpreferred-stack-boundary=3
> -else ifneq ($(call cc-option, -mstack-alignment=16),)
> +endif
> +endif
> +ifdef CONFIG_CC_IS_CLANG
>         cc_stack_align4 := -mstack-alignment=4
>         cc_stack_align8 := -mstack-alignment=8
>   endif
> @@ -31,8 +34,8 @@ REALMODE_CFLAGS	:= -m16 -g -Os -DDISABLE_BRANCH_PROFILING \
>   
>   REALMODE_CFLAGS += -ffreestanding
>   REALMODE_CFLAGS += -fno-stack-protector
> -REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
> -REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
> +REALMODE_CFLAGS += -Wno-address-of-packed-member
> +REALMODE_CFLAGS += $(cc_stack_align4)
>   REALMODE_CFLAGS += $(CLANG_FLAGS)
>   export REALMODE_CFLAGS
>   
> @@ -48,8 +51,7 @@ export BITS
>   #
>   #    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=53383
>   #
> -KBUILD_CFLAGS += -mno-sse -mno-mmx -mno-sse2 -mno-3dnow
> -KBUILD_CFLAGS += $(call cc-option,-mno-avx,)
> +KBUILD_CFLAGS += -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx
>   
>   # Intel CET isn't enabled in the kernel
>   KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
> @@ -59,9 +61,8 @@ ifeq ($(CONFIG_X86_32),y)
>           UTS_MACHINE := i386
>           CHECKFLAGS += -D__i386__
>   
> -        biarch := $(call cc-option,-m32)
> -        KBUILD_AFLAGS += $(biarch)
> -        KBUILD_CFLAGS += $(biarch)
> +        KBUILD_AFLAGS += -m32
> +        KBUILD_CFLAGS += -m32
>   
>           KBUILD_CFLAGS += -msoft-float -mregparm=3 -freg-struct-return
>   
> @@ -72,7 +73,7 @@ ifeq ($(CONFIG_X86_32),y)
>           # Align the stack to the register width instead of using the default
>           # alignment of 16 bytes. This reduces stack usage and the number of
>           # alignment instructions.
> -        KBUILD_CFLAGS += $(call cc-option,$(cc_stack_align4))
> +        KBUILD_CFLAGS += $(cc_stack_align4)
>   
>           # CPU-specific tuning. Anything which can be shared with UML should go here.
>           include $(srctree)/arch/x86/Makefile_32.cpu

What tree were you intending to target with this? If it is -tip, this is 
going to cause it to fail to apply because the '$(srctree)' comes from 
Masahiro:

https://git.kernel.org/masahiroy/linux-kbuild/c/d8285639550578a1bf2d102391d1a9e08e0586ca

> @@ -93,7 +94,6 @@ else
>           UTS_MACHINE := x86_64
>           CHECKFLAGS += -D__x86_64__
>   
> -        biarch := -m64
>           KBUILD_AFLAGS += -m64
>           KBUILD_CFLAGS += -m64
>   
> @@ -104,7 +104,7 @@ else
>           KBUILD_CFLAGS += $(call cc-option,-falign-loops=1)
>   
>           # Don't autogenerate traditional x87 instructions
> -        KBUILD_CFLAGS += $(call cc-option,-mno-80387)
> +        KBUILD_CFLAGS += -mno-80387
>           KBUILD_CFLAGS += $(call cc-option,-mno-fp-ret-in-387)
>   
>           # By default gcc and clang use a stack alignment of 16 bytes for x86.
> @@ -114,20 +114,17 @@ else
>           # default alignment which keep the stack *mis*aligned.
>           # Furthermore an alignment to the register width reduces stack usage
>           # and the number of alignment instructions.
> -        KBUILD_CFLAGS += $(call cc-option,$(cc_stack_align8))
> +        KBUILD_CFLAGS += $(cc_stack_align8)
>   
>   	# Use -mskip-rax-setup if supported.
>   	KBUILD_CFLAGS += $(call cc-option,-mskip-rax-setup)
>   
>           # FIXME - should be integrated in Makefile.cpu (Makefile_32.cpu)
> -        cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
> -        cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
> -
> -        cflags-$(CONFIG_MCORE2) += \
> -                $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
> -	cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
> -		$(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
> -        cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
> +        cflags-$(CONFIG_MK8)		+= -march=k8
> +        cflags-$(CONFIG_MPSC)		+= -march=nocona
> +        cflags-$(CONFIG_MCORE2)		+= -march=core2
> +        cflags-$(CONFIG_MATOM)		+= -march=atom
> +        cflags-$(CONFIG_GENERIC_CPU)	+= -mtune=generic
>           KBUILD_CFLAGS += $(cflags-y)
>   
>           KBUILD_CFLAGS += -mno-red-zone
> @@ -158,18 +155,6 @@ export CONFIG_X86_X32_ABI
>   ifdef CONFIG_FUNCTION_GRAPH_TRACER
>     ifndef CONFIG_HAVE_FENTRY
>   	ACCUMULATE_OUTGOING_ARGS := 1
> -  else
> -    ifeq ($(call cc-option-yn, -mfentry), n)
> -	ACCUMULATE_OUTGOING_ARGS := 1
> -
> -	# GCC ignores '-maccumulate-outgoing-args' when used with '-Os'.
> -	# If '-Os' is enabled, disable it and print a warning.
> -        ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
> -          undefine CONFIG_CC_OPTIMIZE_FOR_SIZE
> -          $(warning Disabling CONFIG_CC_OPTIMIZE_FOR_SIZE.  Your compiler does not have -mfentry so you cannot optimize for size with CONFIG_FUNCTION_GRAPH_TRACER.)
> -        endif
> -
> -    endif
>     endif
>   endif
>   
> @@ -193,7 +178,7 @@ ifdef CONFIG_RETPOLINE
>     # only been fixed starting from gcc stable version 8.4.0 and
>     # onwards, but not for older ones. See gcc bug #86952.
>     ifndef CONFIG_CC_IS_CLANG
> -    KBUILD_CFLAGS += $(call cc-option,-fno-jump-tables)
> +    KBUILD_CFLAGS += -fno-jump-tables
>     endif
>   endif
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cf568688-01a3-849e-2bcc-1cbe6845c9f8%40kernel.org.
