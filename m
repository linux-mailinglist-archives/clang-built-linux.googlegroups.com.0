Return-Path: <clang-built-linux+bncBCR5PSMFZYORBY7TRL4QKGQEQIYDHYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 451C82331D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 14:15:34 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id 15sf18379344qtp.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 05:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596111333; cv=pass;
        d=google.com; s=arc-20160816;
        b=OFek4kWR44UmaMhiwGSJRn6Xqkc0qhtxjih15fMOFKSJ146NYwLMO/lIPOf4r3XkSp
         1j2/i+oDiT2hVq3+0IAf2czrhQSrfIo5IO5IuZOE609juJO6WzvlkTkunqfPHhXyXuFD
         PF2DZp/jJ7fj39cxc8wfPerct7/IkfvMf9HR9eGS5Ir3M5b8F1mpmjC5Zz2oqPuCuY1B
         B8TkQC7DT/KB0EPSaykkhfnbrcE52nrYOJY35VFN+dqxeTpnE2oePqpfevfTajRIIAO9
         cHo7YvuvfvorPcrkBF0/vz+JM8m8iz+t1nkeTIwmDYX0ZGKBuTbYOwC3QDbmrWojTg7h
         NG4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=5NOlvkK8p7lm0Iy+HaNUbCUaV9nxZXxhVZxrqlKDgtE=;
        b=PrW3Pi5Z52+2aOIdPqZDgJgIjr1YKCKd13qCnYgZm2hEbG5Ct/0WV9tG8sqPzzrlI8
         57KgfmuaPoGZOa68QsiF4L8F9CdhFFKjev5Hz7ZQbIT8xzYfbVkzj3hbT7rOAPTJQAhm
         LGW3A/iLu5jEkgCJSrotcZUv2VC6+ho2uQDMFwBYyRecRjliZEE4XWsbc5UruTqpuyuO
         KaG+1vnrlyJf/3qsWHRYbxM1m+BpGzAPWeRe5eUEcFa6KLvtg6pujPSQdrbEcq8xoiQ8
         xIQJkB9mW8CENCgJHf5CB+cW9T4JbAd+eU050k0jbVvXwrOWRdjm2WhAue0H4FZHmMcg
         PQSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=dDG2HeGv;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5NOlvkK8p7lm0Iy+HaNUbCUaV9nxZXxhVZxrqlKDgtE=;
        b=JYW8BWT90VHlNkHiC1ydv3M9Z4LNpVNjp5W1ET+rDtzfnRsUorA1eqOgiDhJg+WEFs
         /QCHThw+bnk3ZzzpwwUdXRsemkl6EFSpEsgdbydxDqG9BaCY3DAcQdiBtJd89SHrPS7R
         Sr0oy7Ju3dB3HbqyrW1GKnpKOmW66g8MZrLHpx7HVraqDjM+32FgdMVEjy7gS5oTJRKj
         AebaP/FlIctNBubJcfti8YA/xgbwofoM8c66N8o75X36Q8jXZQl+xKmSmZDMw4yIVW03
         kawdSYMhD2TCsDb/0664ZyZGgYZ71cN6dEzsoT9UxBde3H/PGMIRUEdY4JS2/ouhkWVE
         DZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5NOlvkK8p7lm0Iy+HaNUbCUaV9nxZXxhVZxrqlKDgtE=;
        b=hNfIOoIjEad0/PUlrhNsEEA/jy45wE9WyI5Qya8S4FJBDw8PbsOHTamW16zjd+Phxo
         m2Ul6iE69qUEg/wxE0pErMpJ6yx5V6UAcCQE3TkPi/HNfpNrqs1sr9xEQfdUC0Law1EV
         apBtSZ5HQ0VhQvg5DMXpYivp3/VBzJrKHt7TGOzi6B9HZhnvWpxiD9VD82FCxQae57IE
         AvXM75oQq1Iwsw2RdfsxxD0JLeIzCoI5nMm7xNWJHn+QjjiCEoZqrgIlh0Tu7Ms1JhVF
         8Z2CZSFkFlcKENFN/JJNeIJ496ZFWwLpVknONz2R2NEpZt2fyu+VMeRgKP/hrMIxmDD5
         6DEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nMOEo8agtFaequ75eD0OPi+waj3sexWwYhe1oNV05JD+gKqtI
	9iFcR1vMq69rULFVBnVptRE=
X-Google-Smtp-Source: ABdhPJyGgss7xg4rXf5u5eNZf5yhuW9ryOY9cmML84+bTupXD12cWx/k9NIXWLWA2JoMrgv2+43Oiw==
X-Received: by 2002:a0c:fd69:: with SMTP id k9mr2596379qvs.103.1596111331878;
        Thu, 30 Jul 2020 05:15:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:246b:: with SMTP id s40ls2086712qtc.5.gmail; Thu, 30 Jul
 2020 05:15:31 -0700 (PDT)
