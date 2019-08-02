Return-Path: <clang-built-linux+bncBCZOPTGF6YHRBCMPSHVAKGQEDUQH2NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2F87FC15
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 16:24:10 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id m26sf16245563ljc.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 07:24:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564755850; cv=pass;
        d=google.com; s=arc-20160816;
        b=s8qTa/37xanvQMAKKXp7H7dY6j7z0c6xlJ8Q5QALyQT5wOb4WdbPD1tTqJLSD1mMR7
         b6yHsGK/VfkKohtnB/3bTuUlQlrO9E4TC9Les0G2OZjI5DujX6piuzgxdynyCFhAkVZK
         COcRY1vrRp1rWGaAAwV17KVxbMp5ufVn8P42ki6l3BNsUfy2bUJO0gv3kZYtiwSc65zr
         Mat2NIxdj13b13u/kWPPvlu2dlaVGL7FKP8IKn0MdKa9ZIgOsBHqomws/pWxudAP+Hg6
         mF2kkyRiDQcF0L23K4q32Ib4ZyGPVIapbzRQyorEWnEkkhedY86quUKNv0LuobSidfBt
         Y0jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=XNuRhHunho/EXvQ5ckN7yu4zyE6nHBJ3be2EqFrGZ6Y=;
        b=MJ+M/BMA5ESzbNiIP7LsV/l6c6ZceqJjT0Kjhjk0g3Bsj1kFg7LbGRLIVBtNnhN3Ay
         t9ufFAPmYl4ZMQpsdufBVhQI4OGI8XuGjSeMJg85p2F5C6kfvyiyyi/QtwKnF0Kc0TGh
         18Vg3aaSaDy6IxM14sy9XQ2E0cE0jBxncKalbG9MbrNjVmh7iXRTcWUktwXApdr+8rIO
         4yu6JehWraeq7azISn0GfVsPVm1ZIjDLF5gHdtovK8EOauga7VfoO42Qu2pvvVDf5cSD
         tBo7Sdi/9MvbHPPraSM3hIcBVajMcBPyyFJB9iTIDiO7NOefOsvTt8jHKsyVu9vU1SOr
         IJ1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XNuRhHunho/EXvQ5ckN7yu4zyE6nHBJ3be2EqFrGZ6Y=;
        b=nEYHAbPb8z/YsMsGnOv7jFK3uSQ6+gusB0rg6z32iDziMweAxgUJYZxwpkNEXCOrJ+
         8xa5x4L+P8bE/i+I9BydmYyf2m3jS7JCPZ2/VkGM1ZT9Wpuloruzk5Bv3LQQ0C7fOHLz
         Dvlet2nJQjl0cdvy6zm4yKbgkTnkg40rvcY2a8b8xdJz61EXfM94/yH38Su+NYu0mc1R
         i+8GeKFLRlOnYdLnwaKnks+uSo9vQRmvi1nuXcw2IwIAqLGmZdiglsak/1u7PUzb+xt1
         xHOgqxKB1kw/rz/PIfZyH4P7hY2Ok/7rHnI9ZjgkRhdZsQRsAMcTT+mrBTs6uOqEof4N
         3vjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XNuRhHunho/EXvQ5ckN7yu4zyE6nHBJ3be2EqFrGZ6Y=;
        b=GuWcTDKRA7jbiMoBQTCe0G5yX8M+/1Pr25wQperNjsfKT/7SylEj+gMEgu5Zcq2BPH
         mFg8W+rpWud7qiTxUFSxxjjXEd+yVz/uJP2JiJw0mbrvsMaKRONBQO/zGfTGE5kkBslT
         NEusGaXMKNmzLj2hatxmqxY3J/svMtqPRaxt2CA3N/TINabQV6P2rwbIMwNlCdnDJRDj
         2/Voc5mPWQ++349SPSRohHrOtZCvMI5Yeaj1ayOb3ctim4NV7ZS/URbDWyd/VLaOfCmC
         2zyqR/SF5/7TNAdD8RW5yyUUczYr9yX9/sPNXbc96jHpir9ycBqGn+1DKP7yPkFYKreM
         B/RA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMIWC5cT8jJu7LucS+jruv1VZ/+ymcjvbC9tjgpKsl5OfwgqDG
	gd/ob3P7JOAJNrTThVZrASE=
