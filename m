Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVEB62EAMGQEA5L4XII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id D20173F0DB7
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:51:17 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id u8-20020a17090341c8b029012d5f2333bfsf849116ple.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:51:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629323476; cv=pass;
        d=google.com; s=arc-20160816;
        b=xINUTyO28Zqx4x891Rf/ab/teVQI3EJehJ1NUujpRV8JZ9wll8ldDQblv7zNftCCHr
         zaywzOgMWLrOLBGTiNlBIYsf08kVAD0knxMJeEcm+dnJiKS/Phl0vZVQRMrpKM2SdtLu
         pT0iBGeRcRjDA0rSQXdkfRtrhBhuQ6rrS6ECUupa/N3PnxA6HyOa3ZKgJDgeKmHGAFeE
         sLoY6FuHujffP4v6daoHzuKXPIF7nePMeXuXAjvvw1d+19dQE5ktdwDLc4hRkXqb8Ndf
         ZKS8SoPthASIiAo5mEVXwcx/a1GUgA/tP4SgdhwdfhKXaV4fgryui+PDCM3X0uJ+nRNt
         oRJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=JTLC3RZecOVA4BqVpChlHaE0nfqM2PIbHFMVOZ7CK74=;
        b=qWQ2rJQPSNWaBaVJlmX5euK6S3RuyT1B7hnxvKZeLvoUgbLLPDmjDPYuVxkyyMzxXh
         ye0V3F5EAY21nM0alpH0POV7kj7CtFSrE1CIiea8eQTKl+kD0WyQjXAcGOEJaqYsZJzG
         eEbH0tRv69uk5M5RBtuxRkMZQPYc8OfeR7J8AB3CykG0n3T71ICLOUjCBbZAFrvcppLT
         9WmYXshY69wFbOwl7LL5KRUMNLi5nkWBv6CNJGFDra64tS3PbQzcRGIvFE8W7K9UUjo8
         tcm1k42LZdYGGOcsp9QpHTLTpoyS8YuydzO+NuiQw4CklNi6Ywtd6piooC23Kc0EYmSm
         ftzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JINAHL7y;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JTLC3RZecOVA4BqVpChlHaE0nfqM2PIbHFMVOZ7CK74=;
        b=TU+wLHggDv6RwBDIircSH5cDgQyhgTs+k4Hcwk15aglP3k8duE98vTTka9fs9aUa0B
         KBb9UZ21MG+tLR6bHoTBiO+SMkUhiqaaMdp1LlCis8j9hWE1qGrEiBoOAC7uboKP0SWn
         Bjug6ZMMF6xCZsNGcyCj1T2/mHFubQ0L3FezheLfZhZlFm77C39qqjcx2yVp6MxjqIws
         K3L//cSu/MVPE5tJ8/N7NyUlmfWBmPrd1lUpoym1MKWZRMz7fyF1ZIoB91tSbcF53kla
         GjLZN/iBLhFq1j/I938vJ1/HKpr/MyYK2LT0B4ACh8v0rvCpfR+VTylguthVp5NcG/xY
         SWdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JTLC3RZecOVA4BqVpChlHaE0nfqM2PIbHFMVOZ7CK74=;
        b=eE2/rtE5zqsDNLB5acbUVE6YAFSgKbDN0CUS3TSzfK3e7H2AYwfLk5ZRSOKnDy3gaW
         AlLjPGjdIdUw7Xk9MFuDKSz0tgqTYGa7yt1Wnmhlu2EijWxRiIsRCe0iPySCBydGZEOr
         9oAtbOgafoa2IVxVnsOZ/DHR1dEh8+RrHso5eIpIobq+GqbEFKYIWcz2MFzztRilkiJc
         cG4sk+ngz/SMXZpLlIbyB81MGkuJ3n6nidtQFJXA1ptbcklmmHIZ0D0mbvb2uM2BuBWU
         cR2J9ITHBaocFr8RqvBuOM/V/s7VE4kSbC1GxflhnZ8c1vcCdjPP9xxhMFHLpDx+Jx8O
         hBsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gZ7e+5fkv1prqAmum5J/4JOXinLg67u7MK/+7wb3rFYfMdhBW
	ThoP0k6KmOMfhXoAaJTe3W4=
X-Google-Smtp-Source: ABdhPJw1DzbCZJPOO35C1l/6KAPiOyy9RT9cfhm6K727DcQNkGCIDH+UYGmR8jdZhj2WbY7z6ybZHg==
X-Received: by 2002:a17:90a:c28d:: with SMTP id f13mr11293931pjt.73.1629323476568;
        Wed, 18 Aug 2021 14:51:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:494e:: with SMTP id q14ls1644385pgs.10.gmail; Wed, 18
 Aug 2021 14:51:16 -0700 (PDT)
