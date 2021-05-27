Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF7SX6CQMGQEF2YSYAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ACA3936B6
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 21:55:04 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id s3-20020a92c5c30000b02901bc737e231esf976693ilt.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 12:55:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622145304; cv=pass;
        d=google.com; s=arc-20160816;
        b=EO9eT98dwf/S1xxmPABkM9de0e5LyJQktnvmvO9y2dcGTuTiECYsQDugZuD3UprUog
         g5IoJ/nT7pmgw0oYMx9Gp3uiuWCclHnOKmE/FlgxIImsuqPYZ0mBTNlHRwE7jEI2Erjz
         U0Qs9BOUaqkw2sun3DcN1cw7scUevkasoUNnh6tokP0Yrgr4S/3l+zbIl5YwZn3gneR2
         xtNA5J3AQfEP18M0gN9dihbj/xc0UrCps4ZQHmw74+VV4HvWiAb+oipj0H7v1mhX6Otz
         HDegWAVxS5qTk4EsiIKqeIhdD6SBxcjnCRzc64LZC73eGQGPEOTqL55pyAY2ckwZbG4L
         p5sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=1SEpHLO5BLDnhHGoCiSv+7pffI/v0FcdBHVLonCk3dY=;
        b=c4ZWfdXaZcE0cd5pzo4uFsqgX/NLQwHCp2ylKHoHarGqyaHTY8GNruF5chQ4nhBm6D
         iVT2l0IpOdc67qomGl9uuNBdaYEbUxIKjKRaSJzYNVInBUnuZmC9dUuS0T56hV54TRDX
         CYy3KeK8MN0z9C3382N2cf5rZoX456ryY6koFbZIg9gO+VlyjCkvEIGrV2oYFoPetZa4
         ds+dY/J+5GMqiu6uVHEcuwl+m/r1IUHodCsWbHyQzUYmC0lWLye/0JQPbE9vJ9/mD/Et
         nM4Xn8SmORAkFVD+7uIFG88G5EahH4KljL6EOXJCpC+pQlGCSLtZjyWVgLcfh+hEBJwb
         Rh/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ai3g7nGL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1SEpHLO5BLDnhHGoCiSv+7pffI/v0FcdBHVLonCk3dY=;
        b=A9uWYw81FVXEL0i4jPElTl0VC2u5syERNun+r0FVO+yAxpnMMhULjqw5Kp1q6BSbqU
         wiUpp72xnUeynHpl+rNrMQbhDDALs/OQKxY0drhOrkPaq4qaV5iAuHh/oDX3xd2HYJjI
         x8eAavVwsNDiRGp5Xm/MT+3HdTSQyrUzI9z/HJ2zOX1xSJtfCyxk/MWnOhuGHCHCqugK
         3qgg4gHBmlfwtdfV3hl2xsgyTi0oD447WXiiQjwMjjOdjfDrdNfMifLtIKXqVLkqRCP6
         NGqzDuUGK4lklx8US97VXB3jMcaRWs1PdnHl8IGlrZQhEaq+UnHQPvEiX4sTOqL2Xqfn
         jfzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1SEpHLO5BLDnhHGoCiSv+7pffI/v0FcdBHVLonCk3dY=;
        b=Apwm/IqBiP1g07jilgV6gZk0lYHw2+RHW1yJwZl9J0BCj/GLg8qV97dwheoxX9+kpK
         cJoon+sR/5m3dSCQ+TpB6zbKwSuJ+ApSem0dyYx3bFYLIWMO8NxoQV5lmn4mVoClcvnM
         m5F7gnRY6W59q+vrKYW/MB7J8UnHFXCeDoYw5USXU3lNmupcNB7IWmVQSBqAmU1CcYZV
         zFkOFuV/l1T2BTxOcpZ2R0DeXtg9ILXTVhsLqFZ3de9Ypyja7g2pyp1r4inpLM7codlP
         1fjapBkL61o+mPOBDoafK7KSqB90F/IDRfFVA/Kjpxe3d1t0rKNf3fdOy1eoxg1mv+EH
         ycIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rG81noe4OXD2MPEAwpPcNEVwvif/8/OIdrjdp2sRuTf4zqDhD
	Q4dD3Y0I719G/tnIvnYQfzc=
