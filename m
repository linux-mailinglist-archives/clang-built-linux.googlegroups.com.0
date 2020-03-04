Return-Path: <clang-built-linux+bncBCT4XGV33UIBBVH47PZAKGQEBYNYXVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id C70B417875A
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Mar 2020 02:03:17 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id t19sf128553otp.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Mar 2020 17:03:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583283796; cv=pass;
        d=google.com; s=arc-20160816;
        b=T26QAYay/oT0zXHgV0mG9oTxYABATFqM6WurbWei9WIvY0hFAahS4tpLaoTLt1fORM
         vJWA4p7Y9/XMdlpc0VdKooBZFZnRBROLKJI2kfLwGs6CSmMHukmNA6fKNzekorreBB2K
         auy4O06dkzwBGYju3Zy16+79DqHbS8v+4p3ar/kLlUz9VBBtIPhmeXkVgmt0Vy/0ducY
         0zio29jKk75yx9TzL9SfeI+jz9ZWgG2qHo4VL7+c1uHZ+A/yHJJ2sG5LmC4ezNowyP9u
         wsQdMmXoUwecmhUFmlKu6/VTeG+56eJJei+FgSja01iAc+yE6f9w+jEbW0mXMAu1/zFt
         eNHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=XUY0S9eL+vYoPJ11LorbGoHAHyJW0/GFvBv9PxOamhw=;
        b=UIOjhX1MfbjjbpjXGCl5asvl+lwoh3CwpOkgqYDEk4lMlZFy04lAi18yUAou8ya2J6
         /LiutO3UE8iMuOQ31qHGjEtnSYo+Gkf0bvwtlegzb4dOafgQSn4lHWV/8TjpfcbJz/4v
         wbJHhh+5Iny4yrTnVkCuFFtZ2Mg/D0Eff2gp+wy+LMTxUiA9e4YCia+DsuwHxgVk4BIJ
         retW8DbzN6IHHVkmm9y2xMi8qy2eGL7u8GXM9Peko6441sWn4mdzOIajDp8MXvvNhvuW
         dYf1P67aVeA1lyE/FC+BZThPv7+fMjIkidsH41V78jAUSE0aUkLjQpvHr8DWXVTCoQOV
         D52A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zvxaHgXP;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XUY0S9eL+vYoPJ11LorbGoHAHyJW0/GFvBv9PxOamhw=;
        b=joR+cKaBHpN/tEKxXcVih2XubYVPNaCvTuguFvvPPD05tyr+Tp8cLx/MfC6h5pp/am
         1d40XRbjETRmzSvWdEgnXx+o6+L8yzZ7QYp7Lk8USNhngv+qiJHZ8/Nh7eA5WeBE/FUM
         GTCUYq6Djs2pvP2CBe2/n/DS41n0VNEG9Fjlr9HTbNczg7JevHU57zR86F205VRNkg0N
         efzLkdJm8jPDvinqTVbzOsjmKKoNHhFz6huCxV58xJqRhESEG4WWPXRUSPncy+P/dVs6
         MCGmVp1vJ5MYIdAyS4dU8XU3Xly4YpsauZsMOvnmdRmsIyiFs8Egq9WzeRg9HAyeJyQu
         J4Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XUY0S9eL+vYoPJ11LorbGoHAHyJW0/GFvBv9PxOamhw=;
        b=eMAHcFIXrcWhphH2SQKh5+fsm2RJhmHyMBWdHctmateYXW1ksEiKtGTv7dPbO6csM1
         TGWOCuwHFuDQfHHFQQHEfJzApxOYUoICZwoXUdJcEhtxqXmfeAWi+cAVZV8hysLUDvJF
         lwiax3l/zXa7bXEW5AnOVb2q8ulHWF59wdUwaDTIHxe25O7zyDYaa9iRWCDuyJ3i0lDV
         Q3g5HA45fyl4yXvgGwVMOC0cNRBT7zvEL+6BN6PC6iHP3MNvoKrbm6BYBK7oQy55lyq5
         GhyjaXWlJIK+44TrT1qWmkhyu5H/rluJHbJOHCCsUSogOevPP7bp75gOIrkYY6fT/Vui
         ZFuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0HuKABKPEYx2oXqpFn0pSI35FLMP6Mkuax6s5J2f1oi2pKQpXe
	4Vsr/Q1E630v2NkbyfTFuNs=
