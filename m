Return-Path: <clang-built-linux+bncBAABBPGG4CCQMGQEDXCVNKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4848C3996F3
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 02:33:01 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id d17-20020a9236110000b02901cf25fcfdcdsf2846404ila.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 17:33:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622680380; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zf+3c+JKSy1Z8XWhjY62Xny9ufJ4b72nI4T3wGnkXXNikOLy2lK39QVcObeW5tdKlS
         fXXk+nd9KknBtQ1UsO25qtJwIbrFiomyYBKStzlb9I5fWxnAyyjsbXoj0Mz4h/Yw69wC
         pcHe5QoV70ioOGax/Y9pt2srk4xKocudwVG3JNPXHNPHQUYk9py4Rbefy7G28WsDfGIt
         hqfrXzQqmpxTC5bLtn9ZXj37no4ynSlTxR9tr0jyWzzq2ufcfToEZcD7Qhk/ZXYK6fke
         scVYdFdTTDGkrBNtKPYkexaYScxK/O/lX8nGCcxi/LRRMWrfoA7epBN17WYDiHNTsF2j
         AfYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=CJqYmYXozw9G/Ii9eja0yLFgQ6GMTsluq4zSZgz8cW4=;
        b=N7BLLdQnrp+/gXpnCul0ID4YIpLKfMrqQydVDTDeo1v/yRd4WHXGfH3ys67H8J4XvV
         gur9YsZOvzB3qjdkXaWLbQNnOjdk+Dj1epZKgrYDuRtgjDDpSlQUzGTCEd5Ljhv8B95x
         JjYr9+81MxxEadYBkWB26r02ZGtlzmd31msYIj+BOc/HHhnWPfh5NtvENSa6c0x2atEy
         Z8NQ1Q6iKnyV8xGkNIe/De4ppICsFYVHMFmKKFiUbl+JMJarNX+JT//x07xWWIR70I0b
         X20h5wxblRmTMYd0zF3nqYBJIPxDeMLy+dsYgejFOEguSSGelDTM8lHcLNHZT4OVR9Pg
         OElg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mail.ustc.edu.cn header.s=dkim header.b="AF4gk9/b";
       spf=pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) smtp.mailfrom=jszhang3@mail.ustc.edu.cn;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CJqYmYXozw9G/Ii9eja0yLFgQ6GMTsluq4zSZgz8cW4=;
        b=ZZhcSFDly10uEJ+FYfQM2/JF5uTcu3wOSNzTLD1VMFlAACk+G/6iFHsUp9RpwZE8A7
         BvshjWdLlfKy2L7jbHerbbMk8F5l3HtPyJRNRJEN3OFO0HDxgv47E6S+DG9OKfGKuCdF
         Z0iNLRPoN+4GdtafNDLkxxYnbtICrlNGPPptghFRxi1IobCMsx3hpTjVeJTr6yu/DjZ1
         el8yAQ2DAUscDASnSGK3tZ1T8Lirk097YtSY3hybQzFtUWE67WY/9wQAGZxxHGGzUiTQ
         yggqxpx7lXBdy8ix1SmmC1Yz8E/NSN0B513yBuowhI14cOfgOK3+Z+NYZuCjp4pf/Lm0
         cHdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJqYmYXozw9G/Ii9eja0yLFgQ6GMTsluq4zSZgz8cW4=;
        b=rq+i3Q8r+UZiLV6Aa4BdxVCi6DajIg0fEwf6FBy7pbFEyPZMK3NBhJbvlCAh5pcWHY
         OOYHxrIrVAYkmpTWHHNAtZJJhVuHMqY162o49ExQ9fCH3jO4FQDtOWiTvG0bjvuJxujJ
         ML7iig6U6h36mp8jKFixywFRt88f9Eb7fNYSfqTQtMnuy2V5feaAnwIiFxtRJoT0v24z
         uhGWjOtVuyGocuLjAiZ/3UM0jcyPs+VGgLutgvw1fhvfuHupZ79P8XBbiBPJopkVLItm
         TMvkLXJk8suuiG2HHKkzSkpGlbYoBpVrsJVDm4pq62gaZ0T2xy/LA8WPgwDyvrv89EBe
         PDXw==
X-Gm-Message-State: AOAM5322bWDbUNsw+VRpmCSlJvzZLfSfXIkiK9Fd6qrcE1X/6Dy+yqAP
	pO54OhCPf+teaUAvvf8tFLs=
