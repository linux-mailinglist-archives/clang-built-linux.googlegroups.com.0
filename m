Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6FQ5OCAMGQEH3KEQJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id AD23837AF36
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 21:18:17 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id h1-20020ab02a810000b02901f5ea248613sf2592337uar.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 12:18:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620760696; cv=pass;
        d=google.com; s=arc-20160816;
        b=OV/fW3R05dMCwXf/qoVWO/38Acu4nDCvxEfLmgzD+yu3kcto8dp9ZGAMyKinHwGo34
         iuTWrWPBUDNWiqUjNo7Aglxms8gHr8SoHoNlqFsFtUaC88j7shUxDWmktv9Xo1jTW0U9
         pnQweAsb3lNvYRxlzbF4Qw0cLnZR4yyg3p8Q1j9O0uX2skCGc/PYB1ognBgTdDWrqhP0
         BDDl9+AHTERvr3ntkVWS7Caz4K/aCEDVJCHM+hfZCLYROSEh61E7SmM+/ijLkP0AmOuN
         ozIamN1hZ5DdY+umuzTzMiVC1KrLo/gi4D2f6xb4N0XUBAey8tG3N7WJsUT93EagUMTu
         5kvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=FCiP98K+ag3pdF827iHl+tiAp9K3MyYronSCzXi5xAw=;
        b=k+VaRUxWvzBiy+gSJMFQlj0RwsMj+LX5ra90xaYX27fwKhPCjm/o8Tta5WMZKi3iLk
         tnJ8+JwIn3vsBIANhoMNNWkmL0rfN1gjz/YURpaHQtxHm4yFKZ9fsm1A9LvCm7DdfHd+
         7dgABQZCpPXx6oCJ1sbyTL5FQYqq93RaLIFSdU67etwtbPlCUTuoz0r/YD4MEpU+xr/i
         paYxqERtBU8L77NoRPeO/IxQoO5+5jUD3k0QGDCpe5boICaYXYrZZA6uYVJIG7aeHH0B
         qTVtPOmTd9nY0dI4y7LJxLDFTWC7zLfCQIsdrphRBomOAa+XqQ8W6MnAhI+Z0us4QK+y
         b7/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DlAB3HoT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FCiP98K+ag3pdF827iHl+tiAp9K3MyYronSCzXi5xAw=;
        b=nkpoITEuHLO6cCFCRi8ynMHb3H9U7xb52gVbhcp5CnASRZ8bRuTcaKxz1YdZbhxO32
         aVJER8DX0k/hH5PGwlc9wWmY3kRx3PIJJnWzZtrnBBZRtq5xDK1KRrLTCztjoCIpn8Dr
         N15n5WFCVicF3poeDEpuIJSJpmr8pHKFzQkQ6tFrZPaAlx7burwEEGOgb5KMN0HqRNlZ
         1yAjSDeOEdjB76CIuIJRG3t1UyPE2wG1svGZ9yS5gNLi0DmEfz6yzBia5p1Br+XMD0lr
         pV3Z7UyF14FY5oXs592CLCcGkhitPgiUHuH5rAt8uNWWnSsdR4tSYw8wyY9IzzBpE6Mn
         XM0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FCiP98K+ag3pdF827iHl+tiAp9K3MyYronSCzXi5xAw=;
        b=RXGAATfirzYgi6is+VeWiSMy+O4lTi3cCgL+Z7n5e9dTi0GcJ/GgpOuCxnRvpyRL1E
         fYxOmWOAZsJQgK7PaDU1Ct2M3MOJ47Ry1hR/mJJOenhQTxZyaNIel85vWrwC3yvpINs7
         L64qUhNeu/iP/RuVxN9On4LqXVfa+6Nr/4Ekw1/VoYZIUDtDkz++I6KG6a46UayKyr+2
         omWU1VN6GIRawoM6WGJSELT+kWGuAouJuxeIW0rK+eFyDMsr3a1+FIxsJFwY9pDLT5NJ
         XPsGaGwMNys4x1/RIgAeT02/jw8H0gmRrgAiJhJ+JAGUi1ZKpzRM7orSQW1l67eCzUtx
         fE0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tGUrZslK654CQNxO6+XhiPO8gjCtXMHrMdZe48kqbUqQDJ7bZ
	19c37QYlcjpY6lcs2kjm3Kg=
X-Google-Smtp-Source: ABdhPJwwITSDx9KPQDSbzVrt87Y7sgg7SeJOM1XkLdyqDG1OjniYHXBfzxarMo14zPUiJBB6CMQuQQ==
X-Received: by 2002:ab0:29c7:: with SMTP id i7mr28558963uaq.43.1620760696588;
        Tue, 11 May 2021 12:18:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1ec2:: with SMTP id p2ls2097274uak.2.gmail; Tue, 11 May
 2021 12:18:16 -0700 (PDT)