X-Received: by 2002:ac8:d82:: with SMTP id s2mr2678914qti.164.1596111331239;
        Thu, 30 Jul 2020 05:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596111331; cv=none;
        d=google.com; s=arc-20160816;
        b=A8/AKlNh7Ej3HZ6R1bTerbKeTjTlXOuMwAS1AlotZAY8JiF9/+C7Ynk3/HNwm94B0J
         k7iHZqBuruNTLsMQ+G0NFUdCikBlWhA+oUND8G8j9RumpPuEpU3H8se0MKc3BsIfBEKd
         36GhubgUi5um6q1IGiJczS5eJeBrYh8CNzdvkoW0IxiG/lGteBQVmJ9IVpWqSppt/j22
         UcHS3qXbKNnyozXkvESsjmNlW1Gvz6d5niMZZmNnWj4La2CcNWLT6lVGrbvENxM7NR/d
         3bzCLWYdm38VlHgNUy72+8bH9ScNrhfCzssSNT6yPbs1FcE+70NaMXDlUM4YITitpJtX
         2x9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=rVchL7IzIWDbD81piUGoCjaHQ87L70iPhmm0TQZ3Cco=;
        b=bSrJHirA3edUnfakO0p2GmGH1aQ/jkzr/j5yVZkP8OyfRXy/ZVBv4Q7DB+Vzeses6b
         NeGWrvAcFGsAn4sTtzElLgYo7GMDpXjtrtfJHofLZLnXKDzg+SI9joSKak1fqZywEmjw
         +vurB8vuW3DwHncJyi7No3ye3D3uno9FVChCI+CASQUL7U1L3lthwPhIh474fuPq73Hk
         5H4xrHIMlz7e1LnrBgX9ixy37J8MN9476NsLuJsyVUYJKUiDz7J3JATDuuD4cLcFMQxU
         PJbpGtvXb/zhUA3A7y8d1YgoVrheGz2kyxhBgjpIxlYbAVx5CzEry3wnH4SJaG2p5iaq
         hjhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=dDG2HeGv;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id c14si178374qkm.6.2020.07.30.05.15.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2020 05:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4BHTrL6Fgfz9sRN;
	Thu, 30 Jul 2020 22:15:14 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Mike Rapoport <rppt@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Cc: Andy Lutomirski <luto@kernel.org>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Borislav Petkov <bp@alien8.de>, Catalin
 Marinas <catalin.marinas@arm.com>, Christoph Hellwig <hch@lst.de>, Dave
 Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Max Filippov
 <jcmvbkbc@gmail.com>, Michal Simek <monstr@monstr.eu>, Mike Rapoport
 <rppt@linux.ibm.com>, Mike Rapoport <rppt@kernel.org>, Palmer Dabbelt
 <palmer@dabbelt.com>, Paul Mackerras <paulus@samba.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Peter Zijlstra <peterz@infradead.org>, Russell
 King <linux@armlinux.org.uk>, Stafford Horne <shorne@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, Yoshinori
 Sato <ysato@users.sourceforge.jp>, clang-built-linux@googlegroups.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linuxppc-dev@lists.ozlabs.org, openrisc@lists.librecores.org,
 sparclinux@vger.kernel.org, uclinux-h8-devel@lists.sourceforge.jp,
 x86@kernel.org, Hari Bathini <hbathini@in.ibm.com>
Subject: Re: [PATCH 06/15] powerpc: fadamp: simplify fadump_reserve_crash_area()
In-Reply-To: <20200728051153.1590-7-rppt@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org> <20200728051153.1590-7-rppt@kernel.org>
Date: Thu, 30 Jul 2020 22:15:13 +1000
Message-ID: <87d04d5hda.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=dDG2HeGv;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Mike Rapoport <rppt@kernel.org> writes:
> From: Mike Rapoport <rppt@linux.ibm.com>
>
> fadump_reserve_crash_area() reserves memory from a specified base address
> till the end of the RAM.
>
> Replace iteration through the memblock.memory with a single call to
> memblock_reserve() with appropriate  that will take care of proper memory
                                     ^
                                     parameters?
> reservation.
>
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/powerpc/kernel/fadump.c | 20 +-------------------
>  1 file changed, 1 insertion(+), 19 deletions(-)

I think this looks OK to me, but I don't have a setup to test it easily.
I've added Hari to Cc who might be able to.

But I'll give you an ack in the hope that it works :)

Acked-by: Michael Ellerman <mpe@ellerman.id.au>


> diff --git a/arch/powerpc/kernel/fadump.c b/arch/powerpc/kernel/fadump.c
> index 78ab9a6ee6ac..2446a61e3c25 100644
> --- a/arch/powerpc/kernel/fadump.c
> +++ b/arch/powerpc/kernel/fadump.c
> @@ -1658,25 +1658,7 @@ int __init fadump_reserve_mem(void)
>  /* Preserve everything above the base address */
>  static void __init fadump_reserve_crash_area(u64 base)
>  {
> -	struct memblock_region *reg;
> -	u64 mstart, msize;
> -
> -	for_each_memblock(memory, reg) {
> -		mstart = reg->base;
> -		msize  = reg->size;
> -
> -		if ((mstart + msize) < base)
> -			continue;
> -
> -		if (mstart < base) {
> -			msize -= (base - mstart);
> -			mstart = base;
> -		}
> -
> -		pr_info("Reserving %lluMB of memory at %#016llx for preserving crash data",
> -			(msize >> 20), mstart);
> -		memblock_reserve(mstart, msize);
> -	}
> +	memblock_reserve(base, memblock_end_of_DRAM() - base);
>  }
>  
>  unsigned long __init arch_reserved_kernel_pages(void)
> -- 
> 2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87d04d5hda.fsf%40mpe.ellerman.id.au.
