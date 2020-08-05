Return-Path: <clang-built-linux+bncBCKPFB7SXUERBHHYVH4QKGQE6EG7RWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 7264923C927
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 11:30:05 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id y10sf4603117plp.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 02:30:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596619804; cv=pass;
        d=google.com; s=arc-20160816;
        b=u7Ol3WufgNcX/HpnMZFYi41N9aL8i7IWvqxP7OwjoVtwvwtV9HKr30ofsjLLenRPDm
         7NwTXfXb74qH59ac5ySl0dI1xjWiNj9DVDDkE8hapHeewMWm0dYOcq6PsFbcGqPNKSgB
         WRKeEvo9NbdvVBslFO7ID9OjjQi21+8owbjqmXo7q5lO43j9FQICTAFS5TyD+ivaTC1q
         4NuREO/yJWNx2YgiDsf/kCBgaouj2hsUNGNrOTBIM2y6A8HPDAtFsma6F/pV1snI0+D3
         vkUCqCYf0PNisgJgsvu6DyG0tAyhIBfkML8kFeB0nvLpDpzS7oASWJzfSSP12tmG8ar0
         XMLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pEcqDMcprqSwfXV77xfFPVm8d8UkqRzaw2CpSCvGJp8=;
        b=OUnoRaUw2CMbmi5T4/6knTD/jsQwrXiGD8zDVuRuHMdLC4A+5CxvBxsQ7RPo1+ttTp
         3VPf2tsmSB+D8vAwTp9aQClR1hd12UWKk3fq+OgE22MQnFV5lKirAqzp1H+l2tx0mK96
         ExBMuwFOrHhz+Rf3kcI3KXPDiakR+h7Uzzj2kIyNGpILL6DRtYkOEHVYg5A1dBxBUAN7
         lCVHXz6k/i9LhsNYZBZ4WWr29tJnY2oUJa9i/o1SO36DQYRL1p3XyAPPuyWnE/hIxie3
         josCx06OChlkFekUJhAU5aOvzxGYpS00Rng62QY6xIFH5vCmnZYayUbD0/KPGSD26+w3
         WDrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aUOxTUPp;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pEcqDMcprqSwfXV77xfFPVm8d8UkqRzaw2CpSCvGJp8=;
        b=JS0e3MfDDsAVhCRa8exVUI9tQ/ILhrRbvsb7F7Epy5rH0eq+6KEEGLVnXSFWcRc9pu
         Q67MDLqCLq4NipbkxUMCisW1LAZk0eF2JMsvcVGmB0HdW5g9E1HDQHup7l1GxbqtYzoG
         wB3tnytWd49wq1B2DdeRCoSh1czrB3c0pxceu2utlA2nVGoj9vGFPKrgiA0qZBJQG1Mh
         cY2X5BGcT4+imswkOUDL4RdaYUvTUGIrJPspuw5NXObYRuUmUKn4+QmR/CAzvVEgI6Dv
         urymXtGEX4ISloKCI2mMlza+8aMuFyC/L5wqNtZC4rudpakuA1wc+KEl3L4DyK3A1t6c
         pBSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pEcqDMcprqSwfXV77xfFPVm8d8UkqRzaw2CpSCvGJp8=;
        b=WSM75Q4jWYcO29CqXQ1xjwZyl/2zbgDnqDg7KOTwBc5UaorH1DH5R1XhV+rsFrfL4N
         9Ttr75V2WTgcZr8JKvcJAcuxWYhebuDZ6vyWMCcI7wfg/AIq3z/MS49WPKyQB/GAz1zc
         nXXZLNtC+G6YIWWoaAj77j4ZeRpQm4nsxpd0uyPMarqzSHS+UjwjHYj7Q31h07UcLEtw
         7LtmqJrU8Ky0q43zDs+qP9pJwLZxwfZNGU7/fB0yy//DcMne1t4zUWgG1q7bS1MEmK01
         mvKQM/uyMEu/XtoRvch4W3a+V8QcHwpqPBzMJSsC2qlBVs/INpicCS6Y2uv0diqtvwKm
         vyyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339gTAlALCqOqbkDooKbHmRV9KKoaaG27FXuMAt/D3juMDnMugj
	K03/zGSNVv3J3IcVjoNFJwI=
X-Google-Smtp-Source: ABdhPJyqas64sgyuLw2e6T8xm5Mm2OJmlqC3zLonlhq6MMwO2wwqi3UCOhfUxI+c3K9O7E0v3YevUA==
X-Received: by 2002:a63:5613:: with SMTP id k19mr2322776pgb.424.1596619804055;
        Wed, 05 Aug 2020 02:30:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ca88:: with SMTP id y8ls739349pjt.1.gmail; Wed, 05
 Aug 2020 02:30:03 -0700 (PDT)
