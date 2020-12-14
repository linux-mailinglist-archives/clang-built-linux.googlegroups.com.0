Return-Path: <clang-built-linux+bncBAABBWUN3X7AKGQEXLLXYWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F07E2D96EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 12:05:00 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id f7sf8649119qvr.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 03:05:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607943899; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKbc8XksJizHCUV7pdc426DUaRQ+TWx66EmF1O1JxJjTzFV8r+Os3puwy2VMudzoDE
         jGZrCYQUs8appyjjgzz6uZQ8xA1RE7fZE5Tr3/jmTPqIiPeYFlud1HP+JHVmiox92nin
         Ziwr1lVho3OSgtuGF0kqHx1+LtPQobQA06QF5DVokvsurg+imOG2pKZWkqhNEk/2ocb+
         TTCXRvJo2/c5OUd9gmDh98zyok77bu10MItgOkUuFCCU8C79DIC5vrmNia7L41LU1FXg
         PQ13qrePJzgQP8y2SiyqRxpGHRkKV1bvvRsbCGROOO5UV7woEEpU8lYzzoGiZvKAfQWR
         g7yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NOI+UbtdfCb7kNCsGmnPO1iD/y5bZV1QNyaXPMqgB9Y=;
        b=vbznwYwVaLgBvTmJrWMHGWuNqBToDRXQMa5qDE/JPWJTR1reh+fbcM2V00YBPufI+U
         /HJv/XYgz/rhV5t/TZL+oPylu2Of22g8aMtF6mfXY6s0+JPRJI63uvnOp7LXfQDURMkE
         WhUJuXmphG1mzLChbkQXX+ErQe9mNeqzYr5fdzhIefzFyrt+vx5amTs14GA+jfjGe0Cr
         i1qZTQT94I08LzyXVSClErj0FN3lrxerX+7FuPq0Bx4eRmVRUZYKIYoC0n4gnRGE7/m7
         FytFPHMsxhpijDWZ1D5vDElerscPNSpcMXGsHqV4iJjAlohvJoVoIAqR5xG8z3tEHMHq
         HKlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=koD3ffQk;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NOI+UbtdfCb7kNCsGmnPO1iD/y5bZV1QNyaXPMqgB9Y=;
        b=q1Yzp/hclCRLF88mVPPC0A+V6GKFH0aplJ0Hf2hOB7r2sFk+47tFMMsb9fCVKRCH3P
         lMOKgcnjw6/3isoGDiy9gADMnqWmtDgT8x2zo10tL1+4XVViz037PJKL4VdN5R+Z4pjr
         OnS+MOA7jELqBUj0KwrOOVREVC0FBn78ZE6piQxlsWkl9XCKQC8ggOMMMD3GXfbcaIS8
         /MdbvYNuAk/AwWOPv/YLNGBa2AmRKyAou5koTR3rLr4bhN3Mkycq5Z/NxGn4WQbojD5M
         +/c5d0LSUdgk710dVOja3pmvzlUAoc6AcFgge2mKKgLIad4ARS26ixF5rHbPruTv+740
         OCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NOI+UbtdfCb7kNCsGmnPO1iD/y5bZV1QNyaXPMqgB9Y=;
        b=Qo262Fy5j/cGZacvf+oiGUNNW+bA0JI4YSq8qcgmlkPTqf/vclSUCF4jkBsGnMoOSa
         +XRcrJlgmlHMbeiSyHiRxz2ZZL/FglMVCF3nAFgPA6zCYNdX4mOMniKPsXtkK7zucpIl
         EgN+xTRG4tfZO6j66RMd/6c1xdrS54pj0/NW5nU4tmdhrVFPqVTBPXIxeBJBF84Q1SUe
         uOhbCZLSptqmlG9PQ8of0Bq5pnrAv5S5ptIGq16c2aDYvyz8NTfpnya9v/NVuqsvn77u
         5rBjK1/R3gUnGQiitUmqoiY2o0oDUlj7bRC4pKcexCKaA7Aei7s2rYu8t0+yW65Rbu9l
         ztqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DzF7QBEwJR3scYcaWivu6wI9BMtjTXx3zeC/eL6hrdqGgsh7k
	wDcW/UQzc3ySjfzJI4/VywM=
X-Google-Smtp-Source: ABdhPJzb06aBNgE+xEmqdn6CiOaDnqeWxKOCEyQalho0+d1rVhoKWYORFPCZZQW+zoTHA99ybgU45g==
X-Received: by 2002:a37:4a58:: with SMTP id x85mr30285527qka.83.1607943898991;
        Mon, 14 Dec 2020 03:04:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4434:: with SMTP id e20ls3807613qvt.3.gmail; Mon, 14 Dec
 2020 03:04:58 -0800 (PST)
