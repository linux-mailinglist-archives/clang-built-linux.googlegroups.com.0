Return-Path: <clang-built-linux+bncBCT4XGV33UIBBLM73H7QKGQEPDMF4OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C81F2EC730
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 01:02:54 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id 82sf3153718oie.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 16:02:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609977773; cv=pass;
        d=google.com; s=arc-20160816;
        b=BCRgkrjumHoufNeIyRhqTFT0VJMM53UUmvNY5XIIn+KHoCYpESB9jUpytQckQdrY7B
         rZ/XxhPW//sj85DSKrx4CB+aNP5MOqOV26mZhbzh0YzqslYc3hvePTe/UF8WMY4qMfiY
         lJa9KwoWnYpuqAMdCy6ToEfoLcgk/sOBbnDp2c+2Q9+yEUUBn7Y1duSHAmInBMkQBNYs
         +hD+EL1H5X0CABFPmyfQ3xxyJuhUeUfcs5ekSpr6BailzQMZrReGP4d2vnYIYuvsg7U1
         XnAbUvPDryEav5sY+0z3fqaMA+fD2Vm5KpBcJ+OJny04CWkcDTuVYQRCjkbrpPpVhZ4+
         6suw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Knm5NSnttS5T96swvcg7VcC1QOEAKz0Iq0ELD+1qtAc=;
        b=meN//zBZouisRPV1DDJTHK7IyaCMDxtBnmqmWjBaFe4skU0mgdtpBTYuXi3NBsGcpv
         cQYhGmeEhxAcsya4x+WW57VxALOguzUGDi3kpVJjdj/Z3vZMhq5RWTi1GQOzpMB1nno7
         CwfLrcZb9mkLtrnIJVYJc88u7s0P1OhyXaEJOy4FL8n9pno5X29//L867aTBwJcN0Vjd
         oRLI1+g+7sziKaF8bT9vYUOY/kITi/q3/3GyMrd9ge1cKJgHSi6coWllkoRKvvPeInw5
         pV/MOkhAodfxxoPEszzjfYCrxShxDNtHR33yu2TKL08z4B4tzwuynueHvUpRS2PV+msX
         QdwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b="GXLlXKn/";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Knm5NSnttS5T96swvcg7VcC1QOEAKz0Iq0ELD+1qtAc=;
        b=ti0Qa2+CUy3lPmU7e2ic8cNcVvldze3LwyA908OpygJ7RdBAJVwDuA8mlcCzV8LNI0
         5RAb6j4VxgPpsiZqji3+x6JEj6LoCWhaGeXaQPbKCQ04XLx6ZoZSq+iduo38bN7Ws5p6
         TIMnZB5GvSQWFrKCm5b+Yloq5ljaQrx5N+LS4cKMBinBE8ez71elTi8xYPu0ROIFn47W
         2ihyUoi9cyLRXZzqJSBSb3ipVyZmelUXfBBIP1/vTzO9/ys07cDp08KFz3kPQ9SbLMU6
         CCm00vhnjl1ZUWWVKccL0Ksvsee/ufJCeO+rpkk/no2v0Mn8dHMWeF1VPvib1Dt5zwjh
         gSiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Knm5NSnttS5T96swvcg7VcC1QOEAKz0Iq0ELD+1qtAc=;
        b=e/ptoY9McURu/tq39a2LtJxcosOYwmXnsWlzbfIGIVJKczAI3u4zsng2bb5mZf9NO3
         JmiG0t4XqJ+3Z76INribq97R4p98PLGZhQeGpSnvU/8gkVXV0KlKp7utDRyEKHdvhBLy
         xPvClT9E5ZL2XW8BNnRTO0OqXsCV5dDO0lsHV6unrPpmAPQVKo3tGIQAPQpmgeJMzLK7
         xbFzcgPe0U7ZhbVMmxKdsmD8bfWm9EzIU5Ie9SRESXom7GEVvH3u237pwHA0FGomWJUL
         QjwP8OzoscJYQqX5hueUuIKKlEnmMUyn3B+SE601IDgXsQJcA9PMIiB/ElcfVkmCAVEu
         OILg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327l5/1+DWQaI/rmwRVFyQsPBfB0fu9LPpOUgsGFFzB+ZpRL8xw
	i8eShRZ41ma2UiZwQSwa50M=
X-Google-Smtp-Source: ABdhPJxVKmpZ6Aoddeq3FyFD1lWgeMj+jzPPAmz7tk/qM8GBkCAPoFZT7XSjAo3DFcRA1PevFx/1qA==
X-Received: by 2002:aca:1006:: with SMTP id 6mr4725824oiq.159.1609977773370;
        Wed, 06 Jan 2021 16:02:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:7ce:: with SMTP id f14ls1263969oij.5.gmail; Wed, 06
 Jan 2021 16:02:53 -0800 (PST)
