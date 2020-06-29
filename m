Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBBG5473QKGQEMWAF7AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FC520CEDB
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 15:37:09 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id d45sf4380804qte.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 06:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593437828; cv=pass;
        d=google.com; s=arc-20160816;
        b=pBpqmtsFHesxeJWiVtJxBZRWeFgO/SLnwDTafPGMFOYDQ1L1It/9xaIESur+G4umiy
         OZSXGNFtUNtvSx+gmZafHCgF5uiC7XbOjpeYYzP5ttd6AelpeoTY5T6reDG6TY2Gh1IB
         WAlLq9sXoWYOBScDjLiuPvHbIV5GxNMZQN6KD7mchlFW/x+0uF8fvIQlE9gcMfI43nqJ
         y4/kHxzRjSMT95rXjtwt7s5CM1RR92K9081GDb0vi9ia1y9LKJ+hxKy+XyeQNZKFyP//
         3BLQvbWTMgsenrdzxGN1RHU1QDLLBeE6GA8qhy29A5mvHoTdBu/rUlc9DQmOQ9aGEPp5
         xnDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nxdtQA7j4b9Fqr0wDnVhECeKVvL37lmxzebjFiA4XU0=;
        b=ZAt8G5atHMtpywoe3sX4lsdm/HTIKypaZp3nCoiTaD1t4b3Tj044Wr7mnTgEXGKlcb
         cfrd1q96iZeGVCuIU9i2JqhCjz18NBB6EM+4JWkA0zLs+Al/QslRV5n/cPXb/vS3EbJz
         LfXVv1QAH2HWcrSFXR8flIp0GPtcUI8yEQOs89bAyhCBMpdNzoorni52Gi61cw/6o+8W
         CfTenQm8V/sc0t2fKbddK5/pipE/6wQdxWPG5wZlTRRnTVfG4YNeIEwHoob1bAipFiz7
         X9IsPOJz3pBBnbg5kZ4X0UM2CKYYr8q8djE2MgXUW9xtLH0gLwieSf00wkriWOi/ijOK
         Xt5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="e/q+PfD5";
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nxdtQA7j4b9Fqr0wDnVhECeKVvL37lmxzebjFiA4XU0=;
        b=kdwGutBbwFEsF1jZ1eYUYvQC0S4UQUuvmBpSzdxeQooC5CdRHTkgkqTilxX0R4PaAw
         i8RRvdoUJUwnN6RK8j0sUiUvuhV9eX7XgpBa2NjaaWit8zWcK469r3IoRt5nQ9qPCUvN
         VSi2GAiWo4qT8OD2LELGH74umQMm90pfVHZqeOPBf690d4I/mLzhFrBVLDB3KVOJjShB
         pHWV1FgGnvIpBf2BYAnBTIa27Dr8zEyjlNs3MpUG27chkzW93kI5fkLMDwWI18yj0GLT
         XWdwh8F4TTQ3hJ1kLaIAPy5Mn/DGxnh0V5a6Dvims09gmWdYG0fC41Cf0Cq5RmknYduh
         gC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nxdtQA7j4b9Fqr0wDnVhECeKVvL37lmxzebjFiA4XU0=;
        b=N4a52J6Oht5cuY1leHLbwffguAAAHYdlWaNwQXUFYyUBabl2cQkJqZKpDNj4yIfKKi
         ZcyoLqZljIxjEHvrMnFaVr9pzrFN1HOIbctgqmeHH9/kcxr/XQyLjsvw4vpAjx3ioB9b
         VI5Z09d7w/7xHwRsofpjJ9ycxxV+q4VZQytpWqvKTvyWlTMzU9HoM9JCwzIHzWaSklW1
         VPBbYeX6+PaWGIPLTYrNqMtSP0d/jA2oG8XfW1hrW+6uLUPD9GUXebExbLbm45Eiiya5
         79eb6Qw7h35RbMWcebg+UAtfCTBgx5Lu6oT/mtwhKEnPvvf4ijImT0YHJXsdmO6VP6tn
         OqeQ==
X-Gm-Message-State: AOAM530rstpI7bSHnX0yQee0hzWFK093+/0/9/A+6FqcVKOQ2VNY+9fL
	fWW0cqliH1091/ZTfeq4oTs=
