Return-Path: <clang-built-linux+bncBCWYVWVBVIEBB74A4XZAKGQECW2KHJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 26613173CEB
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 17:32:00 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id y24sf1054450ljc.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 08:32:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582907519; cv=pass;
        d=google.com; s=arc-20160816;
        b=IgsA5n1KRvHKlto5JnBrjJUCTIeYFBfqYCu9QQPHt9cxZ9Ubf0DeycU8sEDf1/WmF9
         Z2O9NGAlCnWsEqUAtuLj8uQXpmah28HbkiJqi42dWipyOATpqo8Le/N9T/kAE7M6m5jk
         y0u7PIkHwCC0bsLZbvu/AUJXVrUGFZct6HUVSS+TKWr+rxxfuswt8oK2uY6QjCubrlTK
         oP0f5qhCrNPOwNgijjUUESEQqFbzdgAA9ZaekDGE74CtdUHzIjltUW/g0Hmxiwby2vbt
         813/vZQLiJYT91CdCSdRDSL+zHl5R/MynLPN1EyE9+CF9uQyW3Y6OceboatMhMsQOeDc
         sRfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=T9+4qa89hO+eZiZiBnmTUl3FyGN21UcFILrg1dxXAr8=;
        b=g7P0n9slZxQcE9GnUseCmjtKa6fPsdlwuvahJfDuyN3i6atKAOjCjUg/tj+r73Kifr
         +G4k7/v0bKe22cBgYOZhKsxgTwTBRarncg0Ea/3m5RqXEYkX5ZAQNgxOXrGYs0QapdGK
         AkS5UZUOCnKmSWqu7bkTUODQ8R7lQStpoPqB6t3F80UgJLwydmV+O9Vn0Yn37jKecF9y
         qOkk5nK2Z20qnDspFxo8d3r7IcnRiaqBXJfcDIUIRtcO42F4LFzbrvJTscaIDiSYHGzB
         UBpAkE8XQ7g6IztsfUAg53DKHaAO0red4cD68tsO4/oazbbnHSnee63AF9f+sp7hZA3G
         gQQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T9+4qa89hO+eZiZiBnmTUl3FyGN21UcFILrg1dxXAr8=;
        b=HLquJnrKJWdqC6VisxVzrzW0SGMy3rMWw9Jn2AeNHertu8w9JOtR1StNLDIa7dylEX
         DwrzRSbKUva/Vo+NiCQJDXSHUtkKlb+cAXiY7p2yOlzlW4w+DIWJTteofW26QJk5+wx7
         2tnh8HIFN5pAZYSjvT2PEJrTJ6fGNomdYflbRjKly2S7M1me74QSapYBkNAlK1PB1tTw
         EkkuGiVSwYfkwNyBM2Vh1c/pXNv2JHgTkrhN3r2Lx4PNeTHoFP1N+6JuSBmTS8ReEsA4
         +znjfUHILFHJBFJdr/qzY8LtTAwKV2kT5usZo/fl5H1a7VdBO4nx3xVImYQ1q7u44g6w
         Qdwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T9+4qa89hO+eZiZiBnmTUl3FyGN21UcFILrg1dxXAr8=;
        b=L/IOPoo41+Lm4Z5tmMIaUQh3M+16giw4U7xjvddyymxWHaUzguvIlgXdTYfdYYx+hS
         pbVkUtMPYbgO+/y9gKCiR5VtLsiF/mkIGaEUVgiyQS0nMHUd7vpVMCXj0/3IZKBux9Ke
         E/hL/37eHmCs68BVz0zzvEfsOAIIdVsQGaUHX0FSu1GhstghGI47gHlZj/ABc8wW8wov
         FC5FhCIdufLPmnwyx4U/n9XhbMwGxNQ9kOtgx7BtH9O04YnT/d11TE9W0Jnn5rLdNw/+
         EgGa4Mw4eU0IvXb7m2ewXXPodOleWCDYf7yR0kskfNk6AbAu7ZlcsKh7f4AptKWWcsKo
         X13Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3FOmLjXlgf8dGr10S3GkBg6aVS6S1KzSWCLIkHYXRXGJpc/ETj
	t0jbaMVz4TOxd38Fg13VOh8=
X-Google-Smtp-Source: ADFU+vuwN5GzwjdvqQDn2BeKJ0HYKPcS0+XYpW1PDVFTHd7+dJTjplnjUVqQ7Vg6kMSb8frKfsVJKw==
X-Received: by 2002:ac2:5dd4:: with SMTP id x20mr3058023lfq.139.1582907519335;
        Fri, 28 Feb 2020 08:31:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4987:: with SMTP id f7ls436469lfl.8.gmail; Fri, 28 Feb
 2020 08:31:58 -0800 (PST)