X-Received: by 2002:ad4:4f0c:: with SMTP id fb12mr30703165qvb.16.1607943898679;
        Mon, 14 Dec 2020 03:04:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607943898; cv=none;
        d=google.com; s=arc-20160816;
        b=NeD0XVSKSzTYYj9+1O7qHQBuQ0yIu5QOw80t10I/viuVv01HZhZQM1Du9AFu/dMiIs
         bplUbUt7Y2/klGhpVeAiANYovJwInktThJpBgoO8Zqf3btAp/FEpPm17vIKuT0ORi4qw
         RkWjktA9Q+WVgbt6M18fbnDb7aQ4A40Q5RUSogL0tFp6hv+1EdUj0Wrz2CTWRmX+iQf4
         X7IZZ3Xh+88ZRodEKqM+AbjlHig3IKo1pj69/7j6qzag2GCrquy3ZM5y0Fyv/NrbHYFT
         z5tFPI/99fxUAA7UHvfOJLSReVJNzOnuHzX6K5vqMyFFk550/QaQLcBU+WUXsSaaCncU
         DllA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date;
        bh=7NVMaATMNR45snM/q3KMo1DEsvMrsbN79Rjy1qoWKJQ=;
        b=RPDmt+JnwiH2zwoxv7hQ28MShH9FrewwYWwLrT3z+9+bqy7fF4KhJGSNVx/pvDOKkr
         RTlJ5kuJmfF/BJGX8B8wfjl/CkIdmsAFiyMdZ3vsN3p4aMUEGnYdVWnSwL7aMMpBTFwP
         LvgAlgi6PBXt9GdMZnLUHs1jkFDKfVk9EohqNjvPWRwWiwdMY+biJyQR5lDVS6EK+kSG
         MODWE8ELHREogu1Kzb2cy8CQJSSxO/XG5OeAB4uV6MxKcjza46NQVMUEkVH/ogDDaS4D
         dM2F4GuxqPEppgy33sJdtelyOEpneRalaJVbSQORCIr8oKdM9HpYwh3SWBiEPM37XRfM
         vtQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=koD3ffQk;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m11si848110qkn.1.2020.12.14.03.04.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 03:04:58 -0800 (PST)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Mon, 14 Dec 2020 13:04:48 +0200
From: Mike Rapoport <rppt@kernel.org>
To: David Hildenbrand <david@redhat.com>
Cc: Baoquan He <bhe@redhat.com>, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, gopakumarr@vmware.com,
	akpm@linux-foundation.org, natechancellor@gmail.com,
	ndesaulniers@google.com, clang-built-linux@googlegroups.com,
	rostedt@goodmis.org, manir@vmware.com, lauyiuch@vmware.com,
	pjonasson@vmware.com, rajaramv@vmware.com
Subject: Re: [PATCH 2/2] mm: rename memmap_init() and memmap_init_zone()
Message-ID: <20201214110448.GB198219@kernel.org>
References: <20201213150942.20990-1-bhe@redhat.com>
 <20201213150942.20990-3-bhe@redhat.com>
 <c53c5290-b5c1-87bb-d562-348d4c8bd7eb@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c53c5290-b5c1-87bb-d562-348d4c8bd7eb@redhat.com>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=koD3ffQk;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Dec 14, 2020 at 11:00:07AM +0100, David Hildenbrand wrote:
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
> 
> >  {
> >  	if (!vmem_map) {
> > -		memmap_init_zone(size, nid, zone, start_pfn, start_pfn + size,
> > +		memmap_init_range(size, nid, zone, start_pfn, start_pfn + size,
> >  				 MEMINIT_EARLY, NULL, MIGRATE_MOVABLE);
> >  	} else {
> >  		struct page *start;
> > diff --git a/include/linux/mm.h b/include/linux/mm.h
> > index cd5c313729ea..3d81ebbbef89 100644
> > --- a/include/linux/mm.h
> > +++ b/include/linux/mm.h
> > @@ -2439,7 +2439,7 @@ extern int __meminit __early_pfn_to_nid(unsigned long pfn,
> >  #endif
> >  
> >  extern void set_dma_reserve(unsigned long new_dma_reserve);
> > -extern void memmap_init_zone(unsigned long, int, unsigned long,
> > +extern void memmap_init_range(unsigned long, int, unsigned long,
> >  		unsigned long, unsigned long, enum meminit_context,
> >  		struct vmem_altmap *, int migratetype);
> >  extern void setup_per_zone_wmarks(void);
> > diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> > index 47b75da63f01..579762e4f8d8 100644
> > --- a/mm/memory_hotplug.c
> > +++ b/mm/memory_hotplug.c
> > @@ -714,7 +714,7 @@ void __ref move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
> >  	 * expects the zone spans the pfn range. All the pages in the range
> >  	 * are reserved so nobody should be touching them so we should be safe
> >  	 */
> > -	memmap_init_zone(nr_pages, nid, zone_idx(zone), start_pfn, 0,
> > +	memmap_init_range(nr_pages, nid, zone_idx(zone), start_pfn, 0,
> >  			 MEMINIT_HOTPLUG, altmap, migratetype);
> >  
> >  	set_zone_contiguous(zone);
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
 
There is also a custom memmap init in ia64 which at least should be
tested ;-)

More broadly, while Baoquan's fix looks Ok to me, I think we can
calculate node->first_deferred_pfn earlier in, say,
free_area_init_node() rather than do defer_init() check for each pfn.
 
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

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201214110448.GB198219%40kernel.org.
