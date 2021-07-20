Return-Path: <clang-built-linux+bncBDPYNU65Q4NRBJMV3WDQMGQEBMDMKGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7213D0458
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 00:13:58 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id g9-20020a92cda90000b029020cc3319a86sf365774ild.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 15:13:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626819237; cv=pass;
        d=google.com; s=arc-20160816;
        b=B20yQdCkYQkDh5ZPuGjeKHO3RoT6KtuzHM8uoWxOs6znNTOIpYv+fNwP6sscqrTfLN
         ky8xzpRq+iMBVCUWO2m8fMr6e1RBZbY85GxjzGYsptukDmJucWsiq8jI3u4Ma2XUIGh8
         7Gurngu3FPtnGpJT6TMh67+UZ2J4AgdCrMibLcc4VsxII1XvPWv9Bu5+qungVzAuB/KA
         AaSea3tXTNAmo0oeC1wP2mrooJN5lDsGSmKgYwu92XDEqLQY3uLya1vBHLjv6EXuna8E
         m0hrWQrLs8oKgYMK19V/Qpm/gb6Fhk4SVp+R9h/KBuTRfdJtAKsuKC5ibh6HTUQlb/5G
         Sdww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+AW7U2g5/IDLh7Lb4hedF7eE1sGGnqyErZK4iaqr1R8=;
        b=fp8/Wa1BV7r0uABq8y8m67VP1IYQXDhsV7jdb2rsV8qZyYn8wUIiCAflGiQUAynNdz
         wRD4F55Zmcy7qha2Y+cp0I1vja+RcBkiA3FrO7piuIC6IOZsmarCWSVc9bLh64f7++BI
         dzmIiwmebjxBwb5aBmzHkZ2F/lPxE0VwN6mwJ7idI45vqrWra6du+t8JGRT7XZkWHdzD
         tRay6cXnFQL13s8DkOLDoYkpSv58nQNeVX38CgBjhVJnrLux7G25xhOvDUzGDDmTptGA
         kNSFbC5sIMDdz0qPT+VaSOT568Xl+Gnab7BtTesxgO+XhsiFxRceob9yD9y8y6zIA+o9
         exIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iCwQ6QDK;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+AW7U2g5/IDLh7Lb4hedF7eE1sGGnqyErZK4iaqr1R8=;
        b=bfzRe9H1fa+rwyk1FQsibf+eHx2zADskSGr84xG0EYB9LPMNIxZyCVNYWj/Ftxpu4R
         mPl0ysHaZC244NVjNX6zB7PGAYhWdHsKsy/KQ8FHQ+LCB/DAw9S/CFGnAlNfi+oqyfgF
         4+PnouTUhRq0jYzKh2JgT9jul3tTzqBAhkGZzeIt0O4JgX0SqYb0Pi2Z8IODddkQGIfw
         jF33OuKi/eqa/Xw3s30WKCa11z0NuXV8cJS/KURWtXI7Uui6OTbvlnPZ5QdTsV1IyUMO
         wm0SCZvFlABrEG1KAp3bUJwPvriOK0ldWYk5Kz1M9jhy/NBrAkYjr4tS9OXSSe7iz3Ad
         aJ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+AW7U2g5/IDLh7Lb4hedF7eE1sGGnqyErZK4iaqr1R8=;
        b=ka05vyNZIDJf5HQdwGu/gbi7qk8MAW1ITBIV9o7hxt+0syd6hfVYD0hlhtBzil6AjG
         exNyVeosgzuFDVxZUu9smcIkJa/bGeYtCFkY944OVFZ+Kqy8JP0/r8c4dt7E4LzsecN/
         a/gn66LRPS3IdaBKFUHWt7qMGwTslYLpc/zH+OUbh7g4dXVtClheI3v8id9KoHLKki2Y
         JXvuEvO3kqcj+qxHTMS1MgjuXs79ERSH21FpoxnACBUH7mNK52gDk+1TgOqQUo+Uvf5H
         uHPpMws1IntQ7SbkOwlAoeB0E/mBZp7L7ND3LwiqiY4iEc2MWspI3wFzVJtDfU759V7R
         QSCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ABB4Zo2DB7ACLgZBDaaqNyfujr2iTcH9sQolqvqbwL0VGaJYH
	cuJe1t0lSG+0EguVvAAo6Hc=
