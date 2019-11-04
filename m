Return-Path: <clang-built-linux+bncBDV37XP3XYDRBUFBQDXAKGQECJOKABI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3659BEDE02
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 12:51:45 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id z9sf10312457wrq.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 03:51:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572868305; cv=pass;
        d=google.com; s=arc-20160816;
        b=EI79YAJqRyh1oGEHZxNxGv0sJ/moAvwpGoe9YWYEucxDi/6A+OuJHqEIi7ea7Kq7lF
         sFhbyRwc7Ab/h2Wg802ZiDoBFdA+5J9InRmJIUc23h9+2JHVr0LAJvMionDG5ZZRT1vw
         PeFsnMKq8EK4iIjYXdsi5KDmY60iX2dADBkSmjRqJeRWBLM+I2NKZS6tOVRYgpsoFEOf
         MKKwFPBGre03ke0bAHREqn81n+7SsZRu2YZRWFbVVOKncOcQi7LDHHFZyXbGWR2NoX85
         JWs8s9dAK73NSDOkEC0rz9ab/N8ls7NIFS6t/DqvyOv89jSC/AxEpabnHs77/v3HKdzQ
         HgHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DNzIHE0Y4Lw8TiLCg0eJK34YlvAAu1yZm4WbEKS3jMo=;
        b=kcizQXi1vzFZP0iBHD/3KEz20TLBYrHfWJMAXmWSkrc33ql+8zPa14tZ81dFefQWDb
         BKMy53ufks4MchTRMUOErF1A/czILiSF1NZsBqoBzim907C454JUQZblYyOPANUha4K+
         mclRATQ1w0Gw5FvavcdyK5GjDaRd1+GykkFBYDo/wTNt+7LQ7eDCT/K8PmIz4cElSeFS
         xM+NUCDMSAx6v5D/BLgSaUerl7vR0KqVqaHtbgj89RorkBooAf4dLOHb62TGqa43ndUx
         /xOG1Le+qct3LcAQkgNCrDJRKsYl1AcKQLNxNE4J8EVZnwaiUCo9iPLh5O8s/nshbDlr
         6hMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DNzIHE0Y4Lw8TiLCg0eJK34YlvAAu1yZm4WbEKS3jMo=;
        b=deQBYpYz3RBSnX+LXqrgwHlg6v8fzsFhHKPro6af7D6CYd8gRnplGjmbLKmgiOPLSO
         hVXDt6/kqa3Gyyy201R/7Pdij70McyYcaOi5odKzdq9pJ8PmMKzQ+vs8F7JEv0r8FAKL
         U+p19zcruebMLodsGjMNy9iZuXkdIsavesjPrRertSmllfnTj2XNHq9fpw7Cb8OeflWS
         1hOWbHhzliGcJKfHFPxHTFV7NwrPx+Lyf4dmhHOLS6TEcZa94tfQHm3nfrG9JaQyIeTp
         jUf4vgKWY+h/SBxgyJ6+3p4cDft/J7057duC3LNiDf57n+qhtqCu5cPmLpbIPw/GjDjG
         sbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DNzIHE0Y4Lw8TiLCg0eJK34YlvAAu1yZm4WbEKS3jMo=;
        b=FXy3WqCVUH8Vt2UtyXjvRZ40QZcywBxY83ErUVOtN3FUtajHIurU1mZKg1snjOx4Lo
         urw2gUoXbsYWMBUVwPtL7GI/xzGGNtGcnrvvZDq0uOpxF1eEr9N7/lv0qKZoA2QmfMAA
         lb/yh4CwE8pOgaygG5taG3VJ/CALzo4/fYDerQmN5tjVDntOAfz7FJPqLwQl0GYFR9+k
         B1q1XqZ/WvpiBYHzdzn74cu9nh5V7YVKQH+P6cv7yfh7MyxSgW5wRuQgIDKbuEJ+5vFq
         suppFgU9FBPMpuMImB4lD87HrmEfrdLheQ+4rwg9ELOnMldeRrkvtIeGh0zO/GF0hOki
         8VPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwIJRfFqRy8ti2zzlufNz/3j85bYY1+ggZHiO0txVPQbmyYkkd
	nbG8e6mXfrdsmxLB14bqo7g=