X-Received: by 2002:aa7:921a:0:b029:2cf:b55b:9d52 with SMTP id 26-20020aa7921a0000b02902cfb55b9d52mr11215845pfo.35.1629323475972;
        Wed, 18 Aug 2021 14:51:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629323475; cv=none;
        d=google.com; s=arc-20160816;
        b=GXrlERNUovlClfWgZfFSPwMl9Wk6qI0CE6TtfJh4tEbDsZZBNfSUkiWzsOmBCWPfoa
         F58fRUkauCDAsO3Oc3gEComwvYyaqFuXSAgyL6Kxx6LG/LNAtPFVmPX10cFHKf5d77Xt
         U1+/TvA+zU2vFDSZkgM2HvYQwyaDgul0jD4ftFA2AeL4RaJNqyLi22Tyr/9YXaKnZDri
         FDpy6kehHiJ8Aw5MdX1IEQ3IMK178ulbCQ50B9unDXTeSQ7isznT76+7N0uK1AuArqND
         fyFFVaS8HI2EmU0ie5BA2pQou45ikGWI2rIertTMy/GyFU+bD/v4jYtKScxuWgF+T55d
         gu0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=jX9JYWDySOLEuJICzAhEiPJFyrau+sfwsJZ6ftq4eWc=;
        b=Qw/Dx8HrdfL96suR4QpKc8cSWFTyyrDnWIJSNhr1twF+BbivqtgVaL8gvK9qNbpc7M
         8bnRad2wpqtnkyy01a6jWCQIIHMKAJoxp3hYL3Y3CyAKPRF+EreyxNcLyvTIuhUvtrSU
         2w0PzRVk7MBwZi/42V4RultVWjmuH76RIXpWqu6z3Wnxt2Di7UXNrTJKvdQNWq+uQHGA
         EkmZKxT7wFrG5jTpWJL8/dG9XCW4xsEGpmi7u+VJLvYcTJVRR5HAtvVDEmmpb9c4pS+c
         c620nygy+B3KCo+HcosIk5WWr+IAsF8TqgUrAzV/kaxKfE2NqnsiblZmC3DED2xsULIW
         hIUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JINAHL7y;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r7si107645pjp.0.2021.08.18.14.51.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ED6F1600D4;
	Wed, 18 Aug 2021 21:51:13 +0000 (UTC)
Subject: Re: [PATCH v2 1/7] Compiler Attributes: Add __alloc_size() for better
 bounds checking
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Joe Perches <joe@perches.com>,
 Andy Whitcroft <apw@canonical.com>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Christoph Lameter <cl@linux.com>,
 Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 Daniel Micay <danielmicay@gmail.com>, Dennis Zhou <dennis@kernel.org>,
 Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, linux-mm@kvack.org,
 linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20210818214021.2476230-1-keescook@chromium.org>
 <20210818214021.2476230-2-keescook@chromium.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <fd4e3b0b-a052-58a7-c816-f055e8404165@kernel.org>
Date: Wed, 18 Aug 2021 14:51:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210818214021.2476230-2-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JINAHL7y;       spf=pass
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

On 8/18/2021 2:40 PM, Kees Cook wrote:
> GCC and Clang can use the "alloc_size" attribute to better inform the
> results of __builtin_object_size() (for compile-time constant values).
> Clang can additionally use alloc_size to inform the results of
> __builtin_dynamic_object_size() (for run-time values).
> 
> Because GCC sees the frequent use of struct_size() as an allocator size
> argument, and notices it can return SIZE_MAX (the overflow indication),
> it complains about these call sites may overflow (since SIZE_MAX is
> greater than the default -Walloc-size-larger-than=PTRDIFF_MAX). This
> isn't helpful since we already know a SIZE_MAX will be caught at run-time
> (this was an intentional design). Instead, just disable this check as
> it is both a false positive and redundant. (Clang does not have this
> warning option.)
> 
> Cc: Miguel Ojeda <ojeda@kernel.org>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   Makefile                            | 6 +++++-
>   include/linux/compiler_attributes.h | 6 ++++++
>   2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 72f9e2b0202c..34cffcdfd5dc 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1078,9 +1078,13 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
>   # Another good warning that we'll want to enable eventually
>   KBUILD_CFLAGS += $(call cc-disable-warning, restrict)
>   
> -# Enabled with W=2, disabled by default as noisy
>   ifdef CONFIG_CC_IS_GCC
> +# Enabled with W=2, disabled by default as noisy
>   KBUILD_CFLAGS += -Wno-maybe-uninitialized
> +
> +# The allocators already balk at large sizes, so silence the compiler
> +# warnings for bounds checks involving those possible values.
> +KBUILD_CFLAGS += -Wno-alloc-size-larger-than
>   endif
>   
>   # disable invalid "can't wrap" optimizations for signed / pointers
> diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> index 67c5667f8042..203b0ac62d15 100644
> --- a/include/linux/compiler_attributes.h
> +++ b/include/linux/compiler_attributes.h
> @@ -54,6 +54,12 @@
>   #define __aligned(x)                    __attribute__((__aligned__(x)))
>   #define __aligned_largest               __attribute__((__aligned__))
>   
> +/*
> + *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-alloc_005fsize-function-attribute
> + * clang: https://clang.llvm.org/docs/AttributeReference.html#alloc-size
> + */
> +#define __alloc_size(x, ...)		__attribute__((__alloc_size__(x, ## __VA_ARGS__)))
> +
>   /*
>    * Note: users of __always_inline currently do not write "inline" themselves,
>    * which seems to be required by gcc to apply the attribute according
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fd4e3b0b-a052-58a7-c816-f055e8404165%40kernel.org.
