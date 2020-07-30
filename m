Return-Path: <clang-built-linux+bncBCKPFB7SXUERBYW5RD4QKGQE6BCNF5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 189B42329DE
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 04:22:28 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id i10sf10090095pfq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 19:22:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596075746; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ji+uBFFeV8DmgWPjfmJYG5oN3uIYA0+zeTc++iiNGrYNI/qxI9p+Nqutbjyvef5VXZ
         gv5ey4QfG2WJSD6G7r99l2GJ70eCVZ+4Ao1j28u5+K1zqaU9QoVowifuKsqF73qKKeEM
         tphasmaF5tXg26AFjWZrT0C7IoqpW/QcNToLBNG+oxt/ppx/P0aDmo8y9KCydT0fA6wu
         PE1YrOZfHZ2wBdgp9XTPqbUc3mgWciuO+qT6JNdrLb1hAcJPFPkj+naPK7mJ6TyOniTB
         jHTttEcUKHANil0o/i9e6UnfesCxrlr7drdP4LLmrrVnW1AY5d7ojbBAzs0xS4CkiM60
         nfwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kIFz7JllKCGubuSVu/uCfOHwlOyAPQDty27+oLMuPXs=;
        b=tyufFLN0POz/7m8xhnDyrPxDJPMZIV7SRBz2iQLbq4lY4mx6Pm971cdZ5LcMYzxjJa
         FGNrIYcAYS+3d0v0feFTOVzFh/CQWOdrzt6FVu0TZW1s9nly8Sk/n1dCg7i7oMjkvO5f
         aWvwUV/P87X3ydzVg0slzJ7PKmVMETbLIqJseI101yR+n1sSp5W0S1K9neYpidZ+kGjG
         yGJtRaCsrTbU0ith8AvgUc2j1a0TaUyn0l+uzHEobnoIv36kE3bevz4kKmqLgpl3Vu3P
         7U8bDZkbhfrTdl1zGT8SPz+/npJ9LWiSm/LzxThVvaoSfyNoEFK4+64kKkPKySGXebje
         BoCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GpU16cbj;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kIFz7JllKCGubuSVu/uCfOHwlOyAPQDty27+oLMuPXs=;
        b=d3D7/LqNNvqJp/f2EwwcXpJHE8qqyTDjCxmZ1MjaAr8AL/NBgdTB+fatQkXeYDEzS5
         etAk2lewJeoaOMSjQY8PZCypRHDDfETw8Ezd23IjDkG8mxFmrwtlBvBfl8ttON8zwxT8
         GqhYqhUzDunyZLOmxHlMzxc7gMbXpa2blZVx1rQbyLTJ8wt9p1ptMZ2n2YApGJZH2f1r
         192qR81GLmoM0neBgLDtR5nnwXKzy5lItpcVf7RFO3z7J/fm8XFiGgGpa82IGElQ2iiF
         NHdMV2TxH21JKiy6H1xZwTS7nJDjJtjbzkZ+r+yynq/SaPHCpbYgCfmi15z1O5KZ77NT
         vj7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kIFz7JllKCGubuSVu/uCfOHwlOyAPQDty27+oLMuPXs=;
        b=eemumZpveJpD+1S2O1edrOiPNd2BDnmO36oiqobHv5m00l/OG0y9ZVVBZ8hAygycH2
         D+J5toD9nJjXAak4lbTySIJLHsAbfPrUaHjbs7OENQsjZ3qzM0LagYeIWpwonSUgYJNJ
         lPS8BafbJVUFbbX46BuQR94OCFEOm3LrvrRuLAciu0PAt3HCrGddy53YfWq3TwNZw9kl
         9Mbyq1SS/hvOL/bmdHwbvKsjhDR8ENPBwItO9VKtHiFvEhWyg3Hp2PuqiND96VcGsXco
         aSeB1eU309iifaKqWZyvzmNrooXXEyJJsfXego5LcXRFilRgi11zr8PDBcKlPh5+P5v5
         jwIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338NYzD3cZIo2kGoPpLsZnxmgYlzjz5LPTRXkszpGlTLTw840u8
	b1EdiHYGi0Ks38Tyikzdo/s=
X-Google-Smtp-Source: ABdhPJyYmwgrr5xpq+3ZTjgCHUmzKLCt/WgAW2o67V8OCZrECJXWtXP/V/WrjYLPtTPkWWsieDWX4Q==
X-Received: by 2002:a62:7bc9:: with SMTP id w192mr962782pfc.255.1596075746447;
        Wed, 29 Jul 2020 19:22:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bf04:: with SMTP id c4ls1623511pjs.3.gmail; Wed, 29
 Jul 2020 19:22:26 -0700 (PDT)
