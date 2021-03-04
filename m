Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBU7WQSBAMGQELAPC56Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8143932DAA4
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 20:56:04 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id v6sf31762207ybk.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 11:56:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614887763; cv=pass;
        d=google.com; s=arc-20160816;
        b=0PLG0XSMLEGB31Guh9fU3+tV+aRtZjhKn2KmxBA2632knzHXzr7Mypq1TaaWdv2S9g
         goKrpW1+vjUJrAHSsbCiznMunoWrIWvZ75h4ekuQvdTPoiQ5TBO+Z6ZpONsy5K85VC8L
         RTZI9k5Cp60c0IwECA9xyG1SgAYAmmg6gZNemzURcw3UIurSy3XN+p9ioqMLbrLsggUz
         Gf6zLz33zv4Spv0D1347LWgDUhoIo+fbQZid2/9v9nLG3qnHQmLRStEWtcN5ogNgJcSt
         AyMCo1OgahAtyx1Np+eyYsJnZPOfrvtvmlfwaupooTqTUQsmJfXtTzlDL/36b7D/T31m
         Ukgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:to:from:date:sender:dkim-signature;
        bh=4TBWU51l2u8eqgosHDW3AAoErDEhD9toJ5qZQPWYmZc=;
        b=x47x5I2V8R1LFvkXBVM5PXbBWSbgSXf1SR3eBvn5rT7nL1sVHjPsQtfYQ7avplSfb4
         oI6EblUyR9gDuWp1x4xx0P6MXkvLX64jqj/a9dlKe7VYkcRr08fsC48PwtGBuFB7f0qf
         viLu4gEJ6PzbLYBse3r3t6w6cQc0BIrH0LVnatiExQ3Pz/6rHu1DqmfoYsSJeDBLGulK
         1kQURcrcG1tiCCSnnj4AH6R7Vnbg8g6tb/Fj7VVhi9UgEEg8DNbSAaaebqEo0VneYOkk
         sLi+bTbKfiwnrOVohJACe+orsb6mZyrGCwYF0myX9XH4fyYQFgq/h3B0fh5NN+Z+umlA
         1Mtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j87MYaFN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4TBWU51l2u8eqgosHDW3AAoErDEhD9toJ5qZQPWYmZc=;
        b=AuV/rOe8UrOW3HZBU9eL5MCMwxbE/DPVjEHDE7c7LwCKk/qutSNqKN5QqJXj726lhe
         Jmtwr47UhupAMu7p/SGjFyW5BN76H62Gh05D1sQeGB8uaeGfgPjA57bV9nrJB9ap8pVT
         QfmHnJ7/vaYazB6H4O5NT73fn5BdPIMIeQmliFUX1UyeUNCp6k8YuKNX7Tz/GkC/6j1N
         2Cdpd9FSR7BKQZWHFdUt0uMsekiEqrLAi+bpz95LVNyuyrXrZY08VXsHwTIT4+HAD0qA
         xqwEoR7wRxb7j7tvKmgmc1s0n4dlfsaXHu3BCaB34FF8npGtjPXBhJWXDFTmj8gTZlld
         fxZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TBWU51l2u8eqgosHDW3AAoErDEhD9toJ5qZQPWYmZc=;
        b=DFk93ba3Q5cQkf+3345M28m6tBhZNITeK09ZJCLWNMh6dGsQXzRQAyGKPy7j7B8bgc
         7AqrD+G8hyTs2+s7cbBA/W3ZIWSPvN2H811J/ttNBG7BWs2/tfLU7TRIvAuNXowjQiSC
         X6p4m7WXrfZFQAxGL0q5JXzhPXhWb9iXUspOBQpPwgjPeRW+7smuLM8r675XzbMYIPkV
         fFT475/8FentshSFcs260GJlHOWvt7f0itKdBEH03RFlKlN+pECxNnckz5MGSRHiH2EA
         g+NW+4ONb9Q50VAhoQrpHhMdFDH/nXlSlvLzJ0oZBenaXeX1ynTZ4YmmUISezzJnAuzF
         luRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ppau6MjGrZAem+t53iqZEd9a79ZscdloNdbcwUQEVKRzUx8VG
	PfnBVItkT3ybYP26VnAjh8U=