X-Google-Smtp-Source: ABdhPJxLYcbjzWFwRe/KkAdD0Jwa9sTo4oSPjW4hiFEHmXae78VJGaCwHyzOhD98sPX1OH+oJOkPTg==
X-Received: by 2002:a37:bd84:: with SMTP id n126mr14837985qkf.310.1593437828292;
        Mon, 29 Jun 2020 06:37:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e56:: with SMTP id e22ls6776473qtw.3.gmail; Mon, 29 Jun
 2020 06:37:08 -0700 (PDT)
X-Received: by 2002:ac8:7504:: with SMTP id u4mr16013911qtq.262.1593437827935;
        Mon, 29 Jun 2020 06:37:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593437827; cv=none;
        d=google.com; s=arc-20160816;
        b=heBQwuh1CNFkCHs7C0xjIxm8XMMKCnhemsopDF6vK1i6ulHILBPHto00jcZ69yNPTe
         m0usha+ty8J6t9sUyZsa/W0HxK5mAqURdjcZ9Ld29mHgLC6NCHdzafTfOZ4q81DohNpl
         ylAJvfWSKw4hjK75QkQ8+FmHRptpx0lCfisIj//eMgyLXNFydumvN2vJ/rx0sGLFyx37
         D5r/ny+gEKeU0rddBGvRrLouoMrbKoMDRMxA13OK+r8Rz1OSc9rqceviNOagdkCKgJ0D
         REo4eYGdA/cft6FAfnBNIERD0YQRbSYD4wMOfJUXGZJid1Wv2Oh9f+myBudZl+a0uAQO
         5Hhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5YTtTdEX8FTCzpnfrCubKRqJx+y/VqQUc/flbZtjjCI=;
        b=Cnx7wh5ldjOo9OdbYNUJffqrJd+TG9Ep5J84bcXtc4vjr/96w/JtNT+tBLGk1lAZw0
         8kmTPas9rm53QKqAhacs6OPJMNSC2G5wfUoHRNldtaJrO4OQznw++YmuctDyfvM6M+iC
         80GlqRon6Tqj1MgF8HvVCEhFXAZdXHaweNA2JSn+AHCxSpoQYZeSixpbfMdMi0h9aEzs
         l/LPdULE9V6cf+WEEvq7n7H1zol8dEFR+Sysl/01NjYg9L8bXpZfnm3lSZnd4HiwR1Mx
         jQvl2cqdk/X8Rsib1rx7nCNQ4wNWrY+IuSe4iUTQJXpxnUYF45FE0+bvueASBriC1vx5
         /5JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="e/q+PfD5";
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b26si1410091qtq.3.2020.06.29.06.37.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 06:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id j12so7909165pfn.10
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 06:37:07 -0700 (PDT)
X-Received: by 2002:a65:64d8:: with SMTP id t24mr10733075pgv.286.1593437826864;
 Mon, 29 Jun 2020 06:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200629104157.3242503-1-elver@google.com> <20200629104157.3242503-2-elver@google.com>
In-Reply-To: <20200629104157.3242503-2-elver@google.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 15:36:55 +0200
Message-ID: <CAAeHK+y=1oocjAMfYd5m2_Zb9Y8M5r0X3K6YYyKvjs+zSAC8tg@mail.gmail.com>
Subject: Re: [PATCH 2/2] kasan: Update required compiler versions in documentation
To: Marco Elver <elver@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Walter Wu <walter-zh.wu@mediatek.com>, 
	Arnd Bergmann <arnd@arndb.de>, Daniel Axtens <dja@axtens.net>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="e/q+PfD5";       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Mon, Jun 29, 2020 at 12:42 PM Marco Elver <elver@google.com> wrote:
>
> Updates the recently changed compiler requirements for KASAN. In
> particular, we require GCC >= 8.3.0, and add a note that Clang 11
> supports OOB detection of globals.
>
> Fixes: 7b861a53e46b ("kasan: Bump required compiler version")
> Fixes: acf7b0bf7dcf ("kasan: Fix required compiler version")
> Signed-off-by: Marco Elver <elver@google.com>
> ---
>  Documentation/dev-tools/kasan.rst |  7 ++-----
>  lib/Kconfig.kasan                 | 24 +++++++++++++++---------
>  2 files changed, 17 insertions(+), 14 deletions(-)
>
> diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
> index c652d740735d..15a2a53e77b0 100644
> --- a/Documentation/dev-tools/kasan.rst
> +++ b/Documentation/dev-tools/kasan.rst
> @@ -13,11 +13,8 @@ KASAN uses compile-time instrumentation to insert validity checks before every
>  memory access, and therefore requires a compiler version that supports that.
>
>  Generic KASAN is supported in both GCC and Clang. With GCC it requires version
> -4.9.2 or later for basic support and version 5.0 or later for detection of
> -out-of-bounds accesses for stack and global variables and for inline
> -instrumentation mode (see the Usage section). With Clang it requires version
> -7.0.0 or later and it doesn't support detection of out-of-bounds accesses for
> -global variables yet.
> +8.3.0 or later. With Clang it requires version 7.0.0 or later, but detection of
> +out-of-bounds accesses for global variables is only supported since Clang 11.
>
>  Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
>
> diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> index 89053defc0d9..047b53dbfd58 100644
> --- a/lib/Kconfig.kasan
> +++ b/lib/Kconfig.kasan
> @@ -40,6 +40,7 @@ choice
>           software tag-based KASAN (a version based on software memory
>           tagging, arm64 only, similar to userspace HWASan, enabled with
>           CONFIG_KASAN_SW_TAGS).
> +
>           Both generic and tag-based KASAN are strictly debugging features.
>
>  config KASAN_GENERIC
> @@ -51,16 +52,18 @@ config KASAN_GENERIC
>         select STACKDEPOT
>         help
>           Enables generic KASAN mode.
> -         Supported in both GCC and Clang. With GCC it requires version 4.9.2
> -         or later for basic support and version 5.0 or later for detection of
> -         out-of-bounds accesses for stack and global variables and for inline
> -         instrumentation mode (CONFIG_KASAN_INLINE). With Clang it requires
> -         version 3.7.0 or later and it doesn't support detection of
> -         out-of-bounds accesses for global variables yet.
> +
> +         This mode is supported in both GCC and Clang. With GCC it requires
> +         version 8.3.0 or later. With Clang it requires version 7.0.0 or
> +         later, but detection of out-of-bounds accesses for global variables
> +         is supported only since Clang 11.
> +
>           This mode consumes about 1/8th of available memory at kernel start
>           and introduces an overhead of ~x1.5 for the rest of the allocations.
>           The performance slowdown is ~x3.
> +
>           For better error detection enable CONFIG_STACKTRACE.
> +
>           Currently CONFIG_KASAN_GENERIC doesn't work with CONFIG_DEBUG_SLAB
>           (the resulting kernel does not boot).
>
> @@ -73,15 +76,19 @@ config KASAN_SW_TAGS
>         select STACKDEPOT
>         help
>           Enables software tag-based KASAN mode.
> +
>           This mode requires Top Byte Ignore support by the CPU and therefore
> -         is only supported for arm64.
> -         This mode requires Clang version 7.0.0 or later.
> +         is only supported for arm64. This mode requires Clang version 7.0.0
> +         or later.
> +
>           This mode consumes about 1/16th of available memory at kernel start
>           and introduces an overhead of ~20% for the rest of the allocations.
>           This mode may potentially introduce problems relating to pointer
>           casting and comparison, as it embeds tags into the top byte of each
>           pointer.
> +
>           For better error detection enable CONFIG_STACKTRACE.
> +
>           Currently CONFIG_KASAN_SW_TAGS doesn't work with CONFIG_DEBUG_SLAB
>           (the resulting kernel does not boot).
>
> @@ -107,7 +114,6 @@ config KASAN_INLINE
>           memory accesses. This is faster than outline (in some workloads
>           it gives about x2 boost over outline instrumentation), but
>           make kernel's .text size much bigger.
> -         For CONFIG_KASAN_GENERIC this requires GCC 5.0 or later.
>
>  endchoice
>
> --
> 2.27.0.212.ge8ba1cc988-goog
>

Reviewed-by: Andrey Konovalov <andreyknvl@google.com>

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2By%3D1oocjAMfYd5m2_Zb9Y8M5r0X3K6YYyKvjs%2BzSAC8tg%40mail.gmail.com.
