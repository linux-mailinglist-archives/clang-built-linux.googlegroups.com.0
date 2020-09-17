Return-Path: <clang-built-linux+bncBAABBBPJRL5QKGQE2IGZQ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B999926D044
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 02:57:42 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id u190sf233733oif.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 17:57:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600304261; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3IGFgv5J4kBtF+pp/IlqAdRD2L7+5BRYJ+Ol69m65l64YTo/Oo9P2mfVfK1hQ1yP+
         KqzJI+Nt3ifk7+EyonRZjyFDbKgQz0IBRR+ZT+DoBAYte4oJuQB6h0nSWYr8048t4Iql
         S51IY/G4LFZvh49q/X+c4vYDlohwsyUI9ErfTVeEBC0ZdSK/4gjajNQQvC/6k7HqhhZl
         kRRCEf5uOUvWeKNroZ2QPb+8EuMduTQzIPU7CG7cNPQOWvexL6/yTxsBwFOizqBmUz9t
         hMp8Bq0e8K8UKlH6LFRM2z6YOMVFMH99nmEXdp+fmlFskqb8gb4di6fnneSu1JpU5cWk
         Z/bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=DxinxPwy1xAHgNp5sSlHo41NiEvPTppRDf8ElQB+Dsg=;
        b=elEaA2i5JoVxS66ft1NoQBkJRvSc6hpEiNGk6ZbQRXMwD0mAvjpiRLaBMUAZWICSM1
         RSNeBoNt+JCQKgOzTM7yaNM6JY2uT3DwdYld4bZWRufo5QEabQvxzihJxczq3xJGWgB9
         Wy8pd611W8kgwk9nJp1IilDzeaIcbPk96m+Y6aJ4I+ehfe9D30IKw0up+vhcGLN7goq/
         KdKxMEG5CSX1hXs1htLBfpZ5O6yoY4WSbGhkLUeb91XeYvkrMWFYKwbU/a7IZO1lWdB5
         ySh3W4pdOTvhyMfBxTIo+i+fF4M3CE7gPE/5OPJAsBg822XmjjMGGIZcHN9V5AklYbTk
         xbvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DxinxPwy1xAHgNp5sSlHo41NiEvPTppRDf8ElQB+Dsg=;
        b=R6cFJ2b3mTT7vdYZx4TrCtFkzVRhUavOpfmXZB6IzcCyQMgFd69nzYtmsxpNg6UIgs
         qPYY5+/17sTmV5mbSGrdYDVl+czNQv789QAK5k+3cFDbpjrA3z4LtDwpolafD2kjy/sX
         3gRRw63YdjJCtMk1yTSjgHvVSlC5O1LyLHkv+UCMr3Pv/+EX3yq28scG9peQKg3YPR/n
         T5wN9LtOZzTIJoDPjMkhxIrHelcHPALmQWxdOpJTdLwAk4M12dFjimDVFxjz6+QCwoUP
         1+cxcDNpiT9iNlubGQvWzG+M5L4FyYZxi+bu7G/W8OKbP44o0UdJt6JFKdi2K2sPCnKF
         O7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DxinxPwy1xAHgNp5sSlHo41NiEvPTppRDf8ElQB+Dsg=;
        b=fuqm2l2lGrbeEpTr5YdFWCyyPbcKZZAh8Uw4bkDsUh0yQdSzDJCHQkavvUQNfDV3Gx
         JkLGG2tIGHE9RW/kTZc0cjdVib6/svgM5Mv9UL/l6ruCt5s2TD/AP9K0ukUt3Q4M0xOi
         5wQHdXS1otfBXwM+Quh7DJCQEYdezwQpeNDeCLEmdqwpqFANRhHbnuGl7n4TH8EmyWFj
         FTt3Gchao9awJfHu443e3VdYB8iqERE/EkMmc01uKMw8HAW5IGkZlT0SJLzs7m37foLs
         XB3OWgpy/GtVgfpcFrIvH2dN97n+G+Zm1Gv5TMq1EQIKuUYrSrZo6pWAQeF5rEYjt4yT
         fqbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tBpJrORWmBEyBQolxJ/207c6JPpJ44Wub3EuxgjjvNo8kkKep
	W+5SreQdoqMZJzRcipiR+W8=
X-Google-Smtp-Source: ABdhPJzzAgRewIRaHZjjAj676x1mfk8cPL55P7gSj9dWYKU3Xn8ZxiMlcl4MqJV3vJrBu4EW/A1erQ==
X-Received: by 2002:a9d:4d01:: with SMTP id n1mr17549540otf.294.1600304261692;
        Wed, 16 Sep 2020 17:57:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:308b:: with SMTP id f11ls65681ots.9.gmail; Wed, 16
 Sep 2020 17:57:41 -0700 (PDT)
