Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBEX7TH3AKGQEDEQEIKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE871DCDCF
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:18:12 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id t24sf3118718otl.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:18:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590067091; cv=pass;
        d=google.com; s=arc-20160816;
        b=d9EwsRjzpgVGzoRxpLRWrfyzYzvlIRdbFgm6ByYaUy9lH0Sek84/VqpS20gYwExY5T
         dXx9LJiFuWo1o3iv4bJ/IQ9W7sQ4K7TCv/UaXIA4qd3QR6TguvAP7cXpLmkdb6PHzrRl
         Tzr/iAMGNiflGxDdugBPG78V0pGEI797eeTNV+f5Y6Xf76Gjg8riIW1M/g8omRjSt1+z
         LzjjFE/sosE/veIUcFtiO3Z7WfMPd2otWFa7PjDiFnPVf9OUTrkBJc98wZOesw6WjI8/
         Ub7REbUjRf0yZCwYK4cAHdALc7LxXxocAfivP0hAkQlrXVVvSfFJDAPwKWpU5klErNB8
         w1Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vFIPsdHDG++7SOj4F7RVPQECUcLbRIgm7+mAg90Y52U=;
        b=rtJRvO0NDVmZEKyJKGv/eSMdn17BtUihjsTgToqiKd/PCwssYjl+1caPX/4l/6CQL+
         xGenIBCJenSyJ2B4fm0/D0rExCPFSGrRedZfm6HbuqDWL9YusMUMevBSmm7sMCi3KKBP
         0Am1wyCMns3hkKUyEBSBHApS4eJr60GkTBW2cz5afEtC9oklRKBP2wEZbaT0WBQEZ+Lf
         o8ctr9d6xMnipuIJJ3FBV/CptEvPLSv9DBii36B/i6hLMFaPFgokmvJ0iueFV6kZF0aj
         j0kZ1SY7Nk7KwLPrNtTKQgmgUV7mqaXLvlrpIJZHBboEzYXlHpJXi0RbSckt7d2vfww/
         S/VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MM5SHFs0;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vFIPsdHDG++7SOj4F7RVPQECUcLbRIgm7+mAg90Y52U=;
        b=sxo/pHNBF/220ao0Fu9YFHTxP10US/YFQkxLXOXCBqx92EJ0JKyCnLH879CgTjt3UJ
         VxJAiZJZgDrjM0VWA26JGPHnWxqGCiu6iz6Uhkw0ZK7SFPt2jN4NpCIXiLrTQP/vNDnA
         qItfRivrhP1q+Z7nMrcRiGHFFafluSTZBEFFbZ6ej0XQBzfuuU0+XkPMMW4IJYqIFki+
         OFcRhZYYErsJledIT442vi0qkXHqpLI4TK5teMyD84C8OfTMvjtA1t2DVa7hRrjjiy25
         ZeFq/3to3gCp6bpCQhmwbBstYFscL/ZZeLkLPct9HYT7IHtZfFtnYrGmQg5ldhpcxq0p
         TS5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vFIPsdHDG++7SOj4F7RVPQECUcLbRIgm7+mAg90Y52U=;
        b=sIjons5BiWaeO5NsbuxMwEq7JOp5zD3z6TTQjWASD0WE3JVCz++giOZhy6sNoqjP8N
         QkC6NbTkJpboa2lPjzT9Ikgoc7/JWWT8KWZZtdR/w3ujMA5tZ8BANiFJZ15x+xM9sEKE
         cqPKBhy/Cutgt4hVNvWL/0THK0P5v+C+o0ghTf0K6B9umBttNgbKII9fhfuHD8I9u1mw
         ZcrSRi86+mh5fFMH91dD5vxFDKdgQHX8GKwSfhQc/tNxMEh7315AqSSG4MhrWkEAiaQb
         bAANb8k5wQZ8oYiHs2zARwWl8rsUjjSnyZCOKgcRbV5VEtT7IFGwpL4k6U19K9zXHB79
         z0Xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s61YYmpXQvRan5tn7hf4O7N/amM8yASXUvOkOMdFkc63HS9rF
	D+7iQ+jYnBorHvj9F6xKyoc=
