Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAGAYCAQMGQETUI6DDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADB131FFD5
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 21:30:58 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id l6sf4322339plg.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 12:30:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613766657; cv=pass;
        d=google.com; s=arc-20160816;
        b=w2JXgRRjIDsjGAs6n+7eFWDqcWSYwHt+wEFVPJbJpyfeCvIFJto+DF0YjaOPrachA0
         RFUxaKv83EjDain2/cxGiazsb3e7LlrkXatOWrJoB0T6MA28UnA9tvAYBkI5h5JY5uYD
         iMn0WKuWOtWVpDXjpeGcOxFQ8Resi5YkhRt/oL5emXSjF/zW9rhuLzH552PoyVbaa34T
         713nU7wSFfjkGAljOSQdqGNcza/MIGOuBHF70wgru0hMWrdwuICar4S+bnakRG+8qnDd
         pZ+YYbPU0u0oQgSoaCI7HB3oOh9f9Uxst0cX5QlP09t00u3/LIyLsh7EtwhWkUP/9gaw
         Iovg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=e4rzhmBDaMNzSgP68/zUckwiYSHOc+ij7Q9/7hOmfkU=;
        b=XwgHWlRckqUNcnj4IXA81K0vw4Jvx2ZQIcga6MVQ2Li4W4ds9krNQzcEiNuN1wTm+L
         p2cpQHG3LvontzDBqzixueCkfbliurfewl8zwxtnHDMiMSu3uF0rUOed0ZEQua+a9vNo
         Tugb9ECdJiEOd1IA6UaLHIYP2U52ozoct8w3Sbnt0VraD8zDNoSME8tkRqou5dM1e7VM
         hzkPRMDEOH8Ut3Fcge1V2ywaudR2DtqXQo4XsqoXKR1ywi+7oenbH+8eMRYZBhwpFqsS
         wNTxfEWYJYZof8LSFchvEiz6xPYmDFEQuL8Nnj9WR3FtfzZyJQEZ4SxkjKANABn2l/hL
         voTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Xb+Scodt;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e4rzhmBDaMNzSgP68/zUckwiYSHOc+ij7Q9/7hOmfkU=;
        b=YRj6fBLPLPwnoe1QtYVhTvjOGWtLZysopsl4giEsI/+NlHJNtteiNy9oCFyZJDFyEG
         g59IO2T784Mgw2j1UdnSoldgf0pVVOxQGnlPaip6ANASlUtyBH80iRG7AiEM5plzY42R
         KZ7h5SzQdy6Btj/cvV9LjGPTtk6UH8e5wBohEHEAUPonDc9dUnpK4x4FVKiclejcRVd5
         o8hn/gEhUmkJwBvL2fTT0cfh2l4J71ljYTOcRa3dxVJnsTG7voRUEhqSrdHQsE+nwGIV
         hahKMei90Us3TQxTIaZgDqBuXjR58Pk/WmvgHJ23ZB3N+5dE3bravNze28yTKQoinHT/
         0FJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e4rzhmBDaMNzSgP68/zUckwiYSHOc+ij7Q9/7hOmfkU=;
        b=Qs+zdBT0/shC3WateT8tVqJ8moEBpjybK719JQTM6oHKBFYm5mA7VEZL7w6RBsHyDR
         idU7kw8G2nkHGC+8VB6J4G2n4A3mtzyIoUpvFpbkIToChqJC6t4gnXn3h/CCo4GRFF19
         32s8SdAQ1hmjae+UpxgxDswsSk7s1w8kFrjhUSs8eKObpl8v9dhAaH5csnwKMV40x6Kl
         izpu/JWpnGAvP5PlD4iRyViK39tDVTEhJmSywxNsFpbnG2AaZ6x/MNgCzHzjpxCfKTFP
         5piO4TJg4AuTjdB5pisPLRHkYEj3otF+gTa+hPnmuGR7PrGMroh2Cuzy5P+Tplcq0S9N
         sOxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ppk2B9fRF/Ifg6HLYuHoZE3nkyCs+0kBZF3LYQB75WJYzIfB1
	NI/2OFSaEu2469ri9v6TCxc=
X-Google-Smtp-Source: ABdhPJybv3WNhs8LU7s5nUTYHijPFAHG6/cV6M9UPmW5xe2PUfqBT4pJ6RUW4y8Gd/Ho/FF6Gl4mUw==
X-Received: by 2002:a62:5bc4:0:b029:1e7:5b23:1d59 with SMTP id p187-20020a625bc40000b02901e75b231d59mr11409250pfb.0.1613766656957;
        Fri, 19 Feb 2021 12:30:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba17:: with SMTP id s23ls5813110pjr.3.canary-gmail;
 Fri, 19 Feb 2021 12:30:56 -0800 (PST)