X-Received: by 2002:a9d:768e:: with SMTP id j14mr19124772otl.50.1600304261047;
        Wed, 16 Sep 2020 17:57:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600304261; cv=none;
        d=google.com; s=arc-20160816;
        b=Iq6yf5Gt1RhBjXNiBTgx4x8bU7ikfJXY+LIiCI8Cy8Ixp8b8sR4yRZ65vxJitR0afF
         lGWZ4ENIpyHgrgva++T6JgodUlOl9ENNeRwJQc1bn6n7/Mc7gauLPUxNkAwuu80UB4EQ
         llnhHw68eg1CDxG3JI1owlbFveCRZZXrs1GnRaLnNOkpTO9/tS/HEfMz1KtQ6OV+qSuT
         LZ9xgdDxXO7JSzp61dRXucBLlTrP49wdIF3VtS4179UOqWwqdpvOWBARMvF5X6Nb0Ms0
         aY0HVYd7P776BMJyIO0ZMvgl0za1FDEGKTiArzmQuoTHJsH13Y0Pz81kDxJxiceOaSYB
         d2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=WXl+I613uPID3+3DG0YVn79RYKPlLW6wq8TAfdVESrQ=;
        b=QgqTnhBSnwkEnRw1+Fnw3PZO11ZKIGNeZatrNTMt6C7lnliQZeiQ20ST84LctuPwlt
         AnlPHsd+kXA5bUl4hvOnyB0yzdOwJSHE46c/TcUM3niekkL7Ey6ljWNktro0muJ/mJbs
         Msxliuq4OzEZDTBI0PtikPWkTJR0AnJTgFtHOvOeGRoeCxM9P47I4OxTWRR5IJOhSGED
         Gi5AJm9DKsKo3s1VyrXXH1m3ih6irAR7wyj2/XFke18pyAn9ntma+Kk9rstO16HXcoaN
         HK+rJwCyiYax4NuAg+loeJq0MuI3qUGw0s6pSLKYGHDgnDimy2bG+1PHY9Q2nvM4OWyK
         7nFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=song.bao.hua@hisilicon.com
Received: from huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id d11si1791887oti.2.2020.09.16.17.57.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 17:57:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.54])
	by Forcepoint Email with ESMTP id 6916C1CDD498D51CBBDE;
	Thu, 17 Sep 2020 08:57:38 +0800 (CST)
Received: from dggemi710-chm.china.huawei.com (10.3.20.109) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.487.0; Thu, 17 Sep 2020 08:57:38 +0800
Received: from dggemi761-chm.china.huawei.com (10.1.198.147) by
 dggemi710-chm.china.huawei.com (10.3.20.109) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Thu, 17 Sep 2020 08:57:37 +0800
Received: from dggemi761-chm.china.huawei.com ([10.9.49.202]) by
 dggemi761-chm.china.huawei.com ([10.9.49.202]) with mapi id 15.01.1913.007;
 Thu, 17 Sep 2020 08:57:38 +0800
From: "Song Bao Hua (Barry Song)" <song.bao.hua@hisilicon.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "guro@fb.com"
	<guro@fb.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-mm@kvack.org"
	<linux-mm@kvack.org>, Linuxarm <linuxarm@huawei.com>,
	"mike.kravetz@oracle.com" <mike.kravetz@oracle.com>, "sfr@canb.auug.org.au"
	<sfr@canb.auug.org.au>, "will@kernel.org" <will@kernel.org>,
	"ardb@kernel.org" <ardb@kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: arm64: mm: move dma_contiguous_reserve() to be after
 paging_init()
Thread-Topic: arm64: mm: move dma_contiguous_reserve() to be after
 paging_init()
Thread-Index: AQHWjIg9Vw4ucv/7MkmF/biUUWKaD6lsACBw
Date: Thu, 17 Sep 2020 00:57:37 +0000
Message-ID: <304aab7bf8724232a430c29660007e9e@hisilicon.com>
References: <20200916085933.25220-1-song.bao.hua@hisilicon.com>
 <20200917001934.2793370-1-ndesaulniers@google.com>
In-Reply-To: <20200917001934.2793370-1-ndesaulniers@google.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.126.202.195]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: song.bao.hua@hisilicon.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of song.bao.hua@hisilicon.com designates 45.249.212.187
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
> From: ndesaulniers via sendgmr
> [mailto:ndesaulniers@ndesaulniers1.mtv.corp.google.com] On Behalf Of Nick
> Desaulniers
> Sent: Thursday, September 17, 2020 12:20 PM
> To: Song Bao Hua (Barry Song) <song.bao.hua@hisilicon.com>
> Cc: akpm@linux-foundation.org; guro@fb.com;
> linux-arm-kernel@lists.infradead.org; linux-mm@kvack.org; Linuxarm
> <linuxarm@huawei.com>; mike.kravetz@oracle.com; sfr@canb.auug.org.au;
> will@kernel.org; ardb@kernel.org; clang-built-linux@googlegroups.com
> Subject: Re: arm64: mm: move dma_contiguous_reserve() to be after
> paging_init()
> 
> It looks like that change referenced may also break arm32 boots with today's
> next?
> 
> The following allows me to boot, but I have no idea if it's incorrect or not.
> 

This is probably incorrect on arm32 as dma_contiguous_early_fixup() is done after
dma_contiguous_remap() in paging_init(). That means dma_contiguous_remap() gets an
empty list.
For arm64, there isn't early_fixup() and remap().

> diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
> index 45f9d5ec2360..7118b98c1f5f 100644
> --- a/arch/arm/mm/init.c
> +++ b/arch/arm/mm/init.c
> @@ -226,9 +226,6 @@ void __init arm_memblock_init(const struct
> machine_desc *mdesc)
>         early_init_fdt_reserve_self();
>         early_init_fdt_scan_reserved_mem();
> 
> -       /* reserve memory for DMA contiguous allocations */
> -       dma_contiguous_reserve(arm_dma_limit);
> -
>         arm_memblock_steal_permitted = false;
>         memblock_dump_all();
>  }
> @@ -248,6 +245,9 @@ void __init bootmem_init(void)
>          */
>         sparse_init();
> 
> +       /* reserve memory for DMA contiguous allocations */
> +       dma_contiguous_reserve(arm_dma_limit);
> +
>         /*
>          * Now free the memory - free_area_init needs
>          * the sparse mem_map arrays initialized by sparse_init()

Thanks
Barry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/304aab7bf8724232a430c29660007e9e%40hisilicon.com.
