Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNEX6WEAMGQEJEG5T6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBB23F0AC3
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 20:04:38 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id w23-20020a170902d71700b0012d8286e44bsf781934ply.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:04:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629309877; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y8Zw516utSaMo2q4Gu+zk6hUvVj/6T2rCc7KaM+NL6qrfsI+DurzlESe/U9UD6tbFy
         qhpDze8O5Egj5kz2Ep1eh8QFK7N7G3XSzWyuB66/fwa/wVtsiScq4TFNizJjronoYT2A
         2ijlobPVpZY5XH90+0gwHZumvWwYm4F/fvK44lId8tIiO8LjpyUHn+N68OrZxztBYFc5
         LVvmXtyLzT4v9jkNYzjCMslBcPjHVt6LU80kfDQWApz5iHCp9ZnVwH/NHHuh35o3Hh5f
         ViGEhsSYRK175PLTcZosykOYu1HnBBUEE1wYXS9UPrymF/jtOxapMfO6L37VfuebRF99
         fJOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=LJiyyswnqhBCl9el2rdKJ6VhlJr/Q7D5GTlakltaNZU=;
        b=ca60TYxuT7gXbgp769Jld8CpIRYKUQyDkXri2TmQybaaX2n8kTLg0iZfn12C7p5whI
         9WOBN5vRvXuqNvrDoSeeIvMeAkYN3oQxrsU5kTsClmzc2o5N+tSE8sOxapZ+jpB7zxno
         SNmTaO7MoDDS+K+uVhDb/JRroCW7diXvF/3yoA4/FAZwCChmza42uPG7xoRMqIswdjbo
         HxBcopIwI28LD9B4OGX0ZzfXNMcYqv6sD4Hyi9i1VT1WxTjay1sq9Er3d95LsK4tHFgI
         fVSEi5bqRrZGKzlKt25IwWS9XJxbuHP4qWaz8fnN20lJjlAYHW+FJVdmXyxLT17jzeQt
         pAwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lNP3DJKa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LJiyyswnqhBCl9el2rdKJ6VhlJr/Q7D5GTlakltaNZU=;
        b=bqzJv9012R/TiiDPkLDhwFAXQSyTvTya2oGWBy0GpaJcENfTauaK56/xPU8PCQFVEn
         613xoGhewb0J6WpSoLC0cLjob+utuNFeiaEFfVJrEGS2uO/5gwhcSn636IqwLqHYdZ70
         0eU9H2kjxwRKzfi2CVKGtMoN23gH8sY4YPFQATxaF6eFybC0kNePcyEUmN+TzzF5LWKx
         JT/RWqHBGU7Kgvzhqv4O/t2WkW4khLH/7hukXly9SaL/E+L7EgBE96ntn90IbveE7lb/
         T0CfGkvo0waul6RNIVd7Xg0XYIfaHXBd+1xhhZmiOAgICUCZjYeOQzTuGt73I6xZl1p2
         DK+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LJiyyswnqhBCl9el2rdKJ6VhlJr/Q7D5GTlakltaNZU=;
        b=KiEeW0he+McCe2fy9g0LdYyroNw6rHARdWVA6GFw4EjC5+6wD3U6Ey8K9fbJWP3mpj
         8qeqjLDEzP4Kc7mVZzdQfudG66lGEUkRi0ZIhAlt+CzIKP6McaveDlFiV1emKkNiC+XA
         UrTm9k/mAByC1Ng4f1jzZ3be3gjRvzDNVl82E1OUxlZ4X/ZAUeFcbTjpbWrgAhQwzqso
         jn9X2UAx3SNx1e7ojMoWcjZQ7Op8tpvJz7LjPWgs44VLwwKLuJT6VtKDm1B9++J1XBYA
         5cnD2N7wVuaA4xJBSIlgoMFoXANX6cFUY3IOB+r0T6Nac6Xp/6dnOZg2EgsENCIQGG+l
         rRiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pKbCAJkpbwLj4cdr66WfDuTDNsQEEeBfbPTg09V0IgDbztbvN
	sK68MceZxK9b9iqkWiJ1x6I=
