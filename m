Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBF7BZL6QKGQEKYGR56Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 938D72B4BF5
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 18:02:16 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id f66sf8389079oib.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 09:02:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605546135; cv=pass;
        d=google.com; s=arc-20160816;
        b=gvm72/aV0TRHnQqBeH9M0BvcOFPABGNe9uN5+/7KyEWHTShfawitksWEucRT58Oeny
         ESd4NkMdq8JF+3+WpOW5hcIWKHoaKe5jRMWeVWYhvVqm/y2+FyX+cHp9oTGoXG9dpc6N
         jZMA2PbXFkOv2lGy4jxok1v6lKh+iTl1ZkjAF6wM56bzx8lNcdiz9TZ0V9c+gKvnKmL8
         M+wykwOjOKSF4hfNGOj1c0dDTsAYKHcUwJIVZHd/vtnDLnltR3+b96cNPG8w7ywO/lpj
         Ff7fJi15mA6td6QIaBveyPkjdHFsB1zf7IaT/gGHyC3t70ywE2FkSzdKHyOmWdJHNL9V
         y82Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xjS/Khe85sR+/lscTrEqtebxqEsL8dbctTRG05vX8cE=;
        b=V9B8znCMDCNn/UyZ7C+uJaHwJwvOnGc6ywK7mX+tjlDNbDZrP6efN917mvCkp20VPT
         aNlPm8ng5GK1sv9oz1P2nHMlPZDLuEsPAbn0ShF6FegABY71nK7nG2quOdAjpGI5UM2X
         iu28zmg5BHW48a7yMdflZ6I5KtlZwa9yTnclLwk5ADyU2FMfr6Zn+rjh/yookP2t9NZY
         ZQk2K9KdbE9KmAYWsdvdO54H5iMFzI0ike1AMS+JSWFC6PUhfIx+OCIpIN9T9qNwaKSs
         QR6yEi01gwQbCQJ+BjF49DO3DYhgqCvzS2RtrjXCPKJKfEzT7dGpSL+Mu7xy0ZD/FEz3
         ZqHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C4V1QzVD;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xjS/Khe85sR+/lscTrEqtebxqEsL8dbctTRG05vX8cE=;
        b=rIpJuls21dAyUsZWCp+Z+eaMCl0xlg7QRfRyaLrntdlvZHXNA8DREV1lpIYyIfcLTT
         9nCkLErw88oWpa7GzbkBf66K8bD5zEQWF5WULjSUn+QWwVrmfe72AGh/UcTamGkq9vGA
         yZt+O+oa5D8tgvI5rau+0F8GwRAZQ0DLTwejgcUxcqWNwjEVaggZb6ZZ/3wiISlf7I2Y
         QjyOnRZ73HNzlMxshQb1TT8+teyXVQZd74So/0vygp7ZudjupIpQRPolO0Y05b/2zkvS
         DLmiGbi/31CUFlSWV2DOOJUh41Q40WN/Qvgyrz+2qWWhOj9u7jOISiIiDrNv+LQC0juW
         dbIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xjS/Khe85sR+/lscTrEqtebxqEsL8dbctTRG05vX8cE=;
        b=VCQanUGhJhYyQT/ZKv72t8AGJ107STiwxJl6wCcXFDIzPLj2F64mlGyJ82UPmdtcyx
         o7h9itwuBq226BiDsOIaWdkLVYxFrVALLXRlKWxnnoazWdZgN5kbsVZuZuOCA+XR5Dkn
         RznD2terVRMWtBEza07h6wDT+pZ//8Fu0wAAqbesVjLz65So8Qg5qnyFIrG6E2KKzzkf
         VATR0ZNXI8KutJoABsORIwhH3VxoYqFlVkLbE/vpyIJ0fsGaA5LSJtSQ+QBFlMDNurBZ
         ZQgLHJSan8gA/Ufoe+u/GN+frkgRQWnKM70ujqiDwntZt4gY58ANtA3oDBFzdjh0SFTW
         J3EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xMAaUIwusCUClaeSDyz+FDl99G574YezQ1i6/oHVLFubRQuo3
	jn1K8qfScwBBt0CR+gLErhM=
