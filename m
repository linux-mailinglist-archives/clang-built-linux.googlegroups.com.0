Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBFGNWOAQMGQEWKHZAPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0851A31D71A
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 10:49:10 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id p64sf2027893vkf.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 01:49:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613555349; cv=pass;
        d=google.com; s=arc-20160816;
        b=WWBZosXN1Qd2mX2xRnXag2zHvHug1m8zxH8YhanHZ5VqIo2XqliUr6+SHfF24le3Mx
         efpbjSuw0SpH7x8ktJUg/M9KR3sX1jXRiRgS0HxbYDr8Zw21142ShyLA3pfRSnIuoRT0
         wjI/vlRHBHxk7X4aL1GWSPf7OZp6m0jZXwb1dAvTPICjPBF3RcoIklTiOQ8upvFBW8bE
         v5pj/teBHgE7cLenIfJowNtHVN25MwjR+lKcMxvB1jgjG4LxDnAi2LP87O1Q9jZ1lySe
         fiBk/2Omz8SR4cWybiMjePl4xGKPqCdlJ/NZ9Ics01Q0uOWZ42WjSSmnjvH9bpWZVZ+x
         tDDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vyms1QwuAng6bRLmNyhTQpCxO+ca/fEOJ+wmGFohFxk=;
        b=EQcKc/v+8F/uJnpOPdcKdxah2Jhwdnj+P31SdThqNAJqHKxJcSPZiQtgctUtdZnR1d
         xE5amVpJi3leLj+0pTPtFrMMWSKlcIQXA8mSAyk5C04uMTiTyziWeAtu6wQygUHjjdDT
         Dif7vC9xN/PlUp93rxeppvPwP/skNNNeA0jJ8Z5r8IFXgtKsjFZzA53cPYngbMXXvGMS
         sw2qi+V3iTMEODruQ0fOA7AoR8bFmCOSdfxBvEkwp3eXWc0hEyMPSFj056ot73VIopjT
         DxMEyGpOJVmNwEfe/IqrcoiulBw/Gd2uBxgXJqfMAmvp4olqhTMtEpGeq4M8EAeDN/bt
         dwvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cmHOlOJS;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vyms1QwuAng6bRLmNyhTQpCxO+ca/fEOJ+wmGFohFxk=;
        b=nScO6DY5/dQhvqKUFRtH3JfqKsrnY7HzzZ2T9e0uc46Lf/4Uy7o94qXAi7588HOEhU
         ewUx7heM9lkFCFINbpqhE/IqwACF7gqbCDtA6muiKtnAKYE45p4RtdEbyOpHeUOr/ahG
         AeRBTiH/OcgNQIiuXWzDWU7TREyv+fiC1l8QsJXYeMV87WkcGr4cyCvO7U35Nutn0BxV
         aliPHN53M6NmUIkuHj4CjwSWCT762JOtwH/3S4iBOyBQRJDSOHLLBdvE+wTYGiwcnww+
         QlxgUNTrDdtvI9a1eqo9C0d50gFpzkbKtMCZHN1tuV45urWdxciUZ+WXio2mG0gY0JBz
         KijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vyms1QwuAng6bRLmNyhTQpCxO+ca/fEOJ+wmGFohFxk=;
        b=rZ86dULjvC64XOwJaYTfEJt/7EcCy0VHVfPaZtLcjRibXVduCrEd68qHltt9QbM9V4
         lW2NYC0CTGeAo6Dt93n6F9G/fdNWG9+QGo2d+8318Qjir6qt1MTBqO4ztE4Y4DigGLhL
         J/bLXqNbLEsTw/09jkuvj8p/BzIDKVgTfdaAEU0GnjtzQqv7K1NouWRNQpNcpWlWOARv
         L0jXemvzTDuQp1O5D30KOAC+RBOhOZI0L1gLDxPZMS1fJceWRnlmYclOPU1xqduCWc4C
         e3BxCCh6SJzKxG4XVXjwOUVeg4AiIC0tKTUGw1cT6XUYOP9pi8LoPB7FKZNT1VMPjEXK
         /6BQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Kr2shqceRwyZ0lqCAomum5dfgN0XmYpGudrDkqnNLWAa+m2es
	1NlaeSs0QgA4vEl0hBv90aY=
