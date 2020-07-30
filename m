Return-Path: <clang-built-linux+bncBCKPFB7SXUERBZ6PRD4QKGQEMVEOSFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1032329AD
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 03:52:41 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id o22sf7722164qtm.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 18:52:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596073960; cv=pass;
        d=google.com; s=arc-20160816;
        b=C7RZfdRu6Ze/FD9LLUiGk9g+eMun8DUQybgz/FVph2+i3AEURFNDstWyhqkIzWpniz
         O45Qyqk1AbswnAKa60HDh7Zpr5I3Cf3GTAy7VdbmXp8XvTRmjedp5kgq4CMjazyDqZD6
         qoqzKh8MOdukHL09D8f8ouyowDDUChZG9Y6Zl3cdHq4MOxO4d7FDdQAdWw5EeSVuMiYU
         k6Wvsie7yEExSdbFO1tb7cGFn+f6vj6Gk8l1DRFqlvXkAFUl627D1UsfkvxuF4ou8udP
         bDquWhysOc5kqzzm2SsykVWVUZxjEiWN9kS3mfPYzvUb3+tLHqXsQNdXuWZ3UnED9KNF
         I77Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8AXKew6T4Y7pR9HBpVyL1MdaD1N1RFlf6OqZqXE4Rr4=;
        b=U4UhNZte09XA9baMtMU5r2Vl/9oyE4KZN3lToEOUeYdzRYOF53GORC/KaathHrWRli
         TxigHWIO4Jorg7EtjulV2/9rwtFIZdEFbT9NGul+H1+Tjdr//cuAqZ/ro84krOgB7tgI
         cihrnKSQVUff5/ZfrWL5nsXSFv85iHTbgtW6SzsfD7VCAsBTmNLLWtpuWAEsLe4IIW6r
         ZMAMjihUHY6X9PoULvDiZn8ogaZELYnxv3x8ir1eDkeWOTyjtCr1zfoIVTFD4VIx2N0t
         VbC91XFqcyBJq0fVouqHpZ/9fey4IS9gxZPWxR1kmWqqmHMHPS1KR4DlcipUGFtOOWWC
         xrLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aBhw3tWR;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8AXKew6T4Y7pR9HBpVyL1MdaD1N1RFlf6OqZqXE4Rr4=;
        b=Ka6zLl25+io0G/fbnq33JajBn0xfZEYHZvozhQ3KyQYQD1AuJbgkfvpGuv7PlWo59L
         Ed9EGC59rJjT55LB0rJ4fKwRAvEX/lTHOxNkUQ8mgky+FoQSC/gdB3fQG9+1lLSQr4TV
         uHfTKA8kydT7L+rHQCvXvAZcYlt/2t4IJ892LpWZ80IgOlN0BH5zgGsLg/2casQS6LEx
         gQBGzRrOdVOdhCZ4LnvhlTrtjT58fvjSfFvfko324mDukpJb9KZ0xzMXQgl7gw2E/abp
         HmU/14nHoFpM81XnxRQAmdY6wWNILRTt5BTPkCKSgEkmKqj5bpIR14PjIqyVTYrb83Lb
         GzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8AXKew6T4Y7pR9HBpVyL1MdaD1N1RFlf6OqZqXE4Rr4=;
        b=J8n0BJpSRDCgUO+cAMXU5KFwG2FPMYcQk1xHpc1sk7Cksg/GzqJOO9q7kPcKCqUibI
         AqYxuK6MZiG6dVn0/F9VkDSBwG8NFpIk7xuB57uZG2oXTVxwK8hdT+rUn5shkOWrc4WV
         ikdNqPIbjUSqx5EzCmZ4frQxiK8iGMLA05b8yUiMuJYxL//QGQXH/4opnSsvtE9xB1fK
         Gtm3KO6lyEYUHsrRVpi2bLxtZ8qtMlSQQiFik0Z+9mA7i6gogEgn/8AxG3VSiMCqU2qq
         YuFpVJZHu2N98hpe7xuBCi5C9HLYJ0GAWBcEZ2hgd+BNoNFdwcZb9Zl/vWyvUxzKK5uA
         Mb3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bagkn9vOKsp+BgPRbTUqJ+dxifepWjujvdgLJxoFGlGJOsy4C
	BMwPIDH+fQTfNeeeK13YK9I=
X-Google-Smtp-Source: ABdhPJyVlNTGfrTaYts72miTqYmXU/oyrChc8phW6KxZ/2dvb4PIPibrRWFvfKvu71KSCrM9zR7KQw==
X-Received: by 2002:ac8:7650:: with SMTP id i16mr679786qtr.215.1596073959953;
        Wed, 29 Jul 2020 18:52:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:13c9:: with SMTP id g9ls119460qkl.4.gmail; Wed, 29
 Jul 2020 18:52:39 -0700 (PDT)
