Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3V53SDQMGQE4JSWONA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F0C3D020B
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 21:07:27 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id g3-20020a256b030000b0290551bbd99700sf31633522ybc.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 12:07:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626808046; cv=pass;
        d=google.com; s=arc-20160816;
        b=oVn8FQa0cGV8swtRBMIJuns3esubWt36H/te3S1eZUltnjmsyUECeKwprPEC2vSS7d
         J10tk8ylKIMAzb3+8PDHhxqKbfiWm+zXVWYxTrf1eoIX1PZcBMqH1mfN5GbQug6QW4mD
         qkKL+PoVDk9kKj984quRoWijHFmZj6nqZh+77mSxfz2+CIPaZHBStVvAPlSKUWb8CMLp
         IPaN+ZiC1A5FSd1cfeue3NHw91y+3FtZioTLeBkaIMYCOEyB/5louzgLdtA11xX1OaIn
         K2DQnajH+URGQpnrp6yaEAPKrB6iq9eByKBpUbPHHmQfNFyc4QOzSHfHyo/gggYDEbON
         GZgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=zXJ2j4PzlaP/tcgeIMaHzsShAGJCoIGrJRbAPOrL6ow=;
        b=mN8Zzswfu+bHFyRta7u2nALkkDHmQfEA4H27sOrIQ+r5VGWvBlDjr9tsLFXPhMBxWv
         uvU8auOYUaqUYjz2C+vGxY2ncZl96wr96jh1Oo/ZuNF6U7dRODoSWtaIXOmovc/n41OR
         Nh7TMZid1B+ZHNAIMPpCVrN2jQMDvsthPd5ymzcG8G46AjkFL4Yic4tLFD2I0KWthpTu
         wVS5Af4pOFZzq5Thsh+nSy+EL0aQZtMs8hgZusgpI18tQ2L3w6b8nfed6Edez2/mmGHd
         LuW0Ru67BBKNuWt5utvjZVNFVVwlKwPFyp3zCMXLmczkSyVrfuPMSwLnz3eOukAlLzvO
         NxFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mcBrK9R8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zXJ2j4PzlaP/tcgeIMaHzsShAGJCoIGrJRbAPOrL6ow=;
        b=pAJddMQ66EItO6VgIZbMm4OYJM398de2+snONtiPpK6ZVqW7v1cww3Zi8s+qILpjn/
         fpT44yjzinimMY8BV8hMr6L3atazzcBxPE/Q3QXx86uolu9AAyovnN000Rggkd+sp2Jn
         emcy00fsL2zr1gvb3rXeHW+k6p6w1u/9rasMdK2bVvEiKwxr+9HO2MzWS6msHLXFxto2
         8lQFzI919zwydyOfEooNuQ/jM8YSW8YcrgmLddfisY0S4sfp/x/G2O0wP8vdcf89zjVP
         1uTKD4faUgZkYYH/DGW6eHLwJ46Bw+IhizW3CSdt/LbSSQ3pyGbEGD/5rj8SLTW/F9UK
         PUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zXJ2j4PzlaP/tcgeIMaHzsShAGJCoIGrJRbAPOrL6ow=;
        b=ZCzVgw0k5u3B9lBJz27y4tXXsNpHjAX3JUTWc40m4c1A+5Imp91hwOySuo4yJLEm+k
         fmjU0bNm6vDy4qkvgMG1SRCMwpTru9yiEjCplveE2dzZNyEWNxOzI2+IKjiyPOLodyzd
         JlD1mta2ofHzKeQvshmQslds6oH8LGc8xv+w+r84uuUeq3+cvhOts/eUXNJOomC7/pIW
         8XeXmrOpCftPR3kY03geCpXkEtZq7uDGKn0hNQuPmDcnpELAupIyya7hGan+TCsvCmjW
         S0wQO04BAxvKWDBb6MiBTSCIgZ9nK0+LeGFiD0Cjq7IGVOEaXDFp+U437cSSznvh4AgV
         SzXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BFe14vC0H8iz26QFWTTuzZapuo8oX5IRheaM5kIg55Yl7qCmS
	8tKyAooVBlnGl11e2LKLA+Y=
