Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK7V36AQMGQE6HQKMGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B7E3256AE
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 20:29:49 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id n1sf1862561iob.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 11:29:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614281388; cv=pass;
        d=google.com; s=arc-20160816;
        b=grDQYCb0jEb0Yea+/L3Jrujs37fcnAWysw8zBG0aV0rCTTwVRZO12qLcrCXkk0PpsU
         erpPOWytAjJsz6VdeJwlEnkEam+Dv8NCaKNdZ4XugPU/FTY5gPA6WqXl6mBRtCNxOoi7
         DEuWoaat9bmS5Lf5xQgCkb5FNL62fb7xvzs5TZhXIOMJ0kxNfR5yiz/nNpJhbq/Ue3YV
         OUR6eeW9nptFA54iVHaWx43MwoD/swu5ch9PvRxEn+N3/Q23gdeWMtmuBw9C1I6Do5dX
         Um28PRonOEViWjmoCCJ5xCtXrhoJsr2XEdx+Jzp7xKGE3SlFK/Hn2BAdr6bcvv6S/HQv
         PsdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=NTA5NmrPGESou8sAHjR59CsSU8R4ugaQhQaKZS2mkCA=;
        b=r6ZvWfMgeCykPuM5bgJvtxWPkvCACOCUxNXoP39tmrpc2M2jXGDlVVVcwSzV2DoUvq
         NWYJVfhfFzSCTNZgjuxd/5xGgaXTnBCB4IBAYGB54mB7xxuXgyVutIHD7RHatxWd4JV1
         ucd37u4CXBlWO77gqdMEQHSA6fYKDMz5FATmor2ILPeyRqnU71flhZVOdsSe+Vwr02m0
         fjckDBOpfK8oL698f+n7Pf1Aru4TB4P3tIPSuPQhpXMPxU7PDeYGm0npc398XHLGZwAJ
         GC2N8mlM4pbc63slpJhK7SBLluh7b08HH3PXzyMxg72BzgrV/1bJu+KRX9c5CiuNqHSJ
         Z9Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TIk98Mwy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NTA5NmrPGESou8sAHjR59CsSU8R4ugaQhQaKZS2mkCA=;
        b=HvUfkYEOFjeU0oz1PhQii7aToXNspT3/KysHYzfBwM99wd/wxi5D7Rus0ssZkzVpyh
         n7BBtfF8qyNdTMamRLde4U+7QqnRp9UEAaTsVuFYjI3b/L6IOwkWASIh/aAmxKLCzPlq
         5/ci/BDNnVfUOAI8ky9Ec8z/tTi8Erqy2zXLCC6nrKdKuSf7l9AHL4mI+OM88pHsN/NN
         sqmS8LRgL1RD7GUaXS6IYvizDKsm9K12ztKXbQz6M9D7BYm4OzCRV3P/sLZgYeSj6fcE
         zSL722ZPr7OqiI4KKnMa25+ItEQNG8ltHZguCHbwJB2wC/xlnilgFlJhwsUUz2jPfXNt
         xERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NTA5NmrPGESou8sAHjR59CsSU8R4ugaQhQaKZS2mkCA=;
        b=ihD9Z39b/brzTNQsGuO11rFdAAOWq96cqfpywdhbG/4Axz6PDuQc1zU+tRTjVBVK+b
         tAA3HD4XrEsyTmmlIx+gwGXcxZ+2g+gNBOsU8vwHjbn5s222/+ITPfolWyqdVMxB3PeC
         6hq/In54bjVX/MFb1BxSEyLuEwAuByTgBkcd6Crai7ZdjFNmQcFHGqkKyFp6uP4X1VM5
         BUW1ckT2FKB5kNaeLQBwWP4aFBPQvWW5zIA5UUr7fp/lUf2oMRxHaEuQcxjh/XtqaT33
         QnW2XmdY0JIOxdX54c08XddFhLeBMH7z1292vUoBPTTz+VBIpoCPJy5NSwU45ueaWZvR
         Gfpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kE319MzGpf+jtJSyhARl3jLPTNpzV04bfs6H7fRvf910Gh2Zd
	kgmes7bl+tJDcTDvmScd858=
