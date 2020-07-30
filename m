Return-Path: <clang-built-linux+bncBCKPFB7SXUERBXOQRD4QKGQECAXDFPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD592329B4
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 03:54:38 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id o1sf10679952ilk.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 18:54:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596074077; cv=pass;
        d=google.com; s=arc-20160816;
        b=Khh8gJrIF9AicQg9S+hcVITSAxMWHOJjmpdpDNQkuXjumtXMdBSdvhJ6XTqywtArkz
         fA16SxBisOt3xZdimxMdbUZGc843wmChPurys1r3VkJGQ688OaIA/VT4Y7gy7SHomOFx
         aBnf8znlNVbqF99eXks3m6HNV5BkICCzoR/Bst/8qJX0ORMJdLV/Kr6bt/wUIjjOacCu
         ddGawJmzLOAKJ7A7EmOfn7eQDqI3kBVVVzIUq6EJkvuVwbtks/IK+u9Mijf+JeLlUxV8
         +wHO4cDkGUqmt55bjJmbJo682YB515jMC0tNy0zoWwfXbhjAkVTy8NtDybv4JMIrZxer
         PQ4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=42sCcctZ0IHJsHmBJT4hwocT3c1D3yArUOjEayKwhXc=;
        b=NeEtFoPnGX+h6nYMC0TAS4veG18V2dcbqp3zh4+PJA6LFH8WG1yTZFQkC46Vpdh7pm
         tjCy4NM/iFN3gLeCgUCuI8pD8fka7R6XC3dof9wABa/taopKO6aqsv2iCu1kXzPCCGBH
         VJ1S5Jw2C4hyFRtuXQHelQ9kyzhsawBjxTiugCoiOCQyrSDQg7by4q+9c4qlEKWYyQGv
         +YZKA2qp8MPOgltlP1kUqny41fManJOe2luqPYqNJbuZT8UROJOs2BnQAAbe4f3qgAcG
         fvsOfqTb/ZUY04FR9I+6T/+9Z1w1cg0cr1cyBFwtHp/RLLrWuNFAUyAFbj77jUl9F0iB
         AXFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WPEioIaU;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=42sCcctZ0IHJsHmBJT4hwocT3c1D3yArUOjEayKwhXc=;
        b=Sj5+oie8ZKHANiQGfUB6mvrgrXVaQQ88zEETCBAcL5YbiwQfe+vGjuezYyBIrRJY6H
         9M0mKCGBqWXWWICfVJtniVP9BITXKeNlvT/6jNC8mjcO3zI7ePdAF5eVS+5AyZn0iE8A
         ru26BV7KBEHRDlUaqAwQs7SA/aRDPqzuoK9kl83HinN42ls4+3II+Qe7XpDcq+59Ert7
         3VN86LQnlwZ1JN/CR8p03c+PAu6IX9XxjtDj7mzBiO3XG6eYyy8ibDdSrxaOqb0cbqiC
         a3Mc+kNnSzfTdMGce3osFOEeuFA1RsZV8r8Gy5GZNYgO523fJZ1IEFmu9wdy3l0E/Fps
         Lfvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=42sCcctZ0IHJsHmBJT4hwocT3c1D3yArUOjEayKwhXc=;
        b=XS2Y7pvoszfn0k1wZnU/ZMY1GmdGbEzoXeKPKvReDu6byV9SMiPltynQpyUApDFeBi
         DnzLquuwHoAMQ9+739KCAcCNOT3G6nxqjmYwSwEqDkDy2OC2UeX3AtfcBky3m3IIEUdt
         /cTqY+6i+PIAUT58qbU9QLtw1O2z0YNXZMAn2D981LIg524sYmW9lL/HgUfEAGLvj1Xy
         YLGlijXQ0/C0YJrWlZCJ7rgqa/fXO0Y/AItPxobncWKFWMRhgD0xkU1+6/HPGSjyyL+z
         wjFZYM/NY+NQr4YgZLbT9iRtBkRjJuwHnhXCLaehEw8aGDMjjo+1SOijO2qNjP1aquQ6
         hTww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530F5TM1uPsdJ+ETmjvDD1fGYJTLzZOChNGosnhkmCT8Yos/RHsR
	a8ClJ07Ct6VTj4prxmDbO10=