X-Google-Smtp-Source: ABdhPJyvWY8hHQBct/VGrob9WAcjcRbFg96rg+Lyyq9azbb49wJHCuYV1slVBQBplidPZsHThd2pVQ==
X-Received: by 2002:a25:ba08:: with SMTP id t8mr40243148ybg.111.1626808046870;
        Tue, 20 Jul 2021 12:07:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:38c:: with SMTP id 134ls3413112ybd.3.gmail; Tue, 20 Jul
 2021 12:07:26 -0700 (PDT)
X-Received: by 2002:a25:b321:: with SMTP id l33mr41392831ybj.434.1626808046368;
        Tue, 20 Jul 2021 12:07:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626808046; cv=none;
        d=google.com; s=arc-20160816;
        b=1B9f1dVfJPI+IirweLbrw31vxHhQ8/uyux/xLdvw9UbzMu6QoXSjEYz4n/B2Lkh+Sn
         98PyAFBs0aVy6OiTdKh3quaKuX2eYauEzY8gEvg7aS+CnPspxFI8gDtF0UZE40u7qezY
         moSGjtd4VVyp6BdKmry8hbuCzpmUTbjQwq9BSJ5tq01cM6wOLdy+mbrBJ6PWPYm9x3nD
         EvTPzEwCaSWbu250F+v9+zS+/7rM17SiVIzlsjtqugeW6ssju6NITYXjSLJDBjwtcH9A
         4ZuB1DLJ5RHTMa5P8XfGVPLPI/x/dQGx5K+ijBUq/utgev0NOn/51Nu9gQaD6KIX1ACe
         TooQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bbgERejzgn85AyMw4PMDA3UeKeLvl15WOujdMF01D0k=;
        b=rXqX68R5QoxWLZAxVHO74Mj2ZKioEYb2VDydnIKaqfYgLhb7bYcnZyhM9kWiO8b9YG
         hxzxrtPHxvijYwsy70KpbKobMssbkCw7qKYozkwIap2IDKpcsz2Nd/eTZUlZdysNtZUN
         Y44PIpXkPIvnY09WTG946Vrg47PIGzdtuN2SJ2xp1Nz+5Xe6Hb2QiScSK6E0N1epl2AL
         ocnVWO6qI54nqBKowhmcRSRmk7ceuWPQokqXYSzJplprrc8M3E1Y8E92Ob/hGIlqrqFF
         TAAtSSEpY04QFn399191t2dMNqTrn6FRCeENkk8JldTn5cSXvqWby+WEBGcasSHYb63n
         Zi1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mcBrK9R8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o187si2325320ybo.0.2021.07.20.12.07.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 12:07:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9DF9B610CC;
	Tue, 20 Jul 2021 19:07:24 +0000 (UTC)
Subject: Re: [PATCH] compiler_attributes.h: move __compiletime_{error|warning}
To: Nick Desaulniers <ndesaulniers@google.com>,
 Miguel Ojeda <ojeda@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
 Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, Marco Elver <elver@google.com>,
 Will Deacon <will@kernel.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210720180441.2893919-1-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <7c7d1639-7997-265e-aa77-ebe3d2fa05e6@kernel.org>
Date: Tue, 20 Jul 2021 12:07:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210720180441.2893919-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mcBrK9R8;       spf=pass
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

