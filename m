Return-Path: <clang-built-linux+bncBDJILRGJQEERB77HQT4QKGQENZXUCQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C1F231B36
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 10:31:59 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id l7sf2607566ejr.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 01:31:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596011519; cv=pass;
        d=google.com; s=arc-20160816;
        b=gV3kfH73BKfkQGDYcDm6YW83FTZQx/iTCna8I32q3xfYk/qgroYma1d5baDwSQhfRf
         udnnAWJm4pGmU0B/o1rWPhQER9v822gPeSfjA2nPRkICQDWhoSf7aPFIVm1hG9kY3Dmc
         XSdNaJ8HQIIWjRJWCF4zYpVrPupPh9uaR3C1bmZWdpSqxjRjLGqc+mlvaL6qFoDJc4XK
         ZKj6odFZKvn2H5O3+YV8rQjN/xhwADPJFyCLeXHwlgtLrQVbDS3vmzhOgYXHh3RWhbik
         txOuuLA1CP7l7yxn25tK3es0ax+qlWrQAa2sFTYmcTFmJDXbUHJtGye1nQaUFLQ5Dino
         mD6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dlg/2hG/57ALqel6kX3WJJ45APd1loe/FjFe5ag00ME=;
        b=yS7GOeefRAd3+MiKN5HD26UTtOrZNotatDeBK1D1xVi4I3qqZO6MKQ/hgxGaGuiLSQ
         xo/BDDYT3rzTgET4OODOK1TsHTyQqMljyB9kSiKjaXuvGWYlFg4EgeujGKWO8Bb29eoe
         JuumHkU8m0vw2ZhSdBF5yJLDR/62Ch2jiOoNQ9jpuUrrNDLsyUZopvftFui4NhfAYjIa
         cMK8aQ8YP93npyjiMobz6PerOzqmrqtA1xNj7rxNccz6Vu/t1/5JcxkhOCeD1FLTa7Pg
         pgWzNUjZ5Rg4IFMs4sc42bwxwr/sPFLZr8f/N5kDj1iEAVM3bAiHoqRvBktkSEGaV0+G
         fbJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jonathan.cameron@huawei.com designates 185.176.76.210 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dlg/2hG/57ALqel6kX3WJJ45APd1loe/FjFe5ag00ME=;
        b=lRBDYvfgWjRB/cKGDho58lvmzxi8YMA1huY2JXQ84DyobpV4k4QYqq6oJLaUaPaaqq
         WAnFCXv5JaNFFXyR5AHe25cGJkK5wujoPdhZtBBhDPrHmaUqmEmTcQLk2qge4cF1p7bl
         cMyx6dG+Zkxva3LPO/7THv5GC5vqZm9ob7KHTRdWAHgEO6Cx8WA0UgK98l5jeef4R2mH
         lZGwwFS5LwzYmdFmwwy1P+S+EzWXlbVQJfkF7HbIuDiY1Tl2xQ9tWwiPu/UCOFyydYVH
         /UECfjezM/Rj0pfRYEYdioKPsCyfXAavMoipdMVCf7dKBXWLdWoG8JokQbYpysrOTGJB
         cIZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dlg/2hG/57ALqel6kX3WJJ45APd1loe/FjFe5ag00ME=;
        b=ddVgiy/GRsAm5ANEG36274XmOHuC0yE0dxo50Te00UMpy1HxuaZdFxe12QA3wqN36Q
         Ky7tvJBmojBwfKlsa61d8XsGxvixZ/1KXSl+kZdDTmyANIG/UKQJz9BDgKzqg8HHuA+8
         7e+65ylzRyN3wkDsOVG6upxFnpHxjvddPIKSxJEd0MFd11dLySO7Z0FGxbmMqxJb27fN
         pQsOIUIBn0phvvQo+SZG8RBb48Xq6Rqf1g4eIUxqMZowE10BX2C8XNquzrD1BjUfmAbJ
         QI92T46YVC8sJayDp0P1nad/1X6m7Mhqln8DknXQhVrDN2zwU7cnkLEcQdMgvja8SWqP
         k9cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gOXqL49semALgcK+ENIBJkrv5NMUpKpZrQd6xh8dOOiflbSYK
	qe5AVT7KozlItrSZ36gnvAg=
X-Google-Smtp-Source: ABdhPJzyQfbMUg4Pr915dOURX9VKW/dbpB5B0fVqCopwME8HNPS10si1Tu8bti3FDMffvGGSFj2gfQ==
X-Received: by 2002:a05:6402:1643:: with SMTP id s3mr3827230edx.185.1596011519189;
        Wed, 29 Jul 2020 01:31:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d6da:: with SMTP id x26ls1220620edr.2.gmail; Wed, 29 Jul
 2020 01:31:58 -0700 (PDT)
