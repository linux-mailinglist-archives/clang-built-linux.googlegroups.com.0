Return-Path: <clang-built-linux+bncBDV37XP3XYDRBVMEXPXAKGQEMXMJCTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D496FE110
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 16:20:54 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id h7sf7889680wrb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Nov 2019 07:20:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573831254; cv=pass;
        d=google.com; s=arc-20160816;
        b=OHaZK1NnC9ArAAlUI2K2/X1ekf1KeQGH4FA0XN6akaIQGW6Vzwi6JgDfSXUCEJ2bJ7
         flm406k5vquwWl1dLHgJozKEoOYW2h2vr43FAUXZa/H5gDdvypY/JHRWu/pg1kXJrAYn
         UDbUhY6twYuzJwPTUfuuDBV8fgfmo+wS7HjCTq0g1DY78X4DisVPC4r9swPl+rK6hash
         CbfBQiQC3yU5I/MehYW+TsoO0PdcXC/9XjBq9oeaj5tlH1C9K9xRiSChdkG/S9rbgHR4
         Ag834Q5BlTJMd7toIj2O8F7EYPyDPpKG1WgoyUckyi4Jz94SxAT0Kr0+QOaN+MKKhENJ
         GNrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=PHjq+v05tWBcu9gT3Ox476IBHKkm+Tkogbvkd8ubbkU=;
        b=LyPmtvysoBDmiqL1PxQSdAE6/nwh/kXxwHFTWoqzp171x0jV23N2JyBKWkYr7qub4O
         gLli1RR9kFGi+/mqDYb/4GJCA/5zvIylPFHpRHTwIESIfNmPk12hmKElc0qytZFwbDdV
         PlcuWuZ1SwLOu+wccTacjMRzpD6yi4H2cD8Ton9lZueCf3DJg/81Y+SsAaQJpDdr6NeX
         qNCW7/DczV8bZVJpeOHtlyrxxY3tg16RCUDsh5hchaYVqJsobMBFeo25t5D2jgKSblp1
         XFEVS8R2eGjvgphgYBfjFA+4jmiF2r4aEKKibcmrN38RjD9g2cdKAbnxwacHMtK7R0MO
         ZqFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PHjq+v05tWBcu9gT3Ox476IBHKkm+Tkogbvkd8ubbkU=;
        b=ZATOKiSSM0v2fOpKXtUHX0iAEpCOJa3gR0Na88vLr28EZWVQ9m/TS/GUCw4T4jTFWE
         i4VJnswl/skS3fNtSMNMFTXIpCh5pVXtTFC5sGVdMt2udxAbwiM6Udzu+D3KftxDrazx
         LEvVueUNvKi/zsyCJATq/mVoDzNIM90NANGfI21qS/uTrlJDE0uHaQEmEuJP3kE4F6DJ
         JxztSENQwktigL3/6iWMepl9QVnwmhQw1CSrp2Hgs7mHaayQ/0VTVNFAkAFo3nWnJRO9
         8BuQe+lUtwPYTdXvDXGxQdn7XEdeELDaMdIp2Uy2GPUiApF0XdRr3HR8CuVcXtKacW1u
         +1kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PHjq+v05tWBcu9gT3Ox476IBHKkm+Tkogbvkd8ubbkU=;
        b=tarEr2TRSiyxDQv2TOcGweH9FtoI9ZKUXICCcccF5pOUtTcisbfsEKb74xRbE3NDI4
         VTpLHaDjhJkyqkktelM80xt5Z447z7TSMUsFUSugDYxLjgoVYfgimEIVc4d/P8jgYBwV
         viKVTblhFszMXAVUIYlix3x8IgEpmnWi+t2VaOT1x2LMZB2y/UP0rpUGNwAxjPfdLqhi
         4y9dLlVnLk2Gc+Xle68tf3icuuRdLN3dqs/y2TkG1Kt/gZ461sxEapKZcsOlPbFYD/LS
         7i0Lf/FqTkm43x+XHpOU+Tco4h5ZpTlDBIdnbWOuqmwQWe3sOjKwWI9pB7yF2DWVSP/i
         csPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVtcvipS62LSkXjOvZWMjwLG5+7FjofTBjq/GuBVhVeO5UiyXq
	G+MbBnXEY4tqAYvRsCrAl6M=
X-Google-Smtp-Source: APXvYqxLcSoBdiatQXE1IHfr8T9BLKPIbYZbx5q1eFHSvH1asECWtXyHKNB/8A0ManQMsPDx4ICoQQ==
X-Received: by 2002:a1c:6588:: with SMTP id z130mr13906109wmb.87.1573831253933;
        Fri, 15 Nov 2019 07:20:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:44d0:: with SMTP id z16ls14488001wrr.14.gmail; Fri, 15
 Nov 2019 07:20:53 -0800 (PST)
