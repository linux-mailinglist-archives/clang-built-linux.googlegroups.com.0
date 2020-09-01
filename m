Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVFJW75AKGQEFOKANVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FB525871B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 06:57:57 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id g2sf2420741otr.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 21:57:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598936276; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZEDZKS61mYrEG9B1L2Uklpy6huDV/4IBP/C/TAgjFRHYO72R/hvgwm+kU5h46IM1ac
         z8ZPDqRHLjh/1intkXD+fdh6KO1iNEk6/TjgdbsDPZndScKGz/Xb5nR+lkc36yZJGYzd
         ANT7XU9MB6l+ByfXT/onGD0C7RpeeVbHnwNPsRAk1kHdrPZgpd1MVRHUpZAa9enGyODh
         SppVO77/bdYt07ED2FLDusWRgQ4Jk6JKyFcmcgU62bmDFNxLrCWdVF1byym/imdtkdTB
         Yn5YJdVlfmpIAe5hSJ+KbXER7TyaxA6HuF/4ncPCr/aPUhSLP0ATx2g+gwb6d8KmwB4f
         fnAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=eJ9yFDyZScm1iH8Vi9Db7oGtWxqqcg3AidJM7+RGWWA=;
        b=p0REUG0QWSPWO+BLY9qkvLTx1U5m3YtkegwY+ni1Ndl/4rp1mLhYBKzLWsyxjmlp7D
         5McT8zdpV3P2QhZVRYk5BO5JjTRykobmmdboGswq+qauyXy3B/MmdRD3AWnwhCSOKSoj
         sgqka28Uo8++EOlWwExBjzhXMqRbj5eGVJ/Lfk9o0/blzx+ylVUg0ECVYtnNttuVf0eb
         S48xB61nc6kdeXisPA1Lg7xzoPExW10fhTh1lRbekwanzkForW5QqhqC1+4+rxixRD/Z
         smCFoDxoCB/0wAsZINuH8s8tNFiBJ6roLXEENaaIfODdq9yQgrTH3gpgBSYd9TsJtyjA
         Tdpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=edgvh+aX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eJ9yFDyZScm1iH8Vi9Db7oGtWxqqcg3AidJM7+RGWWA=;
        b=jHh58vd7ZhunYKt9P0EcqpHLFhOdss8iC9oAl9hnULqHqlLmoJYWX5nwGyvs0iWVDy
         vnVWBS97BNEtLlni6FKH496ieYs+n9+RRBz6JVC+FLMf8Bs6pRtoeubjyi/1AmCZV/Bg
         dAwacMVunQ2s3fdYeEV5ejDQ5ziX/b4KYBMTUJ/+/y3uuivdBc/EwCwEzbu1BGRyvvyK
         u5hx1FuyrwWzDm9O53jqldpGEoMMTZMW8GSBc8FyOUkdIL8s5FzrqnFjCzfw6N8fyOBZ
         UL0yModv9Fk4U0absqyBF+Qst0Pigcz/oJd2tCNuuIG6YsgcqtO2OpaZgRhvHkrNQ9BB
         cv6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eJ9yFDyZScm1iH8Vi9Db7oGtWxqqcg3AidJM7+RGWWA=;
        b=Ipr0nfecU0+oTw05qas5eWkaD5QRThuyQ2QH5Xo+3IABY3VrCWFY7FPR+L+W5KXWDS
         6fnJEmfwBzu0AcmbmIE2XmQ7EfQ7Xhfw1xuSajn2JCmOZRtqztW9gLaZGmBaZd0Ua7TG
         Y1HG5Iis3962qlx/3oF32S7dJ3O8ymXWUuqxpubfZUD51llgWffL9mzCMNKZyQ5uLD3t
         mgTnmX8JkFcoyhCkUjAGllrV/cwUx75Cskooy7iySbIjNJyVQyfGKFx3MADE1Kn1RNWZ
         aBFySKkKpt5Puq/LkUAbje2lMQtUV0elqTunXwXwUHPmVVJvDjOgKDQ2fV5pry2lZ8HO
         FKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eJ9yFDyZScm1iH8Vi9Db7oGtWxqqcg3AidJM7+RGWWA=;
        b=VWkj+lCl8/vLKfR6HuoX1gBithgEYurOikxFkEQdbg+ZhiDrGM2Y0Njx49/gOh2LRR
         uJe2eFWlwJIR78HbpIXTerF8PHI/8OCeUVClh1RWvyCF7SUnkXcYWeVE4e9kq8gZF7ji
         nmU8uIoge5TuUuKPb0qRIL80MD9jZRlhHtxEeOoyMrdz2n1qv8GXHBLdyyC+H0MDz9tp
         tOmX3YrXH0A10+1aB5YboBkfX3nvDPy7G1Z0+w5RgK621uDr690xbPqywnvfNT1gKiZj
         9P88b0Wg6x8zbRYn9gpclOCv+aWpB8ClHNxKt8WLwjHbAMQuil9KfJNU6Ol7wVluxQqR
         HheA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bIY3n4vXu9tUNwgsm4SvfE3ylV5riw3pJIzw9qhkZulHFzbIM
	vX1Vtg4lMKjGBwae4frlJ64=
X-Google-Smtp-Source: ABdhPJxcM5CPysB+XhSLXIEGOrAz6hf0iN9VlOA3+RTZ3prTTwS94AQ3OKGIKIV6PoesUEyinFuq5A==
X-Received: by 2002:a9d:7846:: with SMTP id c6mr131520otm.221.1598936276322;
        Mon, 31 Aug 2020 21:57:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5e83:: with SMTP id s125ls785807oib.10.gmail; Mon, 31
 Aug 2020 21:57:56 -0700 (PDT)
