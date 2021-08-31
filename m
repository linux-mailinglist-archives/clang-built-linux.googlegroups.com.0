Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBJHBW2EQMGQER2LZZ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCC03FC1FA
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 06:31:39 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id j6-20020a17090ac486b0290178ffdbd20dsf102078pjt.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 21:31:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630384293; cv=pass;
        d=google.com; s=arc-20160816;
        b=THwdDsoB9xU07xM7/pBJirkSh3i/iUVHGQToggj20svhqBTwHMk57xNNVgnjptwHOV
         P6h2VVs36Z2/ZwmqupRtVXTSGXSI9hWVM/BZYD1nPEy2RluD5gRD7jXSxri4A9jqgcOO
         C4qnlYMf5c6Xwal0QeYh0YY6PPxkpA/1DQgsfxasO0geCjWdWG6pe+JLZ1sQou/o6wtn
         XzFzp2i/JB96bmdmykS5Qb7zMWlR7OW1eK4ImcSU2rLH/N+Z07zb5tTsGbt367OGPlnS
         Bcx25e+8mBMgG8iEYyMrhgmcgB95VnxDVrZWa3gYKKa5duSRa/r1Vb5mdKsDY1gOkM8j
         QlIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oXR+VElkQ0Qw04v9coudkbqlEbTgXIMCi0byRp2yubA=;
        b=tAyNzIKZAH/fa2/B99k26nC+PiQf82uHBgs4PXmdvXEdiWqlswQV2w530kqh2JBG2x
         0SCnyMDrTpp6hrzwzoMAQJp3IQenp92dSSrrtAEdPMoI1eeaXMg5/X1uLKSp/3pITLbB
         jupkU5GtVrDpg9K+YsaUslBWRTYfVWHLp75DwuHhJn5xK1z/L62BRsdGvYquJhAFepIj
         WX3vtTXrXT4KGExwQLxwe66TJKIaU2oPYPrDO+Icz7WqYwHoa1f3EVBBkpxayWxSRQeW
         LnPi6ZbF9vIRu0bnwmVO3+0+KJ0b4V0x14BTvf3avEqdSIBv8MmU3idvKt2SIUKa4vVA
         0HZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S1AT3uix;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::c31 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oXR+VElkQ0Qw04v9coudkbqlEbTgXIMCi0byRp2yubA=;
        b=bAwG6ngAcsJSRlh3mFgHNgn3l4UaTqnl+FPOKA9Sk84eJxTZ/xL7OZT6SJ0OYAHWoh
         hpBze0M+tMR5o8zsXQSDWMYFEmWb974Mg7L3YFucAikFe1ybb6HMdFbCaeRfOIhhqbF6
         166RXJN8gZWc/+5iPP5lZCKXMAHjf5vpR5s8zRiUec0CfU0wgooz62efWrc5MwyY8+jT
         p685Ls91AsCIEj04HA0DGxdIA/BS7+QRyfyPjFi6GsqhMllbkhRdViZZ3YsDeTwkn78D
         5LqAI/cxTx91u2vlBCO68o/QaCwgmUs61IcIjpxwWgM54dGLhf2IZudz2vmMSuAOF0H7
         Duug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oXR+VElkQ0Qw04v9coudkbqlEbTgXIMCi0byRp2yubA=;
        b=iq8YuRw/EtgG2GVa1vXLMT0SFb2FRgA0yEqAJQDliDgZiSEp2qH3+MJrB7UpGB5xQw
         a3FjhFKV4sPFj17ME039AoW2MaHOH65A3iRSTegRJDClYWRN0DqUyjwjBkLIjLL6ILNu
         gDC6KfWK4LJLiHefZ3sYpP8VYBuCJ/sNaxwjuoJmjbUqE26HIDA+zqUUnXfQDSjzMJv6
         fjIbfBURIqns6IEOJDTBghUWxwUhEKkH+rQRJnjdX4T7n+SW6HVgGyAlengabxKHK9Tu
         avoxcp3D643lnQ1sGwp3B/Vg4KpKfv5BNqDdSxSTNS7wOS2lwM+ABkLG08b//jSmfSPR
         +8Mw==
X-Gm-Message-State: AOAM531xYGbkR2xEjUr/Yo6cI3U/YBk9YL2zOCfuoAZfdRNd16DJKdEA
	8RLYaM9EzdVjO5iiZK3DVps=
X-Google-Smtp-Source: ABdhPJyo00H2FtinmFXnjkNd5cebQIo2W1HPczLJ5tdFGSWoqJCNyownBl2nAe4SmZ/n+O60Cnbl4g==
X-Received: by 2002:a05:6a00:170d:b0:3f3:bcdb:4883 with SMTP id h13-20020a056a00170d00b003f3bcdb4883mr20343497pfc.68.1630384292602;
        Mon, 30 Aug 2021 21:31:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls7160024pfa.5.gmail; Mon, 30 Aug
 2021 21:31:32 -0700 (PDT)
