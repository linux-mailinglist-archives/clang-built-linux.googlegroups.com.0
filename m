Return-Path: <clang-built-linux+bncBCKPFB7SXUERBEWZVD4QKGQEXOU2YMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1339523C415
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 05:50:44 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id y17sf10279302pff.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 20:50:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596599442; cv=pass;
        d=google.com; s=arc-20160816;
        b=PDAJYBcf4D8E5baAcAEsGpDPOH7ehs6Vd13wghO9y+L9+JvxFlAjh06fa/sm9P3He6
         GxoQYcAKNT9+m57nEAUN8jzc/5nCmpKTKcWlYfjE1btz15Uc9gqG2OkCeDjy2FUeyVLC
         Jkllrh4t1Q13XRcRK4FzY9YE3KvbvWx4QA8QyHr2D3M524y1hhzqkLPfMXQvhZUyclWc
         OrhOtwWjCIs8jAY5B08kCeUfo6PtQk6dA0h4X0gUJCWqvbyKb9ABe7irFHS7D9qtlKF/
         5nItnCRORdGZkJj9M3nI/N8X2k5UJ2Ybq1kbOyobUJ9l1EzvY08hQ93ZuPGNom0JKrTP
         0FBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=C2aAwpiCwVqAO0GNyRET7xj55EhLTGmpp+/aN/sSMUw=;
        b=uGspbCJd7OLtL5KfdIswknW2LDEvKHjotR5zVbq6IGHLOB0ZTpGZwpOhPn1d31SaSE
         1Xta8feULsSvCxxAR/UwZmMfFLRjhgeBSmobobZEjyLxBazLinLrcY0E0EbbZCpxBST7
         YcK1VlGiX1s4fOynNCLSzLzaaj7cX4/O6izyyrRsruOEkV/tbT39A0YdNeZ0NPrhy0Mt
         r3pIs+D+5K8nR94F56DXRtO3O6llX2wjFRLhqmitb18glcNQLiAyv4TG9bTLiRGlp2hW
         PibtVq0nX0R1P3E8MKk7tKY5Q0FjGYf0xcXQg3dOO5CaEhNOGJ4/x8jPxzfD/+qT6m7C
         g7rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EYZdOlpq;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C2aAwpiCwVqAO0GNyRET7xj55EhLTGmpp+/aN/sSMUw=;
        b=i+QhNiFDG7RSG41eJrJZM5swZEtIJ+Ao9B+8OuNrHeAGsZDXw2f9sPmM445gHL2z73
         wh2mGuA914fR4i3pAl/sYBDF/dCR7tU6wGK0VxpDRpz+IyzQRegRKVAuReaH5usRpQfT
         Mp3ntr7CwW0KgydkINCuI2Rjg55xDz54C5US4py6ymvsk/ihOFHAsck0jQVWH0IIEcfY
         buATaEgTn4pcIzqk/T4l3Bn1J8wdd4ezIZDz6TlF8PUyyaL7CfzvnaSd0dAQcxBn5O3b
         DG0u6jGLS0L6wNF4e+GuwkR8PzjKLlZ39ttvEptyfLaq/n6EnPsr4gQvrA+W9nvGCR5k
         hF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C2aAwpiCwVqAO0GNyRET7xj55EhLTGmpp+/aN/sSMUw=;
        b=G1m9sgQ70xPLlzDK+IciCNvnPVaAkI/cA+Ecc+p4hC240nXdGv3c57R+bm9NF7yEKS
         nIFurxJAqnLO9o05YsQRuTJd6XxPIlMKLyv6q/ObceLHU7P0L81fuqDN+5avy6bGFHjw
         Nx6Svogp9rCORabKlq2gSolWwPLy48OUZQWsllIaEGN3YcGilOaEK/0K1j9VsSqobVvS
         7wg3uYydAQHSMDQqMszAkC1pREgr9kOJz8REQJ5jyodWce+YyyJvzUAo0Dytqzfe+Urh
         kVxcbHt7rReEw2yUEOuL4wYhxW0rj4TrkHD82CaNHaFSBNRk7vX1en46j8Q3WDxbumFI
         7unQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MAwd+AcM9o3YMjGvXPEj8zDCo4xg8zyaHyWnPxIeRde+1xCAc
	JnSs8xm7FFQ9yYALHmyXQgA=
X-Google-Smtp-Source: ABdhPJzPCEogG73b3GFraDkB8eWE5UT92EWfh0XSf3q9a/d8MLmYJIMiAhomY9ZdWVk09+3EQ4XxxA==
X-Received: by 2002:a17:902:9009:: with SMTP id a9mr1207732plp.252.1596599442320;
        Tue, 04 Aug 2020 20:50:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:524e:: with SMTP id g75ls358975pfb.10.gmail; Tue, 04 Aug
 2020 20:50:42 -0700 (PDT)