X-Received: by 2002:a05:6402:354:: with SMTP id r20mr31351240edw.32.1596011518531;
        Wed, 29 Jul 2020 01:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596011518; cv=none;
        d=google.com; s=arc-20160816;
        b=K+DPuulhTXP5ahOJeR8sJwgzx5lYNhe0V40LllrVFGtwN9Md15xez6XNMFEUbU0Pdn
         XHZEYowKv76x4s7/jbUn+MFFf5Vv5S3CF3m+8BbIXxFPdaCzE4PCMJhQFi9wj5nx69DJ
         GclBskShUtV4XZpgo960ZDZbW08AdmRRPArwRUWheZuA1U84HViTY0KsUBYPp5nkEmiv
         S0+kL4L+NSITdhV0eTNKRltZ/h0q8iM5Hk/GKmI5PuOdis+l/tUhiaIumu6MBMZn3jIZ
         XEt9DBDkOaUq6NhbOhgJD0kyJvaFWGCmv7aPWUiWuF6gnVF+73SGxe/C0z/eOGx6Xonp
         KGww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=sVXs/TbLH42dNE8thYPlFWa4ITfZSFIcpI77VMuf5tI=;
        b=1KzZ3L7qpKntlsS6t4pbupbcq5JThKTX5PZOIrI4IExbXFiXhDmE/LBeKh2JrV7E4V
         qgjqR84t2r+Zut0s6sOUaF1covXTGji3kY5BpviiFBMCf2XLewAsm/NontASzwmJV/by
         MckcK0EOImGBLb00fzeK/lF5WWmvKJOH2Pv4QCPkBLZaTcBKNPv+lsXTLwcANcCK61xb
         PzGcdU3m+dkD8bzpZZXM1NS1C5ppUJyEXKmRa6GG2BiBKilqipknKzC/jrz3wqE1qnbo
         0Lmxs0KGmARLvCuXV+RLJRyQk52ryXPM2UvQ0EWZhjqdP8uGv765t7L07o38tjNXg3Ip
         83sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jonathan.cameron@huawei.com designates 185.176.76.210 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
Received: from huawei.com (lhrrgout.huawei.com. [185.176.76.210])
        by gmr-mx.google.com with ESMTPS id q9si75181ejj.1.2020.07.29.01.31.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 01:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jonathan.cameron@huawei.com designates 185.176.76.210 as permitted sender) client-ip=185.176.76.210;
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.106])
	by Forcepoint Email with ESMTP id 2439AD46260FB3D2AD69;
	Wed, 29 Jul 2020 09:31:58 +0100 (IST)
Received: from localhost (10.52.120.141) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 29 Jul
 2020 09:31:56 +0100
Date: Wed, 29 Jul 2020 09:30:31 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Mike Rapoport <rppt@kernel.org>
CC: Andrew Morton <akpm@linux-foundation.org>, <linux-sh@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>, Benjamin Herrenschmidt
	<benh@kernel.crashing.org>, Dave Hansen <dave.hansen@linux.intel.com>,
	<linux-mips@vger.kernel.org>, Max Filippov <jcmvbkbc@gmail.com>, "Paul
 Mackerras" <paulus@samba.org>, <sparclinux@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, Will Deacon <will@kernel.org>, "Stafford
 Horne" <shorne@gmail.com>, <linux-s390@vger.kernel.org>,
	<linux-c6x-dev@linux-c6x.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
	Michael Ellerman <mpe@ellerman.id.au>, <x86@kernel.org>, Russell King
	<linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
	<clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@redhat.com>, Catalin
 Marinas <catalin.marinas@arm.com>, <uclinux-h8-devel@lists.sourceforge.jp>,
	<linux-xtensa@linux-xtensa.org>, <openrisc@lists.librecores.org>, Borislav
 Petkov <bp@alien8.de>, "Andy Lutomirski" <luto@kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
	<linux-arm-kernel@lists.infradead.org>, Michal Simek <monstr@monstr.eu>,
	<linux-mm@kvack.org>, <linuxppc-dev@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, <iommu@lists.linux-foundation.org>, "Palmer
 Dabbelt" <palmer@dabbelt.com>, Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/15] arm64: numa: simplify dummy_numa_init()
Message-ID: <20200729093031.0000316b@Huawei.com>
In-Reply-To: <20200728051153.1590-5-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
	<20200728051153.1590-5-rppt@kernel.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.52.120.141]
X-ClientProxiedBy: lhreml738-chm.china.huawei.com (10.201.108.188) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-Original-Sender: jonathan.cameron@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jonathan.cameron@huawei.com designates 185.176.76.210
 as permitted sender) smtp.mailfrom=jonathan.cameron@huawei.com
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

On Tue, 28 Jul 2020 08:11:42 +0300
Mike Rapoport <rppt@kernel.org> wrote:

> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> dummy_numa_init() loops over memblock.memory and passes nid=0 to
> numa_add_memblk() which essentially wraps memblock_set_node(). However,
> memblock_set_node() can cope with entire memory span itself, so the loop
> over memblock.memory regions is redundant.
> 
> Replace the loop with a single call to memblock_set_node() to the entire
> memory.