X-Received: by 2002:a63:f62:: with SMTP id 34mr25086067pgp.159.1630384291866;
        Mon, 30 Aug 2021 21:31:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630384291; cv=none;
        d=google.com; s=arc-20160816;
        b=Fa+7mvZ2YM4WSO8yrmwKj7WK6oGgpLx9MZG1sQt/dKK/J5zlRK1Mh7dm+4n3oZX1wD
         YW+s4FSY2cFofbUg7R1mViiGpedIN2iVN8xj9qINhkYUz9w1erqN/kCnu6MSQbkwEqU2
         o6mO0WgMOLUSUTCnxJyjRu6JBcx1ZsUWRW6YEuAjpSo2zYa1FPBeUozyMw7lY1gZoGI1
         ynG/4jjymCXrblCcu6+Emyl7QbA8juY6X3HX2orLEpbonrb3aJrRwnZ6vvRcJoP7GWZX
         qGm1QLzyVSjrzqKGS/cHhApciFf8xCLBfI6qeW6bmg2xaXFxuyTwWsvFoV+QOlQR0+Cu
         VLrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=A6HQ5o35slS4lhDe1JWfagZktmq0c6Dz9wk6hg5BiZ0=;
        b=LqoFnp/x36nlSc86i4A63KcAMTSYcqC4EnmH+U6fx61N+xG0shxOXXPCbEzqDmohZ9
         N0dEnYSLfzUddtCWEvuvgDS3YvtGiuXfE9D7wGLd5pAKQnm16jzbdfnENqJptRCP3cfg
         yfiq1LJy4gLCy7UUJjn6U58N1Ly7ASSJ53m2Y0Xd4puL+FWEaSZDHJ9JHgURfghzO7Eg
         gzeRM1nbcfkXuH3X+Vi1Mnq6T4OxGPRiyIwzwerq5oMVHPy5HjErtNZeS2gdpfvaWdYy
         WIFZmfOVlV+Fyz/7lDQ1FZabS5Iw+q9Obnf7COsiPXrOveeDD2mzFzdmX0W4xXb9Gvl+
         vT9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S1AT3uix;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::c31 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com. [2607:f8b0:4864:20::c31])
        by gmr-mx.google.com with ESMTPS id m9si1037398pgl.4.2021.08.30.21.31.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 21:31:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::c31 as permitted sender) client-ip=2607:f8b0:4864:20::c31;
Received: by mail-oo1-xc31.google.com with SMTP id v20-20020a4a2554000000b0028f8cc17378so5297549ooe.0
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 21:31:31 -0700 (PDT)
X-Received: by 2002:a4a:8d97:: with SMTP id i23mr12726731ook.4.1630384291086;
        Mon, 30 Aug 2021 21:31:31 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id y11sm3634270otg.58.2021.08.30.21.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Aug 2021 21:31:30 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 30 Aug 2021 21:31:28 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 4/5] Makefile: Enable -Warray-bounds
Message-ID: <20210831043128.GA2749311@roeck-us.net>
References: <20210827163015.3141722-1-keescook@chromium.org>
 <20210827163015.3141722-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210827163015.3141722-5-keescook@chromium.org>
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=S1AT3uix;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::c31 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Fri, Aug 27, 2021 at 09:30:14AM -0700, Kees Cook wrote:
> With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
> coverage, it is now possible to enable -Warray-bounds. Since both
> GCC and Clang include -Warray-bounds in -Wall, we just need to stop
> disabling it.
> 
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Cc: linux-kbuild@vger.kernel.org
> Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  Makefile | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index e4f5895badb5..8e7e73a642e2 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -995,7 +995,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
>  
>  # We'll want to enable this eventually, but it's not going away for 5.7 at least
>  KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
> -KBUILD_CFLAGS += $(call cc-disable-warning, array-bounds)
>  KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
>  

This patch causes 'alpha' builds to fail when trying to build an image with
gcc 11.2.

In file included from include/linux/string.h:20,
                 from include/linux/bitmap.h:11,
                 from include/linux/cpumask.h:12,
                 from include/linux/smp.h:13,
                 from include/linux/lockdep.h:14,
                 from include/linux/spinlock.h:63,
                 from include/linux/mmzone.h:8,
                 from include/linux/gfp.h:6,
                 from include/linux/mm.h:10,
                 from include/linux/pagemap.h:8,
                 from arch/alpha/mm/init.c:10:
In function '__memset',
    inlined from '__bad_pagetable' at arch/alpha/mm/init.c:79:2:
arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);
      |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
In function '__memset',
    inlined from '__bad_page' at arch/alpha/mm/init.c:86:2:
arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);
      |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
In function '__memset',
    inlined from 'paging_init' at arch/alpha/mm/init.c:256:2:
arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
   37 |                         return __builtin_memset(s, c, n);

Seen in next-20210830.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831043128.GA2749311%40roeck-us.net.
