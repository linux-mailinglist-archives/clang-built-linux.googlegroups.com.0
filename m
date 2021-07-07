Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMPHS6DQMGQEIMWF6TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EAD3BEEBF
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 20:34:26 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id d1-20020a17090ae281b0290170ba1f9948sf4376723pjz.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 11:34:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625682865; cv=pass;
        d=google.com; s=arc-20160816;
        b=fXTRePAznZBto4surpzHMfpZkYwbOh+TFLUbty4i7AhyvhJ9iMbn3MTHGdSepVupZ1
         VU4DFCD3LV0PCD7ey65EEJkgcivX0tQo9Pyt//QyYDrbB4V3UbqsbBk5F+3Xvgbtrzji
         rKiabNN8INzpHMh5T4MsgpOdaSA+7lfoQ3ibX6lq06zDR9jqPLRVo/PyXUQy7SzUOWDP
         JZgSX7mWigKX2Zn3CCzYSFv3eLZP7UfRD3m6IeXHpzPcFKT9uZBoGm8l9byyhIqUITgX
         Ez/BqQbJPWyox8owjFdjRclhrbrO+aASEltld8eJnRSCRbbZO5zk4ZCy7XBlZyGAYWcz
         Dc6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2oyRuAIPZsJ387ySlf9x9cxpiVJOf+MNhSWY4sI9Y78=;
        b=k/bhLN2wKKLSeQNEeYB/bk5AGorn/gGBtWo6hY5D7fvBxpxjWfHMuCtHYNrfAcT9cT
         mTN5AXTTUBgD/YP3ubeyqfZRHz1OAOn07XnXsOID7ikYnIY79ostO91+5MpzXEwx/NWs
         mJ1pw4E499R+nQlvun3oPHZREXjIds3CgKo7ZIope4eo7gQZHMFhovNDSATP/J4kC+AP
         AdlvMdl3hAaVXUe8TwJAqbKSa4tn6Zpcc85UPRERxWGzY+Mna5n1GwEiRZIWfZ7KfRf+
         iEZbfV2fF6s7LgKfguJ+tJ39ibfmMOkw4Y/sNtnlkYC2jrTFIi17VKGakSqHTqNIvDvI
         cngw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sM0sNH3f;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2oyRuAIPZsJ387ySlf9x9cxpiVJOf+MNhSWY4sI9Y78=;
        b=orP2T/HW/3lnESI5EV3huToKmLEJQV1KHFiHfmMOyIpF+J95Exl+H8XAXK3qMWwI7t
         KvhqxL07f6JPTMni3IPwGwGjC9xVYaMWrKsMlMYYYraHBs9nyXm5veElwOu2MqYfQXeV
         DuPiaej/LJwD2LKtaGxzXw1ufIIAlnqEPITmF7x/6HKSHlLlesfFitmjVUi0CcN9VwIF
         beA6kwGXeAFH7aRiKIsV5Xzv5lVHDgfXk8G6GgQm44mN40JEyhawMwpCjSnmBalwuZ4y
         C4dqHtJJcm36fmF0oNiH+4Fn9FV7zwWXk+sDPGNQQ9aGINgjt4BZj2W//hpk/0rr2rRi
         WdVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2oyRuAIPZsJ387ySlf9x9cxpiVJOf+MNhSWY4sI9Y78=;
        b=F4o4VLzrze/ysO4CG2QDU/VzS9US0LoR2A/EeVQ58dR163JV+dg2VNeNeCkMhaE6v5
         I9i9SJ7rVzZ0+FXZpBa9k/3HQKSMRRFy86+tg5il8ll8jUdO+KBJ5gO/9X2wit6jHfdu
         23W6Gf8ya2or5MaO0tOTY2U3705iQAV51sfjZT7QEYMoqRKkvdGhng1HN4OssNN6IiGi
         g9IUL6AbEijrE869ZUVWpUfUC2hzCGlpXvVDqfvGsEp6Uz2hw7wmmoJbhm8eosyivGUn
         hKE23mFGa+/HQ+ATQ6oyLxSMN6KvYjBXxRiVvHC6LGYlC8CIAWBGREc5KkOr3WPWtPLM
         Iwow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ldZFQt/pdrEKODSEDiFqXdkVd2j0lN+xRJy+OQmZv7KTmLuEl
	0TPSKEZRHU0gW1OS0gVN36M=
X-Google-Smtp-Source: ABdhPJx/p7bao06OS5Yqt37/BRCJygfW69XD3NjT6b/2Eq9HcR/PQUvANfT9d0hlK3x/HPRfk++vGA==
X-Received: by 2002:a17:90a:ee8e:: with SMTP id i14mr391176pjz.29.1625682865648;
        Wed, 07 Jul 2021 11:34:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4a0e:: with SMTP id e14ls15464584pjh.2.gmail; Wed,
 07 Jul 2021 11:34:25 -0700 (PDT)