X-Received: by 2002:aca:4d08:: with SMTP id a8mr4906169oib.128.1609977772924;
        Wed, 06 Jan 2021 16:02:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609977772; cv=none;
        d=google.com; s=arc-20160816;
        b=b887IZfivKxTVYrXsKWZ/AEMUbED3J2q1fKaM6zXVlLggBF9LXvGtEU8Owrw3jTSMZ
         PfCfaA9pcH4O/8CqTKtN8ksCJJVlT+my341AymQqgucr91wDWDR1OW+XMGdFNZjw2Bm0
         GA1Fxx1ip849VDyyqPH25uSRvxUEJfmRG1k1w5N+HAN5STRHodzzOWaw+RfmewjktdvH
         3adtB3Y0GSm5mEgHKiTnFY2WND86IQKueZYGna+sU91YayN1Oj7kqhmvenILSZu50uAZ
         axk7EBmfbcbhh1F8WbUaT8yyOiL+LHmPttTL0S20oBuR+9bAeyWHl2gm9bASF8Fr6dTv
         QS2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cUicbyoqsaG7ySVGz0eOjLfSrkUqs8gaXEaBZCrQ7eY=;
        b=OqCY7YcrnYeGAwQO1/lxDuLPQql/w+8Zw3kmRjFKcnDlzaQXo3UnY+hZHkxlZJoP68
         A3amuOEpVMQyiDP/N7LOvzia5HIVMyxNQ02TxG62tZosWsAfBmW8kRsfa8sKHbNyhBvx
         zoZWs/RIb3NU9kVr5eYDmfQouvvM+2cjwf3vIEgmLsjM7Cm//r9FnYl59zNGTs/crtHZ
         WLpJ69AW6W7q23E/d1I9IaPbpMPDUtcYUG3R9hRBV/pXy0J6dO9br5noyb5F7/a887Wl
         ssu2hpo+Yrjwn34VynwWd20vqPQi4gSU/bTN8hN+qZrAHZrx+779yMThSuD1EopDslBw
         IvVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b="GXLlXKn/";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s126si236266ooa.0.2021.01.06.16.02.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 16:02:52 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 484F723118;
	Thu,  7 Jan 2021 00:02:51 +0000 (UTC)
Date: Wed, 6 Jan 2021 16:02:50 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Andrey Konovalov <andreyknvl@google.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dmitry Vyukov <dvyukov@google.com>, Alexander Potapenko
 <glider@google.com>, Marco Elver <elver@google.com>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Linux Memory
 Management List <linux-mm@kvack.org>, Will Deacon <will.deacon@arm.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Evgenii Stepanov
 <eugenis@google.com>
Subject: Re: [PATCH 10/11] kasan: fix bug detection via ksize for HW_TAGS
 mode
Message-Id: <20210106160250.24b79d8d119a7ff0a5414f3f@linux-foundation.org>
In-Reply-To: <202101060828.QFNIkNMv-lkp@intel.com>
References: <a83aa371e2ef96e79cbdefceebaa960a34957a79.1609871239.git.andreyknvl@google.com>
	<202101060828.QFNIkNMv-lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b="GXLlXKn/";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Wed, 6 Jan 2021 08:09:00 +0800 kernel test robot <lkp@intel.com> wrote:

> Hi Andrey,
>    In file included from arch/x86/boot/compressed/cmdline.c:2:
>    In file included from arch/x86/boot/compressed/misc.h:30:
>    In file included from include/linux/acpi.h:14:
>    In file included from include/linux/resource_ext.h:11:
>    In file included from include/linux/slab.h:136:
> >> include/linux/kasan.h:314:77: warning: non-void function does not return a value [-Wreturn-type]
>    static inline bool kasan_check_byte(const void *address, unsigned long ip) {}
>                                                                                ^
>    1 warning generated.
> 

This?

--- a/include/linux/kasan.h~kasan-fix-bug-detection-via-ksize-for-hw_tags-mode-fix
+++ a/include/linux/kasan.h
@@ -311,7 +311,10 @@ static inline void *kasan_krealloc(const
 	return (void *)object;
 }
 static inline void kasan_kfree_large(void *ptr, unsigned long ip) {}
-static inline bool kasan_check_byte(const void *address, unsigned long ip) {}
+static inline bool kasan_check_byte(const void *address, unsigned long ip)
+{
+	return true;
+}
 
 #endif /* CONFIG_KASAN */
 

btw, "kasan_check_byte" isn't a good function name.  Check for what? 
Does it return true for a check which passed, or for a check which
failed?  Something like "kasan_byte_valid" would be better - the name
explains the return value.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210106160250.24b79d8d119a7ff0a5414f3f%40linux-foundation.org.
