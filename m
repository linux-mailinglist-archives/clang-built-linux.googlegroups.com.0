Return-Path: <clang-built-linux+bncBCKPFB7SXUERBBMWVH4QKGQELORGZIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B46623C576
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 08:00:38 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id l28sf9715477oti.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 23:00:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596607237; cv=pass;
        d=google.com; s=arc-20160816;
        b=OF9nd+HIsDxNHAIQHM0b+UDlaoZ6rJkJleB99smylBnJtC95eDwVRNI9qEvn3yEfHH
         AiEz6g/qkKxMNpCDxypAalvxtlRux9EfvjSKWY15roT9ZPWTYq0Yi9jlxqUI4HcvwfbS
         PnlTHttWYbqSVGd65DIH3kkRGLjgGoJ3XJnPiCuBT1RcMOJDD4jXEeu6+ueA21dvXl+A
         VmjfOFSzeccqXK25teNqGWsbP6Y/zSefCf1WSuJnLQP/Q5OFzLn1O+9F2td0FTLMT10c
         FcuvgIUR5OPZDf5h9DB6+SZ254fSIdm12lKcNN1mUweY07lkxIAyPJ3sGvhrsEAPiXs5
         vFMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Cqdep/FZw4lzwYnIImK3c3BhQdPLNaEVq5hx1E/tyrQ=;
        b=qP66pU4/mqmtiYZIhdtbP1ELiG1BBOue+ouDO0n3iQmSuYSDcYPfP4xcq8ozITpHsi
         2bwCw1j6IS+gbeRjNgPweQKcQbGiSM2JZR0h3zsi3MU29tUFi4RA2nu9ztmeEBgA48CC
         PamWCPp6pMFPoQJem8DGDs9iLYFAJdYKxkBtaYLnYVR7trJ0msVwxkOavSMzULQ+ENkP
         Yw0MYoRP8oatwqmff0FfO8GmecoKpeMmm4nm/MuShwgEZBeLgEzMMQjLgDNKiIkztvYI
         pCQowX+0WTr7aEbkNSURqby1p81QcilwHwSP5Y++gzLbFUeBZviMP2DOI7tYVpdF3ueK
         q+1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RlPgVbbf;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cqdep/FZw4lzwYnIImK3c3BhQdPLNaEVq5hx1E/tyrQ=;
        b=O+8cuKDCmdefbozSMikTfdbk4MJ3kP1ScqWyvBLgioGjAnlDEcD4bNlknHdWtKfhdA
         HbYNaFAALN3oCaCqQLJXZOPhIa45ZBbRgF2M8gr09ZKMxJZksXJzW5TwtN4mm1lFIIX7
         B+mFVNjG3TZgP6ER92gPjKB1iEvC6s57rIIRihmoDvrZrMmrVHToJJPCH+Iqdz5PxC6b
         vHhAYGgedIxSBundpkl3HlzG5u6d5SRfWKyQvnBs+OnIHiVzYIIAOsHA5fM+L/WmzP+t
         M8gUSWRGv/XfPKHC0CP7MlMaVc028zvipkNA4OOAg8wFQTaACIRYxbv2j/rgw2umfzl2
         9dfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cqdep/FZw4lzwYnIImK3c3BhQdPLNaEVq5hx1E/tyrQ=;
        b=XNWSoSBkkcuRh2RYyRZwqjf4bdCvfkJnlqyP+9W5KV2oZ/enc3094IEamWQtbtHcQQ
         g4dW9vmGXHWIo7fdja6p7SfedWo4MQmWqYOpbrM8AO0QzfeWE4CZ05RDLd7NwrZTrvJp
         DTCllua0BBuqO37/ydlI0Bi8vEnUk98dMtVjUIM3Is0fSkpnFqvA84tepB8Rx8rmLzD5
         x1K/XhivM807RHT8v1v/oUG7/lpuqFVRRgysQTB9DHRSnQHO/a6GZcFoA3/oAu0G3B8C
         FANZrTNeF+JXRwHb+6WJlMfA1vLq8wDJSyExiztrVxeBTH1BWyqrZbvKXCdKqKWFUSOb
         /sJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532y8g6GiKGfhTU0NCUEbyExI/H5rdJkY7tW9GgQqNcx7FsiclJJ
	rCKh9i3Aw013xB1R5iSzCdU=
