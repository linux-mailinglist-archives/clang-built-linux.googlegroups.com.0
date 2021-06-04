Return-Path: <clang-built-linux+bncBAABBEF75GCQMGQEQADVJOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC0739BE49
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 19:14:58 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id t10-20020a6564ca0000b02902205085fa58sf6419551pgv.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 10:14:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622826897; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZoHB9ks2p1sIMQTTXa4ilAhIFXCem9yPHIzI73SGNba4PYqseymjWlm6KxtHohkNl/
         zKd0061BIqcDwvfFkNX9y42f7ZgXBsROprBT/jpzqdA33S2VaI4+UuAvH50s5swBzs/O
         dE9AsijC36n5rEP+ZSpZGhtp70AzYF+tIncMbF387iGy1tJRLtuJzTOuvIPWLknBRsA6
         jxBBQCAv4V8NESkfZb8SCaBlfOvyfCR6s/Y3bPTy8vr6wVDmjN6wlRsCaCJdpCIPrAjT
         R3/XD70DL7CzkiZ5Phxgcm/kob64qk5qYYGTyMkY5J04w9d470Gerb//QCgXxNCD9ehN
         GO2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=afVOYphLOM+x5qw4+oHJkk5NhL7LtVzYe9xVUsupyYE=;
        b=VXVxhNnddhU8qOa39q5CZ8sULuK5tQgppTsx9LFumwyGzFwapbuqQg2ewujyn5umv6
         4NfaGoKe7h6Ir2UDrT4nYsEPK+wfYAxGelxV8+jTiwmqvXuD0DkWk0lP9+Z8S7jIHRkI
         S4er+STrMA+kp1U9tsbjjOhQsDdlGb8ZN1rAuisZkYmjtMzDm2nu9p++b+4t2/pN//rG
         PpFJqA6qQn1103bCTchiJcwJu8Iqksb0KICm2qNdsJTLtGeJqHH0XLxwYm/Xs0pNe2Gp
         72g5/hA7y5EIFOrAfn5uQJ6efAQZVs8MFiLwcahqKdMiiUWiaboV2JzHRyqkBrJSuRS1
         BIbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mail.ustc.edu.cn header.s=dkim header.b=rsx12ESR;
       spf=pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) smtp.mailfrom=jszhang3@mail.ustc.edu.cn;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=afVOYphLOM+x5qw4+oHJkk5NhL7LtVzYe9xVUsupyYE=;
        b=O4lZxwL1KC24WL9zGeithOzY9O6fE+HjcxkZRIBY/r7d8J0Btzg6DHVmOQz7vnv/6S
         kYRvmu+relNjHgnYG0FdEVetb5vqAcEBZ2yyeuA14oQxVWxcK8Pea1vLwFOaqJ1toBaw
         3xWiYmTdiBEpFpiWRgs7rEo5/3X3WJEgxPgu0qLNoxJWgYPfkaHiqTFM+bB9Fct3r2IN
         O65LELDHuLV0bkrD/f6QeoXprDxfT5eJx4TLVNCCMce3wHf0AilrWyjOi2FVvxHDxrsq
         XuPE2tmKh5+iseWkuI3xt+270VVDWWUR3hM8qyoXX9/4cDDOA9+bO6ZQrs2lKJBgUhra
         5qjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=afVOYphLOM+x5qw4+oHJkk5NhL7LtVzYe9xVUsupyYE=;
        b=LMzbM3WKcEMu1Ymc3j3sGrJUxOLDw3cIOJu+v5v1m2sOVqaQEZdVmu2SJEtJS4QwdI
         n68K5+w4cwGz9/DsAuD9EXt8UtpO3G0FKoC4PRtJqhQAxCZpPpZfQEy6V2aPIBu98D3J
         /5YDdxuOmhg4GFa2Haws7VwpRkMOf5d7ahqqrdP6G6TUZNQ3kGxDdXAP7qj28cqq3oPq
         sNkl6p3w+ObeTYeg+3F5L9uNInokWBhw2ad2j1AOZNRIj1GDMQwdAbGlWQlPhrLppv8B
         UPVuOUAHp/0I6LZRr8OPKKP23C7+uboLlqptTwXLug7bxeJS27DfAXr6y3iX50oVkrVe
         1yrg==
