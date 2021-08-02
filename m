Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM5LUGEAMGQEZLY2FGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 850683DE0A9
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 22:29:40 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id ep15-20020a17090ae64fb02901772983d308sf360048pjb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 13:29:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627936179; cv=pass;
        d=google.com; s=arc-20160816;
        b=mgmTKJYdERE6ri6SSrnaPGQgnin+OLH0WT0ShiVFqV0dWp1ri7jURFV7eGPdfVieD5
         FTWqF1LxoRfv4hJHDVDWY6E6Zz674HbQ3jzkJzgsRXPRc/jGwCXWCdf4lsDbvkswUjE2
         Xj0AXJbInWBkX9IewbrGr7eBm7yw+yw1/52eioSg0wqSiAUqU/m3KQWr7JZOW6ugr8FL
         4EUo/yO8NKIOpxVfl8fLj4+Sua3sMyQEiAqfQ/B6zRaYHxhsChP751togc9CGmZU4X3F
         n/G4O+cyNiKCpvwxxd/D3/dTUF29PKBRYh+MmE/DCg3+0M+A3uGnlmTt3zRhw8rvZ4fO
         g/+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=lbGCecQc42rpXwHQSM2lynFUxXo7r+LyIaXW/CGdkcA=;
        b=EXPVbVCNhnb8NE8JntWSXNm+PyXoi2783s7uTpJv+mpACklqMM9uEk/x3Jm1zU37zo
         b+DP+CDWlF16Fedzd87twa9iJi5xawpCnxXOHn6RyxeOFlZYlItg8PQ8oQxez0GamvVK
         5v6eNtFsbF/u20Tb4uoFNj9yGpkmlkTVW42URsI0GfN4lOFUlWNyfLnaKzye8+Fs7LZa
         VdZzm3OWOHpponOEFg2eQo3XaJbUDR0pdCPkalkhRQphQ52NJW3mbwwGjigKjTraBZDc
         Sjt+qQWKq06MFjKXXYHoX509jl0ras2ePz0HNlQKdG41QejxGibQsIFNvLFH/vDY0qEf
         /4GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TX40QJ9d;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lbGCecQc42rpXwHQSM2lynFUxXo7r+LyIaXW/CGdkcA=;
        b=aj1pmKZ5mhVrDfWotUEQL/lxljMkmLrjtRQzFedItss+G9jWW1SdvWL7upBp978oj6
         buZBQ0lB84ETU93rePF90L5Jyl9/MWS4XoAwoENMdSJHaVcn3fpWmGiVPgENrRStoATb
         b5CFibVubK7ovvp8zBMkrq+B12yNZUjEL56Ho+6wj2l7k/jwBiZLAFp/LLhOGMMJkIGY
         f65uH4xjt0+v9ZPIh8nEx2HjOeoCqQZa34BNKIlfQYAu33A7p9FZINsvSPayvy690Kea
         /corNt3XedPNgKdwmei25oIEIIoP9CJN98h8WMe9IpIHR9w8OtnDNBECv0LBBdqmthk+
         z07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lbGCecQc42rpXwHQSM2lynFUxXo7r+LyIaXW/CGdkcA=;
        b=dnWckRN1tirz4su/NGfXp27aEHbmb8K0cNtWaClxEhkhaWxrw1VRZA/LYkluxHoSw+
         mJ7NTTx0srTaBa413koFeRZHUp5hSo2AO9m5PtHNId19gsvG21nZb7A5aVEuCawlcSP6
         Y8qZYmauuIzrKsy0idnK/TqTfP7j8Pu6LuIzEAkxGaSJ3YiuW07vOVEi2JHxER9LXQkB
         AmCdWjt1cKiUalj4y1i9BrCiHtCRDbJ/6h2p4jPsFnOIlXtN4fLhzYlQxIPZaAMcsHwJ
         LYnB/YNZxk3+uXjQESJYzg0JDP8lgaygQSZhxnHjQSwaxto3BfU7YnnbPOODVacLeX43
         HooA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dqKYpviTPkgq2xgOB1YOI4L84ch9vxI00UWBmirF75L0Bwkre
	VhBuZe4PD9zo0w0uhf0MQQY=
X-Google-Smtp-Source: ABdhPJwdbgiwObELtBGtCqP7eCkj8nht9InPaFFWXijfTWj8bGNQNLC0kEMwWAN4cl1/3GNVkSX5VA==
X-Received: by 2002:a17:90a:ba8e:: with SMTP id t14mr19161616pjr.176.1627936179261;
        Mon, 02 Aug 2021 13:29:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:600e:: with SMTP id y14ls5981942pji.3.gmail; Mon, 02
 Aug 2021 13:29:38 -0700 (PDT)