Hi Mike,

I had a similar patch I was going to post shortly so can add a bit more
on the advantages of this one.

Beyond cleaning up, it also fixes an issue with a buggy ACPI firmware in which the SRAT
table covers some but not all of the memory in the EFI memory map.  Stealing bits
from the draft cover letter I had for that...

> This issue can be easily triggered by having an SRAT table which fails
> to cover all elements of the EFI memory map.
> 
> This firmware error is detected and a warning printed. e.g.
> "NUMA: Warning: invalid memblk node 64 [mem 0x240000000-0x27fffffff]"
> At that point we fall back to dummy_numa_init().
> 
> However, the failed ACPI init has left us with our memblocks all broken
> up as we split them when trying to assign them to NUMA nodes.
> 
> We then iterate over the memblocks and add them to node 0.
> 
> for_each_memblock(memory, mblk) {
> 	ret = numa_add_memblk(0, mblk->base, mblk->base + mblk->size);
> 	if (!ret)
> 		continue;
> 	pr_err("NUMA init failed\n");
> 	return ret;
> }
> 
> numa_add_memblk() calls memblock_set_node() which merges regions that
> were previously split up during the earlier attempt to add them to different
> nodes during parsing of SRAT.
> 
> This means elements are moved in the memblock array and we can end up
> in a different memblock after the call to numa_add_memblk().
> Result is:
> 
> Unable to handle kernel paging request at virtual address 0000000000003a40
> Mem abort info:
>   ESR = 0x96000004
>   EC = 0x25: DABT (current EL), IL = 32 bits
>   SET = 0, FnV = 0
>   EA = 0, S1PTW = 0
> Data abort info:
>   ISV = 0, ISS = 0x00000004
>   CM = 0, WnR = 0
> [0000000000003a40] user address but active_mm is swapper
> Internal error: Oops: 96000004 [#1] PREEMPT SMP
> 
> ...
> 
> Call trace:
>   sparse_init_nid+0x5c/0x2b0
>   sparse_init+0x138/0x170
>   bootmem_init+0x80/0xe0
>   setup_arch+0x2a0/0x5fc
>   start_kernel+0x8c/0x648
> 
> As an illustrative example:
> EFI table has one block of memory.
> memblks[0] = [0...0x2f]  so we start with a single memblock.
> 
> SRAT has
> [0x00...0x0f] in node 0
> [0x10...0x1f] in node 1
> but no entry covering 
> [0x20...0x2f].
> 
> Whilst parsing SRAT the single memblock is broken into 3.
> memblks[0] = [0x00...0x0f] in node 0
> memblks[1] = [0x10...0x1f] in node 1
> memblks[2] = [0x20...0x2f] in node MAX_NUM_NODES (invalid value)
> 
> A sanity check parse then detects the invalid section and acpi_numa_init
> fails.  We then fall back to the dummy path.
> 
> That iterates over the memblocks.  We'll use i an index in the array of memblocks
> 
> i = 0;
> memblks[0] = [0x00...0x0f] set to node0.
>    merge doesn't do anything because the neighbouring memblock is still in node1.
> 
> i = 1
> memblks[1] = [0x10...0x1f] set to node 0.
>    merge combines memblock 0 and 1 to give a new set of memblocks.
> 
> memblks[0] = [0x00..0x1f] in node 0
> memblks[1] = [0x20..0x2f] in node MAX_NUM_NODES.
> 
> i = 2 off the end of the now reduced array of memblocks, so exit the loop.
> (if we restart the loop here everything will be fine).
> 
> Later sparse_init_nid tries to use the node of the second memblock to index
> somethings and boom.


> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  arch/arm64/mm/numa.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
> index aafcee3e3f7e..0cbdbcc885fb 100644
> --- a/arch/arm64/mm/numa.c
> +++ b/arch/arm64/mm/numa.c
> @@ -423,19 +423,16 @@ static int __init numa_init(int (*init_func)(void))
>   */
>  static int __init dummy_numa_init(void)
>  {
> +	phys_addr_t start = memblock_start_of_DRAM();
> +	phys_addr_t end = memblock_end_of_DRAM();
>  	int ret;
> -	struct memblock_region *mblk;
>  
>  	if (numa_off)
>  		pr_info("NUMA disabled\n"); /* Forced off on command line. */
> -	pr_info("Faking a node at [mem %#018Lx-%#018Lx]\n",
> -		memblock_start_of_DRAM(), memblock_end_of_DRAM() - 1);
> -
> -	for_each_memblock(memory, mblk) {
> -		ret = numa_add_memblk(0, mblk->base, mblk->base + mblk->size);
> -		if (!ret)
> -			continue;
> +	pr_info("Faking a node at [mem %#018Lx-%#018Lx]\n", start, end - 1);
>  
> +	ret = numa_add_memblk(0, start, end);
> +	if (ret) {
>  		pr_err("NUMA init failed\n");
>  		return ret;
>  	}


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200729093031.0000316b%40Huawei.com.
