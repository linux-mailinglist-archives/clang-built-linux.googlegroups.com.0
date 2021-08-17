Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2NP5SEAMGQEIA2NH4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EA53EE408
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 03:59:06 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id u5-20020a4a97050000b029026a71f65966sf7657308ooi.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 18:59:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629165545; cv=pass;
        d=google.com; s=arc-20160816;
        b=P1NKomqaK8wiSRbAZITZw6w8xgVcUANMwsrnpQ0NHnN5sTNqWTzo3/JuLmLTHri9u7
         2Hk2IpPwgODjgyIycwh6oDbx48m55pvuouoA0V7huP9Q8UNBYfkRWGe9tsZMSLOCTokI
         KFZ2d9rM8A9N+sJNZ5Uy+COj4dAVUzdBrrH//hjndHNA6VKCQ5wSQIhHxa47kYfpmyS0
         oLTNvPipUk/ACwzLG4A2UsWA7ZzNmXiDRZc7/NG8bEdTxpQ5CcMZ4bVESxFLNLIq5Lji
         mnNARXIOwXZLiN+LAviaIXERwcAvJjXa3GIUYc92E3MYaJoVO5fIArgrFpqCv9MO39my
         7bHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=QNP6xY+nYK9hv4bKFtfJ0tOCDgIdcqCIb9LkqpkIl2w=;
        b=H1ROZiZggEwHxbsLvy6jAKsxfagLP2ddKG7cSbbAxgxND1dL4e/H+k0p/r04LXP6zk
         A7kYs6KDtpCBecFHuK76gwUdTvyNL3UNtZ2+5UfAKfDhgVesvYaLm/PinQSvqPiCHXub
         KRGDgp6Wxo4j+9YoSYhxxI1jBnmVXpBQ/AnBMZ6qMrARtWGhZMHwoz02uhVFG3TCBP7r
         faEvin4yLC7hBnsQ9YxtQbxXAPETn6gAUKnXx2Nef1E0uq/wKY5zF//I0EDF50756ZrH
         trLL+QBilNbXc/Ik96Kg9uapen0DHjA2FoiA76nRxn4yRcMwE3WhB7o7Nccj99dmqQdU
         2alQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=czWjn7im;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QNP6xY+nYK9hv4bKFtfJ0tOCDgIdcqCIb9LkqpkIl2w=;
        b=F3BuUsIPx8u/XJYKxK6jRELnUVaxJHPC8Y+Z8sDg+ytnAGHcRbJoDiO3H4YJiwC5a5
         /y+c3gdHznhn7NY77vHjJzs1jvtliTIVx8MjSMEdc760d4JfwIbFykJl1FygOgURGhYn
         SQNQAQuljF1Cac+IlRCLHr6swg8YZ99459f+9B2Jknw6xHtPLOHmLaD5VqirQ51OQ3Dj
         tOrmv2CHhx2Jst/RNaLzSHU5EteTy6KfwAG7Gk0LU/3YouiSunfVzsWbfCAfuR3Hq0Au
         lm2zG3HpYqwVwI9FMeoMw7cH54bjW9qNRYvDfeZXkmLKfm5thFLD+QoGM1/9Nn3Q6VmZ
         TTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QNP6xY+nYK9hv4bKFtfJ0tOCDgIdcqCIb9LkqpkIl2w=;
        b=LPqh0Sq44smlfGpaxaonWqOWspbDfw5ZhFCaffPqu8oq8L86B3ZEEjXO8eVeCR0tex
         wanL9vcrsT5LNqrMpmmgftHjwCKdFqImS4hXLafzAFeivlAEJ/jPmUJT0jaQ/mS3Ku/b
         14CXa3fODdY7ZTLiWckQA3l3sIVajTZ7jawPJYbIJu9p3tVV05pcMY1wnz00Bwdl1Ml9
         tnkMZ68LkUbMbY+rj8Q7dGVfb0ujZhXgfTZwHy9PiV6EU3/XcTNNps5AcmIhLSwTDFBt
         bLhQc5hxOPTreTyW6cOUV3Re6u5SFzK3+EJ3BU3L6usEneWu7d9Gf5Cohh88cbqwdyHI
         Zc+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326pn39haOUQwMaEwuKipLN8zwemISPfLJMMfDZjYaqdO1ZHdJv
	e+nwgS/iRoSmv3YwLUGIUfo=
X-Google-Smtp-Source: ABdhPJwqwl4sJKuTdeZ0W08J+x3oRAarwlwjad8YGmWVHDCWG4jsh0G7fm6TnuXWf+nwbtOOFLyHOA==
X-Received: by 2002:a9d:7cd7:: with SMTP id r23mr775846otn.165.1629165545282;
        Mon, 16 Aug 2021 18:59:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:440a:: with SMTP id q10ls109016otv.11.gmail; Mon,
 16 Aug 2021 18:59:05 -0700 (PDT)
