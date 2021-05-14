Return-Path: <clang-built-linux+bncBC32535MUICBBBEG7KCAMGQETPYI6SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 0888E380AFD
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:02:46 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id i18-20020aa787d20000b02902ceff7cf271sf5810586pfo.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:02:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621000964; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ky0shpRdqbqZrJ/eCOeRhmtfgbbPSs7XRUQdZcVVegHEYmq/pvL8raqich1OGh0uID
         /4zbVP+0Cs6/4s/n4KhiMEGt4pVuTeTiFzIbvAWPQGBNjmpv3kOKkGhZs2qtyAvPDm39
         BXzXPjdx3hUoJrBRs2HjKwzhvWnFVtYQqcPpAiPlfMzPeCrTG1oRlz1ar5JyDji3u09E
         jeTcd1AqcUho1IfFaWK8iiKS4CeJSpTHuyAoGH19DoCBYdzNmqHAVGNkPyurJu9ccM3U
         HhqYl06GmqrSA0Hg+4WrXkGbb/mbPBC594KKkahJz9e1TcP7K8z9G+Dg3ZBCx0Y557G5
         6SNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=NME8TuphgPtIbA+sGJXbWZJPoZ/IXFj5hGh+lTXBYM4=;
        b=nOjtps+5qYb1ogMPEOXEkeqMYL1VCPmGKwpU9RYtvBE3hSbTcHAvlwt8IatyA9dtoY
         smLoyqgw1D7jC73AQXfrwAVYHKxvrVPIyP5AOdrUEScoihh1RNlsIakTJzSzH9dnUxtB
         72WP1Y0ffzutAorDt03MzPEQTqApwEU5EFEsLSx77TB2jcmavhvKKPjZl2cYXL1ZxgT3
         r6DtnJnyQ6GKQr0MupvY1dMMNtzsSpn+38EHnnMNRoX/Z7Y1f5w6RqC6LoWYiWYYXPeY
         GKkdgNZFvx8yhZ6L+XftpYMBKwdxg0cz5po9FfS2/azt8TDzBH1fnNbQLh8YGze/SOn+
         fZKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CFD0utF5;
       spf=pass (google.com: domain of david@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NME8TuphgPtIbA+sGJXbWZJPoZ/IXFj5hGh+lTXBYM4=;
        b=Y/tJTyO/cUK3Lg1QGP3w/G4MPxwOvCRQ4nAK05EJgEWQ6G9IAaHnX0E9ts1/l5bomB
         R6SmK01UDlZBf/bpXCzIgrIYgkZJmnPzQiGk29uQBPAe2AoQ1xJdGRNs2Pi8q/VbvjKf
         HnI13A5D57LxN94kDEbj2R9SHz/8qb4jnivzCvkGqzyTt6PO0p0XtJkMqhFqtrzP9Oyo
         GUu27luJpzHnEWzV0aTHqbesBhKHQHRD3f2CbpDDUcmhDfGxU9mcPP2kgFKEXW8qx2jT
         kTwADtPHcv58lbpypex8PscRWMWf7mgCe+OAz2+Gh/CooMM1r0LEQhfiR/rZVFkJVzT8
         YBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NME8TuphgPtIbA+sGJXbWZJPoZ/IXFj5hGh+lTXBYM4=;
        b=ZjVqX+Z2afd8dUnB9xkh8ewTQ5JK4jbARAyBJbagd9wmKGNQo0cpYejADEw577sdNs
         UMmPPP6kMBFygtBvJirK1t/XMNzbeCCGt5df+DD0hgocSjLotuUQX+Jga2Ut98iyH21g
         5saSaYTn1Hj8pT43y/jmB7nXbkuiyp/aI9jU6jujUCD/n1gvuQI3ZyoaVLsoKhmWLo08
         6s3zpl8+Th7UW0q3zB4AzO+DcuxW1j5QgTrfc6ZyGbnnXSaRfmBsvSZr/ZniluWckoRr
         Jnl+y7GdvBZkiV1ugKOBKhw9Ea1y+ziT01olwMYQzMLt2m031bMu9P0DVWrVomEadWHx
         jb9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530984TkWGjPvVh6KRmAJOSLp0mzIgSb1yAZXNkGDavLtRPFqXXA
	SEnkqTrsJpqiLjs+IYViCKQ=
X-Google-Smtp-Source: ABdhPJxfFOgb8eN1DtQUvEOoX59gNxcjmtDMCrRxv4GlmyjPEn6MHxSaYhc6J7xEaSbkChvpRldBig==
X-Received: by 2002:a63:d509:: with SMTP id c9mr46159340pgg.280.1621000964674;
        Fri, 14 May 2021 07:02:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b485:: with SMTP id y5ls2188598plr.7.gmail; Fri, 14
 May 2021 07:02:44 -0700 (PDT)
X-Received: by 2002:a17:90b:3b4b:: with SMTP id ot11mr50786383pjb.189.1621000964044;
        Fri, 14 May 2021 07:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621000964; cv=none;
        d=google.com; s=arc-20160816;
        b=F5ED1fbxAdsiD3KNJcI2qj1M+ViAj0Pdur3S30IkHm7yyVkRDEKpaYnv0kamA7kMjc
         gquNGHsFFMu3tC0OD7vpYY4LmkGOCv2WJSsx9RaYoTY5QjZAxeZdp74DQADzTS/fHSaB
         6QA2jRUgEisLZwN7qNCvhIcueDI1MKWg/fFmhRxkb+LUgDSiuGzInFbi1jYDeZ9SLOlc
         FnmaZ4j/ZChUP59262L6ERHsiJ3+gHIfuJHUhkcIzzVKjYx387Sitjqov4I5y8DLNf4f
         Z3Kp8EhP95pv5YYofEuTs5WTQeYn60+rc6VnbCAK7apDTwPPQ+UON4l6QZO4Qn2BojnX
         Dbfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=Mql0q91ECxfqC6RVy/aAHYne20fUi8i8dudlG8TCa1w=;
        b=vTyT6uumpSfmibfIfPPtwcJvy+Eom5cBI1MJjMv0EfYo0DlrRvv0miiNKDqUZJWEvJ
         2ofo3AA++lPGrx//JBkLo+EFFfJuDoIvDtdAQTojNBWMShpvqGlsy9ti4kF3INxXnD6+
         EpUE1xr4DhGvW7lnIb9j5Xk9b64flinVqTIg0bEylY2VswH7ieR7KhtYs0tmYumH9idF
         KtkB+Wj4dRicUqC+vwn+AquLxOZWL1H6SfpP6rLA3OLKBvapWwZfxRHBjyBkHk92a+UE
         /8dXYM6OtE5UiCQpmUyklskrP+sHrh1CfO269o/fFYoCRvsjSokTy9Y1hoe5qE4cLGwC
         Jkvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CFD0utF5;
       spf=pass (google.com: domain of david@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id i2si468095pju.2.2021.05.14.07.02.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 07:02:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of david@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-306-WY6-Ux4yMl2eDGqFpLtvAw-1; Fri, 14 May 2021 10:02:40 -0400
X-MC-Unique: WY6-Ux4yMl2eDGqFpLtvAw-1
Received: by mail-ed1-f69.google.com with SMTP id y19-20020a0564022713b029038a9f36060dso16406428edd.4
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 07:02:40 -0700 (PDT)
X-Received: by 2002:a05:6402:17d9:: with SMTP id s25mr24831513edy.337.1621000959075;
        Fri, 14 May 2021 07:02:39 -0700 (PDT)
X-Received: by 2002:a05:6402:17d9:: with SMTP id s25mr24831467edy.337.1621000958793;
        Fri, 14 May 2021 07:02:38 -0700 (PDT)
Received: from [192.168.3.132] (p5b0c6501.dip0.t-ipconnect.de. [91.12.101.1])
        by smtp.gmail.com with ESMTPSA id c5sm4547748eds.94.2021.05.14.07.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 07:02:38 -0700 (PDT)
Subject: Re: [PATCH] mm/shuffle: fix section mismatch warning
To: Arnd Bergmann <arnd@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Wei Yang <richard.weiyang@linux.alibaba.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210514135952.2928094-1-arnd@kernel.org>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat
Message-ID: <ea93aed6-58c0-0905-11e4-628ea145999d@redhat.com>
Date: Fri, 14 May 2021 16:02:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210514135952.2928094-1-arnd@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CFD0utF5;
       spf=pass (google.com: domain of david@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 14.05.21 15:59, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang sometimes decides not to inline shuffle_zone(), but it calls
> a __meminit function. Without the extra __meminit annotation we get
> this warning:
> 
> WARNING: modpost: vmlinux.o(.text+0x2a86d4): Section mismatch in reference from the function shuffle_zone() to the function .meminit.text:__shuffle_zone()
> The function shuffle_zone() references
> the function __meminit __shuffle_zone().
> This is often because shuffle_zone lacks a __meminit
> annotation or the annotation of __shuffle_zone is wrong.
> 
> shuffle_free_memory() did not show the same problem in my tests, but
> it could happen in theory as well, so mark both as __meminit.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   mm/shuffle.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/mm/shuffle.h b/mm/shuffle.h
> index 71b784f0b7c3..cec62984f7d3 100644
> --- a/mm/shuffle.h
> +++ b/mm/shuffle.h
> @@ -10,7 +10,7 @@
>   DECLARE_STATIC_KEY_FALSE(page_alloc_shuffle_key);
>   extern void __shuffle_free_memory(pg_data_t *pgdat);
>   extern bool shuffle_pick_tail(void);
> -static inline void shuffle_free_memory(pg_data_t *pgdat)
> +static inline void __meminit shuffle_free_memory(pg_data_t *pgdat)
>   {
>   	if (!static_branch_unlikely(&page_alloc_shuffle_key))
>   		return;
> @@ -18,7 +18,7 @@ static inline void shuffle_free_memory(pg_data_t *pgdat)
>   }
>   
>   extern void __shuffle_zone(struct zone *z);
> -static inline void shuffle_zone(struct zone *z)
> +static inline void __meminit shuffle_zone(struct zone *z)
>   {
>   	if (!static_branch_unlikely(&page_alloc_shuffle_key))
>   		return;
> 

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ea93aed6-58c0-0905-11e4-628ea145999d%40redhat.com.
