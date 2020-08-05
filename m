Return-Path: <clang-built-linux+bncBCKPFB7SXUERBFPHVD4QKGQELKIGJWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F3A23C453
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 06:20:39 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id a19sf11617489oob.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Aug 2020 21:20:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596601238; cv=pass;
        d=google.com; s=arc-20160816;
        b=1JAt9IOiucemjFVOrIgf4PfKGWRZ6Yadt2uYvEJDDN2FADvpPHNiq6gKwcDYnU1l1E
         l0N2FCOuY8yoE/hrqy3TNHO6bRcXzzpNnUdYiI4rHXfiemtIWAoTemQ3jQfCT9Yj5cTo
         TMz1UtGTX3uMH/LfO48cPPFl1zjPBgm+j/TBOySgAkgwuNczS03YJpV88SGHYS2eJZke
         yUT5FUsF/7C6dsfZSVj60uH1Gs67aojdLW1AhnmO+Zj2KMlkwIOAMobKOYM8T8P22zM0
         OCDUOM0AaHa3YQxEe4ZGZV933AEjYevTuYyixO6I6UvPhwv7U/0+21oLskh5qLRCOmjT
         h4hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9GSeEz9ALm0I1+13Vl6HlEREL1JQ9tkhtaI15fx1oiI=;
        b=rZ+wSDc2KVeVKfvESWAr0zNxXGNFjOBLE+I+h5MWX7gg99FAVVVBaoFunncYvY2JLY
         v3+SJp5+2KUHqaJ/CtFZZKvzI0tpDlAz8WKDFu/7LJcPRslqKHEVGiC0oU6qIHXDNEXj
         Nk965XcL54yf0AMge+iLhU7HOekNgiGwtJ/BdlXHQN3w1zGTHH0cnHLFdHGD82J8UjdJ
         KFuU9oHzb3USjojRW+IEp1TE2fvydcj5Y8BMNxaf0P1rMTcekr/CER/41ggY0aPLJmZz
         MuEkic3HAoVfevAg9W3myBHCDIIjGOBWzmp9aRGVDeThaOtCH33lqme+n4+mOcWVYhy4
         Q4gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RhB7tJrW;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9GSeEz9ALm0I1+13Vl6HlEREL1JQ9tkhtaI15fx1oiI=;
        b=bxK6t38Fahqirto6lMtgg/Q+6cFvA9EDjBhMZ4ak2lzaIp2BNPuHqNqzwdozNMCqQv
         Pp0TDtVyY/aIkHuwZC2+oFe26BAVUzprFYNlfPpKRjdYsuBq/pmf/Lkkw7FJSP/g44Zw
         As04hVwPzdh4n7wP49WLlEWd5vQoRuUrpfsgJObdt8atUTPt619walb0XljxNuCne/KQ
         harpnBy/OM0AFuKV0OOqsZhJr6Q84o/syHevrz0vZRyNXlNi+qq4UnpS//IkEt8NC5zN
         fx5O8eLZwExqpL0JUEhJsmSx/yeHFP16e01FBayskeqBhLEvk5ViB1nYQxNnU25dAIHz
         EU0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9GSeEz9ALm0I1+13Vl6HlEREL1JQ9tkhtaI15fx1oiI=;
        b=FkhtNWDs14HnVUqvr83DOsffkGXCmR8u4eoJQJQchSBEbP1kgEEZkW0dxagUrlG7Hc
         ojQh+XKlD6PunEY26dYKgdZ4wpgG8bV66AMNocBVIY8gKspNgio1ZQGeWUkDTIKYL3Yw
         gZEhBtXHkKfxq8hYCMe1ZuWgnfdSqvT904XXg4GxCcBi/cPlrI+/jpxXlzKZgeBHUo3G
         V/pZExDRGs2jtRnndJwYegmcXRqnAkf8ytyGPAtObg9jsDQ9dQWeN/vJoMN1dNC83gOT
         VwFZWNFnTy7h4xPQojrvPD2uwWgHJGpzu/bcIz89ow24l6qicfgrDgPukKH23Fe6Gnxi
         MkmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533i+G4cOTZXXTxZG9sxdRSnA6Iyj+asLdgIjbqMyKFPVtiBbMUY
	0TM++hNrkUIYFPCsNbY3qUk=
X-Google-Smtp-Source: ABdhPJz91goTwq+YKwE+pKJK8JhMbzQEvD1g9umuXU2/JbsVXxJNmdwYcqq3rzR5T5M/HH5pdeSIrw==
X-Received: by 2002:aca:ac04:: with SMTP id v4mr1291778oie.63.1596601237886;
        Tue, 04 Aug 2020 21:20:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d658:: with SMTP id n85ls157909oig.7.gmail; Tue, 04 Aug
 2020 21:20:37 -0700 (PDT)
