Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP5QTCAQMGQEQWAENJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FB53199CB
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 06:55:12 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id a12sf5699482qvo.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 21:55:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613109311; cv=pass;
        d=google.com; s=arc-20160816;
        b=xJtA7pXx7IfmJn1yiZzu0acTamSU2ye2v4aVaTAzFwYDgH0XksjguwS6PldoMXjuIO
         G9wgN1PORsyl+SBcs3BUfioKvzyIGPrgcW2dN1axJfA7VJVBOEtN3Zh3I1mZxcs6f4hz
         LunYwtSlkp5NbgHAeeGILjD2n+YalE0w1dLxyqJQ3pTo2xAvSaJQKQeOilKpKdefsRiu
         3ukyrodmCaQbE1GwniGuYhVJyrKn+1uGgDz8dFy6h/8agI3BE07fAY/J/Dae6ICCdBoO
         kMu336WtOt5HPfgu+DHoa2RlSYW11QT1vc8u9odG3fg1T6az4zl78v0Q3bF53+JxAiTo
         6hjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aB/RQ41+rhM3eWFI36blkGryJycRJasaO1/e4UcSkE8=;
        b=VvQXiIGHqWH2LfRJP09va4svDuwIXMo1Cnd4c2RTYaAej3wCkPRylM5FXHM3cQBMCW
         +F+NMd0pUyqHjazpHsCIaI6raqXBhchfdkgBaplz6+XguUmcpoiqA2x1WZBcM1RmYDCg
         VM6G5V/HQDyOBUBUfqIp2mJqaoNLursjQF/jFW9tA/KRZ/l7xY/IfxIEpQNxuV6Vzb3l
         ZDZwTzFeioe/xaO+ztkNF1zfxMMCSBoKtKyBlvxVSJ0xfr/GmrS2oghlyp+DoN4n4t07
         y4kAWbC3GwZ9g0RyMYyEBk0CoFFAg7Qc+8nMnzcKgZXzTijdHc6yQuSkyfptKVyNJ4PA
         kJlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GxIi9IdZ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aB/RQ41+rhM3eWFI36blkGryJycRJasaO1/e4UcSkE8=;
        b=g7Bm5ukzhtM6aWdRDgs+lX/NzvfYGdzwORArlzFeAwauDv9xr2VSs5xQR4zbmtZaun
         YMwsGfRfeI4c9wE72Tb6BWQAqgVlvlBdFaKGAsBAHbkhQ0UtyKmNsSRJ82mdSGu43yvW
         sKDEBfrIwParZaDpPjDBu7zPFyTEIY9hN6NvOegujgfbuE/JJB8c2qvfDwoGq1MMs0sI
         z4IUZ96/yI9ZrzQgDECdYYEtfpwsBHEL94wpTv3LT+7t0vGFWhoMnbkTHqoErmxqJxrs
         WWZwXlMfjh0l0v7JOwBnxe4OBNrpeUEWR8OD9gsirFI/QJj+pWoj5rGwxX6PKvXjSMD/
         2sAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aB/RQ41+rhM3eWFI36blkGryJycRJasaO1/e4UcSkE8=;
        b=sQcWxti+0i3KbaNOI5mhkrNJlZ1CF0ycZaw1qA3XMSDqwEBmR8EFEl2bryxDap9sta
         oGlQz4qxZgl+bl8AWGtA+WtfcurNYULIAdsc3QXHsoiBFO+hSPVQ430eNgk+sjj9FVuv
         kd4TpDbq8QyFnUiqu5H2auJWoapbcvYI99lYFoDf7B4DOj171w3tI46jQyTotbT5JhAM
         PkvbfZiscLpdBIFxK4CbVjFu8Nvr3gY+N9WH+LnIUA2RtDZokPoZCuK4Mg4dy8XygaOd
         fZIFeeYqJ/VGGKzR9up8dFKFa2E8mjg997JjX/un1FKxZVs+3Tff2m4Ep/ezS6JJhhDh
         +2Rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531COsi6IwHH8vy4ydpq1I+rTOfacv8OZIa7ZrCuLvOGY3HW0VzC
	/xa6NCC4Qys7liSEBeFGacc=
X-Google-Smtp-Source: ABdhPJy4bS1WxjfgXIhlNwajUgJRue2fUr+/+ALDRADPVRJyW4u7kvnCtLi5UbEs+Pqg2T8E60Dw9g==
X-Received: by 2002:a37:7a41:: with SMTP id v62mr1276601qkc.210.1613109311304;
        Thu, 11 Feb 2021 21:55:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9c2:: with SMTP id 185ls4067129qkj.8.gmail; Thu, 11 Feb
 2021 21:55:11 -0800 (PST)
