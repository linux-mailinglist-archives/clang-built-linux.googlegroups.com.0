Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBCGBQLYQKGQESUL7S2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E140D13EA1C
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:42:33 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id c16sf8491486ybi.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:42:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196553; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZGyxlFpRin8cBhXtHxVbfBWU+x+rXIU93ZuIPqMEi8DKnwSW21IbGQwZ5i9l1UqFpu
         KAiIfYT24av0PU3qIFavFbuOyzG0JRgR/mtQFyL+4d7Syu87yO9w1rjecurPd5KFGLxe
         KKXx8pGHjTLJfSDxpM8iF4c6NTVbj+6EIlwwWnRomsgukLCmuYfgW3KRnS0P9nprww45
         fGdZkgg2DUrJ3eDGYi/kZbryqYqmUwW/+suIrArm+k7IvrNPQxW8KZjeeXUC28dS6W5U
         1Bfqe5FOjxKI3rCEDbBzO/zpWCSf9ZuR895jA+glvUPtqsurvlNFA1K1IUhdnk6YQhV0
         r09g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=21uooskT2QAXQFxF+dx/4p1LsY51uHTtwcQ1eJY0E68=;
        b=VwbKIiPopUbKTrkO/IFtLV0M8dSAEb+xkaIORB2nMQPEhefW2/Yb1u/DXkfrEyirIT
         RMlNSjr+gXBv5kF1u6c8YPfc2DQWmHz/CmqVFDLRGXmQSqbgjSh/AD848cgWyGR9tPJk
         ATivdb+zL6eok2m0yMOXCCmC4WpGgEPE8qLbiB7VDxVv6mqCMH+UoTNdFbrjvUh3PxZn
         ZWkNAyKHyFWCPkJOuun7esDJ1fAFkP3u0l0hXqcdLbVA2ASQuqr0lbq9SURpqXbEmhdb
         bGu+Q1bXg3C/bee/BtDmVAbt8ZPat4jljh2otmSvF7vIxlgaTorPQHwfbWl1VGq0br8m
         A9hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mgw6egZb;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=21uooskT2QAXQFxF+dx/4p1LsY51uHTtwcQ1eJY0E68=;
        b=Ho3DHeE7aCf7tR4lT0UlAwdxZL6tjwPsKz5dpt4jNxFA/UaVChZSaCC04ibV4GuGjb
         XD+BM4Nil3No0vpD6TK790gb68/8d+O4KtxxE3P3+vcnTnQ8Z6QpkrhTdxfjphqj2CmK
         IEtO8rUD3yXyfgtOgKmw6JnBouPDKxPgfb3/0LlnIrsejBKYolTBe/ybb5RrPqEQk2hS
         I3Ay9I69zWa9ESdlHLBkRcDvDODjVOQEeyehUcHhs3RXAbol+x5ZdmEZbWVKv30sjLa0
         bjAx27O8UQLFLKLHlKVfckE33cRaKS4dfmc8csgYcZxJFA9aJN1mqfpV7cgN+b6wVtZC
         80PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=21uooskT2QAXQFxF+dx/4p1LsY51uHTtwcQ1eJY0E68=;
        b=DzlSoweUYQ03DI5eIZBvVCNGnHBrjAxMAk5YSq802RnuW0qPcSxtO88qcVZuKHA+au
         bRIKsfQdT0KfMq70GfsrMtwLe+LjhXAz3MAMS5jN4MuSQT5QLk82e/SJAjN1Pepdzn4C
         RCXN0ns/Y4BgIhs9c1svGixNfw/a4GYHxqJ2oCN55zLrg0n7xYoc95XPqoGB0zWK9h4P
         3+iPh3OnNuWAKMvt4LYpBEHcObrRH7bkNpbw52IY6h63kp0ZZgECs2h9FyCI80Pm66D9
         +fjPmbbPEHV4PSO8R76gVNTb+W7zUM7rNchWoE/E9iu+9LODSq/xuoOeB1kvNpokQsGo
         AdKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTnDa6xyugontGKpWYubPSZO2jaQVKsCr3VnpV6UIJC/j5/Rth
	K+82jMI4XdNMrGfNxVxUhEc=
X-Google-Smtp-Source: APXvYqxqxoOdFvHNZ9t5LqNcxF835cMF8y3SptVplucaVHy3+eocBRWGL7AWmMVeDhCQRlJNrMvdAw==
X-Received: by 2002:a81:ad62:: with SMTP id l34mr25826746ywk.233.1579196552937;
        Thu, 16 Jan 2020 09:42:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d08f:: with SMTP id h137ls3657673ybg.10.gmail; Thu, 16
 Jan 2020 09:42:32 -0800 (PST)
