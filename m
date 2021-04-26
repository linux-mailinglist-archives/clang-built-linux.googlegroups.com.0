Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6EWTSCAMGQETO24U6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CB536B960
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 20:50:33 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id i201-20020a25d1d20000b02904ed4c01f82bsf12447288ybg.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 11:50:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619463032; cv=pass;
        d=google.com; s=arc-20160816;
        b=B8qFwfpp5fTf01/8FODTOHN686w/X4YnhqpfmnjgXS2OWB/JpPrIWbbwGAVpkZ2yyB
         RBE8oCPXKPhhwYP3aYYudCiNdGy6Z+AlPGmQ6GuYlzDMjDqTIMyCCyPjRu11ct8wkgzV
         bvqIil05zgaYsWAF1yh71M3kyqwBva2fkfN6pT49JpOjrWjCYFvsYPueRUa3LexSoL99
         QAqwHv1x8jnsHi32dToRF4ICMg8iYGS7jZrS3NkiXaoanQMhF4WQP8c6UAKMbYXMPNIn
         U14I2jBSDgp3NOZppaN5pTUK7n0UDr7+dWGjysW1rGB6bPDFwR46E4wAn1SFVBarUGQL
         1mvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BrCCJUQuKaK8ALLee30q9awkUWtA6r/w99GAaxsdABA=;
        b=K9xeNPpilUXwDpCH+7p6ZD3QuPmz7pbmWP2F6FE+YFwUYsGcCJg101hlB2VoxkB+G4
         pTbkZkUJpRmc2t5jJhpJElsNygRh7E69dCIbs2tjgXqq1QPgsmGYQkB4sDT374abszZ0
         cNODlZtKQYCTH3zFMklAOd7+pZWviY2EXfsSUS62IodU/9geWuRsDlnLf/Xr0rg5D32c
         sxTVZJ1H9EjBMD9qmeV503+F8hIV/BVV/5ymmzyBCb2loIeMiRQBFEGXJ+RS5PBaokrb
         xG+/wYu8cc7ygHWFW/MSeZxjw8RWGAUuRvX9Bt8mjJTYld2HosULyoN9Dphtq8AQOSlF
         XmiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WAxgPwen;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BrCCJUQuKaK8ALLee30q9awkUWtA6r/w99GAaxsdABA=;
        b=Bc5cjDp9lewuKlWkrbleTHSO/rt5GsOt7yu6jDpBM3rox/yK7dNc+A7jPJnO4L0YtG
         vpI+tDYopWoPAr/0gC4P7Ljre13MBaboK3ZCaJ7Vv3/rE8AJ22365Xjzd7j3AEAKE/7M
         x2vO9Om5VtMnV1Uo+s7T0MWE3hcJ8x+LJT57HKx0WZfZkfEnvxfrlqWmvdDGYjt1wXWu
         IRmBg2efWDmh6PNNHtgNWFEZ/LLF5p+GtKhtQb4pyZeSozu9GD82M/X8UKx4friLyB3V
         ulUddYH2S0oyoKMVKErGZr3o2VuUQ5sJpAIuax80RKviz6WZaff/UmhRPkMGBg4N5MMI
         nbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BrCCJUQuKaK8ALLee30q9awkUWtA6r/w99GAaxsdABA=;
        b=XLsRQ7HvBDZ2L4tlQnF3AfaA5GD2LEfouxw8ZNc7dHlIZUwWm16ElFd4FMAPKBNPCq
         5ZOiMmhgY6+S01e3UeQ4Ndt54loSfoZL4gSgkoG3jH7wjZoANdlavLSAi/n36yjOGSaT
         qkjcEtxdMJL5GHrrPv7JjtXhCpnY+AZmECKH2oSvhAFFmfTaBz3mEXO3VZoVgtDv9dpw
         xiiP37tLiPBedyUF9Mapfnql2o8wbvmSEhTtiUqqnHHgHzOqpXLz30gehUtEcdh2HJSC
         sVtG+hTUXSMbXC4eN5oXEWZCvbNP2P5tWEO+sDnn/hh0+R1VAXIqgD1cNSJOD5GFV7BE
         A2DA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Y6/BX7buSfaBTbdgAA/XHxFIrtGEgWI8RYHG3FS6efxqUDZCQ
	FbbdFT9IDL6lb1qt/h2KQ28=
