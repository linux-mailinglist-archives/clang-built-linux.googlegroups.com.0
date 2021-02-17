Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWPFWGAQMGQEJWSTGVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B1A31D3CB
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 02:35:22 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id o6sf5482742uap.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 17:35:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613525721; cv=pass;
        d=google.com; s=arc-20160816;
        b=GaI0xfMYhZ6uEp/WLl4m2ehYqGNwM4ZKLohcaMFYDHE4ez5FTZ+mU9qyrq33VCQ/DP
         fX+QFl3KY4FGfhJ//lqFGr/SXxL4xSgV8CKN57ts74jAc8+toDe5buEglEI3XmwiZTvR
         AmjF5h/U5WeeHobJvqKkzWp7HzxTB8TxKea2MdP8KqT4RBbrJjKEHz9Ql42BKR34ilrD
         SUM3UGfuz6e1TYJ406b4qofaJ/gvOfuez8vs+ILuSdpoIGeSEdwSERA8oYITeCI4xlXp
         gyWidg0vFvX22v6QXJpTYWOsxIzsONODCvR7RNMoZlulVg2QSl+7IL+HmkqjIgnyWoJi
         f+Ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Fs1pkAx9hWohqNgsSWGR5wL0qjAHOumhYbyaHF20zig=;
        b=nH+gqxA6s6ngnYkbPNQ/Zyuhy+ACIo6Wlwcfz1xugwwDXM8h6B96hFSKFb98vkE061
         UxNadWt64ozEpCwwtQhV0CEOyMqcMBF9SjkS3M7sEyagRInVs2tewMAe1HeIOdwe2JPQ
         KiE5yGqPHMG/X0YWZ67h6az3U/vNASY8t9Kxkq2DMaqf8N6td9IYh4Zwd3vY9ecmQ8O6
         U3oVNp6fHQksNi+S0eW5pwDAVNW/3fPuwFNlhxR2MEOx0fj+rD4A4dXsC/lfUyD5tEYA
         SxhNoBaielyOVj6AAlxudZ60V/PvLgvvta84n8VZQDN3FfRUNGfXoCG+aIz7rN1/dCPR
         Vksg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eNJVGYMp;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fs1pkAx9hWohqNgsSWGR5wL0qjAHOumhYbyaHF20zig=;
        b=oKjsJH1jh6tl52K2i1I7sFNeDJCHHd0vZhlh9oKc4AZKXH9Tyji31nCnnA6dJtipG2
         ITZts0zihOnw6bDYK1u/nigNDP6H6+yT5L2qUb6rXWFj2l/pGzQO/EEeGs+1V2DsRqqO
         22OYR5N2nT3DR6wbmro1WuVui3mMBht50qitDd4GaM8ro5QwWSRbJ6+L1ds/D5mmJbQ1
         rgQeksq4Cus7cPZaQns5IeLie9edXTLN39yX3FQtJsqxVUQPIPIjfxRiDZhSZIcse6ps
         CVOGzykgq+g3sIOsQmzL3+ZbApU+2gh6Oku6mVSVhcUGltRvKIF5+qZQxmaTHL2J+SYJ
         W85w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fs1pkAx9hWohqNgsSWGR5wL0qjAHOumhYbyaHF20zig=;
        b=X8EbKXwj1d+goaq6sBWoOg9qfqQCQGXGeD/ZZdlRRtEgSwB6xZU+n1B4+R5n5UHPIe
         Ydm+zgb2FeWPvbwMkueHnTECbCYSdmRAygY82Q19Lagv7Xtbl0NV7bSo9z5zGfRaIiwA
         BSIaTVkiw+6NpcfmUKdopJGSYnZgdfSdK2s5+7/cYl+VacZ4wkNQaRbkSVDAG1QRkVVc
         AxrAUzDvQjgYmqNaNLE+8Yp1jajcI0FpxjEfYOXAQp8PbhUefPMrWqov/+Wwd/QaIZR+
         S6JueSghj51h83dWesNYabeVn2FM6ZzdV90citU+UzWIOViPUJz0s9UuGW6YtwqJBWDH
         bzKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53301sn2nsaNxPamUc58wsRrvZd5FBUTbuB3FUC71Gpi6gZrUssO
	E5yjeT29CtGHiOP2VjBI5HM=
X-Google-Smtp-Source: ABdhPJwXITXsXX2//pL8bELdWcKw8AYw/hRFB0bKJbJLdssesw4B1Bg8e+Us+bVNfw4DXX3RwNc5pg==
X-Received: by 2002:ab0:2850:: with SMTP id c16mr14170475uaq.14.1613525721512;
        Tue, 16 Feb 2021 17:35:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c686:: with SMTP id w128ls16793vkf.1.gmail; Tue, 16 Feb
 2021 17:35:21 -0800 (PST)