X-Google-Smtp-Source: ABdhPJzwkcKLlsNx8f+2tP9OW5QAchNx0iQvW8qxRPdFFdahYTHVgc92zUyZ1tzwjynjjaflQSuY6g==
X-Received: by 2002:a05:6e02:190f:: with SMTP id w15mr4408565ilu.13.1622145303804;
        Thu, 27 May 2021 12:55:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3895:: with SMTP id b21ls617933jav.8.gmail; Thu, 27
 May 2021 12:55:03 -0700 (PDT)
X-Received: by 2002:a02:a409:: with SMTP id c9mr4986041jal.43.1622145303352;
        Thu, 27 May 2021 12:55:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622145303; cv=none;
        d=google.com; s=arc-20160816;
        b=etfU5uxm3DYPJwQZ8MaedSsEV2ALKY8AVx8b7ZJVx2xKz+IUDH+pC2JMvjao7yfDXx
         3LwH3npUjOov23mx3XrsP2SQEjLa/mpL7t4xtNOtMYLC2cLoaZ1X/ILnKjkie4WoEtMA
         Flr+xfYzPhSxE0zdCqXFrTRk1CQJdNyqHNTzU/hOf11Og+0RW31z+GYw8iqzJP2As7aJ
         veZasF339gl1DUVB2zk7YrUgcIy+yScW0/GepuT8zNaunY+T78WSdcj95NmFf44+ln6C
         DjBH9d5cvC2KNEbulbR91L5PIEEWerfTzPVSGp9fiVpzHa/kcIpPoImYODEGGObOQpuw
         EN0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=SIGMVnTBIspCPVoYI6kntLfi6ga7bBpq4sXkRqi5sY4=;
        b=ND2AciakNBBsn+XGZ5wEvktITXNn5l3kLHudY8Uyiv8ZdV8tSO1FEOSX9Gzzk1BpSD
         MISNUNRnB06aJO66+cvVnSo7RPjHBx9mcZ4UrElwnGZkYw4MausRiLL+hBwCGBBuNUS2
         ksBQhk6dtFRYM1tYXM/31YX87PjEkYKCY92ORj3YuIf+qlE81n/DTAcRjvbP5We8yGJ9
         QdZI87NUafKWnyz7GSbt6048eHFBvj5k5s2uD2C/RGFiVYKUW4fhyTyxGv/DLuWZZuq5
         AE7S7hZvYWpNBN1ssR5vmtPVmETemctlUaFYM7KgN27eUkkQuvOM7ikhXMuhZMdw7Iqm
         yH7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ai3g7nGL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si347007ilg.2.2021.05.27.12.55.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 May 2021 12:55:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 29C6D613BF;
	Thu, 27 May 2021 19:55:01 +0000 (UTC)
Subject: Re: [PATCH v3] kcov: add __no_sanitize_coverage to fix noinstr for
 all architectures
To: Marco Elver <elver@google.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, ndesaulniers@google.com, ojeda@kernel.org,
 keescook@chromium.org, peterz@infradead.org, will@kernel.org,
 nivedita@alum.mit.edu, luc.vanoostenryck@gmail.com, masahiroy@kernel.org,
 samitolvanen@google.com, arnd@arndb.de, clang-built-linux@googlegroups.com,
 Dmitry Vyukov <dvyukov@google.com>, Mark Rutland <mark.rutland@arm.com>,
 kasan-dev@googlegroups.com
References: <20210527194448.3470080-1-elver@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <be3971b1-cf26-36c7-0f9c-d79c656ec855@kernel.org>
Date: Thu, 27 May 2021 12:55:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210527194448.3470080-1-elver@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ai3g7nGL;       spf=pass
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

