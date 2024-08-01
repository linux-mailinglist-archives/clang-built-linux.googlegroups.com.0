Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVFVVO2QMGQEHI4PHAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB65943CEA
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2024 02:46:14 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id 006d021491bc7-5d5545ca462sf5497786eaf.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2024 17:46:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722473173; cv=pass;
        d=google.com; s=arc-20160816;
        b=TZ9jHfxpiyPT/LDZQJvSCgZoEc24UI0N5zIxqRTZi5J7M92BxB3Xz+2PohENETMuL/
         l69hvwv6tVsvthrGJKAHvXCrQ7MCgXMUPN/CrgZntgVG8XfbAm1Nqy5tsbCixs22fK6O
         dC2OFv5cWWNvvvBLok9gWlyPId7xmebhkYyLXze4NXskvb5lsFXUHkOxiojGcGd53Ht2
         9bFkrqMCWJyb7q4bMah8amNsNRl2FnnyWh3622voHRi1+/qE5SBeqb58p1YplA6LiVJu
         ImKep1LiTFf/yZwUgDSR2YnOLUWPhaLT7vWqX4LsTBwI12wUxos3w2l4hbFArz3/LXQM
         Ft7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5C6yN07zbTy6c92IPmEyyhbnjS7q52lEmLuBhqipjVA=;
        fh=atjadW2Uqw1fWqSocnPO1sA9XQ8IAlwCBbHNBQle02M=;
        b=0ycYXJdPPpYSSEzf6hEsLHFEIYFXTCHf4TC1ESiTYUviqn/lkYOJG1QpyM9R52Hvrn
         FO1/Q+DIQ7zZvTY5mK7QG9CjOmFPqZib2FyukH/guGx37EpH+D7JhuZSR/OWNlWauuO9
         3SlDQ0NDmQaoXD9/0Vg6r6l0KBWrw227mOr754/5EzYxZypWAyn/3ifWkfxGX1ScHMqD
         curLuiI70efSzWgg+9CFNj1APQJJevChTlMqdpj4JnlG4+zSuXE2cQoTE/R1FLGIi8/z
         w26BiKpAuZY0j0aJG2FZHGw6qHyZ4ZZiysu69wROaRs46/39j4XG6EZvwQV7cUyuD3qy
         q/uA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WEg2+wf8;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1722473173; x=1723077973; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5C6yN07zbTy6c92IPmEyyhbnjS7q52lEmLuBhqipjVA=;
        b=uLdG+t1Mzb0ZT3fhzvAGYjEaVgwgjsww/1m9HPTfFF9OnHNDOXp3LXnBd6kfBAkrFy
         LL6+HGVF6rhkpCAgZTqmeIAj4if7PvSXkM91DPBT7DLev9FdKU0C8aHFsbKrxFrhl/gj
         TwjPA4VGxrZ2vrkdAMpRN3lTllMyGCLM0H9QgbCcmcNRKW5QL1cAalywBsWI4syBWYOf
         YXssIwxZhfEOdMdmfUl+Gjx2M91e+tf4Kg1LUbG9yV1CtdrMCnv+9JftFQ/08m/N1Y3i
         bE8/ZeuFNufJHDvcm89CYo0jzKW8dK6wtigUHyYOavekBucafKk5swix0z5kBJk6rhyH
         L7Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722473173; x=1723077973;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5C6yN07zbTy6c92IPmEyyhbnjS7q52lEmLuBhqipjVA=;
        b=qD1+6irqvvQ0gAXP/HfCmbWCdU+Xez32xSDkSvJP/hW4ykrKgLBjt31OAIneTe12Rm
         o9C4bRVwAT1mixQGMlkzy+1dyckQpilcrmNgXUo0hJciQjF+bFr3Y/5LbRBcSABg4H7y
         b5xNVH9BgcZkHhB0FGeG4gTOVzd5k6hPAHU63ScK65KzwIDC1pWPQwVPU2avUHN3sG5e
         UHZAh+OdfDrY5sNf3RpkjsM3plZvSNRSnvGbgEd1VhwDu084ASpOVPXmT2PrxU9dlf0m
         DjP51lqg+31lGZIgpmCpLssQEozqg8fGgCrzVBqnKHyQFJ7YxaIuJ/L2drl432bX77q+
         5NgQ==
Sender: clang-built-linux@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCWCufgpZe9YlyVzusFVAOglmhQLo/H/opCjTXmLIeZQYCM5ST6Y0zi6FzVQNZ+GjDJSUOmjghOu0kh7ltHUUKeIfm7px/HhXo0ejE/w2k6O
X-Gm-Message-State: AOJu0Yw+Pze3Xe/saCJ5D3xmNp0RRWH6brK5+ErWgYEiYbv8kNu/0Fbe
	kdimZ5E3YBvSnadhItru4GIR+Kulkr4xBNo74HdJJE8HIwP4K+9b
