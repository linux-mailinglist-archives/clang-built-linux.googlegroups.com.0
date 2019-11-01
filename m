Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAWW53WQKGQEGXFKJLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE78EBC7D
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:48:20 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id q13sf6378205iot.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:48:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580099; cv=pass;
        d=google.com; s=arc-20160816;
        b=WCAtXaPeVUDgkqbwtESLggFgP5yv7Om6TKiDddfJOtXNWB615iouDvmpIhYoZTh2fI
         CL1SzF5gw57HWIjmdS/m+KjGEAMGoe1fJ/24qGhlq0cQPRjJckPbqIHVDKn+EUH9L/qq
         07dLH4EHQvu+D9rhJHAtP/fPbszs1Q428gis6Vzu2uY6tONCfAtieXcs2QZeh/Ki0Z7C
         GOUpgemsZoWkv7nql3/qIkX9sg6atpisajBufny4bKIW40ymTJfaT4nxM0Sx1eaw4zlv
         qeFa62cUZsR0DBNYCbFszYR/oYZbdAcFvkz+qIGhBuEfewYEXz9q0nRrZQaPDWJSMTla
         0EoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JEiA3lx9tzZKwNoRVUxepFqwZKOSQst7ReaAyCpZQFk=;
        b=n6lgeUexfnzaotT4jU8sloCj6b/g+yw8FleSvQdkRbR3koXV6qjG9UiUOmrJc/K4fI
         Kb3eRof/lTkmLxif+ssfvBVTZrdAgBdfavL7CjaQaUx6AbTTxdKe0d4M5QuiNJeTQBbI
         al8XjGg4z5kchPrwAE4WDgoYID5UfXEEqrnJWhbBIYarYbDn98R7hqu4bqyDF56N8cpB
         5fm0MV4BUJdoXI3NRqjYuSGBiM1s20ti45gfxWoW+jJCNWD1osn9TFjZkJvCagBrbQkP
         xgPyyma3fibjGBpByPF+cEQRJb9nIkiZt9LDjSfXIBtZ4q7FtnKfkyh0KWNU+WR+6S3o
         w15w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="PO/SPgBc";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JEiA3lx9tzZKwNoRVUxepFqwZKOSQst7ReaAyCpZQFk=;
        b=VgTh774MhYKVaXubS2a3yl3Svy/1VB6ss/8fPBglaPUj9TNrCJlWUlrG97v1o9Q5J1
         nK4jQ1lG3yFqTdpEVBuq7HIkPWM9ljg0I3O9CGRpUuZOqHyNpAEllsuFY9LEWS7nssMb
         zfL+QEsH23z1KUuoi5c2yt317+T+xyNpJ1zpDRmyuP1DYzNi2iLJM9oPB0F+rAtJXgHi
         iSfsw8CSObNfylZhmh4djM5OJRTnVoD5d6+jSJ6ZwEC6LNMExoHwmgDkcGkaqAyHjEfP
         gk1wNL+/FQ1yIcQq6zCNxwsPvxFuocY/Or/YAf/04eszfN3Ya6tjQU7R88ibNwlEpCn3
         BDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JEiA3lx9tzZKwNoRVUxepFqwZKOSQst7ReaAyCpZQFk=;
        b=lea9Gvn0SDOlusSYisHh0Hz3wmQfv9XCjhXkXQ1ucGnGQK42L5DG1R1ttACSRQTomN
         YNsgdH4qHvDCUt6cP9Wd57n2GHkat5bRCg1TkQGRr/LCiIS/hVbf0pz40xSF/dYwn05J
         jv8XgwbLWQfZsa7Ke8gz0ePdlz5VlJzJUwsmHhmIQv/TLVsI5zh5fU0+iiags3jBe9Vj
         scNGUHbABcVpfOWNFm51kM80vhZuzxV8E7Y0f1f0Ab+NTicTNdc1YF7Blxsqa3VA2AUW
         c/g0mcLqgOriTI4aQZKpe5mdvS+vEPkKgieTlFvnGok0Q+FZJr2hbItd/dtaukAbssz0
         mqFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU7trasOgBELO84THfjvco5A5qzs9KpjnIt66efJhjsf1y5kUsA
	YihFdRnEwPLYuaA370K1K6g=
