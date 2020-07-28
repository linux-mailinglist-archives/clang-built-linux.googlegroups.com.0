Return-Path: <clang-built-linux+bncBCKPFB7SXUERB4MLQD4QKGQEUC5SWDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 60829230848
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 13:03:14 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id y84sf10292537oia.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 04:03:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595934193; cv=pass;
        d=google.com; s=arc-20160816;
        b=U91+BgfoNSKqlx6iaj4CRw9g76CYoow6K1V3u/uqwCLI073zr5XC7C7dfw2ugjeYhL
         vog+9DU4gI0mHwWCcqo1eRRcMjdj8nRb8f0xO2ll+fOvS9mRrrMXSlgJDs2BPVQQNyK/
         AQWz0WBjgXw6G0GiOpGhZONlQ9R2Kmc12I3Eu8+vo5iiJLsfcGufO4JAPWlJ7/vU5OLY
         HCLoHUNCb2GKvR6qhHPOSfYkElbqTWG4yPelp3o6WFp3fRRFw9cnKN0gUDr7sUMzEObb
         l41duRRXxQAWI+eGl+RNIFMMKUK4lz5qUGRILhmkn38DIQ2zqQ3KV/r9MjKIIHgN2xxW
         9Ibw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yWoeUfaiu0ejYb4e32th5F7zcDf9gtYRbT9nE3tzDFQ=;
        b=c4VTKP2R3kApu7hi+bagnUhq0vg5xZec+L2wc975/B6QBJHcwenhuzU5tWdCRoWn9w
         uRKC55JqApEKS84ocPH4/hiA9f+5gtub/KQK6vsM+LC7qZwfpF2xQAEJ3njYZ0Lb4bNp
         ddvD3a8CvMz31bhqcGQ2CBGVQtOZqMOwkN3Up49bbZD97yNlX8leCQM7nUzCrS7PGTnu
         JGeVS9PtdC6aq5z5x72a2mBUZETFsatVl7TDlUVT62uZImAgIJAlKBWU/e/5mgpLb6Kf
         kHvlM8cR1J+hxWWyIu3259n9UFK58d+0I4OujcZt+seH67u03rQU/hK79zkycul9gy+l
         kULQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FpyBFgEY;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yWoeUfaiu0ejYb4e32th5F7zcDf9gtYRbT9nE3tzDFQ=;
        b=tDAC84VlYba+1eXXfjX9m+h30ybwpNZJUUB2hMnmnbhWv05h2jRCTnWVvrDwk1UNXp
         8De79xb4mKaNXodrnBxmawAQGwopIE4ja31SQS8gs0UMudJr5JZKYALhXhko2N9aCd7/
         6h23QlOkVyYq3aS59zTYYbnIJSXfG5c+mdvTYAnvLbpytGn0T/OFrlO9B6PcAXfjhqlt
         aO/xjuIVq6i3dNW11lkYRbixXKIA1EbVxDV8ufNOZPDRufShdPH2jEKpzl5u0wbQLdQa
         qYE3ppPR++lID/h6ijQh7d+4L85rKuIqCRK4OPzfSP0Yho+LtYNdDdOP+F70NKgV2hLg
         v9pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yWoeUfaiu0ejYb4e32th5F7zcDf9gtYRbT9nE3tzDFQ=;
        b=BjYRnz4TRLriJvAFHP2wxwThv8fWUEa1OxKGRsap9rIToDsaK8iPmZSjLNQbZRaJE9
         f9f6ptQSxksP3454uQrf8Eh7m2IsUx4VL7T0ynrp4oVPHLOcZYI/Yh6guqa/4DEzo+5B
         AtkTL3kqTAoDALJtdtp+58KFeN+PB6brjdwH/POyK6w+9dMsHTE2Drrb3kV5oH5IPQCb
         h6eb3wXwJ108C7drBdZsgmCHDYQuiSTSz6HCkMeki5zGoY4qThZ8g+pNH4ACpcTf2KPN
         1jsXlRcm3mA4dkb6WNPMT1VlIKqBKAHVE+MOqmhlA2AlCRTtblPW5sqvT0xWwtwVJlTH
         l4Jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311CBoEXhA01Yn8F0g9FolQhPU9arp+rLxSavT9GdMOP/Nmh2cP
	1GxijeFr6pe+DAJhuZKfMas=
X-Google-Smtp-Source: ABdhPJyDYZVDcN8RTaCJN9gk3J4e4HVy1YyZm4tY8/WsbGLADKLjfGYET7KbegYUSo8Mp8iCC7JBwQ==
X-Received: by 2002:a05:6808:3b8:: with SMTP id n24mr2865750oie.84.1595934193341;
        Tue, 28 Jul 2020 04:03:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a11:: with SMTP id g17ls3964034otn.9.gmail; Tue, 28 Jul
 2020 04:03:13 -0700 (PDT)