X-Google-Smtp-Source: AGHT+IEwXugZ1Q71EAhXzjH40ykcQu9cZWJLcUhCj/FAA2RTFQq/InEzCAbVZQ5kMU+4hz21wa1pKw==
X-Received: by 2002:a05:6820:1c97:b0:5ce:6671:de2f with SMTP id 006d021491bc7-5d61e73331fmr1736669eaf.2.1722473172751;
        Wed, 31 Jul 2024 17:46:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:2e0b:b0:6b7:96a6:c5e9 with SMTP id
 6a1803df08f44-6bb3c0834c8ls111133786d6.0.-pod-prod-01-us; Wed, 31 Jul 2024
 17:46:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXdj1w2yB49h/Wj8xVkqPZ6VPp1jV56fqvAKpBjT4hTudz8h0IxfEoWAhW4oNqwjKHIagxle59lb6EOsMXwcjkeY9dDpKP2IVSuP4VabrsQ997Z
X-Received: by 2002:a05:6214:5d13:b0:6b2:ca03:e8f9 with SMTP id 6a1803df08f44-6bb8d56c2a0mr12293106d6.0.1722473171932;
        Wed, 31 Jul 2024 17:46:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722473171; cv=none;
        d=google.com; s=arc-20160816;
        b=yt76Aefvzh3QhHZKANPwWZTYW46OQ2oOreLE2h+0s0tIG5MAHkw2Wk5u8kxisytpBG
         b+IF3nINa4df11a5oV8pH9ARaFLu1nWGG5CBIFTvIWM7rfU9lixyHQcJ9Df6JaQzcWuc
         S0zK8uNtyShF+Gqx+Ffj2szycrwvpUZJCAPjGHCe6Udo8IofyN2IR8HS3qh7Ao6baBTH
         TwhoYLLo5BJOOm/2nCWo9Poxm0P5UO6zDg3gsP/n+wJfXWDrgE1JKPfXELycYNzI8XBY
         3Z8kTjIo5Xc+mcPDpua0bJx7D9Euw/HRiAtqKTBea26Y7KKXDAm5VAIrF7g/Gi32GTpn
         Ga3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=W+snayEaUL34Nu2UQTVwSNsH1mxxe+hPVuIhZnHlN8A=;
        fh=tJeMhPyi02UBc2cdh17KFFCprGoyQg2tX4C90c/lPRs=;
        b=HPEe2DfuzAfj3xzVCkhmd8N9n4AKzD/XNgIBDBgJBy6T4tVGSjHbZwXIsHskt+lxJj
         Gz0WGWB/VepETRsLNe26Mwa/sDZ8NVo4KLYj3/GP5A8LYPgZZ2S9pENodGABb9ABPz/f
         jOG+dxJ4+K8PLmqqbUnYZboOwHvmLU+oiS5TU8lYIjaVFTzCuLPBTi3u0S0mkyJoyb6o
         rXYsTvtOyphD2T7alXw9t7tkLuvCQV2QlalOy8DBy2SrwJm2RPvBee7dklAmmEQCw5wq
         yvHp2kgGHAQT18pIH1kJdctm436blRw3et6Bq3iOoIWfQvrwutP0Qb4+tqXoLBaia9AE
         FVMA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WEg2+wf8;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id 6a1803df08f44-6bb3fae8690si4807556d6.6.2024.07.31.17.46.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 17:46:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 583A461741;
	Thu,  1 Aug 2024 00:46:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86CDBC32786;
	Thu,  1 Aug 2024 00:46:10 +0000 (UTC)
Date: Wed, 31 Jul 2024 17:46:09 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Ard Biesheuvel <ardb+git@google.com>
Cc: linux-arm-kernel@lists.infradead.org, Ard Biesheuvel <ardb@kernel.org>,
	Calvin Owens <calvin@wbinvd.org>, Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: assembler: Drop obsolete VFP accessor fallback
