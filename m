Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXOVYD3QKGQEG7J3JFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 548F0202EEF
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 05:51:58 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id q14sf11065626ils.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 20:51:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592797917; cv=pass;
        d=google.com; s=arc-20160816;
        b=qicBfGB6QeUn6U8eGgxsSE9zABdctzIaOEXKGsdpnk6B8LmzsZhOIUHklZ5rQAoPaL
         MwugI4obmRW664Z5iF7rdsjRNdWIRwtwsQEuAAQ1iQ5BaLPhfZ3dyV92D3Ed7CZ9xzaz
         MlTq7q1QVJl7XxIdhyLJweEeTagXzGvte2p1/rFRHF/MR/6Z2H+bPUPsSRb0NSgJeCH3
         JwRQ/4EBwzseb+cP/G/nx+WZuuHV/v9CXSYaTr0QW5mSqEe1r2ksIRHmn4+O57is8kQD
         wsMO5qRbnNO7/eS39xToqvb4OrUAIyvaToDP4kAxGdnnT/afOOVoLVPf5xlrcJlhaaYH
         jjEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=8MYf6IHx9I60Y0xSKaITNspoID0KasLK4/jYnCNQza8=;
        b=ys/e4lrjOgR7yVB/G4Q5mj4742Xu18CYk52imdH8iFKWo0iW/sDXGi6pWYTwCHP7c8
         1nSOXsjM0EvafPaRbPlRvior8z92veCCJOwvUoWTaH4ODv5RgXicGaEm+raBaxj5nTJG
         rR8cRSA5uoymT2vPO+RRvev2o6zSsPR2S4eywfL9+cPyx4hUcp1CEJMsns7Wmeab6tyw
         sMkZN4r/jGDtCU35K2oE0jkbd3CdJQF8NOq0uGh0YMM9faygUdxW2G7T9YirOLmMBTJ2
         Y9BIXhbDGK93BF2UmIA/TcZeosJQMClNJSHxe7luIFlvxDbMnWAZatFjImzC9nqEt8/d
         oiKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TRefbf1X;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8MYf6IHx9I60Y0xSKaITNspoID0KasLK4/jYnCNQza8=;
        b=qJ+Y3gCEzJBSkypiAA8ixlmr9l7nS94VAEcdn8FG9BQYFLIr6PytKhL8poWgbmDT6y
         0tPKNYPW/9tDjjm2r7wGvrMh+ZqHkKiYifsRNRWs675APrqCtVswKIwp8eSBZyEG6eS7
         K0tMb8E9QCT1Y9fUyMPTtJq1ts7809O/YObG5LYezIjxZ0veC2aToPLFMZpwUDgCawUy
         R21SqwAoGNqF+Xy3N3BlnXZyN2+aVTwmeeuoEUwyzYUb3xf5CwuPpJ7vCkeSJxTpHeWf
         sPGoQukGdXgnFfbNDXJkLu0WYbDXI/Gbcu82WKWel0WJ8y32w3/pK06WW0RsDzUjLbMF
         OWDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8MYf6IHx9I60Y0xSKaITNspoID0KasLK4/jYnCNQza8=;
        b=ZwN8dssC5+qgjvu4zVM8qo8AZK/Xcp+M+1QLBZM7bWuaV23JSMGjyjUhUUUJ0vLfWY
         e0rEsxOmjp2KKK1qXqPvNfCPtIQUAFyaQi7Qu6A7F2361vPRzgMeUy/kUur7DgO0nlBE
         kcanwM/kNJSwzMWXyKZzhgG3ksnHjnbOIAEBsmNvC8CzMcA7kcvyOitvP7c38v693GkK
         9xiiJpsHQtKf8h0hazAmk8nKPzigPzUxgyr6D4windLiNqcIuqAw+BuuHgePpsdrOnmj
         /+DQSafAfwp5pLTAax6rQJayCUDYRL4FWzL3VF/vt053XCIKKHx3MTQOiiRAt09kENwe
         CQhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8MYf6IHx9I60Y0xSKaITNspoID0KasLK4/jYnCNQza8=;
        b=CdDzJs6AtCrJAyG78bvMokizadLD3FDLOtK9eOcS7wxmxbELDctOeZxffWVSc5es2C
         UzBCeYNfcYsYus432sNzI7UOV5W2G7/P8wdx6FT1rH6MtkzJm8q8hm3vVX9H7Ob5VyR+
         ZeNVvZog4j+zjYvd49udHFiV5LOcg/cBWgDQtmgxdrA1BGOWUOEPpVkm96wRY/3Pp/AX
         5ZW8BF3oikU+F3EhDSCXkM1f0gDZk8N8vszQbF0uulQYMyXIPyy3244UM80o0MMFrUB1
         17w0hOdi5rVfpCQIVSVXV1wyEh+rt8osnwHZ6J+nq9p8X0myt3PG4VtCracQpVBgI8bI
         zEFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310cAIoMLNLk/iYYioy7LdrV+XBb7MEgJyxMl5X/i9WIsRmxInR
	zC+GIF37Kl9hsqoZQ3Ud0BI=