X-Received: by 2002:a9d:7f8e:: with SMTP id t14mr1391990otp.63.1595934193015;
        Tue, 28 Jul 2020 04:03:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595934193; cv=none;
        d=google.com; s=arc-20160816;
        b=hi9gDA8XRzqQOoSpqAodHJxUGOLPNuE+UHbcvgl9EeugBm4ao6cvAKa+dkq9Xk+gpj
         eJEZ5fEsgrCwTSKtKFebacRvLXkV3Av7BnLgaGkL4Uc3p0sXMZh1SixN7RPvmfMT9CSr
         +a7+vt6DlUV44F1Cy/rpeOTiHTEEIA5NVa+GkEwXy0TT0VKbwfJgLDJlAyg7F4/bfHda
         nrHDo59eL9RfCQDdBnvIUGGQORZd0qJ3ul6aJd9W9UY95irs2s+rQ32B1+O2hfT94bl/
         Uv/RTZ+JrsTKcPGqqwrdAuw3D8kWTSRsE96hG9vXP+plHH+c5f9ESwRqxQUNFAmFrtVh
         3aQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KbH/+n2HvZybv5SHoykd6djdgy/t/5KkFVDCxrMDM1E=;
        b=HkP5IjGo/4oaOTF+OKYlud+agMiCA78B6XzDjPzO5oI8o3PgyiNqqBP0oWmRgzJQq1
         OL8lfwbr7vS9nrA5StbDgoMojjTmJhDJI71xf6j0f6e7IFSfnIX+YiIqAnSYd1cNxRI/
         DCqLMzOlKAkzk+arHv4DEf4CGwHXTQz3Ua7Jb7p3COjoKm9pt02kK97u/u1rEOFo/GHj
         UDxlh6Fsm174GsEVWFdBjpJ/y8mCZ3vLCNclSNbPmVlvXvaJNfS1aZEGH2mXaHO52XDS
         RsIptwvkWEoyq0Py/2Ff7leE5a3+UeFW5XQLR477mFcWS2jsLSfdtadoUVmjWfn9jFkK
         TFnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FpyBFgEY;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id c142si426130oig.2.2020.07.28.04.03.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jul 2020 04:03:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-YtpimbUANf-rLILSqHuJcA-1; Tue, 28 Jul 2020 07:03:08 -0400
X-MC-Unique: YtpimbUANf-rLILSqHuJcA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA57C800597;
	Tue, 28 Jul 2020 11:03:00 +0000 (UTC)
Received: from localhost (ovpn-13-103.pek2.redhat.com [10.72.13.103])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BD995DA33;
	Tue, 28 Jul 2020 11:02:56 +0000 (UTC)
Date: Tue, 28 Jul 2020 19:02:54 +0800
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
Subject: Re: [PATCH 14/15] x86/numa: remove redundant iteration over
 memblock.reserved
Message-ID: <20200728110254.GA14854@MiWiFi-R3L-srv>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-15-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728051153.1590-15-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FpyBFgEY;
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

On 07/28/20 at 08:11am, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> numa_clear_kernel_node_hotplug() function first traverses numa_meminfo
> regions to set node ID in memblock.reserved and than traverses
> memblock.reserved to update reserved_nodemask to include node IDs that were
> set in the first loop.
> 
> Remove redundant traversal over memblock.reserved and update
> reserved_nodemask while iterating over numa_meminfo.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/x86/mm/numa.c | 26 ++++++++++----------------
>  1 file changed, 10 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
> index 8ee952038c80..4078abd33938 100644
> --- a/arch/x86/mm/numa.c
> +++ b/arch/x86/mm/numa.c
> @@ -498,31 +498,25 @@ static void __init numa_clear_kernel_node_hotplug(void)
>  	 * and use those ranges to set the nid in memblock.reserved.
>  	 * This will split up the memblock regions along node
>  	 * boundaries and will set the node IDs as well.
> +	 *
> +	 * The nid will also be set in reserved_nodemask which is later
> +	 * used to clear MEMBLOCK_HOTPLUG flag.
> +	 *
> +	 * [ Note, when booting with mem=nn[kMG] or in a kdump kernel,
> +	 *   numa_meminfo might not include all memblock.reserved
> +	 *   memory ranges, because quirks such as trim_snb_memory()
> +	 *   reserve specific pages for Sandy Bridge graphics.
> +	 *   These ranges will remain with nid == MAX_NUMNODES. ]
>  	 */
>  	for (i = 0; i < numa_meminfo.nr_blks; i++) {
>  		struct numa_memblk *mb = numa_meminfo.blk + i;
>  		int ret;
>  
>  		ret = memblock_set_node(mb->start, mb->end - mb->start, &memblock.reserved, mb->nid);
> +		node_set(mb->nid, reserved_nodemask);

Really? This will set all node id into reserved_nodemask. But in the
current code, it's setting nid into memblock reserved region which
interleaves with numa_memoinfo, then get those nid and set it in
reserved_nodemask. This is so different, with my understanding. Please
correct me if I am wrong.

Thanks
Baoquan

>  		WARN_ON_ONCE(ret);
>  	}
>  
> -	/*
> -	 * Now go over all reserved memblock regions, to construct a
> -	 * node mask of all kernel reserved memory areas.
> -	 *
> -	 * [ Note, when booting with mem=nn[kMG] or in a kdump kernel,
> -	 *   numa_meminfo might not include all memblock.reserved
> -	 *   memory ranges, because quirks such as trim_snb_memory()
> -	 *   reserve specific pages for Sandy Bridge graphics. ]
> -	 */
> -	for_each_memblock(reserved, mb_region) {
> -		int nid = memblock_get_region_node(mb_region);
> -
> -		if (nid != MAX_NUMNODES)
> -			node_set(nid, reserved_nodemask);
> -	}
> -
>  	/*
>  	 * Finally, clear the MEMBLOCK_HOTPLUG flag for all memory
>  	 * belonging to the reserved node mask.
> -- 
> 2.26.2
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200728110254.GA14854%40MiWiFi-R3L-srv.
