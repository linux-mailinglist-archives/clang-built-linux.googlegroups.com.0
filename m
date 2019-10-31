Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6P35TWQKGQEGYYB4UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D581AEB833
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 21:03:06 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id g135sf5418636ybf.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 13:03:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572552186; cv=pass;
        d=google.com; s=arc-20160816;
        b=VR9nr2uIjO8Z39LT0R0dHk9QUzrqIGhS9FFwkxgUa+1BWBvc6j5eZUfjTMDCrEP/1M
         NHAd0qDmbc+1vA6tkwLfpYNDqVjuJF2CG/LE7BiQwoYzOo6MLDG8+RhctzWPwA9vBTqR
         9G9gxVCV0rIJECqZzuO+pwis5Dtv8uzdIiKGYh5Xtf2rFq1+fJSZUxxfET4a+qTkX+Vx
         MOxO3O791D4wOYpdle4WigyqAJsG6j58XqlFKMf7CfMwp1Lj3i0eBM2JeT6/07qk/iMf
         OTXY0i5DncQthMHYP1uhVxc0+aWitHyUyLW2CxIjq7QyRsJah63mil+HPCueXZcXfAag
         pf1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/8qmp9KlGeWWeQesNTnlpYohm3mUog+VcYOHgc0+rWI=;
        b=gEsLGSYA7OcqsVSvGOb1IkI9GvjKExN/l7WTnrTZEmV3e7HdoW/ZX6MyDcmSKugQNo
         fq2kGtTIn53IYUcoHuCQCuZwwbYwtOsxgF4tRnDgRIhBDVeHGADFXqRo5OTOy/C5fk6V
         1TbmPcxwaJ0eql9TlTBCZVyF6a9FEavie07NdVfp4sqLEU0p0sj1aYzf0wltT0+R+AjR
         QVavXYHErkTmoZrvuEp+B9gvaLR4Y1MCnVeSqyUsdk+w8pCyYJCxh1/DKDJ4r5DijFn5
         8TjkZRntyTw5sw2J71HGrfK79l7k/twkJjWlu+zBsV1+dx/kQ6nKuweR/eQWxxMzTzMk
         iwvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UvFpZAsm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/8qmp9KlGeWWeQesNTnlpYohm3mUog+VcYOHgc0+rWI=;
        b=db/bBRT4/7nRxEDQURp2lmieqPAfvOgJAjT86fvCk5OZVEtn2MbxKQRENbJRqnD3GA
         cnpZrXr7HZClGi/8lYg1CItVQLWFwOZN5BURDsnWp3ZIcxAdS1Ih8t42L+oLa+8WDHMz
         bIgB1LOUB4FFV5fE4f/GdPMQ/Eg4Zxio6gSU5RBI5/mq1AVRhwvT02aDPoaD3STMYcMQ
         qi0wuInONaxpQoOf0w/YIi8DgQYzIoN/EdXnaHsDu4SAYV6e6oowWRCFZES283xKatI8
         b85vHxLpAOVxz1WaClh4CNC4m2H6X8PQZ0mStvmviwMx6GdulGwewjity/JPtr1USzSn
         nxNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/8qmp9KlGeWWeQesNTnlpYohm3mUog+VcYOHgc0+rWI=;
        b=uiiYQMDsnabo76zgJDzmXNiF6R7wXcZhdN3WuR5v3O7XHYajzOFv4JFbwfyUsvbDCt
         C5KPlL47BQ5et7JOiRy6ACD1Xm/EAKf31D/OOu33uZWerFHwPG0zNZJ1Xk548Guaygl5
         +pjZXGfvJc2rMitje7AIs7Uml0iq8ZIsODhaOVuUKyXBTu8Qa3OuKdvUApcAlQzw4FzH
         ITzQVeBRp0KqJYgDiD0A6CMT8UfW88TmGeFLty8teJh0w6B5s9CTGyDCLVhclgG2rMfS
         XtqejIvEKY7osE8yVBiOq7PMVhCHIagrJVBrZ9LGQJmYvJRM30Rdl43XIfKkMIjdL0Qs
         9Svw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWD4T7CEgbXU2HjcFHF+xhlVx4FWN90oM9FUE17wLp6AtvSLM9h
	sQqgMnYz03f/gx/n72ht5hQ=