X-Received: by 2002:a05:6830:2443:: with SMTP id x3mr804836otr.12.1629165544921;
        Mon, 16 Aug 2021 18:59:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629165544; cv=none;
        d=google.com; s=arc-20160816;
        b=wp62U2MQZEdKlrlgM1+wL3LN4J+TKTRzKOov2T+8JdWx0N72Anb4KdtgvvjuPYCm0j
         5idgQgGps684nYW3CZ0b03kQt/oyN79PSVEEWiQJxN/707ShXIB6Z9IuM5Z2/+jS+rQq
         /oV+qVeFRMb/N5cErC/zD1noujbQUlNoXMbtM0fFR+WzuvILhieG4arlFxVD3EL+Lzj5
         9tPgQhtuoDcKmoDgMBo9XJ0aPOfeImYepfip82fGtQUvROVtrpo1IteoNN596HeXJrjK
         vJDm/xyR5txjz8A5wJLnrmCKUnrLRS9wq4yREXlTrZfG4+wfLBS8UseU6tSYhtQfFP9P
         lHxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=yUVsw/IFnCPXA76UrG8MCq2r5ZdA1GCRPco85X7moHY=;
        b=fpiJ6eAGQId5vo1bYocVTqlCpmn0bfrVvK7KYw62XucqERUmziYX7Vg08yYSiwgc5s
         Z4N3v4KqWLSSQnU0L9GwdtpVydxQnMdca0k6sJ2s5JPYY3NSqfLR7lpB8ojqAzVoBr3T
         AwkDaLIz3Yh8CycMZmFxzD5JixhP7PQ0H57aeK5H6Lf0EkcfRU1T4LaG+4y0gIvKekp3
         KKdPdHD50Gm/knXsfskxGIdayhgB4Nfo3h3gxnY12O5K1cvLJwI6+XZv+yydI3GZYdjX
         h8Ft4wF73O9vQ76S/xXbXst+SkHRu1NyIrRq+Rky24pcanfIQIkRqQel14uOPB+kosn8
         dsLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=czWjn7im;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s30si42595oiw.1.2021.08.16.18.59.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 18:59:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B510E60F39;
	Tue, 17 Aug 2021 01:59:03 +0000 (UTC)
Subject: Re: [PATCH 1/7] MIPS: replace cc-option-yn uses with cc-option
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-2-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <10d51e35-fc80-ba8f-6843-74d83e9e47b7@kernel.org>
Date: Mon, 16 Aug 2021 18:59:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817002109.2736222-2-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=czWjn7im;       spf=pass
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

On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> cc-option-yn can be replaced with cc-option. ie.
> Checking for support:
> ifeq ($(call cc-option-yn,$(FLAG)),y)
> becomes:
> ifneq ($(call cc-option,$(FLAG)),)
> 
> Checking for lack of support:
> ifeq ($(call cc-option-yn,$(FLAG)),n)
> becomes:
> ifeq ($(call cc-option,$(FLAG)),)
> 
> This allows us to pursue removing cc-option-yn.
> 
> Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Cc: linux-mips@vger.kernel.org
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>   arch/mips/Makefile          | 44 ++++++++++++++++++-------------------
>   arch/mips/sgi-ip22/Platform |  4 ++--
>   2 files changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index ea3cd080a1c7..f4b9850f17fa 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -58,9 +58,7 @@ endif
>   
>   ifdef CONFIG_FUNCTION_GRAPH_TRACER
>     ifndef KBUILD_MCOUNT_RA_ADDRESS
> -    ifeq ($(call cc-option-yn,-mmcount-ra-address), y)
> -      cflags-y += -mmcount-ra-address -DKBUILD_MCOUNT_RA_ADDRESS
> -    endif
> +    cflags-y += $(call cc-option,-mmcount-ra-address -DKBUILD_MCOUNT_RA_ADDRESS)
>     endif
>   endif
>   cflags-y += $(call cc-option, -mno-check-zero-division)
> @@ -208,31 +206,33 @@ cflags-$(CONFIG_CPU_DADDI_WORKAROUNDS)	+= $(call cc-option,-mno-daddi,)
>   # been fixed properly.
>   mips-cflags				:= $(cflags-y)
>   ifeq ($(CONFIG_CPU_HAS_SMARTMIPS),y)
> -smartmips-ase				:= $(call cc-option-yn,$(mips-cflags) -msmartmips)
> -cflags-$(smartmips-ase)			+= -msmartmips -Wa,--no-warn
> +cflags-y	+= $(call cc-option,-msmartmips -Wa$(comma)--no-warn)

I do not think this diff and most of the ones that follow are 
equivalent, as you are no longer including the previously checked flags 
in the cc-option invocation, which could change the result (options that 
follow may depend on a prior selected flag).

I think that as long as you add $(cflags-y) to all of the cc-option 
tests, it should be fine. I guess cflags-y could be eliminated but it 
looks like this variable exists so that the flags can be added to both 
KBUILD_CFLAGS and KBUILD_AFLAGS at the same time so removing it would 
duplicate a lot of things.

