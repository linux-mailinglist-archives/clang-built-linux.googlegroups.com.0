Return-Path: <clang-built-linux+bncBC32535MUICBBPXP3T7AKGQECDD7H4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 568FA2D95A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 11:00:31 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id o9sf5020599yba.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 02:00:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607940030; cv=pass;
        d=google.com; s=arc-20160816;
        b=WlYJFWsO+tIefULvyqBQ/D1axzvSzhrEnYpetQNDWRyoC9ejeDPixc+LQlF40pneLJ
         6p2SQGCc5blJd8OKgyqcHuD7gxcMOk1CYdNbeqScWYUlD3lEAxden92lefXaOJE7TaRL
         l0vDcKfeHwNgJD44+5eKULApAwrVEWnml4PZVAzJnxXfn+1kghQ9kw8lIOFtQ7CFdby6
         lwPYbsJDpmEHmT8BTgbH9kfd2ATPU05NglvVRyibKJM4UZIfjishmsqp17+t8mjZFs9F
         OqbBTZ3mDXN8msdeQIyrI91OmBRYMY7KZYs62ESKsYFZYo7QoUTEwVWbX95jW1ghSNVu
         ydhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=WJuG170dhRdhEvqs8kDGMbT+2k7FGBwXTqlLG0H36bw=;
        b=qbt/YjOtfqBynp5eCwLRCeSC6v6lh9YjiEj+DU7MUCk0tYSP0xY900U2w4KCWHYWT9
         T1aM6hfBb2Gd1r0ilvipg9sICqp4pmTGHTrIAr8/jr9MYDVk3UOgjZIQOHhORSzLbd3s
         TKeBk3MSdZEWfHUrtnsvlZeyiwWuotjwahCPIAb5fZIskIElRWWerlyd1bEEdx5lJgP4
         7chqBfoxFA0c5YXvoGU5honMf+Lc/I0UNjpGh3iFCs/hP1BUZyPccTy8JD0xtkpNsrP/
         b5ZJTfisXkeEWOWvOvWeYAbkW5te82ebbzVnjZdmnXEzcd18lKA3FGmYvL7xjKBc5c+k
         qSoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Zny4C7fB;
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WJuG170dhRdhEvqs8kDGMbT+2k7FGBwXTqlLG0H36bw=;
        b=V2c+ixB90YAvhZRo5hbLw4yiK81VSPJnQ2bN+kpeebX6oSCaLEDwsyROf0Tt0NTTj+
         NRqRpVA9p3nBcHkxMlMtPbAoXIRFnaGoEwV5Rhvh3lnPxIkLIkRsaAym5uWyeNsuoa7o
         XN+/1gZj1xnycM/zVS/gm0cx9y4Zrbu74G+eWq4PKjo8pDnVhmUm5UQPUi9s352316jq
         OYWCg0XDyqdlOt8onxvt6bZ/52ayOazot+kV4OunoQnv8Ohi4ciab7bn9NBxquILUV5m
         KMcYYJ24bjXt81P/VRJWfZwJR3WmeK642Hzp29UQIsVbZ8RoD0HHIicYQSsH9/yoIoMm
         FgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WJuG170dhRdhEvqs8kDGMbT+2k7FGBwXTqlLG0H36bw=;
        b=M+oVyr7qmjL+hyNeb8WIgq1B8RskIW+XLyEzngUPObUz5cEnIAXLjLvarX5o8yuAvT
         hhuqmisaCT32Wru6rPAg6/g2aFj9jqJ9hWMVEF8hnVgCWsDfJb4vOBVZB0qt4F+xKn75
         cGju3/7ituMqy+gNgTmoLIoQnw8oeyxApw6Lrc3aUn6YyhIyKXk767cTPgbVL5ql5bdX
         bhH8Gn7Eurb6iy0zOrEXKvJY1ThJ2NLgdJWmnhMOLExO1hpLpVjns36bp8NpJ9fFxDjg
         FXxA3gNzOJUauh30J1x0HONF2TIILuavwvBCPV8A7PZhjfxS9+zEVzBztafiwSi8VB6v
         fwhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rn/0RnfjDR0ONjEAhrM0XfoXjH3xTNSyRIjXYUrdSOWYOSEqy
	inl9+dQST6Cos9TXGnjOl7E=
X-Google-Smtp-Source: ABdhPJy96hxEIqEY5gb+cJvftg+OtB3AgQGD5tlnklFqXaDp1npqDLZT16jlwiqqlRAPoMtKkOUDVQ==
X-Received: by 2002:a25:aa88:: with SMTP id t8mr18203406ybi.292.1607940030150;
        Mon, 14 Dec 2020 02:00:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:77cc:: with SMTP id s195ls7731119ybc.2.gmail; Mon, 14
 Dec 2020 02:00:27 -0800 (PST)