X-Google-Smtp-Source: ADFU+vtD1ZXV9BlHITjGhMf08U8Py05wgzi/tQw6nFbQQUZ0HXWvaPmp+h4BaXauh416PNWDd4vGnw==
X-Received: by 2002:aca:110f:: with SMTP id 15mr156169oir.114.1583283796340;
        Tue, 03 Mar 2020 17:03:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7157:: with SMTP id y23ls108372otj.10.gmail; Tue, 03 Mar
 2020 17:03:15 -0800 (PST)
X-Received: by 2002:a9d:3c1:: with SMTP id f59mr518299otf.170.1583283795834;
        Tue, 03 Mar 2020 17:03:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583283795; cv=none;
        d=google.com; s=arc-20160816;
        b=rCzFkSK/cvGOpRwBhxTEknbj3Uzj0DHq1gs/dh//sN3QI3MjWkoOA3duxJ7Yffr9IV
         A+CDytHy2Uz8IwKrR+hEY7/tmynlmOyiVslXLxKxlX+MztBACOODtUp+7uyhP9ODuFHN
         l/Gvwc8QMtl03Jsiqvffzn+Z+mwFJUVHcL+OPVSJ7IgAcef8PWzregGmny+9n7lqeJCZ
         ESaQS/llosIimz14Edn6kP4sO/P0h+wvQn0HPDVmWKTTgBRLriPoX/gAswnBtKjKk/xv
         kf5XxAu0Vh+VY0//QMS8/ux1aVN2KtskKtZwmIDJ9LINfasYkE5aC/6T6brajme0Aa1o
         x7hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t8PlHZksXhHnbBlOyPxbLzc6zA/2P2En5v2E9+xbQ2o=;
        b=iNAiK3GMHrwKAyUbpavJrDe0xJIGEm+ACxmrQjqad5rQsvAmPR3QOXgOTQR+/Zbcti
         V/NdEWJ1wNN7IrxyXWE3lQvw25gBh5ji+GiZGctbInuOOBtSRI+mMZ1IIgu/9cvGDDtE
         Y7sqq9SUzl+d3reetaru9fu7DEFMuyEtfFBXU/YqwcmmIR5mj5bR3Od2+nrl7Scm15eq
         Uz/TwTItUrfVY1Q7LgA1Lr4uqmdwJZzBydzcewpCUoqEfTJPgs6KzTjXLuGBdU8IclY6
         cNCDUA19Z62yjlRrwS4pwZvHe3QIzGjJyYfRdWBRab6iK+zv7zt0l5TgjHPREAq88Fa+
         zEpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zvxaHgXP;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g15si23378otq.1.2020.03.03.17.03.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2020 17:03:15 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B1B1820728;
	Wed,  4 Mar 2020 01:03:14 +0000 (UTC)
Date: Tue, 3 Mar 2020 17:03:14 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Linux
 Memory Management List <linux-mm@kvack.org>, Mike Rapoport
 <rppt@linux.vnet.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [linux-next:master 5946/5967] arch/arm64/mm/mmu.c:827:21:
 error: incompatible pointer types passing 'pgd_t *' to parameter of type
 'p4d_t *'
Message-Id: <20200303170314.9a6684e8191250275b1d8bdf@linux-foundation.org>
In-Reply-To: <202003031105.xcoYRe6W%lkp@intel.com>
References: <202003031105.xcoYRe6W%lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zvxaHgXP;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Tue, 3 Mar 2020 11:18:12 +0800 kbuild test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   b56557c8e5210c25b008da636ef804b228967aa6
> commit: 87d900aef3e229a891438c88debc533a8a1fa976 [5946/5967] arm/arm64: add support for folded p4d page tables
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 211fb91f1067ecdf7c0b8a019bcf76554d813129)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):

(cc Mike & Catalin)

