Return-Path: <clang-built-linux+bncBCCL7Q422UBBBCWBQX4QKGQEOP57BRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id B282C231D8B
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 13:42:03 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id r9sf4434712oie.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 04:42:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596022922; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJqXTduoEIGJFKT+9VpDUaVkXmaLSj7b08ELBt8TrkALb2EITbYFHAMwioEtKbdQ5C
         mNLdNaFGKO7N3hJhAtH1oOvF6p5LegfI4KH4CN+IvtbFm0WgJ8gYGCIq/T8Zoxked9IL
         oX+xHYaQXdmztxyuMIVPvfifC4xAsguQEo9lLF7PQeAQdKNfXY76FjF4YDt2A+g4aKLj
         7OwWk3KpVDpHBYiF8mcAM1fAEjkBoWfQrRKU65ZMAdcnCKBcfpJfvb05kAIacGD8pZHc
         aztwbHBRXFaN/J8WEuN7iG+5tc5YF+SXXTyjt2BG6FIC0PDOB4MDQMwio/Amq/7ZI5BC
         5r8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=rlUSPIy3lLu1xUGUBoJ81UJvd/QC6wVkEFs/6G+F9og=;
        b=oU9iwXqUl3L5uCm1hVoKXUTqOGFOr0gfFHaPONVfab7Crq9Bnk6OmLOtFOwdeTDrDx
         KxJeuY1XTYQTqNVJosjUbjD6vAy6nbjzuazwa2H55kTbEq0ADlw0BESPfOGDoyxW8YUj
         ULErFzFt6M/SoIp3Czkwq73cMYtf4w6hFzi97qPOJ9vfUPFOB5wPIX+1MoJz1drtfax9
         5X0p0lF9As1x2yDGKgfsRlDJQq4Jjy+Sucto4QdUjJAnnhCewmdsc0EdBLEugiQirvvr
         tYp69kGYF8YFvTxqwWDp18IsKcT1IapfFK8R9OTND/9pjJfeqbM1G7kmP3yNf2TlF1eX
         PDww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ErgMzYX2;
       spf=pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rlUSPIy3lLu1xUGUBoJ81UJvd/QC6wVkEFs/6G+F9og=;
        b=tFWxX1XcoZNVTVpKfTlraAyI18K5n1AQiQ0XZZMDmgNH/kHR6aJQQsnjyI4UIWUgTU
         n6KBR1vtNRfcgz5RlQ8+9q8cn8BXvWW+ZC37fL7LTE1fdmOLxJAu9qlv53BKwoAUskQS
         SiGuEVfu/TqpuiwAYDD5TGYha4nP9GjH1nyFog4snQ+l0rJIdMfCQTLsNqqeegrxR79T
         EMUFfZE4oHkKA+2NlSrd5L7efovw5CCtlTQO2b1AnOulFB2mr9btBMbFFbBkg9MmHfbq
         1CKS/YIh8bjk9Gzue7ObCe+IH+8YsJUIj++FpwffKovvXiIfiPeCjTfX/XGHzi1Kaw+W
         KiEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rlUSPIy3lLu1xUGUBoJ81UJvd/QC6wVkEFs/6G+F9og=;
        b=ASV2lsjN+jztzy2NRdP6Yi86J3Whn6oTFWWhHQJAGgPAm2Jm0E+C+JQvsW+F6oJxAn
         T3HevvJSDBM57J+UDr7C3sk/TT/ptE+4nvTs/2F202tvcRIWRHhIQ1rSGg51HTg1R8gH
         1q8r7yCZkxSVpwoDw+j2168/b7hObQYbWx5PvGrhyhcQ7Jo87FZADt2zpf0uAxr9BrPP
         ILsMEroS8Jc102rRgGn7et/iisOiAizTGaN1hYnhGbeFAizGYRu5SggC3RCm/rXkfTLI
         WeiBVlze3uf+qNjuKiCCXfHJi9LbCb0L2gSa4X+E+D3gHt90Xjfnzs2tMLfVKmAKxDAG
         gpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rlUSPIy3lLu1xUGUBoJ81UJvd/QC6wVkEFs/6G+F9og=;
        b=URffD7GHaG4Ix42Mdmgzu3HEAqFqeIcPkaJku+rjAoNTe4w6OE8qt97KFVsZ13OM7m
         bSW11w+EQQ7JOzwtvEUbfG07q/w5FjhOttpa4aNaYS9ILShtm1D5yUd2RzVTxSNQ4lm6
         n3lZeMlsIfnLhaeAHb4Z9GzkdQtBN0gu2LKS8LNEN9CTjNnaY4dLoBIArC3sjytK9UKd
         fIG/T3t1h6/2mXZSEby6hZ7xkZp++3gxoObXIh0SETlVSG+qX5H+xLRLxjIMemW+6T12
         DzitPcNSF36UTgZ0iSkvYsC5dqqyptGXRopdoLTljFByVKFbhCsQkgNqifQuOKz3CocB
         TWEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EhkpnP1oo2oChUZwR/DZijw31fpTxoSOkisOQCBLbOG0vxt5I
	wZTjcLuNW4jISHhkFZB5adA=