X-Google-Smtp-Source: APXvYqxE4HsobTvmTep2Vc3EQOwJGkO/F1Aoel3zEAN416fiz5ECYbgfgMkptbtxAsR7OBzH4ahf0Q==
X-Received: by 2002:a2e:2411:: with SMTP id k17mr33550724ljk.136.1564755850076;
        Fri, 02 Aug 2019 07:24:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d0c:: with SMTP id t12ls8770653lji.12.gmail; Fri, 02
 Aug 2019 07:24:09 -0700 (PDT)
X-Received: by 2002:a2e:85d7:: with SMTP id h23mr72618084ljj.53.1564755849490;
        Fri, 02 Aug 2019 07:24:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564755849; cv=none;
        d=google.com; s=arc-20160816;
        b=NRDCevqGzuxgLD0QKb9RQq8McjjpFy5pKZ04BCk1wZ/FiXiOpRrkMhvE8iYVnyNjrA
         NZWe7j0V8pv5N0jXVlmrrvk/7fmw0Z0UFJIaZHL3TQim4sJeyZSzXSTBQQ63Lh2sLhn7
         9Tv1Hm119WB1ocFPvH/9H/ecyIs5rojkWvtjx3+YcPgn5tr+lGwIGzMUv1M3FfxKk/2E
         /OmvW4j0ANb1HHdKdxXmNgjla3mfwUqS/29uU3Mnj1elaKvA/sgnh5/SehcS07o4I3NE
         hZSuQSfW5e94xDkYT0TbdmP0zqtAXRjmjRyxUsyOvdpBa4ASzP9sCFO4egwmYanDazHE
         muHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=CIgwHv9kLClZ7tV9T/kY7TNVyY8ScPwBTHt1K0hplOc=;
        b=jtrQrmjRtr4fsweNiVMDaXu/FSP7d5GWvtv78Si7JCdLjSeKyA9MBa/kcEr7yxHa75
         xFhS2Pifjqis7r7mT6kApYSVk7e3KyOepok7E/PKO5H8HfVuqfOons8swWdPKiK4TWEo
         RETAfzgGc2J/+3Usqc6npThk5mVD1L/9yDbj5XzhLNQVgi2l6GjTkc7/vNfbOYpKVlHY
         x1xSPmwtWzc7hpaK8ouf5NoYgyeXJqj5Q3pXewuJRJYmmAvEfxBaI6YAAJWKkB7WPPcp
         rdkg5S0mBEkikuWXaHjAr1C7qImcPuYo8ACXUn42Ip05hAjLZm9piQJf3k2KTKS0ei+z
         hj4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s14si4941394ljg.4.2019.08.02.07.24.07
        for <clang-built-linux@googlegroups.com>;
        Fri, 02 Aug 2019 07:24:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B06481570;
	Fri,  2 Aug 2019 07:24:06 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE5443F575;
	Fri,  2 Aug 2019 07:24:05 -0700 (PDT)
Subject: Re: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>, linux@armlinux.org.uk
Cc: clang-built-linux@googlegroups.com, Tri Vo <trong@google.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190801231046.105022-1-nhuck@google.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <01222982-4206-9925-0482-639a79384451@arm.com>
Date: Fri, 2 Aug 2019 15:24:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801231046.105022-1-nhuck@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: robin.murphy@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=robin.murphy@arm.com
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