X-Gm-Message-State: AOAM531zPJumVAJfe5oL2noOkeEA9bK2jMUe46hxelPfRB6N4Ntsks3u
	SrkvejQ2yixOT9VeRfFO+LI=
X-Google-Smtp-Source: ABdhPJzfD+MkWWfNhZNlCVbzIHdtWcgNe3ozT+p6YPI+XfGLwn+KOrx3jwA+uchR7d43YvJjvfTIBw==
X-Received: by 2002:a17:90a:468a:: with SMTP id z10mr4190925pjf.9.1622826896824;
        Fri, 04 Jun 2021 10:14:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2848:: with SMTP id p8ls5992793pjf.0.canary-gmail;
 Fri, 04 Jun 2021 10:14:56 -0700 (PDT)
X-Received: by 2002:a17:902:c3d5:b029:100:742f:fce9 with SMTP id j21-20020a170902c3d5b0290100742ffce9mr5387300plj.46.1622826896297;
        Fri, 04 Jun 2021 10:14:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622826896; cv=none;
        d=google.com; s=arc-20160816;
        b=uwX/GqLhxcTna8RaTGuPBJlq2Bj8lPT0A81PBQaFFhx+TjFxwv814GZ2U4gyPTZfzd
         Pu2/RBe1+1XJ3zZPE0ZK1+ho76lSajgk/7JS6MAVmayU7hPM2tDWhUBNlvxrFIMWj593
         PjoXtqXWy8dqzhneFQqXfkrkUGQb0EBNBe5ophFwYPx6XDQJwmN9KlJrSKKdKHfNb2Yn
         T07lGvEKEfkHKw9dqy2oAn05/v2cuGGsZoprDC/TjO1ptudeipzgIDFztnbSaqiCt4Vt
         DeXpx8VkNaM/LgYHZ3QJUlIXgLfv+u1lJVdjB3eMEeLUZvjZATFJyV5auY0+hAKl+nOq
         CnyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pfIs/O+s9kkjXNua/mjAUPRt5mkws1phDlI33ICARFc=;
        b=J1wqAOmz2dQWDT5nGpLbbrM16VcfTuf0WcyGRAyB0s0NUAhg34wbLGTdst0/SJf/im
         ZEJ9wI9wRT+pJfoIHD+g9XOJE21mcCp03z4g+XW3e5aOWffvGPR+F4wL7AFMT/s1uLIn
         GbOa7T5eZ+zcTaeXExEGxr3JC4lthSEJUSSHpZUSuMW2fR+jJzMpRHa1wyTZQ0+I5cs0
         gn8jspFlvJkHqhk2HHiiFVywOyMAXWqZ9Tll3b1xWtNULdYhbFUPHnGbqWmw95Vc7vhU
         dF33wq4DXiGrhFqr42lv8DyUmKchmR+NZDMWLPlkJNapcozwhGlWc/sT+qllL5cJFaij
         1qFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mail.ustc.edu.cn header.s=dkim header.b=rsx12ESR;
       spf=pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) smtp.mailfrom=jszhang3@mail.ustc.edu.cn;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=mail.ustc.edu.cn
Received: from ustc.edu.cn (smtp2.ustc.edu.cn. [202.38.64.46])
        by gmr-mx.google.com with ESMTP id m14si295380pjq.1.2021.06.04.10.14.55
        for <clang-built-linux@googlegroups.com>;
        Fri, 04 Jun 2021 10:14:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jszhang3@mail.ustc.edu.cn designates 202.38.64.46 as permitted sender) client-ip=202.38.64.46;