X-Received: by 2002:adf:e68d:: with SMTP id r13mr16846456wrm.199.1573831253202;
        Fri, 15 Nov 2019 07:20:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573831253; cv=none;
        d=google.com; s=arc-20160816;
        b=QZKLHd8Eo8xGJgZEfp8qn7ux30IYixfDsGIuYHUAWsMnkxXxIUiiHlaIrrZnZcpzQQ
         SjWON7wpru9CeSb0ez7XU7O3hqs7UvzPULk3g9ue8B52vJkdfFSOLRr7AQJusbylhl+M
         prXlCNWpXlqCroWKNRJ4N+VcdSrQQ0kdqc3L7zpOhSNYT9PWCk4+r7sJaCRgtXtNbKIJ
         fGe+aD68QjYqR4+6qiTAFYbtL44Lla5sao+94MpdoRR+JYGuG50FF3BICoPiT6a3DEr9
         LQTNdhZdHJkrztwqhtb6DC2p/O3jbz9yJj6pZtKnA7CO8dWPS4SqwLow+rk2gvHC+ewx
         RQzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=p2anmeM5euq5OLSw40v/gS7LVxy5Egs5GeXWLSnqrws=;
        b=QT4LkpFCfMInGOI7D5xQJtWC9qSSwS+JBJ20dNbeCy3JR/GmjL3Z1TmdI5wn6s54SC
         sJZekSg+imnD5wUR7c7Ilunb7/SGyVieITjqkRr9aS5Li6kEK444AZM55WybvhSReLBk
         E810Lj7UPNtrQzE9x7Dogg5nBh3kVJZ69z3HLyTOwQdZaGDXy60M9Ip6RQnqqxmUTaG/
         YjrFkTVoF4FCirGDtMOcUQ3SErKppeuVsJMrfQviiDmeLypK6Az8K/ijMWxZRJ8m2n3p
         l6+BA8PTLFYJexyaqzBFWRn/TB1DtM1DqrvZWqUOXk8qV2eJ5VbkgWIxi95uLutJmN1I
         BqBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q25si150239wmj.2.2019.11.15.07.20.53
        for <clang-built-linux@googlegroups.com>;
        Fri, 15 Nov 2019 07:20:53 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67E7130E;
	Fri, 15 Nov 2019 07:20:52 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18AF43F534;
	Fri, 15 Nov 2019 07:20:49 -0800 (PST)
Date: Fri, 15 Nov 2019 15:20:48 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 14/14] arm64: implement Shadow Call Stack
Message-ID: <20191115152047.GI41572@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191105235608.107702-15-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Tue, Nov 05, 2019 at 03:56:08PM -0800, Sami Tolvanen wrote:
> This change implements shadow stack switching, initial SCS set-up,
> and interrupt shadow stacks for arm64.

Each CPU also has an overflow stack, and two SDEI stacks, which should
presumably be given their own SCS. SDEI is effectively a software-NMI,
so it should almost certainly have the same treatement as IRQ.

> +static __always_inline void scs_save(struct task_struct *tsk)
> +{
> +	void *s;
> +
> +	asm volatile("mov %0, x18" : "=r" (s));
> +	task_set_scs(tsk, s);
> +}

An alternative would be to follow <asm/stack_pointer.h>, and have:

register unsigned long *current_scs_pointer asm ("x18");

static __always_inline void scs_save(struct task_struct *tsk)
{
	task_set_scs(tsk, current_scs_pointer);
}

... which would avoid the need for a temporary register where this is
used.

However, given we only use this in cpu_die(), having this as-is should
be fine. Maybe the asm volatile is preferable if we use this elsewhere,
so that we know we have a consistent snapshot that the compiler can't
reload, etc.

[...]

> @@ -409,6 +428,10 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  	 */
>  	.macro	irq_stack_exit
>  	mov	sp, x19
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	/* x20 is also preserved */
> +	mov	x18, x20
> +#endif
>  	.endm

Can we please fold this comment into the one above, and have:

	/*
	 * The callee-saved regs (x19-x29) should be preserved between
	 * irq_stack_entry and irq_stack_exit.
	 */
	.macro irq_stack_exit
	mov     sp, x19
#ifdef CONFIG_SHADOW_CALL_STACK
	mov     x18, x20
#endif
	.endm

Thanks,
Mark.
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191115152047.GI41572%40lakrids.cambridge.arm.com.
