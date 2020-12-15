Return-Path: <clang-built-linux+bncBCKPFB7SXUERB67W4H7AKGQEBC43MKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 626072DA995
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 10:01:48 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id m203sf1584976ybf.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 01:01:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608022907; cv=pass;
        d=google.com; s=arc-20160816;
        b=OizMKN3mRFlCRlSz1/fUlLcOI3cgfaWSotCDx/J5MG/Mff/FNfKGR9GF/J8ihbbL+a
         FZ1w7+7FIcjR+r3lF09dNWz42rvP0eqnoPYkNt0m/X89viPGuVFHRf3duJE3nS8B98FY
         BeVdqoyzG+TEzWeL4/tQKqJlnp/xfKfENbMD8TPyV1P5X8j/yfQFJt2UzSQGLw1Jdrh7
         03F0eZiPZ5mCi5IdSXCQbbp508JcMnur9XjL2xElCPBFLmrpCRydHqdL+u8QMoYuG5/B
         xEOUpD+e6Tc2WKFOFhNkBj6rOIpQpQ4n4dd1adzp16lFiUDF8NBg+1oxrChZHZT92Sl6
         Sa0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+anLjkZ/ucyiQCOOQw1VMVKfC4jTGlE5hRrYBSb/WSY=;
        b=Frpp3uktuGy/ZiKSYrOih6I9zJAWLtmOOKNAhJ/ig8fHX4Uy4PnIhKJfe8oVogikU3
         fS8wO2zULUdkIdo0dm+0jFNIf0YGmHCJOPZyPIjcgu/lP5EBx5PSoB2dUBlSCPPQfVEl
         1gwmcZMPisF6wDsm/tI5m7z4RkAN7se+i/KUwWsknUByDYByRXLZLrriQ7//vu0e1krn
         pTpBU85d2GE19EvJ3IWNZux7EJQHHpVgs2giK/RtDj7I+g0ipLDPLD2lT/Yg07WqftOt
         IjDwtKkU0hor/0yPPYmdqQgmTfIWp2sZq+oD/Q4T3Vxqs8IYbQKbqHlUInPQONfD8W2r
         MgGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CUtXffAX;
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+anLjkZ/ucyiQCOOQw1VMVKfC4jTGlE5hRrYBSb/WSY=;
        b=YSRGphod8TpzWGWSHB8ey+I1mLuRLG3rTtDKWx/eAe3gDdad8Bz9Nn7pzjdC0EWYcf
         UvDbv+v9vpUe9fG1GyiyXRhIFhcoWf+YZpR2jVaBT0aFNHdvZ7Z1pCYEA8Ta299AmmD4
         wFMpWgF/juKOIKEnV5ez6vyoxzzB4YlzqmfX/MBGOPOicm6eGBuizYeiTW03mE/hs6qU
         f9ZqZEDatBoWnV4Eamgd9disAL28YDpIDyF+809rrUfnkV7htuW2JTxZXvEQ1uXTDIAt
         WNkyXG0uSBZZ1b+fbx6J5HJx3eXE7Ci556D1xU/vZoPVyFpe7AAbmdvPt81KME668UYX
         Ds5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+anLjkZ/ucyiQCOOQw1VMVKfC4jTGlE5hRrYBSb/WSY=;
        b=j+TJ0fEmomLC6ohtbrX5x/7dtuLbPhoscecpvC7y2cOQl9l0YdxkMzI2iR9Mkv6cYr
         InAA41dSQnmpcT7MnWDj3t94dvcuEZbzAXP/RBjUfuOsEWVoraPddQdRvKthFJKVZ5Ym
         fSE7C/RJ4Twcl9/UoNbBmbFZpZz3wYp3esfrJq7T4sjGUepbktb1mnL2z+66AO1dmgPF
         c/d4T61FSrT7IrVwE3ifKTs69SA+tI6Ldr8ngT+dNKVR6Di2GFc69DZQnCPIBwrhP4cU
         0xKgjqgg6xrxSO2EzTSBvmc/XSp6Epqc9FRHHiA7OnbQossVFO9qnMqovd0sVSDaWFyV
         9zDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sjdSiKg0KNE5DayMCmyJYmGTPnjigD3Kam/JNhnPozhnXOtFn
	zek7Xi1qpeITARWTAF0/ykQ=
X-Google-Smtp-Source: ABdhPJzjbRXROTtKL+TCpmVGnPffnqNHFeYcWsrYtk9aTQxa0AFOvKeApop14vT/fQsQ2KEy7qbjlQ==
X-Received: by 2002:a25:34c2:: with SMTP id b185mr23590124yba.320.1608022907280;
        Tue, 15 Dec 2020 01:01:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls9540794yba.10.gmail; Tue, 15
 Dec 2020 01:01:46 -0800 (PST)