X-Google-Smtp-Source: APXvYqwKsWvAvtm/XCNAhS3OMXaPF5yotsUaGG1Ua08MMGzqIDF5qpdrFvj7yuTP4VX7PEQXlDJ4hQ==
X-Received: by 2002:adf:91e1:: with SMTP id 88mr24172395wri.16.1572868304960;
        Mon, 04 Nov 2019 03:51:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:960a:: with SMTP id y10ls17008168wmd.0.gmail; Mon, 04
 Nov 2019 03:51:44 -0800 (PST)
X-Received: by 2002:a05:600c:506:: with SMTP id i6mr5654206wmc.153.1572868304330;
        Mon, 04 Nov 2019 03:51:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572868304; cv=none;
        d=google.com; s=arc-20160816;
        b=gYVocQ6qxlHQIpGmssN9y03zszbHO5at2AU8aXXCt88ZVixaqKZckYCZft35Mp/ttL
         8oPOlw3hz++9uh8MveNus/SHFNLY+Zib2FLT/vQgWuyni+xieXomFKgGoXnmBMBkR5G4
         bzigLri341HNPjxjnbFeDvLVAd3L1MPzj0hzS0eadQKU9FyywqE6V3larVgCWcSWhA2B
         3xbktXKXEkpqqp94SyKRug+b9Dvz6LpcWHeKlVT7gCrg+xPYtUaUq2cbMQ1O0Z84v9wo
         /Jilg4RJ1sR5k0/5rYDjcun6xTMk4+h6mrlajm2xwRnA/Lw0cE6p4CgQhZBmy1VlZ2GH
         yTUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=F6RQxleNjimkr6SgQJA5aHO7/vEVcpWY/JKnWcCY48Q=;
        b=dbM1S7wdtvUyiwCoM4yNTLsXXfel2QJIdl46vdGGeSGO+nAsmdBY+ZKiqXGjQXt6yD
         MYbLeSvgRZCGisrhOY/qwyACQifEYyVtdNnffmOUvkw+Q/0fm0uz1uZsEUG3tB14nXnF
         1yui/KQyakwJKZ8ApvNhD6Ilxmlpt12GDLv6nfik8tOTnAwq/jTgmlXQ8MA6FKw902g7
         m7wqPzcIDMEuxGUtkkhw9VE8R/Ex3g0B0X7cQbGn6e2roB3iedjrrMD3YqMOiJ6kIlVj
         bHcHV7G5YJr/gbFHKRWeJM1+P0Eh3OxOle4ywotoWWUJwxMGp/X4Zpjgu1spJOWQ0xUD
         GHEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b198si64054wmd.4.2019.11.04.03.51.44
        for <clang-built-linux@googlegroups.com>;
        Mon, 04 Nov 2019 03:51:44 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6535A1FB;
	Mon,  4 Nov 2019 03:51:43 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 29D123F6C4;
	Mon,  4 Nov 2019 03:51:41 -0800 (PST)
Date: Mon, 4 Nov 2019 11:51:39 +0000
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
Subject: Re: [PATCH v4 03/17] arm64: kvm: stop treating register x18 as
 caller save
Message-ID: <20191104115138.GB45140@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-4-samitolvanen@google.com>
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

On Fri, Nov 01, 2019 at 03:11:36PM -0700, Sami Tolvanen wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> In preparation of reserving x18, stop treating it as caller save in
> the KVM guest entry/exit code. Currently, the code assumes there is
> no need to preserve it for the host, given that it would have been
> assumed clobbered anyway by the function call to __guest_enter().
> Instead, preserve its value and restore it upon return.
> 
> Link: https://patchwork.kernel.org/patch/9836891/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> [Sami: updated commit message, switched from x18 to x29 for the guest context]
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/kvm/hyp/entry.S | 41 +++++++++++++++++++-------------------
>  1 file changed, 20 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
> index e5cc8d66bf53..c3c2d842c609 100644
> --- a/arch/arm64/kvm/hyp/entry.S
> +++ b/arch/arm64/kvm/hyp/entry.S
> @@ -23,6 +23,7 @@
>  	.pushsection	.hyp.text, "ax"
>  

Could we please add a note here, e.g.

/*
 * We treat x18 as callee-saved as the host may use it as a platform
 * register (e.g. for shadow call stack).
 */

... as that will avoid anyone trying to optimize this away in future
after reading the AAPCS.

>  .macro save_callee_saved_regs ctxt
> +	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>  	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
>  	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
>  	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
> @@ -32,6 +33,8 @@
>  .endm
>  
>  .macro restore_callee_saved_regs ctxt
> +	// We assume \ctxt is not x18-x28