X-Received: by 2002:a62:18ce:: with SMTP id 197mr1392104pfy.85.1596599441891;
        Tue, 04 Aug 2020 20:50:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596599441; cv=none;
        d=google.com; s=arc-20160816;
        b=PzvTlB0irjCsbmqfY/uvI/WjP60X9m7WQrbEKVEziuHimrSdY7xJ1Krd+h8h/HeS2z
         ixOignhAVDzahjrIeamjyiokiGzOYLtl8idIKQQCKAHIwLnbDhM/0syS5eN0ShUF90Ym
         ckzRLoqjB6IYbU1BhYWkbazLFYjVz/9e69omNgviM1vdSYPrV5+HJT/N2e1CHWUkYrlv
         bgPv/VKkTluCUY8jJ+I9osKvwIclDnxfsB4FoA5qFv9A6HLqovEXuHdQ2FjyJC+WB4+0
         xgu1wQPqiiGYkYsX/Qhxx0Dh4O8Noq31hHj2uyDHfdMSyYdweTOSJDQ4Bq6y3ZlHlmNc
         PWoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PBRFUAvhtw5NCrkPVOAd8K2sp2Oav4oQ9F6n5x6FCHA=;
        b=G2z4KxjIr7nvvY47n2xWq4Jw0xKLu9kMdH3+G08SO/B8ozVE9l1AkRXGWm5hKBz6pL
         7M8ztqtWtT5QN9iFM3vjiihi64sbQY2S/ChHmPC4J9HcYCOP3B1ZfzZA0/hnFpWYfvlh
         4cKMCvFA72uNSsNCOnCOqaJ0FwbBcpz7V5+WkjaSCtk8SoC3RDWuccX+pvxIDa7qakl3
         N1j+fFpVYGDmJW0KupbsYEQuZzn+yGJI/rRtR6YDcMXBKVEEN+rrbZ9KkVRzcv/m3lj3
         Dn2rYcAd+zyKl/H/8zbXj15OMpkwUtjRMe7njSqiyO+3pJ1r1L43jyZq/7nEGMIn9JAT
         Hi3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EYZdOlpq;
       spf=pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id i6si41001pgj.5.2020.08.04.20.50.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Aug 2020 20:50:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-xI0_yRdGMPGizyxDuo-nyA-1; Tue, 04 Aug 2020 23:50:36 -0400
X-MC-Unique: xI0_yRdGMPGizyxDuo-nyA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CFAE102C7EC;
	Wed,  5 Aug 2020 03:50:30 +0000 (UTC)
Received: from localhost (ovpn-12-71.pek2.redhat.com [10.72.12.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17E4F8AC06;
	Wed,  5 Aug 2020 03:50:27 +0000 (UTC)
Date: Wed, 5 Aug 2020 11:50:24 +0800
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
Subject: Re: [PATCH v2 02/17] dma-contiguous: simplify
 cma_early_percent_memory()
Message-ID: <20200805035024.GR10792@MiWiFi-R3L-srv>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-3-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-3-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EYZdOlpq;
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
> The memory size calculation in cma_early_percent_memory() traverses
> memblock.memory rather than simply call memblock_phys_mem_size(). The
> comment in that function suggests that at some point there should have been
> call to memblock_analyze() before memblock_phys_mem_size() could be used.
> As of now, there is no memblock_analyze() at all and
> memblock_phys_mem_size() can be used as soon as cold-plug memory is
> registerd with memblock.
> 
> Replace loop over memblock.memory with a call to memblock_phys_mem_size().
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> ---
>  kernel/dma/contiguous.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
> index 15bc5026c485..1992afd8ca7b 100644
> --- a/kernel/dma/contiguous.c
> +++ b/kernel/dma/contiguous.c
> @@ -73,16 +73,7 @@ early_param("cma", early_cma);
>  
>  static phys_addr_t __init __maybe_unused cma_early_percent_memory(void)
>  {
> -	struct memblock_region *reg;
> -	unsigned long total_pages = 0;
> -
> -	/*
> -	 * We cannot use memblock_phys_mem_size() here, because
> -	 * memblock_analyze() has not been called yet.
> -	 */
> -	for_each_memblock(memory, reg)
> -		total_pages += memblock_region_memory_end_pfn(reg) -
> -			       memblock_region_memory_base_pfn(reg);
> +	unsigned long total_pages = PHYS_PFN(memblock_phys_mem_size());

Reviewed-by: Baoquan He <bhe@redhat.com>

>  
>  	return (total_pages * CONFIG_CMA_SIZE_PERCENTAGE / 100) << PAGE_SHIFT;
>  }
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805035024.GR10792%40MiWiFi-R3L-srv.