X-Google-Smtp-Source: ABdhPJyIeacT64G0fHUMCEx8xLfJoiugH+PsRK1/2e7b5QOEgikocwiM2+U5PKoxjHXlHi13FklyKQ==
X-Received: by 2002:a25:545:: with SMTP id 66mr8567796ybf.348.1614887763585;
        Thu, 04 Mar 2021 11:56:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bc4c:: with SMTP id d12ls3338832ybk.0.gmail; Thu, 04 Mar
 2021 11:56:03 -0800 (PST)
X-Received: by 2002:a25:4101:: with SMTP id o1mr8797386yba.240.1614887763188;
        Thu, 04 Mar 2021 11:56:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614887763; cv=none;
        d=google.com; s=arc-20160816;
        b=HylVZDscckMHsLtjkVmm8tWQHAIc60jkAp03jS0QteZIRSe0Elje/+oS8X3KIeaO/6
         +cyBmb0lbQvEEO6T4xLVUK8Bh3qENqYJEwhdDn0ymAUj5dISWt+mfXyJJ90gR5tPX+2F
         H/Nmyd7DRYmakdRS16dx7KeF3y53WmnirTQEjNTs30rKNJem88uTwJjEBQxW8pfG81bn
         LtVem489DfnTJuEttGGVNwRG5S1bsHtCfGYWiHkxGrPfm2uns8EIkxn+/qpNkM69AAjT
         EMvqz5feAcCldbmTKeJXweuYZv9OdOlJXTMzhuBKiU4oZTrxtOW68fG96TWEmiSZ7TiM
         NYNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=1hqiKm5l4qRgQNz0FBjhUBKdi8qnWIVgyi1l7oCfpxw=;
        b=d33glbyfF6Gdy8xsq/gdY6JkDYwFIXiZfrlULqniiGbs3Vu7SC3+jZ0UQVfdo/JouQ
         /FAkkFJHHD5hP8hiAX2Zr7L87Vicm0ZawxBZkh5OpuzFNCKDq8nIfDEWxXLk8amjM1da
         io6AzRyZdAds1q4qpSp+u4HzSwHMF+sWDqv1CeDoctGA562MzekAnhdjRSAH8wXFJRBm
         p06cRoL+WiAUtAk2ZtVtPY6ZoMarxNgOrlPfxzTdby/vP3Y7O7AYo/sieJ62XjW4HW5m
         Dj99q3UYSoY81nNuveuQepjaRMkIxOpnBQKdNhPjJuvVrLmZDXhexvc1VYQ4HQyI9x4T
         a+Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j87MYaFN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id s44si18924ybi.3.2021.03.04.11.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 11:56:03 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id ba1so16789448plb.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 11:56:03 -0800 (PST)
X-Received: by 2002:a17:902:509:b029:e5:9944:f763 with SMTP id 9-20020a1709020509b02900e59944f763mr5584907plf.35.1614887761959;
        Thu, 04 Mar 2021 11:56:01 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 2sm200557pfi.116.2021.03.04.11.56.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 11:56:01 -0800 (PST)
Date: Thu, 4 Mar 2021 11:56:00 -0800
From: Kees Cook <keescook@chromium.org>
To: clang-built-linux <clang-built-linux@googlegroups.com>
Subject: per-task stack canaries for arm64 (and riscv)
Message-ID: <202103041153.F42B50404F@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j87MYaFN;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

Is there anyone that might be able to give this bug some love?

https://bugs.llvm.org/show_bug.cgi?id=47341

Right now Clang doesn't support per-task stack canaries on arm64 (nor
riscv), and I think this is sad. :) Notably, Android doesn't benefit
from the recent work done to enable this in the kernel for GCC's
implementation.

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103041153.F42B50404F%40keescook.