X-Received: by 2002:a37:a3cc:: with SMTP id m195mr1234924qke.400.1613109310982;
        Thu, 11 Feb 2021 21:55:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613109310; cv=none;
        d=google.com; s=arc-20160816;
        b=RV0XvqSigA0X69CFoEJ67Lcs+5/DuKEXMzh0XRh8oHDx0zzlA5C25+sv4xVaHJxxLZ
         W1BxhgnrtmKieY88Q9dE8ICV6ewr+dhRMK6S+h0FSQsZ09CTCjR145OvhyFLOeSColNk
         8W630PBwtgPgEC3KdTOoxe29c6OAoZgFdqSGoyo6S/oPyA3PGvUAJSGfN45PEMGq1PYO
         c8It4+jVxvgDs0rmZ0GlIN3OBD1tVcsqm4gpzu+2gU3XAYsI6pQpixZiLHB0RlRia2nF
         TCmw2FoZoLwltspjSCNdRVs+G/YgG2SiyhphmA8vnoTuVgkbp9CvvP6YzniHH89Hjr1P
         +97Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o753ccDBqZcttLa38pE7EfEVI1WaWYXeqNPAWiFxUfg=;
        b=i6Z+e+jPErCO/eQcIWZz3BVZVR3xvJVd3Re+O1FfBaXsA+zVqjh+2Ol/6gtHor1xzG
         hOGFWCVWBThg+XwDwbPhx7PFF29ug3DF6EwYwgWpDwppQBLTFatLe7gQfu87wzz6PW6I
         5ie8EEl4a0QnPI5V9wfzjI/ullATvxpheZiJWbHMF9Jmzaa6I2sTXZQiESbdTxmXnrCv
         AOm2lt6ZH6hBz+60To3cws5SMg/Ox60V2qjvCAj/9K9uRdTv5rPxqfpwIGBLRdNIXBXl
         TAmRi3F+v2VYPaB1mFAks0oQcG55VruL+qSVM+X4YUVbLL9PdEhI+yTRU0Ggzfi7E8wM
         7A7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GxIi9IdZ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x65si493312qkb.2.2021.02.11.21.55.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 21:55:10 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5C28364E65;
	Fri, 12 Feb 2021 05:55:09 +0000 (UTC)
Date: Thu, 11 Feb 2021 22:55:08 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: linux-kernel@vger.kernel.org, Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Palmer <daniel@0x0f.com>, ndesaulniers@google.com,
	Russell King <linux@armlinux.org.uk>,
	clang-built-linux@googlegroups.com,
	linux-security-module@vger.kernel.org, manojgupta@google.com,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	llozano@google.com, James Morris <jmorris@namei.org>,
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: Re: [PATCH] ARM: Implement Clang's SLS mitigation
Message-ID: <20210212055508.GA3822196@ubuntu-m3-large-x86>
References: <20210212051500.943179-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210212051500.943179-1-jiancai@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GxIi9IdZ;       spf=pass
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

On Thu, Feb 11, 2021 at 09:14:58PM -0800, Jian Cai wrote:
> This patch adds a config CONFIG_HARDEN_SLS_ALL that can be used to turn

Drop "a config".

> on -mharden-sls=all, which mitigates the straight-line speculation
> vulnerability, or more commonly known as Spectre, Meldown.

                 ^ I would drop "or" here
                                                  ^ drop comma,
                                                    use "and",
                                                    typo: "Meltdown"

Although, is that a fair statement? SLS is not called Spectre or
Meltdown by ARM, it is a speculative processor vulnerabilty. It
might just be better to drop eerything after the first comma (although
maybe that is just being pedantic).

> 
> Notice -mharden-sls= has other options as below, and this config turns
> on the strongest option.
> 
> all: enable all mitigations against Straight Line Speculation that are implemented.
> none: disable all mitigations against Straight Line Speculation.
> retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> blr: enable the mitigation against Straight Line Speculation for BLR instructions.

I cannot comment on whether or not this is worth doing, I will leave
that up to Will, Catalin, et al. The following comments are more from a
"regular kernel developer" perspective, rather than an "arm64 kernel
developer" :)

> Link: https://reviews.llvm.org/D93221
> Link: https://reviews.llvm.org/D81404
> Link: https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation

This is also a useful article it seems:

https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2

> Link: https://crbug.com/1171521

This crbug is private. If it is going into a commit message, please
publicize it.

> Suggested-by: Manoj Gupta <manojgupta@google.com>
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>  arch/arm/Makefile          |  4 ++++
>  arch/arm64/Makefile        |  5 +++++
>  security/Kconfig.hardening | 11 +++++++++++
>  3 files changed, 20 insertions(+)
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
> index 90309208bb28..8fd0ccd87eca 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -34,6 +34,11 @@ $(warning LSE atomics not supported by binutils)
>    endif
>  endif
>  
> +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
> +KBUILD_CFLAGS  += -mharden-sls=all
> +endif
> +
> +

Extra space here

>  cc_has_k_constraint := $(call try-run,echo				\
>  	'int main(void) {						\
>  		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
> diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
> index 269967c4fc1b..d83c406c81a3 100644
> --- a/security/Kconfig.hardening
> +++ b/security/Kconfig.hardening
> @@ -121,6 +121,17 @@ choice
>  
>  endchoice
>  
> +
> +config CC_HAS_HARDEN_SLS_ALL
> +	def_bool $(cc-option,-mharden-sls=all)

I do not think that CONFIG_CC_HAS_HARDEN_SLS_ALL serves much purpose.
Moving the cc-option into CONFIG_HARDEN_SLS_ALL is just as clean.

config HARDEN_SLS_ALL
	bool "enable SLS vulnerability hardening"
	depends on $(cc-option,-mharden-sls=all)
	help
	  Enables straight-line speculation vulnerability hardening
	  at highest level.

> +
> +	config HARDEN_SLS_ALL
> +               bool "enable SLS vulnerability hardening"

The spacing here seems messed up, I corrected it above.

> +               depends on CC_HAS_HARDEN_SLS_ALL
> +               help
> +                 Enables straight-line speculation vulnerability hardening
> +		 at highest level.
> +
>  config GCC_PLUGIN_STRUCTLEAK_VERBOSE
>  	bool "Report forcefully initialized variables"
>  	depends on GCC_PLUGIN_STRUCTLEAK
> -- 
> 2.30.0.478.g8a0d178c01-goog
> 
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210212055508.GA3822196%40ubuntu-m3-large-x86.
