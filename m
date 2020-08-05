Return-Path: <clang-built-linux+bncBCKPFB7SXUERB6O3VH4QKGQERRAVUXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1EE23C7BB
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 10:29:46 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id n21sf36313183ybf.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 01:29:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596616185; cv=pass;
        d=google.com; s=arc-20160816;
        b=sb2mxKjRbXVCt9VwGO+5+jlZ7fFybvx3UmSW432HKWfCbNzySFhmuk1ZkS4000PTvC
         aAwu2A3rsO9Dpv1/9ZyjICA4I7RvYCV6ZId6+27pAg2YcOXUmDkDInp70CdG4AH47XF0
         WoXpKkmx6LKFbJuSNUoz+YS+8dvSJcklqRXVRsQ2ZpnpKOiORUFpbxJt29uUiCP1DCLN
         HtrDNBz4cNJk0feDZH5JCysk9wVfw5pYCEktwEAxiZgeIRf6HSVJH14j2+Z6oXNvKPIq
         IwMx/Khr2wGbFDeU2QXHSyAKyNV2MXsv+DNeJ8ARbI4SWwj7Oxibg441XaQlBxaqA2HV
         sf0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=abRXU/6vg7InXsSMot4jXBx963WYLDHzo6D1iqXmB1s=;
        b=fxJJpXtAy93EyIQGDe4bCvLJCXpH1Pq4M+KKxy0vHjuuaxuOWJ3tk04qDSPjhZzu8d
         Pry0iNVkO/VjosipaX15r+YEfNlgjE9N5vmsviGTIi9oHU7MnTJoF2EbEzPvtfFwX8Ko
         QTMvSAgehSdIHruM0avhZychMupg4UoxVddtWZCJHXdrpi/Nm/YO3SbxU1NIPUbN2/Gh
         +9EcCnMKagk/W4opb119L10YeGnrgmgcsBsGRsW6VQPmc+bqccC7UYbigV8hvkjyJuCQ
         +l7wNd73ZBy1Vd5iSNoDdEXnCwMctn9yKdh/Rij2WKt3oyl+YLiz/gMjZsqNdNzfc2wE
         muxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UUTWGjMa;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=abRXU/6vg7InXsSMot4jXBx963WYLDHzo6D1iqXmB1s=;
        b=dqqiBsHaqtEp4cq6gdIEEaO6J56Vtvu259BRx3aFiUiHDcE60DMHsW1j718XApWVev
         12zqBvmufW3kfto4GjiPvp33laPfL3b0+VdEtcYwp4VGSx3k29w8oy3oppx8pLC95kiT
         hKYLsY5rPbpqiKAKAxIqFhZvwIFiymEUTHzAibKIiBBI28iIbLYSQ/Ei7Bs5nzIPBwS/
         cNWyv3az+hiQ18NikOXYX/7Dl2OvE9D7CV+d2vA7Zyn+cCgKxAHy+YXezZQgYVbEWCBN
         i9wWjiqzEZwoTjKONTOTv9BYYsCzOzNt5tbFA31Tl9xR0/+JJ5qKzDS3q/AdGZjfLiUH
         Z3qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=abRXU/6vg7InXsSMot4jXBx963WYLDHzo6D1iqXmB1s=;
        b=K0SXz3GKngPIrIV4KD2z3sn1MrqQGN0xwmLcYATz0rSpbvUdq/YhSnTSLXjeELloez
         7aS4zMLgYLs0XeTni5jHuspEpjYgADQP/enO6WkfEBN1dsx1mp7kvez3EkTXJ7QIZ3ct
         tXHsOs6vQSdtbA1mrah/sz446xT+USdwtKs29Y8i7/Uper5Yh+bYPrr9wkg6Wa7eICyd
         EvrMYUqhN+TtIeJwKP9iBLNl/mLylZkKT4WN2urNzAreQT1mqNl8PyZrH4Ha0vLvdb+i
         zDVzdWIjU+gAh3qRBe/X0v9PVtdMrlzNqfrMndAoFdYCw3ZWFBGbOgyu14y0bJhBZhzK
         ME9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vjCspUJ6Hm9Fv+bMmITiQvMViZrMzE1YT2DiYaFiM9uGw2s8G
	cC8Ayi7g5/QYCQjGE/+k9tk=
X-Google-Smtp-Source: ABdhPJwReCyJjANWP3h5ErfJn71ZIadfQKVxnixbDdlMHlEHXNRFF9LwXYEIeUDo01kIOddmQPe7Yw==
X-Received: by 2002:a25:b091:: with SMTP id f17mr412551ybj.55.1596616185128;
        Wed, 05 Aug 2020 01:29:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3812:: with SMTP id f18ls606149yba.6.gmail; Wed, 05 Aug
 2020 01:29:44 -0700 (PDT)
