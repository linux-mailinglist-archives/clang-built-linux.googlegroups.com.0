Return-Path: <clang-built-linux+bncBDQ27FVWWUFRBUGQUX4QKGQEBTFTD4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C508823BB6B
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Aug 2020 15:53:21 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id u3sf12018069ilj.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 06:53:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596549200; cv=pass;
        d=google.com; s=arc-20160816;
        b=TPAeVJwNKdfKdSZrnKcIJMEg6Mh/iBJocOHpEKSx4eCzvjYBOxdVgxYwptZ7C0PAlM
         hzTAKpn/RDldjyHEWUI8oOla0RwAOl2hBz6kdnP07IDeNjqszfdXdH/kjhC69YrYLI78
         4nsLwZD58mGo/uUNfW6ZI411D1jlO7lM44+xQfvu4bge/FVXs8JuVE3f4CAZOYJTk7pN
         z7EkJ+/LvP5wB8xcpASMXROiJAOsq6aM3sQ9NK2RJDXXDRxJGkjxDnxrvq2Pq/+ERG76
         43nf9W814FiiColrSso4pkenWoipbeOxLUYWEUUTeNM9yYpP3GUpvgxp5KflzVoICZ1u
         zEwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ohqAIMUUlGei7CMIs6n2FIy6QREhADBcohQ45+Xj690=;
        b=0jYNFG9aq7upAFqhjpGsg5F5rG8G3q+zhx80x7OdGdoC9Pc+JG6HGx9/1KHMEbKbjB
         aSL1WEIN/l46frbZA/U7DLlo883Ze3wG5EkWQHN1S5Ad/3t5wq5smazHKRTzL9L+YpLb
         VFxKbswS6kGmhc4RaxfYVCfJ4JcnryTG5ZxnMcFNXfYjSoIFeNXAUCspq5SpWaKZ4JYI
         pzxpXdVw1E2HiJNuSXvTWuVKqNkJ4olAhlRU6mkX3FJhkaoxuT9MijAOuIDoS6/l2rWY
         umIjNSI2j+Q4sSiA54dzJiXhwwd2fbzvf5X+WBSa0DFq/fXCbg85t2XQjNToyTddLUvt
         6qxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=jumdjySC;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=dja@axtens.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ohqAIMUUlGei7CMIs6n2FIy6QREhADBcohQ45+Xj690=;
        b=r5lHd/VxVyyChe8M439Pr/YBThKbCTDmsHgXV2q2S4dmKjlADqSg647bx8HoqDAydF
         zBpp6Gkq2eK+yxBirknTqsoQv5NvEJ0q7uwb9U73CUvuNh4qhLTcdcUbpaguwWS8XN31
         DzftkOUPWzF+e1L59UHFDagVItBU7U+s1fBARNvc/aE1blyhW2A2YXYF3qqYbxpEOyi9
         VulGQ7CUZGsjXNpBEUlkklpp0po/QkJsrZiaKmEaNr41IkTODhF3l0iJdqakc31XZj1c
         f4B3emkPOq7lCBJsrr1F3wzklngkYqU8mZDEPLozbcBcYkYKYtOPoFXpgyen8gh5lpSc
         ai4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ohqAIMUUlGei7CMIs6n2FIy6QREhADBcohQ45+Xj690=;
        b=pCPjQsutLnt4r1tBYFkWC3UtM4EdGeuzBJQ4BVKH8Pb5QMydAF8z4g8lCqWQbr/oKM
         tB4PP36RXFhOCzQenhFnFfcP0neFdJgGSTNB5tjjZufssMPosmHRIU5oYUAkXqM0hOst
         ZWAu0e7VKctzTcZAD1MR8VvTFDslrugpdMozvzXzesdbZFstzdJhcU2j23d3VdAFbPBy
         UpnW4J7ppDNPzGVrxZbIosHpfo7TQJHAb6wsw5Hgis0SQ7XxwEy+nSKLPZkbEtxOKSO6
         pV3kno7jV0PehtUR8NTiNi4wYpfLvwPeuLxTSnB7OyK0ex6B6c/RhdIsIn5y2Pb6f9sN
         xQtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SIeXB+xsHcou34HDhNdW7wWRIQqHI1T4QQnMbJEyNG5fx4ieq
	3L4zyU7yNdvZklFxT0h4jSU=
