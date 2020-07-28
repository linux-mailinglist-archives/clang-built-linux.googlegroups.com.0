Return-Path: <clang-built-linux+bncBAABB6PFQD4QKGQEVM5JCBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD88230C34
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 16:15:22 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id v68sf6523443vkf.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 07:15:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595945721; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ott0oERoOM4/g2d5WiIHCBHCklymq7UpNzlPY5a5z52E4N3GRTcxQlBuaJnBjbXSYi
         BykdmZqy8zG54ZJcdOoIeYXvMtE4YND6JnHkCIKx+VFlctzD4t240jHgSdK5QOi5pkGO
         9B+3jLnuOc2ZR1mfUf34joW5zR4cRkflQCb6HiBl/U1tz/5j7TjxkayG8n6uuqGCJ2+C
         q457MgGF9aDwfgDziGocY4fkqDwcg2lITd/cB1zgnWKl/texLAQFM2ijT1/fulxSCuyG
         7tQDxZhvlhEsbhF9jfCupfHGCmPpcE3JnwWO4JNP5D0UpE4eOi7iDdoa+ZowUTIuocfy
         GnNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zp2pXFoY4bUXQIlYr4A7ZbWPab2csXbGE0SBBRSw4Ks=;
        b=WYnfp6M++ZmaNyndSStJYXXkPPS6jpni9yngBELSdcLdB/C7p2ZuDRkUA6u16+W2ri
         XFkv9ooLaqXVsSFX9n6xKSAwuNIX1vjdkK1XOb6Td5rD7iO0kd/Pih7MbXx/rAIhSXGM
         6UdIy3hqBPTvAcFiuCKcLa8dqMe+hB5rNKY6cEuuVPEP6WscwImk+BZgFqxhluoMV7qR
         glMbFnCy1urOXamBgxCWuwRzqhunkOW32JRNnIa7Sd41VolVIgIG2kMCMx7SacLjHIk/
         KHOEahL0uXVvyWe2o5c7PBrK4GfiCJATJnfNkuCFAtfdKe4to/IjdRfG8hqaaXlEae+x
         yWUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QgGc4X7Y;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zp2pXFoY4bUXQIlYr4A7ZbWPab2csXbGE0SBBRSw4Ks=;
        b=apec++IfKxnMj+CEjuhMuxSwhVV1m4INU/p3X6Cy9AQK6Y8je0vyo01XT5oyx8anbn
         qpYQtjYUS6Gf304EPasCPBgMbaffDI/CixX+MLkRmosKsRFrZQsh6yZLFC5Z8C09LOpS
         7c3yrpy+H/bvTX2Pi5KaZGWQhJtiMwvC063zzq5IAaWIi1xTgQQiQveAfMU8ihnV9+Ua
         J5StzDe+gQtFYdTX6FCbsWewDwPRz8es+Yc4xBuulbMdSPQpqE4fHSjrfmkf9xtqYoyf
         hDjQYfgpHxhJv1culSASxmaTggizZy3OjYz+LQEPhMZem25+HESwsI1Z2bXnoDr86H6M
         qhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zp2pXFoY4bUXQIlYr4A7ZbWPab2csXbGE0SBBRSw4Ks=;
        b=da9DjY29MsoEID/VwBJmAO85xd8sSBziC+kbfo8GfLkbLMA2zDtQkWTei3dY4gFOWQ
         dKOrIh3EY9/mqlA/Ecmr1FQ7cvxxabCpYFPBQnizEk0CDlTIFdBpkvJnaew1CvGnvQcr
         Wna7IvnJzI6B04Twe5JTbDggCsCfGlnxG0TYK1Q0v9gFAHIQ4SyLriTI9b3OLntGcHw5
         tCcJCnNGeXhhfF1Y06FUhSLmSPKf/hFBrn2TSEsAvprFpH1nL0xOio5Z9DLB2di17Mzu
         nPMDfGb4Dkwcaa1FdJhftssGKK0d8900ZOeUFx2mq3Sa+U7KXyy/TBMl/sJb1qT7Vljl
         OOyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ypNVhYjAJ1tZ13002qBwLtUppMl8tHo5dyJAdSDdXQdxidBRK
	dX3S3nMlG8hUnBV5+Tc1E6A=
X-Google-Smtp-Source: ABdhPJzmEdwwpacfGo1eYyeFRQRHsGcZp3gMLB2IDNnQ+4EHWqhU2zLDxok0zKypkllJMtdrkUpiJg==
X-Received: by 2002:ab0:41c2:: with SMTP id 60mr19875792uap.108.1595945721106;
        Tue, 28 Jul 2020 07:15:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:21d0:: with SMTP id r16ls2248758vsg.0.gmail; Tue,
 28 Jul 2020 07:15:20 -0700 (PDT)