X-Google-Smtp-Source: ABdhPJxFEFbfZIwLQaaM9VU/O9vEFgM5/HKcba5tKV7wooolECWheF6QJMPgNxij0MW94NR3UKOVfw==
X-Received: by 2002:a6b:bc41:: with SMTP id m62mr34715704iof.95.1596074077209;
        Wed, 29 Jul 2020 18:54:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1516:: with SMTP id b22ls657874jat.0.gmail; Wed, 29
 Jul 2020 18:54:36 -0700 (PDT)
X-Received: by 2002:a02:3b10:: with SMTP id c16mr1011093jaa.128.1596074076917;
        Wed, 29 Jul 2020 18:54:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596074076; cv=none;
        d=google.com; s=arc-20160816;
        b=eBPRDil7++BzZFyDMM1/KtrI3d90Q0LYJQEMqD3zoyDew7QlXOmkuDj4uU7YzPtM6I
         69zHnUqGZO9/svnQACgSlYLRsb10BHOsavCRIoA6N/viJyUZkwC+0S/emn6UpQFGTQM0
         XUfqtaEhh7+zubTFTF2QSQLZeKJwEoTLmIx8M8Wk7uoXSs9y1QLxmK6y5AUb0UkAgW0d
         aMEb9s2+ds4I27bHjo3Ht9NQWnn9s+PzF+QfFcDs6HjMQiC/65+uVCUzf1PnFXWZkyud
         a5iiwl+foEHTz+e4mlrjchsb1EifJgVYjAvGwQusqHlM6qFp6dwTjLjtyDKcIDbY06h/
         q7mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RRu2DjMF0v0Jv3loZnZu2suQTSJCldR+3yWZSkhX+qw=;
        b=vp26EUh3d7tPxpkgcIAk1oaCiivyI9bXTowpcUrrhPcV2gVn84aeA8wXKXN5KwNnOL
         sX5u9XpEuhhWpNQRI12/rnqeX0yXgtU5C+iupoYCXBu7Mlu3916PsoVnie9s+0LFrBef
         sEWMjgwpqMEb3a7S8jWiRv3dNjkKqU0QQdByMirfCKxF+XhIGhqbRaaEtEalEjBn3cEq
         iZabpO+oAmuOeT0yRfiiv/dHLOkhrKCnowCUuAKeuiyZxcLc1ShVZRIrl6BYDnX62VYk
         j3RuPCt99UhGNovUDeuoddgJeISbjM9mnZtJju72ikwMiKt6/wL5G/eX/jyYs4xoe8Ms
         yRzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=WPEioIaU;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id t7si228770ilh.2.2020.07.29.18.54.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 18:54:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-MKISxg0TPU6a-4FvLzbZhQ-1; Wed, 29 Jul 2020 21:54:32 -0400
X-MC-Unique: MKISxg0TPU6a-4FvLzbZhQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6832D1005510;
	Thu, 30 Jul 2020 01:54:27 +0000 (UTC)
Received: from localhost (ovpn-12-125.pek2.redhat.com [10.72.12.125])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56EE9619B5;
	Thu, 30 Jul 2020 01:54:26 +0000 (UTC)
Date: Thu, 30 Jul 2020 09:54:24 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Mackerras <paulus@samba.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Russell King <linux@armlinux.org.uk>,
	Stafford Horne <shorne@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH 10/15] memblock: make memblock_debug and related
 functionality private
Message-ID: <20200730015424.GJ14854@MiWiFi-R3L-srv>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-11-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728051153.1590-11-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=WPEioIaU;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.81
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

On 07/28/20 at 08:11am, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> The only user of memblock_dbg() outside memblock was s390 setup code and it
> is converted to use pr_debug() instead.
> This allows to stop exposing memblock_debug and memblock_dbg() to the rest
> of the kernel.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/s390/kernel/setup.c |  4 ++--
>  include/linux/memblock.h | 12 +-----------
>  mm/memblock.c            | 13 +++++++++++--
>  3 files changed, 14 insertions(+), 15 deletions(-)