X-Google-Smtp-Source: ABdhPJzlo9oBi8gYWElmq7h0WpkGSE/ZK/+V6vZexyK1NiagGCIJPfhL7gWdFFeWvhsMsaSVoxPw1Q==
X-Received: by 2002:a92:999a:: with SMTP id t26mr5087052ilk.145.1596549200825;
        Tue, 04 Aug 2020 06:53:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5d03:: with SMTP id r3ls3561393iob.10.gmail; Tue, 04 Aug
 2020 06:53:20 -0700 (PDT)
X-Received: by 2002:a6b:e216:: with SMTP id z22mr4928755ioc.97.1596549200495;
        Tue, 04 Aug 2020 06:53:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596549200; cv=none;
        d=google.com; s=arc-20160816;
        b=clUVUSLD6EvC+wNYdVItNPEK0f9neNWdmgPVbaYOpwh6C5aIoXCIBE6GkJgEPFxmcN
         6DBBvehoCOJNp+3MlVr8MOjx3BD1ffjcVGuKrWag/a7LkDP/NYMJMex3OK1yH6CyfzKc
         nv6tYZp2njJoPPvTD0RbXO1meLjgIuzDUqiArJl6rBJO5m8z7c+NUmkIC53DK8lQdW5v
         U/tvAHZQotnngpVD6nR+Ef7t7Pp8+atoV2NHeKjGE9MO84U5knhgYcyRjvK6lgYpZKHg
         uteE5x7ebeilYyc+KBu+V+6h16UwwIj8aDnFGsdKcRvvvNFIuTUmGRKWSBOWn1DqvaFq
         lh3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=nig2/fJdYyt3b0Q5A/SU+0msFseeyybXCaAI4dDRdTg=;
        b=yVdRcPgoM37b32kGvRY6odBOKcr3fMj/zmDGW4JqPKjq/UX7UFNglW+DRVALaWubRw
         45BmekiSRcl9kbTClvWVJyvWJGHFS2+YIIpZFU8Q3Y+U7NTzpm9985SsXKeM/oHjvLeB
         GdF+Ri/Fv2Igb6Vw1odwa1ePcGFDulh/BonD29MVaa7VbhTUFSK1mQHEPKeDImPfP31L
         PglZS6hWRiaoFglBYlrF1qY0XCEJopEHjE++40YiviTRZqZziqaIoFmIQqhc+COfoeiD
         g9600CPJs+C6KjXPVmWsaaK7avN5djxdZQSNxUPLTls2VA1XuGN9+i+o5JhxZxDVbHTX
         Kj/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=jumdjySC;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=dja@axtens.net
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j12si1236267ilg.3.2020.08.04.06.53.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Aug 2020 06:53:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id y206so9988750pfb.10
        for <clang-built-linux@googlegroups.com>; Tue, 04 Aug 2020 06:53:20 -0700 (PDT)
X-Received: by 2002:a63:3587:: with SMTP id c129mr20025647pga.322.1596549199803;
        Tue, 04 Aug 2020 06:53:19 -0700 (PDT)
Received: from localhost (2001-44b8-1113-6700-0414-2e33-60ed-75ec.static.ipv6.internode.on.net. [2001:44b8:1113:6700:414:2e33:60ed:75ec])
        by smtp.gmail.com with ESMTPSA id g8sm9981404pfo.132.2020.08.04.06.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2020 06:53:19 -0700 (PDT)