On 02/08/2019 00:10, Nathan Huckleberry wrote:
> The stackframe setup when compiled with clang is different.
> Since the stack unwinder expects the gcc stackframe setup it
> fails to print backtraces. This patch adds support for the
> clang stackframe setup.
> 
> Cc: clang-built-linux@googlegroups.com
> Suggested-by: Tri Vo <trong@google.com>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>   arch/arm/Kconfig.debug   |   4 +-
>   arch/arm/Makefile        |   2 +-
>   arch/arm/lib/backtrace.S | 134 ++++++++++++++++++++++++++++++++++++---
>   3 files changed, 128 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 85710e078afb..92fca7463e21 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -56,7 +56,7 @@ choice
>   
>   config UNWINDER_FRAME_POINTER
>   	bool "Frame pointer unwinder"
> -	depends on !THUMB2_KERNEL && !CC_IS_CLANG
> +	depends on !THUMB2_KERNEL
>   	select ARCH_WANT_FRAME_POINTERS
>   	select FRAME_POINTER
>   	help
> @@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
>   	  When this option is set, the selected DEBUG_LL output method
>   	  will be re-used for normal decompressor output on multiplatform
>   	  kernels.
> -	
> +
>   
>   config UNCOMPRESS_INCLUDE
>   	string
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..a593d9c4e18a 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -36,7 +36,7 @@ KBUILD_CFLAGS	+= $(call cc-option,-mno-unaligned-access)
>   endif
>   
>   ifeq ($(CONFIG_FRAME_POINTER),y)
> -KBUILD_CFLAGS	+=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> +KBUILD_CFLAGS	+=-fno-omit-frame-pointer $(call cc-option,-mapcs,) $(call cc-option,-mno-sched-prolog,)
>   endif
>   
>   ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
> index 1d5210eb4776..fd64eec9f6ae 100644
> --- a/arch/arm/lib/backtrace.S
> +++ b/arch/arm/lib/backtrace.S
> @@ -14,10 +14,7 @@
>   @ fp is 0 or stack frame
>   
>   #define frame	r4
> -#define sv_fp	r5
> -#define sv_pc	r6
>   #define mask	r7
> -#define offset	r8
>   
>   ENTRY(c_backtrace)
>   
> @@ -25,7 +22,8 @@ ENTRY(c_backtrace)
>   		ret	lr
>   ENDPROC(c_backtrace)
>   #else
> -		stmfd	sp!, {r4 - r8, lr}	@ Save an extra register so we have a location...
> +		stmfd   sp!, {r4 - r8, fp, lr}	@ Save an extra register

Note that the Procedure Call Standard for EABI requires that SP be 
8-byte-aligned at a public interface. Pushing an odd number of registers 
here looks like it will make the subsequent calls to dump_backtrace_* 
and printk violate that condition.

Robin.

