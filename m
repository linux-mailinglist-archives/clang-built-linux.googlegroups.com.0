Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA6E36CQMGQEEOW5MLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id DD27E399403
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 21:54:44 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id v7-20020a0ccd870000b0290219d3e21c4esf2679119qvm.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 12:54:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622663683; cv=pass;
        d=google.com; s=arc-20160816;
        b=oqGoUrI6hJsGfHM3JlY8ntXD7cUC7JT69cxNxHfOpBWKVKhUqzl3pVnv0oSFJKPfft
         5AlTSw+no5jkHAMWFCLThYhWCdC9WH7+s7Wm1aJuopVB8GpoMkFODazuHBRdtiS1NhkC
         qMVptlppBVq92NUVvGu+kAzRX7i0e7n88cHuUdEXZmBVieZ/EpF11ZjvAZ34EssWiJTi
         Q9h5iJz1Ar2oBL9Lf3V/5rVfIauUcIXemjS7sJmdcId3n3/fX0dUL/tgvGuBkB+vgik6
         ZjtzfnCBNA4v9Z5Je2Tc+mBMv6XonBKTHlrJZ6VRIbUmDRC8GTDRuV9SxfFk7Q6faNn6
         R+aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sJ56ZG6i/CDuzgwuTxLAhW9gG6k2Wnqwfw2iexGyJIw=;
        b=nex3uMSpmzxGj2b8hZeOnX0YzBIXWmmmKiTUlSALXWESDC+NnbGRhazboGZwrdMSoA
         YIPpnAJ3+1Ka/kO1c6R3Yh83H6fG+WKc7C6vNNkbCs7Eq+CtFF+sjvtHrfbyBFkaPnMw
         tuNiXtMMT+DUnCkHqapFTy9O99/f4/4yF58oXG+srqLJ0oaL8gOgAsIjIs4bP8niHbYv
         hQeq9vw1NpKhGPhDSpV4dxCa4pIdYT7NgmJ1MPuqgLDyG/zXPp+NgDosDUvvc+9nFkkh
         uxr07gjg+S2fAkEayXFvbiCDg3+eum83PIgMeHDYLZAxdcL7u9svvTswMralNKuFjj5n
         iXEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=B2oYqF47;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sJ56ZG6i/CDuzgwuTxLAhW9gG6k2Wnqwfw2iexGyJIw=;
        b=YVCOr8QVh4L9wt4dm0VXsdFonEI0L4kZL+wz5zquOZ3Ei17sWXDvLQsZVkAXAb9w2q
         AT8zJF7e3AXSOGSSVrqAqJ8ARTbqIrdolWc249h+tV7mA2XUTXehYD2vC3MfnoJG1bYS
         bKKkoCuuYYWGJfKHdBBkVNP27xp4xDU+YvQfn4r1ndTXfjaZIEFsYhxVCec3jtFISIYq
         aLTBINOZwBVWjT/chhlhFgeP12pe4glHl47sGMN2WEMwln50O/vn1gPsqRKuct3FXKMM
         Ainwx31KhVsVcyFOjeSiYeZ6lJiGqvG1pnyuaPDA7vFtOaJrnPeDEbcDkjUwkeozq4z7
         T7Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sJ56ZG6i/CDuzgwuTxLAhW9gG6k2Wnqwfw2iexGyJIw=;
        b=EO+gPmrl0hnZy/XqBnwmFkMAjzJ1V15GC2RpfDFRnKoVVTSdw0TtOkEHmk5bCKiX/9
         q9dzpMOUXH8C0mbuKOJWdIUpgO5FqZaja+QxThY4cF9Is2XbBuoRjVJGG41zk8MhwK/3
         +rE0Y2zF2hUhf9uiato6sD6g22hdl0P0GGL+aWueIZ+461qR9ItWuK3JDAsKPZ1zYETm
         KZ6TqVE7c5SaKLuSkePWBTPKnJ9ohm0C1CgJT2cZni3aaBqiMvUXf49Vmt1ORQe1o+Mu
         kCT/AncxlSRB/aqn5hWkxZwd73IC95O+5z7A70mKBQQ309BAZPkKugOsSPPTH1HoVYHV
         yUMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532L3hNWeqS8sNG7m1b2N9iVzs0C/WnE7Sii3KNa1rzpsaSH5G7A
	NonJ4SU79VjT8fU1eSBGUzg=