X-Received: by 2002:a17:90a:2170:: with SMTP id a103mr2481195pje.198.1596619803655;
        Wed, 05 Aug 2020 02:30:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596619803; cv=none;
        d=google.com; s=arc-20160816;
        b=tLZra7Pasrw3q15U3LQ27IjIRdDpjLNN7+blSnM8QkoT66VBiiFpAtjjmOK7/5a30o
         SyoJygUmEFxWzLR4ANi7xkooSkxS5EPFV2MN/ilLWfmL6fHbw6wEPzBe0rF4ECjUAjmR
         FuJ4RUTfTdSPlmf5tEZ8TuGqz3BFdmXZvo2HnaV7LAJtNPi71bbK07RCs5M6jT0TOUWv
         T3bZ2M37+bhmXKe1d+uFNgCZf2e5U6HlDx9XOwEajRFQlrHlJs99LarXO/GSohVZ7vVI
         GmCHgCmc4KgykIgcDDScA9X88XOcX6aD/2w7KH4/bbpaOTvHWGlvGjbCQKLwt9USltuM
         yVqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KGrNYVry5FOInRW/Xy0yFMiPNeyHmg20qhVD8oGfJJ4=;
        b=wOacBN44CnCNsD/jExo/N4GuWokPXIvAoAjUWAiHkvXG02GnXk6FI4/sLB5cMJsIpg
         X9QC8lRYmupyuNUNy+mv+e4tAvMAxkufjwf2NnF8eVRI1oKk39hrZuJW+pdDNA5gTHV+
         pm6PV7vvqrpMus4s43+QBcdYjbvze8FrEWbaotBbTa8NlhL5dbqI12mevjW5vRIZNw5B
         iZXFKO+K7PdPKEO9mtM4JPPy7HiGFCqcsk5Fq4MZ2rqD/FRHuhCO3RpSOJzoSh8jcWWW
         Uh8OVl+zAphT7Z+6cMBEcVzvhKazGLfusV1L0uJZ8jBUMfOsWHBI1ibpduw/cKH43JQU
         RdbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aUOxTUPp;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id n68si85568pgn.1.2020.08.05.02.30.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Aug 2020 02:30:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-ZnwKN9E9NxSzYumJ2rNNrw-1; Wed, 05 Aug 2020 05:29:58 -0400
X-MC-Unique: ZnwKN9E9NxSzYumJ2rNNrw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 24BE680183C;
	Wed,  5 Aug 2020 09:29:53 +0000 (UTC)
Received: from localhost (ovpn-12-71.pek2.redhat.com [10.72.12.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 068AF726A5;
	Wed,  5 Aug 2020 09:29:51 +0000 (UTC)
Date: Wed, 5 Aug 2020 17:29:48 +0800
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
Subject: Re: [PATCH v2 17/17] memblock: use separate iterators for memory and
 reserved regions
Message-ID: <20200805092948.GX10792@MiWiFi-R3L-srv>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-18-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-18-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aUOxTUPp;
       spf=pass (google.com: domain of bhe@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
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

On 08/02/20 at 07:36pm, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> for_each_memblock() is used to iterate over memblock.memory in
> a few places that use data from memblock_region rather than the memory
> ranges.
> 
> Introduce separate for_each_mem_region() and for_each_reserved_mem_region()
> to improve encapsulation of memblock internals from its users.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  .clang-format                  |  3 ++-
>  arch/arm64/kernel/setup.c      |  2 +-
>  arch/arm64/mm/numa.c           |  2 +-
>  arch/mips/netlogic/xlp/setup.c |  2 +-
>  arch/x86/mm/numa.c             |  2 +-
>  include/linux/memblock.h       | 19 ++++++++++++++++---
>  mm/memblock.c                  |  4 ++--
>  mm/page_alloc.c                |  8 ++++----
>  8 files changed, 28 insertions(+), 14 deletions(-)
> 
...

> diff --git a/include/linux/memblock.h b/include/linux/memblock.h
> index 9e51b3fd4134..a6970e058bd7 100644
> --- a/include/linux/memblock.h
> +++ b/include/linux/memblock.h
> @@ -522,9 +522,22 @@ static inline unsigned long memblock_region_reserved_end_pfn(const struct memblo
>  	return PFN_UP(reg->base + reg->size);
>  }
>  
> -#define for_each_memblock(memblock_type, region)					\
> -	for (region = memblock.memblock_type.regions;					\
> -	     region < (memblock.memblock_type.regions + memblock.memblock_type.cnt);	\
> +/**
> + * for_each_mem_region - itereate over registered memory regions
                                          ~~~~~~~~~~~~~~~~~

Wonder why emphasize 'registered' memory.

Other than this confusion to me, this patch looks good.

Reviewed-by: Baoquan He <bhe@redhat.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805092948.GX10792%40MiWiFi-R3L-srv.