X-Google-Smtp-Source: ABdhPJx9wOlqD7crJoax7Tl8Mtx0L7yBBkiaOhE/0DKQlZQEXJuWIum0af4E5TDSkZ1v6lEiRbWAWg==
X-Received: by 2002:a9d:6b16:: with SMTP id g22mr7065497otp.356.1590067091023;
        Thu, 21 May 2020 06:18:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c34:: with SMTP id f20ls451669ote.1.gmail; Thu, 21
 May 2020 06:18:10 -0700 (PDT)
X-Received: by 2002:a9d:4689:: with SMTP id z9mr2554070ote.266.1590067090570;
        Thu, 21 May 2020 06:18:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590067090; cv=none;
        d=google.com; s=arc-20160816;
        b=SEbXdETnFOGCwA0mwsSz6+j6n8ii2NXzZFXhj3ykrNBI6Rc4Obfq6RfoAFncISSetL
         ZmdxkB7eN4tE2gyEKNqLk+kNnW+3c/PQ252w1XvzwH+ZnN/AqxBO9TmZ8HCI/e3cAbJe
         PvGe7NNFKqO8/CpAe9e4iqF6AIT7vT3we2EyZyrpIKZ8UKzpdiwprZxHkLstGoi68ip6
         7cJkCqgL4Uufw+LaVTWgEKMfOV6ZZRTA+h5+O7zkoZxIaj95r9ac7BHfRgD5j0ZGxIYS
         2ZQczCO/k+1MOczimw4Wcl2QJehgaxeHFyuR2o/c5w+A2StgpzCdUsZam3Awu/grrhGb
         3p0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SkkhyRh2GOF9j3JhBd/woc8MU/INH88dpxNU85NcE7E=;
        b=taiOKvRsvvVlWi20OLZW1GYmcn12Jh1E1nZ3Vv09iLgvGfwNidhpxRpXKh61oKxgFI
         L4AUpatpA1xJyHgMl+lA8YYJZA8jBl7H8gBzvNkvr9edhB3VwobA4F/Xml21e/G+6JsH
         hqG0JLzaBcTRVRLbAzjcZXS9PiR56B26K8/ypQtHV3h0CUN66feIiB1K0uuOh0lnbdEF
         LoQTCtWdq26EutVtgvR531PZarLslyUluZL7uDypZbLaBxN+nfP9fim9cT+YrfO221np
         TD5vRNbArRcE4ZZjgxtOzuRxno+mO7S2vq8owUSQ9f6L5DNtZlbM57HK8LDBRq5/ipRL
         bJMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MM5SHFs0;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f197si433346oob.1.2020.05.21.06.18.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 06:18:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B8A6B206B6;
	Thu, 21 May 2020 13:18:07 +0000 (UTC)
Date: Thu, 21 May 2020 14:18:04 +0100
From: Will Deacon <will@kernel.org>
To: Marco Elver <elver@google.com>
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com,
	andreyknvl@google.com, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	bp@alien8.de
Subject: Re: [PATCH -tip v2 03/11] kcsan: Support distinguishing volatile
 accesses
Message-ID: <20200521131803.GA6608@willie-the-truck>
References: <20200521110854.114437-1-elver@google.com>
 <20200521110854.114437-4-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200521110854.114437-4-elver@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MM5SHFs0;       spf=pass
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