X-Received: by 2002:a17:903:248f:b029:128:d5ea:18a7 with SMTP id p15-20020a170903248fb0290128d5ea18a7mr15496461plw.83.1627936178718;
        Mon, 02 Aug 2021 13:29:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627936178; cv=none;
        d=google.com; s=arc-20160816;
        b=XLaw2xpsdoggv6+x0ovQ+bGPju2Ma8qDjzhAf+NkKtmH/wyJ3NoxBQboM4fJmu3XWg
         ogHMHrnBWY2vrvcOrV7tTR/QNphIHYiaBV70ZvMhY7X3oiBETRl062bzcIfPMV70Hqh9
         RkdeX2D6g8d01waGEFl2/jC+MmzpsS4fm39HtXukPl/AA8jOQVuTXW62KCPwaE8DAfgJ
         kS3ZkVTFGCZRLPsSSKTpvn3ZPGkAzPZQsTUCBzbNoaxYWsPm1nJ6nN7QnDbJ8dJKptin
         tal5BAeFinj126CVH4zyUYOq1XmHmtpA9aueqFYbNhZo4t04LohPAL76xMYeM33CnyUl
         kBOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Ok1V2wcvtMzF6sT8Y34scgnxcIQxohCIO9ShRjHBIhU=;
        b=F5Bd+YQ8c7C1/ys4at0NphAl0NiQp67ZzO+uLPDCQdIrIq0T0gkDgwl+kFvVnVVOvv
         oQ5Tpni416Wi+mxulYyXiv64r8+RmZiCvk6kJYpLHYW4PYVk7D4nFMb2lu6fQPZDTttK
         oH7COSA2A4TvF4xxNhrq/OG56QF7FXnJT5XkR9JFWdxYGKYvOreEs/aaalYVvKL7hTlA
         bfxb2r2XjwA1aLVKwnr6egW8GgFe9KRaxvyQEFdZFLcZPCOI9WMSE2W9DltylsAIRvCV
         3BN9rNPJNFG0bVIL1cr66F9dg7qAaExOd/bLz1hQZdBwpzRHG9OvRz0x/pvPYek+oUUw
         j6Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TX40QJ9d;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si567937plo.3.2021.08.02.13.29.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 13:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C577610A8;
	Mon,  2 Aug 2021 20:29:37 +0000 (UTC)
Subject: Re: [PATCH v2] compiler_attributes.h: move
 __compiletime_{error|warning}
To: Nick Desaulniers <ndesaulniers@google.com>,
 Miguel Ojeda <ojeda@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
 Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Will Deacon <will@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ardb@kernel.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210802202326.1817503-1-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <1847b77a-093a-ce59-5c3b-1a21d3bb66c7@kernel.org>
Date: Mon, 2 Aug 2021 13:29:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210802202326.1817503-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TX40QJ9d;       spf=pass
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

On 8/2/2021 1:23 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
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

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

One comment below, please carry my tag forward in further revisions 
unless they are significant.

> ---
> Changes v1 -> v2:
> * Use __warning__ rather than warning in __has_attribute check, as per
>    Nathan.
> * Don't sort existing __GCC4_has_attribute_* defines.
> 
>   include/linux/compiler-gcc.h        |  3 ---
>   include/linux/compiler_attributes.h | 24 ++++++++++++++++++++++++
>   include/linux/compiler_types.h      |  6 ------
>   3 files changed, 24 insertions(+), 9 deletions(-)
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
> index 67c5667f8042..fb08b843ab47 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -30,6 +30,7 @@
>   # define __GCC4_has_attribute___assume_aligned__      1
>   # define __GCC4_has_attribute___copy__                0
>   # define __GCC4_has_attribute___designated_init__     0
> +# define __GCC4_has_attribute___error__               1
>   # define __GCC4_has_attribute___externally_visible__  1
>   # define __GCC4_has_attribute___no_caller_saved_registers__ 0
>   # define __GCC4_has_attribute___noclone__             1
> @@ -39,6 +40,7 @@
>   # define __GCC4_has_attribute___no_sanitize_undefined__ 1
>   # define __GCC4_has_attribute___no_sanitize_coverage__ 0
>   # define __GCC4_has_attribute___fallthrough__         0
> +# define __GCC4_has_attribute___warning__             1
>   #endif
>   
>   /*
> @@ -138,6 +140,17 @@
>   # define __designated_init
>   #endif
>   
> +/*
> + * Optional: only supported since clang >= 13.0

Are you planning on petitioning for D106030 to be applied to 
release/13.x when it is merged into main? If not, this should be updated 
to 14.0.0 since that is main's current version.

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
> @@ -299,6 +312,17 @@
>    */
>   #define __must_check                    __attribute__((__warn_unused_result__))
>   
> +/*
> + * Optional: only supported since clang >= 13.0
> + *
> + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warning-function-attribute
> + */
> +#if __has_attribute(__warning__)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1847b77a-093a-ce59-5c3b-1a21d3bb66c7%40kernel.org.
