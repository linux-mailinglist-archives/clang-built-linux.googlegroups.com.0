Return-Path: <clang-built-linux+bncBAABBYOYQD6AKGQEASDUSAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 063652885ED
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 11:24:51 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id s12sf6147468pfu.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 02:24:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602235489; cv=pass;
        d=google.com; s=arc-20160816;
        b=NUA0fMkD/Gm9XWDq+vWnWPsEOOxSG8OgZUyQcNDiIspQrI8PthjR7sPfNUmfZDqo/Q
         BM4Fk11LBYGIfNOv+CsAS4PNO54Mloe3ZUNhwHq44ZeCWjuCpFBi7DTZuzofUBoGefbj
         YfY/GUo7kjkXdyX74D3yWc9CAvor718maoNxi29oAh6CNs+GS59GKEj6h7ukVj34ozta
         pB794By0YLuDLV/+mAO4xuCQJS7LIvapTUgwNVPmRRUcR/czJkyNBuNdyK0OibdKV0mF
         OLJADoyN9yNZfLokXkO6O3nk3rpbAXj+3onTh/D78PE2XjLr3eOqkEAQmMfuyJt1lJoX
         o/Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=p8Xtaf6NF6oUpQmE+O+K+Xtx5wTtXa/f/PHKRuv+B38=;
        b=yL/1ywDDMg/2xqz3L84mVtbmzFRCdt1KJ1qoGDYgKJZ9Ps4xjmwQ34a1frEVvv1L3S
         OYwCPknDHXnJQ3ufww8LN8PhRdVFEqczy9ZELtlEmiwFTgEjiXL0wpAIVJ175F4hHG2Z
         HV64+0aNZn5080+Q3OyWplxQ2DqJfydsTyOh9+Nj7dD7TVJxXAkppMRbUrVDbTb49Vw4
         Y92UplaRwLg87t3dVrmzJnZzxqBfRX1aOz7hObTmyzF/yyJNh9+ulO/0d0ABbRt+lbuK
         sVe0wpDdDxgfQuHUmiroBKmMiC+Wo/zOV/nF1ip5EJKkfeMyXkmoR/pW7mGCXRMiAVEM
         Ahbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of richard.weiyang@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=richard.weiyang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p8Xtaf6NF6oUpQmE+O+K+Xtx5wTtXa/f/PHKRuv+B38=;
        b=Fn0em0DHy7xMNqJTR3B7JjVeMEKFHQsLkMIA9vUDy1BwR91zheuNJrCrZCRAMPRCe+
         RsnGnc5AJG0rtRX9Oxn/rIjh0HoxHPIZNsWkWvMO02bnHTjkHsm7kRwKnNXiKCrt07Tf
         zCipE1fLJUgXJl1IXoK0usvjHjSRMArqLOXoietE16GBj115JsKoIhuEYCtc1iYxA48L
         hHsDZ9WeJb2XcRuZQSaCXo2SHxWtwrGU8ZTtTRTehmhsRYOYwz/DRxJWjjwv1x+E2AGG
         azHSvQS9MFXXM0lN+DhajRgMUQer75DqrUG9viOMhxKfK5X8/W0KObJz3BaDwTjpEhxV
         0vew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p8Xtaf6NF6oUpQmE+O+K+Xtx5wTtXa/f/PHKRuv+B38=;
        b=G3Ool06DegklN6I309KHM7X3opt7s7RwqW5zalIfrjOJGvE0+Lg9wxPmPpOoybx0hW
         vNQe/b52DzttyKpQy8+KyVGitFn+1Lmh+Vv6qHySF8nHWM6m81oyTTPwFqGcxmVjRcF8
         fpGKFoUgd8lPyVfE/CdfbJVsMEhRgDMBP3hOpDZA//dTKiRWL5iSFndaIQRkj3KXkGGp
         DpLNZt6Rn3AmgYuq672+dsdIvaL1ibO81M1+5LasuIgfWWsiy1qEy1kBOZJr1MnD0ht0
         64ywFaD+P4q20J1OJoJnqH3W3ZIKsB7XFWiNSRHU6C8Wdttbq3hnaKhJwNsH2+sbPyR8
         f/ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rgx3W7tJ7AwfHKSV3Rbjt5o4JnJTrga20I38Cqd1b9G7oqLdz
	nhxoR2Q8P5M+QXkgn6XTHZQ=
X-Google-Smtp-Source: ABdhPJwSrGSdMHtEonsXwCGvQbBgIl3cKiBZJWrs6H7JZqYQ9O/HwoFCbmSmydRj84ndVxSyHmW6CQ==
X-Received: by 2002:a63:6f46:: with SMTP id k67mr2601578pgc.296.1602235489573;
        Fri, 09 Oct 2020 02:24:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6485:: with SMTP id y127ls3058003pfb.9.gmail; Fri, 09
 Oct 2020 02:24:49 -0700 (PDT)