Received: from xhacker (unknown [101.86.20.15])
	by newmailweb.ustc.edu.cn (Coremail) with SMTP id LkAmygBnXSyEX7pgLqWRAA--.14153S2;
	Sat, 05 Jun 2021 01:14:45 +0800 (CST)
Date: Sat, 5 Jun 2021 01:09:18 +0800
From: "'Jisheng Zhang' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] riscv: mm: init: Consolidate vars, functions
Message-ID: <20210605010918.7424a0aa@xhacker>
In-Reply-To: <20210603195418.21fded50@xhacker>
References: <20210516211556.43c00055@xhacker>
	<YLaWseLdg5JYElVx@Ryzen-9-3900X.localdomain>
	<20210602231226.0e45524b@xhacker>
	<20210602235851.001a0d41@xhacker>
	<YLfiADFHMyXst55Y@Ryzen-9-3900X.localdomain>
	<20210603082714.6e524f4c@xhacker>
	<20210603195418.21fded50@xhacker>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-CM-TRANSID: LkAmygBnXSyEX7pgLqWRAA--.14153S2
X-Coremail-Antispam: 1UD129KBjvAXoW3ZF47Cw1UZr1xZFy3GrykKrg_yoW8WFykto
	W5Jr17Jw4xGw1UJr1xA345XFyUJw1DJFsxJryUAr1DXr17tayDJryUGr1rAay3tr15GFWx
	Cr15twn5A3WUJr1kn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
	AaLaJ3UjIYCTnIWjp_UUU5u7k0a2IF6w4kM7kC6x804xWl14x267AKxVW8JVW5JwAFc2x0
	x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj4
	1l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0
	I7IYx2IY6xkF7I0E14v26F4j6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjc
	xK6I8E87Iv6xkF7I0E14v26r4UJVWxJr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG
	64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r
	1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwCF04k20xvY0x0EwIxGrwCF
	x2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14
	v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY
	67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2
	IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AK
	xVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUqEoXUUUUU
X-CM-SenderInfo: xmv2xttqjtqzxdloh3xvwfhvlgxou0/
X-Original-Sender: jszhang3@mail.ustc.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mail.ustc.edu.cn header.s=dkim header.b=rsx12ESR;       spf=pass
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

On Thu, 3 Jun 2021 19:54:18 +0800
Jisheng Zhang <jszhang3@mail.ustc.edu.cn> wrote:

> On Thu, 3 Jun 2021 08:27:14 +0800
> Jisheng Zhang <jszhang3@mail.ustc.edu.cn> wrote:
> 
> > On Wed, 2 Jun 2021 12:54:40 -0700
> > Nathan Chancellor <nathan@kernel.org> wrote:
> >   
> > > On Wed, Jun 02, 2021 at 11:58:51PM +0800, Jisheng Zhang wrote:    
> > > > On Wed, 2 Jun 2021 23:12:26 +0800
> > > > Jisheng Zhang <jszhang3@mail.ustc.edu.cn> wrote:
> > > >       
> > > > > On Tue, 1 Jun 2021 13:21:05 -0700
> > > > > Nathan Chancellor <nathan@kernel.org> wrote:
> > > > >       
> > > > > > Hi Jisheng,        
> > > > > 
> > > > > Hi Nathan,
> > > > >       
> > > > > > 
> > > > > > On Sun, May 16, 2021 at 09:15:56PM +0800, Jisheng Zhang wrote:        
> > > > > > > From: Jisheng Zhang <jszhang@kernel.org>
> > > > > > > 
> > > > > > > Consolidate the following items in init.c
> > > > > > > 
> > > > > > > Staticize global vars as much as possible;
> > > > > > > Add __initdata mark if the global var isn't needed after init
> > > > > > > Add __init mark if the func isn't needed after init
> > > > > > > Add __ro_after_init if the global var is read only after init
> > > > > > > 
> > > > > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > > > > > > ---
> > > > > > >  arch/riscv/include/asm/set_memory.h |  2 +-
> > > > > > >  arch/riscv/mm/init.c                | 36 +++++++++++++++--------------
> > > > > > >  2 files changed, 20 insertions(+), 18 deletions(-)
> > > > > > > 
> > > > > > > diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
> > > > > > > index 086f757e8ba3..9d4d455726d4 100644
> > > > > > > --- a/arch/riscv/include/asm/set_memory.h
> > > > > > > +++ b/arch/riscv/include/asm/set_memory.h
> > > > > > > @@ -27,7 +27,7 @@ static inline int set_memory_rw_nx(unsigned long addr, int numpages) { return 0;
> > > > > > >  #endif
> > > > > > >  
> > > > > > >  #if defined(CONFIG_64BIT) && defined(CONFIG_STRICT_KERNEL_RWX)
> > > > > > > -void protect_kernel_linear_mapping_text_rodata(void);
> > > > > > > +void __init protect_kernel_linear_mapping_text_rodata(void);
> > > > > > >  #else
> > > > > > >  static inline void protect_kernel_linear_mapping_text_rodata(void) {}
> > > > > > >  #endif
> > > > > > > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > > > > > > index 4c4c92ce0bb8..eac2d5c27b3e 100644
> > > > > > > --- a/arch/riscv/mm/init.c
> > > > > > > +++ b/arch/riscv/mm/init.c
> > > > > > > @@ -53,7 +53,7 @@ struct pt_alloc_ops {
> > > > > > >  #endif
> > > > > > >  };
> > > > > > >  
> > > > > > > -static phys_addr_t dma32_phys_limit __ro_after_init;
> > > > > > > +static phys_addr_t dma32_phys_limit __initdata;
> > > > > > >  
> > > > > > >  static void __init zone_sizes_init(void)
> > > > > > >  {
> > > > > > > @@ -184,7 +184,7 @@ extern char _sdata[], _edata[];
> > > > > > >  #endif /* CONFIG_XIP_KERNEL */
> > > > > > >  
> > > > > > >  #ifdef CONFIG_MMU
> > > > > > > -static struct pt_alloc_ops _pt_ops __ro_after_init;
> > > > > > > +static struct pt_alloc_ops _pt_ops __initdata;
> > > > > > >  
> > > > > > >  #ifdef CONFIG_XIP_KERNEL
> > > > > > >  #define pt_ops (*(struct pt_alloc_ops *)XIP_FIXUP(&_pt_ops))
> > > > > > > @@ -200,13 +200,13 @@ EXPORT_SYMBOL(va_pa_offset);
> > > > > > >  #endif
> > > > > > >  /* Offset between kernel mapping virtual address and kernel load address */
> > > > > > >  #ifdef CONFIG_64BIT
> > > > > > > -unsigned long va_kernel_pa_offset;
> > > > > > > +unsigned long va_kernel_pa_offset __ro_after_init;
> > > > > > >  EXPORT_SYMBOL(va_kernel_pa_offset);
> > > > > > >  #endif
> > > > > > >  #ifdef CONFIG_XIP_KERNEL
> > > > > > >  #define va_kernel_pa_offset    (*((unsigned long *)XIP_FIXUP(&va_kernel_pa_offset)))
> > > > > > >  #endif
> > > > > > > -unsigned long va_kernel_xip_pa_offset;
> > > > > > > +unsigned long va_kernel_xip_pa_offset __ro_after_init;
> > > > > > >  EXPORT_SYMBOL(va_kernel_xip_pa_offset);
> > > > > > >  #ifdef CONFIG_XIP_KERNEL
> > > > > > >  #define va_kernel_xip_pa_offset        (*((unsigned long *)XIP_FIXUP(&va_kernel_xip_pa_offset)))
> > > > > > > @@ -216,7 +216,7 @@ EXPORT_SYMBOL(pfn_base);
> > > > > > >  
> > > > > > >  pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
> > > > > > >  pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
> > > > > > > -pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
> > > > > > > +static pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
> > > > > > >  
> > > > > > >  pgd_t early_pg_dir[PTRS_PER_PGD] __initdata __aligned(PAGE_SIZE);
> > > > > > >  
> > > > > > > @@ -253,7 +253,7 @@ static inline pte_t *__init get_pte_virt_fixmap(phys_addr_t pa)
> > > > > > >  	return (pte_t *)set_fixmap_offset(FIX_PTE, pa);
> > > > > > >  }
> > > > > > >  
> > > > > > > -static inline pte_t *get_pte_virt_late(phys_addr_t pa)
> > > > > > > +static inline pte_t *__init get_pte_virt_late(phys_addr_t pa)
> > > > > > >  {
> > > > > > >  	return (pte_t *) __va(pa);
> > > > > > >  }
> > > > > > > @@ -272,7 +272,7 @@ static inline phys_addr_t __init alloc_pte_fixmap(uintptr_t va)
> > > > > > >  	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> > > > > > >  }
> > > > > > >  
> > > > > > > -static phys_addr_t alloc_pte_late(uintptr_t va)
> > > > > > > +static phys_addr_t __init alloc_pte_late(uintptr_t va)
> > > > > > >  {
> > > > > > >  	unsigned long vaddr;
> > > > > > >  
> > > > > > > @@ -296,10 +296,10 @@ static void __init create_pte_mapping(pte_t *ptep,
> > > > > > >  
> > > > > > >  #ifndef __PAGETABLE_PMD_FOLDED
> > > > > > >  
> > > > > > > -pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > > > > -pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > > > > -pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > > > > -pmd_t early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > > > > +static pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > > > > +static pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > > > > +static pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > > > > +static pmd_t early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > > > >  
> > > > > > >  #ifdef CONFIG_XIP_KERNEL
> > > > > > >  #define trampoline_pmd ((pmd_t *)XIP_FIXUP(trampoline_pmd))
> > > > > > > @@ -319,7 +319,7 @@ static pmd_t *__init get_pmd_virt_fixmap(phys_addr_t pa)
> > > > > > >  	return (pmd_t *)set_fixmap_offset(FIX_PMD, pa);
> > > > > > >  }
> > > > > > >  
> > > > > > > -static pmd_t *get_pmd_virt_late(phys_addr_t pa)
> > > > > > > +static pmd_t *__init get_pmd_virt_late(phys_addr_t pa)
> > > > > > >  {
> > > > > > >  	return (pmd_t *) __va(pa);
> > > > > > >  }
> > > > > > > @@ -336,7 +336,7 @@ static phys_addr_t __init alloc_pmd_fixmap(uintptr_t va)
> > > > > > >  	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> > > > > > >  }
> > > > > > >  
> > > > > > > -static phys_addr_t alloc_pmd_late(uintptr_t va)
> > > > > > > +static phys_addr_t __init alloc_pmd_late(uintptr_t va)
> > > > > > >  {
> > > > > > >  	unsigned long vaddr;
> > > > > > >  
> > > > > > > @@ -454,14 +454,16 @@ asmlinkage void __init __copy_data(void)
> > > > > > >  #error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
> > > > > > >  #endif
> > > > > > >  
> > > > > > > -uintptr_t load_pa, load_sz;
> > > > > > > +static uintptr_t load_pa __initdata;          
> > > > > > 
> > > > > > Making load_pa static causing clang built kernels to no longer boot,
> > > > > > hanging after just a few lines of output in the console:
> > > > > > 
> > > > > > https://github.com/ClangBuiltLinux/continuous-integration2/runs/2717606254?check_suite_focus=true
> > > > > > 
> > > > > > I am not sure why that would make a difference nor why GCC is okay with
> > > > > > it. If it is a clang bug, it appears to be there for a while, given that
> > > > > > it reproduces back to clang-11.        
> > > > > 
> > > > > I can reproduce the issue. Here are my findindings:
> > > > > 
> > > > > * gcc + binutils can't reproduce it
> > > > > * clang + llvm-utils + ias can reproduce it
> > > > > * clang + binutils can reproduce it      
> > > 
> > > Yes, this seems like something strictly related to clang so that is what
> > > I have been testing with.
> > >     
> > > > > All below tests are done with clang + binutils.
> > > > > 
> > > > > Then I applied below modification:
> > > > > 
> > > > > -static uintptr_t load_pa __initdata;
> > > > > +uintptr_t load_pa __initdata;
> > > > > 
> > > > > I got below panic log:
> > > > > [    0.015418] Unable to handle kernel paging request at virtual address fffffffffffffff9
> > > > > [    0.016432] Oops [#1]
> > > > > [    0.016679] Modules linked in:
> > > > > [    0.017103] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.13.0-rc1+ #5
> > > > > [    0.017711] Hardware name: riscv-virtio,qemu (DT)
> > > > > [    0.018201] epc : trace_hardirqs_on+0x60/0xb2
> > > > > [    0.018582]  ra : restore_all+0xe/0x66
> > > > > [    0.018879] epc : ffffffff800cb09a ra : ffffffff800027b8 sp : ffffffff80c03dd0
> > > > > [    0.019376]  gp : ffffffff80d001c8 tp : ffffffff80c0c180 t0 : 0000000000000020
> > > > > [    0.019870]  t1 : ffffffff80006e40 t2 : ffffffff800d2e0a s0 : ffffffff80c03e00
> > > > > [    0.020346]  s1 : 0000000000000001 a0 : 0000000000000001 a1 : 0000000000000001
> > > > > [    0.020800]  a2 : 0000000000000001 a3 : 0000000000000000 a4 : 0000000000000000
> > > > > [    0.021243]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000054494d45
> > > > > [    0.021717]  s2 : ffffffff800027b8 s3 : ffffffff80d35968 s4 : ffffffff8061e1d8
> > > > > [    0.022179]  s5 : ffffffff80c0c180 s6 : ffffffe000e34b50 s7 : 00000000800130f0
> > > > > [    0.022674]  s8 : 000000000000007f s9 : 0000000080012010 s10: 0000000000000000
> > > > > [    0.023176]  s11: 0000000000000000 t3 : ffffffff80d00108 t4 : ffffffff80006e40
> > > > > [    0.023693]  t5 : ffffffff80006e40 t6 : ffffffff800d2e0a
> > > > > [    0.024153] status: 0000000000000100 badaddr: fffffffffffffff9 cause: 000000000000000d
> > > > > [    0.025367] Call Trace:
> > > > > [    0.025749] [<ffffffff800cb09a>] trace_hardirqs_on+0x60/0xb2
> > > > > [    0.026402] [<ffffffff800027b8>] restore_all+0xe/0x66
> > > > > [    0.027261] Unable to handle kernel paging request at virtual address fffffffffffffffa
> > > > > [    0.027827] Oops [#2]
> > > > > [    0.028013] Modules linked in:
> > > > > [    0.028321] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D           5.13.0-rc1+ #5
> > > > > [    0.028839] Hardware name: riscv-virtio,qemu (DT)
> > > > > [    0.029166] epc : trace_hardirqs_on+0x60/0xb2
> > > > > [    0.029505]  ra : restore_all+0xe/0x66
> > > > > [    0.029785] epc : ffffffff800cb09a ra : ffffffff800027b8 sp : ffffffff80c03a80
> > > > > [    0.030266]  gp : ffffffff80d001c8 tp : ffffffff80c0c180 t0 : 0000000000000020
> > > > > [    0.030748]  t1 : ffffffff80006e40 t2 : ffffffff800d2e0a s0 : ffffffff80c03ab0
> > > > > [    0.031227]  s1 : 0000000000000001 a0 : 0000000000000002 a1 : 0000000000000002
> > > > > [    0.031717]  a2 : 0000000000000001 a3 : 0000000000000000 a4 : 0000000000000000
> > > > > [    0.032199]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000054494d45
> > > > > [    0.032680]  s2 : ffffffff800027b8 s3 : ffffffff80d35968 s4 : ffffffff8061e1d8
> > > > > [    0.033160]  s5 : ffffffff80c0c180 s6 : ffffffe000e34b50 s7 : 00000000800130f0
> > > > > [    0.033642]  s8 : 000000000000007f s9 : 0000000080012010 s10: 0000000000000000
> > > > > [    0.034123]  s11: 0000000000000000 t3 : ffffffff80d00108 t4 : ffffffff80006e40
> > > > > [    0.034601]  t5 : ffffffff80006e40 t6 : ffffffff800d2e0a
> > > > > [    0.034965] status: 0000000000000100 badaddr: fffffffffffffffa cause: 000000000000000d
> > > > > [    0.035492] Call Trace:
> > > > > [    0.035682] [<ffffffff800cb09a>] trace_hardirqs_on+0x60/0xb2
> > > > > [    0.036077] [<ffffffff800027b8>] restore_all+0xe/0x66
> > > > > [    0.036545] ---[ end trace 7f4fbff09d927668 ]---
> > > > > [    0.037188] Kernel panic - not syncing: Attempted to kill the idle task!
> > > > > [    0.038107] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
> > > > > 
> > > > > Then I checked 5.13-rc1, above panic log can be reproduced too. So the issue
> > > > > should exist there for a while. I never tried clang with riscv, did you remember
> > > > > which last commit or version clang works, I may try to bisect.
> > > V> >       
> > > > 
> > > > More findings:
> > > > 
> > > > *The above panic issue can also be seen from 5.12-rc2. If disable FTRACE, then
> > > > the panic disappears, kernel can boot
> > > > 
> > > > *so I retested riscv next tree w/ FTRACE disabled, kernel can boot w/ below
> > > > modification:      
> > > 
> > > Yeah, I do not enable CONFIG_FTRACE because it is not enabled in
> > > ARCH=riscv defconfig by default.
> > >     
> > > > -static uintptr_t load_pa __initdata;
> > > > +uintptr_t load_pa __initdata;
> > > > 
> > > > This is a weird issue. Any clue is appreciated.      
> > > 
> > > Unfortunately, this is outside of my realm of expertise, as I am
> > > unfamiliar with RISC-V at this level. Maybe Palmer has some ideas. I
> > > would think that changing this variable to static would be fine given
> > > that the symbol is only used in this translation unit but clearly not. I
> > > have attempted to debug this in gdb but that does not really get me
> > > anywhere: I cannot break on start_kernel() for whatever reason and the
> > > kernel never gets to my breakpoint in setup_vm().
> > > 
> > > I did decide to through a BUG() around arch/riscv/mm/init.c to see
> > > exactly which statement causes everything to hang. I landed on:
> > > 
> > > csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);
> > > 
> > > in setup_vm_final(). No idea how that is relevant to this.
> > > 
> > > Some people in the ClangBuiltLinux bi-weekly meeting today pointed out
> > > that since load_pa is assigned to the linker defined symbol _start,
> > > there could be some optimization that goes awry here. I have keyed that    
> > 
> > Thanks for the inspiration. Below patch fixes the hang issue, but I didn't
> > go through all necessary WRITE_ONCE convertions.
> > 
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index ae32f78207f0..fa9336a2583f 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -504,7 +504,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >  
> >         va_kernel_xip_pa_offset = kernel_virt_addr - xiprom;
> >  #else
> > -       load_pa = (uintptr_t)(&_start);
> > +       WRITE_ONCE(load_pa, (uintptr_t)(&_start));
> >         load_sz = (uintptr_t)(&_end) - load_pa;
> >  #endif
> >   
> 
> I think I found the root cause, but I dunno whether this is clang bug or
> we need WRITE_ONCE patch.
> W/O WRITE_ONCE, the setup_vm() is compiled to
> 
> ffffffff8040472a <setup_vm>:
> ffffffff8040472a:       1101                    addi    sp,sp,-32
> ffffffff8040472c:       ec06                    sd      ra,24(sp)
> ffffffff8040472e:       e822                    sd      s0,16(sp)
> ffffffff80404730:       e426                    sd      s1,8(sp)
> ffffffff80404732:       e04a                    sd      s2,0(sp)
> ffffffff80404734:       1000                    addi    s0,sp,32
> ffffffff80404736:       892a                    mv      s2,a0
> ffffffff80404738:       001fd517                auipc   a0,0x1fd
> ffffffff8040473c:       8c850513                addi    a0,a0,-1848 # ffffffff80601000 <load_pa>
> ffffffff80404740:       4585                    li      a1,1
> ffffffff80404742:       00b50023                sb      a1,0(a0)     // BUG!
> ffffffff80404746:       001fd517                auipc   a0,0x1fd
> ffffffff8040474a:       8c250513                addi    a0,a0,-1854 # ffffffff80601008 <load_sz>
> ffffffff8040474e:       00b50023                sb      a1,0(a0)     // BUG!
> ffffffff80404752:       ffbfc517                auipc   a0,0xffbfc
> ffffffff80404756:       8ae50513                addi    a0,a0,-1874 # ffffffff80000000 <_start>
> ffffffff8040475a:       55fd                    li      a1,-1
> ffffffff8040475c:       02559613                slli    a2,a1,0x25
> ffffffff80404760:       83018593                addi    a1,gp,-2000 # ffffffff80ca6428 <kernel_virt_addr>
> ffffffff80404764:       618c                    ld      a1,0(a1)
> ffffffff80404766:       8e09                    sub     a2,a2,a0
> ...
> 
> It seems load_pa and load_sz are stored with 1, this is obviously not what the
> code expected. 
> 
> 
> W/ WRITE_ONCE, the setup_vm() is compiled to:
> 
> ffffffff8040472a <setup_vm>:
> ffffffff8040472a:       1101                    addi    sp,sp,-32
> ffffffff8040472c:       ec06                    sd      ra,24(sp)
> ffffffff8040472e:       e822                    sd      s0,16(sp)
> ffffffff80404730:       e426                    sd      s1,8(sp)
> ffffffff80404732:       e04a                    sd      s2,0(sp)
> ffffffff80404734:       1000                    addi    s0,sp,32
> ffffffff80404736:       892a                    mv      s2,a0
> ffffffff80404738:       001fd597                auipc   a1,0x1fd
> ffffffff8040473c:       8c858593                addi    a1,a1,-1848 # ffffffff80601000 <load_pa>
> ffffffff80404740:       ffbfc517                auipc   a0,0xffbfc
> ffffffff80404744:       8c050513                addi    a0,a0,-1856 # ffffffff80000000 <_start>
> ffffffff80404748:       e188                    sd      a0,0(a1)
> ffffffff8040474a:       001fd597                auipc   a1,0x1fd
> ffffffff8040474e:       8be58593                addi    a1,a1,-1858 # ffffffff80601008 <load_sz>
> ffffffff80404752:       4605                    li      a2,1
> ffffffff80404754:       00c58023                sb      a2,0(a1)
> ffffffff80404758:       55fd                    li      a1,-1
> ffffffff8040475a:       02559613                slli    a2,a1,0x25
> ffffffff8040475e:       83018593                addi    a1,gp,-2000 # ffffffff80ca6428 <kernel_virt_addr>
> ffffffff80404762:       618c                    ld      a1,0(a1)
> ffffffff80404764:       8e09                    sub     a2,a2,a0
> ...
> 
> This is what the code expected.

This issue can also be solved by avoiding global vars: load_pa and load_sz.

Hi Alexandre,

IMHO, the load_pa and load_sz can be removed, I have one patch to remove
them, it works. I'm not sure whether will the two vars be used in your
future patches?

Thanks in advance,
Jisheng

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210605010918.7424a0aa%40xhacker.
