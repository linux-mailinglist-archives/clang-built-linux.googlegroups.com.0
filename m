Return-Path: <clang-built-linux+bncBCKPFB7SXUERBQWG4H7AKGQEJKQZCQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 697DF2DA86B
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 08:18:27 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id n137sf9440115qkn.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 23:18:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608016706; cv=pass;
        d=google.com; s=arc-20160816;
        b=QZarZ/B2xqry/qyz72VTT4l4uv0gWb1Qn1bzIPWc0v8lMKdbke/audngRxmx+WuSAU
         g32x5eNcKNcc77AgmfQylH+EdFqrjPCS9G6bzUklxGdBE0HpmNdmSbg7eGG9WJyAQCKV
         6+dPgGqvActFIreUV9SACboPNMncmZuldrKy+TH4tq/O3NvwpF9xEplFJZIMml1JV36J
         ovN5Wqb0xN85mAmnTDIJD1UzCR20Iw9I/G/+mTd4z7e1/cg9qGPUC8Ok53o0ioyYhEEh
         X93j2fHmB7SY//3uEJODeYVu3i6WyXyDhlHMEpbIUmp2zinW/aMvpvdjz/zDPzFZIxxY
         Nr1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=T6bPnmXCiytO8jvtBjubwySP8cqIHap+++T36iOQOZo=;
        b=rrfz+CwWfmN9qzl3wrkKS3cdWXbivMDwMplyBqC1oj91Qw5qshwAOiW/kv1fCOFOPx
         9huy94STnG9Pm73NCIEFO6knSgUR26vVFUEJbIxCspQAnQlNK3EDVPw9eit2i1RhGQ5I
         phlPOjzkUXVLeocrKcpeJT27koX5udwW82W+CV2d7uzAVyP94O+1PSmwHWwgTjEMbT9V
         rdvlRaZ/388zZLJouAk4Y+P3P3dAz0mhHYsvhJIwCmteJKyubTQoqmzO47FjFfgVvmo4
         uHpaYyZS6eGi1HQLlLGE6gypDpCxdIubnoG8onzYaDSqMgBANriBobgn/SdyB+zIVdOJ
         UsqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="JJ0iBz/+";
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T6bPnmXCiytO8jvtBjubwySP8cqIHap+++T36iOQOZo=;
        b=rzS5WHn3XWmWZntI1p/Raw7RkEWzyLCB9ZKhFC99to9SoTpzIqsOlTxg60n+Nn0w0z
         kxy9WVMcS9tKNLZzUmQISS2Txd1EPfNcBcAf7daT0pXwSpyNGKBYEdmm3UjMpaJsB1ws
         rWLRisTwkB4VVjotzBAa34PXxfgrGG+Gd/m2hic6iS8eyRrpT51XL3nQm3Ryg9jfdt3o
         3K0MCdLGVO82N1yl9iq4rMHUCqbBsJhaNCOAOlrgi9Z6wUnZK0lESG2DunNYW/Bkvijp
         Lx2ma0h4etK1/jkzMkb8MId6Qhwb1jhEOYvXbfnBSM5pd180l9Occxus2qR0DjtPE5N6
         6V4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T6bPnmXCiytO8jvtBjubwySP8cqIHap+++T36iOQOZo=;
        b=fXLxbPIQBTQnsq3PwCGw1yWAf+j4SbiFlLa9p0gA8HkFBi0mP3FqHgvv/PabTtWNt0
         h5iGyj579uRRUoZERGWWq+ACONvPwI+94jphv3tY/FY2N51JWrW4Oi6et79j1ErwTe38
         EnAqBIEPjQDi8HoOe3SW6L7X/tDWMSTv//kpff3srj8RxQtC9qQwuxtpaTqH6cfqBk9W
         Wedw1nu0QPAD9a1crUWXPkMO4INivjY8S8Kg6VjYWl8U3t7ZE5Mu19KS+G0lvptK+AbE
         ZKqMrXeBywx+p2NjXLLbaMMKX2u4+XV1zrq3H3y/8+QFSvmoJE5PGCu9zJnB6i6YWhbe
         cNsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ulm1qgxcB8DQS43bFV6oSPYjDU34NXzAMLqdIMcu3RYaqOvUG
	7+qixCd4MLrsxkrUNXEaPDg=
X-Google-Smtp-Source: ABdhPJyFnHGb0OzzTvH/yovdLJfk0O7nvI2SQiZnyHTRjFad9hYjFsriMTpimi/5H9s2A1pMqpC22Q==
X-Received: by 2002:a37:8885:: with SMTP id k127mr25970643qkd.335.1608016706390;
        Mon, 14 Dec 2020 23:18:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7904:: with SMTP id u4ls9371768qkc.7.gmail; Mon, 14 Dec
 2020 23:18:25 -0800 (PST)
