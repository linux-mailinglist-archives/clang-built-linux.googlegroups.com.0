Return-Path: <clang-built-linux+bncBDV37XP3XYDRBTX6ZLWQKGQEF52WVQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0009FE4708
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 11:24:30 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id v26sf641583wmh.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 02:24:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571995470; cv=pass;
        d=google.com; s=arc-20160816;
        b=HfS0XYp/zGIUZ2YYK0mMHw4/+XbRxwhuyhVowSs0dmva7AIWuX3lp9vROKEc1W5Esf
         vPDITASx5BWKJiDnOWnq2q3LPLyNgyEJbO1QwDSD1qppV84bKp8a9rLZ0w28BouX3koL
         MceeBTvaURci9wOs/MSFyEJesC90RTFHGseC4sRYc3L2sXSap9OAoh8Oq4tQU3TfeQAe
         rnblz8EXgCTWtkdAvI72H/xuHnonkVC7bh+PwkC4CVmy5TSFo0nGGerdAQxtV9fZYQW/
         Y9KgtZJfLwOoL3dxpADbdbNZ/gukpFgoiB1ZobkSSGrEP0jXyVmx/5uNWs8SfYSHPBfz
         artA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XA68m8htqZW80q45NQsuwwW7C8vinuP1HuDTCClFa54=;
        b=gE0O3tdC6p8CaIrgnS0yQk22K+al1LpRqn6W0qrHjEpmsvK/NyMOE0kKfRsdfdVm+1
         xnsu1gvBsOlH5on6Kw7FdZv/8xtLx8PPiCe4w3bETWp6V3oAleMgSdwlTlvWD4quPiz8
         58CmcezvVTYvfa0V4+x0+ZvBe4XMSVAKbulqh2FmThWWiZpVqtNscZ9aD1/QK+M9XMXQ
         6wAjyc6vsFmDkbB06DnNPXUe8r2MkRqYYH30VZhCoSUfMhUYs0ybhHABmX6YKZxQqdEn
         lqqY/Q2v6D33qTGQRBqNttwjiGlcJb1fwzLX40pPyEkUYrLHapn+ygQbIDTE/suCyF15
         5kGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XA68m8htqZW80q45NQsuwwW7C8vinuP1HuDTCClFa54=;
        b=K7kPDlFBAQMvQT1IQIayWMeUmwdfSUICRy1URts52jOfav17r0yKusmFupn6u6S7a9
         dA+EajDjgv7y4KNB7T+Fr/5325qDFVoWZcLuFUtN7htO6V0UaLWqzJj1x8iZQNUu9gYf
         kIv7GU2q5Xa65EenqowFlGU3+KD3WKLg4O7rog7naxun9Z/p3H8VG3z2TQST0m+Oue9/
         IPfy+BqRkUysn1VES3LQACMvz/R3wBZZd9WWJchMLovu5iicuCXh7NQ3aEUuLoE9yy4l
         PhBj2cdee9O3plOrTnGCD/dpC2XJ1V1xJLEOcMiBq3NRCD5LZRGdGYlJKjCqcJHv/sfu
         Zmww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XA68m8htqZW80q45NQsuwwW7C8vinuP1HuDTCClFa54=;
        b=YcimPpcDnoA9U2XUZEOoPAMcJzeDnFfOq0E2/dhaOMkJdjBidvaaOHwhVjX+L6VORe
         WMw0MGZU2j8pZ+fA2yVQumQM0/jnVetqFgXIwnGv1dqQPVdqFKETw4t72DOGXKzEj5kr
         VkGpMM9g6RweP4TCp6NEhytIyvyGfoqH5Pr0f38TzFcpnOUxISmiOm5MDRKGpzYEpQIc
         TOH4ce1R1pchImamXvJ1fVjlMkkcWRUVnG1QDWDngSTIt+zZo0xVShARgVOp2VWCFPFy
         RMszUaxMRmF0+G3rvq7PJbPc2Q3KD3UKMJp9hdTX5kGjkZVeGHT2KNQ/OgKHJl3/189q
         uyRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwGXaOZdOxV1L9vG4s1xJjOMdQzPSBBfzW/xVTPlHYKJYjyJpi
	CNrsVKLNJNbijNv2GwZiuNw=