From: Daniel Axtens <dja@axtens.net>
To: Mike Rapoport <rppt@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>, Baoquan He <bhe@redhat.com>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>, Borislav Petkov <bp@alien8.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Christoph Hellwig <hch@lst.de>,
 Dave Hansen <dave.hansen@linux.intel.com>, Emil Renner Berthing
 <kernel@esmil.dk>, Ingo Molnar <mingo@redhat.com>, Hari Bathini
 <hbathini@linux.ibm.com>, Marek Szyprowski <m.szyprowski@samsung.com>, Max
 Filippov <jcmvbkbc@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Michal Simek <monstr@monstr.eu>, Mike Rapoport <rppt@linux.ibm.com>, Mike
 Rapoport <rppt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Paul
 Mackerras <paulus@samba.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Peter Zijlstra <peterz@infradead.org>, Russell King
 <linux@armlinux.org.uk>, Stafford Horne <shorne@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, Yoshinori
 Sato <ysato@users.sourceforge.jp>, clang-built-linux@googlegroups.com,
 iommu@lists.linux-foundation.org, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org,
 openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v2 01/17] KVM: PPC: Book3S HV: simplify kvm_cma_reserve()
In-Reply-To: <20200802163601.8189-2-rppt@kernel.org>
References: <20200802163601.8189-1-rppt@kernel.org> <20200802163601.8189-2-rppt@kernel.org>
Date: Tue, 04 Aug 2020 23:53:15 +1000
Message-ID: <87tuxio6us.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dja@axtens.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@axtens.net header.s=google header.b=jumdjySC;       spf=pass
 (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::443 as
 permitted sender) smtp.mailfrom=dja@axtens.net
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

Hi Mike,

>
> The memory size calculation in kvm_cma_reserve() traverses memblock.memory
> rather than simply call memblock_phys_mem_size(). The comment in that
> function suggests that at some point there should have been call to
> memblock_analyze() before memblock_phys_mem_size() could be used.
> As of now, there is no memblock_analyze() at all and
> memblock_phys_mem_size() can be used as soon as cold-plug memory is
> registerd with memblock.
>
> Replace loop over memblock.memory with a call to memblock_phys_mem_size().
>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/powerpc/kvm/book3s_hv_builtin.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/arch/powerpc/kvm/book3s_hv_builtin.c b/arch/powerpc/kvm/book3s_hv_builtin.c
> index 7cd3cf3d366b..56ab0d28de2a 100644
> --- a/arch/powerpc/kvm/book3s_hv_builtin.c
> +++ b/arch/powerpc/kvm/book3s_hv_builtin.c
> @@ -95,22 +95,15 @@ EXPORT_SYMBOL_GPL(kvm_free_hpt_cma);
>  void __init kvm_cma_reserve(void)
>  {
>  	unsigned long align_size;
> -	struct memblock_region *reg;
> -	phys_addr_t selected_size = 0;
> +	phys_addr_t selected_size;
>  
>  	/*
>  	 * We need CMA reservation only when we are in HV mode
>  	 */
>  	if (!cpu_has_feature(CPU_FTR_HVMODE))
>  		return;
> -	/*
> -	 * We cannot use memblock_phys_mem_size() here, because
> -	 * memblock_analyze() has not been called yet.
> -	 */
> -	for_each_memblock(memory, reg)
> -		selected_size += memblock_region_memory_end_pfn(reg) -
> -				 memblock_region_memory_base_pfn(reg);
>  
> +	selected_size = PHYS_PFN(memblock_phys_mem_size());
>  	selected_size = (selected_size * kvm_cma_resv_ratio / 100) << PAGE_SHIFT;

I think this is correct, but PHYS_PFN does x >> PAGE_SHIFT and then the
next line does x << PAGE_SHIFT, so I think we could combine those two
lines as:

selected_size = PAGE_ALIGN(memblock_phys_mem_size() * kvm_cma_resv_ratio / 100);

(I think that might technically change it from aligning down to aligning
up but I don't think 1 page matters here.)

Kind regards,
Daniel


>  	if (selected_size) {
>  		pr_debug("%s: reserving %ld MiB for global area\n", __func__,
> -- 
> 2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87tuxio6us.fsf%40dja-thinkpad.axtens.net.