X-Received: by 2002:a5b:5d2:: with SMTP id w18mr27387192ybp.349.1579196552575;
        Thu, 16 Jan 2020 09:42:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196552; cv=none;
        d=google.com; s=arc-20160816;
        b=oBiVt8kDOnrvd/SqvfcP4RYnIh9FtYNQUJDAmT+hPdBTMBfnXQp066DYix6xdNgcFg
         wL9QPcOSPYEJAX2M7xffowYwSkotp3eoXI0xPuk3zajoltLYMpYjn3yzHM/SJgeDgxE9
         GgKnda8SnH0+bP+cvc4I6NK/iJZy8HBf/WAMW/aCVB9hkUFrLiZfQm36iawY5hr6n2C7
         PAOEouTONOlUB+zFUFAo8AVjPvUtbl2HqD46ZQ4rUMlOzD4dqvH0tR41AlQnSgfx8VSY
         Ft00VuCdR05NdFrWYLldH5sT9dvgxzdDqaHU1JLXy+DDiRATzHbgpJfe6kia8U7+emCw
         ht4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=70IgF2YnEmHmpUcXmc8hAm2p42rnXX6PVI72S+WeyvM=;
        b=DzgkanC/lyiQGgOj5XVNm8Ura0kSc4uoiqx6RsdtZWdipsMBmWW/v178HZpGgLVS6H
         7AqeCMehR8wHTSv3J7bmMjOatj8D7c/qEAVb+MeFL490wtBLud6+V9l/nX6o5UghZQqL
         b0IML/lyzlxiw+AO3eRXKRJvbcd6B6DcFAzX9SZilmWt58xC2WCrouGrPLmjfNGzD7Ad
         /v0Ibywy4Zxj/+OIi4qEamw7D2D8/xJg6sjSLUBjFIze7LqVlpP8dYv7Fy0mO/ysZ7J5
         U+HiQEIYBIJOV5f3kaHfMO6168JtW91w341Okfnofr5o8NvxDbA6Dhp2MP7TFApsnwZQ
         tOiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mgw6egZb;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s131si516399ybc.0.2020.01.16.09.42.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:42:32 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DBF40246A4;
	Thu, 16 Jan 2020 17:42:28 +0000 (UTC)
Date: Thu, 16 Jan 2020 17:42:25 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: Re: [PATCH v6 10/15] arm64: preserve x18 when CPU is suspended
Message-ID: <20200116174225.GC21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-11-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Mgw6egZb;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, Dec 06, 2019 at 02:13:46PM -0800, Sami Tolvanen wrote:
> Don't lose the current task's shadow stack when the CPU is suspended.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> ---
>  arch/arm64/include/asm/suspend.h |  2 +-
>  arch/arm64/mm/proc.S             | 14 ++++++++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
> index 8939c87c4dce..0cde2f473971 100644
> --- a/arch/arm64/include/asm/suspend.h
> +++ b/arch/arm64/include/asm/suspend.h
> @@ -2,7 +2,7 @@
>  #ifndef __ASM_SUSPEND_H
>  #define __ASM_SUSPEND_H
>  
> -#define NR_CTX_REGS 12
> +#define NR_CTX_REGS 13
>  #define NR_CALLEE_SAVED_REGS 12
>  
>  /*
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index fdabf40a83c8..5c8219c55948 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -49,6 +49,8 @@
>   * cpu_do_suspend - save CPU registers context
>   *
>   * x0: virtual address of context pointer
> + *
> + * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
>   */
>  ENTRY(cpu_do_suspend)
>  	mrs	x2, tpidr_el0
> @@ -73,6 +75,11 @@ alternative_endif
>  	stp	x8, x9, [x0, #48]
>  	stp	x10, x11, [x0, #64]
>  	stp	x12, x13, [x0, #80]
> +	/*
> +	 * Save x18 as it may be used as a platform register, e.g. by shadow
> +	 * call stack.
> +	 */
> +	str	x18, [x0, #96]
>  	ret
>  ENDPROC(cpu_do_suspend)
>  
> @@ -89,6 +96,13 @@ ENTRY(cpu_do_resume)
>  	ldp	x9, x10, [x0, #48]
>  	ldp	x11, x12, [x0, #64]
>  	ldp	x13, x14, [x0, #80]
> +	/*
> +	 * Restore x18, as it may be used as a platform register, and clear
> +	 * the buffer to minimize the risk of exposure when used for shadow
> +	 * call stack.
> +	 */
> +	ldr	x18, [x0, #96]
> +	str	xzr, [x0, #96]

Mumble, mumble, spectre-v4.

But I think it's fairly hopeless trying to fix that everywhere it crops up,
so:

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174225.GC21396%40willie-the-truck.