X-Received: by 2002:aca:190c:: with SMTP id l12mr1351495oii.147.1596601237593;
        Tue, 04 Aug 2020 21:20:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596601237; cv=none;
        d=google.com; s=arc-20160816;
        b=cV6btl6OcQicOEFNjGOZYn6UXA/rcmIoSdhVzHuBV16EoMNO4T1V4hGScGdDLDpL5V
         4rQMRRfJxoI0n2ZzufsQQNK587JXCd4yDqP9RzlB0ZrQZrueKjDHKIjiiD17DUMSJI/G
         inTtCnlr0flGjXEv1zfZ0kHvBrAqmlxxmcIcd7aQ9GqQrxoIVOY620NOAgxsvbRWoq89
         Vgb74XEmTHnoqfS4JphzAvRc7CX1Pu+nZgh4d0IUgvJeAIGi98m+fmA//Gqk1md5iCGk
         k5mLQOhJ8I/F0Pxh8F0C8V6QPd3SmuuSDiR4wqaYZ+EWUbTd6auxUfDWdf4v3+dO1wb3
         y49g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=twertatwzUrM7ldiTnLyq8dIY3NouOKQbE23vgZibYc=;
        b=qtgTc8BLKAk1IHIJL7ot+zp1ckua4cTviiQ4lY2QJe+JoOoLU/4+7VnjDJ/SNVkdcA
         5FZC4gfj16G4Eb3IZSeLL4m0lM5fBz6iPZP+VYtMV3x2a+yRvNBaSJypmOFR0SNwPxi5
         Jscy9K5mteKKJ+3BU/RpfQoVe43KESVB+514gEhzsmxbZ8iBRoUs4thiRFlObkQV8dJe
         NZNcKOjRBIAA5KRkPu+Qo6Q1kzkVSkQDoqLgIxuhpIR9hWUpl+FMZ8xLFR2oeN2DABBe
         IqCh679f1BiCrGWyrdn4KUm6J0xho4NTKYa/Mv2ZI5ndCOtMtxIpssoKA/iDIuhl+Ja6
         EwFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RhB7tJrW;
       spf=pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id w28si76475oti.1.2020.08.04.21.20.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Aug 2020 21:20:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-pdUQtGUaN4iDPq52ne80Vw-1; Wed, 05 Aug 2020 00:20:34 -0400
X-MC-Unique: pdUQtGUaN4iDPq52ne80Vw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B26651009600;
	Wed,  5 Aug 2020 04:20:29 +0000 (UTC)
Received: from localhost (ovpn-12-71.pek2.redhat.com [10.72.12.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C71071765;
	Wed,  5 Aug 2020 04:20:27 +0000 (UTC)
Date: Wed, 5 Aug 2020 12:20:24 +0800
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
Subject: Re: [PATCH v2 13/17] x86/setup: simplify initrd relocation and
 reservation
Message-ID: <20200805042024.GT10792@MiWiFi-R3L-srv>
References: <20200802163601.8189-1-rppt@kernel.org>
 <20200802163601.8189-14-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200802163601.8189-14-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RhB7tJrW;
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

On 08/02/20 at 07:35pm, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> Currently, initrd image is reserved very early during setup and then it
> might be relocated and re-reserved after the initial physical memory
> mapping is created. The "late" reservation of memblock verifies that mapped
> memory size exceeds the size of initrd, the checks whether the relocation
                                          ~ then?
> required and, if yes, relocates inirtd to a new memory allocated from
> memblock and frees the old location.
> 
> The check for memory size is excessive as memblock allocation will anyway
> fail if there is not enough memory. Besides, there is no point to allocate
> memory from memblock using memblock_find_in_range() + memblock_reserve()
> when there exists memblock_phys_alloc_range() with required functionality.
> 
> Remove the redundant check and simplify memblock allocation.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/x86/kernel/setup.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index a3767e74c758..d8de4053c5e8 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -262,16 +262,12 @@ static void __init relocate_initrd(void)
>  	u64 area_size     = PAGE_ALIGN(ramdisk_size);
>  
>  	/* We need to move the initrd down into directly mapped mem */
> -	relocated_ramdisk = memblock_find_in_range(0, PFN_PHYS(max_pfn_mapped),
> -						   area_size, PAGE_SIZE);
> -
> +	relocated_ramdisk = memblock_phys_alloc_range(area_size, PAGE_SIZE, 0,
> +						      PFN_PHYS(max_pfn_mapped));
>  	if (!relocated_ramdisk)
>  		panic("Cannot find place for new RAMDISK of size %lld\n",
>  		      ramdisk_size);
>  
> -	/* Note: this includes all the mem currently occupied by
> -	   the initrd, we rely on that fact to keep the data intact. */
> -	memblock_reserve(relocated_ramdisk, area_size);
>  	initrd_start = relocated_ramdisk + PAGE_OFFSET;
>  	initrd_end   = initrd_start + ramdisk_size;
>  	printk(KERN_INFO "Allocated new RAMDISK: [mem %#010llx-%#010llx]\n",
> @@ -298,13 +294,13 @@ static void __init early_reserve_initrd(void)
>  
>  	memblock_reserve(ramdisk_image, ramdisk_end - ramdisk_image);
>  }
> +
>  static void __init reserve_initrd(void)
>  {
>  	/* Assume only end is not page aligned */
>  	u64 ramdisk_image = get_ramdisk_image();
>  	u64 ramdisk_size  = get_ramdisk_size();
>  	u64 ramdisk_end   = PAGE_ALIGN(ramdisk_image + ramdisk_size);
> -	u64 mapped_size;
>  
>  	if (!boot_params.hdr.type_of_loader ||
>  	    !ramdisk_image || !ramdisk_size)
> @@ -312,12 +308,6 @@ static void __init reserve_initrd(void)
>  
>  	initrd_start = 0;
>  
> -	mapped_size = memblock_mem_size(max_pfn_mapped);
> -	if (ramdisk_size >= (mapped_size>>1))
> -		panic("initrd too large to handle, "
> -		       "disabling initrd (%lld needed, %lld available)\n",
> -		       ramdisk_size, mapped_size>>1);

Reviewed-by: Baoquan He <bhe@redhat.com>

> -
>  	printk(KERN_INFO "RAMDISK: [mem %#010llx-%#010llx]\n", ramdisk_image,
>  			ramdisk_end - 1);
>  
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805042024.GT10792%40MiWiFi-R3L-srv.