X-Received: by 2002:ab0:3093:: with SMTP id h19mr4561525ual.45.1620760696032;
        Tue, 11 May 2021 12:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620760696; cv=none;
        d=google.com; s=arc-20160816;
        b=f3KfcGOZKA+3mklZd3ZLs21/Rzzc167IU3nYy6wqf6p90YHVhgOLvtvkpfg7ASRO6F
         P0p1Qb6P34sGNHb19yaTmXJOJJh3iMG0GFH3OdcaU8ncvliWaDS1hwhVKa3cL0dC7F7o
         ecOvbqAnd0xbA0FEhSlS+LlEkdIoifmGSSnMkqg5XtOLNotTJN6kJTYEyDDABCXVJr5h
         ISgbZZYZNnEJLVUHLkbwyF6OTansWDm93dp8coqx5IuubvMjjXaBGqFlSfKBMkJZ8ISS
         lGCxzm1/rtKejGXiEK32qQC4+FqdoR7V9mcjg30qE8GlVW32pSziZ14Y79Qtp5YmwnOF
         yUsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=GIjHiv3dfh6UH9edBQx6vXn2i4JTCyBn4sx+nsCeUuI=;
        b=irjW+FdqbcdSkIRDjvSJHyxd2pSIa2/qAjZk88w2dJtmm8YiFm7Nlp52vTjl22NzuH
         3hfoUWRpnWUD8pe38GXnaVEQsYnVVbMkb0fWLhi0g5dfIgmnTFME6QQwy78yLlxkM7PF
         YPAtn1/pFy9YOb96dWUjcWWrJ635dEGnIWj5Q2oSQO6GmyToS/29zAG20bDsXVVCaC7i
         ctBI6NXC8jBr8aURhNRPnSVoanWo7tfB/aR4aP8Gb3BoUXQy4tht66N2BTiNufpgoCD8
         fwFUsXSI6fQCwGZesfJ5d7XwSqjDTRkjBu2uzUl+oKmNCMeKMzNxJduHW8k1peswPq+9
         vabw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DlAB3HoT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a6si1390434vkh.0.2021.05.11.12.18.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 12:18:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C2272611F1;
	Tue, 11 May 2021 19:18:13 +0000 (UTC)
Subject: Re: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for
 preprocessor
To: Alexey Kardashevskiy <aik@ozlabs.ru>, linuxppc-dev@lists.ozlabs.org
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
 Masahiro Yamada <masahiroy@kernel.org>, Michael Ellerman
 <mpe@ellerman.id.au>, Michal Marek <michal.lkml@markovi.net>,
 Nicholas Piggin <npiggin@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210511044812.267965-1-aik@ozlabs.ru>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <3579aa0d-0470-9a6b-e35b-48f997a5b48b@kernel.org>
Date: Tue, 11 May 2021 12:18:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210511044812.267965-1-aik@ozlabs.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DlAB3HoT;       spf=pass
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

On 5/10/2021 9:48 PM, Alexey Kardashevskiy wrote:
> The $(CPP) (do only preprocessing) macro is already defined in Makefile.
> However POWERPC redefines it and adds $(KBUILD_CFLAGS) which results
> in flags duplication. Which is not a big deal by itself except for
> the flags which depend on other flags and the compiler checks them
> as it parses the command line.
> 
> Specifically, scripts/Makefile.build:304 generates ksyms for .S files.
> If clang+llvm+sanitizer are enabled, this results in
> 
> -emit-llvm-bc -fno-lto -flto -fvisibility=hidden \
>   -fsanitize=cfi-mfcall -fno-lto  ...
> 
> in the clang command line and triggers error:
> 
> clang-13: error: invalid argument '-fsanitize=cfi-mfcall' only allowed with '-flto'
> 
> This removes unnecessary CPP redefinition. Which works fine as in most
> place KBUILD_CFLAGS is passed to $CPP except
> arch/powerpc/kernel/vdso64/vdso(32|64).lds (and probably some others,
> not yet detected). To fix vdso, we do:
> 1. explicitly add -m(big|little)-endian to $CPP
> 2. (for clang) add $CLANG_FLAGS to $KBUILD_CPPFLAGS as otherwise clang
> silently ignores -m(big|little)-endian if the building platform does not
> support big endian (such as x86) so --prefix= is required.
> 
> While at this, remove some duplication from CPPFLAGS_vdso(32|64)
> as cmd_cpp_lds_S has them anyway. It still puzzles me why we need -C
> (preserve comments in the preprocessor output) flag here.
> 
> Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
> ---
> Changes:
> v2:
> * fix KBUILD_CPPFLAGS
> * add CLANG_FLAGS to CPPFLAGS
> ---
>   Makefile                            | 1 +
>   arch/powerpc/Makefile               | 3 ++-
>   arch/powerpc/kernel/vdso32/Makefile | 2 +-
>   arch/powerpc/kernel/vdso64/Makefile | 2 +-
>   4 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 72af8e423f11..13acd2183d55 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -591,6 +591,7 @@ CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>   endif
>   CLANG_FLAGS	+= -Werror=unknown-warning-option
>   KBUILD_CFLAGS	+= $(CLANG_FLAGS)
> +KBUILD_CPPFLAGS	+= $(CLANG_FLAGS)