X-Received: by 2002:a05:620a:150f:: with SMTP id i15mr36391027qkk.152.1596073959664;
        Wed, 29 Jul 2020 18:52:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596073959; cv=none;
        d=google.com; s=arc-20160816;
        b=jlSvnSbpmUdaVt3uy0dbrxlMr2xOunb92egArM+awpTusez8N5j7STF+WNlqcQSBm4
         AfC1HxMKMQpLNNfSrrvgFfZBYXfjh5zrrKYSiUJIQWuXrpgxFgDC2eZHXJdNOGHBV70+
         OaVtdoxHdnQPN5hfn7f4fO2ISu90sWwpPFOVJPJ3MIcy2lKJRvmGjt2izJFju8ppQiq3
         Ln7WLXd0vgPnCdW3AoLL+oxqpUKCPg7sRX1C5Cck4pMk5RI9esX+DrpQk3LqmZjlwwlG
         m4j9+3SUDILL9aIktgip+lyRI/aOg3lGf6n8zBpSvArUWsupbRedJw3ZQQhd0WN13ipg
         1Cnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Wr/vxuRMCyMaqxtO9q8uf3t1cVc0k0F6Dgt7vG6jHBM=;
        b=YkfOVBPBHH68+w+Sf4a47E7/4P0kSnQ+eFVUeekSbhU1zLDPtbeliHIeVwfZpeNcSH
         xZpQPC6qFncheKG7UfUQefNaZ7HJQyMIUfOvGEGNS8LQjRe2YIT79OC4VTkgs4u19piT
         KhmjgxlOrzHDzOIP0wCu70W/al+ez2jgN73TiCoLhBv7+pOGVlEui8mtnJ+wVmBH41MM
         HyZNGjwKSX2qLv7/IweqEPerhLP9m3HdCNylqcmdTn4IxmJ3AqCTrSDzjEqFkcW6bwBU
         2oyc7cle+42nviZKIzMax54kPk6o5ShzTsPxwnupjaOhJmwDc6rv1FXlqjlLqMrBwc61
         d3aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aBhw3tWR;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id i9si169651qkg.0.2020.07.29.18.52.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 18:52:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-29YBKjvJP4OrLqv9mdWq_A-1; Wed, 29 Jul 2020 21:52:35 -0400
X-MC-Unique: 29YBKjvJP4OrLqv9mdWq_A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1F7459;
	Thu, 30 Jul 2020 01:52:29 +0000 (UTC)
Received: from localhost (ovpn-12-125.pek2.redhat.com [10.72.12.125])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E3136179C;
	Thu, 30 Jul 2020 01:52:27 +0000 (UTC)
Date: Thu, 30 Jul 2020 09:52:21 +0800
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
Subject: Re: [PATCH 09/15] memblock: make for_each_memblock_type() iterator
 private
Message-ID: <20200730015221.GI14854@MiWiFi-R3L-srv>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-10-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200728051153.1590-10-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aBhw3tWR;
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
> for_each_memblock_type() is not used outside mm/memblock.c, move it there
> from include/linux/memblock.h
> 
> ---
>  include/linux/memblock.h | 5 -----
>  mm/memblock.c            | 5 +++++
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index 017fae833d4a..220b5f0dad42 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -532,11 +532,6 @@ static inline unsigned long memblock_region_reserved_end_pfn(const struct memblo
>  	     region < (memblock.memblock_type.regions + memblock.memblock_type.cnt);	\
>  	     region++)
>  
> -#define for_each_memblock_type(i, memblock_type, rgn)			\
> -	for (i = 0, rgn = &memblock_type->regions[0];			\
> -	     i < memblock_type->cnt;					\
> -	     i++, rgn = &memblock_type->regions[i])
> -
>  extern void *alloc_large_system_hash(const char *tablename,
>  				     unsigned long bucketsize,
>  				     unsigned long numentries,
> diff --git a/mm/memblock.c b/mm/memblock.c
> index 39aceafc57f6..a5b9b3df81fc 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -129,6 +129,11 @@ struct memblock memblock __initdata_memblock = {
>  	.current_limit		= MEMBLOCK_ALLOC_ANYWHERE,
>  };
>  
> +#define for_each_memblock_type(i, memblock_type, rgn)			\
> +	for (i = 0, rgn = &memblock_type->regions[0];			\
> +	     i < memblock_type->cnt;					\
> +	     i++, rgn = &memblock_type->regions[i])
> +

Reviewed-by: Baoquan He <bhe@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730015221.GI14854%40MiWiFi-R3L-srv.