Nice clean up.

Reviewed-by: Baoquan He <bhe@redhat.com>

> 
> diff --git a/arch/s390/kernel/setup.c b/arch/s390/kernel/setup.c
> index 07aa15ba43b3..8b284cf6e199 100644
> --- a/arch/s390/kernel/setup.c
> +++ b/arch/s390/kernel/setup.c
> @@ -776,8 +776,8 @@ static void __init memblock_add_mem_detect_info(void)
>  	unsigned long start, end;
>  	int i;
>  
> -	memblock_dbg("physmem info source: %s (%hhd)\n",
> -		     get_mem_info_source(), mem_detect.info_source);
> +	pr_debug("physmem info source: %s (%hhd)\n",
> +		 get_mem_info_source(), mem_detect.info_source);
>  	/* keep memblock lists close to the kernel */
>  	memblock_set_bottom_up(true);
>  	for_each_mem_detect_block(i, &start, &end) {
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index 220b5f0dad42..e6a23b3db696 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -90,7 +90,6 @@ struct memblock {
>  };
>  
>  extern struct memblock memblock;
> -extern int memblock_debug;
>  
>  #ifndef CONFIG_ARCH_KEEP_MEMBLOCK
>  #define __init_memblock __meminit
> @@ -102,9 +101,6 @@ void memblock_discard(void);
>  static inline void memblock_discard(void) {}
>  #endif
>  
> -#define memblock_dbg(fmt, ...) \
> -	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
> -
>  phys_addr_t memblock_find_in_range(phys_addr_t start, phys_addr_t end,
>  				   phys_addr_t size, phys_addr_t align);
>  void memblock_allow_resize(void);
> @@ -456,13 +452,7 @@ bool memblock_is_region_memory(phys_addr_t base, phys_addr_t size);
>  bool memblock_is_reserved(phys_addr_t addr);
>  bool memblock_is_region_reserved(phys_addr_t base, phys_addr_t size);
>  
> -extern void __memblock_dump_all(void);
> -
> -static inline void memblock_dump_all(void)
> -{
> -	if (memblock_debug)
> -		__memblock_dump_all();
> -}
> +void memblock_dump_all(void);
>  
>  /**
>   * memblock_set_current_limit - Set the current allocation limit to allow
> diff --git a/mm/memblock.c b/mm/memblock.c
> index a5b9b3df81fc..824938849f6d 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -134,7 +134,10 @@ struct memblock memblock __initdata_memblock = {
>  	     i < memblock_type->cnt;					\
>  	     i++, rgn = &memblock_type->regions[i])
>  
> -int memblock_debug __initdata_memblock;
> +#define memblock_dbg(fmt, ...) \
> +	if (memblock_debug) printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
> +
> +static int memblock_debug __initdata_memblock;
>  static bool system_has_some_mirror __initdata_memblock = false;
>  static int memblock_can_resize __initdata_memblock;
>  static int memblock_memory_in_slab __initdata_memblock = 0;
> @@ -1919,7 +1922,7 @@ static void __init_memblock memblock_dump(struct memblock_type *type)
>  	}
>  }
>  
> -void __init_memblock __memblock_dump_all(void)
> +static void __init_memblock __memblock_dump_all(void)
>  {
>  	pr_info("MEMBLOCK configuration:\n");
>  	pr_info(" memory size = %pa reserved size = %pa\n",
> @@ -1933,6 +1936,12 @@ void __init_memblock __memblock_dump_all(void)
>  #endif
>  }
>  
> +void __init_memblock memblock_dump_all(void)
> +{
> +	if (memblock_debug)
> +		__memblock_dump_all();
> +}
> +
>  void __init memblock_allow_resize(void)
>  {
>  	memblock_can_resize = 1;
> -- 
> 2.26.2
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730015424.GJ14854%40MiWiFi-R3L-srv.