Probably worth s/assume/require/ here.

Otherwise, this looks godo to me:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> +	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>  	ldp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
>  	ldp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
>  	ldp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
> @@ -48,7 +51,7 @@ ENTRY(__guest_enter)
>  	// x0: vcpu
>  	// x1: host context
>  	// x2-x17: clobbered by macros
> -	// x18: guest context
> +	// x29: guest context
>  
>  	// Store the host regs
>  	save_callee_saved_regs x1
> @@ -67,31 +70,28 @@ alternative_else_nop_endif
>  	ret
>  
>  1:
> -	add	x18, x0, #VCPU_CONTEXT
> +	add	x29, x0, #VCPU_CONTEXT
>  
>  	// Macro ptrauth_switch_to_guest format:
>  	// 	ptrauth_switch_to_guest(guest cxt, tmp1, tmp2, tmp3)
>  	// The below macro to restore guest keys is not implemented in C code
>  	// as it may cause Pointer Authentication key signing mismatch errors
>  	// when this feature is enabled for kernel code.
> -	ptrauth_switch_to_guest x18, x0, x1, x2
> +	ptrauth_switch_to_guest x29, x0, x1, x2
>  
>  	// Restore guest regs x0-x17
> -	ldp	x0, x1,   [x18, #CPU_XREG_OFFSET(0)]
> -	ldp	x2, x3,   [x18, #CPU_XREG_OFFSET(2)]
> -	ldp	x4, x5,   [x18, #CPU_XREG_OFFSET(4)]
> -	ldp	x6, x7,   [x18, #CPU_XREG_OFFSET(6)]
> -	ldp	x8, x9,   [x18, #CPU_XREG_OFFSET(8)]
> -	ldp	x10, x11, [x18, #CPU_XREG_OFFSET(10)]
> -	ldp	x12, x13, [x18, #CPU_XREG_OFFSET(12)]
> -	ldp	x14, x15, [x18, #CPU_XREG_OFFSET(14)]
> -	ldp	x16, x17, [x18, #CPU_XREG_OFFSET(16)]
> -
> -	// Restore guest regs x19-x29, lr
> -	restore_callee_saved_regs x18
> -
> -	// Restore guest reg x18
> -	ldr	x18,      [x18, #CPU_XREG_OFFSET(18)]
> +	ldp	x0, x1,   [x29, #CPU_XREG_OFFSET(0)]
> +	ldp	x2, x3,   [x29, #CPU_XREG_OFFSET(2)]
> +	ldp	x4, x5,   [x29, #CPU_XREG_OFFSET(4)]
> +	ldp	x6, x7,   [x29, #CPU_XREG_OFFSET(6)]
> +	ldp	x8, x9,   [x29, #CPU_XREG_OFFSET(8)]
> +	ldp	x10, x11, [x29, #CPU_XREG_OFFSET(10)]
> +	ldp	x12, x13, [x29, #CPU_XREG_OFFSET(12)]
> +	ldp	x14, x15, [x29, #CPU_XREG_OFFSET(14)]
> +	ldp	x16, x17, [x29, #CPU_XREG_OFFSET(16)]
> +
> +	// Restore guest regs x18-x29, lr
> +	restore_callee_saved_regs x29
>  
>  	// Do not touch any register after this!
>  	eret
> @@ -114,7 +114,7 @@ ENTRY(__guest_exit)
>  	// Retrieve the guest regs x0-x1 from the stack
>  	ldp	x2, x3, [sp], #16	// x0, x1
>  
> -	// Store the guest regs x0-x1 and x4-x18
> +	// Store the guest regs x0-x1 and x4-x17
>  	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
>  	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
>  	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
> @@ -123,9 +123,8 @@ ENTRY(__guest_exit)
>  	stp	x12, x13, [x1, #CPU_XREG_OFFSET(12)]
>  	stp	x14, x15, [x1, #CPU_XREG_OFFSET(14)]
>  	stp	x16, x17, [x1, #CPU_XREG_OFFSET(16)]
> -	str	x18,      [x1, #CPU_XREG_OFFSET(18)]
>  
> -	// Store the guest regs x19-x29, lr
> +	// Store the guest regs x18-x29, lr
>  	save_callee_saved_regs x1
>  
>  	get_host_ctxt	x2, x3
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191104115138.GB45140%40lakrids.cambridge.arm.com.