X-Google-Smtp-Source: ABdhPJyHqwHKNsyWqlZYIlbdtGegxiI7pPnUMcvJ4VOUscvm+0cJzV4sWYZNmLbut+0qsRU1tzikgw==
X-Received: by 2002:a25:8885:: with SMTP id d5mr18621333ybl.75.1619463032575;
        Mon, 26 Apr 2021 11:50:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:44c4:: with SMTP id r187ls8161965yba.5.gmail; Mon, 26
 Apr 2021 11:50:32 -0700 (PDT)
X-Received: by 2002:a05:6902:1144:: with SMTP id p4mr26723512ybu.510.1619463032104;
        Mon, 26 Apr 2021 11:50:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619463032; cv=none;
        d=google.com; s=arc-20160816;
        b=xCZVoEJu/WhXdx3SNsVMDtNjDJB4f1af4firOsfpOsNlZ5dYhObB80EbCbubaDTHlm
         Nai2v82D+BG3D/W17tjb753062drqFWsAm04gqiVDgskwPUKLRCDO1+/bqDQM7MrYp4X
         WK/TaAi1v9d9X+j+zwIO13Tm/HLoY6NenkIcvgkRHv/7FucBkE8KVAq3ZuSQCtoGWyjG
         meBEURxqq/fDfZM/KdLBQ9Jnk11XKd3bgyQePEHFhCIhnSJ6RMYJTtvGL6t53GjpD30i
         6fmI7dAR9+klz5PqrwXoY1M3GrO6Sv5ejF1U2vL8njHZhQVUNnyU3OYhcg9OM2aeSYy9
         HMpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5muj9qy/43NALUuersiU6RdTeNPssruKr+IK0I5h3/4=;
        b=hT/VeHgZdBW+noI4mIdyZ7cCN1fPfHv0SvQc32IQ+pCInytA1uVhEx2JLp+Yc8lUo+
         /JmrVJUETMWC5IfXPJ7ebWsWZgCeOuWR4Mn6x56t1OS+IVYSygUgOKHSNWs/G/Q51qHL
         Vzip7vszHlEnzXcFZcUNvd7ETV5aBY7aRYdjaLy6ldGug0STg7bDXmHgHjTpbdYhonu5
         OEXg35YH+cojhiVrzrGi7pPnLT/fAaXUUYpWWqbseCj7VqclfC/sv6BtK5gYremPVilS
         MyK3/UvN7nXOLTvwsZV9shI0+3wu1MtXGDeK97qHyxhcJAU7R44BRH5FWv0YhNmCwbRa
         l22w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WAxgPwen;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h188si1639397ybh.5.2021.04.26.11.50.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 11:50:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 225D36103E;
	Mon, 26 Apr 2021 18:50:29 +0000 (UTC)
Date: Mon, 26 Apr 2021 11:50:26 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v7] powerpc/irq: Inline call_do_irq() and
 call_do_softirq()