X-Received: by 2002:a17:902:f54e:b029:e3:5af0:d98f with SMTP id h14-20020a170902f54eb02900e35af0d98fmr10506989plf.5.1613766656336;
        Fri, 19 Feb 2021 12:30:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613766656; cv=none;
        d=google.com; s=arc-20160816;
        b=c0qbblfgpAz/NHEUqXJsY7noa13TXLf1Cu7amcFtyHmF7twmEagXN7iH4HKqiEr2sk
         2Jae5zA0uSFEHQGTFm9uQ6mD3zA5bKOpMjp/PZ5dM02AMx9ZF2sI6zE5bpScTyLb2jjM
         znbgAvOZteOO+fVI38/cavZQtydMCAo+J+R3kVFCB65g1SkaQmoMCMwEwILY+l0nLvGx
         k0oFrwxMVVALL1550JMQ2nNtFDOssNggGTqwPpBCmrYxsZE8E4SMuBdNZYxgpaCGzyQ0
         oXrgMHj/HfJAIEIx8NzC/PPV57NNn4KKACNqr4Y5KwbCqwLIiU/kvmNN+UDaM9kABXyT
         q4nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WImDXQMRmgt4zbEbr/UQC48DkKXujJCltsPPH8NuqAo=;
        b=kHi8TKq/V4i0NuULWtpQOJrB9Y4CrnQ1djywQxfCMEf1UC7/yduIhD+pxPg+YieJ1P
         1Y7YjGu5R/aUs5AYAU/kj3NkIZ1aP/slKnk+UHY/YuQFvHJm38ePjSoUT34f287J2Rsr
         XF6Nj5tWHGoEaGU8OikDaUAYjrKMxHo5m29tvIK/CdRng0ecthThY2QAh5x2OIKY61hP
         0t9LH8Tgp8/Pvpz98h6ZilpphPpbfm7KHRTMFXPiUhNmrJS/Sjpy4UyK/CJm0jOVG9e9
         K9CCXcNFerCbKlpiOLOdjEK4OlggBKqXoOOJD8YigFb3WjLjFRPFxzo9G807ixVC0Qut
         RV4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Xb+Scodt;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a128si363039pfa.1.2021.02.19.12.30.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2021 12:30:56 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0FF7164EBF;
	Fri, 19 Feb 2021 20:30:55 +0000 (UTC)
Date: Fri, 19 Feb 2021 13:30:53 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	David Laight <David.Laight@aculab.com>,
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ardb@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Ingo Molnar <mingo@kernel.org>, Olof Johansson <olof@lixom.net>,
	Marc Zyngier <maz@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mike Rapoport <rppt@kernel.org>,
	David Brazdil <dbrazdil@google.com>,
	James Morse <james.morse@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-security-module@vger.kernel.org
Subject: Re: [PATCH v3] ARM: Implement SLS mitigation
Message-ID: <20210219203053.GA53507@24bbad8f3778>
References: <20210212195255.1321544-1-jiancai@google.com>
 <20210219201852.3213914-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210219201852.3213914-1-jiancai@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Xb+Scodt;       spf=pass
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

Hi Jian,

On Fri, Feb 19, 2021 at 12:18:40PM -0800, 'Jian Cai' via Clang Built Linux wrote:
> This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> -mharden-sls=all, which mitigates the straight-line speculation
> vulnerability, speculative execution of the instruction following some
> unconditional jumps. Notice -mharden-sls= has other options as below,
> and this config turns on the strongest option.
> 
> all: enable all mitigations against Straight Line Speculation that are implemented.
> none: disable all mitigations against Straight Line Speculation.
> retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> blr: enable the mitigation against Straight Line Speculation for BLR instructions.
> 
> Links:
> https://reviews.llvm.org/D93221
> https://reviews.llvm.org/D81404
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
> 
> Suggested-by: Manoj Gupta <manojgupta@google.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Suggested-by: Nathan Chancellor  <nathan@kernel.org>
> Suggested-by: David Laight <David.Laight@aculab.com>
> Suggested-by: Will Deacon <will@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>

My review still stands but in the future, if you significantly change
how a patch is structured or works, please drop my tag and let me re-add
it.

One comment below.

> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
> 
> Changes v2 -> v3:
>   Modify linker scripts as Nick suggested to address boot failure
>   (verified with qemu). Added more details in Kconfig.hardening
>   description. Disable the config by default.
> 
>  arch/arm/Makefile                  |  4 ++++
>  arch/arm/include/asm/vmlinux.lds.h |  4 ++++
>  arch/arm/kernel/vmlinux.lds.S      |  1 +
>  arch/arm64/Makefile                |  4 ++++
>  arch/arm64/kernel/vmlinux.lds.S    |  5 +++++
>  security/Kconfig.hardening         | 10 ++++++++++
>  6 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 4aaec9599e8a..11d89ef32da9 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -48,6 +48,10 @@ CHECKFLAGS	+= -D__ARMEL__
>  KBUILD_LDFLAGS	+= -EL
>  endif
>  
> +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
> +KBUILD_CFLAGS  += -mharden-sls=all
> +endif
> +
>  #
>  # The Scalar Replacement of Aggregates (SRA) optimization pass in GCC 4.9 and
>  # later may result in code being generated that handles signed short and signed
> diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
> index 4a91428c324d..c7f9717511ca 100644
> --- a/arch/arm/include/asm/vmlinux.lds.h
> +++ b/arch/arm/include/asm/vmlinux.lds.h
> @@ -145,3 +145,7 @@
>  		__edtcm_data = .;					\
>  	}								\
>  	. = __dtcm_start + SIZEOF(.data_dtcm);
> +
> +#define SLS_TEXT							\
> +		ALIGN_FUNCTION();					\
> +		*(.text.__llvm_slsblr_thunk_*)
> diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
> index f7f4620d59c3..e71f2bc97bae 100644
> --- a/arch/arm/kernel/vmlinux.lds.S
> +++ b/arch/arm/kernel/vmlinux.lds.S
> @@ -63,6 +63,7 @@ SECTIONS
>  	.text : {			/* Real text segment		*/
>  		_stext = .;		/* Text and read-only data	*/
>  		ARM_TEXT
> +		SLS_TEXT
>  	}
>  
>  #ifdef CONFIG_DEBUG_ALIGN_RODATA
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 90309208bb28..ca7299b356a9 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -34,6 +34,10 @@ $(warning LSE atomics not supported by binutils)
>    endif
>  endif
>  
> +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
> +KBUILD_CFLAGS  += -mharden-sls=all
> +endif
> +
>  cc_has_k_constraint := $(call try-run,echo				\
>  	'int main(void) {						\
>  		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
> diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
> index 4c0b0c89ad59..f8912e42ffcd 100644
> --- a/arch/arm64/kernel/vmlinux.lds.S
> +++ b/arch/arm64/kernel/vmlinux.lds.S
> @@ -93,6 +93,10 @@ jiffies = jiffies_64;
>  #define TRAMP_TEXT
>  #endif
>  
> +#define SLS_TEXT					\
> +	ALIGN_FUNCTION();				\
> +	*(.text.__llvm_slsblr_thunk_*)
> +
>  /*
>   * The size of the PE/COFF section that covers the kernel image, which
>   * runs from _stext to _edata, must be a round multiple of the PE/COFF
> @@ -144,6 +148,7 @@ SECTIONS
>  			HIBERNATE_TEXT
>  			TRAMP_TEXT
>  			*(.fixup)
> +			SLS_TEXT
>  			*(.gnu.warning)
>  		. = ALIGN(16);
>  		*(.got)			/* Global offset table		*/
> diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
> index 269967c4fc1b..e70f227019e1 100644
> --- a/security/Kconfig.hardening
> +++ b/security/Kconfig.hardening
> @@ -121,6 +121,16 @@ choice
>  
>  endchoice
>  
> +config HARDEN_SLS_ALL
> +	bool "enable SLS vulnerability hardening"
> +	default n
> +	def_bool $(cc-option,-mharden-sls=all)

This is a much more convoluted way of writing:

depends on $(cc-option,-mharden-sls=all)

"default n" is the default and "def_bool" is short for:

bool
default <expr>

which is defeated by the "default n".

> +	help
> +	  Enables straight-line speculation vulnerability hardening on ARM and ARM64
> +	  architectures. It inserts speculation barrier sequences (SB or DSB+ISB
> +	  depending on the target architecture) after RET and BR, and replacing
> +	  BLR with BL+BR sequence.
> +
>  config GCC_PLUGIN_STRUCTLEAK_VERBOSE
>  	bool "Report forcefully initialized variables"
>  	depends on GCC_PLUGIN_STRUCTLEAK
> -- 
> 2.30.0.617.g56c4b15f3c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210219203053.GA53507%4024bbad8f3778.