X-Received: by 2002:a67:1b01:: with SMTP id b1mr19888530vsb.69.1595945720839;
        Tue, 28 Jul 2020 07:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595945720; cv=none;
        d=google.com; s=arc-20160816;
        b=w9btXAjhqBwrP8U6N26gutsSZt2SZDGZ+4vPfDQsDfaj4GRdNJViU13RhG+qro1EZ2
         4tpMbJGgmrOZyo1pqB/c8sBH8mTZOM0auaa/4Og100S+zxhwHaLoiNTwLiLAXUmXzZlo
         3/9tTr+EpV2M2f/hpVfF8mT27vl1TcWIT4HyB+6emrbRUx0KaQYgarfma/LDvqrqtm2z
         4cPiO/8M1ZgSXvIqEgA7JAk7fXoGAmqKDc1WAww15EXEE+N9pKU/MH8vkWKDFOt5NioH
         5A8hSQXXbuo0/Z4xuzhZbs7bw9XMzCT9MSUiAn2TJppK9mdfA0wPHoW4h6FGx7tThVy+
         Bqzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fjUCMEwVRFUwKqF1DRAC93IF9L7iUyjw2vkFgXuGN7I=;
        b=XUMijTmrFhPSpuLNOFA7FdBp4JbK01w48srN5QL1h2dLPh2J1Zey3yOE/d4cqm9QuB
         iXZfjTZarTAJNrYICA49/oEJjluZOhEjhlv/pKo7GhjNiMAUDIxLyHtmKhsAgbs6+d9A
         q8eAKqkKRnNXBDTahDudd7Do++LOn8FxLnvmvBdHlS79sCcOqS06S4MnHqdOz/V0rcyN
         MHwIxSA5G/nq44mYCH4IwPoTcDvgIWTf2F2zUZRNluVAk6IHcHdf7sQmurjZwtPhVBGL
         eV1U2iACbxLJQ8jQULk73dfLvdoaoMaFo6vmyvFnC+llBey3cFGtNVeO4OE4J2psmpwx
         7MEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QgGc4X7Y;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x6si81655vko.1.2020.07.28.07.15.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jul 2020 07:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [87.71.40.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7BC04206F5;
	Tue, 28 Jul 2020 14:15:09 +0000 (UTC)
Date: Tue, 28 Jul 2020 17:15:04 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Baoquan He <bhe@redhat.com>
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
Subject: Re: [PATCH 14/15] x86/numa: remove redundant iteration over
 memblock.reserved
Message-ID: <20200728141504.GC3655207@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-15-rppt@kernel.org>
 <20200728110254.GA14854@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728110254.GA14854@MiWiFi-R3L-srv>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QgGc4X7Y;       spf=pass
 (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=rppt@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jul 28, 2020 at 07:02:54PM +0800, Baoquan He wrote:
> On 07/28/20 at 08:11am, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > numa_clear_kernel_node_hotplug() function first traverses numa_meminfo
> > regions to set node ID in memblock.reserved and than traverses
> > memblock.reserved to update reserved_nodemask to include node IDs that were
> > set in the first loop.
> > 
> > Remove redundant traversal over memblock.reserved and update
> > reserved_nodemask while iterating over numa_meminfo.
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  arch/x86/mm/numa.c | 26 ++++++++++----------------
> >  1 file changed, 10 insertions(+), 16 deletions(-)
> > 
> > diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
> > index 8ee952038c80..4078abd33938 100644
> > --- a/arch/x86/mm/numa.c
> > +++ b/arch/x86/mm/numa.c
> > @@ -498,31 +498,25 @@ static void __init numa_clear_kernel_node_hotplug(void)
> >  	 * and use those ranges to set the nid in memblock.reserved.
> >  	 * This will split up the memblock regions along node
> >  	 * boundaries and will set the node IDs as well.
> > +	 *
> > +	 * The nid will also be set in reserved_nodemask which is later
> > +	 * used to clear MEMBLOCK_HOTPLUG flag.
> > +	 *
> > +	 * [ Note, when booting with mem=nn[kMG] or in a kdump kernel,
> > +	 *   numa_meminfo might not include all memblock.reserved
> > +	 *   memory ranges, because quirks such as trim_snb_memory()
> > +	 *   reserve specific pages for Sandy Bridge graphics.
> > +	 *   These ranges will remain with nid == MAX_NUMNODES. ]
> >  	 */
> >  	for (i = 0; i < numa_meminfo.nr_blks; i++) {
> >  		struct numa_memblk *mb = numa_meminfo.blk + i;
> >  		int ret;
> >  
> >  		ret = memblock_set_node(mb->start, mb->end - mb->start, &memblock.reserved, mb->nid);
> > +		node_set(mb->nid, reserved_nodemask);
> 
> Really? This will set all node id into reserved_nodemask. But in the
> current code, it's setting nid into memblock reserved region which
> interleaves with numa_memoinfo, then get those nid and set it in
> reserved_nodemask. This is so different, with my understanding. Please
> correct me if I am wrong.

You are right, I've missed the intersections of numa_meminfo with
memblock.reserved.

x86 interaction with membock is so, hmm, interesting...
 
> Thanks
> Baoquan
> 
> >  		WARN_ON_ONCE(ret);
> >  	}
> >  
> > -	/*
> > -	 * Now go over all reserved memblock regions, to construct a
> > -	 * node mask of all kernel reserved memory areas.
> > -	 *
> > -	 * [ Note, when booting with mem=nn[kMG] or in a kdump kernel,
> > -	 *   numa_meminfo might not include all memblock.reserved
> > -	 *   memory ranges, because quirks such as trim_snb_memory()
> > -	 *   reserve specific pages for Sandy Bridge graphics. ]
> > -	 */
> > -	for_each_memblock(reserved, mb_region) {
> > -		int nid = memblock_get_region_node(mb_region);
> > -
> > -		if (nid != MAX_NUMNODES)
> > -			node_set(nid, reserved_nodemask);
> > -	}
> > -
> >  	/*
> >  	 * Finally, clear the MEMBLOCK_HOTPLUG flag for all memory
> >  	 * belonging to the reserved node mask.
> > -- 
> > 2.26.2
> > 
> > 
> 

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728141504.GC3655207%40kernel.org.