X-Received: by 2002:a25:428c:: with SMTP id p134mr41974288yba.354.1608022906864;
        Tue, 15 Dec 2020 01:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608022906; cv=none;
        d=google.com; s=arc-20160816;
        b=dPnXRAhM8IjlfGDjHFBKyjXOZ06tdqh8R91ugWYa0ueCtRAfj/NO8zweugvlBpFvN8
         Sj/gpSQiot/bmLh5536wn3TWUj2Or1Zz5YA3+XqhoDZNm4uGXTOki8BRkIHwK9U5mlR6
         ADGBq7xgNEnOKIY7t55Vv/T3g0H5jLSiKxTCG86em3hOjiSAczMIhsyMLOI0YrJhrn70
         Jbhnoln6UqYdUon4QbpRgCNEwh90dEWYG2/WvcEKagacipobGP6sn3DzAGM2dAxl6l9Y
         vFB5rE5Cx5wZCMMpKsHSLp3oY/bNFbQDBZLORqVeP2HIdblVd9IpyHy88ioKSa0jvtVq
         FWpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iVXua2XfuxOIMusyudjNmNVLYRtRtCTodaIlSiH6G9A=;
        b=DRG5gs/yyDIiOv3ABULGmzDI5LMz3ln1s76FzQGMI3ZQTXgs7WE9EGHQXFbyS/LreB
         PaWdHrigkSoe2PNVUHl0PwAivWdugK+8yITfaUgexUQ4Zn875iSAcrTQ6YFGHX0o3Ijh
         uem562yWY1+CO0ch9tf73MwebeOIiGn9eeRC5tLjr3P1//s+q2AbW58s0UN/Jo5o8jPl
         M/K0HYHWb7dADC7NEiqakVOS+3osQ8YR1Y1dLVF/MIZJjTLQsxZ8umMKCyBqrAkCpjTN
         7G2zkG2i60K4Bd746iUAFqo+ugtqwPNEHTytmGVmGevis1LOwUSFD6FCOsvFrjsVsEJm
         inKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CUtXffAX;
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id k6si103311ybd.5.2020.12.15.01.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 01:01:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-242-pClKqykwNpm38p695HUDGw-1; Tue, 15 Dec 2020 04:01:41 -0500
X-MC-Unique: pClKqykwNpm38p695HUDGw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73A15107ACE4;
	Tue, 15 Dec 2020 09:01:39 +0000 (UTC)
Received: from localhost (ovpn-12-228.pek2.redhat.com [10.72.12.228])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F0C25D9DE;
	Tue, 15 Dec 2020 09:01:35 +0000 (UTC)
Date: Tue, 15 Dec 2020 17:01:33 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@kernel.org>
Cc: David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, gopakumarr@vmware.com,
	akpm@linux-foundation.org, natechancellor@gmail.com,
	ndesaulniers@google.com, clang-built-linux@googlegroups.com,
	rostedt@goodmis.org, manir@vmware.com, lauyiuch@vmware.com,
	pjonasson@vmware.com, rajaramv@vmware.com
Subject: Re: [PATCH 2/2] mm: rename memmap_init() and memmap_init_zone()
Message-ID: <20201215090133.GB8928@MiWiFi-R3L-srv>
References: <20201213150942.20990-1-bhe@redhat.com>
 <20201213150942.20990-3-bhe@redhat.com>
 <c53c5290-b5c1-87bb-d562-348d4c8bd7eb@redhat.com>
 <20201214110448.GB198219@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201214110448.GB198219@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CUtXffAX;
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

On 12/14/20 at 01:04pm, Mike Rapoport wrote:
> On Mon, Dec 14, 2020 at 11:00:07AM +0100, David Hildenbrand wrote:
> > On 13.12.20 16:09, Baoquan He wrote:
> > > The current memmap_init_zone() only handles memory region inside one zone.
> > > Actually memmap_init() does the memmap init of one zone. So rename both of
> > > them accordingly.
> > > 
> > > And also rename the function parameter 'range_start_pfn' and local variable
> > > 'range_end_pfn' to zone_start_pfn/zone_end_pfn.
> > > 
> > > Signed-off-by: Baoquan He <bhe@redhat.com>
> > > ---
......  