X-Google-Smtp-Source: ABdhPJzyG21F0E7VorNL23kxhp/XU33oFSBhcrIonv0zeNZYj5NkU4Q/ifYcDjB1b+cDzVNfn01jSw==
X-Received: by 2002:a92:d251:: with SMTP id v17mr21384136ilg.283.1626819237093;
        Tue, 20 Jul 2021 15:13:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:39c7:: with SMTP id o7ls66783jav.0.gmail; Tue, 20
 Jul 2021 15:13:56 -0700 (PDT)
X-Received: by 2002:a02:331e:: with SMTP id c30mr17540444jae.94.1626819236802;
        Tue, 20 Jul 2021 15:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626819236; cv=none;
        d=google.com; s=arc-20160816;
        b=varg72yxPbTtPRXEJQmlCWaLaVmeygx4ds5JKVmaCYoif1bgGb75PVMID29fLPQ7BD
         ezP86pxQZuUyvrWJKCeTjEm6ntT3vLfvwyPSWeZJw37gK0MzyNY0pysgel9RSNuJa5ea
         NX0+4sLvORAcNfbvcld0ZrLWMxzy4WdVrTG14Amgw7nXmRyQWecw7nr204D5ut2gMtne
         hkHpdjB2KdsJ6N39JdK3Yl6+htZvELf3M6CVLfOcf1TG+oKhUrhde11Bmrn2vkX9FW1X
         h2zGS47fjPdVR7nVhkzb0K6RGgH76QzuyZXwYTdTAnAgbAZ+RBjdmunoIVNSEgC7aj8d
         JB1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cxXdwyf86/iBd4y3nxKbGfWmpLYKe5FEr/5hOz+4xlA=;
        b=kcGjGsB5gJB5EmTe4Lgk5TFPKz+GMPNPPY2WE8cm0EDeQ+4G+cAKJ2T3riD2Q8maIi
         2qA8x8OAfhYOkV7TKzjf3tkM+pGkGdoq8rLk+SNIiEFbvjTKbpec73c0BNZACXxQI4dE
         Lc/um/Qh/xVKLYNLlE/PGR+yG4/sqrg9mYdtCtOngjdeXxhiGZaeqNxSAo2V5/1wB9UA
         VaJn5x285zVLTuCxeDPmgiHJJdqa5Va6yU+5QnEEQHNGK0e7PKYtylM7KdSxbR2tabH3
         aXsWf5l1xnmw0BNA+QymH+vyUJEcHD8RWso2L0pQ88O82NMDgR5Npstlyk0hlC2y0BmI
         dZZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iCwQ6QDK;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si2450505ioh.0.2021.07.20.15.13.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 15:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 89BEE61004;
	Tue, 20 Jul 2021 22:13:55 +0000 (UTC)
Date: Tue, 20 Jul 2021 17:16:17 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, glider@google.com,
	linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] hardening: Clarify Kconfig text for auto-var-init
Message-ID: <20210720221617.GA94423@embeddedor>
References: <20210720215957.3446719-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210720215957.3446719-1-keescook@chromium.org>
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iCwQ6QDK;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jul 20, 2021 at 02:59:57PM -0700, Kees Cook wrote:
> Clarify the details around the automatic variable initialization modes
> available. Specifically this details the values used for pattern init
> and expands on the rationale for zero init safety. Additionally makes
> zero init the default when available.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks!
--
Gustavo