X-Google-Smtp-Source: APXvYqzVxDQvfbBDhuEK+RtanPAcAJNEpWvR/bn/TXwr0VTNxGnb1ORp7txOX2KDlK7eUuyZ2OkZpA==
X-Received: by 2002:a05:6000:350:: with SMTP id e16mr2130935wre.276.1571995470667;
        Fri, 25 Oct 2019 02:24:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ca45:: with SMTP id m5ls3700923wml.1.canary-gmail; Fri,
 25 Oct 2019 02:24:30 -0700 (PDT)
X-Received: by 2002:a7b:c924:: with SMTP id h4mr2667114wml.46.1571995470119;
        Fri, 25 Oct 2019 02:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571995470; cv=none;
        d=google.com; s=arc-20160816;
        b=EJUwYFbIIiXARIc+MmMLTwClZrUR+T3zv2RqcHbU9u2eaGvmQGdyTHq/DIZWPwc1+X
         yB2I8Z3FmX8nkngko8nwu1CL7a2O4iinRCZl5YaqqVyY6cDS3/fCt5Giopgra7pn4WpP
         sVJcR/UpFypi5i3XaVIZ8O6Ia17MjOu4Hs3VZn1mpgxoTIXCVOSAQs6ZOTojAy4UrUn4
         TfTZ6pTHDTQh+lK3ZE8w+DLunzld98UZv82LZjkJHnkIrjKMVpmsHyHlMPfxxeRN74Uz
         JyrSW64z2EaAX5pkTXRv1dAqqeTAn5Xdn8EKdlYIAdq5Cir6Jy62jyUm36awb1O76AKl
         zApw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jsCbn6E6oZEY4xbiogjpm1VL/pFhm/6zavd/Iel5HVg=;
        b=zgc+YqZnB3K9MSJKn9DxnJm7LaMG4lQpalwUhASaeSKEFcci/ofhbbw7cJtjqlx3YW
         +8gjKHofpTE4sHOpYbO9Kwqtybt6/gecHDVFnWb4z+wxOeLCovHVnOumP7hezCJeIcnw
         16oYQGr3rkzMrw4Ahi10UT4s1cVjcOn0ogOKrWXirWKBUHJLFxKuElLaqvi/OiDyFdbi
         bWYJ14MKEHD5ReaCqBrGyC8VZxy+RLQ3gL8jo6WByB0Gtbue++3deVqbXn784VC4+oTM
         32M3OmsNfpGJvs1Xlxo+1lfwC5xDRUFnqy2vTlAi8I/C/EkD7EgcOtRnZAiDj0JFdGJk
         P7iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a14si99242wrm.1.2019.10.25.02.24.29
        for <clang-built-linux@googlegroups.com>;
        Fri, 25 Oct 2019 02:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4091628;
	Fri, 25 Oct 2019 02:24:29 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 210813F71F;
	Fri, 25 Oct 2019 02:24:27 -0700 (PDT)
Date: Fri, 25 Oct 2019 10:24:22 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/17] arm64: mm: don't use x18 in
 idmap_kpti_install_ng_mappings
Message-ID: <20191025092421.GA40270@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-2-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191024225132.13410-2-samitolvanen@google.com>
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

On Thu, Oct 24, 2019 at 03:51:16PM -0700, samitolvanen@google.com wrote:
> idmap_kpti_install_ng_mappings uses x18 as a temporary register, which
> will result in a conflict when x18 is reserved. Use x16 and x17 instead
> where needed.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

AFAICT the new register assignment is sound, so FWIW:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

I was going to suggest adding menmonics for the remamining raw register
names, but after having a go locally I think it's cleaner as-is given
the registers are used in different widths for multiple purposes.

Thanks,
Mark.