X-Received: by 2002:a25:f309:: with SMTP id c9mr3000260ybs.485.1596616184824;
        Wed, 05 Aug 2020 01:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596616184; cv=none;
        d=google.com; s=arc-20160816;
        b=dFdA4LZ/Rp81fQbvoj0SwAUHckPE44BjGxM5LxnM0u+QzmZnElDpgQgedtG+pH00Fa
         CovddhDRcALET6GoTK1itZOww3qrAYqqpHFqAXEm7OD2GNRA79VfVUely0PuLNvGRTHa
         vyGiFG8iDkSO94L6xDoGzz7gYIvtLZljj3Vserg4Jq7113NkUfE6eY5hhQCm8Xlc9ycQ
         8liBrGGMQNwpbUuuRyfwpPStBq/ekmq87why4O9YcCRy3DiIhK/YNFd1BuTwMiSE2Un+
         PjbMj4X3LZUdgMgaURcABc3UvTbexyv07WoNmG+eY9apjb2f1qOEFZKaAmoVFIY06LXq
         tZew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FvaMXP5a+m7YjPK069Q+H34K0fPtN+F8dCVJuIAUPpY=;
        b=FmOhXhos8JCSt5x7AfzEwR5fBjJu67zFRNcBMrLFoSXRdWppP6U2Bg1/eQb1n7GkIv
         qWmtfkZj336EpBXV6lK2DzNxaKPwWhzk72NPqqEUu2D/BqEZriELvkP6ILNS8Tui1uft
         JDB6nHRTNbHuUoRbC+KtSfcgIDyBD4BgduKStb/JTzrclyrVcibxlEi/Sc3LznaA2kcw
         gcQZXnqRnGinwTXSXqUMZgj0naHsFvUe6xNxKUiyHD1ljf8Fy1z2yyg2MYfnmtmw7g6d
         tiScB4Fn52Lg/0agSAKuhMUYcDJXgG42oBJ9p1/Usl+rFSnsCAZG8+JEJpXfUWS/Pzbv
         7JXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UUTWGjMa;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id p67si91779ybg.2.2020.08.05.01.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Aug 2020 01:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-459-Fs5bhd50MLqa0hbUoos07g-1; Wed, 05 Aug 2020 04:29:36 -0400
X-MC-Unique: Fs5bhd50MLqa0hbUoos07g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F02638064AB;
	Wed,  5 Aug 2020 08:29:30 +0000 (UTC)
Received: from localhost (ovpn-12-71.pek2.redhat.com [10.72.12.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2DCC10013D0;
	Wed,  5 Aug 2020 08:29:26 +0000 (UTC)
Date: Wed, 5 Aug 2020 16:29:24 +0800
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
Subject: Re: [PATCH v2 15/17] memblock: remove unused memblock_mem_size()
Message-ID: <20200805082924.GV10792@MiWiFi-R3L-srv>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-16-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-16-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UUTWGjMa;
       spf=pass (google.com: domain of bhe@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
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
> The only user of memblock_mem_size() was x86 setup code, it is gone now and
> memblock_mem_size() funciton can be removed.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  include/linux/memblock.h |  1 -
>  mm/memblock.c            | 15 ---------------
>  2 files changed, 16 deletions(-)
> 
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index d70c2835e913..ec2fd8f32a19 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -450,7 +450,6 @@ static inline bool memblock_bottom_up(void)
>  
>  phys_addr_t memblock_phys_mem_size(void);
>  phys_addr_t memblock_reserved_size(void);
> -phys_addr_t memblock_mem_size(unsigned long limit_pfn);
>  phys_addr_t memblock_start_of_DRAM(void);
>  phys_addr_t memblock_end_of_DRAM(void);
>  void memblock_enforce_memory_limit(phys_addr_t memory_limit);
> diff --git a/mm/memblock.c b/mm/memblock.c
> index c1a4c8798973..48d614352b25 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -1656,21 +1656,6 @@ phys_addr_t __init_memblock memblock_reserved_size(void)
>  	return memblock.reserved.total_size;
>  }
>  
> -phys_addr_t __init memblock_mem_size(unsigned long limit_pfn)
> -{
> -	unsigned long pages = 0;
> -	unsigned long start_pfn, end_pfn;
> -	int i;
> -
> -	for_each_mem_pfn_range(i, MAX_NUMNODES, &start_pfn, &end_pfn, NULL) {
> -		start_pfn = min_t(unsigned long, start_pfn, limit_pfn);
> -		end_pfn = min_t(unsigned long, end_pfn, limit_pfn);
> -		pages += end_pfn - start_pfn;
> -	}
> -
> -	return PFN_PHYS(pages);
> -}

Reviewed-by: Baoquan He <bhe@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805082924.GV10792%40MiWiFi-R3L-srv.
