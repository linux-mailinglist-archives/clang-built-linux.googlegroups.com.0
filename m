Return-Path: <clang-built-linux+bncBCHI74ELZABRBV7CVCAAMGQEZ64KGZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B63DE2FFA3C
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:58:48 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id t1sf977380otp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:58:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611280727; cv=pass;
        d=google.com; s=arc-20160816;
        b=K1UE9WB5OKQ9sAlELapNTaFr3ZJcYdMVooI8sxBLnKyoP0qwvJiL+PsyEXXrp5rHI2
         3UVVuQDdtRaSOBqOVVmuPVIFW7/njun10eGbk77MBnBH5VC5iMyl8SbPidgQNt8OSbTd
         ShOZzXL/kI+ay3DFaCtZLS/m+PAN6uB24iKyZjDXiY2Kvlou8PKdTDncDEINkAzhrNHF
         UtAKWx/9peonc+s2cHiBeU/skrCnti4m8ThJt5BSfD8TRGqk4Yd0gI2uVfKSAAdOF439
         fuMAWEl5Ik53c8SA+w1i8LHD5I3A6omom4mgHiw1YlwBTHMk4bKui81OAX6Cd/EbXSZD
         kJ1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=gp8QU67PPKkyvE1K5PtuAXxmmHEjGSY+9Uo0MArI6+w=;
        b=VKCbBigq0hTQx8xS9yOOGZOGxk+ZI0kS08BrGRneDBwDjzAHPYpAMj7cGSBJofo/La
         03LHAAcYGeOXthCaL8gUwCYX/fT5lN0kBVKK7vZ0f82qq4zdKRZYO8UmfB52fFUo2qmY
         lHnGn6D3k8hqAGqJS6QOKKN96RCS0mKYs86KYcbl6Hv6QqXgqiPlm2Oa8aizViSfE3Ly
         eq2+8ZLxUEXgyn7FowLvhgO0IGVmuGCYpQgthEJ4Sqg4hmRgn5YmLCYxNANRf6f+OR3m
         Cigi6GN8X0adixTI3vwhBJvDYE1O+tFE6DuuKx4jQrQ2kTa2F9Wf0Xij+cIs70SJ1Pfr
         Ym7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gp8QU67PPKkyvE1K5PtuAXxmmHEjGSY+9Uo0MArI6+w=;
        b=GGhEB1SZzVXuMPcULGpAdR5q+OUNq3J/NVoqmrY0c9uvPlHgTkOX3FIrUOof9rSIYf
         LLO3R5xe9yJnPPxiHagi0ssTF8HLNlzwhlx9AnGWQ9N39ZxlEcLc7vj2YPD1pu1JPwfc
         bcmZkk+uA9WHBAO8dlwcWG6RvGTpMC8FoCUk/z0Hjnze85Rt2eEx62l0SuAaTkcDsxc8
         64GV+OEebkK10JDkZVIAZGTju2QjVQ3G6YCtMSxCH9PRWVJPJ/4ualKmmCJRO0OI/ZKo
         RZHZI6zTJFL/v/zS7GCGPeJgf544Q3mW9F2zfWB5xj34lPF3NdB5CAyReUbMlNwWLUmJ
         bRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gp8QU67PPKkyvE1K5PtuAXxmmHEjGSY+9Uo0MArI6+w=;
        b=QmIHqXQA/HCtQijNuMZlPF49eTs7oAd0qAcUtOFZhVr/fP0wFf3xD3dSrOUMuk+Huj
         sNYZIfD5PiI/yWSrzXHb0hT+RVCGWw92dSFXc/w+uTYdFHIqxC06KU0ZZhmR/SgpldGa
         I6j0baHnBAniijEoprqp7UPB2TLG4n3Y7MT1+e0Y6wWEwI1fzUe+r6ypMNMsF9Bxsbyw
         PR158txqMecdzPj/W5PCi0qHsr/xgxjJ0esyvcTzu1d4/Y6+CuTrwnsAduSJfcFU9pgU
         fD21rKs2T7CCyAirRFkzd+a3XCRgNdS8i1JBV+MuhD6Qei8d68gHhStsrWmAbiOTt0J0
         f/EA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/LKiWv4GKahCki+TrHJKFwTi6hf3PO+w7Jh5kaNvi1rqCI3ba
	RqS+oshMeaUiuduJei6Na8I=
X-Google-Smtp-Source: ABdhPJz1xRUlJGKIJ4CLSOOlv6DlXJFEUN/Pzbbn5H8oCR1LwaEQJRgwTCCSJsWx4GCJkOaFYGUHGQ==
X-Received: by 2002:aca:cd06:: with SMTP id d6mr1738488oig.57.1611280727740;
        Thu, 21 Jan 2021 17:58:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3d36:: with SMTP id a51ls431085otc.3.gmail; Thu, 21 Jan
 2021 17:58:47 -0800 (PST)