X-Received: by 2002:aca:ed0a:: with SMTP id l10mr67178oih.9.1598936276027;
        Mon, 31 Aug 2020 21:57:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598936276; cv=none;
        d=google.com; s=arc-20160816;
        b=D/CRaTU0k7PN4JIzK7fB2y/cK1Myb9fjvEyUs9mLIIWKxTA9nc36Pd7f/IInX4jhDo
         qYHA2CYEzAtrhlgFZ1muI6qtMSpTZE3D6qTZ3bIj3ukGtsjgqX/ia2jewtCzyDE3wx0Q
         w8Tmq6791z4fxSsacqq2rzZSuNlxuLIv2BbJsUyxOrk5BSePlMx9Z7GLllsrdSScD2P1
         xdOpIRPZZEVSf0luu+OZoXm+PcB0ktoFNOZqzyWS9gLNl6WnTENty+dQJ7kfg+ui6InK
         oTTD4eud/H3LeRQ9B47r8WBIAswDYPhzxPA8vh6Tr66qeGhp7dcWb1Jx8EjM0nC3p7jP
         pNHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WkMMV5KfqKlAUNBzYZCx8Wlk7RJHSHOVVyqgVoAjcfI=;
        b=i9X6yrLKz3OWOLR1pMjGuBPAbuil68EE46h5wLebkuzEZSsHAG5+CmphxzvxldAg9o
         aRDS1KZ7zk4M0Czmh1oq+vsE3A8MKyxCfVWcSIhSAFUNwj3x9WLvgQSqm3x/y2ZQ5DxJ
         NwdrmQ2lF/Z8RNebGvKv0bO4Pj38NZGtooA4uQKr091cqA8efZF0C67F9Ue3tw5uHwv7
         ZSDuKHr1z6D3GexBdv/LMmMlr5BmFQHQUYygTur+l3J6A7ZQUW6qUk5pa43RxltN1Crt
         No4HaWPdOYwGbAVPC8zqjCJwzbM5ip0ZBBh17xqswQtxoKswR+eJiB1yWWbP/7d2HHJv
         P/zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=edgvh+aX;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id x50si7010otb.3.2020.08.31.21.57.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 21:57:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id ef16so2245476qvb.8
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 21:57:56 -0700 (PDT)
X-Received: by 2002:a0c:e844:: with SMTP id l4mr193470qvo.154.1598936275487;
        Mon, 31 Aug 2020 21:57:55 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id k185sm237276qkd.94.2020.08.31.21.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 21:57:55 -0700 (PDT)
Date: Mon, 31 Aug 2020 21:57:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/7] kasan: Remove mentions of unsupported Clang
 versions
Message-ID: <20200901045753.GE1561318@ubuntu-n2-xlarge-x86>
References: <20200901002326.1137289-1-ndesaulniers@google.com>
 <20200901002326.1137289-7-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901002326.1137289-7-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=edgvh+aX;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 31, 2020 at 05:23:25PM -0700, Nick Desaulniers wrote:
> From: Marco Elver <elver@google.com>
> 
> Since the kernel now requires at least Clang 10.0.1, remove any mention
> of old Clang versions and simplify the documentation.
> 
> Reviewed-by: Andrey Konovalov <andreyknvl@google.com>
> Signed-off-by: Marco Elver <elver@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Documentation/dev-tools/kasan.rst | 4 ++--
>  lib/Kconfig.kasan                 | 9 ++++-----
>  2 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
> index 38fd5681fade..4abc84b1798c 100644
> --- a/Documentation/dev-tools/kasan.rst
> +++ b/Documentation/dev-tools/kasan.rst
> @@ -13,10 +13,10 @@ KASAN uses compile-time instrumentation to insert validity checks before every
>  memory access, and therefore requires a compiler version that supports that.
>  
>  Generic KASAN is supported in both GCC and Clang. With GCC it requires version
> -8.3.0 or later. With Clang it requires version 7.0.0 or later, but detection of
> +8.3.0 or later. Any supported Clang version is compatible, but detection of
>  out-of-bounds accesses for global variables is only supported since Clang 11.
>  
> -Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
> +Tag-based KASAN is only supported in Clang.
>  
>  Currently generic KASAN is supported for the x86_64, arm64, xtensa, s390 and
>  riscv architectures, and tag-based KASAN is supported only for arm64.
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 047b53dbfd58..033a5bc67ac4 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -54,9 +54,9 @@ config KASAN_GENERIC
>  	  Enables generic KASAN mode.
>  
>  	  This mode is supported in both GCC and Clang. With GCC it requires
> -	  version 8.3.0 or later. With Clang it requires version 7.0.0 or
> -	  later, but detection of out-of-bounds accesses for global variables
> -	  is supported only since Clang 11.
> +	  version 8.3.0 or later. Any supported Clang version is compatible,
> +	  but detection of out-of-bounds accesses for global variables is
> +	  supported only since Clang 11.
>  
>  	  This mode consumes about 1/8th of available memory at kernel start
>  	  and introduces an overhead of ~x1.5 for the rest of the allocations.
> @@ -78,8 +78,7 @@ config KASAN_SW_TAGS
>  	  Enables software tag-based KASAN mode.
>  
>  	  This mode requires Top Byte Ignore support by the CPU and therefore
> -	  is only supported for arm64. This mode requires Clang version 7.0.0
> -	  or later.
> +	  is only supported for arm64. This mode requires Clang.
>  
>  	  This mode consumes about 1/16th of available memory at kernel start
>  	  and introduces an overhead of ~20% for the rest of the allocations.
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901045753.GE1561318%40ubuntu-n2-xlarge-x86.
