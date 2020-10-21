Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNFAYL6AKGQEHAQEAUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 08976295315
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 21:47:02 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id x125sf3374229yba.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 12:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603309621; cv=pass;
        d=google.com; s=arc-20160816;
        b=EtlGAHwRTPks/J1pBRSz4W/FasxXHz7eTTV+ibonkybJfhwDFI7qBgB9PGlqnRO/Pg
         Io3Ee4YmCrRMSaAYhxi39FN8taJuY+elTN55JOkGJyIxqRlOsHPVndfh+WYIJuKTbZQA
         YlqSvoUxMlv5ekachQteFajDgdz3E2uor1Sc3MvHDgo+TL7O7rc7JsxTHlihBywnqtz/
         Km3oFDv+sGpP++3m+F2mwmmTyqlX92nS6JRunA0XfNqAGlUc/K0c2wXYY08m2KzcUc8z
         nJcda/N5+z2cyQyyMRAo5n1mt+y6b1nb52MMtjZE2SLxeOdS0hVODf0072eqspVnNJD7
         Vhpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4aMiVYprD+w5FHfNSSfGWpu4CO+cAWtrXgD9UIfUUOA=;
        b=NL7XJX+ZegHAJYYTcAXVwfNtE1E0HDF0alfuYhmve47ylzJ3YLGDXnl4GBCQWnO2wo
         AkcSaTopxqPB98efeHPmcNo9yMitziH9Y6VZYP1WbxnQzdEf+Fds43rZAE3AT+TFs/0i
         1e5uQrE+jFbfYAeZq+lvwPw4fJ39bLDTtUqTSr7Sg9T4HAUMSTi/PJLSGAdp5BrUpI/Z
         RRjpBH65N0fo6Vm+BUlnPQPWicTG5onOrHumINBf3YNjMnu+iXnEP9ltYP+mQxj5qfci
         8ATxQy3fvvzpScwk+Vyf1bpr/MTFC8gE52XSHd1KtSFJUdqvlanBUnuU9pzmEWg6v4DS
         SKQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NvPfieXt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4aMiVYprD+w5FHfNSSfGWpu4CO+cAWtrXgD9UIfUUOA=;
        b=iB9SQCr9s/tCCRqrL04PgZG98vb4ekB6HgLTfY7mdhV4nTCqhQ2L9IXFM3iH0TyByC
         QYsl4FiEoxjrbS+K47/R0MO3RMxZl8kHhfX9GChmytoRjuS8+cjpKtyan3sP3xwVGuOL
         iuhy8GHnJgsO1vwXHTXkHIaCi48J9fQC2rWIUC6YnQ3UbgRddmBOM9QzpKWJL25Hg9F6
         kA2P1ap/zyhGi4EVGrXhQXd2TWjQHytDO0pO+Amue0dfHOjqOtB7B+DAkNV18lAg3sqQ
         ja70N4DMewzdPSgtl9OyZL8W8SBIUBfrY82CkkuoYFsEcoV+Wml9ltgXAvFOP/G3GvG9
         Hp6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4aMiVYprD+w5FHfNSSfGWpu4CO+cAWtrXgD9UIfUUOA=;
        b=PUt4vec8lBffHs754Pwa6ZlNkd1xdftC0zfcy0CW+uN5GABGkhsQ5sYY/RGLUmN7t4
         JLZQKIUjgqMj/yMPyChzW8V6Il0lnNapwDRej+jiwzjkgUEw1UyBcJeGU8+yxwpbfabN
         nsi5vLsX5anWVo7ByvBoDzj3bTyI0i/dVA18mGVOs6kcGz8hTuF8MX0yPha296wMvmjw
         QOhb60G7OadV6jb5B9uR+vrsBxjM/M4NTFUG6Wd3QAkiklX369DhEEtVt0Lzco3g3+wO
         5+DI1IVvnMAGn6ol2ut8QJowF2Mxj7TN9w9HNYFZ23AWxxqg2DP9RC42yAojhjlHleYm
         75Iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319U5JxIdZO4fxE6kPFQcPuI7zoaqp5+d0PMHRtyFDQ8H4bspmF
	zJVlmCb/i+lCvIj4ZoLM2hw=