X-Received: by 2002:a63:5005:: with SMTP id e5mr1003950pgb.236.1602235489070;
        Fri, 09 Oct 2020 02:24:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602235489; cv=none;
        d=google.com; s=arc-20160816;
        b=baJWjIwYHxB+tnb/L/Pb/2cSohfbA2RYy+DSvlm0qte8ZdhfX9GiMfHUkhc1afMYZD
         YHGnGJmOe6iBFckZNy8/H+d2YSUnDDmauxlTDPbPmyQ4EhTf6nGeCBqcTwfmogefBSQn
         bVQyTfef4u6aLnpx3tw9yxIDUGSfP2LZQjNN3kI5E84TVzzZMA6wJv0/kK+qRIPF2m5l
         /HfdSjDds44vaKfMPQ58ucVOkJjNnS/mpnBZVh4/yBhQuFAyPrKzJBVnv1xtx3ROFqhq
         QhvqHkdl3pOb5hUMUq/AeUuOsaTlpbT8NjPnTlsUvsx+7+9y7v7I8EN6uBU1jQAw/MxC
         TYyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date;
        bh=3iuqdh/gZBH0jmac8iE7v9wwrapsnV7PVNcBBUxwwyY=;
        b=bRqTRzK/JxfdbkC8rYbzkfBB70X7fOevabpJwzq+VmbewWRheekno7zueEkaEgT6HZ
         YNU8kyZ9gmg4VHtQIUg3hg96wLoX7/HeirqSDk3jiuNFsTuaINILwnqF9P4YZnlo+z5o
         Nm5iWzcX4plyHEMyij6GRJzYK6zumiJcLARsjbM0IHzzO5CKK4TWxn1Jv6Kcl+4V7rU5
         pZ0BOXA0uDeNxbJlYED0Fqo24UQiozg/fAryzcotLmUi6gJfTdJDym3mbdzz+XGdL1Pj
         nTm9S6nLgKTROS3aNDdHP2gjsRgR0Q6hL9KVMQR4WOCIJdF5+4maCzojJVOlT2ytVUHG
         UjHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of richard.weiyang@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=richard.weiyang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id mj1si556524pjb.3.2020.10.09.02.24.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 02:24:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of richard.weiyang@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R941e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04357;MF=richard.weiyang@linux.alibaba.com;NM=1;PH=DS;RN=20;SR=0;TI=SMTPD_---0UBQ5Qni_1602235473;
Received: from localhost(mailfrom:richard.weiyang@linux.alibaba.com fp:SMTPD_---0UBQ5Qni_1602235473)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 09 Oct 2020 17:24:34 +0800
Date: Fri, 9 Oct 2020 17:24:33 +0800
From: Wei Yang <richard.weiyang@linux.alibaba.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: david@redhat.com, akpm@linux-foundation.org, ardb@kernel.org,
	bhe@redhat.com, dan.j.williams@intel.com, jgg@ziepe.ca,
	keescook@chromium.org, linux-acpi@vger.kernel.org,
	linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-nvdimm@lists.01.org,
	linux-s390@vger.kernel.org, mhocko@suse.com,
	pankaj.gupta.linux@gmail.com, richardw.yang@linux.intel.com,
	virtualization@lists.linux-foundation.org,
	xen-devel@lists.xenproject.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kernel/resource: Fix use of ternary condition in
 release_mem_region_adjustable
Message-ID: <20201009092433.GA56924@L-31X9LVDL-1304.local>
Reply-To: Wei Yang <richard.weiyang@linux.alibaba.com>
References: <20200911103459.10306-2-david@redhat.com>
 <20200922060748.2452056-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200922060748.2452056-1-natechancellor@gmail.com>
X-Original-Sender: richard.weiyang@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of richard.weiyang@linux.alibaba.com designates
 47.88.44.36 as permitted sender) smtp.mailfrom=richard.weiyang@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

On Mon, Sep 21, 2020 at 11:07:48PM -0700, Nathan Chancellor wrote:
>Clang warns:
>
>kernel/resource.c:1281:53: warning: operator '?:' has lower precedence
>than '|'; '|' will be evaluated first
>[-Wbitwise-conditional-parentheses]
>        new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
>                                 ~~~~~~~~~~~~~~~~~~~~~~~~~ ^
>kernel/resource.c:1281:53: note: place parentheses around the '|'
>expression to silence this warning
>        new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
>                                 ~~~~~~~~~~~~~~~~~~~~~~~~~ ^
>kernel/resource.c:1281:53: note: place parentheses around the '?:'
>expression to evaluate it first
>        new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
>                                                           ^
>                                              (                              )
>1 warning generated.
>
>Add the parentheses as it was clearly intended for the ternary condition
>to be evaluated first.
>
>Fixes: 5fd23bd0d739 ("kernel/resource: make release_mem_region_adjustable() never fail")
>Link: https://github.com/ClangBuiltLinux/linux/issues/1159
>Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Wei Yang <richard.weiyang@linux.alibaba.com>

>---
>
>Presumably, this will be squashed but I included a fixes tag
>nonetheless. Apologies if this has already been noticed and fixed
>already, I did not find anything on LKML.
>
> kernel/resource.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/kernel/resource.c b/kernel/resource.c
>index ca2a666e4317..3ae2f56cc79d 100644
>--- a/kernel/resource.c
>+++ b/kernel/resource.c
>@@ -1278,7 +1278,7 @@ void release_mem_region_adjustable(resource_size_t start, resource_size_t size)
> 	 * similarly).
> 	 */
> retry:
>-	new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
>+	new_res = alloc_resource(GFP_KERNEL | (alloc_nofail ? __GFP_NOFAIL : 0));
> 
> 	p = &parent->child;
> 	write_lock(&resource_lock);
>
>base-commit: 40ee82f47bf297e31d0c47547cd8f24ede52415a
>-- 
>2.28.0

-- 
Wei Yang
Help you, Help me

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009092433.GA56924%40L-31X9LVDL-1304.local.