>   endif
>   ifeq ($(CONFIG_CPU_MICROMIPS),y)
> -micromips-ase				:= $(call cc-option-yn,$(mips-cflags) -mmicromips)
> -cflags-$(micromips-ase)			+= -mmicromips
> +cflags-y	+= $(call cc-option,-mmicromips)
>   endif
>   ifeq ($(CONFIG_CPU_HAS_MSA),y)
> -toolchain-msa				:= $(call cc-option-yn,$(mips-cflags) -mhard-float -mfp64 -Wa$(comma)-mmsa)
> -cflags-$(toolchain-msa)			+= -DTOOLCHAIN_SUPPORTS_MSA
> +ifneq ($(call cc-option,-mhard-float -mfp64 -Wa$(comma)-mmsa),)
> +cflags-y	+= -DTOOLCHAIN_SUPPORTS_MSA
> +endif
> +endif
> +ifneq ($(call cc-option,-mvirt),)
> +cflags-y	+= -DTOOLCHAIN_SUPPORTS_VIRT
>   endif
> -toolchain-virt				:= $(call cc-option-yn,$(mips-cflags) -mvirt)
> -cflags-$(toolchain-virt)		+= -DTOOLCHAIN_SUPPORTS_VIRT
>   # For -mmicromips, use -Wa,-fatal-warnings to catch unsupported -mxpa which
>   # only warns
> -xpa-cflags-y				:= $(mips-cflags)
> -xpa-cflags-$(micromips-ase)		+= -mmicromips -Wa$(comma)-fatal-warnings
> -toolchain-xpa				:= $(call cc-option-yn,$(xpa-cflags-y) -mxpa)
> -cflags-$(toolchain-xpa)			+= -DTOOLCHAIN_SUPPORTS_XPA
> -toolchain-crc				:= $(call cc-option-yn,$(mips-cflags) -Wa$(comma)-mcrc)
> -cflags-$(toolchain-crc)			+= -DTOOLCHAIN_SUPPORTS_CRC
> -toolchain-dsp				:= $(call cc-option-yn,$(mips-cflags) -Wa$(comma)-mdsp)
> -cflags-$(toolchain-dsp)			+= -DTOOLCHAIN_SUPPORTS_DSP
> -toolchain-ginv				:= $(call cc-option-yn,$(mips-cflags) -Wa$(comma)-mginv)
> -cflags-$(toolchain-ginv)		+= -DTOOLCHAIN_SUPPORTS_GINV
> +ifneq ($(call cc-option,-mmicromips -Wa$(comma)-fatal-warnings -mxpa),)
> +cflags-y	+= -DTOOLCHAIN_SUPPORTS_XPA
> +endif
> +ifneq ($(call cc-option,-Wa$(comma)-mcrc),)
> +cflags-y	+= -DTOOLCHAIN_SUPPORTS_CRC
> +endif
> +ifneq ($(call cc-option,-Wa$(comma)-mdsp),)
> +cflags-y	+= -DTOOLCHAIN_SUPPORTS_DSP
> +endif
> +ifneq ($(call cc-option,-Wa$(comma)-mginv),)
> +cflags-y	+= -DTOOLCHAIN_SUPPORTS_GINV
> +endif
>   
>   #
>   # Firmware support
> @@ -277,7 +277,7 @@ ifdef CONFIG_64BIT
>       endif
>     endif
>   
> -  ifeq ($(KBUILD_SYM32)$(call cc-option-yn,-msym32), yy)
> +  ifeq ($(KBUILD_SYM32)$(call cc-option,-msym32), y-msym32)
>       cflags-y += -msym32 -DKBUILD_64BIT_SYM32
>     else
>       ifeq ($(CONFIG_CPU_DADDI_WORKAROUNDS), y)
> diff --git a/arch/mips/sgi-ip22/Platform b/arch/mips/sgi-ip22/Platform
> index 62fa30bb959e..fd8f1d01c867 100644
> --- a/arch/mips/sgi-ip22/Platform
> +++ b/arch/mips/sgi-ip22/Platform
> @@ -24,8 +24,8 @@ endif
>   # Simplified: what IP22 does at 128MB+ in ksegN, IP28 does at 512MB+ in xkphys
>   #
>   ifdef CONFIG_SGI_IP28
> -  ifeq ($(call cc-option-yn,-march=r10000 -mr10k-cache-barrier=store), n)
> -      $(error gcc doesn't support needed option -mr10k-cache-barrier=store)
> +  ifeq ($(call cc-option,-march=r10000 -mr10k-cache-barrier=store),)
> +      $(error $(CC) doesn't support needed option -mr10k-cache-barrier=store)

Heh :)

>     endif
>   endif
>   cflags-$(CONFIG_SGI_IP28)	+= -mr10k-cache-barrier=store -I$(srctree)/arch/mips/include/asm/mach-ip28
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/10d51e35-fc80-ba8f-6843-74d83e9e47b7%40kernel.org.
