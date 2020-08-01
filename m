Return-Path: <clang-built-linux+bncBAABBH4DSX4QKGQES4XBLMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A062351A1
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 12:19:13 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id b10sf5190928oia.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Aug 2020 03:19:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596277152; cv=pass;
        d=google.com; s=arc-20160816;
        b=0U9OW667k8NY0wByT9IM6CvuoR3jsUXfbyM3qPRgUvBxg9/zU330vutEkIa4aXWuQD
         hiiPw0iHZRhMUL17DXiuZSxU3XZu8ECxYykcdI0ttvDFUCK3n7XxYQO90UtEQd8vCm+J
         smBWgidAH+wDvmexyTVwp2NYvQWUsGz876I+myJLD20bVQTdCmSmFH2EySFQvCRCKIbx
         XhXiBjYZxgN5xea2SZB919YxzUj023aw6t5nR1L4ab511cTr9tGNX/uIvHs8EkH+jDVg
         hneJ8V+5w4xFNp20MJ+tk1RYmFQUX+pkW0HHrf0DjvVaE8zqXUa2nILhBE0lZsE1QNz8
         P+5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kjd+5kWCzsFz7vep1xRWhaZ8REqEJfGNTZNg7jnHJqU=;
        b=Rs1CkI4+NQ0OFMfGqxaoIcdQeIwbB+y9XRswkRwJoFTRSqbnVJmqDeeDoTZ9HDxXvg
         PJMVQewh7P+0DCrEXHLyJYzwMqtrKDqL4j/mONbfNOybDN1TCDjMXe+ElsM/0WqJhUOj
         rIRLCc9OqbRtugDNmokKh4yZDXbdrnumlUdhfxjOfPAwZBs1b+ngPT7mMHXq59RoSO11
         4OIsSGFy13//DesBDp2W/eMy6v8lzlamOp+6nJbV8/k+aacY1fehLYJbpg4KHHc0rd7k
         2E6g9MfHK3Gl4tC56ec7tFUHNe/NYcVHge64wvCQYAPwUjoVg28QL1wLuhtzEj4pBy23
         p9MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BOX5CM31;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kjd+5kWCzsFz7vep1xRWhaZ8REqEJfGNTZNg7jnHJqU=;
        b=cIJbCPJ0GTZtXI3xOxSSnuFZa0aorT/IR0Wgm8SVZxvQxj8LUzeYV8+aa9Z7qsltbM
         +sH8SQSA1CuTUhTuVrVObUnDVjH0A9t4i4Yxg+XsYbWHgjyRDUz+XzY60R/whlrnnnMw
         nrvu7RKUsLk5ZZwc8K6a0HjtCZD8GvKSdmeqsu8QXz5+c4dIhDt7EQY0XalHUW2GQL4B
         wGyj01/35eLI4V/avJ27g6hJ7GTSDCV/HR+JOxBU3UK8nnjLFdcOtCIdy8XdMDfx5EI5
         eLFYBsOsEN2vzjOyjaQNdUXMrobFkVAfVvxrwgK0hIcr+QnRwAzolCRqXCzd0S9dj86f
         1XjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kjd+5kWCzsFz7vep1xRWhaZ8REqEJfGNTZNg7jnHJqU=;
        b=uDPl8j9fUhQR5l9Plvfpvupa93Czw0t86t6PjXw+ioQFus+JSaTt3N9djZ7puYoyF1
         D4obIrKlX8U6mDmqneFdnTLm8jUSkBfC0gHhWu00dh7phI/J0uPcx2i+kUnG8yIdNhqJ
         oAcdBXFrnQyx7WM1oxp3AcfOqXK1zprKEv7obkMXyPfG9LStWGjaC0z/noAe9VEST3J4
         XGOelOB/2228VmUlyWXIFAq288ORo8uv3noOp1yXTu/e7TzWec/HL8AJeqVY3qVh6E3X
         29j1ElbqQdHraeUSnDnBNTbPyb2koCPtlflTrRCKQ7396IehT/6S1CNq2RkKdGIlDttW
         l4FQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328jD6rUefhq4MC2fIj+aaHypGDjQRhpV/zz4hJsW/tNSEiAc2H
	gQnv7pS/TNkjIxbOwxNhD84=
X-Google-Smtp-Source: ABdhPJxKcKrKZag/UQjSGG3Y8pHL4Qkkcjp6Xc8YpktF33gOnpSY1UKyJm46C7TOm32DQoXhqKeP9Q==
X-Received: by 2002:a9d:154:: with SMTP id 78mr6670851otu.34.1596277151943;
        Sat, 01 Aug 2020 03:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:761b:: with SMTP id t27ls658046ooc.3.gmail; Sat, 01 Aug
 2020 03:19:11 -0700 (PDT)