X-Google-Smtp-Source: ABdhPJy/REvVba2purrUuOUy+u2JjA7hXDICr2JG5ksSE6ikY5/xf2KZEN686v0w+Q+LSQRSDfxoow==
X-Received: by 2002:a9f:25e6:: with SMTP id 93mr13420770uaf.57.1613555348828;
        Wed, 17 Feb 2021 01:49:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:69c8:: with SMTP id u8ls109192uaq.2.gmail; Wed, 17 Feb
 2021 01:49:08 -0800 (PST)
X-Received: by 2002:ab0:7813:: with SMTP id x19mr5532061uaq.71.1613555348438;
        Wed, 17 Feb 2021 01:49:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613555348; cv=none;
        d=google.com; s=arc-20160816;
        b=04quodJJV7LftSMvjzEzl3FFMbdM/4ZUlogL8GxxbzXhkOvoOQFUZ5qiE5SJSAhAuj
         22RlEwS9m6PnMrcQf7U7ROa+91HusDuhKLkvltXOLPScd7AYO6SpRxbvPb5lMHlxeoba
         G5lTxooYuaCGBFIfbYB9vFsClXmyzJnF14MHo6vrweJEWedNCwU9HdbKWd6qnlyp3hx6
         AlA41LZ/zNh9ZrqjmMMLAvYLVX9SddMmjR4VPTr0wLrR47UKtCcKTOzDJw7yyq5TB5dL
         cLq1kqji36/j2+tE2wsRWp8envViNY0DroLSWg7EAFJ1VYpld68NjarLkluOehvN0cr2
         x67A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=weEg7NokyJuvhxNapMoXM118m9GuDnc7bWUoRxU6X7A=;
        b=AQQtMbOddk1MU3dcrKclRuQ81T0E9vqfvr/PWYwdA5HVT+FGEL2CG1SV9MritTVDmQ
         uJ3+kFQSECiOMU4hDYJgPO4RjBZ519NyChheXiGlTwaOMMmgANvuiCYmO3wuihXnKQn+
         FSDtRpts9lBhNAcbjdhO03Zh/LyqVXdfiipdSkrQXbqBQjX3mAxr0d39xMGl+QhEVQeR
         mqJ68d0Koas6OffOhemkyXZPC4Lb2fY10dzgFx4DCO8k4ge24yr1Re0yKDH0cboCWw+O
         xTvUcB/7euagPOnv+BshqjvIYC1+cFlOyXYXDjrIeF516j3UaTmNKRrfLrlecK7Wr2mm
         Np6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cmHOlOJS;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l11si70697vkr.5.2021.02.17.01.49.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2021 01:49:08 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B9EEF64D9A;
	Wed, 17 Feb 2021 09:49:03 +0000 (UTC)
Date: Wed, 17 Feb 2021 09:49:00 +0000
From: Will Deacon <will@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	David Laight <David.Laight@aculab.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-security-module@vger.kernel.org
Subject: Re: [PATCH v2] ARM: Implement Clang's SLS mitigation
Message-ID: <20210217094859.GA3706@willie-the-truck>
References: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com>
 <20210212195255.1321544-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210212195255.1321544-1-jiancai@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cmHOlOJS;       spf=pass
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

What exactly does this mitigation do? This should be documented somewhere,
maybe in the Kconfig text?

> Link: https://reviews.llvm.org/D93221
> Link: https://reviews.llvm.org/D81404
> Link: https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
> 
> Suggested-by: Manoj Gupta <manojgupta@google.com>
> Suggested-by: Nathan Chancellor  <nathan@kernel.org>
> Suggested-by: David Laight <David.Laight@aculab.com>
> Signed-off-by: Jian Cai <jiancai@google.com>
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

The big problem I have with this is that it's a compile-time decision.
For the other spectre crap we have a combination of the "mitigations=off"
command-line and CPU detection to avoid the cost of the mitigation where
it is not deemed necessary.

So I think that either we enable this unconditionally, or we don't enable it
at all (and people can hack their CFLAGS themselves if they want to). It
would be helpful for one of the Arm folks to chime in, as I'm yet to see any
evidence that this is actually exploitable. Is it any worse that Spectre-v1,
where we _don't_ have a compiler mitigation?

Finally, do we have to worry about our assembly code?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210217094859.GA3706%40willie-the-truck.
