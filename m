Return-Path: <clang-built-linux+bncBDEPBSN75UNRB57CZ3YAKGQE6PE77ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E73131B21
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:15:21 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id r17sf37245599pfl.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:15:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578348920; cv=pass;
        d=google.com; s=arc-20160816;
        b=J2Pq4qIQSwNsPiiOSk8UJyAKc4tkI93XPdM+5AbcUk30FgzR+dE6RFAHygPz1UPhze
         xsMAZalzkvhxLE/vg9zQ2/dLNHBh1z3omzonZ/Tvs+n6kliZuCYXWrhtQ6/tbgIwfl7p
         Wwrozfvuz0uJ0YNFfdSFjruROHc+2B62omjKpaaW21yM6jL/QUkVNa3n1gULSDHDRqXs
         H1FPCxg6/aGjBveypFagM2gSnN45/J8ILzgYbK7Mnyv32kF8rHWsTrFY/RjZIRYmVKXd
         zaC+EE8FTCDvNig84sjfCGMHpJckatkvmkpFJGFOsnAOyoM4C/LFAip/CK+YoUqPimia
         /4cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=R5LAPTGypK9tuPtKu2IHKw/J0EJfDbsJNDbHL4MM3mc=;
        b=Ee3SQUdzBjcSqqoHAb6THTTsG13RfE4T3pFwtiMIU9kAKe0poJ9OttGwQOV05ZG/5b
         8b1OLiMk1CnpB5FkY/g4CJPmtYnEalblA22qWm2D6TGBTZc5Diet7HiC266FfXnBGyhr
         Q0Ky2SFIJVZWpMLVPxAgbLfXmy3YRhMek6Vywv1IvEMadevT1aaYijYhTfEV8DajPtZb
         KIwutNGJbR6xzwMaUtuv7NarhTp3d3HwU/NNZDu/OXYBskd3eO7aoQ5IwWxNV3QS8l6/
         RcArEvOklfrC0t4yefZ8zGG4dFWuOl53JmUeDUCye1A1TTBwbMxj0Hs0yaktezwtbNxt
         QWNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JJJMbzW9;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R5LAPTGypK9tuPtKu2IHKw/J0EJfDbsJNDbHL4MM3mc=;
        b=nlJN/8n2QECyI4FdiSxH5dUBssVuR/GrUwvAnLqeI9bYNx3djGWnXVfkgRZU0qTbKr
         3zP/06/c/13mrS60RerxR2PtXwCA/Bmldt1V0L+NDCYLuG38pZYLyPg/oAjZacLvgm1h
         AOtNte1f/zGTAt/8GPi0embTrB6KpAn+nMHk1US1lTnfejUjxxg0wOhit8QfjyzsTL+f
         Oi7eOnY3YjytJTiH0xHx4mAXyV5oJl7qwqbjdYRWdLmk7L6ZW5wNH5kq9Mp9bGUSkQkn
         ZVK0uyM7qXTTy512+UEJu0cN0OtUZOxM8EsAHOYv2H7CyB6MifzbFqzUBki366c729tv
         4n1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R5LAPTGypK9tuPtKu2IHKw/J0EJfDbsJNDbHL4MM3mc=;
        b=J0hBK6zHQXSzBUpFTIEoWljfWwc4jqGGzkOBeDF/m+cWa0xSRAK/Vi57+vIpv7PkdC
         3vrgV4ebwieCEq72l6dDpyXMbY3fiylNx9PsApaz3dfnNwX+BTazD+pjUuGSfAsj8Dck
         diTjJ8sJEFDYk0y6RgnxeIdzAouM/uCixSQyDfl8Xn0E7W9qZFXPvgm4JTPdxbsp0Ngs
         Fb2kizdt+MFcf9wC2eS+QLjQt1MS5sRsQzmWddM6JK+rNF+3B44SbmPiChQRYlYVjXS1
         2RAAnRdFh0LqNSWymu9HVpmg3cn1aoY5zQx6nZxA9a2ajelK5iFdHBwnrgTaPlK3rBh5
         4TVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R5LAPTGypK9tuPtKu2IHKw/J0EJfDbsJNDbHL4MM3mc=;
        b=bAYDnC2V4b0zdBUynACthHwrdV6h42oIEZMJrIsboY5d3DiefAhExnwqdg2jAsfACP
         75BnY4BVKTM4DZhVVB+VY9RRsUNJKNMcyrPRGyA4WNiFd8OMrAi01wzTMR9SeKDlNytv
         KPnCrILCV9p5yLtWZ1eP7RCp8S58NYmxh7eRmqBnqdZtKr6yrYJ6M3ZNf7q1cMKToR/a
         ZWY0IO1Kh2WBjr2rMCv5NA+vvuHeDvu2VgxvNXVJ9cg2d2LnW4hnc/GXZoN6tSyEp8XH
         L2HLkER6Id3GFCisD6e4VwfAPxEy0m+WKmt19hSNdLXGRMZB7+aHRXHrtsN31vvSvd/1
         GxpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXRZvRgSlIgSv/9uxe9tdsr7eV4Ao865AskhrdXjE70QN23GGs5
	vJL1oqWfuGEoE4imuUZaNlc=