X-Google-Smtp-Source: APXvYqy1TiyMrbXF4wG5i1sajUsWDiS5ry/0wH89T1lE4xsPQjzn0EICao/orW6aZ5vC3mEJpj2HbQ==
X-Received: by 2002:a81:f011:: with SMTP id p17mr5334348ywm.79.1572552185758;
        Thu, 31 Oct 2019 13:03:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls663461ybc.11.gmail; Thu, 31 Oct
 2019 13:03:05 -0700 (PDT)
X-Received: by 2002:a25:7313:: with SMTP id o19mr6071454ybc.418.1572552185268;
        Thu, 31 Oct 2019 13:03:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572552185; cv=none;
        d=google.com; s=arc-20160816;
        b=TEMuehhse9EWapI/dBgKJb+AFLxc7FPLiSfXokM++muph+mqmWDzILkaVuPh287g68
         7SJJ1fdofxUUSWUGva0vOHrkxVGF2P4Yk/qYkFocsLvzgQAIhR4qPYCcXbkOl04vb8BO
         +x1FPSdNqJgFlBg+puZL3N8yORSPnxMNbbLgvhCeVu7G531Y+VxInKQeoDR20Q3o5Zud
         pbMmA4yv9N2di9PA1lGbrTmqU38vGzjJLUjtNWlsSN/xfDvN3dIP6UXPpN8p9HRsqYJb
         d8qUu3hZyyjx3maaRhT6VGUqz6B31gztSDVZRuscS5Zle4vqLcBhXmsGCyiD1lY7V2AP
         zIRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wAwSqScQ+vUrp/ryQqbWQb0d71qTBbv+M5ScuaTLVuA=;
        b=X8VftfbHkLYK0Zf2EL8WUGg4MNedeTo8hgMxTpZP/0zQJuicp/mqbOhIeYs9+y4m8W
         GCI+XqYFwItGV1MDGN5nHxTvl0H6GN5EGf5nIzieGIGCCiWHB98F73CTf4z5Bydbsp3w
         Pa0spjoEmYppkzkjwh0vRhPUr/OnYh2neUlqLr9CJ4dwB7a61OKxiPUV9aizKhdaqV75
         IaLhrXJR/luIGzzhlKZYKuKyaZ4jSvxWsfmWZhQRCUuU3F9iUOl6fw5u06PA1u26mVbo
         9JuUNECucgcyhsgTA4e0JU5Dob3BHFEF0EToUqDz8r+b2SRd8Fl/7Y7av6KK33U/KCCN
         w/Sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UvFpZAsm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t73si303420ybi.4.2019.10.31.13.03.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 13:03:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id d13so5165386pfq.2
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 13:03:05 -0700 (PDT)
X-Received: by 2002:a63:be4d:: with SMTP id g13mr8899385pgo.257.1572552184348;
        Thu, 31 Oct 2019 13:03:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o1sm4230452pgm.1.2019.10.31.13.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 13:03:03 -0700 (PDT)
Date: Thu, 31 Oct 2019 13:03:02 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [RESEND PATCH] arm64: fix alternatives with LLVM's integrated
 assembler