> > >  	set_zone_contiguous(zone);
> > > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > > index 315c22974f0d..fac599deba56 100644
> > > --- a/mm/page_alloc.c
> > > +++ b/mm/page_alloc.c
> > > @@ -6050,7 +6050,7 @@ overlap_memmap_init(unsigned long zone, unsigned long *pfn)
> > >   * (usually MIGRATE_MOVABLE). Besides setting the migratetype, no related
> > >   * zone stats (e.g., nr_isolate_pageblock) are touched.
> > >   */
> > > -void __meminit memmap_init_zone(unsigned long size, int nid, unsigned long zone,
> > > +void __meminit memmap_init_range(unsigned long size, int nid, unsigned long zone,
> > >  		unsigned long start_pfn, unsigned long zone_end_pfn,
> > >  		enum meminit_context context,
> > >  		struct vmem_altmap *altmap, int migratetype)
> > > @@ -6187,21 +6187,21 @@ static void __meminit zone_init_free_lists(struct zone *zone)
> > >  	}
> > >  }
> > >  
> > > -void __meminit __weak memmap_init(unsigned long size, int nid,
> > > +void __meminit __weak memmap_init_zone(unsigned long size, int nid,
> > >  				  unsigned long zone,
> > > -				  unsigned long range_start_pfn)
> > > +				  unsigned long zone_start_pfn)
> > 
> > Why are we not simply passing "struct zone" like
> > 
> > void __meminit __weak  memmap_init_zone(struct zone *zone)
> > 
> > from which we can derive
> > - nid
> > - zone idx
> > - zone_start_pfn
> > - spanned_pages / zone_end_pfn
> > 
> > At least when called from free_area_init_core() this should work just
> > fine I think.
>  
> There is also a custom memmap init in ia64 which at least should be
> tested ;-)

Right. Tried in arch/ia64/mm/init.c, the change is as below. Looks
simple, compiling passed on ia64 should be OK.


diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
index af678197ac2d..4fa49a762d58 100644
--- a/arch/ia64/mm/init.c
+++ b/arch/ia64/mm/init.c
@@ -541,12 +541,14 @@ virtual_memmap_init(u64 start, u64 end, void *arg)
 	return 0;
 }
 
-void __meminit
-memmap_init_zone (unsigned long size, int nid, unsigned long zone,
-	     unsigned long start_pfn)
+void __meminit memmap_init_zone (struct zone *zone)
 {
+	unsigned long size = zone->spanned_size;
+	int nid = zone_to_nid(zone), zone_id = zone_idx(zone);
+	unsigned long start_pfn = zone->zone_start_pfn;
+
 	if (!vmem_map) {
-		memmap_init_range(size, nid, zone, start_pfn, start_pfn + size,
+		memmap_init_range(size, nid, zone_id, start_pfn, start_pfn + size,
 				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
 	} else {
 		struct page *start;
@@ -556,7 +558,7 @@ memmap_init_zone (unsigned long size, int nid, unsigned long zone,
 		args.start = start;
 		args.end = start + size;
 		args.nid = nid;
-		args.zone = zone;
+		args.zone = zone_id;
 
 		efi_memmap_walk(virtual_memmap_init, &args);
 	}
> 
> More broadly, while Baoquan's fix looks Ok to me, I think we can
> calculate node->first_deferred_pfn earlier in, say,
> free_area_init_node() rather than do defer_init() check for each pfn.

Remember I ever tried to move the defer init up one level into memmap_init()
when making draft patch in the first place. I finally ended up with this
because there's overlap_memmap_init().

>  
> > >  {
> > >  	unsigned long start_pfn, end_pfn;
> > > -	unsigned long range_end_pfn = range_start_pfn + size;
> > > +	unsigned long zone_end_pfn = zone_start_pfn + size;
> > >  	int i;
> > >  
> > >  	for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
> > > -		start_pfn = clamp(start_pfn, range_start_pfn, range_end_pfn);
> > > -		end_pfn = clamp(end_pfn, range_start_pfn, range_end_pfn);
> > > +		start_pfn = clamp(start_pfn, zone_start_pfn, zone_end_pfn);
> > > +		end_pfn = clamp(end_pfn, zone_start_pfn, zone_end_pfn);
> > >  
> > >  		if (end_pfn > start_pfn) {
> > >  			size = end_pfn - start_pfn;
> > > -			memmap_init_zone(size, nid, zone, start_pfn, range_end_pfn,
> > > +			memmap_init_range(size, nid, zone, start_pfn, zone_end_pfn,
> > >  					 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
> > >  		}
> > >  	}
> > > @@ -6903,7 +6903,7 @@ static void __init free_area_init_core(struct pglist_data *pgdat)
> > >  		set_pageblock_order();
> > >  		setup_usemap(pgdat, zone, zone_start_pfn, size);
> > >  		init_currently_empty_zone(zone, zone_start_pfn, size);
> > > -		memmap_init(size, nid, j, zone_start_pfn);
> > > +		memmap_init_zone(size, nid, j, zone_start_pfn);
> > >  	}
> > >  }
> > >  
> > > 
> > 
> > 
> > -- 
> > Thanks,
> > 
> > David / dhildenb
> > 
> 
> -- 
> Sincerely yours,
> Mike.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201215090133.GB8928%40MiWiFi-R3L-srv.