X-Google-Smtp-Source: ABdhPJzGtb3tqu8g7tKHRYCL/LvMsPYxnJ2UkzGVCGBxwZ8w703CBjYmXpgrOe2hq8JSqXvP4k8CNA==
X-Received: by 2002:a37:8ac2:: with SMTP id m185mr24492509qkd.105.1622663683674;
        Wed, 02 Jun 2021 12:54:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:72cd:: with SMTP id o13ls379115qtp.0.gmail; Wed, 02 Jun
 2021 12:54:43 -0700 (PDT)
X-Received: by 2002:ac8:647:: with SMTP id e7mr26071645qth.156.1622663683214;
        Wed, 02 Jun 2021 12:54:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622663683; cv=none;
        d=google.com; s=arc-20160816;
        b=fcXtp2opvx5iyoLU1/vfz3JcmBRMArj5+dSgUQ/dgOt5FEW3RPhqrKPk+llU9eckdA
         9vUZY6MKw5+ss4WZZ5fyS1Zw7T9jaM/i4e9v2hacJSLM3qkunmCk5YBwmsGGLNdDKRJD
         ck13pnkEiVNJVlfd/5SNKarX1mu79pRqG09U80gVzvkWaoiqdWVSonBDWIAs8okbgjfF
         34Uro4cRoHYY4OvzX/qWpFL9XBhAJtYkGOb7MY7VFFz74KaqMW6PoRkM4DLU1Cctb9oF
         GMy89crnoEo1ATpatZ+R0KUK9P+Pzv8vNuxddUAQZXkdg/umbU+ViqiFyTu2sVYq1nmJ
         8VpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JRgFJjnApgubajYOxL+z+tUoqpOH5UywjtB/Xe9iY04=;
        b=rfenrqDYBubQ+Tr695onEC/niGzyfve9+2Tp+p5EdAhPEUOh3rpzzZV7CV5xbjl7oT
         l7DFcwD9tVMos1cCEg1ikdwiTW4c8EaHL1aZKtl6drbBEcIN4H92o67BzwKLK6Q/Gky1
         HEAIJxLg1qZ/Xb8XDfk7cgiod/pMPTjI6RWH3+lo8tQa+CbnYfpiHZmKQ9afTyYegX11
         L6uPLlTJv77FjblsC3k+jHpnVQ3tf1FXi1IYYFxqXggU5Y3cLIbTCOCFbW1Z+Z+D4ftb
         XMQlSifYUI2S0V3A7F9XDT0pMGTn7u0io1Feo6HWDParqvIkGwUOfocf1OtsOQ4FNm5p
         HLgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=B2oYqF47;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y19si63863qto.1.2021.06.02.12.54.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 12:54:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6BFF161242;
	Wed,  2 Jun 2021 19:54:41 +0000 (UTC)
Date: Wed, 2 Jun 2021 12:54:40 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jisheng Zhang <jszhang3@mail.ustc.edu.cn>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] riscv: mm: init: Consolidate vars, functions
Message-ID: <YLfiADFHMyXst55Y@Ryzen-9-3900X.localdomain>
References: <20210516211556.43c00055@xhacker>
 <YLaWseLdg5JYElVx@Ryzen-9-3900X.localdomain>
 <20210602231226.0e45524b@xhacker>
 <20210602235851.001a0d41@xhacker>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210602235851.001a0d41@xhacker>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=B2oYqF47;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jun 02, 2021 at 11:58:51PM +0800, Jisheng Zhang wrote:
> On Wed, 2 Jun 2021 23:12:26 +0800
> Jisheng Zhang <jszhang3@mail.ustc.edu.cn> wrote:
> 
> > On Tue, 1 Jun 2021 13:21:05 -0700
> > Nathan Chancellor <nathan@kernel.org> wrote:
> > 
> > > Hi Jisheng,  
> > 
> > Hi Nathan,
> > 
> > > 
> > > On Sun, May 16, 2021 at 09:15:56PM +0800, Jisheng Zhang wrote:  
> > > > From: Jisheng Zhang <jszhang@kernel.org>
> > > > 
> > > > Consolidate the following items in init.c
> > > > 
> > > > Staticize global vars as much as possible;
> > > > Add __initdata mark if the global var isn't needed after init
> > > > Add __init mark if the func isn't needed after init
> > > > Add __ro_after_init if the global var is read only after init
> > > > 
> > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > > > ---
> > > >  arch/riscv/include/asm/set_memory.h |  2 +-
> > > >  arch/riscv/mm/init.c                | 36 +++++++++++++++--------------
> > > >  2 files changed, 20 insertions(+), 18 deletions(-)
> > > > 
> > > > diff --git a/arch/riscv/include/asm/set_memory.h b/arch/riscv/include/asm/set_memory.h
> > > > index 086f757e8ba3..9d4d455726d4 100644
> > > > --- a/arch/riscv/include/asm/set_memory.h
> > > > +++ b/arch/riscv/include/asm/set_memory.h
> > > > @@ -27,7 +27,7 @@ static inline int set_memory_rw_nx(unsigned long addr, int numpages) { return 0;
> > > >  #endif
> > > >  
> > > >  #if defined(CONFIG_64BIT) && defined(CONFIG_STRICT_KERNEL_RWX)
> > > > -void protect_kernel_linear_mapping_text_rodata(void);
> > > > +void __init protect_kernel_linear_mapping_text_rodata(void);
> > > >  #else
> > > >  static inline void protect_kernel_linear_mapping_text_rodata(void) {}
> > > >  #endif
> > > > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > > > index 4c4c92ce0bb8..eac2d5c27b3e 100644
> > > > --- a/arch/riscv/mm/init.c
> > > > +++ b/arch/riscv/mm/init.c
> > > > @@ -53,7 +53,7 @@ struct pt_alloc_ops {
> > > >  #endif
> > > >  };
> > > >  
> > > > -static phys_addr_t dma32_phys_limit __ro_after_init;
> > > > +static phys_addr_t dma32_phys_limit __initdata;
> > > >  
> > > >  static void __init zone_sizes_init(void)
> > > >  {
> > > > @@ -184,7 +184,7 @@ extern char _sdata[], _edata[];
> > > >  #endif /* CONFIG_XIP_KERNEL */
> > > >  
> > > >  #ifdef CONFIG_MMU
> > > > -static struct pt_alloc_ops _pt_ops __ro_after_init;
> > > > +static struct pt_alloc_ops _pt_ops __initdata;
> > > >  
> > > >  #ifdef CONFIG_XIP_KERNEL
> > > >  #define pt_ops (*(struct pt_alloc_ops *)XIP_FIXUP(&_pt_ops))
> > > > @@ -200,13 +200,13 @@ EXPORT_SYMBOL(va_pa_offset);
> > > >  #endif
> > > >  /* Offset between kernel mapping virtual address and kernel load address */
> > > >  #ifdef CONFIG_64BIT
> > > > -unsigned long va_kernel_pa_offset;
> > > > +unsigned long va_kernel_pa_offset __ro_after_init;
> > > >  EXPORT_SYMBOL(va_kernel_pa_offset);
> > > >  #endif
> > > >  #ifdef CONFIG_XIP_KERNEL
> > > >  #define va_kernel_pa_offset    (*((unsigned long *)XIP_FIXUP(&va_kernel_pa_offset)))
> > > >  #endif
> > > > -unsigned long va_kernel_xip_pa_offset;
> > > > +unsigned long va_kernel_xip_pa_offset __ro_after_init;
> > > >  EXPORT_SYMBOL(va_kernel_xip_pa_offset);
> > > >  #ifdef CONFIG_XIP_KERNEL
> > > >  #define va_kernel_xip_pa_offset        (*((unsigned long *)XIP_FIXUP(&va_kernel_xip_pa_offset)))
> > > > @@ -216,7 +216,7 @@ EXPORT_SYMBOL(pfn_base);
> > > >  
> > > >  pgd_t swapper_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
> > > >  pgd_t trampoline_pg_dir[PTRS_PER_PGD] __page_aligned_bss;
> > > > -pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
> > > > +static pte_t fixmap_pte[PTRS_PER_PTE] __page_aligned_bss;
> > > >  
> > > >  pgd_t early_pg_dir[PTRS_PER_PGD] __initdata __aligned(PAGE_SIZE);
> > > >  
> > > > @@ -253,7 +253,7 @@ static inline pte_t *__init get_pte_virt_fixmap(phys_addr_t pa)
> > > >  	return (pte_t *)set_fixmap_offset(FIX_PTE, pa);
> > > >  }
> > > >  
> > > > -static inline pte_t *get_pte_virt_late(phys_addr_t pa)
> > > > +static inline pte_t *__init get_pte_virt_late(phys_addr_t pa)
> > > >  {
> > > >  	return (pte_t *) __va(pa);
> > > >  }
> > > > @@ -272,7 +272,7 @@ static inline phys_addr_t __init alloc_pte_fixmap(uintptr_t va)
> > > >  	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> > > >  }
> > > >  
> > > > -static phys_addr_t alloc_pte_late(uintptr_t va)
> > > > +static phys_addr_t __init alloc_pte_late(uintptr_t va)
> > > >  {
> > > >  	unsigned long vaddr;
> > > >  
> > > > @@ -296,10 +296,10 @@ static void __init create_pte_mapping(pte_t *ptep,
> > > >  
> > > >  #ifndef __PAGETABLE_PMD_FOLDED
> > > >  
> > > > -pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > -pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > -pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > -pmd_t early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > +static pmd_t trampoline_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > +static pmd_t fixmap_pmd[PTRS_PER_PMD] __page_aligned_bss;
> > > > +static pmd_t early_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > > +static pmd_t early_dtb_pmd[PTRS_PER_PMD] __initdata __aligned(PAGE_SIZE);
> > > >  
> > > >  #ifdef CONFIG_XIP_KERNEL
> > > >  #define trampoline_pmd ((pmd_t *)XIP_FIXUP(trampoline_pmd))
> > > > @@ -319,7 +319,7 @@ static pmd_t *__init get_pmd_virt_fixmap(phys_addr_t pa)
> > > >  	return (pmd_t *)set_fixmap_offset(FIX_PMD, pa);
> > > >  }
> > > >  
> > > > -static pmd_t *get_pmd_virt_late(phys_addr_t pa)
> > > > +static pmd_t *__init get_pmd_virt_late(phys_addr_t pa)
> > > >  {
> > > >  	return (pmd_t *) __va(pa);
> > > >  }
> > > > @@ -336,7 +336,7 @@ static phys_addr_t __init alloc_pmd_fixmap(uintptr_t va)
> > > >  	return memblock_phys_alloc(PAGE_SIZE, PAGE_SIZE);
> > > >  }
> > > >  
> > > > -static phys_addr_t alloc_pmd_late(uintptr_t va)
> > > > +static phys_addr_t __init alloc_pmd_late(uintptr_t va)
> > > >  {
> > > >  	unsigned long vaddr;
> > > >  
> > > > @@ -454,14 +454,16 @@ asmlinkage void __init __copy_data(void)
> > > >  #error "setup_vm() is called from head.S before relocate so it should not use absolute addressing."
> > > >  #endif
> > > >  
> > > > -uintptr_t load_pa, load_sz;
> > > > +static uintptr_t load_pa __initdata;    
> > > 
> > > Making load_pa static causing clang built kernels to no longer boot,
> > > hanging after just a few lines of output in the console:
> > > 
> > > https://github.com/ClangBuiltLinux/continuous-integration2/runs/2717606254?check_suite_focus=true
> > > 
> > > I am not sure why that would make a difference nor why GCC is okay with
> > > it. If it is a clang bug, it appears to be there for a while, given that
> > > it reproduces back to clang-11.  
> > 
> > I can reproduce the issue. Here are my findindings:
> > 
> > * gcc + binutils can't reproduce it
> > * clang + llvm-utils + ias can reproduce it
> > * clang + binutils can reproduce it

Yes, this seems like something strictly related to clang so that is what
I have been testing with.

> > All below tests are done with clang + binutils.
> > 
> > Then I applied below modification:
> > 
> > -static uintptr_t load_pa __initdata;
> > +uintptr_t load_pa __initdata;
> > 
> > I got below panic log:
> > [    0.015418] Unable to handle kernel paging request at virtual address fffffffffffffff9
> > [    0.016432] Oops [#1]
> > [    0.016679] Modules linked in:
> > [    0.017103] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.13.0-rc1+ #5
> > [    0.017711] Hardware name: riscv-virtio,qemu (DT)
> > [    0.018201] epc : trace_hardirqs_on+0x60/0xb2
> > [    0.018582]  ra : restore_all+0xe/0x66
> > [    0.018879] epc : ffffffff800cb09a ra : ffffffff800027b8 sp : ffffffff80c03dd0
> > [    0.019376]  gp : ffffffff80d001c8 tp : ffffffff80c0c180 t0 : 0000000000000020
> > [    0.019870]  t1 : ffffffff80006e40 t2 : ffffffff800d2e0a s0 : ffffffff80c03e00
> > [    0.020346]  s1 : 0000000000000001 a0 : 0000000000000001 a1 : 0000000000000001
> > [    0.020800]  a2 : 0000000000000001 a3 : 0000000000000000 a4 : 0000000000000000
> > [    0.021243]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000054494d45
> > [    0.021717]  s2 : ffffffff800027b8 s3 : ffffffff80d35968 s4 : ffffffff8061e1d8
> > [    0.022179]  s5 : ffffffff80c0c180 s6 : ffffffe000e34b50 s7 : 00000000800130f0
> > [    0.022674]  s8 : 000000000000007f s9 : 0000000080012010 s10: 0000000000000000
> > [    0.023176]  s11: 0000000000000000 t3 : ffffffff80d00108 t4 : ffffffff80006e40
> > [    0.023693]  t5 : ffffffff80006e40 t6 : ffffffff800d2e0a
> > [    0.024153] status: 0000000000000100 badaddr: fffffffffffffff9 cause: 000000000000000d
> > [    0.025367] Call Trace:
> > [    0.025749] [<ffffffff800cb09a>] trace_hardirqs_on+0x60/0xb2
> > [    0.026402] [<ffffffff800027b8>] restore_all+0xe/0x66
> > [    0.027261] Unable to handle kernel paging request at virtual address fffffffffffffffa
> > [    0.027827] Oops [#2]
> > [    0.028013] Modules linked in:
> > [    0.028321] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G      D           5.13.0-rc1+ #5
> > [    0.028839] Hardware name: riscv-virtio,qemu (DT)
> > [    0.029166] epc : trace_hardirqs_on+0x60/0xb2
> > [    0.029505]  ra : restore_all+0xe/0x66
> > [    0.029785] epc : ffffffff800cb09a ra : ffffffff800027b8 sp : ffffffff80c03a80
> > [    0.030266]  gp : ffffffff80d001c8 tp : ffffffff80c0c180 t0 : 0000000000000020
> > [    0.030748]  t1 : ffffffff80006e40 t2 : ffffffff800d2e0a s0 : ffffffff80c03ab0
> > [    0.031227]  s1 : 0000000000000001 a0 : 0000000000000002 a1 : 0000000000000002
> > [    0.031717]  a2 : 0000000000000001 a3 : 0000000000000000 a4 : 0000000000000000
> > [    0.032199]  a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000054494d45
> > [    0.032680]  s2 : ffffffff800027b8 s3 : ffffffff80d35968 s4 : ffffffff8061e1d8
> > [    0.033160]  s5 : ffffffff80c0c180 s6 : ffffffe000e34b50 s7 : 00000000800130f0
> > [    0.033642]  s8 : 000000000000007f s9 : 0000000080012010 s10: 0000000000000000
> > [    0.034123]  s11: 0000000000000000 t3 : ffffffff80d00108 t4 : ffffffff80006e40
> > [    0.034601]  t5 : ffffffff80006e40 t6 : ffffffff800d2e0a
> > [    0.034965] status: 0000000000000100 badaddr: fffffffffffffffa cause: 000000000000000d
> > [    0.035492] Call Trace:
> > [    0.035682] [<ffffffff800cb09a>] trace_hardirqs_on+0x60/0xb2
> > [    0.036077] [<ffffffff800027b8>] restore_all+0xe/0x66
> > [    0.036545] ---[ end trace 7f4fbff09d927668 ]---
> > [    0.037188] Kernel panic - not syncing: Attempted to kill the idle task!
> > [    0.038107] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
> > 
> > Then I checked 5.13-rc1, above panic log can be reproduced too. So the issue
> > should exist there for a while. I never tried clang with riscv, did you remember
> > which last commit or version clang works, I may try to bisect.
V> > 
> 
> More findings:
> 
> *The above panic issue can also be seen from 5.12-rc2. If disable FTRACE, then
> the panic disappears, kernel can boot
> 
> *so I retested riscv next tree w/ FTRACE disabled, kernel can boot w/ below
> modification:

Yeah, I do not enable CONFIG_FTRACE because it is not enabled in
ARCH=riscv defconfig by default.

> -static uintptr_t load_pa __initdata;
> +uintptr_t load_pa __initdata;
> 
> This is a weird issue. Any clue is appreciated.

Unfortunately, this is outside of my realm of expertise, as I am
unfamiliar with RISC-V at this level. Maybe Palmer has some ideas. I
would think that changing this variable to static would be fine given
that the symbol is only used in this translation unit but clearly not. I
have attempted to debug this in gdb but that does not really get me
anywhere: I cannot break on start_kernel() for whatever reason and the
kernel never gets to my breakpoint in setup_vm().

I did decide to through a BUG() around arch/riscv/mm/init.c to see
exactly which statement causes everything to hang. I landed on:

csr_write(CSR_SATP, PFN_DOWN(__pa_symbol(swapper_pg_dir)) | SATP_MODE);

in setup_vm_final(). No idea how that is relevant to this.

Some people in the ClangBuiltLinux bi-weekly meeting today pointed out
that since load_pa is assigned to the linker defined symbol _start,
there could be some optimization that goes awry here. I have keyed that
list in now. For full context:

https://lore.kernel.org/r/YLaWseLdg5JYElVx@Ryzen-9-3900X.localdomain/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLfiADFHMyXst55Y%40Ryzen-9-3900X.localdomain.