X-Google-Smtp-Source: ABdhPJyqXg2OdBypQEe/HllGof2HswzH+PwrN13o7DvHeiX+xNcRRKoF2PRLTpqobVqiWotgjLAOPQ==
X-Received: by 2002:aca:fdd4:: with SMTP id b203mr305945oii.152.1605546135566;
        Mon, 16 Nov 2020 09:02:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7994:: with SMTP id h20ls3447153otm.2.gmail; Mon, 16 Nov
 2020 09:02:15 -0800 (PST)
X-Received: by 2002:a05:6830:3155:: with SMTP id c21mr147093ots.281.1605546135191;
        Mon, 16 Nov 2020 09:02:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605546135; cv=none;
        d=google.com; s=arc-20160816;
        b=D6xgfE51uQ6fSte1PSEy6yhF3G+jXRuFpbODawQJHD/klSRlXh9iQPsRJxmYyzEJCp
         549tmZOyK0NP/xQPuzTRH/b76MGd7SLVkScv+MCmLQeRSP1NjvyCnkcshWPT+HWv7UYH
         CusPr5OCGLgQTOYBzdeTGILje7OWjDb9Ug2L2mLQoGh57Uqmg+Ym6ZppnDY7JQDQKs31
         eJUQSeGy50lgni7yy+YOCSeR2SF1JkY3vxEkf6YMC/VlTUxhfn50FuIMK2uKKISIHMIF
         sicrG9JYGl+EUrRfSI1JXeEPqubYjYifQ6euiicAV/NW/urEN4PDqM9sJMyGCS3PSFOf
         vdLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SSEa3gEZdCFjYvKXHpgkPTUxZ6cOQaisj9t390pfW98=;
        b=uoIlZD/P881iJeYymtvqcWqzYjwJI6UCgAEPjKiNG/IaLC6afEORCpz68yjFQiXkM7
         q78HusO2xpgBf04wjHfEP0WVZjVFtcekuKUi8GlM/QeqHezAozDgU8RaYPoGg3PnlqZM
         IK5S4OIEN8iX+MHtgzWbWhaQt8XigwproBFlzvwyiSrA6OWQ/tz3pT9ZaNrtkGlU3HjF
         pjrFclEzjCSXs1syOeX7Hd/DhCjB0Id/3Csrg2/Eb2sK8pcC5M657nisofZ+HM+hHUPn
         Hep3o2E6WV16id846mZl6uaJNwXHqxMhJ+Ynroe2zXfucGgFNbdl+zF3zDd2itiV7TKa
         hsLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C4V1QzVD;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t11si469573oig.0.2020.11.16.09.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 09:02:15 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1948820E65;
	Mon, 16 Nov 2020 17:02:14 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id D9EF8411D1; Mon, 16 Nov 2020 14:02:11 -0300 (-03)
Date: Mon, 16 Nov 2020 14:02:11 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Fangrui Song <maskray@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Dan Williams <dan.j.williams@intel.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Ian Rogers <irogers@google.com>
Subject: Re: [PATCH] perf bench: Update arch/x86/lib/mem{cpy,set}_64.S
Message-ID: <20201116170211.GF509215@kernel.org>
References: <20201104005609.1316230-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201104005609.1316230-1-maskray@google.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=C4V1QzVD;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Em Tue, Nov 03, 2020 at 04:56:09PM -0800, Fangrui Song escreveu:
> In memset_64.S, the macros expand to `.weak MEMSET ... .globl MEMSET`
> which will produce a STB_WEAK MEMSET with GNU as but STB_GLOBAL MEMSET
> with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> https://reviews.llvm.org/D90108) will error on such an overridden symbol
> binding. memcpy_64.S is similar.
> 
> Port http://lore.kernel.org/r/20201103012358.168682-1-maskray@google.com
> ("x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S")
> to fix the issue. Additionally, port SYM_L_WEAK and SYM_FUNC_START_WEAK
> from include/linux/linkage.h to tools/perf/util/include/linux/linkage.h

