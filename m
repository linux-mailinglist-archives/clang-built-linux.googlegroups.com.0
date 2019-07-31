Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBV4MQ7VAKGQEA57SRUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 548D77C91F
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 18:48:25 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id i3sf37869610plb.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Jul 2019 09:48:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564591704; cv=pass;
        d=google.com; s=arc-20160816;
        b=FCOfCAR0GUuPy2M9nfBIGWI0WEWbSXzm55d0wzQlWBirHynEQhXdbcXKYZw886qr4V
         9K2iUg/Tz3SQMej2vLAub5Lz0bsMfLJWkhHlNGWOirCAARUyKl43kAT5RciBKo6OCx7b
         A3+CudILRAWhkT4ngOgpx3B5LnADisuK+mmFIzfyCPwqQK7E53mJAlXOAC2j5PfjfH/K
         Q1+HcwVuhUf7MeOsiTB5KTN9RJ72pj8aUPmZ/DlCWYTrWER0+yK88rK5gMRyT5uX/Xhf
         bsbNJQxL22xTQBfLKHaxvn2ol1BVs81rNwKC+KiRjdqlwhXpjA9DV1JKMDiywdnQOW5S
         Q/yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hwh+bP6YoxyYRuHfoQkFlpRrQQm34nrPh4+hN7ddxzk=;
        b=BrE8AuZA8ACZ36XZ63qZ8966I2bZ2OdThXekeBOTX+MOyvknlZRsiiGtmqtKT+wc4S
         V5yi52JGhc12Ukr0AqU+gyco75TD4RtnZk+u3URINH+gXxpHJ8Vm4TY8uK0qI4GT+WNj
         oFZGAu4i5kKPbBK0wuSOQUX1jGn50ipD/KoAGskYtlfXvqog6Shbswl4jGcuOhFognd0
         sYNE3LSLo5wlcG1Z6WwVf4x9U/L4HsA+k62fLFg1r40lX8jw9JCQOi10Hp3lg84pSMtO
         vfiku0kvz+y1CPw8R2i3sACTsvb1rd/QdzoZ9Jn4JP2A1ZFx6WyquQta/LfTP+w37lnM
         xwCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fobL8wex;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hwh+bP6YoxyYRuHfoQkFlpRrQQm34nrPh4+hN7ddxzk=;
        b=fLai83uuRHNwUOp8SuTpSytOHMXdltBL07v9xJeo5CjLstlcXp6ENn39CcJnXS8dfz
         is9k4J/eaIAr0qcnSRPtAQkqC7dGW5zRYkrESu0Qm1jXRBSBeDhe/rXTHudJfAGgAd+U
         aSdD9r/yORsC+XDUAwj3PYW/BnfAZPJwt1icZRj8wVcncGrZOAu4YuhQokRkY795Culr
         Ka/vqXM2MoVIbDxUOf1hsJMGAf+OIWqk1NztbVcN0eaLojQBF8zRz6rIG3LmdoKtos3J
         N8L2u1Cy+NnaebzHTpPpNY1lUHv75jT6MSQGbhpdJSwQb1YYu7INmzEN0Wz4bQBCVNFD
         MteA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hwh+bP6YoxyYRuHfoQkFlpRrQQm34nrPh4+hN7ddxzk=;
        b=d/Rop0vrct+LgeWjndQk7e9tO8ov2b173hEKEN+5AWlFxt4/byT+YPfGj6VnMIACzZ
         +dGYcxs4xMO+kxuj05nERBfYjY0lhK3gSBvSARZbb2Vi0mZfbUiBwKUsYbNg9fDKahLi
         t4hDvLe01cvbNu6YKiQ5Y9scAdl6R/fm7rmfGtki2TFoaLDZLBtygmZaptKSIqQC0+BS
         mVBBX5S7OmYcN3jNqclFtxnUBobQ2iScNAzYmX2N9ys2yYiSynLxG0qbQPOG/wLhnZFj
         /FC7xWEvbkHW/AJGWUH8nsUHbGZgrxEhr/rvrTKTt3zYClBP6UgxbFe4r7g6tk5bFw1y
         zEvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQcLZZzgk1mAEjpLH7M+PdAr3gFnU20gp/ZW/d9J+PqsttdNMv
	jpDVQwYCPweeyHepRvloqKA=