Did we already fix this? 
arm-arm64-add-support-for-folded-p4d-page-tables-fix-fix.patch
(http://lkml.kernel.org/r/20200302174553.GC4166275@arrakis.emea.arm.com)
seems to be fixing a different issue?


> >> arch/arm64/mm/mmu.c:827:21: error: incompatible pointer types passing 'pgd_t *' to parameter of type 'p4d_t *' [-Werror,-Wincompatible-pointer-types]
>                    pudp = pud_offset(pgdp, addr);
>                                      ^~~~
>    include/asm-generic/pgtable-nopud.h:45:40: note: passing argument to parameter 'p4d' here
>    static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
>                                           ^
>    arch/arm64/mm/mmu.c:955:21: error: incompatible pointer types passing 'pgd_t *' to parameter of type 'p4d_t *' [-Werror,-Wincompatible-pointer-types]
>                    pudp = pud_offset(pgdp, addr);
>                                      ^~~~
>    include/asm-generic/pgtable-nopud.h:45:40: note: passing argument to parameter 'p4d' here
>    static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
>                                           ^
>    arch/arm64/mm/mmu.c:975:20: error: incompatible pointer types passing 'pgd_t *' to parameter of type 'p4d_t *' [-Werror,-Wincompatible-pointer-types]
>            pudp = pud_offset(pgdp, 0UL);
>                              ^~~~
>    include/asm-generic/pgtable-nopud.h:45:40: note: passing argument to parameter 'p4d' here
>    static inline pud_t *pud_offset(p4d_t *p4d, unsigned long address)
>                                           ^
>    3 errors generated.
> 
> vim +827 arch/arm64/mm/mmu.c
> 
> de323e651df4680 Anshuman Khandual 2020-02-13  818  
> de323e651df4680 Anshuman Khandual 2020-02-13  819  static void unmap_hotplug_pud_range(pgd_t *pgdp, unsigned long addr,
> de323e651df4680 Anshuman Khandual 2020-02-13  820  				    unsigned long end, bool free_mapped)
> de323e651df4680 Anshuman Khandual 2020-02-13  821  {
> de323e651df4680 Anshuman Khandual 2020-02-13  822  	unsigned long next;
> de323e651df4680 Anshuman Khandual 2020-02-13  823  	pud_t *pudp, pud;
> de323e651df4680 Anshuman Khandual 2020-02-13  824  
> de323e651df4680 Anshuman Khandual 2020-02-13  825  	do {
> de323e651df4680 Anshuman Khandual 2020-02-13  826  		next = pud_addr_end(addr, end);
> de323e651df4680 Anshuman Khandual 2020-02-13 @827  		pudp = pud_offset(pgdp, addr);
> de323e651df4680 Anshuman Khandual 2020-02-13  828  		pud = READ_ONCE(*pudp);
> de323e651df4680 Anshuman Khandual 2020-02-13  829  		if (pud_none(pud))
> de323e651df4680 Anshuman Khandual 2020-02-13  830  			continue;
> de323e651df4680 Anshuman Khandual 2020-02-13  831  
> de323e651df4680 Anshuman Khandual 2020-02-13  832  		WARN_ON(!pud_present(pud));
> de323e651df4680 Anshuman Khandual 2020-02-13  833  		if (pud_sect(pud)) {
> de323e651df4680 Anshuman Khandual 2020-02-13  834  			pud_clear(pudp);
> de323e651df4680 Anshuman Khandual 2020-02-13  835  
> de323e651df4680 Anshuman Khandual 2020-02-13  836  			/*
> de323e651df4680 Anshuman Khandual 2020-02-13  837  			 * One TLBI should be sufficient here as the PUD_SIZE
> de323e651df4680 Anshuman Khandual 2020-02-13  838  			 * range is mapped with a single block entry.
> de323e651df4680 Anshuman Khandual 2020-02-13  839  			 */
> de323e651df4680 Anshuman Khandual 2020-02-13  840  			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
> de323e651df4680 Anshuman Khandual 2020-02-13  841  			if (free_mapped)
> de323e651df4680 Anshuman Khandual 2020-02-13  842  				free_hotplug_page_range(pud_page(pud),
> de323e651df4680 Anshuman Khandual 2020-02-13  843  							PUD_SIZE);
> de323e651df4680 Anshuman Khandual 2020-02-13  844  			continue;
> de323e651df4680 Anshuman Khandual 2020-02-13  845  		}
> de323e651df4680 Anshuman Khandual 2020-02-13  846  		WARN_ON(!pud_table(pud));
> de323e651df4680 Anshuman Khandual 2020-02-13  847  		unmap_hotplug_pmd_range(pudp, addr, next, free_mapped);
> de323e651df4680 Anshuman Khandual 2020-02-13  848  	} while (addr = next, addr < end);
> de323e651df4680 Anshuman Khandual 2020-02-13  849  }
> de323e651df4680 Anshuman Khandual 2020-02-13  850  
> 
> :::::: The code at line 827 was first introduced by commit
> :::::: de323e651df46808081eeb17268054f77932a119 arm64/mm: Enable memory hot remove
> 
> :::::: TO: Anshuman Khandual <anshuman.khandual@arm.com>
> :::::: CC: Catalin Marinas <catalin.marinas@arm.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200303170314.9a6684e8191250275b1d8bdf%40linux-foundation.org.