Sorry, I noticed this just now and I have done this update already, will
send to Linus soon.

- Arnaldo
 
> Fixes: 7d7d1bf1d1da ("perf bench: Copy kernel files needed to build mem{cpy,set} x86_64 benchmarks")
> Link: https://lore.kernel.org/r/20201103012358.168682-1-maskray@google.com
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  tools/arch/x86/lib/memcpy_64.S          | 4 +---
>  tools/arch/x86/lib/memset_64.S          | 4 +---
>  tools/perf/util/include/linux/linkage.h | 7 +++++++
>  3 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/arch/x86/lib/memcpy_64.S b/tools/arch/x86/lib/memcpy_64.S
> index 0b5b8ae56bd9..9428f251df0f 100644
> --- a/tools/arch/x86/lib/memcpy_64.S
> +++ b/tools/arch/x86/lib/memcpy_64.S
> @@ -16,8 +16,6 @@
>   * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
>   */
>  
> -.weak memcpy
> -
>  /*
>   * memcpy - Copy a memory block.
>   *
> @@ -30,7 +28,7 @@
>   * rax original destination
>   */
>  SYM_FUNC_START_ALIAS(__memcpy)
> -SYM_FUNC_START_LOCAL(memcpy)
> +SYM_FUNC_START_WEAK(memcpy)
>  	ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
>  		      "jmp memcpy_erms", X86_FEATURE_ERMS
>  
> diff --git a/tools/arch/x86/lib/memset_64.S b/tools/arch/x86/lib/memset_64.S
> index fd5d25a474b7..1f9b11f9244d 100644
> --- a/tools/arch/x86/lib/memset_64.S
> +++ b/tools/arch/x86/lib/memset_64.S
> @@ -5,8 +5,6 @@
>  #include <asm/cpufeatures.h>
>  #include <asm/alternative-asm.h>
>  
> -.weak memset
> -
>  /*
>   * ISO C memset - set a memory block to a byte value. This function uses fast
>   * string to get better performance than the original function. The code is
> @@ -18,7 +16,7 @@
>   *
>   * rax   original destination
>   */
> -SYM_FUNC_START_ALIAS(memset)
> +SYM_FUNC_START_WEAK(memset)
>  SYM_FUNC_START(__memset)
>  	/*
>  	 * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
> diff --git a/tools/perf/util/include/linux/linkage.h b/tools/perf/util/include/linux/linkage.h
> index b8a5159361b4..0e493bf3151b 100644
> --- a/tools/perf/util/include/linux/linkage.h
> +++ b/tools/perf/util/include/linux/linkage.h
> @@ -25,6 +25,7 @@
>  
>  /* SYM_L_* -- linkage of symbols */
>  #define SYM_L_GLOBAL(name)			.globl name
> +#define SYM_L_WEAK(name)			.weak name
>  #define SYM_L_LOCAL(name)			/* nothing */
>  
>  #define ALIGN __ALIGN
> @@ -78,6 +79,12 @@
>  	SYM_START(name, SYM_L_LOCAL, SYM_A_ALIGN)
>  #endif
>  
> +/* SYM_FUNC_START_WEAK -- use for weak functions */
> +#ifndef SYM_FUNC_START_WEAK
> +#define SYM_FUNC_START_WEAK(name)			\
> +	SYM_START(name, SYM_L_WEAK, SYM_A_ALIGN)
> +#endif
> +
>  /* SYM_FUNC_END_ALIAS -- the end of LOCAL_ALIASed or ALIASed function */
>  #ifndef SYM_FUNC_END_ALIAS
>  #define SYM_FUNC_END_ALIAS(name)			\
> -- 
> 2.29.1.341.ge80a0c044ae-goog
> 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116170211.GF509215%40kernel.org.