X-Received: by 2002:a4a:8dc1:: with SMTP id a1mr6708158ool.69.1596277151684;
        Sat, 01 Aug 2020 03:19:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596277151; cv=none;
        d=google.com; s=arc-20160816;
        b=bUdEvFzXpR/XHVEAs9JAxXHwpFACzjsLfBu+fHldqVQsTEdqYvvHU6Uy6c2/aqS9co
         eD5HZmHORE867Yz/PrRn0LKgRc3nhgZfFZvnRX+whkbAFNzr1O/Nm6Ve+0nqIXbEbwI7
         MFj4YRBjbzAtqQwfmsO9MGU/YGNwmaMyQN0SmtR85dakXmvXlGk3oTeFj37pRFUIr1DZ
         Il7g8EMEjFFpALHJQuqZn1bmCUqBFCFZ7jPWI/Ni8PbYPS0VbC1S4TlOTKABM4kbAGeg
         LvDQM5/8S7XYyqBQnCiihC1G4+WcFxc+B5QNz9L1/8+PikTiE59UByQr5mKRWtXhSTz5
         vizA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WNJTO2Hhjh65ejJ0Q7rJcAG5+lKWJCjU0Dzff04y7qI=;
        b=FTqz/Od3wbzV8HvkghZFBArUb9B2XhS9VKPSsJsBVQKfCf7bCqgW+0mogkW17W0Szh
         uBKcBliU8lFdrYIRoc4YCWGKsYdl2YXfMhWoG94oARRzjzdzI4WQtJaIWCVgUkHikAjS
         Fpi2CfJ/ZH0xU1Y7Ih2XSibZEsmdMy7Ge1TK8U9NNnPDjmdb2mQqxBYqXvYX4izwxJNF
         jgyx9kDmT3Rbs0QOd82L06MXDj8cGazf7YCl5uNfCvbS/mJUE105v++kMqzngs8QEqwt
         8xxoioWWGm5jqRalE6izyfEuZGWPyPPoSdyGs25iW2c4/erY29sfWrljynVkwfwZGAAF
         O0dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BOX5CM31;
       spf=pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=rppt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c199si467169oob.1.2020.08.01.03.19.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Aug 2020 03:19:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of rppt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [87.70.91.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5ED692087C;
	Sat,  1 Aug 2020 10:18:59 +0000 (UTC)
Date: Sat, 1 Aug 2020 13:18:54 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Andy Lutomirski <luto@kernel.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Borislav Petkov <bp@alien8.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Christoph Hellwig <hch@lst.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Max Filippov <jcmvbkbc@gmail.com>, Michal Simek <monstr@monstr.eu>,
	Mike Rapoport <rppt@linux.ibm.com>,
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
	uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org,
	Hari Bathini <hbathini@in.ibm.com>
Subject: Re: [PATCH 06/15] powerpc: fadamp: simplify
 fadump_reserve_crash_area()
Message-ID: <20200801101854.GD534153@kernel.org>
References: <20200728051153.1590-1-rppt@kernel.org>
 <20200728051153.1590-7-rppt@kernel.org>
 <87d04d5hda.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87d04d5hda.fsf@mpe.ellerman.id.au>
X-Original-Sender: rppt@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BOX5CM31;       spf=pass
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

On Thu, Jul 30, 2020 at 10:15:13PM +1000, Michael Ellerman wrote:
> Mike Rapoport <rppt@kernel.org> writes:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> >
> > fadump_reserve_crash_area() reserves memory from a specified base address
> > till the end of the RAM.
> >
> > Replace iteration through the memblock.memory with a single call to
> > memblock_reserve() with appropriate  that will take care of proper memory
>                                      ^
>                                      parameters?
> > reservation.
> >
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  arch/powerpc/kernel/fadump.c | 20 +-------------------
> >  1 file changed, 1 insertion(+), 19 deletions(-)
> 
> I think this looks OK to me, but I don't have a setup to test it easily.
> I've added Hari to Cc who might be able to.
> 
> But I'll give you an ack in the hope that it works :)

Actually, I did some digging in the git log and the traversal was added
there on purpose by the commit b71a693d3db3 ("powerpc/fadump: exclude
memory holes while reserving memory in second kernel")
Presuming this is still reqruired I'm going to drop this patch and will
simply replace for_each_memblock() with for_each_mem_range() in v2.
 
> Acked-by: Michael Ellerman <mpe@ellerman.id.au>
> 
> 
> > diff --git a/arch/powerpc/kernel/fadump.c b/arch/powerpc/kernel/fadump.c
> > index 78ab9a6ee6ac..2446a61e3c25 100644
> > --- a/arch/powerpc/kernel/fadump.c
> > +++ b/arch/powerpc/kernel/fadump.c
> > @@ -1658,25 +1658,7 @@ int __init fadump_reserve_mem(void)
> >  /* Preserve everything above the base address */
> >  static void __init fadump_reserve_crash_area(u64 base)
> >  {
> > -	struct memblock_region *reg;
> > -	u64 mstart, msize;
> > -
> > -	for_each_memblock(memory, reg) {
> > -		mstart = reg->base;
> > -		msize  = reg->size;
> > -
> > -		if ((mstart + msize) < base)
> > -			continue;
> > -
> > -		if (mstart < base) {
> > -			msize -= (base - mstart);
> > -			mstart = base;
> > -		}
> > -
> > -		pr_info("Reserving %lluMB of memory at %#016llx for preserving crash data",
> > -			(msize >> 20), mstart);
> > -		memblock_reserve(mstart, msize);
> > -	}
> > +	memblock_reserve(base, memblock_end_of_DRAM() - base);
> >  }
> >  
> >  unsigned long __init arch_reserved_kernel_pages(void)
> > -- 
> > 2.26.2

-- 
Sincerely yours,
Mike.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200801101854.GD534153%40kernel.org.