Message-ID: <201910311303.2FBAA3E3@keescook>
References: <20191031194652.118427-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031194652.118427-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UvFpZAsm;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Oct 31, 2019 at 12:46:52PM -0700, Sami Tolvanen wrote:
> LLVM's integrated assembler fails with the following error when
> building KVM:
> 
>   <inline asm>:12:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:21:6: error: expected absolute expression
>    .if kvm_update_va_mask == 0
>        ^
>   <inline asm>:24:2: error: unrecognized instruction mnemonic
>           NOT_AN_INSTRUCTION
>           ^
>   LLVM ERROR: Error parsing inline asm
> 
> These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
> which test for the existence of the callback parameter in inline
> assembly using the following expression:
> 
>   " .if " __stringify(cb) " == 0\n"
> 
> This works with GNU as, but isn't supported by LLVM. This change
> splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
> to fix the LLVM build.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/472
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm64/include/asm/alternative.h | 32 ++++++++++++++++++----------
>  1 file changed, 21 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index b9f8d787eea9..324e7d5ab37e 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -35,13 +35,16 @@ void apply_alternatives_module(void *start, size_t length);
>  static inline void apply_alternatives_module(void *start, size_t length) { }
>  #endif
>  
> -#define ALTINSTR_ENTRY(feature,cb)					      \
> +#define ALTINSTR_ENTRY(feature)					              \
>  	" .word 661b - .\n"				/* label           */ \
> -	" .if " __stringify(cb) " == 0\n"				      \
>  	" .word 663f - .\n"				/* new instruction */ \
> -	" .else\n"							      \
> +	" .hword " __stringify(feature) "\n"		/* feature bit     */ \
> +	" .byte 662b-661b\n"				/* source len      */ \
> +	" .byte 664f-663f\n"				/* replacement len */
> +
> +#define ALTINSTR_ENTRY_CB(feature, cb)					      \
> +	" .word 661b - .\n"				/* label           */ \
>  	" .word " __stringify(cb) "- .\n"		/* callback */	      \
> -	" .endif\n"							      \
>  	" .hword " __stringify(feature) "\n"		/* feature bit     */ \
>  	" .byte 662b-661b\n"				/* source len      */ \
>  	" .byte 664f-663f\n"				/* replacement len */
> @@ -62,15 +65,14 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>   *
>   * Alternatives with callbacks do not generate replacement instructions.
>   */
> -#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled, cb)	\
> +#define __ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg_enabled)	\
>  	".if "__stringify(cfg_enabled)" == 1\n"				\
>  	"661:\n\t"							\
>  	oldinstr "\n"							\
>  	"662:\n"							\
>  	".pushsection .altinstructions,\"a\"\n"				\
> -	ALTINSTR_ENTRY(feature,cb)					\
> +	ALTINSTR_ENTRY(feature)						\
>  	".popsection\n"							\
> -	" .if " __stringify(cb) " == 0\n"				\
>  	".pushsection .altinstr_replacement, \"a\"\n"			\
>  	"663:\n\t"							\
>  	newinstr "\n"							\
> @@ -78,17 +80,25 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>  	".popsection\n\t"						\
>  	".org	. - (664b-663b) + (662b-661b)\n\t"			\
>  	".org	. - (662b-661b) + (664b-663b)\n"			\
> -	".else\n\t"							\
> +	".endif\n"
> +
> +#define __ALTERNATIVE_CFG_CB(oldinstr, feature, cfg_enabled, cb)	\
> +	".if "__stringify(cfg_enabled)" == 1\n"				\
> +	"661:\n\t"							\
> +	oldinstr "\n"							\
> +	"662:\n"							\
> +	".pushsection .altinstructions,\"a\"\n"				\
> +	ALTINSTR_ENTRY_CB(feature, cb)					\
> +	".popsection\n"							\
>  	"663:\n\t"							\
>  	"664:\n\t"							\
> -	".endif\n"							\
>  	".endif\n"
>  
>  #define _ALTERNATIVE_CFG(oldinstr, newinstr, feature, cfg, ...)	\
> -	__ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg), 0)
> +	__ALTERNATIVE_CFG(oldinstr, newinstr, feature, IS_ENABLED(cfg))
>  
>  #define ALTERNATIVE_CB(oldinstr, cb) \
> -	__ALTERNATIVE_CFG(oldinstr, "NOT_AN_INSTRUCTION", ARM64_CB_PATCH, 1, cb)
> +	__ALTERNATIVE_CFG_CB(oldinstr, ARM64_CB_PATCH, 1, cb)
>  #else
>  
>  #include <asm/assembler.h>
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910311303.2FBAA3E3%40keescook.
