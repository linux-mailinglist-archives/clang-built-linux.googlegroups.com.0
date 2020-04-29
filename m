Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBIMQUX2QKGQEMMJGVGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA4B1BD823
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 11:25:54 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id 7sf1929623ooi.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 02:25:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588152353; cv=pass;
        d=google.com; s=arc-20160816;
        b=lSZIpFq4DjW9Xfo6k54ClFylBeiI5egw2Db4FUYqyhu+AcjRHDJx9mAgIH4Rs9TAJw
         /hywzoCoPu0wzhz57IvXjxBf1GMddvxOyeayBZHMx3Dz39e8b1cPqxGaXs5agWSP916S
         9Q3T3djTokl4tQgFuGTQqxUvdKt6V4luECwgL1I8by4EfMMPMogTgMDLoydA9TrTupMX
         0YvczsTGq5BmhN0juQiQqTNE1QdjnPF7EKkVjZo4VkZ6EXy7N0XT+QeIFqmePFZIa0Vn
         YR9q/MnpFxhLsrnfIJf6Tdg4ALijF0I0Y8oJchfz+B0/Co7A5KMiQDdUrqz+TEI1Cttt
         HCOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xbZWbnalzpgaRxIzsxIkoTEOphHT0Zoi6GfHVe1SsGU=;
        b=OMZi8+b/1jQlZWkf9s6gh7OOYaNn4MXK5QutTY0bJh18uG3GLHfZSAaxtwuJk4BqsS
         jjrqalV4PXBwe19oA0uOfIIyKSM5SF5chGGsRbyBXtB7Q2+wfxbEW9R6J4HkNBqr0TBV
         LRBfVdjAn/O404ZkD7LP2V674G3MKczEm6MJ3tD6gggQXsxm92LPJi7jn1n+Qkp0c083
         Uyjar86Enxvr+ExbS7BPavBe1YCvTJEmHoKH7BRiiM71IQqq8ryVgEhGxyUde/iEZtob
         +7ySWoBfgZCalst8g+qxWVBqwLMN6pqzR/i4bAvKZwEUElzmQDDPcMu8qz3OVKX+tUes
         kFdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xbZWbnalzpgaRxIzsxIkoTEOphHT0Zoi6GfHVe1SsGU=;
        b=buhD3NfpZU0co5QbmhtE/c5io0zBup68TxlasrxRvbOcTh34AQu8pOlyDEtYPIJl/t
         boGM8J1PWoUGxEHaRS8eGmTe6kf4kMr6sM/t7Q77ewXZQa3Fsexd4fSuJFHf4Edw6+Dv
         QDHIoRaEGLfkkOI/vKIotWX1CoqhluLeGskpUfe1zka3nDSR0JPdkMk/1Ms6FSq5MsxQ
         VP2rIlLLZ32RNojT1ch/EBV0u8EaZjR2t/9Tl7+5h6CipuFmSDsEHIaeUbeT6qCqY64H
         D0TGg+YGlOLYnAHaFm9yXEOwOngnIkG0Vn+4+7YXOAvR6XHqdw5mldajK1/ZUs1Rm3St
         JPnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xbZWbnalzpgaRxIzsxIkoTEOphHT0Zoi6GfHVe1SsGU=;
        b=fz78sIyTc7ODuyWlNoWFXr+x0Lu8hkD7RLV2CfEyHD80KE2T3izlHPeuTIgm0u92JA
         RkgWHSnKnrrTH6eTVpDZEQU01Vki8W1o9t9wP5NiEfBBrEAUkQvdJVcFetcB94D8pY18
         cMT2JH4xuEUQgSCumkEKYBqj/hNox6GrzaoSDwNBjnpZYK87+1Fso/CTxl00NXfT29mJ
         B1XCXLIIm/z38BNEF74k76DPZ7D1h5h6oPWAfz9No+mYJ45fg97HXPjcMsYKnN4+PHMF
         9fuTSDhThT6ifj3EHneDMYU1lzCfclyYbR2LGaoOPfJRVO1wxNh9etswbNwR/99Klpbn
         t3sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua5axo1C/vOJk/lZNqmgKikaC3l7+y6uhZ+g9xK2RrJnY31umsp
	ycLy0HoDbim29UTiBGVxGsg=
X-Google-Smtp-Source: APiQypL30s3eVZTEAQaejRIx1bF3uY0BrGrSbnXMaVhrC+mC/Cayd+aWIQXuqzzcXNE/xNidxI5WpQ==
X-Received: by 2002:a05:6830:120e:: with SMTP id r14mr2868495otp.232.1588152353496;
        Wed, 29 Apr 2020 02:25:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3b23:: with SMTP id z32ls6576917otb.1.gmail; Wed, 29 Apr
 2020 02:25:53 -0700 (PDT)