X-Google-Smtp-Source: APXvYqwFaKA6gIib3ihRMVj1hf1uya/r5DhXgYNsUTau2TSsOoW8hv+B5gDthUNj+bOig0P7snJz5g==
X-Received: by 2002:a65:55cd:: with SMTP id k13mr109003469pgs.197.1578348919758;
        Mon, 06 Jan 2020 14:15:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:208:: with SMTP id 8ls15353888pgc.16.gmail; Mon, 06 Jan
 2020 14:15:19 -0800 (PST)
X-Received: by 2002:a63:2063:: with SMTP id r35mr112222679pgm.69.1578348919261;
        Mon, 06 Jan 2020 14:15:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578348919; cv=none;
        d=google.com; s=arc-20160816;
        b=1JTs935fJpIc3lXC4OPvYcEtmfhYLq++7dZjGngpR9b3mlCqtQVGf1LzT6QtrA/jA/
         mBCLMM/Nd3EezKWmg5IoHrW8MQUyodRO1q5waunVGIKNRvMpTTCgXlEPOZQ+lIecDIMu
         /1f3R1oUffuv9geP9uKYrtLiBusFSAknCeW90HITigPA0nAT0r+mTmx/3Uy7aZQ9mBxr
         VLrTtCfmvrnt+MghZmfRGCZkgkb6r91rlRCIRFiRMwLPeMneNj+UuKTKKXKtxJvutZI3
         bh3KQob+qInTT2dletf4cW/eqamqe+9PhE1B0cenM+rmdTcAn53/ttY5lJf56JWbgwIB
         pA0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=VtL/MNOJtUrGbjT5VpkANRdtrGSGAxkiN6V9TVgQwzU=;
        b=Anr6OTm1oKstke6eme/YZi9pmwEEFiYd2ndiSc7H3o1Hvq4bRJvyjNvsm8/O1ZGqyU
         gLFPYpa/yo/eC8Ilb0v83od6nNY6PXudvUl9w+vPI8m5ckFgoYCAdVsrljZVRlYzB0Bq
         hCSCB2hnLzXE963WOECyx9pHs80bo4ouAX+ijdLrKsT+59hBQFCbZdAruJxy6dYQyyE6
         tcDaCJ379/2FeEy4VVhTM9ir6BFSpFRjWqtp1GY28HYP4WyGAMxiwkXL09D6eonHNf8H
         vywTglFLv9ulOvmNDI1XbOdu9O1EjKidpK9cB5vJemSUYFCv89m+SQLBWPV4M5zEvo7M
         8EYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JJJMbzW9;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id i131si2546357pfe.3.2020.01.06.14.15.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:15:19 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id a203so41296247qkc.3
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 14:15:19 -0800 (PST)
X-Received: by 2002:ae9:f819:: with SMTP id x25mr85333165qkh.192.1578348918372;
        Mon, 06 Jan 2020 14:15:18 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id a24sm21452630qkl.82.2020.01.06.14.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 14:15:17 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id B26B540DFD; Mon,  6 Jan 2020 19:15:15 -0300 (-03)
Date: Mon, 6 Jan 2020 19:15:15 -0300
To: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Dennis Schridde <devurandom@gmx.net>,
	Denis Pronin <dannftk@yandex.ru>, Naohiro Aota <naota@elisp.net>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] perf clang: Fix build with Clang 9
Message-ID: <20200106221515.GE11285@kernel.org>
References: <20191228171314.946469-2-mail@maciej.szmigiero.name>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191228171314.946469-2-mail@maciej.szmigiero.name>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JJJMbzW9;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Sat, Dec 28, 2019 at 06:13:14PM +0100, Maciej S. Szmigiero escreveu:
> LLVM D59377 (included in Clang 9) refactored Clang VFS construction a bit,
> which broke perf clang build.
> Let's fix it.
> 
> Signed-off-by: Maciej S. Szmigiero <mail@maciej.szmigiero.name>
> Reviewed-by: Dennis Schridde <devurandom@gmx.net>

Thanks, applied.

- Arnaldo

> ---
>  tools/perf/util/c++/clang.cpp | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/tools/perf/util/c++/clang.cpp b/tools/perf/util/c++/clang.cpp
> index fc361c3f8570..c8885dfa3667 100644
> --- a/tools/perf/util/c++/clang.cpp
> +++ b/tools/perf/util/c++/clang.cpp
> @@ -71,7 +71,11 @@ getModuleFromSource(llvm::opt::ArgStringList CFlags,
>  	CompilerInstance Clang;
>  	Clang.createDiagnostics();
>  
> +#if CLANG_VERSION_MAJOR < 9
>  	Clang.setVirtualFileSystem(&*VFS);
> +#else
> +	Clang.createFileManager(&*VFS);
> +#endif
>  
>  #if CLANG_VERSION_MAJOR < 4
>  	IntrusiveRefCntPtr<CompilerInvocation> CI =

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200106221515.GE11285%40kernel.org.