X-Received: by 2002:a9d:22a6:: with SMTP id y35mr1592882ota.20.1611280727354;
        Thu, 21 Jan 2021 17:58:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611280727; cv=none;
        d=google.com; s=arc-20160816;
        b=rgAZU2mDD5sI7O7a8yDO5XLDez0l028Oyd+fWaldrhz2o/CoAf2fwGYZQr+LccYLTt
         p5mts2euYJexSJD8IAiTs2nqS5ngl95G/rhKSzn906XdKcymkZtB1EcxojmLqOvKaEFv
         2K4hgz91D3JMLFgYJtbyUL0wT3z9STHe0HVtOoOCgSDI0UCN5qLCfVBwTTw7qHb6wL3f
         qzkDv4QJE4QJaJ2IHInp1/lBBCDwspdpDFIhdYZLf9HsVHcvBsbxFQ5yEMBKkH+9r8h9
         5vVZI3ygelb+931UkEcPUCCrtKaEk2tULhyNm+U3UBD+3woVDvU5FtSn9KIZYTJXJSG7
         M5ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=He7Ipru9SjsghaUbWpf20vtpeeTsE3BSNY4Vx3ovvlQ=;
        b=LDPFwBwUrU3LEl9UTJW/QEfTuMTGLvIwkaS/ynQ0bgWIa8dUl3lICgA/uNUTrwidbk
         eLsfzFtfD4zNPWIoqbBaDZqZaGZPZmVEVIa3H+r0znq8QIKRzXhDYUGvjJdJZFn1Tato
         rgPz82+shNaUVfzu8ce9Dc2eXm4qP9z6Rvg09JqKM15akcgE86APgMD5/DhyNV9yM3Ef
         cTM9Y9ThKgpPABsTbP2DNBmlFjpf+B28UkC7kwbYsLJuHwOMn1WjqILE2X7+waXRY+PX
         NnVVdFd1ltCrwN4lZ104cqwZ3+JP4gFMY+8T9Sv1z106Xygbkr+khE1iBhR8mmD5kRdf
         VT2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id r27si555847oth.2.2021.01.21.17.58.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:58:47 -0800 (PST)
Received-SPF: pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4DMMpT0L3rzjBtN;
	Fri, 22 Jan 2021 09:57:37 +0800 (CST)
Received: from [10.174.177.2] (10.174.177.2) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.498.0; Fri, 22 Jan 2021
 09:58:36 +0800
Subject: Re: [PATCH] mm/zswap: Add return value in zswap_frontswap_load
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Seth Jennings <sjenning@redhat.com>, Dan Streetman <ddstreet@ieee.org>,
	Vitaly Wool <vitaly.wool@konsulko.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Tian Tao <tiantao6@hisilicon.com>,
	<linux-mm@kvack.org>, <linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, "kernelci . org bot"
	<bot@kernelci.org>, kernel test robot <lkp@intel.com>, Andrew Morton
	<akpm@linux-foundation.org>
References: <20210121214804.926843-1-natechancellor@gmail.com>
From: Miaohe Lin <linmiaohe@huawei.com>
Message-ID: <2438a24b-b312-dc91-0ebd-63e3baa2ad6b@huawei.com>
Date: Fri, 22 Jan 2021 09:58:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210121214804.926843-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: [10.174.177.2]
X-CFilter-Loop: Reflected
X-Original-Sender: linmiaohe@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linmiaohe@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=linmiaohe@huawei.com
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

Hi:
On 2021/1/22 5:48, Nathan Chancellor wrote:
> Clang warns:
> 
> mm/zswap.c:1271:6: warning: variable 'ret' is used uninitialized
> whenever 'if' condition is true [-Wsometimes-uninitialized]
>         if (!entry->length) {
>             ^~~~~~~~~~~~~~
> mm/zswap.c:1322:9: note: uninitialized use occurs here
>         return ret;
>                ^~~
> mm/zswap.c:1271:2: note: remove the 'if' if its condition is always
> false
>         if (!entry->length) {
>         ^~~~~~~~~~~~~~~~~~~~~
> mm/zswap.c:1259:9: note: initialize the variable 'ret' to silence this
> warning
>         int ret;
>                ^
>                 = 0
> 1 warning generated.
> 
> Prior to "mm/zswap: add the flag can_sleep_mapped", this path always
> returned 0. Restore that so we are not returning uninitialized memory.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1263
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: kernel test robot <lkp@intel.com>

Looks like commit 6753c561f653 ("mm/zswap: add the flag can_sleep_mapped") introduced this warning.

> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> Andrew, please fold this into
> 
> mm-zswap-add-the-flag-can_sleep_mapped.patch
> 
>  mm/zswap.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/mm/zswap.c b/mm/zswap.c
> index 6e0bb61d2a2c..a85334b719b9 100644
> --- a/mm/zswap.c
> +++ b/mm/zswap.c
> @@ -1272,6 +1272,7 @@ static int zswap_frontswap_load(unsigned type, pgoff_t offset,
>  		dst = kmap_atomic(page);
>  		zswap_fill_page(dst, entry->value);
>  		kunmap_atomic(dst);
> +		ret = 0;
>  		goto freeentry;
>  	}
>  
> 
> base-commit: bc085f8fc88fc16796c9f2364e2bfb3fef305cad
> 

Reviewed-by: Miaohe Lin <linmiaohe@huawei.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2438a24b-b312-dc91-0ebd-63e3baa2ad6b%40huawei.com.
