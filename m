Return-Path: <clang-built-linux+bncBAABBWGHYX3QKGQE2O26BJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 792A8204710
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 04:07:21 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id v14sf13407740ilo.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:07:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592878040; cv=pass;
        d=google.com; s=arc-20160816;
        b=NcgMN1gYtjHWXD8kT3JLH//CJx1TjtiMefR2/VeAavLgrT0eQGdJ6HCWZAOcTcXD+F
         hxaqVtEw0VZoGE6sbstbB/p6a3nyNMjYLSohxN0AVFUPF9esRIReKplovkrjaqHCYF7y
         yGYW7pGkgfE3CEAEZbDNeNddCW5fae5pek2LQxwbVg3SO4LFIqQC67cJeii/4AyYHsgf
         30F+Neb+llLV3NwOxhnGbw8Ye2dAh9ak3gAqzIZbms7hntgJNv1KrcIlsEimh2P9DxU7
         +P0tKseKYngeldC7jcsufBCS/nzcrI857XV5Ph0jjEhFV/9OK+B2AlEYpXPhS4tY+TRp
         PTGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ehmkwECn2U19r079m8meFnHz5ptl0LIBVZY/9lhj9+k=;
        b=CCbvTb+XjrbATD438K/ILL1x7DnVec08K0A9Ny2A4IHwrAzIX6VnftXxfWKx+hCkps
         BNX3HSJEVnsXZ2Q1dsP8vMaGBEBoBmCHJeGYVNQtulAoI3Slq8QK8cfeDBNl1Sm39neo
         PZ/JJw8XDyNeqbIEZO6XPGeB6dy5f1B5xDiMZzVV1wApty+DqaqAbrMgvhWUAxgNkkC+
         Rqm3+TW3WGHetrQNvA+9eXM7F5lxllUf/wew4Br/wpgJN+Z3wDc1hYitPxc1YjG+RCte
         4viP42gRoBdine8oal8NsqP5jZTqbX4Suhx6SoG3TvvROLKToo7ewGXs2l3p9IUHfl7P
         l6AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ehmkwECn2U19r079m8meFnHz5ptl0LIBVZY/9lhj9+k=;
        b=PaPzorfAWfOH1yoihPVY/CpZcMytziYFw/lwcn6RgsKRkHKd67F9sv3Q9rM3u+4gwO
         80EarNoPV4RxDf3thJqQgji+U5mC40o6UdKH8wu+yOnGywIg/ZADUxUquZ3Yikcqlbtp
         /3uFygakgwV/xOMJe4pyXzMjLxJw7Rf2NYMHlaeLPQ919kGovZlfpztuqU2TG11QsMT0
         gEg3/Vw2rAE0RGbidGmKHAaVmdzkgEZaSbYH+abh1VWqtqeRpMPRwzpUBqLcsrPbnyRG
         BxqqenjMZSuVeAdYPl+IkiE1quuvhPF7ivLSsAodC360B04+BKzvLupR8T2LVIZ8/PkN
         CsLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ehmkwECn2U19r079m8meFnHz5ptl0LIBVZY/9lhj9+k=;
        b=qQ/Tli9XOseB1TGunZT/JjKdzGi75Y1vw7+rMoi+Op2zJOUdxdFhlx6HX7VO3/KdHc
         eHdAOh9GgpdzCTg1M7C3XvvFD8NUuk2+Ov6csqOXTQtKeWfsSlP+rhgS5IMq22W+VKmT
         INAGDxXuaUF1Wz4+awVnRm48kvriXpTJg8ggc9Xz6PuGs76z9z6bXuM7h75zxNOU0tMj
         UIisgseiCW6YWUwsCIB92mimyA8EthGFhaOn8c7nvGesDUKzoPNLP2Rjt2fx56tiQZyn
         benbwVCBUDv1HWbvVuKEAg16wv1VLY1wV5e4OGb0Uw0jAQ408AVkWvHF6X40TIOQ1KDw
         HVpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bX/64mVzZ91S/KS8u1aRBfo4p7rMY14flbV/HqpTkO//rpdhp
	eq8BFIdyvnTLGs3VH+9Flog=
X-Google-Smtp-Source: ABdhPJxIUqvXyCqCeIPrQV/eyMkQ5X5JoTJX2Rx28BqzAdEizWxTsVtmuYeu3btNEwNDVM21erk+1g==
X-Received: by 2002:a6b:1745:: with SMTP id 66mr23068626iox.151.1592878040346;
        Mon, 22 Jun 2020 19:07:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5a10:: with SMTP id o16ls510704ilb.8.gmail; Mon, 22 Jun
 2020 19:07:19 -0700 (PDT)