X-Received: by 2002:ac2:54a3:: with SMTP id w3mr2934122lfk.61.1582907518375;
        Fri, 28 Feb 2020 08:31:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582907518; cv=none;
        d=google.com; s=arc-20160816;
        b=StJS2DhybJGtuLxFF2y9tJwWTAxhXIf7tCYD0MEOBcrLozWRmeyhzZ3ihrAQ9j09pT
         uyQl/FcQeCdaD0WsoX+Emvo5IeKFcCn8Lt8cbYJ7vKMvu1NqZYexuZy5S2KpdGnvCJ/y
         sHuZpMP+KkSGvTbT62woIS42crZT6YjYQo06wwQ7vW78U2MDFGxzoJR/RrOSpU20SR4A
         aiSmUq9EDTNq0XRQR9QBTsO+U78Kyw+0Ay6zRlwJIFgPgeyumvOLAxzl/RuL66Y4pe3r
         C0QLwhxxWDsITHm1SSoHnzTlWNrq43J4kd5py82GsTeB6fzaVp8N1hTOVA1fO8AmyQj1
         ZAGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=aAZZQ6UowwQJ1+12FV4ytz+NEhK6Q6Eog1BnZSyhejU=;
        b=UGtyEkSf07AHUU85UH1i3bld0Z7PMQkdcDa27GgvDy/tcEe+tKVLo6EI/FbcsmR/wY
         /YSSfcBDddgXhPanODJ258Qd1BEkXKkJCYIxXfoDPwBkaLFcbCHhrGJP66/tiC37kHaD
         HJCftIe5/QgqJ2oX9uxvjo4fqYO7fWge+FLmMhFISKzUtqsyay8sExDqB3DlLIPdY0bz
         yRReN0F4ORSJPoamr0i0epU9t2Y+2YjZLn1EdxQVZ25C+mS4nD9Vge828MZ3EGNjL3FD
         7xFkIj5HizmNiXrvMJn6NSjzH1kSpgpajWzJpQjJn6kJImygvKG3dHPUc8tEUYGWqdiJ
         pwCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y126si107830lfa.3.2020.02.28.08.31.58
        for <clang-built-linux@googlegroups.com>;
        Fri, 28 Feb 2020 08:31:58 -0800 (PST)
Received-SPF: pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC96C31B;
	Fri, 28 Feb 2020 08:31:56 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1F673F73B;
	Fri, 28 Feb 2020 08:31:53 -0800 (PST)
Subject: Re: [PATCH v9 10/12] arm64: implement Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
 <20200225173933.74818-11-samitolvanen@google.com>
From: James Morse <james.morse@arm.com>
Message-ID: <56b82a54-044a-75ec-64e5-6ba25b19571f@arm.com>
Date: Fri, 28 Feb 2020 16:31:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225173933.74818-11-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Original-Sender: james.morse@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.morse@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.morse@arm.com
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

Hi Sami,

On 25/02/2020 17:39, Sami Tolvanen wrote:
> This change implements shadow stack switching, initial SCS set-up,
> and interrupt shadow stacks for arm64.

> diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
> new file mode 100644
> index 000000000000..c50d2b0c6c5f
> --- /dev/null
> +++ b/arch/arm64/include/asm/scs.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_SCS_H
> +#define _ASM_SCS_H
> +
> +#ifndef __ASSEMBLY__

As the whole file is guarded by this, why do you need to include it in assembly files at all?


> +
> +#include <linux/scs.h>
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +
> +extern void scs_init_irq(void);
> +
> +static __always_inline void scs_save(struct task_struct *tsk)
> +{
> +	void *s;
> +
> +	asm volatile("mov %0, x18" : "=r" (s));
> +	task_set_scs(tsk, s);
> +}
> +
> +static inline void scs_overflow_check(struct task_struct *tsk)
> +{
> +	if (unlikely(scs_corrupted(tsk)))
> +		panic("corrupted shadow stack detected inside scheduler\n");

Could this ever catch anything with CONFIG_SHADOW_CALL_STACK_VMAP?
Wouldn't we have hit the vmalloc guard page at the point of overflow?


> +}
> +
> +#else /* CONFIG_SHADOW_CALL_STACK */
> +
> +static inline void scs_init_irq(void) {}
> +static inline void scs_save(struct task_struct *tsk) {}
> +static inline void scs_overflow_check(struct task_struct *tsk) {}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK */
> +
> +#endif /* __ASSEMBLY __ */
> +
> +#endif /* _ASM_SCS_H */



> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 9461d812ae27..4b18c3bbdea5 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S

If I corrupt x18 so that we take an exception (mov x18, xzr), we take that exception
whenever we run C code. The CPU 'vanishes' and I get a very upset scheduler shortly after.

Stack misalignment has the same problem, but the overflow test (eventually) catches that,
then calls panic() using the overflow stack. (See the kernel_ventry macro and __bad_stack
in entry.S)

It would be nice to have a per-cpu stack that we switch to when on the overflow stack.
(this would catch the scs overflow hitting the guard page too, as we should eat through
the regular stack until we overflowed it!)


> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index d4ed9a19d8fe..f2cb344f998c 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -358,6 +359,9 @@ void cpu_die(void)
>  {
>  	unsigned int cpu = smp_processor_id();
>
> +	/* Save the shadow stack pointer before exiting the idle task */

I can't work out why this needs to be before before idle_task_exit()...
It needs to run before init_idle(), which calls scs_task_reset(), but all that is on the
cpu_up() path. (if it is to pair those up, any reason core code can't do both?)


> +	scs_save(current);
> +
>  	idle_task_exit();
>
>  	local_daif_mask();
>


Reviewed-by: James Morse <james.morse@arm.com>


Thanks!

James

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/56b82a54-044a-75ec-64e5-6ba25b19571f%40arm.com.