X-Received: by 2002:a25:5:: with SMTP id 5mr35172383yba.478.1607940027368;
        Mon, 14 Dec 2020 02:00:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607940027; cv=none;
        d=google.com; s=arc-20160816;
        b=Qr0Q8sKguy6gUpuV9RBqyvRKSJBeU9csaK8t5cMgN26Wod7PCkDQmBc7W5PdA94/dA
         b/0vSTuNDE9Bjm5yJFe+dcSfxUMUi3OQho9U1BVTAZIdf5ECTpV7tTbgC8Twf7j1cyaD
         6s8nrJtZ6/IiR4OTwscYGWMbyIT+sTY3DB4IKHnQQR72qbZFe9LcLEbkL4PkNv9cqmIH
         LnqxZEWJhEab+4mPTiQugR4O/F037XfVkP+5ZaIcddcVLEPAJJlPPmuOmX0vtWty0CZn
         WOzWh4KHNC87iPe0cFTyjlkGaHI7vYdB5UCsLLWRaUiKvHP2pgkIaes7E3wfPnHiend0
         F25Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=WezndR1ZPErHJpbLiJwq4svAXKlYawM5qHHibjeL66A=;
        b=XWAP1KJb/UZDtjbuAuh2NGj0OcmfzKOGHWzhOL8nE2MqOS+FG6mtX44DLcnSwODL+J
         xTXmYE4NzhrI/dUAtbgGodanWsd2Te7JoWAqBOqngKZ4YWT66frEsCSHBxkW4RvLNI2X
         XZT355g2zWDYRDwavi2fr4H7JnrS4LwqRNUDDUtT5bkbVBnDdbc/Yt6kkFdizavXGNaK
         Xndhx79VwJXWfBDwTN9nULh6csXjB9dNPhL6bThO0+npbnC/F6VFwc1RxSUOxICANF2k
         nJFvqyv9VwFP0j97z38PmPblwx0CLvzJ3eC5+WRrFSrC1HcKYGjywDl7rssuCv3etHtO
         WtiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Zny4C7fB;
       spf=pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id e10si1585445ybp.4.2020.12.14.02.00.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 02:00:27 -0800 (PST)