X-Google-Smtp-Source: APXvYqw57RGoRTUPgsmlOKHp2e1zfGlSzCqDvtLR4ZO70STYPgFt4iE81g5j1v/RU3Y1ITMtfGz9Zw==
X-Received: by 2002:a17:902:2a6b:: with SMTP id i98mr114729135plb.75.1564591703805;
        Wed, 31 Jul 2019 09:48:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:b518:: with SMTP id y24ls14905442pfe.14.gmail; Wed, 31
 Jul 2019 09:48:23 -0700 (PDT)
X-Received: by 2002:a63:724b:: with SMTP id c11mr36040430pgn.30.1564591703291;
        Wed, 31 Jul 2019 09:48:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564591703; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4I6XODu5a3SyJdOAtp9QDWsKUR7oqEalnllKT8eiGRxuinNBUojxrPAmSePT+Dd2X
         xY/IqoXNQZhD+uO6l/VAdQLb8ejUbuHjZUTflrjnUqqS0Vp3zJ9SDnxcKs7tcvWYX/R6
         20IVvFrlb7cOhyaA5Z/FvFniycdNaZLuTcKOmSUgf38tvLZXN7QuyqbB7V4ChLkiDJr+
         8E4c+6R9QyFGDi2d0YbOYyxN3TyyA7EFmDNy88K1pTdXGoSq5rk0r6SbUrztFxfbYhi1
         VAoIOy5s4D7L0Z3NZRfGkCRqXUyEU28joOW85UD3stUpkzNl/lr4jkv+RAGpb72Lw899
         llyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0xrLETrGpadZqe9pxphY9EGn7/1/Xx3G0NLWbs1DF5U=;
        b=0suDzFdHdBhVP0vDiR5XkmycTXIlc/xzdHsYOojhk3wlb9uaGqIzv4GHXdHhvUX/qI
         G8cKe/fujv7jgbxFXaw0gvD3YqhQilx4Sm/sDUmpYNrz/3b6dcuI5DZEIzXCANW/Mdie
         gc61y3ItdrQsYhDwYuG/I25hHeIb6W3LoGiPTqABZ6CP5k3FKRGTCGiUpvN9Hg8HLDVM
         Rdum3VXCBREsHUB6FIFVlT7ZAaXm/eOEWD2cgoHxTfIWuLocrwofU5vbJcvpERz02wyk
         kLvgKk9pKT/gFnVWW7rWJvfnjFveTmMEma5Zy4RICkYJpKEfyZ8NpgKvO6T3KWzLYeMa
         d6XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fobL8wex;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si2410050pls.5.2019.07.31.09.48.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 09:48:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AB37F206A2;
	Wed, 31 Jul 2019 16:48:21 +0000 (UTC)
Date: Wed, 31 Jul 2019 17:48:18 +0100
From: Will Deacon <will@kernel.org>
To: Peter Collingbourne <pcc@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] arm64: Add support for relocating the kernel with
 RELR relocations
Message-ID: <20190731164818.m2und6msyhlbf5oi@willie-the-truck>
References: <20190705080231.123522-1-pcc@google.com>
 <20190712193846.174893-1-pcc@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190712193846.174893-1-pcc@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fobL8wex;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Jul 12, 2019 at 12:38:46PM -0700, Peter Collingbourne wrote:
> RELR is a relocation packing format for relative relocations.
> The format is described in a generic-abi proposal:
> https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> 
> The LLD linker can be instructed to pack relocations in the RELR
> format by passing the flag --pack-dyn-relocs=relr.
> 
> This patch adds a new config option, CONFIG_RELR. Enabling this option
> instructs the linker to pack vmlinux's relative relocations in the RELR
> format, and causes the kernel to apply the relocations at startup along
> with the RELA relocations. RELA relocations still need to be applied
> because the linker will emit RELA relative relocations if they are
> unrepresentable in the RELR format (i.e. address not a multiple of 2).
> 
> Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> compressed (lz4).
> 
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes in v2:
> - Reverted change to RELA processing
> - Added more comments, as requested by Nick and Will
> - Added a feature test for NM and OBJCOPY
> - Made CONFIG_RELR=y the default if the tools support it
> 
>  arch/arm64/Kconfig              | 10 ++++
>  arch/arm64/Makefile             |  4 ++
>  arch/arm64/kernel/head.S        | 96 ++++++++++++++++++++++++++++++---
>  arch/arm64/kernel/vmlinux.lds.S |  9 ++++
>  init/Kconfig                    |  3 ++
>  scripts/tools-support-relr.sh   | 16 ++++++
>  6 files changed, 132 insertions(+), 6 deletions(-)
>  create mode 100755 scripts/tools-support-relr.sh
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 7442edbcabfc3..cf3907d21d097 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1476,6 +1476,16 @@ config RELOCATABLE
>  	  relocation pass at runtime even if the kernel is loaded at the
>  	  same address it was linked at.
>  
> +config RELR
> +	bool "Use RELR relocation packing"
> +	depends on RELOCATABLE && TOOLS_SUPPORT_RELR
> +	default y
> +	help
> +	  Store the kernel's dynamic relocations in the RELR relocation packing
> +	  format. Requires a compatible linker (currently only LLD supports

Drop "currently" because it will just rot

> +	  this feature), as well as compatible NM and OBJCOPY utilities
> +	  (llvm-nm and llvm-objcopy are compatible).
> +
>  config RANDOMIZE_BASE
>  	bool "Randomize the address of the kernel image"
>  	select ARM64_MODULE_PLTS if MODULES
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index bb1f1dbb34e8f..11f84450c7784 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -22,6 +22,10 @@ LDFLAGS_vmlinux		+= -shared -Bsymbolic -z notext -z norelro \
>  			$(call ld-option, --no-apply-dynamic-relocs)
>  endif
>  
> +ifeq ($(CONFIG_RELR),y)
> +  LDFLAGS_vmlinux += --pack-dyn-relocs=relr
> +endif

RELR isn't arm64-specific, right? So we could put this in the top-level
Makefile and have arm64 select ARCH_HAS_RELR if relocatable, so that other
architecture can easily support this in future.

>  ifeq ($(CONFIG_ARM64_ERRATUM_843419),y)
>    ifeq ($(call ld-option, --fix-cortex-a53-843419),)
>  $(warning ld does not support --fix-cortex-a53-843419; kernel may be susceptible to erratum)
> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 2cdacd1c141b9..cc23302e9d95e 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -102,6 +102,8 @@ pe_header:
>  	 *  x23        stext() .. start_kernel()  physical misalignment/KASLR offset
>  	 *  x28        __create_page_tables()     callee preserved temp register
>  	 *  x19/x20    __primary_switch()         callee preserved temp registers
> +	 *  x24        __primary_switch() .. relocate_kernel()
> +	 *                                        current RELR displacement
>  	 */
>  ENTRY(stext)
>  	bl	preserve_boot_args
> @@ -834,14 +836,93 @@ __relocate_kernel:
>  
>  0:	cmp	x9, x10
>  	b.hs	1f
> -	ldp	x11, x12, [x9], #24
> -	ldr	x13, [x9, #-8]
> -	cmp	w12, #R_AARCH64_RELATIVE
> +	ldp	x12, x13, [x9], #24
> +	ldr	x14, [x9, #-8]
> +	cmp	w13, #R_AARCH64_RELATIVE
>  	b.ne	0b
> -	add	x13, x13, x23			// relocate
> -	str	x13, [x11, x23]
> +	add	x14, x14, x23			// relocate
> +	str	x14, [x12, x23]
>  	b	0b
> -1:	ret
> +
> +1:
> +#ifdef CONFIG_RELR
> +	/*
> +	 * Apply RELR relocations.
> +	 *
> +	 * RELR is a compressed format for storing relative relocations. The
> +	 * encoded sequence of entries looks like:
> +	 * [ AAAAAAAA BBBBBBB1 BBBBBBB1 ... AAAAAAAA BBBBBB1 ... ]

I assume these are treated as an array of u64 types for the purposes of
endianness? (have you tested with a big-endian kernel?).

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190731164818.m2und6msyhlbf5oi%40willie-the-truck.