> ---
>  security/Kconfig.hardening | 52 +++++++++++++++++++++++---------------
>  1 file changed, 32 insertions(+), 20 deletions(-)
> 
> diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
> index 023aea5e117c..90cbaff86e13 100644
> --- a/security/Kconfig.hardening
> +++ b/security/Kconfig.hardening
> @@ -29,6 +29,7 @@ choice
>  	prompt "Initialize kernel stack variables at function entry"
>  	default GCC_PLUGIN_STRUCTLEAK_BYREF_ALL if COMPILE_TEST && GCC_PLUGINS
>  	default INIT_STACK_ALL_PATTERN if COMPILE_TEST && CC_HAS_AUTO_VAR_INIT_PATTERN
> +	default INIT_STACK_ALL_ZERO if CC_HAS_AUTO_VAR_INIT_PATTERN
>  	default INIT_STACK_NONE
>  	help
>  	  This option enables initialization of stack variables at
> @@ -39,11 +40,11 @@ choice
>  	  syscalls.
>  
>  	  This chooses the level of coverage over classes of potentially
> -	  uninitialized variables. The selected class will be
> +	  uninitialized variables. The selected class of variable will be
>  	  initialized before use in a function.
>  
>  	config INIT_STACK_NONE
> -		bool "no automatic initialization (weakest)"
> +		bool "no automatic stack variable initialization (weakest)"
>  		help
>  		  Disable automatic stack variable initialization.
>  		  This leaves the kernel vulnerable to the standard
> @@ -80,7 +81,7 @@ choice
>  		  and is disallowed.
>  
>  	config GCC_PLUGIN_STRUCTLEAK_BYREF_ALL
> -		bool "zero-init anything passed by reference (very strong)"
> +		bool "zero-init everything passed by reference (very strong)"
>  		depends on GCC_PLUGINS
>  		depends on !(KASAN && KASAN_STACK)
>  		select GCC_PLUGIN_STRUCTLEAK
> @@ -91,33 +92,44 @@ choice
>  		  of uninitialized stack variable exploits and information
>  		  exposures.
>  
> +		  As a side-effect, this keeps a lot of variables on the
> +		  stack that can otherwise be optimized out, so combining
> +		  this with CONFIG_KASAN_STACK can lead to a stack overflow
> +		  and is disallowed.
> +
>  	config INIT_STACK_ALL_PATTERN
> -		bool "0xAA-init everything on the stack (strongest)"
> +		bool "pattern-init everything (strongest)"
>  		depends on CC_HAS_AUTO_VAR_INIT_PATTERN
>  		help
> -		  Initializes everything on the stack with a 0xAA
> -		  pattern. This is intended to eliminate all classes
> -		  of uninitialized stack variable exploits and information
> -		  exposures, even variables that were warned to have been
> -		  left uninitialized.
> +		  Initializes everything on the stack (including padding)
> +		  with a specific debug value. This is intended to eliminate
> +		  all classes of uninitialized stack variable exploits and
> +		  information exposures, even variables that were warned about
> +		  having been left uninitialized.
>  
>  		  Pattern initialization is known to provoke many existing bugs
>  		  related to uninitialized locals, e.g. pointers receive
> -		  non-NULL values, buffer sizes and indices are very big.
> +		  non-NULL values, buffer sizes and indices are very big. The
> +		  pattern is situation-specific; Clang on 64-bit uses 0xAA
> +		  repeating for all types and padding except float and double
> +		  which use 0xFF repeating (-NaN). Clang on 32-bit uses 0xFF
> +		  repeating for all types and padding.
>  
>  	config INIT_STACK_ALL_ZERO
> -		bool "zero-init everything on the stack (strongest and safest)"
> +		bool "zero-init everything (strongest and safest)"
>  		depends on CC_HAS_AUTO_VAR_INIT_ZERO
>  		help
> -		  Initializes everything on the stack with a zero
> -		  value. This is intended to eliminate all classes
> -		  of uninitialized stack variable exploits and information
> -		  exposures, even variables that were warned to have been
> -		  left uninitialized.
> -
> -		  Zero initialization provides safe defaults for strings,
> -		  pointers, indices and sizes, and is therefore
> -		  more suitable as a security mitigation measure.
> +		  Initializes everything on the stack (including padding)
> +		  with a zero value. This is intended to eliminate all
> +		  classes of uninitialized stack variable exploits and
> +		  information exposures, even variables that were warned
> +		  about having been left uninitialized.
> +
> +		  Zero initialization provides safe defaults for strings
> +		  (immediately NUL-terminated), pointers (NULL), indices
> +		  (index 0), and sizes (0 length), so it is therefore more
> +		  suitable as a production security mitigation than pattern
> +		  initialization.
>  
>  endchoice
>  
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210720221617.GA94423%40embeddedor.