X-Received: by 2002:a17:90a:2207:: with SMTP id c7mr860187pje.206.1596075746028;
        Wed, 29 Jul 2020 19:22:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596075746; cv=none;
        d=google.com; s=arc-20160816;
        b=uSBnBbYsDxMb04n8KQdCrY8aTjNxN1pmrDKVB1e7hIpkmd0oxZxNtcK0EmWyMT3HPI
         Pb43RRYc+ocmnS9n6Nk1Nl0CFpX8lvlHJNx7inTCt7SZIqFSS/YyP/FesFZz1sLd3Oy1
         WEEVI18rexXuAkuQu/59GawKj+UpDUOHc3IPPJyWbFxM7O81SQB3Nn2t7eYweUpaS59X
         mukyiBJqonys5S8bZtLoI+ZZYwp1iSH2GGPMYQAznuYQFUiboFY9zEEFHPyqcFW5jjS9
         hmTwr2QCBZ12X5Ha8V2wQe9Tifv36T595QKtE5HitWtr8U9ay+rHaT+t5zrkuqTxwPYf
         Hagw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KXlCZQMZEmyQ5Mo2+6vJS9lY2Q4U/rCj7yYVDEkdTyE=;
        b=rzaankxcubYFw4sVPuOBOOewW9ZiAtrJM+/Zqp/ZyK8BB+n4wR9xIByY9AttGStWbO
         hwxpGtuaxss+dI5S+DK+0MnW1y9DW0c1t1yapWWP83JYCjtaCKVmzdSIrvMhKD9mShsz
         /Pp9mklBIJgNelixxsLssgtNEGbq6xBw2Ig6JNlX7u4CMFoksXZXr2LsqMS7mocdD5Xs
         VbFWbzX8YYZycAmeAQsveoi9SaUNWZjmdBsyxeogIKLHwQ7TkV7n8INA1alEJ+EeXccV
         7OUl4fX0YX1Fu9dRj0P5Ox+39VJ6Qt6fvp5K8X9HporZSv8S160zw4g0y6++bMBaDs3i
         WKzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=GpU16cbj;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id c4si254104pjo.0.2020.07.29.19.22.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 19:22:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-450-x5Uy2qT2P5q-DIcPrk6VSQ-1; Wed, 29 Jul 2020 22:22:21 -0400
X-MC-Unique: x5Uy2qT2P5q-DIcPrk6VSQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90479801504;
	Thu, 30 Jul 2020 02:22:16 +0000 (UTC)