X-Received: by 2002:a05:620a:2290:: with SMTP id o16mr35506924qkh.101.1608016705821;
        Mon, 14 Dec 2020 23:18:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608016705; cv=none;
        d=google.com; s=arc-20160816;
        b=JOm9MoxeOR5YYu3fYc4pvIY0xnDwInOfYCrP7FFKq7grwPP4FM9zkilcRnnlNpA8W5
         AYeDAILFaaGG+U3fWtEpgjurhy9tat/ZC68Od7dqHjFuPfTBB99emoRcQJ1f9ERYf2kU
         7uRWcLdIzN2aBqv1zkH9sBGXhttymr3Wt53USyizLHrUt0N7dRt5cXiLJkm1o5Kav0J5
         5j+2twc/KxTPxDAx9rAZIfP1vPTQ08/TimCR2X9zeAU6bFvWsk+Wc6r8FMeXZKAi83+u
         e7o6APH9LfA28V7S8qwpnP8bvAKmieJzgQPfTGmRXlmkQKyIVYb+Pr8QO6jJoATlOaVb
         L8Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I246izeO8jvYhXeQCpg8Ld1WEf10HywTAxqVDlzwlkE=;
        b=Rm5y+CVZgNTyFCzQy8WA7Zd7fOXYzBK6PBeLr7UNKA3H2+NeEICX0RKz8OCU8E6PTm
         /30Fmiza3D5XEJ2C4r1XZowWVp5rQJzzNQtyzFtK9ZkrtzO1bLLncRnRtgEsf0l4ErJi
         Sh4x8QxrkIPHkfGavxcV00iLzgGGJnXpupRB7NbvJsyu0Qjr05iS+LTTzTDOsx3Jpf6G
         BBWuB+CQHeC75FVMDa2uDeyAQiT0SEcXZV2ULv4NxTkzd3fyCTxVsSpxHSWfAuMvnb1O
         Rh/TfcaF0tnnyFlRBY70YsrMpMS9sRKYiKA4/ehRy1BJ34xhIseVr3tzcQnVjsN1NHry
         i1bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="JJ0iBz/+";
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id g2si1049993qko.5.2020.12.14.23.18.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 23:18:25 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-80-pc0B0HFyNzy2yCSEATnWdw-1; Tue, 15 Dec 2020 02:18:21 -0500
X-MC-Unique: pc0B0HFyNzy2yCSEATnWdw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 735631E7C6;
	Tue, 15 Dec 2020 07:18:19 +0000 (UTC)
Received: from localhost (ovpn-12-228.pek2.redhat.com [10.72.12.228])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7907013470;
	Tue, 15 Dec 2020 07:18:15 +0000 (UTC)
Date: Tue, 15 Dec 2020 15:18:12 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, gopakumarr@vmware.com,
	akpm@linux-foundation.org, rppt@kernel.org,
	natechancellor@gmail.com, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com, rostedt@goodmis.org,
	manir@vmware.com, lauyiuch@vmware.com, pjonasson@vmware.com,
	rajaramv@vmware.com
Subject: Re: [PATCH 2/2] mm: rename memmap_init() and memmap_init_zone()
Message-ID: <20201215071812.GA8928@MiWiFi-R3L-srv>
References: <20201213150942.20990-1-bhe@redhat.com>
 <20201213150942.20990-3-bhe@redhat.com>
 <c53c5290-b5c1-87bb-d562-348d4c8bd7eb@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c53c5290-b5c1-87bb-d562-348d4c8bd7eb@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="JJ0iBz/+";
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124
 as permitted sender) smtp.mailfrom=bhe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On 12/14/20 at 11:00am, David Hildenbrand wrote:
> On 13.12.20 16:09, Baoquan He wrote:
> > The current memmap_init_zone() only handles memory region inside one zone.
> > Actually memmap_init() does the memmap init of one zone. So rename both of
> > them accordingly.
> > 
> > And also rename the function parameter 'range_start_pfn' and local variable
> > 'range_end_pfn' to zone_start_pfn/zone_end_pfn.
> > 
> > Signed-off-by: Baoquan He <bhe@redhat.com>
> > ---
> >  arch/ia64/mm/init.c |  6 +++---
> >  include/linux/mm.h  |  2 +-
> >  mm/memory_hotplug.c |  2 +-
> >  mm/page_alloc.c     | 16 ++++++++--------
> >  4 files changed, 13 insertions(+), 13 deletions(-)
> > 
> > diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
> > index 27ca549ff47e..af678197ac2d 100644
> > --- a/arch/ia64/mm/init.c
> > +++ b/arch/ia64/mm/init.c
> > @@ -535,18 +535,18 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
> >  		    / sizeof(struct page));
> >  
> >  	if (map_start < map_end)
> > -		memmap_init_zone((unsigned long)(map_end - map_start),
> > +		memmap_init_range((unsigned long)(map_end - map_start),
> >  				 args->nid, args->zone, page_to_pfn(map_start), page_to_pfn(map_end),
> >  				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
> >  	return 0;
> >  }
> >  
> >  void __meminit
> > -memmap_init (unsigned long size, int nid, unsigned long zone,
> > +memmap_init_zone (unsigned long size, int nid, unsigned long zone,
> >  	     unsigned long start_pfn)
> 
> While at it s/zone /zone/ please. :)

Yeah, when I git grep 'memmap_init(', I didn't searched the one in ia64,
didn't adjust it since I saw so many functions got a space between
name and parenthesis in arch/ia64/mm/. I will clean up this one anyway.

> 
> >  {
> >  	if (!vmem_map) {
> > -		memmap_init_zone(size, nid, zone, start_pfn, start_pfn + size,
> > +		memmap_init_range(size, nid, zone, start_pfn, start_pfn + size,
> >  				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
> >  	} else {
> >  		struct page *start;
...

> > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > index 315c22974f0d..fac599deba56 100644
> > --- a/mm/page_alloc.c
> > +++ b/mm/page_alloc.c
> > @@ -6050,7 +6050,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
> >   * (usually MIGRATE_MOVABLE). Besides setting the migratetype, no related
> >   * zone stats (e.g., nr_isolate_pageblock) are touched.
> >   */
> > -void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
> > +void __meminit memmap_init_range(unsigned long size, int nid, unsigned long zone,
> >  		unsigned long start_pfn, unsigned long zone_end_pfn,
> >  		enum meminit_context context,
> >  		struct vmem_altmap *altmap, int migratetype)
> > @@ -6187,21 +6187,21 @@ static void __meminit zone_init_free_lists(struct zone *zone)
> >  	}
> >  }
> >  
> > -void __meminit __weak memmap_init(unsigned long size, int nid,
> > +void __meminit __weak memmap_init_zone(unsigned long size, int nid,
> >  				  unsigned long zone,
> > -				  unsigned long range_start_pfn)
> > +				  unsigned long zone_start_pfn)
> 
> Why are we not simply passing "struct zone" like
> 
> void __meminit __weak  memmap_init_zone(struct zone *zone)
> 
> from which we can derive
> - nid
> - zone idx
> - zone_start_pfn
> - spanned_pages / zone_end_pfn
> 
> At least when called from free_area_init_core() this should work just
> fine I think.

Yes, passing 'struct zone *zone' looks much better, I will append a patch to
do this. Thanks.

> 
> 
> 
> >  {
> >  	unsigned long start_pfn, end_pfn;
> > -	unsigned long range_end_pfn = range_start_pfn + size;
> > +	unsigned long zone_end_pfn = zone_start_pfn + size;
> >  	int i;
> >  
> >  	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
> > -		start_pfn = clamp(start_pfn, range_start_pfn, range_end_pfn);
> > -		end_pfn = clamp(end_pfn, range_start_pfn, range_end_pfn);
> > +		start_pfn = clamp(start_pfn, zone_start_pfn, zone_end_pfn);
> > +		end_pfn = clamp(end_pfn, zone_start_pfn, zone_end_pfn);
> >  
> >  		if (end_pfn > start_pfn) {
> >  			size = end_pfn - start_pfn;
> > -			memmap_init_zone(size, nid, zone, start_pfn, range_end_pfn,
> > +			memmap_init_range(size, nid, zone, start_pfn, zone_end_pfn,
> >  					 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
> >  		}
> >  	}
> > @@ -6903,7 +6903,7 @@ static void __init free_area_init_core(struct pglist_data *pgdat)
> >  		set_pageblock_order();
> >  		setup_usemap(pgdat, zone, zone_start_pfn, size);
> >  		init_currently_empty_zone(zone, zone_start_pfn, size);
> > -		memmap_init(size, nid, j, zone_start_pfn);
> > +		memmap_init_zone(size, nid, j, zone_start_pfn);
> >  	}
> >  }
> >  
> > 
> 
> 
> -- 
> Thanks,
> 
> David / dhildenb
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201215071812.GA8928%40MiWiFi-R3L-srv.
