Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4FDZPZQKGQEZJTFRDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A1D18AA80
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 02:59:14 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id r8sf495548ioj.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 18:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584583153; cv=pass;
        d=google.com; s=arc-20160816;
        b=DiSLKdbsRbBLBYN6OxoRrZwgXmBWjS3KOP/f1MzAwejoeUKJ+967VKLlggeO3RS1K2
         +gq0g962m7GnExsA2AkAMOu/dL03X1mFMs1f0zg5Wjo3uuNzXcCVuUZlxLXDe+B8iViW
         ExDgowBIQsx0Q4/yjmMlXRWrIHoRDJDe1jGzgaSJ91OQkZFTRcN9lvtjRDCK5HKUu6tE
         6oLNyufhWpsL5L85tVd9uwQ1bKRxw9PjyTGezHqGeEP3KC2A8XphYwWvL89mP5RKiKVR
         o55LV/vlmjKeiaL0yn32XiqMMBvsaty1oCnYjkRsC9LmWuXhoquDR5eDtjiMkTJ3LAry
         gFIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=3f93QkK0LMamx9kcDBPlsmdL24N0jvJ+Z4nHBvY4oDk=;
        b=tkv4ebgdKQVAW5orRV+DMQCMN0LzROa8DuVeprBEi8m3s/9f3gWrpuA1L3Nzpt/zbS
         nS8aXWPVOWp0cEd3QT/nuRQ6uwDupOTYuNjhosf2wVzqNyuaIS1HirqQe1VhnL0ss1ip
         hm9am7/Ve21qZh6YjnUB+H4tgsh8vT/E9mFOY3+2jfA/aR1M1Lo6GqdiYstm1A2Cq3Or
         sr/WIiy6QxeN0lpX0JvUXBouwl/1MiZtAcugdQEMF02Y8CcdJjxxZzZhWqjwZBEgmrfq
         Aa78zdOijq5g63nFzT1wcc3DkO0mgy7G7qNfwzuFgUtowvJ+QqlBWnsKRKacAQtQI6eb
         r06Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DGK4ptB8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3f93QkK0LMamx9kcDBPlsmdL24N0jvJ+Z4nHBvY4oDk=;
        b=mQKyZ/HW63Sqm5n+hGGXzwNLuVBC6f2EBwdj+Bo2i4xmm3I0Mk5YOTk+XW9AjjF3Bv
         dWDiUKVzqztgGrW7ttvQU813lHrNxuXlwwXlnA/VPMQtNzLYRuINqzyfmDdDYQkxYNkp
         H+4BTVUmCsRgqcJ9b4j9g5gSoGYCypAq/Sl0FTLnEFixa4YOmcpk9/n5xzHnB7tegH9l
         buKNS5JW1xIOvKGwfJtrs4HccwtSbCmGMAEJD5XIVBmqgwXi/+TeQW0F3XlAslWs6EDt
         7jl0NrGwBCxbOexT8JyO7FkTOCVac9JvdV+/hWjgJitvwdWWAkO/M6UTEbMtri43kIWr
         sBOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3f93QkK0LMamx9kcDBPlsmdL24N0jvJ+Z4nHBvY4oDk=;
        b=Y0T5W7qC29O8fo1JLRwoPmUIeOb3F2OKmi2zNkOnKleVRYKF6EHQGPnT0c8PRj7WtW
         /v3qHNNCbgrk2SL5v9lImOpro49yQSgq0qg9W2uB0A+5/bFNibY6Fz4yRjEiQpzR4jAV
         GZR4CLL5hed5avXbYdRgweBGMKX88uFN4NPfcO1bs11kduJePycX99InGb78P3VflwYf
         QSPAPZwkrXUz01TcXSDESbvl6zsJ4pOYzG+exPhxqFnevctU55u3fBNDiTzdSavHAGrG
         0tTzgUwstBUYoqpZgFWruNq4taSAUlw8HO6AfZonawhuCEeHSXVo6TMvxGUS7QGyYWIu
         vByg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3f93QkK0LMamx9kcDBPlsmdL24N0jvJ+Z4nHBvY4oDk=;
        b=ONMC7RWQO4/I3G/foNERjITuy9FcNQpj1CcAcXOhdbG7701bNYDLNWMoGoQcJlsi9r
         GudLWpho9uJJJcohKuF5WMyPhQD9ECSWGLIjoGw2cAvO+GLkFFKVddtFxAZnpZQOdg4Q
         yoxlXqp3ExudDMWnd7LxS69i5OhSgiM9fRjsoIDnb+lQbR3LEkBuoojpykwxnzhRF3mz
         p+jtIyBJpGqWLDhYl7YMvBEjsrdnFh4fUbiN39fkuAoZ9G1/vrRETiboGLcbNjXdnaPS
         ZANh9cUOeSWtIdoLLBzhudDXFduIE3fAdiK39T7/FobQfS5mHPqgkYEkHwlFddla/+5U
         e7wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ00oT8WXixvgSUr3sZUCeCUc+7QAKbSibBUfj4pHYUn28MQqpKw
	Fk1UE92XZ7MPMD4IG5dPSBE=