X-Google-Smtp-Source: ABdhPJzRMENZexXv/+drtLKBWvrJKl7txBWOr38qOddUam71cNiuTz2OfXWT2qC/ExuTmblIYZ4Fgw==
X-Received: by 2002:a02:9f14:: with SMTP id z20mr4765138jal.47.1614281387896;
        Thu, 25 Feb 2021 11:29:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8ac3:: with SMTP id e3ls1227187iot.4.gmail; Thu, 25 Feb
 2021 11:29:47 -0800 (PST)
X-Received: by 2002:a05:6e02:1a89:: with SMTP id k9mr3859412ilv.68.1614281387167;
        Thu, 25 Feb 2021 11:29:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614281387; cv=none;
        d=google.com; s=arc-20160816;
        b=tAtu1xdq2zNCdaXOxM/VDBMp69gXO20TGtjKht9eKDMzXJSYsXUKeP4KJrXJhW7uhz
         WJyPOBLnrjc2RlKoc/7/lUQItTSAAMHF39bjhpXaKQOzPDMUZbGyEfRwccrmBlfAAoAa
         co07uLfhEGcqQCs1tCZ/Ixa29vtyK/jRsS1OwKQuVFFCYuQTKSEwJnYrfi+0pqsUDB74
         ZgtWMVEB7dMwYLXEr3xVrXp6MXgZE+S+CUBkC3pQVKWsVNvN9JcWFCy3AzKu2fs3FaKX
         XH0iLSUrsgo4Tp6FPNlmIcposrREKf/ba2a75ppsTpV/cKIMaTU+Z+wCWqhs32o7ZM1j
         VMNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4VTMSsErzKukku0zzN6GHA1w/5hzsFhmm9SUsiZLcmo=;
        b=F6AbH+QvBgCU9z/sHc08bYD2Dn8NeXt1fLTImxbnP89ZCF7TPrOdnOYu8UyKB8W7jc
         7v+gQDuGHuYMDRa6zLQosX2qavyvK7JQ6ujPdvQ6zo8rjwm+W1Cfad8LDLtoFfbKy2Be
         lnJGefE0+y5HnPW1OfSXoGwTmcquVaLazZmKEs8K5YaC3waxy0OLxDQgq7bvMoyc/Bmr
         TWtjgNztaT0lNV3PqjwPrNXWPgeFkehb7Exm0EF32tP4ZfwHbN/fPfx+Ddw/PfMNJfe0
         M47D9gbju/Epg/M+O3c9X1910V2WA06uCoA14ynFdR1Jv8EoXTtI69G96oib7yTDo1Mo
         m9/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TIk98Mwy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si630530ioo.0.2021.02.25.11.29.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 11:29:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D63064F27;
	Thu, 25 Feb 2021 19:29:44 +0000 (UTC)
Date: Thu, 25 Feb 2021 12:29:41 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Miguel Ojeda <ojeda@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Randy Dunlap <rdunlap@infradead.org>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Message-ID: <20210225192941.GA2026@MSI.localdomain>
References: <20210225164513.3667778-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210225164513.3667778-1-arnd@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TIk98Mwy;       spf=pass
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

On Thu, Feb 25, 2021 at 05:45:09PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Separating compiler-clang.h from compiler-gcc.h inadventently dropped the
> definitions of the three HAVE_BUILTIN_BSWAP macros, which requires falling
> back to the open-coded version and hoping that the compiler detects it.
> 
> Since all versions of clang support the __builtin_bswap interfaces,
> add back the flags and have the headers pick these up automatically.
> 
> This results in a 4% improvement of compilation speed for arm defconfig.
> 
> Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  include/linux/compiler-clang.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 6478bff6fcc2..bbfa9ff6a2ec 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -33,6 +33,16 @@
>  #define __no_sanitize_thread
>  #endif
>  
> +/*
> + * sparse (__CHECKER__) pretends to be gcc, but can't do constant
> + * folding in __builtin_bswap*() (yet), so don't set these for it.
> + */
> +#if defined(CONFIG_ARCH_USE_BUILTIN_BSWAP) && !defined(__CHECKER__)
> +#define __HAVE_BUILTIN_BSWAP32__
> +#define __HAVE_BUILTIN_BSWAP64__
> +#define __HAVE_BUILTIN_BSWAP16__
> +#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP && !__CHECKER__ */
> +
>  #if __has_feature(undefined_behavior_sanitizer)
>  /* GCC does not have __SANITIZE_UNDEFINED__ */
>  #define __no_sanitize_undefined \
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225192941.GA2026%40MSI.localdomain.