X-Google-Smtp-Source: ABdhPJyj5uAMOUGMvBtnXlabtNj5TwPcxUkfunVIC0QsB8kKXav1hs+6BUCFYojce1W79nmPcFxprQ==
X-Received: by 2002:a25:a1a9:: with SMTP id a38mr8534762ybi.330.1603309620841;
        Wed, 21 Oct 2020 12:47:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:700b:: with SMTP id l11ls550586ybc.5.gmail; Wed, 21 Oct
 2020 12:47:00 -0700 (PDT)
X-Received: by 2002:a25:2846:: with SMTP id o67mr8150233ybo.164.1603309620352;
        Wed, 21 Oct 2020 12:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603309620; cv=none;
        d=google.com; s=arc-20160816;
        b=0IeERHA24mVOnFenWFBQT5tBk2jW5ZEavP4zqG8GIfkT6l4444+88r8udvLihaYVCJ
         RrnD2xcQGdsiFtbmmbfh9F3kb6TNE3L66njjnA5kxv7OW6HWS3TKCE9hURqIq5Mmrm0k
         0zNFAGrzcnqdJs2iMkyKwfRJAWv/gX7X7s/mrx0W/aCR99bsbTJNGQsiBxFgAIUZjOXg
         OnF3BT8nu961hvPkiYOHsQBjjjEWREKr8xBYiM9Y+mZi4NbeqWDu6z2YnRfS2qLp8CvM
         hUaRfGGggMRpK4k5eE7KANCsPUd7nawZneYpmX/y573izJdxE5BYyAEe0yZzNAc/RN/c
         s8AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=d/NkYNlV7YyPAwyamSxhvGsJXxfXBxApaHqL2+qSD24=;
        b=hdC9yIrT5NWI5UHUJHabv5xlyVSfONgVXY7s16XrfoNyjcToVTJpruFj3TFbXLiTOk
         ueM42JGuy/chuE3CdcmBsi4xF5JaGPzcOIsS87GRdOBsh5lOskDMlqFaVAuwDBdGeoiu
         1pPuhKVy+KiWOzERCCcAQjiBYPCu3YzPNz95zC5BJ9GF0sij279E+/+4no2rnj1Ofy6V
         cjjf5WpKI5sw/NYHPlCVxR/u8gDS0syV545QGgGfBPUJ9EB8InKN/7SCINEHIBI+B2qc
         MdiaTMzgrRcXws7Zn9rB+9UGOnQLdG7U42X5UF0WhXjkdwkI+xnGiC5n77MAOwENfAu0
         9RLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NvPfieXt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id r8si221400ybl.1.2020.10.21.12.47.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 12:47:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id t18so1775235plo.1
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 12:47:00 -0700 (PDT)
X-Received: by 2002:a17:902:b18f:b029:d5:e3d3:9b87 with SMTP id s15-20020a170902b18fb02900d5e3d39b87mr5472545plr.78.1603309619481;
        Wed, 21 Oct 2020 12:46:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s77sm3029324pfc.164.2020.10.21.12.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 12:46:58 -0700 (PDT)
Date: Wed, 21 Oct 2020 12:46:57 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
Message-ID: <202010211239.2A67F44BB@keescook>
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201014212631.207844-1-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NvPfieXt;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

On Wed, Oct 14, 2020 at 05:26:31PM -0400, Arvind Sankar wrote:
> Commit
>   815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> 
> neglected to copy barrier_data() from compiler-gcc.h into
> compiler-clang.h. The definition in compiler-gcc.h was really to work
> around clang's more aggressive optimization, so this broke
> barrier_data() on clang, and consequently memzero_explicit() as well.
> 
> For example, this results in at least the memzero_explicit() call in
> lib/crypto/sha256.c:sha256_transform() being optimized away by clang.
> 
> Fix this by moving the definition of barrier_data() into compiler.h.
> 
> Also move the gcc/clang definition of barrier() into compiler.h,
> __memory_barrier() is icc-specific (and barrier() is already defined
> using it in compiler-intel.h) and doesn't belong in compiler.h.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")