On 7/20/2021 11:04 AM, Nick Desaulniers wrote:
> I'm working on adding support for __attribute__((__error__(""))) and
> __attribute__((__warning__(""))) to Clang. To make use of these in
> __compiletime_error and __compiletime_warning (as used by BUILD_BUG and
> friends) for newer clang and detect/fallback for older versions of
> clang, move these to compiler_attributes.h and guard them with
> __has_attribute preprocessor guards.
> 
> Link: https://reviews.llvm.org/D106030
> Link: https://bugs.llvm.org/show_bug.cgi?id=16428
> Link: https://github.com/ClangBuiltLinux/linux/issues/1173
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Note that this feature hasn't landed yet in clang! I expect it to land
> in clang-13 though soon. We can still move this in anticipation of the
> feature landing, though perhaps the versions might not be precise if it
> slips to clang-14 (though I don't anticipate that).
> 
>   include/linux/compiler-gcc.h        |  3 ---
>   include/linux/compiler_attributes.h | 30 ++++++++++++++++++++++++++---
>   include/linux/compiler_types.h      |  6 ------
>   3 files changed, 27 insertions(+), 12 deletions(-)
> 
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index cb9217fc60af..21c36b69eb06 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -43,9 +43,6 @@
>   
>   #define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
>   
> -#define __compiletime_warning(message) __attribute__((__warning__(message)))
> -#define __compiletime_error(message) __attribute__((__error__(message)))
> -
>   #if defined(LATENT_ENTROPY_PLUGIN) && !defined(__CHECKER__)
>   #define __latent_entropy __attribute__((latent_entropy))
>   #endif
> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> index 2487be0e7199..5f474b593425 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -30,14 +30,16 @@
>   # define __GCC4_has_attribute___assume_aligned__      1
>   # define __GCC4_has_attribute___copy__                0
>   # define __GCC4_has_attribute___designated_init__     0
> +# define __GCC4_has_attribute___error__               1
>   # define __GCC4_has_attribute___externally_visible__  1
> +# define __GCC4_has_attribute___fallthrough__         0
>   # define __GCC4_has_attribute___no_caller_saved_registers__ 0
> -# define __GCC4_has_attribute___noclone__             1
>   # define __GCC4_has_attribute___no_profile_instrument_function__ 0
> -# define __GCC4_has_attribute___nonstring__           0
>   # define __GCC4_has_attribute___no_sanitize_address__ 1
>   # define __GCC4_has_attribute___no_sanitize_undefined__ 1
> -# define __GCC4_has_attribute___fallthrough__         0
> +# define __GCC4_has_attribute___noclone__             1
> +# define __GCC4_has_attribute___nonstring__           0
> +# define __GCC4_has_attribute___warning__             1
>   #endif
>   
>   /*
> @@ -137,6 +139,17 @@
>   # define __designated_init
>   #endif
>   
> +/*
> + * Optional: only supported since clang >= 13.0
> + *
> + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-error-function-attribute
> + */
> +#if __has_attribute(__error__)
> +# define __compiletime_error(msg)       __attribute__((__error__(msg)))
> +#else
> +# define __compiletime_error(msg)
> +#endif
> +
>   /*
>    * Optional: not supported by clang
>    *
> @@ -298,6 +311,17 @@
>    */
>   #define __must_check                    __attribute__((__warn_unused_result__))
>   
> +/*
> + * Optional: only supported since clang >= 13.0
> + *
> + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warning-function-attribute
> + */
> +#if __has_attribute(warning)

Should this be

#if __has_attribute(__warning__)

?

> +# define __compiletime_warning(msg)     __attribute__((__warning__(msg)))
> +#else
> +# define __compiletime_warning(msg)
> +#endif
> +
>   /*
>    *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-weak-function-attribute
>    *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-weak-variable-attribute
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index e4ea86fc584d..b6ff83a714ca 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -294,12 +294,6 @@ struct ftrace_likely_data {
>   #ifndef __compiletime_object_size
>   # define __compiletime_object_size(obj) -1
>   #endif
> -#ifndef __compiletime_warning
> -# define __compiletime_warning(message)
> -#endif
> -#ifndef __compiletime_error
> -# define __compiletime_error(message)
> -#endif
>   
>   #ifdef __OPTIMIZE__
>   # define __compiletime_assert(condition, msg, prefix, suffix)		\
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7c7d1639-7997-265e-aa77-ebe3d2fa05e6%40kernel.org.