X-Received: by 2002:a9d:202:: with SMTP id 2mr27465681otb.255.1588152353135;
        Wed, 29 Apr 2020 02:25:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588152353; cv=none;
        d=google.com; s=arc-20160816;
        b=pkZeViiX2kGZCyfhs8zi1xnZ1Xt7pO2Sb0BhYNTYS0wBGIj29v9NqWlAU1Q+DgxTCC
         wBUUdLMnY2xlHAaZsV4wl+GPCy2GzxdZNQ8W8uBKulFtcfZwXgcytxeTWJGt4OMqCoSO
         WrsnnAWI4YL18xcnILVVMeaDmg3otEKkmUUrbd4lZEhB9QCiLmGVJxq0rtPblS+7XY+d
         abTT0AP+ltoqNm1gPzGyWksBZyWrPdc7JE8UmVF4NRsROv8DdNCFOxFPGbPnKYwXdr1W
         eKeYYymieeUNW9ifKu9de8ZRlsnPetQO/6KSsUuPVnDx/9Imo3afyH9Y/Jkt1DG2Kjgv
         4jMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=dM4H95vo2/d8irlc8T3cXl0rvxyVjVJ1z7Mlyp1ZPH0=;
        b=I0jfQ/5ysqaQ6ZgEQZR0clW/ofjnR4jKzSIWRRcJBV6XpUN1+sRuGP4IufHxvQYhDm
         /2UvDgSU3sx1aXuPYyyPN/dJZcGNkPnhqkLbfPGnpycq5a3Vgl1FgamQgjoMywgkMsW9
         q3oih0T+u4YSOSz77d7XNU0y2XEevBd/jicPnUhpIfrN2Q9jEz7q6Xo8pR+RZiZ7ZzRD
         UCPDZjUHJFoWAJZ5Z4TQJa8jWBX37hI0bpHVP5UIgq75KBbzCqYSI4AixM9V9xPSzyA1
         w0BoUW2wX/akxPfA2GM9EzlbK5ZA1Y5WooIR4hKnXEWNbrhBhtHzc/fz3RowvpsYK+Qh
         r3AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t17si15297ooq.1.2020.04.29.02.25.53;
        Wed, 29 Apr 2020 02:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7E5EC14;
	Wed, 29 Apr 2020 02:25:52 -0700 (PDT)
Received: from [10.37.8.197] (unknown [10.37.8.197])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 341983F73D;
	Wed, 29 Apr 2020 02:25:51 -0700 (PDT)
Subject: Re: [android-common:android-5.4 16/36]
 include/vdso/clocksource.h:9:10: fatal error: 'asm/vdso/clocksource.h' file
 not found
To: Nick Desaulniers <ndesaulniers@google.com>, Todd Kjos <tkjos@google.com>,
 Mark Salyzyn <salyzyn@google.com>, Mark Salyzyn <salyzyn@android.com>
Cc: cros-kernel-buildreports@googlegroups.com, kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild test robot <lkp@intel.com>
References: <202004281818.1ptgznrP%lkp@intel.com>
 <CAKwvOd=-XNzdoe_GhC6guj63Y_nfKG1FFUZ=izNGCk=qX6iTVQ@mail.gmail.com>
 <CAHRSSEz0Zfko+yBj5JKYOj5wYS_8vfC7QfqBnWfNY1opaG2N3w@mail.gmail.com>
 <CAKwvOdnJCP8YYCGS5z4_NSf9poSzHAwztvbhvVczV4Couu4H9w@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <a985852f-7c06-9194-fdea-786c981ffc4d@arm.com>
Date: Wed, 29 Apr 2020 10:26:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnJCP8YYCGS5z4_NSf9poSzHAwztvbhvVczV4Couu4H9w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Hi Nick,

On 4/28/20 5:46 PM, Nick Desaulniers wrote:
> so MIPS randconfig is not interesting? ;) haha
> Anyways the patch in question is the compat vdso stuff.  Mark might
> want to keep a look out for this report on other
> architectures/configs. Randconfig may have found a config that's
> actually broken.
> 
> Though it may be the case that patch 16/32 does have a bug that's
> fixed later in the series, and bisection converged/stopped early on
> that patch.  If that's the case, something else may actually be broken
> for that config in that tree.
> 

The issue you are reporting was fixed by [1] and the patch is part of 5.7-rc<x>.
Could you please verify that it is present in that tree?
If so, your suspect is correct, the issue was fixed by a later patch hence the
problem is somewhere else.

[1] https://www.spinics.net/lists/linux-tip-commits/msg52752.html

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a985852f-7c06-9194-fdea-786c981ffc4d%40arm.com.