X-Google-Smtp-Source: ABdhPJxcOLbS1dnopXJbSRBvK5P8b1fWeXMC2ygwNZO7eUA/ckwqodKp9ieb5OlhVKGVQtuSkJ+ufw==
X-Received: by 2002:aca:f4c7:: with SMTP id s190mr1438666oih.51.1596607237157;
        Tue, 04 Aug 2020 23:00:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d90:: with SMTP id y16ls223716oti.10.gmail; Tue,
 04 Aug 2020 23:00:36 -0700 (PDT)
X-Received: by 2002:a05:6830:148f:: with SMTP id s15mr1368024otq.323.1596607236776;
        Tue, 04 Aug 2020 23:00:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596607236; cv=none;
        d=google.com; s=arc-20160816;
        b=LNzc9FiYV0S659Yru/0jih/SiqUaRmxuplEFFaDaLLc+oYv/4AmBLvIbSqdYf4EWSM
         2L7CQlSgxjSsjkA8pn9sSD2yi4pPpriq2w4u2lG92qWARnMZjY8tpjLX+NzbI8aL4BSg
         t5BXsUgTTedBNaRayydgyYk0YYEJ0l/QmJl1/15KO2FUV1pHJ4MafdfMzKFG9A0wg7D4
         EZ0xeodN1zeh1iYN7sOP1w+c/bAodo4JnmWXv7lHbA+gicRpqnKBcUn79M1ZRVerm/Tg
         NIFO3E5AjmvHPDUbWffRmkX0BTBc/bmb8R6AcmaE50mbxqPu3pHSKO1hPxTCLlbnNcKs
         2jaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GMI2VHEJj5qxJst+Mnz2rfpYmYwR7lvZPX1P81/rYkI=;
        b=dHcGtvDDC/3jEhhjKsNMxMzBKJQK5OpsogxPB6P1jaIarNcEq9pt/QlpkCtwe0j1b6
         tacFAAWMjFuzBTxwI9WlufCjPT35w48/PvyVemGY8TXJfaf4KsjU4g/Qw0To4V5fn/YI
         67Y7bwD6Ctpus0D0JUL2hKNSetEvhNSbNctxmeavGWJlLUBipn6uEgZGz29ntP2Ab93O
         gcalQLLOXP8MWOxTcC2rdquIdAfy8jl1tRv9E/MQaLwujZZzBSKl4nmyznDrssorYbYf
         +/g9nnNTy2MgxsMdpPd75uQjBrmE3siXUUTYVYNakPR6GIKzhJK5VhLAk3zPwFcirgOt
         BS6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RlPgVbbf;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id x2si54692oto.3.2020.08.04.23.00.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Aug 2020 23:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-72-i88hwEKrNImuiQFvk1P0-w-1; Wed, 05 Aug 2020 02:00:30 -0400
X-MC-Unique: i88hwEKrNImuiQFvk1P0-w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D7338064AC;
	Wed,  5 Aug 2020 06:00:13 +0000 (UTC)