Received: from localhost (ovpn-13-67.pek2.redhat.com [10.72.13.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62E1519D82;
	Thu, 30 Jul 2020 02:22:15 +0000 (UTC)
Date: Thu, 30 Jul 2020 10:22:09 +0800
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
Subject: Re: [PATCH 11/15] memblock: reduce number of parameters in
 for_each_mem_range()
Message-ID: <20200730022209.GK14854@MiWiFi-R3L-srv>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-12-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728051153.1590-12-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=GpU16cbj;
       spf=pass (google.com: domain of bhe@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
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

On 07/28/20 at 08:11am, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Currently for_each_mem_range() iterator is the most generic way to traverse
> memblock regions. As such, it has 8 parameters and it is hardly convenient
> to users. Most users choose to utilize one of its wrappers and the only
> user that actually needs most of the parameters outside memblock is s390
> crash dump implementation.
> 
> To avoid yet another naming for memblock iterators, rename the existing
> for_each_mem_range() to __for_each_mem_range() and add a new
> for_each_mem_range() wrapper with only index, start and end parameters.
> 
> The new wrapper nicely fits into init_unavailable_mem() and will be used in
> upcoming changes to simplify memblock traversals.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  .clang-format                          |  1 +
>  arch/arm64/kernel/machine_kexec_file.c |  6 ++----
>  arch/s390/kernel/crash_dump.c          |  8 ++++----
>  include/linux/memblock.h               | 18 ++++++++++++++----
>  mm/page_alloc.c                        |  3 +--
>  5 files changed, 22 insertions(+), 14 deletions(-)

Reviewed-by: Baoquan He <bhe@redhat.com>

> 
> diff --git a/.clang-format b/.clang-format
> index a0a96088c74f..52ededab25ce 100644
> --- a/.clang-format
> +++ b/.clang-format
> @@ -205,6 +205,7 @@ ForEachMacros:
>    - 'for_each_memblock_type'
>    - 'for_each_memcg_cache_index'
>    - 'for_each_mem_pfn_range'
> +  - '__for_each_mem_range'
>    - 'for_each_mem_range'
>    - 'for_each_mem_range_rev'
>    - 'for_each_migratetype_order'
> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> index 361a1143e09e..5b0e67b93cdc 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
> @@ -215,8 +215,7 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
>  	phys_addr_t start, end;
>  
>  	nr_ranges = 1; /* for exclusion of crashkernel region */
> -	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
> -					MEMBLOCK_NONE, &start, &end, NULL)
> +	for_each_mem_range(i, &start, &end)
>  		nr_ranges++;
>  
>  	cmem = kmalloc(struct_size(cmem, ranges, nr_ranges), GFP_KERNEL);
> @@ -225,8 +224,7 @@ static int prepare_elf_headers(void **addr, unsigned long *sz)
>  
>  	cmem->max_nr_ranges = nr_ranges;
>  	cmem->nr_ranges = 0;
> -	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
> -					MEMBLOCK_NONE, &start, &end, NULL) {
> +	for_each_mem_range(i, &start, &end) {
>  		cmem->ranges[cmem->nr_ranges].start = start;
>  		cmem->ranges[cmem->nr_ranges].end = end - 1;
>  		cmem->nr_ranges++;
> diff --git a/arch/s390/kernel/crash_dump.c b/arch/s390/kernel/crash_dump.c
> index f96a5857bbfd..e28085c725ff 100644
> --- a/arch/s390/kernel/crash_dump.c
> +++ b/arch/s390/kernel/crash_dump.c
> @@ -549,8 +549,8 @@ static int get_mem_chunk_cnt(void)
>  	int cnt = 0;
>  	u64 idx;
>  
> -	for_each_mem_range(idx, &memblock.physmem, &oldmem_type, NUMA_NO_NODE,
> -			   MEMBLOCK_NONE, NULL, NULL, NULL)
> +	__for_each_mem_range(idx, &memblock.physmem, &oldmem_type, NUMA_NO_NODE,
> +			     MEMBLOCK_NONE, NULL, NULL, NULL)
>  		cnt++;
>  	return cnt;
>  }
> @@ -563,8 +563,8 @@ static void loads_init(Elf64_Phdr *phdr, u64 loads_offset)
>  	phys_addr_t start, end;
>  	u64 idx;
>  
> -	for_each_mem_range(idx, &memblock.physmem, &oldmem_type, NUMA_NO_NODE,
> -			   MEMBLOCK_NONE, &start, &end, NULL) {
> +	__for_each_mem_range(idx, &memblock.physmem, &oldmem_type, NUMA_NO_NODE,
> +			     MEMBLOCK_NONE, &start, &end, NULL) {
>  		phdr->p_filesz = end - start;
>  		phdr->p_type = PT_LOAD;
>  		phdr->p_offset = start;
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index e6a23b3db696..d70c2835e913 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -142,7 +142,7 @@ void __next_reserved_mem_region(u64 *idx, phys_addr_t *out_start,
>  void __memblock_free_late(phys_addr_t base, phys_addr_t size);
>  
>  /**
> - * for_each_mem_range - iterate through memblock areas from type_a and not
> + * __for_each_mem_range - iterate through memblock areas from type_a and not
>   * included in type_b. Or just type_a if type_b is NULL.
>   * @i: u64 used as loop variable
>   * @type_a: ptr to memblock_type to iterate
> @@ -153,7 +153,7 @@ void __memblock_free_late(phys_addr_t base, phys_addr_t size);
>   * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
>   * @p_nid: ptr to int for nid of the range, can be %NULL
>   */
> -#define for_each_mem_range(i, type_a, type_b, nid, flags,		\
> +#define __for_each_mem_range(i, type_a, type_b, nid, flags,		\
>  			   p_start, p_end, p_nid)			\
>  	for (i = 0, __next_mem_range(&i, nid, flags, type_a, type_b,	\
>  				     p_start, p_end, p_nid);		\
> @@ -182,6 +182,16 @@ void __memblock_free_late(phys_addr_t base, phys_addr_t size);
>  	     __next_mem_range_rev(&i, nid, flags, type_a, type_b,	\
>  				  p_start, p_end, p_nid))
>  
> +/**
> + * for_each_mem_range - iterate through memory areas.
> + * @i: u64 used as loop variable
> + * @p_start: ptr to phys_addr_t for start address of the range, can be %NULL
> + * @p_end: ptr to phys_addr_t for end address of the range, can be %NULL
> + */
> +#define for_each_mem_range(i, p_start, p_end) \
> +	__for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,	\
> +			     MEMBLOCK_NONE, p_start, p_end, NULL)
> +
>  /**
>   * for_each_reserved_mem_region - iterate over all reserved memblock areas
>   * @i: u64 used as loop variable
> @@ -287,8 +297,8 @@ int __init deferred_page_init_max_threads(const struct cpumask *node_cpumask);
>   * soon as memblock is initialized.
>   */
>  #define for_each_free_mem_range(i, nid, flags, p_start, p_end, p_nid)	\
> -	for_each_mem_range(i, &memblock.memory, &memblock.reserved,	\
> -			   nid, flags, p_start, p_end, p_nid)
> +	__for_each_mem_range(i, &memblock.memory, &memblock.reserved,	\
> +			     nid, flags, p_start, p_end, p_nid)
>  
>  /**
>   * for_each_free_mem_range_reverse - rev-iterate through free memblock areas
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index e028b87ce294..95af111d69d3 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -6972,8 +6972,7 @@ static void __init init_unavailable_mem(void)
>  	 * Loop through unavailable ranges not covered by memblock.memory.
>  	 */
>  	pgcnt = 0;
> -	for_each_mem_range(i, &memblock.memory, NULL,
> -			NUMA_NO_NODE, MEMBLOCK_NONE, &start, &end, NULL) {
> +	for_each_mem_range(i, &start, &end) {
>  		if (next < start)
>  			pgcnt += init_unavailable_range(PFN_DOWN(next),
>  							PFN_UP(start));
> -- 
> 2.26.2
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730022209.GK14854%40MiWiFi-R3L-srv.