> ---
>  arch/arm64/mm/proc.S | 63 ++++++++++++++++++++++----------------------
>  1 file changed, 32 insertions(+), 31 deletions(-)
> 
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index a1e0592d1fbc..fdabf40a83c8 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -250,15 +250,15 @@ ENTRY(idmap_kpti_install_ng_mappings)
>  	/* We're the boot CPU. Wait for the others to catch up */
>  	sevl
>  1:	wfe
> -	ldaxr	w18, [flag_ptr]
> -	eor	w18, w18, num_cpus
> -	cbnz	w18, 1b
> +	ldaxr	w17, [flag_ptr]
> +	eor	w17, w17, num_cpus
> +	cbnz	w17, 1b
>  
>  	/* We need to walk swapper, so turn off the MMU. */
>  	pre_disable_mmu_workaround
> -	mrs	x18, sctlr_el1
> -	bic	x18, x18, #SCTLR_ELx_M
> -	msr	sctlr_el1, x18
> +	mrs	x17, sctlr_el1
> +	bic	x17, x17, #SCTLR_ELx_M
> +	msr	sctlr_el1, x17
>  	isb
>  
>  	/* Everybody is enjoying the idmap, so we can rewrite swapper. */
> @@ -281,9 +281,9 @@ skip_pgd:
>  	isb
>  
>  	/* We're done: fire up the MMU again */
> -	mrs	x18, sctlr_el1
> -	orr	x18, x18, #SCTLR_ELx_M
> -	msr	sctlr_el1, x18
> +	mrs	x17, sctlr_el1
> +	orr	x17, x17, #SCTLR_ELx_M
> +	msr	sctlr_el1, x17
>  	isb
>  
>  	/*
> @@ -353,46 +353,47 @@ skip_pte:
>  	b.ne	do_pte
>  	b	next_pmd
>  
> +	.unreq	cpu
> +	.unreq	num_cpus
> +	.unreq	swapper_pa
> +	.unreq	cur_pgdp
> +	.unreq	end_pgdp
> +	.unreq	pgd
> +	.unreq	cur_pudp
> +	.unreq	end_pudp
> +	.unreq	pud
> +	.unreq	cur_pmdp
> +	.unreq	end_pmdp
> +	.unreq	pmd
> +	.unreq	cur_ptep
> +	.unreq	end_ptep
> +	.unreq	pte
> +
>  	/* Secondary CPUs end up here */
>  __idmap_kpti_secondary:
>  	/* Uninstall swapper before surgery begins */
> -	__idmap_cpu_set_reserved_ttbr1 x18, x17
> +	__idmap_cpu_set_reserved_ttbr1 x16, x17
>  
>  	/* Increment the flag to let the boot CPU we're ready */
> -1:	ldxr	w18, [flag_ptr]
> -	add	w18, w18, #1
> -	stxr	w17, w18, [flag_ptr]
> +1:	ldxr	w16, [flag_ptr]
> +	add	w16, w16, #1
> +	stxr	w17, w16, [flag_ptr]
>  	cbnz	w17, 1b
>  
>  	/* Wait for the boot CPU to finish messing around with swapper */
>  	sevl
>  1:	wfe
> -	ldxr	w18, [flag_ptr]
> -	cbnz	w18, 1b
> +	ldxr	w16, [flag_ptr]
> +	cbnz	w16, 1b
>  
>  	/* All done, act like nothing happened */
> -	offset_ttbr1 swapper_ttb, x18
> +	offset_ttbr1 swapper_ttb, x16
>  	msr	ttbr1_el1, swapper_ttb
>  	isb
>  	ret
>  
> -	.unreq	cpu
> -	.unreq	num_cpus
> -	.unreq	swapper_pa
>  	.unreq	swapper_ttb
>  	.unreq	flag_ptr
> -	.unreq	cur_pgdp
> -	.unreq	end_pgdp
> -	.unreq	pgd
> -	.unreq	cur_pudp
> -	.unreq	end_pudp
> -	.unreq	pud
> -	.unreq	cur_pmdp
> -	.unreq	end_pmdp
> -	.unreq	pmd
> -	.unreq	cur_ptep
> -	.unreq	end_ptep
> -	.unreq	pte
>  ENDPROC(idmap_kpti_install_ng_mappings)
>  	.popsection
>  #endif
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191025092421.GA40270%40lakrids.cambridge.arm.com.