This is going to cause flag duplication, which would be nice to avoid. I 
do not know if we can get away with just adding $(CLANG_FLAGS) to 
KBUILD_CPPFLAGS instead of KBUILD_CFLAGS though. It seems like this 
assignment might be better in arch/powerpc/Makefile with the 
KBUILD_CPPFLAGS additions there.

Cheers,
Nathan

>   KBUILD_AFLAGS	+= $(CLANG_FLAGS)
>   export CLANG_FLAGS
>   endif
> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
> index 3212d076ac6a..306bfd2797ad 100644
> --- a/arch/powerpc/Makefile
> +++ b/arch/powerpc/Makefile
> @@ -76,6 +76,7 @@ endif
>   
>   ifdef CONFIG_CPU_LITTLE_ENDIAN
>   KBUILD_CFLAGS	+= -mlittle-endian
> +KBUILD_CPPFLAGS	+= -mlittle-endian
>   KBUILD_LDFLAGS	+= -EL
>   LDEMULATION	:= lppc
>   GNUTARGET	:= powerpcle
> @@ -83,6 +84,7 @@ MULTIPLEWORD	:= -mno-multiple
>   KBUILD_CFLAGS_MODULE += $(call cc-option,-mno-save-toc-indirect)
>   else
>   KBUILD_CFLAGS += $(call cc-option,-mbig-endian)
> +KBUILD_CPPFLAGS += $(call cc-option,-mbig-endian)
>   KBUILD_LDFLAGS	+= -EB
>   LDEMULATION	:= ppc
>   GNUTARGET	:= powerpc
> @@ -208,7 +210,6 @@ KBUILD_CPPFLAGS	+= -I $(srctree)/arch/$(ARCH) $(asinstr)
>   KBUILD_AFLAGS	+= $(AFLAGS-y)
>   KBUILD_CFLAGS	+= $(call cc-option,-msoft-float)
>   KBUILD_CFLAGS	+= -pipe $(CFLAGS-y)
> -CPP		= $(CC) -E $(KBUILD_CFLAGS)
>   
>   CHECKFLAGS	+= -m$(BITS) -D__powerpc__ -D__powerpc$(BITS)__
>   ifdef CONFIG_CPU_BIG_ENDIAN
> diff --git a/arch/powerpc/kernel/vdso32/Makefile b/arch/powerpc/kernel/vdso32/Makefile
> index 7d9a6fee0e3d..ea001c6df1fa 100644
> --- a/arch/powerpc/kernel/vdso32/Makefile
> +++ b/arch/powerpc/kernel/vdso32/Makefile
> @@ -44,7 +44,7 @@ asflags-y := -D__VDSO32__ -s
>   
>   obj-y += vdso32_wrapper.o
>   targets += vdso32.lds
> -CPPFLAGS_vdso32.lds += -P -C -Upowerpc
> +CPPFLAGS_vdso32.lds += -C
>   
>   # link rule for the .so file, .lds has to be first
>   $(obj)/vdso32.so.dbg: $(src)/vdso32.lds $(obj-vdso32) $(obj)/vgettimeofday.o FORCE
> diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vdso64/Makefile
> index 2813e3f98db6..07eadba48c7a 100644
> --- a/arch/powerpc/kernel/vdso64/Makefile
> +++ b/arch/powerpc/kernel/vdso64/Makefile
> @@ -30,7 +30,7 @@ ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
>   asflags-y := -D__VDSO64__ -s
>   
>   targets += vdso64.lds
> -CPPFLAGS_vdso64.lds += -P -C -U$(ARCH)
> +CPPFLAGS_vdso64.lds += -C
>   
>   # link rule for the .so file, .lds has to be first
>   $(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) $(obj)/vgettimeofday.o FORCE
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3579aa0d-0470-9a6b-e35b-48f997a5b48b%40kernel.org.