X-Google-Smtp-Source: APXvYqwGw7hnCBnJw5kIgPiQU9DkphZYpPW7C/GNHCAChbV8GGhMtdkK7YF095ZaENc16tE8EqrX3A==
X-Received: by 2002:a92:650d:: with SMTP id z13mr9583935ilb.18.1572580098703;
        Thu, 31 Oct 2019 20:48:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9e06:: with SMTP id q6ls1050515ili.5.gmail; Thu, 31 Oct
 2019 20:48:18 -0700 (PDT)
X-Received: by 2002:a92:dd88:: with SMTP id g8mr9773568iln.221.1572580098324;
        Thu, 31 Oct 2019 20:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580098; cv=none;
        d=google.com; s=arc-20160816;
        b=UjqQQGdumZ3XvJRNhtCLpGbu97vr8T2PmSKAMvOaX7vkU+zzmnbdi+GPqaceY+9kUb
         2fyL2uFZxf/yRaUUqGpQ2iXSuds4nL7GdNouRW6CnIET6conT/Zluq/uaXCkgqdkKuKI
         wM8S5Lawnt1jP53vbNXreJYCbvaVPCmjFHWwdgVNxMmd+53nfRWEq9TJFBeyFCSsZZyM
         GHTZaSnQ/smOLc9bFxMm2OXOV8ZdkiFYXvz1t9pJE4R/Wg9FLIPktsjcs4EHF8YmlTf9
         qKb8fzxODuAbS8dnOjm9TVeVGiphl/CnJI56t5XSILC/nm7Agki/UW90ibI4ndk1k9bM
         0gWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GhXfR7uwF/t0mkUfEqnIPkdytpbCM5CP4Tc8kyPipqM=;
        b=SAfXD5XrN05G7Lc/nooEpTS1gzrTwsnx8H1lwScnIGJsbjuAeL8kxxtWLTEorwcgU1
         kbn2/8MqNYAXsm2+j3abEtFed/NtjykQFX2Vi5aVmOUZaS5Gcvaj84bm1pvWyWNfOFLd
         T76Oi4JNMBzDwTj92PMBA8xuQ8MIBCaTAQOoG5IK/Yd8CtBMLoA+mbaFUaSlA40Yxk7G
         pdN5a3cGMK6ndifHncQnuoXX9qdbqv+8UURuyy0aCDKyhZ+qdVAn6OXEJJ1xoNNVy5E1
         8j2f66M82Yk5qrbXQxo87KTHcYfu+GC2ZokZ3CinEz3CjaeKRBAmavZRVkuagk3JannE
         s/Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="PO/SPgBc";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t64si385779ill.0.2019.10.31.20.48.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id e10so5572776pgd.11
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:48:18 -0700 (PDT)
X-Received: by 2002:a17:90a:6584:: with SMTP id k4mr12615865pjj.43.1572580097650;
        Thu, 31 Oct 2019 20:48:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y144sm4637001pfb.188.2019.10.31.20.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:48:16 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:48:15 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 03/17] arm64: kvm: stop treating register x18 as
 caller save
Message-ID: <201910312048.3B34452@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-4-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-4-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="PO/SPgBc";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Oct 31, 2019 at 09:46:23AM -0700, samitolvanen@google.com wrote:
> In preparation of reserving x18, stop treating it as caller save in
> the KVM guest entry/exit code. Currently, the code assumes there is
> no need to preserve it for the host, given that it would have been
> assumed clobbered anyway by the function call to __guest_enter().
> Instead, preserve its value and restore it upon return.
> 
> Link: https://patchwork.kernel.org/patch/9836891/
> Co-developed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> [ updated commit message, switched from x18 to x29 for the guest context ]
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

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
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312048.3B34452%40keescook.