X-Google-Smtp-Source: ABdhPJxQGqW989b6w/VDZhF44r6i/Hdu0y88rqlQ4C0NoE4mTSsGRBfeHqQmLsR5QymxSo+V39hZEw==
X-Received: by 2002:aca:670b:: with SMTP id z11mr6916827oix.6.1596022922662;
        Wed, 29 Jul 2020 04:42:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:644a:: with SMTP id m10ls393593otl.7.gmail; Wed, 29 Jul
 2020 04:42:02 -0700 (PDT)
X-Received: by 2002:a9d:7695:: with SMTP id j21mr1115955otl.340.1596022922285;
        Wed, 29 Jul 2020 04:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596022922; cv=none;
        d=google.com; s=arc-20160816;
        b=r2nUulf2dz3pNKdHKpHzm/9/BPZ9tXFXVa0bDUmJO3bo/tiCaPQcue1vavciDewk3v
         TWTSR9XovKRs7pwQASgzQPXDBRUUhaeWyqd00lat4wy93ukbUyLYa3dCrBpG1yuYm8PE
         MIlTW3J2p0UcXz818QzgQounVU+uAI1NEKdEggOjiaOuAeySJO9tUpIdIXej0i0bazpi
         DOIBKsv39ANFZyd385XSTHen4DBgXejqgA0+xMVzYGlW/CfSqX1XcGkNs0dYc2GXmDfw
         AwXiV4eO0rBDcyhdmrh5jGf43ieR/drXMOBb0mkenuwXPwgKYI4/Bgy+IABIVREWNVbt
         uAoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FyoxCr0A58f1XavZrIV1VkDI4AyZt3GTW0GxGRW15PU=;
        b=Bv2z2syiOD63ZZRprFyrYWuZtveiLmZlAD2doEpw7F9QaU08puCVdI4izIij1JZNWQ
         OUP9NG+wsKcQXEg8A6WtSjemiBpU/f9EGeK8eutD1HWnZMjPq9ijQrp7yZ58re7PmCKD
         Ce6NzAAio5CpTbn/HpIV7x/1vHI6FGqrQOE4C5SXaD0UFKjuhzZDhNC8alsPO4xlsOjr
         hvA2v71IqZiGZdnu86ZSLnnZWtB0JiMjMZdMDUbiycNs38efLgfCaLig2WwdvqTDXzit
         ye4ePPsDPrp2sh24zWRKk4Ir68sFpJdW3RzkhwAduneV7ALOS3mKfijovusRmFYpnKH5
         mZNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ErgMzYX2;
       spf=pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s18si134629otp.4.2020.07.29.04.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 04:42:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id b186so2514815pfb.9
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 04:42:02 -0700 (PDT)
X-Received: by 2002:a65:64c7:: with SMTP id t7mr27611626pgv.89.1596022921588;
        Wed, 29 Jul 2020 04:42:01 -0700 (PDT)
Received: from localhost (g155.222-224-148.ppp.wakwak.ne.jp. [222.224.148.155])
        by smtp.gmail.com with ESMTPSA id y18sm2097780pff.10.2020.07.29.04.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2020 04:42:00 -0700 (PDT)
Date: Wed, 29 Jul 2020 20:41:57 +0900
From: Stafford Horne <shorne@gmail.com>
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
Subject: Re: [PATCH 05/15] h8300, nds32, openrisc: simplify detection of
 memory extents
Message-ID: <20200729114157.GF80756@lianli.shorne-pla.net>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-6-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728051153.1590-6-rppt@kernel.org>
X-Original-Sender: shorne@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ErgMzYX2;       spf=pass
 (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::442 as
 permitted sender) smtp.mailfrom=shorne@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 28, 2020 at 08:11:43AM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Instead of traversing memblock.memory regions to find memory_start and
> memory_end, simply query memblock_{start,end}_of_DRAM().
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/h8300/kernel/setup.c    | 8 +++-----
>  arch/nds32/kernel/setup.c    | 8 ++------
>  arch/openrisc/kernel/setup.c | 9 ++-------
>  3 files changed, 7 insertions(+), 18 deletions(-)

Hi Mike,

For the openrisc part:

Acked-by: Stafford Horne <shorne@gmail.com>

> --- a/arch/openrisc/kernel/setup.c
> +++ b/arch/openrisc/kernel/setup.c
> @@ -48,17 +48,12 @@ static void __init setup_memory(void)
>  	unsigned long ram_start_pfn;
>  	unsigned long ram_end_pfn;
>  	phys_addr_t memory_start, memory_end;
> -	struct memblock_region *region;
>  
>  	memory_end = memory_start = 0;
>  
>  	/* Find main memory where is the kernel, we assume its the only one */
> -	for_each_memblock(memory, region) {
> -		memory_start = region->base;
> -		memory_end = region->base + region->size;
> -		printk(KERN_INFO "%s: Memory: 0x%x-0x%x\n", __func__,
> -		       memory_start, memory_end);
> -	}
> +	memory_start = memblock_start_of_DRAM();
> +	memory_end = memblock_end_of_DRAM();
>  
>  	if (!memory_end) {
>  		panic("No memory!");
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200729114157.GF80756%40lianli.shorne-pla.net.