X-Google-Smtp-Source: ABdhPJw96/pRImS/AvHfPwJe/M19rS56ATb3sU04o+niz9X9cs+B5DHavngoPSf/5UZg1e/Mobf83w==
X-Received: by 2002:a92:d08c:: with SMTP id h12mr3039224ilh.294.1622680380148;
        Wed, 02 Jun 2021 17:33:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c4c5:: with SMTP id h5ls239396jaj.1.gmail; Wed, 02 Jun
 2021 17:32:59 -0700 (PDT)
X-Received: by 2002:a05:6638:380a:: with SMTP id i10mr25387613jav.100.1622680379814;
        Wed, 02 Jun 2021 17:32:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622680379; cv=none;
        d=google.com; s=arc-20160816;
        b=L0S/lm8SIuNDiTEoiBZrBVyYpb06Zk57bOuHyScNTxGuNaZQHU9JgGYGUcH6tnI5s6
         3qOuvUawU1P9jplBW6Ifiw0LV2SIoVFCfWr/kOiqi67YCHLg5Kfkrau93vJk0pO3uQq1
         e0iyJrLCU0Fx6Oq4GbgOja06HqcOr1sIRCLszJmtK6cZS0FqRkOrYmuY2OF1Q9R8PB3N
         IrgBWCoTVlBgwDsF7hxEiF+d0LqIdWJrWrilf10BTaUtiN/D5KW/hsko9pukjE32MVM7
         4qhLFfz/dBreURyinB8DB1qO5zmZqiLvbKejboHtx1ysb2phXX2vxPfWrE0uTaf+pyu5
         TcNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jVxNTE81NIObaNox3cqDt2/qjUY4VPS8v0d/5qhjP6A=;
        b=0L1OFbKjdVjXO0yop4puQlvKrr0h3I16TmS+WJpxc1fX1SLT5KT+cIKXHc5saadRlp
         5atdDI5ET4vQ69r8cArkDn8ysgNrdNt4kbWbnKuaTYoURO826uzwraJSa+b8l+225jfS
         mpGLBGZJLAxuGwvWheu7IVKmH51hH4cLPrVFeiID7ptLhUWmLEWHl8YiHlo4VThfPw7M
         W6ahBc2QwiUJGMLCiwyncazDZunZJ2nQFxbf1AtKFgfZT37rKNVU7vPeXMUNM7qG8EDD
         xJeRaXzlFEugMtOJtyM0mGUelaX1qzdTclhPrVHqY4NkYp3XarmL3K43NgQoLqn0Dmqu
         DP+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mail.ustc.edu.cn header.s=dkim header.b="AF4gk9/b";
       spf=pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) smtp.mailfrom=jszhang3@mail.ustc.edu.cn;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
Received: from ustc.edu.cn (smtp2.ustc.edu.cn. [202.38.64.46])
        by gmr-mx.google.com with ESMTP id f4si184869ils.0.2021.06.02.17.32.58
        for <clang-built-linux@googlegroups.com>;
        Wed, 02 Jun 2021 17:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) client-ip=202.38.64.46;
Received: from xhacker (unknown [101.86.20.15])
	by newmailweb.ustc.edu.cn (Coremail) with SMTP id LkAmygBXyqIrI7hg9GOEAA--.43861S2;
	Thu, 03 Jun 2021 08:32:43 +0800 (CST)
Date: Thu, 3 Jun 2021 08:27:14 +0800
From: "'Jisheng Zhang' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti
 <alex@ghiti.fr>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] riscv: mm: init: Consolidate vars, functions
Message-ID: <20210603082714.6e524f4c@xhacker>
In-Reply-To: <YLfiADFHMyXst55Y@Ryzen-9-3900X.localdomain>
References: <20210516211556.43c00055@xhacker>
	<YLaWseLdg5JYElVx@Ryzen-9-3900X.localdomain>
	<20210602231226.0e45524b@xhacker>
	<20210602235851.001a0d41@xhacker>
	<YLfiADFHMyXst55Y@Ryzen-9-3900X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-CM-TRANSID: LkAmygBXyqIrI7hg9GOEAA--.43861S2