Received-SPF: pass (google.com: domain of david@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-B4tLvSdHNBazOg3Ax8KNrg-1; Mon, 14 Dec 2020 05:00:22 -0500
X-MC-Unique: B4tLvSdHNBazOg3Ax8KNrg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75B7B809DE1;
	Mon, 14 Dec 2020 10:00:19 +0000 (UTC)
Received: from [10.36.114.184] (ovpn-114-184.ams2.redhat.com [10.36.114.184])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A82DC60C7A;
	Mon, 14 Dec 2020 10:00:08 +0000 (UTC)
Subject: Re: [PATCH 2/2] mm: rename memmap_init() and memmap_init_zone()
To: Baoquan He <bhe@redhat.com>, linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org, gopakumarr@vmware.com, akpm@linux-foundation.org,
 rppt@kernel.org, natechancellor@gmail.com, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com, rostedt@goodmis.org, manir@vmware.com,
 lauyiuch@vmware.com, pjonasson@vmware.com, rajaramv@vmware.com
References: <20201213150942.20990-1-bhe@redhat.com>
 <20201213150942.20990-3-bhe@redhat.com>
From: David Hildenbrand <david@redhat.com>
Organization: Red Hat GmbH
Message-ID: <c53c5290-b5c1-87bb-d562-348d4c8bd7eb@redhat.com>
Date: Mon, 14 Dec 2020 11:00:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201213150942.20990-3-bhe@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: david@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Zny4C7fB;
       spf=pass (google.com: domain of david@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=david@redhat.com;
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

On 13.12.20 16:09, Baoquan He wrote:
> The current memmap_init_zone() only handles memory region inside one zone.
> Actually memmap_init() does the memmap init of one zone. So rename both of
> them accordingly.
> 
> And also rename the function parameter 'range_start_pfn' and local variable
> 'range_end_pfn' to zone_start_pfn/zone_end_pfn.
> 
> Signed-off-by: Baoquan He <bhe@redhat.com>
> ---
>  arch/ia64/mm/init.c |  6 +++---
>  include/linux/mm.h  |  2 +-
>  mm/memory_hotplug.c |  2 +-
>  mm/page_alloc.c     | 16 ++++++++--------
>  4 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
> index 27ca549ff47e..af678197ac2d 100644
> --- a/arch/ia64/mm/init.c
> +++ b/arch/ia64/mm/init.c
> @@ -535,18 +535,18 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
>  		    / sizeof(struct page));
>  
>  	if (map_start < map_end)
> -		memmap_init_zone((unsigned long)(map_end - map_start),
> +		memmap_init_range((unsigned long)(map_end - map_start),
>  				 args->nid, args->zone, page_to_pfn(map_start), page_to_pfn(map_end),
>  				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
>  	return 0;
>  }
>  
>  void __meminit
> -memmap_init (unsigned long size, int nid, unsigned long zone,
> +memmap_init_zone (unsigned long size, int nid, unsigned long zone,
>  	     unsigned long start_pfn)

While at it s/zone /zone/ please. :)

>  {
>  	if (!vmem_map) {
> -		memmap_init_zone(size, nid, zone, start_pfn, start_pfn + size,
> +		memmap_init_range(size, nid, zone, start_pfn, start_pfn + size,
>  				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
>  	} else {
>  		struct page *start;
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index cd5c313729ea..3d81ebbbef89 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2439,7 +2439,7 @@ extern int __meminit __early_pfn_to_nid(unsigned long pfn,
>  #endif
>  
>  extern void set_dma_reserve(unsigned long new_dma_reserve);
> -extern void memmap_init_zone(unsigned long, int, unsigned long,
> +extern void memmap_init_range(unsigned long, int, unsigned long,
>  		unsigned long, unsigned long, enum meminit_context,
>  		struct vmem_altmap *, int migratetype);
>  extern void setup_per_zone_wmarks(void);
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index 47b75da63f01..579762e4f8d8 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -714,7 +714,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
>  	 * expects the zone spans the pfn range. All the pages in the range
>  	 * are reserved so nobody should be touching them so we should be safe
>  	 */
> -	memmap_init_zone(nr_pages, nid, zone_idx(zone), start_pfn, 0,
> +	memmap_init_range(nr_pages, nid, zone_idx(zone), start_pfn, 0,
>  			 MEMINIT_HOTPLUG, altmap, migratetype);
>  
>  	set_zone_contiguous(zone);
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 315c22974f0d..fac599deba56 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -6050,7 +6050,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
>   * (usually MIGRATE_MOVABLE). Besides setting the migratetype, no related
>   * zone stats (e.g., nr_isolate_pageblock) are touched.
>   */
> -void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
> +void __meminit memmap_init_range(unsigned long size, int nid, unsigned long zone,
>  		unsigned long start_pfn, unsigned long zone_end_pfn,
>  		enum meminit_context context,
>  		struct vmem_altmap *altmap, int migratetype)
> @@ -6187,21 +6187,21 @@ static void __meminit zone_init_free_lists(struct zone *zone)
>  	}
>  }
>  
> -void __meminit __weak memmap_init(unsigned long size, int nid,
> +void __meminit __weak memmap_init_zone(unsigned long size, int nid,
>  				  unsigned long zone,
> -				  unsigned long range_start_pfn)
> +				  unsigned long zone_start_pfn)

Why are we not simply passing "struct zone" like

void __meminit __weak  memmap_init_zone(struct zone *zone)

from which we can derive
- nid
- zone idx
- zone_start_pfn
- spanned_pages / zone_end_pfn

At least when called from free_area_init_core() this should work just
fine I think.



>  {
>  	unsigned long start_pfn, end_pfn;
> -	unsigned long range_end_pfn = range_start_pfn + size;
> +	unsigned long zone_end_pfn = zone_start_pfn + size;
>  	int i;
>  
>  	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
> -		start_pfn = clamp(start_pfn, range_start_pfn, range_end_pfn);
> -		end_pfn = clamp(end_pfn, range_start_pfn, range_end_pfn);
> +		start_pfn = clamp(start_pfn, zone_start_pfn, zone_end_pfn);
> +		end_pfn = clamp(end_pfn, zone_start_pfn, zone_end_pfn);
>  
>  		if (end_pfn > start_pfn) {
>  			size = end_pfn - start_pfn;
> -			memmap_init_zone(size, nid, zone, start_pfn, range_end_pfn,
> +			memmap_init_range(size, nid, zone, start_pfn, zone_end_pfn,
>  					 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
>  		}
>  	}
> @@ -6903,7 +6903,7 @@ static void __init free_area_init_core(struct pglist_data *pgdat)
>  		set_pageblock_order();
>  		setup_usemap(pgdat, zone, zone_start_pfn, size);
>  		init_currently_empty_zone(zone, zone_start_pfn, size);
> -		memmap_init(size, nid, j, zone_start_pfn);
> +		memmap_init_zone(size, nid, j, zone_start_pfn);
>  	}
>  }
>  
> 


-- 
Thanks,

David / dhildenb

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c53c5290-b5c1-87bb-d562-348d4c8bd7eb%40redhat.com.