Message-ID: <20240801004609.GA1614495@thelio-3990X>
References: <20240730094858.1070431-2-ardb+git@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240730094858.1070431-2-ardb+git@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WEg2+wf8;       spf=pass
 (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as
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

On Tue, Jul 30, 2024 at 11:48:59AM +0200, Ard Biesheuvel wrote:
> From: Ard Biesheuvel <ardb@kernel.org>
> 
> Now that the minimum supported binutils version is 2.25, we no longer
> need a workaround for binutils older than 2.24 for accessing VFP control
> registers from assembler.
> 
> Cc: Calvin Owens <calvin@wbinvd.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: clang-built-linux <clang-built-linux@googlegroups.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Very nice :)

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Note: applies onto 9410/1
> 
>  arch/arm/Kconfig                 |  2 --
>  arch/arm/Kconfig.assembler       |  6 ------
>  arch/arm/include/asm/vfp.h       | 10 ---------
>  arch/arm/include/asm/vfpmacros.h | 11 ----------
>  arch/arm/vfp/vfpinstr.h          | 22 --------------------
>  5 files changed, 51 deletions(-)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 54b2bb817a7f..854a12d89471 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1747,5 +1747,3 @@ config ARCH_HIBERNATION_POSSIBLE
>  	default y if ARCH_SUSPEND_POSSIBLE
>  
>  endmenu
> -
> -source "arch/arm/Kconfig.assembler"
> diff --git a/arch/arm/Kconfig.assembler b/arch/arm/Kconfig.assembler
> deleted file mode 100644
> index 5cb31aae1188..000000000000
> --- a/arch/arm/Kconfig.assembler
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0
> -
> -config AS_VFP_VMRS_FPINST
> -	def_bool $(as-instr,.fpu vfpv2\nvmrs r0$(comma)FPINST)
> -	help
> -	  Supported by binutils >= 2.24 and LLVM integrated assembler.
> diff --git a/arch/arm/include/asm/vfp.h b/arch/arm/include/asm/vfp.h
> index 157ea3426158..85ccc422d4d0 100644
> --- a/arch/arm/include/asm/vfp.h
> +++ b/arch/arm/include/asm/vfp.h
> @@ -9,16 +9,6 @@
>  #ifndef __ASM_VFP_H
>  #define __ASM_VFP_H
>  
> -#ifndef CONFIG_AS_VFP_VMRS_FPINST
> -#define FPSID			cr0
> -#define FPSCR			cr1
> -#define MVFR1			cr6
> -#define MVFR0			cr7
> -#define FPEXC			cr8
> -#define FPINST			cr9
> -#define FPINST2			cr10
> -#endif
> -
>  /* FPSID bits */
>  #define FPSID_IMPLEMENTER_BIT	(24)
>  #define FPSID_IMPLEMENTER_MASK	(0xff << FPSID_IMPLEMENTER_BIT)
> diff --git a/arch/arm/include/asm/vfpmacros.h b/arch/arm/include/asm/vfpmacros.h
> index ba0d4cb5377e..e2e1d5a3727a 100644
> --- a/arch/arm/include/asm/vfpmacros.h
> +++ b/arch/arm/include/asm/vfpmacros.h
> @@ -8,7 +8,6 @@
>  
>  #include <asm/vfp.h>
>  
> -#ifdef CONFIG_AS_VFP_VMRS_FPINST
>  	.macro	VFPFMRX, rd, sysreg, cond
>  	vmrs\cond	\rd, \sysreg
>  	.endm
> @@ -16,16 +15,6 @@
>  	.macro	VFPFMXR, sysreg, rd, cond
>  	vmsr\cond	\sysreg, \rd
>  	.endm
> -#else
> -	@ Macros to allow building with old toolkits (with no VFP support)
> -	.macro	VFPFMRX, rd, sysreg, cond
> -	MRC\cond	p10, 7, \rd, \sysreg, cr0, 0	@ FMRX	\rd, \sysreg
> -	.endm
> -
> -	.macro	VFPFMXR, sysreg, rd, cond
> -	MCR\cond	p10, 7, \rd, \sysreg, cr0, 0	@ FMXR	\sysreg, \rd
> -	.endm
> -#endif
>  
>  	@ read all the working registers back into the VFP
>  	.macro	VFPFLDMIA, base, tmp
> diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
> index 32090b0fb250..a2f0c47e0ce7 100644
> --- a/arch/arm/vfp/vfpinstr.h
> +++ b/arch/arm/vfp/vfpinstr.h
> @@ -62,8 +62,6 @@
>  #define FPSCR_C (1 << 29)
>  #define FPSCR_V	(1 << 28)
>  
> -#ifdef CONFIG_AS_VFP_VMRS_FPINST
> -
>  #define fmrx(_vfp_) ({				\
>  	u32 __v;				\
>  	asm volatile (".fpu	vfpv2\n"	\
> @@ -78,26 +76,6 @@
>  		     : : "r" (_var_) : "cc");	\
>  })
>  
> -#else
> -
> -#define vfpreg(_vfp_) #_vfp_
> -
> -#define fmrx(_vfp_) ({						\
> -	u32 __v;						\
> -	asm volatile ("mrc p10, 7, %0, " vfpreg(_vfp_) ","	\
> -		      "cr0, 0 @ fmrx	%0, " #_vfp_		\
> -		     : "=r" (__v) : : "cc");			\
> -	__v;							\
> -})
> -
> -#define fmxr(_vfp_, _var_) ({					\
> -	asm volatile ("mcr p10, 7, %0, " vfpreg(_vfp_) ","	\
> -		      "cr0, 0 @ fmxr	" #_vfp_ ", %0"		\
> -		     : : "r" (_var_) : "cc");			\
> -})
> -
> -#endif
> -
>  u32 vfp_single_cpdo(u32 inst, u32 fpscr);
>  u32 vfp_single_cprt(u32 inst, u32 fpscr, struct pt_regs *regs);
>  
> -- 
> 2.46.0.rc1.232.g9752f9e123-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20240801004609.GA1614495%40thelio-3990X.