Yeowch.

Cc: stable@vger.kernel.org
Reviewed-by: Kees Cook <keescook@chromium.org>

Nick just mentioned this to me; I hadn't had a chance to read it yet. This
needs to go to Linus ASAP; memzero_explicit() under Clang in v4.19 and
later isn't so explicit. :(

Andrew, Linus, can one of you pick this up please?

As Nick mentioned, sorting out the specifics of the comments[1] can
come later.

[1] https://lore.kernel.org/lkml/CAKwvOdkLvxeYeBh7Kx0gw7JPktPH8A4DomJTidUqA0jRQTR0FA@mail.gmail.com/

> ---
>  include/linux/compiler-clang.h |  6 ------
>  include/linux/compiler-gcc.h   | 19 -------------------
>  include/linux/compiler.h       | 18 ++++++++++++++++--
>  3 files changed, 16 insertions(+), 27 deletions(-)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index cee0c728d39a..04c0a5a717f7 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -52,12 +52,6 @@
>  #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
>  #endif
>  
> -/* The following are for compatibility with GCC, from compiler-gcc.h,
> - * and may be redefined here because they should not be shared with other
> - * compilers, like ICC.
> - */
> -#define barrier() __asm__ __volatile__("" : : : "memory")
> -
>  #if __has_feature(shadow_call_stack)
>  # define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
>  #endif
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 7a3769040d7d..fda30ffb037b 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -15,25 +15,6 @@
>  # error Sorry, your compiler is too old - please upgrade it.
>  #endif
>  
> -/* Optimization barrier */
> -
> -/* The "volatile" is due to gcc bugs */
> -#define barrier() __asm__ __volatile__("": : :"memory")
> -/*
> - * This version is i.e. to prevent dead stores elimination on @ptr
> - * where gcc and llvm may behave differently when otherwise using
> - * normal barrier(): while gcc behavior gets along with a normal
> - * barrier(), llvm needs an explicit input variable to be assumed
> - * clobbered. The issue is as follows: while the inline asm might
> - * access any memory it wants, the compiler could have fit all of
> - * @ptr into memory registers instead, and since @ptr never escaped
> - * from that, it proved that the inline asm wasn't touching any of
> - * it. This version works well with both compilers, i.e. we're telling
> - * the compiler that the inline asm absolutely may see the contents
> - * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> - */
> -#define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
> -
>  /*
>   * This macro obfuscates arithmetic on a variable address so that gcc
>   * shouldn't recognize the original var, and make assumptions about it.
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 92ef163a7479..dfba70b2644f 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -80,11 +80,25 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>  
>  /* Optimization barrier */
>  #ifndef barrier
> -# define barrier() __memory_barrier()
> +/* The "volatile" is due to gcc bugs */
> +# define barrier() __asm__ __volatile__("": : :"memory")
>  #endif
>  
>  #ifndef barrier_data
> -# define barrier_data(ptr) barrier()
> +/*
> + * This version is i.e. to prevent dead stores elimination on @ptr
> + * where gcc and llvm may behave differently when otherwise using
> + * normal barrier(): while gcc behavior gets along with a normal
> + * barrier(), llvm needs an explicit input variable to be assumed
> + * clobbered. The issue is as follows: while the inline asm might
> + * access any memory it wants, the compiler could have fit all of
> + * @ptr into memory registers instead, and since @ptr never escaped
> + * from that, it proved that the inline asm wasn't touching any of
> + * it. This version works well with both compilers, i.e. we're telling
> + * the compiler that the inline asm absolutely may see the contents
> + * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> + */
> +# define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
>  #endif
>  
>  /* workaround for GCC PR82365 if needed */
> -- 
> 2.26.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010211239.2A67F44BB%40keescook.