X-Google-Smtp-Source: ABdhPJz5mD/wCeRLazldgksYZEwCSUsk5EovVCKetwQYwqL0HB8vLN6h1LtkzdlSF/yfc/GpHrb07Q==
X-Received: by 2002:a17:90a:ce8e:: with SMTP id g14mr10825366pju.171.1629309876804;
        Wed, 18 Aug 2021 11:04:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:30c3:: with SMTP id w186ls1241126pfw.6.gmail; Wed, 18
 Aug 2021 11:04:36 -0700 (PDT)
X-Received: by 2002:a62:b414:0:b029:317:52d:7fd5 with SMTP id h20-20020a62b4140000b0290317052d7fd5mr10811349pfn.30.1629309876259;
        Wed, 18 Aug 2021 11:04:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629309876; cv=none;
        d=google.com; s=arc-20160816;
        b=epytLwR9eJBHquBeZedjXKGC3uea5lCBWpVkM7kL2x7Iwa1vAKTlwX6Hwjdq7poXVu
         2YiDCvgvbkT7o9aXp02cqbzNqrdQ3U2i2tYcpQIDPorMR+is9kSZkaukXY4XJPK8Mhne
         dN1je89AxqVaVYt0Py3BVfwdFEZbFiCgNcF2B0zkR+2iTvL7PR8c5wsl9gXck/K8c9jd
         m1r6uBLXkWIGqHo8zT0FzNCZElQK/Yh8Qn79JRDHl8qfUNp4VvtXerfasB2fTTZpKqpC
         hExtoHbqCZGSQoSJa66TA0Dc9b9bwPY8PLpbY3Cg44LSPgZNL2kUC7oa46le4hFMI1mR
         FxLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=D/cWueOe32rUAj3+AY31eEQsq6n7KMuznPAtCllwur8=;
        b=VcPSMguTGaJ53bAl6iupIPHXJk71FOL4USGe3x/aWi0nLrnyJz6xpqag890flU+V/z
         sdQH4xLtyYEnWLZFl5luA9Y6IpbCVBqJB9wwvvQFDSDC7piksloibgXb4gY44ZkMNIKN
         uAZwGPqMA6jlHU/rAskVfQGJRVnuZKn4GnkCj0JUic0Pq0mSAwmQdVhVAraBQlKemdOP
         sL9vBDIPp23go+9cRkD4qN7bEh2IyARuqne/2hMqodYlyzt7rOR7Z8z3l0NirNUXVCEm
         0cwaoX6jdoeq4EncBglO1O6BRkJyX5nCK1N8P4IMpGmlHGOzW5jGHSGfQQV+gfPjGMJh
         jAqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lNP3DJKa;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b14si262688pjg.2.2021.08.18.11.04.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 11:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 77A2D610FD;
	Wed, 18 Aug 2021 18:04:34 +0000 (UTC)
Subject: Re: [PATCH 1/5] Compiler Attributes: Add __alloc_size() for better
 bounds checking
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Miguel Ojeda <ojeda@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Andrew Morton
 <akpm@linux-foundation.org>, Daniel Micay <danielmicay@gmail.com>,
 Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
 David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Dennis Zhou <dennis@kernel.org>,
 Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, linux-mm@kvack.org,
 linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20210818050841.2226600-1-keescook@chromium.org>
 <20210818050841.2226600-2-keescook@chromium.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <d326fbfc-dc96-b6e9-6fd8-31df3eb9f1cb@kernel.org>
Date: Wed, 18 Aug 2021 11:04:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210818050841.2226600-2-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lNP3DJKa;       spf=pass
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

On 8/17/2021 10:08 PM, Kees Cook wrote:
> GCC and Clang can use the alloc_size attribute to better inform the
> results of __builtin_object_size() (for compile-time constant values).
> Clang can additionally use alloc_size to informt the results of
> __builtin_dynamic_object_size() (for run-time values).
> 
> Additionally disables -Wno-alloc-size-larger-than since the allocators
> already reject SIZE_MAX, and the compile-time warnings aren't helpful.

In addition to what Miguel said, it might be helpful to mention that 
this warning is GCC specific, I was a little confused at first as to why 
it was just being added in the GCC only block :)

Otherwise, the attribute addition looks good to me. I will add my tag on v2.

> Cc: Miguel Ojeda <ojeda@kernel.org>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>   Makefile                            | 6 +++++-
>   include/linux/compiler_attributes.h | 6 ++++++
>   2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 1b238ce86ed4..3b6fb740584e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1076,9 +1076,13 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d326fbfc-dc96-b6e9-6fd8-31df3eb9f1cb%40kernel.org.