X-Google-Smtp-Source: ADFU+vuexFw4qHHQ+0P2C2eJyfzwVoqviT8tWTaS3TR7gDouw0UnZjq8RB6JyHshu9QdAmEfvh8S8w==
X-Received: by 2002:a92:5e14:: with SMTP id s20mr1065190ilb.101.1584583152776;
        Wed, 18 Mar 2020 18:59:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls146405iog.6.gmail; Wed, 18 Mar
 2020 18:59:12 -0700 (PDT)
X-Received: by 2002:a5e:9b09:: with SMTP id j9mr691846iok.114.1584583152417;
        Wed, 18 Mar 2020 18:59:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584583152; cv=none;
        d=google.com; s=arc-20160816;
        b=JchEArQXShf55CwiLjrSamR3M1jK1MekgWpHVC5HeACF8zgtTqwE1s+txTQzbOxLFO
         c73cXN+BlqpKZC6+3jUwzgALFWHdxo1pdl5kgjj9jVYZUCafs5zVEXEy4mEZ1dM1SVil
         K2cz3j9onTkOXesRvlN0sj7nI0QuX+1pCuzQM5y9WTXmOuOqKcI2ei9i146fo9XlZ6ze
         JTUhTC+o7CnSSOfrhDfOQhOC+nLmxEWBTY6mDwCMeRnmgGFjVHO36qMI/uMbgMmajPeY
         kxjvIfuOdzsVJLL2GK4EGSCBioAPUDGsHXxQzSwtaInNJwaVOVnagCzbGxfweprC0afT
         npjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kQ+8lYTbuo7gMKlfggSjar9t6x0ZwfKKLWy/FGGXtQI=;
        b=T8luQ9MlSQpzQkmQkFdK1EgYpGSEmYjOdRxXNlJrzRGDsJOCrJq6xU13EHFV40uQA0
         XEl/483AxDDCdud3a2lB25pcTPcS1EYk243Pj6H4Ri6T3tLKBOI4N/E52hZ0oH/S/2Ad
         tpOPKxkCCdJSisPfvg1Ez2JzQ5RxXd88LbXNvjO8TJJXSVkcIxvIw6lTZMr/EyypBOTZ
         XN3pf91sdhw9UKJIyDTmulNFs3vJOEb1RHbm7qW+NOKdpVTnhvtxkIz+PmcLEkf2Fkzz
         Oy8mzhO9SdBYxvvplHycddcYOAypyqm3YwluHR2vQB2FvsjtzvAfBqjp/cLa+PvjHNbe
         x5XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DGK4ptB8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b16si41615ion.0.2020.03.18.18.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 18:59:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id a49so759836otc.11
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 18:59:12 -0700 (PDT)
X-Received: by 2002:a9d:450a:: with SMTP id w10mr497928ote.114.1584583151915;
        Wed, 18 Mar 2020 18:59:11 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id f20sm303167ote.6.2020.03.18.18.59.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 18:59:11 -0700 (PDT)
Date: Wed, 18 Mar 2020 18:59:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jason Baron <jbaron@akamai.com>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] dynamic_debug: Use address-of operator on section
 symbols
Message-ID: <20200319015909.GA8292@ubuntu-m2-xlarge-x86>
References: <20200220051320.10739-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220051320.10739-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DGK4ptB8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Feb 19, 2020 at 10:13:20PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> ../lib/dynamic_debug.c:1034:24: warning: array comparison always
> evaluates to false [-Wtautological-compare]
>         if (__start___verbose == __stop___verbose) {
>                               ^
> 1 warning generated.
> 
> These are not true arrays, they are linker defined symbols, which are
> just addresses. Using the address of operator silences the warning and
> does not change the resulting assembly with either clang/ld.lld or
> gcc/ld (tested with diff + objdump -Dr).
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/894
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-5-natechancellor@gmail.com/
> 
> * No longer a series because there is no prerequisite patch.
> * Use address-of operator instead of casting to unsigned long.
> 
>  lib/dynamic_debug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> index aae17d9522e5..8f199f403ab5 100644
> --- a/lib/dynamic_debug.c
> +++ b/lib/dynamic_debug.c
> @@ -1031,7 +1031,7 @@ static int __init dynamic_debug_init(void)
>  	int n = 0, entries = 0, modct = 0;
>  	int verbose_bytes = 0;
>  
> -	if (__start___verbose == __stop___verbose) {
> +	if (&__start___verbose == &__stop___verbose) {
>  		pr_warn("_ddebug table is empty in a CONFIG_DYNAMIC_DEBUG build\n");
>  		return 1;
>  	}
> -- 
> 2.25.1
> 

Gentle ping for review/acceptance.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319015909.GA8292%40ubuntu-m2-xlarge-x86.