X-Received: by 2002:a1f:2a03:: with SMTP id q3mr13274032vkq.0.1613525721084;
        Tue, 16 Feb 2021 17:35:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613525721; cv=none;
        d=google.com; s=arc-20160816;
        b=p+1v4HONHTC9PydQH5nHe9krQG/lGTByz2+DRV0yAZ5gjDCrjT7aWZeCJyEs+yDwg4
         hTy47hPQ3o9XccRAjAGapkzs3ymLovFLRe45zr6DLTmbgtUVy5BSxf0Z7Qn4m3Ers/I9
         7He9LJI6QeofRWqvd3TkxRKDpAEnTQFTcIEujr5iaQWWfyoIkqIkGhd0Zu4+GnMeyZl4
         YP6H/e/OI744w0PrWmj41w4DfKKlTX/J7ZK5wdF6GRBPSV7Z7AAhmFNDIb9f5z7Vbv4/
         P+zGEsN1ENu2axn3Ll2yQAYknsnBicoCZH1ioPIJEub2xDes9kxMnU1gp2wCzpg/kJdI
         hepg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ALnKfZcDqIXHimsaTN1LpLsbZICbO/znJmDIuoUe3nE=;
        b=kWsods4m9J68e2kN5fyNVtOzOqgbjzlSkoYS1ZYN1xjjcn1BZrZuMX/R4R9gcEM5Rr
         iS+Nlao7BPaSAhx/IqcJjT4hqDjRNFTSOz1o0sNE/m/Cfmm5ovV9NDLttjvW4zDaPkjf
         0UiSgnWjBHyraM+aMbdeQKaTJzzCOuuB4Wkfzt6LN0hwd1O3wViUPFL1/ij0fUzEoYyB
         +hwBgKzdqA/rs8vY1hlWguewzTT3DweRBZbEK2cO3bXSLjktjNZ0F4PG1VX/3wJ2aw1O
         sRKQs8dbH+kyBeEJnHjuVGkr+Cq9NZKstQZr4QxSVrqHbaM5UsfGyn1tA0/ATzaa7dsA
         +YNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=eNJVGYMp;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n3si20932uad.0.2021.02.16.17.35.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2021 17:35:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7831B64E2F;
	Wed, 17 Feb 2021 01:35:19 +0000 (UTC)
Date: Tue, 16 Feb 2021 18:35:18 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: no To-header on input <;, ndesaulniers@google.com,
	manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	David Laight <David.Laight@aculab.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-security-module@vger.kernel.org
Subject: Re: [PATCH v2] ARM: Implement Clang's SLS mitigation
Message-ID: <20210217013518.GA39336@24bbad8f3778>
References: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com>
 <20210212195255.1321544-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210212195255.1321544-1-jiancai@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=eNJVGYMp;       spf=pass
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

On Fri, Feb 12, 2021 at 11:52:53AM -0800, Jian Cai wrote:
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
> Link: https://reviews.llvm.org/D93221
> Link: https://reviews.llvm.org/D81404
> Link: https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
> 
> Suggested-by: Manoj Gupta <manojgupta@google.com>
> Suggested-by: Nathan Chancellor  <nathan@kernel.org>
> Suggested-by: David Laight <David.Laight@aculab.com>
> Signed-off-by: Jian Cai <jiancai@google.com>

From a kbuild perspective:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
> Changes v1 -> v2:
>  Update the description and patch based on Nathan and David's comments. 
> 
>  arch/arm/Makefile          | 4 ++++
>  arch/arm64/Makefile        | 4 ++++
>  security/Kconfig.hardening | 7 +++++++
>  3 files changed, 15 insertions(+)
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
> diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
> index 269967c4fc1b..9266d8d1f78f 100644
> --- a/security/Kconfig.hardening
> +++ b/security/Kconfig.hardening
> @@ -121,6 +121,13 @@ choice
>  
>  endchoice
>  
> +config HARDEN_SLS_ALL
> +	bool "enable SLS vulnerability hardening"
> +	def_bool $(cc-option,-mharden-sls=all)
> +        help
> +          Enables straight-line speculation vulnerability hardening
> +	  at highest level.
> +
>  config GCC_PLUGIN_STRUCTLEAK_VERBOSE
>  	bool "Report forcefully initialized variables"
>  	depends on GCC_PLUGIN_STRUCTLEAK
> -- 
> 2.30.0.478.g8a0d178c01-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210217013518.GA39336%4024bbad8f3778.