X-Coremail-Antispam: 1UD129KBjvAXoWfJryDKF15GF18AF13tr1fJFb_yoW8Jw18Ko
	WrJr17Jw4xGryUJrn3A345XFWUGw1qyFsxuryUAr4DWrnrta1jyFWUGr4rZa98tw1rGFZr
	Cr1Utwn7Aa1kJrn7n29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
	AaLaJ3UjIYCTnIWjp_UUU5A7k0a2IF6w4kM7kC6x804xWl14x267AKxVW8JVW5JwAFc2x0
	x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj4
	1l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0
	I7IYx2IY6xkF7I0E14v26r4j6F4UM28EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwV
	C2z280aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
	0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr
	1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JMxAIw28IcxkI7VAKI48JMxC20s02
	6xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_Jr
	I_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v2
	6r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4v20xvaj4
	0_WFyUJVCq3wCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j
	6r4UJbIYCTnIWIevJa73UjIFyTuYvjxUqEoXUUUUU
X-CM-SenderInfo: xmv2xttqjtqzxdloh3xvwfhvlgxou0/
X-Original-Sender: jszhang3@mail.ustc.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mail.ustc.edu.cn header.s=dkim header.b="AF4gk9/b";       spf=pass
 (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as
 permitted sender) smtp.mailfrom=jszhang3@mail.ustc.edu.cn;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
X-Original-From: Jisheng Zhang <jszhang3@mail.ustc.edu.cn>
Reply-To: Jisheng Zhang <jszhang3@mail.ustc.edu.cn>
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

On Wed, 2 Jun 2021 12:54:40 -0700
Nathan Chancellor <nathan@kernel.org> wrote:

> On Wed, Jun 02, 2021 at 11:58:51PM +0800, Jisheng Zhang wrote:
> > On Wed, 2 Jun 2021 23:12:26 +0800
> > Jisheng Zhang <jszhang3@mail.ustc.edu.cn> wrote:
> >   
> > > On Tue, 1 Jun 2021 13:21:05 -0700
> > > Nathan Chancellor <nathan@kernel.org> wrote:
> > >   
> > > > Hi Jisheng,    
> > > 
> > > Hi Nathan,
> > >   
> > > > 
> > > > On Sun, May 16, 2021 at 09:15:56PM +0800, Jisheng Zhang wrote:    
> > > > > From: Jisheng Zhang <jszhang@kernel.org>
> > > > > 
> > > > > Consolidate the following items in init.c
> > > > > 
> > > > > Staticize global vars as much as possible;
> > > > > Add __initdata mark if the global var isn't needed after init
> > > > > Add __init mark if the func isn't needed after init
> > > > > Add __ro_after_init if the global var is read only after init
> > > > > 
> > > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > > > > ---
> > > > >  arch/riscv/include/asm/set_memory.h |  2 +-
> > > > >  arch/riscv/mm/init.c                | 36 +++++++++++++++--------------
> > > > >  2 files changed, 20 insertions(+), 18 deletions(-)
> > > > > 
> > > > > diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
> > > > > index 086f757e8ba3..9d4d455726d4 100644
> > > > > --- a/arch/riscv/include/asm/set_memory.h
> > > > > +++ b/arch/riscv/include/asm/set_memory.h
> > > > > @@ -27,7 +27,7 @@ static inline int set_memory_rw_nx(unsigned long addr, int numpages) { return 0;
> > > > >  #endif
> > > > >  
> > > > >  #if defined(CONFIG_64BIT) && defined(CONFIG_STRICT_KERNEL_RWX)
> > > > > -void protect_kernel_linear_mapping_text_rodata(void);
> > > > > +void __init protect_kernel_linear_mapping_text_rodata(void);
> > > > >  #else
> > > > >  static inline void protect_kernel_linear_mapping_text_rodata(void) {}
> > > > >  #endif
> > > > > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > > > > index 4c4c92ce0bb8..eac2d5c27b3e 100644
> > > > > --- a/arch/riscv/mm/init.c
> > > > > +++ b/arch/riscv/mm/init.c
> > > > > @@ -53,7 +53,7 @@ struct pt_alloc_ops {
> > > > >  #endif
> > > > >  };
> > > > >  
> > > > > -static phys_addr_t dma32_phys_limit __ro_after_init;
> > > > > +static phys_addr_t dma32_phys_limit __initdata;
> > > > >  
> > > > >  static void __init zone_sizes_init(void)
> > > > >  {
> > > > > @@ -184,7 +184,7 @@ extern char _sdata[], _edata[];
> > > > >  #endif /* CONFIG_XIP_KERNEL */
> > > > >  
> > > > >  #ifdef CONFIG_MMU
> > > > > -static struct pt_alloc_ops _pt_ops __ro_after_init;
> > > > > +static struct pt_alloc_ops _pt_ops __initdata;
> > > > >  
> > > > >  #ifdef CONFIG_XIP_KERNEL
> > > > >  #define pt_ops (*(struct pt_alloc_ops *)XIP_FIXUP(&_pt_ops))
> > > > > @@ -200,13 +200,13 @@ EXPORT_SYMBOL(va_pa_offset);
> > > > >  #endif
> > > > >  /* Offset between kernel mapping virtual address and kernel load address */
> > > > >  #ifdef CONFIG_64BIT
> > > > > -unsigned long va_kernel_pa_offset;
> > > > > +unsigned long va_kernel_pa_offset __ro_after_init;
> > > > >  EXPORT_SYMBOL(va_kernel_pa_offset);
> > > > >  #endif
> > > > >  #ifdef CONFIG_XIP_KERNEL
> > > > >  #define va_kernel_pa_offset    (*((unsigned long *)XIP_FIXUP(&va_kernel_pa_offset)))
> > > > >  #endif
> > > > > -unsigned long va_kernel_xip_pa_offset;
> > > > > +unsigned long va_kernel_xip_pa_offset __ro_after_init;
> > > > >  EXPORT_SYMBOL(va_kernel_xip_pa_offset);
> > > > >  #ifdef CONFIG_XIP_KERNEL
> > > > >  #define va_kernel_xip_pa_offset        (*((unsigned long *)XIP_FIXUP(&va_kernel_xip_pa_offset)))
> > > > > @@ -216,7 +216,7 @@ EXPORT_SYMBOL(pfn_base);
> > > > >  
> > > > >  pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
> > > > >  pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
> > > > > -pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
> > > > > +static pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
> > > > >  
> > > > >  pgd_t early_pg_dir[PTRS_PER_PGD] __initdata __aligned(PAGE_SIZE);
> > > > >  
> > > > > @@ -253,7 +253,7 @@ static inline pte_t *__init get_pte_virt_fixmap(phys_addr_t pa)
> > > > >  	return (pte_t *)set_fixmap_offset(FIX_PTE, pa);
> > > > >  }
> > > > >  
> > > > > -static inline pte_t *get_pte_virt_late(phys_addr_t pa)
> > > > > +static inline pte_t *__init get_pte_virt_late(phys_addr_t pa)
> > > > >  {
> > > > >  	return (pte_t *) __va(pa);
> > > > >  }
> > > > > @@ -272,7 +272,7 @@ static inline phys_addr_t __init alloc_pte_fixmap(uintptr_t va)
> > > > >  	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> > > > >  }
> > > > >  
> > > > > -static phys_addr_t alloc_pte_late(uintptr_t va)
> > > > > +static phys_addr_t __init alloc_pte_late(uintptr_t va)
> > > > >  {
> > > > >  	unsigned long vaddr;
> > > > >  
> > > > > @@ -296,10 +296,10 @@ static void __init create_pte_mapping(pte_t *ptep,
> > > > >  
> > > > >  #ifndef __PAGETABLE_PMD_FOLDED
> > > > >  
> > > > > -pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > > -pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > > -pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > > -pmd_t early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > > +static pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > > +static pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > > +static pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > > +static pmd_t early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > >  
> > > > >  #ifdef CONFIG_XIP_KERNEL
> > > > >  #define trampoline_pmd ((pmd_t *)XIP_FIXUP(trampoline_pmd))
> > > > > @@ -319,7 +319,7 @@ static pmd_t *__init get_pmd_virt_fixmap(phys_addr_t pa)
> > > > >  	return (pmd_t *)set_fixmap_offset(FIX_PMD, pa);
> > > > >  }
> > > > >  
> > > > > -static pmd_t *get_pmd_virt_late(phys_addr_t pa)
> > > > > +static pmd_t *__init get_pmd_virt_late(phys_addr_t pa)
> > > > >  {
> > > > >  	return (pmd_t *) __va(pa);
> > > > >  }
> > > > > @@ -336,7 +336,7 @@ static phys_addr_t __init alloc_pmd_fixmap(uintptr_t va)
> > > > >  	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> > > > >  }
> > > > >  
> > > > > -static phys_addr_t alloc_pmd_late(uintptr_t va)
> > > > > +static phys_addr_t __init alloc_pmd_late(uintptr_t va)
> > > > >  {
> > > > >  	unsigned long vaddr;
> > > > >  
> > > > > @@ -454,14 +454,16 @@ asmlinkage void __init __copy_data(void)
> > > > >  #error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
> > > > >  #endif
> > > > >  
> > > > > -uintptr_t load_pa, load_sz;
> > > > > +static uintptr_t load_pa __initdata;      
> > > > 
> > > > Making load_pa static causing clang built kernels to no longer boot,
> > > > hanging after just a few lines of output in the console:
> > > > 
> > > > https://github.com/ClangBuiltLinux/continuous-integration2/runs/2717606254?check_suite_focus=true
> > > > 
> > > > I am not sure why that would make a difference nor why GCC is okay with
> > > > it. If it is a clang bug, it appears to be there for a while, given that
> > > > it reproduces back to clang-11.    
> > > 
> > > I can reproduce the issue. Here are my findindings:
> > > 
> > > * gcc + binutils can't reproduce it
> > > * clang + llvm-utils + ias can reproduce it
> > > * clang + binutils can reproduce it  
> 
> Yes, this seems like something strictly related to clang so that is what
> I have been testing with.
> 
> > > All below tests are done with clang + binutils.
> > > 
> > > Then I applied below modification:
> > > 
> > > -static uintptr_t load_pa __initdata;
> > > +uintptr_t load_pa __initdata;
> > > 
> > > I got below panic log:
> > > [    0.015418] Unable to handle kernel paging request at virtual address fffffffffffffff9
> > > [    0.016432] Oops [#1]
> > > [    0.016679] Modules linked in:
> > > [    0.017103] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.13.0-rc1+ #5
> > > [    0.017711] Hardware name: riscv-virtio,qemu (DT)
> > > [    0.018201] epc : trace_hardirqs_on+0x60/0xb2
> > > [    0.018582]  ra : restore_all+0xe/0x66
> > > [    0.018879] epc : ffffffff800cb09a ra : ffffffff800027b8 sp : ffffffff80c03dd0
> > > [    0.019376]  gp : ffffffff80d001c8 tp : ffffffff80c0c180 t0 : 0000000000000020
> > > [    0.019870]  t1 : ffffffff80006e40 t2 : ffffffff800d2e0a s0 : ffffffff80c03e00
> > > [    0.020346]  s1 : 0000000000000001 a0 : 0000000000000001 a1 : 0000000000000001
> > > [    0.020800]  a2 : 0000000000000001 a3 : 0000000000000000 a4 : 0000000000000000
> > > [    0.021243]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000054494d45
> > > [    0.021717]  s2 : ffffffff800027b8 s3 : ffffffff80d35968 s4 : ffffffff8061e1d8
> > > [    0.022179]  s5 : ffffffff80c0c180 s6 : ffffffe000e34b50 s7 : 00000000800130f0
> > > [    0.022674]  s8 : 000000000000007f s9 : 0000000080012010 s10: 0000000000000000
> > > [    0.023176]  s11: 0000000000000000 t3 : ffffffff80d00108 t4 : ffffffff80006e40
> > > [    0.023693]  t5 : ffffffff80006e40 t6 : ffffffff800d2e0a
> > > [    0.024153] status: 0000000000000100 badaddr: fffffffffffffff9 cause: 000000000000000d
> > > [    0.025367] Call Trace:
> > > [    0.025749] [<ffffffff800cb09a>] trace_hardirqs_on+0x60/0xb2
> > > [    0.026402] [<ffffffff800027b8>] restore_all+0xe/0x66
> > > [    0.027261] Unable to handle kernel paging request at virtual address fffffffffffffffa
> > > [    0.027827] Oops [#2]
> > > [    0.028013] Modules linked in:
> > > [    0.028321] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D           5.13.0-rc1+ #5
> > > [    0.028839] Hardware name: riscv-virtio,qemu (DT)
> > > [    0.029166] epc : trace_hardirqs_on+0x60/0xb2
> > > [    0.029505]  ra : restore_all+0xe/0x66
> > > [    0.029785] epc : ffffffff800cb09a ra : ffffffff800027b8 sp : ffffffff80c03a80
> > > [    0.030266]  gp : ffffffff80d001c8 tp : ffffffff80c0c180 t0 : 0000000000000020
> > > [    0.030748]  t1 : ffffffff80006e40 t2 : ffffffff800d2e0a s0 : ffffffff80c03ab0
> > > [    0.031227]  s1 : 0000000000000001 a0 : 0000000000000002 a1 : 0000000000000002
> > > [    0.031717]  a2 : 0000000000000001 a3 : 0000000000000000 a4 : 0000000000000000
> > > [    0.032199]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000054494d45
> > > [    0.032680]  s2 : ffffffff800027b8 s3 : ffffffff80d35968 s4 : ffffffff8061e1d8
> > > [    0.033160]  s5 : ffffffff80c0c180 s6 : ffffffe000e34b50 s7 : 00000000800130f0
> > > [    0.033642]  s8 : 000000000000007f s9 : 0000000080012010 s10: 0000000000000000
> > > [    0.034123]  s11: 0000000000000000 t3 : ffffffff80d00108 t4 : ffffffff80006e40
> > > [    0.034601]  t5 : ffffffff80006e40 t6 : ffffffff800d2e0a
> > > [    0.034965] status: 0000000000000100 badaddr: fffffffffffffffa cause: 000000000000000d
> > > [    0.035492] Call Trace:
> > > [    0.035682] [<ffffffff800cb09a>] trace_hardirqs_on+0x60/0xb2
> > > [    0.036077] [<ffffffff800027b8>] restore_all+0xe/0x66
> > > [    0.036545] ---[ end trace 7f4fbff09d927668 ]---
> > > [    0.037188] Kernel panic - not syncing: Attempted to kill the idle task!
> > > [    0.038107] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
> > > 
> > > Then I checked 5.13-rc1, above panic log can be reproduced too. So the issue
> > > should exist there for a while. I never tried clang with riscv, did you remember
> > > which last commit or version clang works, I may try to bisect.
> V> >   
> > 
> > More findings:
> > 
> > *The above panic issue can also be seen from 5.12-rc2. If disable FTRACE, then
> > the panic disappears, kernel can boot
> > 
> > *so I retested riscv next tree w/ FTRACE disabled, kernel can boot w/ below
> > modification:  
> 
> Yeah, I do not enable CONFIG_FTRACE because it is not enabled in
> ARCH=riscv defconfig by default.
> 
> > -static uintptr_t load_pa __initdata;
> > +uintptr_t load_pa __initdata;
> > 
> > This is a weird issue. Any clue is appreciated.  
> 
> Unfortunately, this is outside of my realm of expertise, as I am
> unfamiliar with RISC-V at this level. Maybe Palmer has some ideas. I
> would think that changing this variable to static would be fine given
> that the symbol is only used in this translation unit but clearly not. I
> have attempted to debug this in gdb but that does not really get me
> anywhere: I cannot break on start_kernel() for whatever reason and the
> kernel never gets to my breakpoint in setup_vm().
> 
> I did decide to through a BUG() around arch/riscv/mm/init.c to see
> exactly which statement causes everything to hang. I landed on:
> 
> csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
> 
> in setup_vm_final(). No idea how that is relevant to this.
> 
> Some people in the ClangBuiltLinux bi-weekly meeting today pointed out
> that since load_pa is assigned to the linker defined symbol _start,
> there could be some optimization that goes awry here. I have keyed that

Thanks for the inspiration. Below patch fixes the hang issue, but I didn't
go through all necessary WRITE_ONCE convertions.

diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
index ae32f78207f0..fa9336a2583f 100644
--- a/arch/riscv/mm/init.c
+++ b/arch/riscv/mm/init.c
@@ -504,7 +504,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
 
        va_kernel_xip_pa_offset = kernel_virt_addr - xiprom;
 #else
-       load_pa = (uintptr_t)(&_start);
+       WRITE_ONCE(load_pa, (uintptr_t)(&_start));
        load_sz = (uintptr_t)(&_end) - load_pa;
 #endif


> list in now. For full context:
> 
> https://lore.kernel.org/r/YLaWseLdg5JYElVx@Ryzen-9-3900X.localdomain/
> 
> Cheers,
> Nathan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210603082714.6e524f4c%40xhacker.