Message-ID: <YIcLcujmoK6Yet9d@archlinux-ax161>
References: <20210320122227.345427-1-mpe@ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210320122227.345427-1-mpe@ellerman.id.au>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WAxgPwen;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Mar 20, 2021 at 11:22:27PM +1100, Michael Ellerman wrote:
> From: Christophe Leroy <christophe.leroy@csgroup.eu>
> 
> call_do_irq() and call_do_softirq() are simple enough to be
> worth inlining.
> 
> Inlining them avoids an mflr/mtlr pair plus a save/reload on stack. It
> also allows GCC to keep the saved ksp_limit in an nonvolatile reg.
> 
> This is inspired from S390 arch. Several other arches do more or
> less the same. The way sparc arch does seems odd thought.
> 
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
> ---
> 
> v2: no change.
> v3: no change.
> v4:
> - comment reminding the purpose of the inline asm block.
> - added r2 as clobbered reg
> v5:
> - Limiting the change to PPC32 for now.
> - removed r2 from the clobbered regs list (on PPC32 r2 points to current all the time)
> - Removed patch 1 and merged ksp_limit handling in here.
> v6:
> - Rebase on top of merge-test (ca6e327fefb2).
> - Remove the ksp_limit stuff as it's doesn't exist anymore.
> 
> v7:
> mpe:
> - Enable for 64-bit too. This all in-kernel code calling in-kernel
>   code, and must use the kernel TOC.
> - Use named parameters for the inline asm.
> - Reformat inline asm.
> - Mark as always_inline.
> - Drop unused ret from call_do_softirq(), add r3 as clobbered.
> ---
>  arch/powerpc/include/asm/irq.h |  2 --
>  arch/powerpc/kernel/irq.c      | 41 ++++++++++++++++++++++++++++++++++
>  arch/powerpc/kernel/misc_32.S  | 25 ---------------------
>  arch/powerpc/kernel/misc_64.S  | 22 ------------------
>  4 files changed, 41 insertions(+), 49 deletions(-)
> 
> diff --git a/arch/powerpc/include/asm/irq.h b/arch/powerpc/include/asm/irq.h
> index f3f264e441a7..b2bd58830430 100644
> --- a/arch/powerpc/include/asm/irq.h
> +++ b/arch/powerpc/include/asm/irq.h
> @@ -53,8 +53,6 @@ extern void *mcheckirq_ctx[NR_CPUS];
>  extern void *hardirq_ctx[NR_CPUS];
>  extern void *softirq_ctx[NR_CPUS];
>  
> -void call_do_softirq(void *sp);
> -void call_do_irq(struct pt_regs *regs, void *sp);
>  extern void do_IRQ(struct pt_regs *regs);
>  extern void __init init_IRQ(void);
>  extern void __do_irq(struct pt_regs *regs);
> diff --git a/arch/powerpc/kernel/irq.c b/arch/powerpc/kernel/irq.c
> index 5b72abbff96c..260effc0a435 100644
> --- a/arch/powerpc/kernel/irq.c
> +++ b/arch/powerpc/kernel/irq.c
> @@ -667,6 +667,47 @@ static inline void check_stack_overflow(void)
>  	}
>  }
>  
> +static __always_inline void call_do_softirq(const void *sp)
> +{
> +	/* Temporarily switch r1 to sp, call __do_softirq() then restore r1. */
> +	asm volatile (
> +		 PPC_STLU "	%%r1, %[offset](%[sp])	;"
> +		"mr		%%r1, %[sp]		;"
> +		"bl		%[callee]		;"
> +		 PPC_LL "	%%r1, 0(%%r1)		;"
> +		 : // Outputs
> +		 : // Inputs
> +		   [sp] "b" (sp), [offset] "i" (THREAD_SIZE - STACK_FRAME_OVERHEAD),
> +		   [callee] "i" (__do_softirq)
> +		 : // Clobbers
> +		   "lr", "xer", "ctr", "memory", "cr0", "cr1", "cr5", "cr6",
> +		   "cr7", "r0", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10",
> +		   "r11", "r12"
> +	);
> +}
> +
> +static __always_inline void call_do_irq(struct pt_regs *regs, void *sp)
> +{
> +	register unsigned long r3 asm("r3") = (unsigned long)regs;
> +
> +	/* Temporarily switch r1 to sp, call __do_irq() then restore r1. */
> +	asm volatile (
> +		 PPC_STLU "	%%r1, %[offset](%[sp])	;"
> +		"mr		%%r1, %[sp]		;"
> +		"bl		%[callee]		;"
> +		 PPC_LL "	%%r1, 0(%%r1)		;"
> +		 : // Outputs
> +		   "+r" (r3)
> +		 : // Inputs
> +		   [sp] "b" (sp), [offset] "i" (THREAD_SIZE - STACK_FRAME_OVERHEAD),
> +		   [callee] "i" (__do_irq)
> +		 : // Clobbers
> +		   "lr", "xer", "ctr", "memory", "cr0", "cr1", "cr5", "cr6",
> +		   "cr7", "r0", "r4", "r5", "r6", "r7", "r8", "r9", "r10",
> +		   "r11", "r12"
> +	);
> +}
> +
>  void __do_irq(struct pt_regs *regs)
>  {
>  	unsigned int irq;
> diff --git a/arch/powerpc/kernel/misc_32.S b/arch/powerpc/kernel/misc_32.S
> index acc410043b96..6a076bef2932 100644
> --- a/arch/powerpc/kernel/misc_32.S
> +++ b/arch/powerpc/kernel/misc_32.S
> @@ -27,31 +27,6 @@
>  
>  	.text
>  
> -_GLOBAL(call_do_softirq)
> -	mflr	r0
> -	stw	r0,4(r1)
> -	stwu	r1,THREAD_SIZE-STACK_FRAME_OVERHEAD(r3)
> -	mr	r1,r3
> -	bl	__do_softirq
> -	lwz	r1,0(r1)
> -	lwz	r0,4(r1)
> -	mtlr	r0
> -	blr
> -
> -/*
> - * void call_do_irq(struct pt_regs *regs, void *sp);
> - */
> -_GLOBAL(call_do_irq)
> -	mflr	r0
> -	stw	r0,4(r1)
> -	stwu	r1,THREAD_SIZE-STACK_FRAME_OVERHEAD(r4)
> -	mr	r1,r4
> -	bl	__do_irq
> -	lwz	r1,0(r1)
> -	lwz	r0,4(r1)
> -	mtlr	r0
> -	blr
> -
>  /*
>   * This returns the high 64 bits of the product of two 64-bit numbers.
>   */
> diff --git a/arch/powerpc/kernel/misc_64.S b/arch/powerpc/kernel/misc_64.S
> index 070465825c21..4b761a18a74d 100644
> --- a/arch/powerpc/kernel/misc_64.S
> +++ b/arch/powerpc/kernel/misc_64.S
> @@ -27,28 +27,6 @@
>  
>  	.text
>  
> -_GLOBAL(call_do_softirq)
> -	mflr	r0
> -	std	r0,16(r1)
> -	stdu	r1,THREAD_SIZE-STACK_FRAME_OVERHEAD(r3)
> -	mr	r1,r3
> -	bl	__do_softirq
> -	ld	r1,0(r1)
> -	ld	r0,16(r1)
> -	mtlr	r0
> -	blr
> -
> -_GLOBAL(call_do_irq)
> -	mflr	r0
> -	std	r0,16(r1)
> -	stdu	r1,THREAD_SIZE-STACK_FRAME_OVERHEAD(r4)
> -	mr	r1,r4
> -	bl	__do_irq
> -	ld	r1,0(r1)
> -	ld	r0,16(r1)
> -	mtlr	r0
> -	blr
> -
>  _GLOBAL(__bswapdi2)
>  EXPORT_SYMBOL(__bswapdi2)
>  	srdi	r8,r3,32
> -- 
> 2.25.1
> 

This change caused our ppc44x_defconfig builds to hang when powering
down in QEMU:

https://github.com/ClangBuiltLinux/continuous-integration2/runs/2304364629?check_suite_focus=true#logs

This is probably something with clang given that GCC 10.3.0 works fine
but due to the nature of the change, I have no idea how to tell what is
going wrong. I tried to do some rudimentary debugging with gdb but that
did not really get me anywhere.

The kernel was built with just 'CC=clang' and it is reproducible with
all versions of clang that the kernel supports.

The QEMU invocation is visible at the link above, it is done with our
boot-qemu.sh in this repo, which also houses the rootfs:

https://github.com/ClangBuiltLinux/boot-utils

Happy to provide any other information or debug/test as directed!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIcLcujmoK6Yet9d%40archlinux-ax161.