X-Google-Smtp-Source: ABdhPJx6YF0ZR6aK2SIxDlETwdimloUrsaLB0eZ7+zggb3ruCbpiMLDZC9LQKYCq6ICg5A2APXkNZQ==
X-Received: by 2002:a92:c812:: with SMTP id v18mr15938503iln.178.1592797917210;
        Sun, 21 Jun 2020 20:51:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a399:: with SMTP id y25ls25291jak.1.gmail; Sun, 21 Jun
 2020 20:51:56 -0700 (PDT)
X-Received: by 2002:a02:cd1b:: with SMTP id g27mr15721636jaq.61.1592797916828;
        Sun, 21 Jun 2020 20:51:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592797916; cv=none;
        d=google.com; s=arc-20160816;
        b=R3WFMhcqg3nB61fMWXf/fWnBEPQlpSbgRHLi5gktJQPjDcIzG2WSMWDZtT1dUsSl9b
         oQy8jenH3UxMvaj8a+LN8xmL5b+ys1RsDJekZakCDWfMEkzXG2Mf3BmohZzmskqgGqwg
         8PtSrBox2gdkvD7ZRjlFZd5+VmjPjbaQvKGPnQ0wza8X3O/DUI87qnk03Y3PRmPwc1vV
         xt3tPLqJ6xJB/Ei/LxoUykZDLCilY0nEww/p8hT0CESxVn2iwYumt1A33PUAS65ry6bP
         GmOja7nZCU+8qtBHwhX3C3ja3sAgMbJsVegdSvMWWuXHRLumzxpqTVPMzK6S0xC4bX5E
         PeOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jPZz3H1bJualnrErIHRAoXkRSJR+RreP0gv4U2JUbAM=;
        b=XiUmHSKqj17mklAe+4/HgM+kM9cXk479DtobTThyHZB3gEMwVOV1VbohXgfOTroBrm
         BFxOK2qmADYJdfOm1ETHrGrzis/SrXqxfpkkYHG+WhyYU7cw1XyjMIuNyEWK0uc5BuEY
         UQ8Yqssp4h8wn3EwU2Pu32/yEh7sGhZmJ2UIExHAMP+Cw/JGt9wN/O2BUaWJ1v4LdGne
         YVjl2Xwl/7wQibpHOOxM+k4anesELeT5tE1ED1zdt5F7/5MiBCycGGDDgLBcONV1JuMu
         SL6MgVuh6bTkaBzsKO6Xh0OfZJ3ruBt9IA3V7ZOp1/8LL4h6xKn5RzFai+DwiVhCUdUT
         2Z+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TRefbf1X;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id f15si168744ilr.0.2020.06.21.20.51.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jun 2020 20:51:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id c194so14419367oig.5
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jun 2020 20:51:56 -0700 (PDT)
X-Received: by 2002:aca:41c2:: with SMTP id o185mr10744207oia.94.1592797916305;
        Sun, 21 Jun 2020 20:51:56 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id i16sm3050364otc.33.2020.06.21.20.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2020 20:51:55 -0700 (PDT)
Date: Sun, 21 Jun 2020 20:51:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Roman Gushchin <guro@fb.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>,
	Johannes Weiner <hannes@cmpxchg.org>,
	Michal Hocko <mhocko@kernel.org>,
	Shakeel Butt <shakeelb@google.com>, linux-mm@kvack.org,
	kernel-team@fb.com, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 3/5] mm: memcg/percpu: per-memcg percpu memory
 statistics
Message-ID: <20200622035153.GA3073407@ubuntu-n2-xlarge-x86>
References: <20200608230819.832349-1-guro@fb.com>
 <20200608230819.832349-4-guro@fb.com>
 <20200622014803.GA2916179@ubuntu-n2-xlarge-x86>
 <20200622032635.GC293939@carbon.DHCP.thefacebook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622032635.GC293939@carbon.DHCP.thefacebook.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TRefbf1X;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Jun 21, 2020 at 08:26:35PM -0700, Roman Gushchin wrote:
> On Sun, Jun 21, 2020 at 06:48:03PM -0700, Nathan Chancellor wrote:
> > On Mon, Jun 08, 2020 at 04:08:17PM -0700, Roman Gushchin wrote:
> > > Percpu memory can represent a noticeable chunk of the total
> > > memory consumption, especially on big machines with many CPUs.
> > > Let's track percpu memory usage for each memcg and display
> > > it in memory.stat.
> > > 
> > > A percpu allocation is usually scattered over multiple pages
> > > (and nodes), and can be significantly smaller than a page.
> > > So let's add a byte-sized counter on the memcg level:
> > > MEMCG_PERCPU_B. Byte-sized vmstat infra created for slabs
> > > can be perfectly reused for percpu case.
> > > 
> > > Signed-off-by: Roman Gushchin <guro@fb.com>
> > > Acked-by: Dennis Zhou <dennis@kernel.org>
> > > ---
> > >  Documentation/admin-guide/cgroup-v2.rst |  4 ++++
> > >  include/linux/memcontrol.h              |  8 ++++++++
> > >  mm/memcontrol.c                         |  4 +++-
> > >  mm/percpu.c                             | 10 ++++++++++
> > >  4 files changed, 25 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
> > > index ce3e05e41724..7c1e784239bf 100644
> > > --- a/Documentation/admin-guide/cgroup-v2.rst
> > > +++ b/Documentation/admin-guide/cgroup-v2.rst
> > > @@ -1274,6 +1274,10 @@ PAGE_SIZE multiple when read back.
> > >  		Amount of memory used for storing in-kernel data
> > >  		structures.
> > >  
> > > +	  percpu
> > > +		Amount of memory used for storing per-cpu kernel
> > > +		data structures.
> > > +
> > >  	  sock
> > >  		Amount of memory used in network transmission buffers
> > >  
> > > diff --git a/include/linux/memcontrol.h b/include/linux/memcontrol.h
> > > index eede46c43573..7ed3af71a6fb 100644
> > > --- a/include/linux/memcontrol.h
> > > +++ b/include/linux/memcontrol.h
> > > @@ -32,11 +32,19 @@ struct kmem_cache;
> > >  enum memcg_stat_item {
> > >  	MEMCG_SWAP = NR_VM_NODE_STAT_ITEMS,
> > >  	MEMCG_SOCK,
> > > +	MEMCG_PERCPU_B,
> > >  	/* XXX: why are these zone and not node counters? */
> > >  	MEMCG_KERNEL_STACK_KB,
> > >  	MEMCG_NR_STAT,
> > >  };
> > >  
> > > +static __always_inline bool memcg_stat_item_in_bytes(enum memcg_stat_item item)
> > > +{
> > > +	if (item == MEMCG_PERCPU_B)
> > > +		return true;
> > > +	return vmstat_item_in_bytes(item);
> > 
> > This patch is now in -next and this line causes a warning from clang,
> > which shows up in every translation unit that includes this header,
> > which is a lot:
> > 
> > include/linux/memcontrol.h:45:30: warning: implicit conversion from
> > enumeration type 'enum memcg_stat_item' to different enumeration type
> > 'enum node_stat_item' [-Wenum-conversion]
> >         return vmstat_item_in_bytes(item);
> >                ~~~~~~~~~~~~~~~~~~~~ ^~~~
> > 1 warning generated.
> > 
> > I assume this conversion is intentional; if so, it seems like expecting
> > a specific enum is misleading. Perhaps this should be applied on top?
> 
> Hi Nathan!
> 
> Yeah, these enums are kind of stacked on each other, so memcg_stat values
> extend node_stat values. And I think your patch is correct.

Yeah, I figured. It happens in the kernel in a couple of different
places that we have seen so far. So far, my suggestion seems to be the
best one that we have uncovered when dealing with one enum that
supplments or extends another. These functions are fairly self
explanation so I don't think that blowing away the type safety here is a
big deal.

> I'm going to refresh the series with some small fixups. If you're not against
> it, I'll merge your patch into the corresponding patches.

Please do! Thanks for the quick response.

Cheers,
Nathan

> And thank you for reporting the problem!
> 
> > 
> > Cheers,
> > Nathan
> > 
> > diff --git a/include/linux/memcontrol.h b/include/linux/memcontrol.h
> > index 2499f78cf32d..bddeb4ce7a4f 100644
> > --- a/include/linux/memcontrol.h
> > +++ b/include/linux/memcontrol.h
> > @@ -38,7 +38,7 @@ enum memcg_stat_item {
> >  	MEMCG_NR_STAT,
> >  };
> >  
> > -static __always_inline bool memcg_stat_item_in_bytes(enum memcg_stat_item item)
> > +static __always_inline bool memcg_stat_item_in_bytes(int item)
> >  {
> >  	if (item == MEMCG_PERCPU_B)
> >  		return true;
> > diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> > index 084ee1c17160..52d7961a24f0 100644
> > --- a/include/linux/mmzone.h
> > +++ b/include/linux/mmzone.h
> > @@ -211,7 +211,7 @@ enum node_stat_item {
> >   * measured in pages). This defines the API part, the internal representation
> >   * might be different.
> >   */
> > -static __always_inline bool vmstat_item_in_bytes(enum node_stat_item item)
> > +static __always_inline bool vmstat_item_in_bytes(int item)
> >  {
> >  	/*
> >  	 * Global and per-node slab counters track slab pages.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622035153.GA3073407%40ubuntu-n2-xlarge-x86.