On Thu, May 21, 2020 at 01:08:46PM +0200, Marco Elver wrote:
> In the kernel, volatile is used in various concurrent context, whether
> in low-level synchronization primitives or for legacy reasons. If
> supported by the compiler, we will assume that aligned volatile accesses
> up to sizeof(long long) (matching compiletime_assert_rwonce_type()) are
> atomic.
> 
> Recent versions Clang [1] (GCC tentative [2]) can instrument volatile
> accesses differently. Add the option (required) to enable the
> instrumentation, and provide the necessary runtime functions. None of
> the updated compilers are widely available yet (Clang 11 will be the
> first release to support the feature).
> 
> [1] https://github.com/llvm/llvm-project/commit/5a2c31116f412c3b6888be361137efd705e05814
> [2] https://gcc.gnu.org/pipermail/gcc-patches/2020-April/544452.html
> 
> This patch allows removing any explicit checks in primitives such as
> READ_ONCE() and WRITE_ONCE().
> 
> Signed-off-by: Marco Elver <elver@google.com>
> ---
> v2:
> * Reword Makefile comment.
> ---
>  kernel/kcsan/core.c    | 43 ++++++++++++++++++++++++++++++++++++++++++
>  scripts/Makefile.kcsan |  5 ++++-
>  2 files changed, 47 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/kcsan/core.c b/kernel/kcsan/core.c
> index a73a66cf79df..15f67949d11e 100644
> --- a/kernel/kcsan/core.c
> +++ b/kernel/kcsan/core.c
> @@ -789,6 +789,49 @@ void __tsan_write_range(void *ptr, size_t size)
>  }
>  EXPORT_SYMBOL(__tsan_write_range);
>  
> +/*
> + * Use of explicit volatile is generally disallowed [1], however, volatile is
> + * still used in various concurrent context, whether in low-level
> + * synchronization primitives or for legacy reasons.
> + * [1] https://lwn.net/Articles/233479/
> + *
> + * We only consider volatile accesses atomic if they are aligned and would pass
> + * the size-check of compiletime_assert_rwonce_type().
> + */
> +#define DEFINE_TSAN_VOLATILE_READ_WRITE(size)                                  \
> +	void __tsan_volatile_read##size(void *ptr)                             \
> +	{                                                                      \
> +		const bool is_atomic = size <= sizeof(long long) &&            \
> +				       IS_ALIGNED((unsigned long)ptr, size);   \
> +		if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
> +			return;                                                \
> +		check_access(ptr, size, is_atomic ? KCSAN_ACCESS_ATOMIC : 0);  \
> +	}                                                                      \
> +	EXPORT_SYMBOL(__tsan_volatile_read##size);                             \
> +	void __tsan_unaligned_volatile_read##size(void *ptr)                   \
> +		__alias(__tsan_volatile_read##size);                           \
> +	EXPORT_SYMBOL(__tsan_unaligned_volatile_read##size);                   \
> +	void __tsan_volatile_write##size(void *ptr)                            \
> +	{                                                                      \
> +		const bool is_atomic = size <= sizeof(long long) &&            \
> +				       IS_ALIGNED((unsigned long)ptr, size);   \
> +		if (IS_ENABLED(CONFIG_KCSAN_IGNORE_ATOMICS) && is_atomic)      \
> +			return;                                                \
> +		check_access(ptr, size,                                        \
> +			     KCSAN_ACCESS_WRITE |                              \
> +				     (is_atomic ? KCSAN_ACCESS_ATOMIC : 0));   \
> +	}                                                                      \
> +	EXPORT_SYMBOL(__tsan_volatile_write##size);                            \
> +	void __tsan_unaligned_volatile_write##size(void *ptr)                  \
> +		__alias(__tsan_volatile_write##size);                          \
> +	EXPORT_SYMBOL(__tsan_unaligned_volatile_write##size)
> +
> +DEFINE_TSAN_VOLATILE_READ_WRITE(1);
> +DEFINE_TSAN_VOLATILE_READ_WRITE(2);
> +DEFINE_TSAN_VOLATILE_READ_WRITE(4);
> +DEFINE_TSAN_VOLATILE_READ_WRITE(8);
> +DEFINE_TSAN_VOLATILE_READ_WRITE(16);

Having a 16-byte case seems a bit weird to me, but I guess clang needs this
for some reason?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521131803.GA6608%40willie-the-truck.