On 5/27/2021 12:44 PM, Marco Elver wrote:
> Until now no compiler supported an attribute to disable coverage
> instrumentation as used by KCOV.
> 
> To work around this limitation on x86, noinstr functions have their
> coverage instrumentation turned into nops by objtool. However, this
> solution doesn't scale automatically to other architectures, such as
> arm64, which are migrating to use the generic entry code.
> 
> Clang [1] and GCC [2] have added support for the attribute recently.
> [1] https://github.com/llvm/llvm-project/commit/280333021e9550d80f5c1152a34e33e81df1e178
> [2] https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=cec4d4a6782c9bd8d071839c50a239c49caca689
> The changes will appear in Clang 13 and GCC 12.
> 
> Add __no_sanitize_coverage for both compilers, and add it to noinstr.
> 
> Note: In the Clang case, __has_feature(coverage_sanitizer) is only true
> if the feature is enabled, and therefore we do not require an additional
> defined(CONFIG_KCOV) (like in the GCC case where __has_attribute(..) is
> always true) to avoid adding redundant attributes to functions if KCOV
> is off. That being said, compilers that support the attribute will not
> generate errors/warnings if the attribute is redundantly used; however,
> where possible let's avoid it as it reduces preprocessed code size and
> associated compile-time overheads.
> 
> Signed-off-by: Marco Elver <elver@google.com>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> v3:
> * Add comment explaining __has_feature() in Clang.
> * Add Miguel's Reviewed-by.
> 
> v2:
> * Implement __has_feature(coverage_sanitizer) in Clang
>    (https://reviews.llvm.org/D103159) and use instead of version check.
> * Add Peter's Ack.
> ---
>   include/linux/compiler-clang.h | 17 +++++++++++++++++
>   include/linux/compiler-gcc.h   |  6 ++++++
>   include/linux/compiler_types.h |  2 +-
>   3 files changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index adbe76b203e2..49b0ac8b6fd3 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -13,6 +13,12 @@
>   /* all clang versions usable with the kernel support KASAN ABI version 5 */
>   #define KASAN_ABI_VERSION 5
>   
> +/*
> + * Note: Checking __has_feature(*_sanitizer) is only true if the feature is
> + * enabled. Therefore it is not required to additionally check defined(CONFIG_*)
> + * to avoid adding redundant attributes in other configurations.
> + */
> +
>   #if __has_feature(address_sanitizer) || __has_feature(hwaddress_sanitizer)
>   /* Emulate GCC's __SANITIZE_ADDRESS__ flag */
>   #define __SANITIZE_ADDRESS__
> @@ -45,6 +51,17 @@
>   #define __no_sanitize_undefined
>   #endif
>   
> +/*
> + * Support for __has_feature(coverage_sanitizer) was added in Clang 13 together
> + * with no_sanitize("coverage"). Prior versions of Clang support coverage
> + * instrumentation, but cannot be queried for support by the preprocessor.
> + */
> +#if __has_feature(coverage_sanitizer)
> +#define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
> +#else
> +#define __no_sanitize_coverage
> +#endif
> +
>   /*
>    * Not all versions of clang implement the type-generic versions
>    * of the builtin overflow checkers. Fortunately, clang implements
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 5d97ef738a57..cb9217fc60af 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -122,6 +122,12 @@
>   #define __no_sanitize_undefined
>   #endif
>   
> +#if defined(CONFIG_KCOV) && __has_attribute(__no_sanitize_coverage__)
> +#define __no_sanitize_coverage __attribute__((no_sanitize_coverage))
> +#else
> +#define __no_sanitize_coverage
> +#endif
> +
>   #if GCC_VERSION >= 50100
>   #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
>   #endif
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index d29bda7f6ebd..cc2bee7f0977 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -210,7 +210,7 @@ struct ftrace_likely_data {
>   /* Section for code which can't be instrumented at all */
>   #define noinstr								\
>   	noinline notrace __attribute((__section__(".noinstr.text")))	\
> -	__no_kcsan __no_sanitize_address
> +	__no_kcsan __no_sanitize_address __no_sanitize_coverage
>   
>   #endif /* __KERNEL__ */
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/be3971b1-cf26-36c7-0f9c-d79c656ec855%40kernel.org.