Received: from localhost (ovpn-12-71.pek2.redhat.com [10.72.12.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5810726A3;
	Wed,  5 Aug 2020 06:00:08 +0000 (UTC)
Date: Wed, 5 Aug 2020 14:00:06 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Ingo Molnar <mingo@redhat.com>,
	Hari Bathini <hbathini@linux.ibm.com>,
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
	iommu@lists.linux-foundation.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v2 14/17] x86/setup: simplify reserve_crashkernel()
Message-ID: <20200805060006.GU10792@MiWiFi-R3L-srv>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-15-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-15-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RlPgVbbf;
       spf=pass (google.com: domain of bhe@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
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

On 08/02/20 at 07:35pm, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> * Replace magic numbers with defines
> * Replace memblock_find_in_range() + memblock_reserve() with
>   memblock_phys_alloc_range()
> * Stop checking for low memory size in reserve_crashkernel_low(). The
>   allocation from limited range will anyway fail if there is no enough
>   memory, so there is no need for extra traversal of memblock.memory
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/x86/kernel/setup.c | 40 ++++++++++++++--------------------------
>  1 file changed, 14 insertions(+), 26 deletions(-)

Applied this patch on top of 5.8, crashkernel reservation works well.
And the code change looks good.

Reviewed-by: Baoquan He <bhe@redhat.com>

> 
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index d8de4053c5e8..d7ced6982524 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -419,13 +419,13 @@ static int __init reserve_crashkernel_low(void)
>  {
>  #ifdef CONFIG_X86_64
>  	unsigned long long base, low_base = 0, low_size = 0;
> -	unsigned long total_low_mem;
> +	unsigned long low_mem_limit;
>  	int ret;
>  
> -	total_low_mem = memblock_mem_size(1UL << (32 - PAGE_SHIFT));
> +	low_mem_limit = min(memblock_phys_mem_size(), CRASH_ADDR_LOW_MAX);
>  
>  	/* crashkernel=Y,low */
> -	ret = parse_crashkernel_low(boot_command_line, total_low_mem, &low_size, &base);
> +	ret = parse_crashkernel_low(boot_command_line, low_mem_limit, &low_size, &base);
>  	if (ret) {
>  		/*
>  		 * two parts from kernel/dma/swiotlb.c:
> @@ -443,23 +443,17 @@ static int __init reserve_crashkernel_low(void)
>  			return 0;
>  	}
>  
> -	low_base = memblock_find_in_range(0, 1ULL << 32, low_size, CRASH_ALIGN);
> +	low_base = memblock_phys_alloc_range(low_size, CRASH_ALIGN, 0, CRASH_ADDR_LOW_MAX);
>  	if (!low_base) {
>  		pr_err("Cannot reserve %ldMB crashkernel low memory, please try smaller size.\n",
>  		       (unsigned long)(low_size >> 20));
>  		return -ENOMEM;
>  	}
>  
> -	ret = memblock_reserve(low_base, low_size);
> -	if (ret) {
> -		pr_err("%s: Error reserving crashkernel low memblock.\n", __func__);
> -		return ret;
> -	}
> -
> -	pr_info("Reserving %ldMB of low memory at %ldMB for crashkernel (System low RAM: %ldMB)\n",
> +	pr_info("Reserving %ldMB of low memory at %ldMB for crashkernel (low RAM limit: %ldMB)\n",
>  		(unsigned long)(low_size >> 20),
>  		(unsigned long)(low_base >> 20),
> -		(unsigned long)(total_low_mem >> 20));
> +		(unsigned long)(low_mem_limit >> 20));
>  
>  	crashk_low_res.start = low_base;
>  	crashk_low_res.end   = low_base + low_size - 1;
> @@ -503,13 +497,13 @@ static void __init reserve_crashkernel(void)
>  		 * unless "crashkernel=size[KMG],high" is specified.
>  		 */
>  		if (!high)
> -			crash_base = memblock_find_in_range(CRASH_ALIGN,
> -						CRASH_ADDR_LOW_MAX,
> -						crash_size, CRASH_ALIGN);
> +			crash_base = memblock_phys_alloc_range(crash_size,
> +						CRASH_ALIGN, CRASH_ALIGN,
> +						CRASH_ADDR_LOW_MAX);
>  		if (!crash_base)
> -			crash_base = memblock_find_in_range(CRASH_ALIGN,
> -						CRASH_ADDR_HIGH_MAX,
> -						crash_size, CRASH_ALIGN);
> +			crash_base = memblock_phys_alloc_range(crash_size,
> +						CRASH_ALIGN, CRASH_ALIGN,
> +						CRASH_ADDR_HIGH_MAX);
>  		if (!crash_base) {
>  			pr_info("crashkernel reservation failed - No suitable area found.\n");
>  			return;
> @@ -517,19 +511,13 @@ static void __init reserve_crashkernel(void)
>  	} else {
>  		unsigned long long start;
>  
> -		start = memblock_find_in_range(crash_base,
> -					       crash_base + crash_size,
> -					       crash_size, 1 << 20);
> +		start = memblock_phys_alloc_range(crash_size, SZ_1M, crash_base,
> +						  crash_base + crash_size);
>  		if (start != crash_base) {
>  			pr_info("crashkernel reservation failed - memory is in use.\n");
>  			return;
>  		}
>  	}
> -	ret = memblock_reserve(crash_base, crash_size);
> -	if (ret) {
> -		pr_err("%s: Error reserving crashkernel memblock.\n", __func__);
> -		return;
> -	}
>  
>  	if (crash_base >= (1ULL << 32) && reserve_crashkernel_low()) {
>  		memblock_free(crash_base, crash_size);
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805060006.GU10792%40MiWiFi-R3L-srv.