> +						@ so we have a location..
>   		movs	frame, r0		@ if frame pointer is zero
>   		beq	no_frame		@ we have no stack frames
>   
> @@ -35,11 +33,119 @@ ENDPROC(c_backtrace)
>    THUMB(		orreq	mask, #0x03		)
>   		movne	mask, #0		@ mask for 32-bit
>   
> -1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
> -		ldr	r0, [sp], #4		@ by stmfd for this CPU
> -		adr	r1, 1b
> -		sub	offset, r0, r1
>   
> +#if defined(CONFIG_CC_IS_CLANG)
> +/*
> + * Clang does not store pc or sp in function prologues
> + * 		so we don't know exactly where the function
> + * 		starts.
> + * We can treat the current frame's lr as the saved pc and the
> + * 		preceding frame's lr as the lr, but we can't
> + * 		trace the most recent call.
> + * Inserting a false stack frame allows us to reference the
> + * 		function called last in the stacktrace.
> + * If the call instruction was a bl we can look at the callers
> + * 		branch instruction to calculate the saved pc.
> + * We can recover the pc in most cases, but in cases such as
> + * 		calling function pointers we cannot. In this
> + * 		case, default to using the lr. This will be
> + * 		some address in the function, but will not
> + * 		be the function start.
> + * Unfortunately due to the stack frame layout we can't dump
> + *              r0 - r3, but these are less frequently saved.
> + *
> + * Stack frame layout:
> + *             <larger addresses>
> + *             saved lr
> + *    frame => saved fp
> + *             optionally saved caller registers (r4 - r10)
> + *             optionally saved arguments (r0 - r3)
> + *             <top of stack frame>
> + *             <smaller addressses>
> + *
> + * Functions start with the following code sequence:
> + * corrected pc =>  stmfd sp!, {..., fp, lr}
> + *		    add fp, sp, #x
> + *		    stmfd sp!, {r0 - r3} (optional)
> + */
> +#define sv_fp	r5
> +#define sv_pc	r6
> +#define sv_lr   r8
> +		add     frame, sp, #20          @ switch to false frame
> +for_each_frame:	tst	frame, mask		@ Check for address exceptions
> +		bne	no_frame
> +
> +1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
> +1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
> +
> +		teq     sv_fp, #0               @ make sure next frame exists
> +		beq     no_frame
> +
> +1003:		ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> +
> +		//try to find function start
> +		ldr     r0, [sv_lr, #-4]        @ get call instruction
> +		ldr     r3, .Ldsi+8
> +		and     r2, r3, r0              @ is this a bl call
> +		teq     r2, r3
> +		bne     finished_setup          @ give up if it's not
> +		and     r0, #0xffffff           @ get call offset 24-bit int
> +		lsl     r0, r0, #8              @ sign extend offset
> +		asr     r0, r0, #8
> +		ldr     sv_pc, [sv_fp, #4]      @ get lr address
> +		add     sv_pc, sv_pc, #-4	@ get call instruction address
> +		add     sv_pc, sv_pc, #8        @ take care of prefetch
> +		add     sv_pc, sv_pc, r0, lsl #2 @ find function start
> +		b       finished_setup
> +
> +finished_setup:
> +
> +		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
> +
> +1004:		mov     r0, sv_pc
> +
> +		mov     r1, sv_lr
> +		mov	r2, frame
> +		bic	r1, r1, mask		@ mask PC/LR for the mode
> +		bl	dump_backtrace_entry
> +
> +1005:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
> +		ldr	r3, .Ldsi		@ instruction exists,
> +		teq	r3, r1, lsr #11
> +		ldr     r0, [frame]             @ locals are stored in
> +						@ the preceding frame
> +		subeq	r0, r0, #4
> +		bleq	dump_backtrace_stm	@ dump saved registers
> +
> +		teq	sv_fp, #0		@ zero saved fp means
> +		beq	no_frame		@ no further frames
> +
> +		cmp	sv_fp, frame		@ next frame must be
> +		mov	frame, sv_fp		@ above the current frame
> +		bhi	for_each_frame
> +
> +1006:		adr	r0, .Lbad
> +		mov	r1, frame
> +		bl	printk
> +no_frame:	ldmfd	sp!, {r4 - r8, fp, pc}
> +ENDPROC(c_backtrace)
> +		.pushsection __ex_table,"a"
> +		.align	3
> +		.long	1001b, 1006b
> +		.long	1002b, 1006b
> +		.long	1003b, 1006b
> +		.long	1004b, 1006b
> +		.popsection
> +
> +.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
> +		.align
> +.Ldsi:		.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
> +		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
> +		.word   0x0b000000              @ bl if these bits are set
> +
> +ENDPROC(c_backtrace)
> +
> +#else
>   /*
>    * Stack frame layout:
>    *             optionally saved caller registers (r4 - r10)
> @@ -55,6 +161,15 @@ ENDPROC(c_backtrace)
>    *                  stmfd sp!, {r0 - r3} (optional)
>    * corrected pc =>  stmfd sp!, {..., fp, ip, lr, pc}
>    */
> +#define sv_fp	r5
> +#define sv_pc	r6
> +#define offset	r8
> +
> +1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
> +		ldr	r0, [sp], #4		@ by stmfd for this CPU
> +		adr	r1, 1b
> +		sub	offset, r0, r1
> +
>   for_each_frame:	tst	frame, mask		@ Check for address exceptions
>   		bne	no_frame
>   
> @@ -98,7 +213,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
>   1006:		adr	r0, .Lbad
>   		mov	r1, frame
>   		bl	printk
> -no_frame:	ldmfd	sp!, {r4 - r8, pc}
> +no_frame:	ldmfd	sp!, {r4 - r8, fp, pc}
>   ENDPROC(c_backtrace)
>   		
>   		.pushsection __ex_table,"a"
> @@ -115,3 +230,4 @@ ENDPROC(c_backtrace)
>   		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
>   
>   #endif
> +#endif
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/01222982-4206-9925-0482-639a79384451%40arm.com.