X-Received: by 2002:a92:de48:: with SMTP id e8mr20243793ilr.249.1592878039900;
        Mon, 22 Jun 2020 19:07:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592878039; cv=none;
        d=google.com; s=arc-20160816;
        b=jywBdW9qRRfhFLV9GsWxyUIOidh1MOQWVljyxcnshnVK7lu9aZiQRdZ+iAZijxVQiD
         JcaiKg66VnaRWq2IJAB6+l2t9OXDuaAxsOmBw4uSXu3zb5WT3iFdIo743bXauUibUSMa
         4odQIdPKvbOqFh+hErwUE0qy8YefATEXIB+2511bYbUJ/5ODPLJRkr9j1JA12OwIb/EJ
         r+cKYt/8BkNUTd6tbofcry9IdAF4PCGW5+TLAL47jmTlovQ6U5yumv6poAKmyyWuwgKC
         q9WSZLw+00Muer0qMH921R8zIGLI0EA0nKVxxn2tyS2OC6pJy0+DoJP5JsdKk6oLAw8r
         9HCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=EAHvZU8ys+MLYOk68hRplFTMerVVfLP2ouewALPtgaE=;
        b=qu/QL6/Ey0vH4heeepXNP7uwfr0iMnqCZX9HyVs8VTl4jN4/upHrztkC7eONvNyR34
         3H/ldpg3QRS4u9UOHmigFFqrJKESgMwEHgT/8YN0tyfrTTESrtP04jx8XuffWL1BTZq9
         uPMjVEeqfE2WUO7Vt79JFbw09rXBuGMNP21xlPSPnJVbb41QUGz036X5ZPqpEGVUr/xX
         RJ6NZuigHqXC3w/XR/ShoKBP4f0gaBN3Xv7mDPYaFCHq00EezIku8/7f/zYAPRBch8iF
         umTMCk/CZcy/u/4gzGahrOCrNsMwBw4IJOIUz7VDBSvGS6eA/wzAUSVrpf9a9cKTGjZS
         G8Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
Received: from huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id i20si67138iow.2.2020.06.22.19.07.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 19:07:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from dggemi405-hub.china.huawei.com (unknown [172.30.72.57])
	by Forcepoint Email with ESMTP id D1846DD068501499BC45;
	Tue, 23 Jun 2020 10:07:17 +0800 (CST)
Received: from DGGEMI422-HUB.china.huawei.com (10.1.199.151) by
 dggemi405-hub.china.huawei.com (10.3.17.143) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Tue, 23 Jun 2020 10:07:17 +0800
Received: from DGGEMI525-MBS.china.huawei.com ([169.254.6.126]) by
 dggemi422-hub.china.huawei.com ([10.1.199.151]) with mapi id 14.03.0487.000;
 Tue, 23 Jun 2020 10:07:15 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton
	<akpm@linux-foundation.org>
CC: "linux-mm@kvack.org" <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] mm: cma: Return cma->name directly in cma_get_name
Thread-Topic: [PATCH] mm: cma: Return cma->name directly in cma_get_name
Thread-Index: AQHWSQHe9Q6zYWq9cEyE52thANJ/xKjlcxgA
Date: Tue, 23 Jun 2020 02:07:15 +0000
Message-ID: <B926444035E5E2439431908E3842AFD2516153@DGGEMI525-MBS.china.huawei.com>
References: <20200623015840.621964-1-natechancellor@gmail.com>
In-Reply-To: <20200623015840.621964-1-natechancellor@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.202.192]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: song.bao.hua@hisilicon.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.188
 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
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



> -----Original Message-----
> From: Nathan Chancellor [mailto:natechancellor@gmail.com]
> Sent: Tuesday, June 23, 2020 1:59 PM
> To: Andrew Morton <akpm@linux-foundation.org>
> Cc: linux-mm@kvack.org; linux-kernel@vger.kernel.org;
> clang-built-linux@googlegroups.com; Song Bao Hua (Barry Song)
> <song.bao.hua@hisilicon.com>; Nathan Chancellor
> <natechancellor@gmail.com>
> Subject: [PATCH] mm: cma: Return cma->name directly in cma_get_name
> 
> clang warns:
> 
> mm/cma.c:55:14: warning: address of array 'cma->name' will always
> evaluate to 'true' [-Wpointer-bool-conversion]
>         return cma->name ? cma->name : "(undefined)";
>                ~~~~~^~~~ ~
> 1 warning generated.
> 
> After commit e7f0557d7de9 ("mm: cma: fix the name of CMA areas"),
> cma->name will be an array with some value worth printing so we do not
> need to check for NULL.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1063
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks!

Acked-by: Barry Song <song.bao.hua@hisilicon.com>

> ---
>  mm/cma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/cma.c b/mm/cma.c
> index 31a61d410c59..6cf08817bac6 100644
> --- a/mm/cma.c
> +++ b/mm/cma.c
> @@ -52,7 +52,7 @@ unsigned long cma_get_size(const struct cma *cma)
> 
>  const char *cma_get_name(const struct cma *cma)
>  {
> -	return cma->name ? cma->name : "(undefined)";
> +	return cma->name;
>  }
> 
>  static unsigned long cma_bitmap_aligned_mask(const struct cma *cma,
> 
> base-commit: 27f11fea33608cbd321a97cbecfa2ef97dcc1821
> --
> 2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/B926444035E5E2439431908E3842AFD2516153%40DGGEMI525-MBS.china.huawei.com.