X-Received: by 2002:a17:90a:6903:: with SMTP id r3mr12089858pjj.105.1625682865074;
        Wed, 07 Jul 2021 11:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625682865; cv=none;
        d=google.com; s=arc-20160816;
        b=Cp6GsFJWbhLKqj+q+Iz+Sw3D2GTmV6wKh3aOqBlgT0mtxQeMv0OSj90s4eOlDf3cAv
         fNUakXEJ/lHHdZILDGCFvnBy+j3dE/nWoKRnD02xHRbbSykZM5SJtnZjPR3m+rbvV6E+
         YX2mJ2zuMmEgK88qJlm0qBDGSlBLh/TcTu59BFFhPHOjm+dZl5zS/9rfFlA7CZINYqP1
         KwgH0m/brREbP5CoKTPGoUXFqwcmDQ+hSLxFuHDZJth9GOOGr+5eGHS5yEKdkrt3Fech
         eWDgRl8EKP5mcyEfUnfzYZxq5x9UiEuTG5MvoZI/IBtvtrWpjBkybIkIXxUa/M34gmmz
         AX7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rjUDaaYsStd0WL6zi2l8coFWTg6bnQ3TaNhypVGrUhM=;
        b=FZ0DywiaPL5kZiUMEbTBGu5KDEq/46UKgQrPk+qWqOrFpKFhlZ8TmsCJEmgLI1QT6O
         z1LwhjL/n7txQ0rWEEBZRrWPs4A8CykA5BbjY8RtruSGwZ7pk7spyJj+8fclufCoOTv1
         63OV/8FunPmv/pL50gVKfOIcLSbJUzfAqLwKkY1lrLYhpvxhH6W6i3xgfj2UyG+QOaNB
         uECbO0nWuRVp3PoBjTmZzlkFLVTaWCa5VdYlm/qiHa5JVMAZj/wExqsA4tueTMAV1KAX
         NgXy+aWEG4klIrOhQcjX7vhUwiKCTofaSWHJDoktmvTK6BZGmv2ykUc+ZQfXaOUq/Pjs
         LOKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sM0sNH3f;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d17si1241976plr.3.2021.07.07.11.34.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 11:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 115D961CCE;
	Wed,  7 Jul 2021 18:34:22 +0000 (UTC)
Subject: Re: [PATCH v4] kallsyms: strip LTO suffixes from static functions
To: Nick Desaulniers <ndesaulniers@google.com>,
 Kees Cook <keescook@chromium.org>
Cc: Fangrui Song <maskray@google.com>, "KE . LI" <like1@oppo.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>, Miroslav Benes <mbenes@suse.cz>,
 Miguel Ojeda <ojeda@kernel.org>, Joe Perches <joe@perches.com>,
 Stephen Boyd <swboyd@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Sami Tolvanen
 <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <08a2e179-3f5f-639e-946f-54cd07ae12fa@kernel.org>
 <20210707181814.365496-1-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <1fd40e80-283f-62e9-a0fa-84ad68047a23@kernel.org>
Date: Wed, 7 Jul 2021 11:34:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210707181814.365496-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sM0sNH3f;       spf=pass
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

On 7/7/2021 11:18 AM, Nick Desaulniers wrote:
> Similar to:
> commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
> functions")
> 
> It's very common for compilers to modify the symbol name for static
> functions as part of optimizing transformations. That makes hooking
> static functions (that weren't inlined or DCE'd) with kprobes difficult.
> 
> LLVM has yet another name mangling scheme used by thin LTO.  Strip off
> these suffixes so that we can continue to hook such static functions.
> 
> Reported-by: KE.LI(Lieke) <like1@oppo.com>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Code looks fine, small comment about a comment below.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Changes v3 -> v4:
> * Convert this function to use IS_ENABLED rather than provide multiple
>    definitions based on preprocessor checks.
> * Add Nathan's suggested-by.
> 
> Changes v2 -> v3:
> * Un-nest preprocessor checks, as per Nathan.
> 
> Changes v1 -> v2:
> * Both mangling schemes can occur for thinLTO + CFI, this new scheme can
>    also occur for thinLTO without CFI. Split cleanup_symbol_name() into
>    two function calls.
> * Drop KE.LI's tested by tag.
> * Do not carry Fangrui's Reviewed by tag.
> * Drop the inline keyword; it is meaningless.
> 
>   kernel/kallsyms.c | 43 ++++++++++++++++++++++++++++++-------------
>   1 file changed, 30 insertions(+), 13 deletions(-)
> 
> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
> index 4067564ec59f..a10dab216f4f 100644
> --- a/kernel/kallsyms.c
> +++ b/kernel/kallsyms.c
> @@ -171,26 +171,43 @@ static unsigned long kallsyms_sym_address(int idx)
>   	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
>   }
>   
> -#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
> -/*
> - * LLVM appends a hash to static function names when ThinLTO and CFI are
> - * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
> - * This causes confusion and potentially breaks user space tools, so we
> - * strip the suffix from expanded symbol names.
> - */
> -static inline bool cleanup_symbol_name(char *s)
> +static bool cleanup_symbol_name(char *s)
>   {
>   	char *res;
>   
> +	/*
> +	 * LLVM appends a suffix for local variables that must be promoted to

This says local variables but the example uses a function? Is that correct?

> +	 * global scope as part of ThinLTO. foo() becomes
> +	 * foo.llvm.974640843467629774. This can break hooking of static
> +	 * functions with kprobes.
> +	 */
> +	if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
> +		return false;
> +
> +	res = strstr(s, ".llvm.");
> +	if (res) {
> +		*res = '\0';
> +		return true;
> +	}
> +
> +	/*
> +	 * LLVM appends a hash to static function names when ThinLTO and CFI
> +	 * are both enabled, i.e. foo() becomes
> +	 * foo$707af9a22804d33c81801f27dcfe489b. This causes confusion and
> +	 * potentially breaks user space tools, so we strip the suffix from
> +	 * expanded symbol names.
> +	 */
> +	if (!IS_ENABLED(CONFIG_CFI_CLANG))
> +		return false;
> +
>   	res = strrchr(s, '$');
> -	if (res)
> +	if (res) {
>   		*res = '\0';
> +		return true;
> +	}
>   
> -	return res != NULL;
> +	return false;
>   }
> -#else
> -static inline bool cleanup_symbol_name(char *s) { return false; }
> -#endif
>   
>   /* Lookup the address for this symbol. Returns 0 if not found. */
>   unsigned long kallsyms_lookup_name(const char *name)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1fd40e80-283f-62e9-a0fa-84ad68047a23%40kernel.org.
