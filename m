Return-Path: <clang-built-linux+bncBDV37XP3XYDRBWWGW7WQKGQEMGSAVBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE4CDF3B0
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 18:56:58 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id d11sf2827488lfj.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 09:56:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571677018; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rr6uDtIHcL+evmrPagJL6pSOIho3sK3uRYkMIsWQeORdJ5+MUxlriB63Mv8X4IMOT3
         WnTtqoOLD2xt3np2Njp8UanxJyVQKgKm7Tb9RCneDm8VRWJveB9Pfs49j56gwqatjMBf
         K4HDTUBpPbIUzvWgyTupB38DuFF9dpzbr7PHbYZJ1rxB6otj+aSsyQ2mFco5hWCSULIK
         QlWcuwpFFWbnofqev+fhdW7fycGbsqhND+iflsWsu/Vp9xndrohX67leS4vy5baVnF0x
         6VCx/p0/MLZJN3jLIJjwhFnOgbTBKOim4bHI1/oG8r0y2LknauMe3o5yVbps4dtRFXzI
         hRKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=d6J81zQdA429aSImuPae7VTuBZ1l6kfHi43tkxh33WI=;
        b=OFXIp4SBvjxeK7FKKmaoYVpLaZ0yTKS85y7OY2C9j59bqzl8a5GM5pWRJBO1/TzC5i
         dZvdA0ksCZxlx+jg4KxtYwpcrcNJwTjft9mcrZhxieyUwEHaJ6lH+bAUUMFHVSJbTTGy
         QUgyytL2HR1OoTVH/TgOY+9NJXaxg4/xNuujPvcTaDu9li8dEbsgal+AiMr87b18SSDQ
         Mgf3YpmwVpQHQcXfuVRPa7J+yEyNihbYaJNDs/CRSbKmo95dsIxB/z5WO8JIb/anuEzz
         mCKbnBYXKhKzQkYgQzsLzwFuhMx1/H4oP9zoOVkVrRxsrwAUltnL/RaMZw2FXtgB5W4z
         P8vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d6J81zQdA429aSImuPae7VTuBZ1l6kfHi43tkxh33WI=;
        b=CSZbA/ITiY84dHaNNAbbe0P1OlybzMeghZpvDsSor71aNwYNSYyboU4duDMxUGzvmH
         HE/Q+io7SVTQ9/bbrUKnydvLyFD/+023aszhTyz6p974i2wQDOuOigsQraYS/5PQAqgg
         airpeyVoRMWhou+NyG/KtMicBYl4BI0GktPTCfh5imsM5aMdTcHLjusXAzqWMROCP3xC
         +sq0xXkNswzhlw5bkEoO1F8CZpG+xROrOtZ6abiyDYcfzXLfskw6qhBPov13vHLzt0dA
         jXMpf/BfplhR4u4ueyPgpsqXaAfiNDUMm78yt5lnwcfHthez6uPvqmtIUJvrPWzlUi+z
         VTkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d6J81zQdA429aSImuPae7VTuBZ1l6kfHi43tkxh33WI=;
        b=WlxrC6u7uXH2oCWujDQ49QO2g0jPTG7gr4R21AYtLZHgx7a+iodxJ77zjmhdxwBJHa
         Ka5gHIBE8cFmAdMNbXap50FLFKiw46bOPaTuQX1lwD5M3A6U2FRwOWmx8y7O/Z7Jk12O
         7BnlNtXP4JQnem1vQUeTgwP4j52FQbOrjPHCozRTJ/BkgxAGJOVs7q206ODQvue4xZiM
         dvQJwpODgHWvuiQmacH/OM5rDdmLFcif2GtsbmgtQvxcGlJ80vkRb4i5mXWtcCQrCa00
         3YRYI++Oifn1DlpJfT5Cn40fvmWyZTQBkwzACuknZBLdyRsGMiUjj8Bp4zxlvRc+j29t
         tjzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUY5pbltGErs9DeucsG6PF6RLrnyaDxvOra4zmoAMRZ20NnT4tZ
	9PjzO3Uhcpn/LceReMchths=
X-Google-Smtp-Source: APXvYqydMZxfciUyUO1Nx1XJN0uX/jlZloAApUCF/ZfB7IiVSgJhiO4V7EVssr/V7r+RHkpQPGrZ1Q==
X-Received: by 2002:a19:f107:: with SMTP id p7mr14079624lfh.91.1571677018355;
        Mon, 21 Oct 2019 09:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d02:: with SMTP id y2ls1656308ljc.8.gmail; Mon, 21 Oct
 2019 09:56:57 -0700 (PDT)
X-Received: by 2002:a2e:7c13:: with SMTP id x19mr1004800ljc.0.1571677017612;
        Mon, 21 Oct 2019 09:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571677017; cv=none;
        d=google.com; s=arc-20160816;
        b=1BAdYpFVwnNyTyWOXGkgXsBN1UTKLczolWeGRTSimkBRycOSZp0ZdGkO/dZ5jT3TF9
         BRbA88RfE8qLfvgqunLAeSJ9CxqxPSOwXAOhxfpGmc6EdiEbhb4hyCki+1UNCkxvkBEq
         jlpSPh3sz2UybC+oxZuVsWrSvzxfA8xkQE2Lrm5HvlM6Amj8OCyk8ruz88EmIMmY+9lP
         03eeI/7enA3POOZ6cN6aDJ4uSvFTwkJxvwyDm+8FR8KLbi1xBMqXk6naMAHFYYDEfwai
         onouAnCIXnViIYiNq1yTG4/HjkrNcknXP5BNWLIe4q52w9DJEU7A/Br3SPDtae7RykCT
         WqUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LYfyZ1meW09fR9WZ6kO0Zcm4H8IMIL2gxfPSvQ/jftg=;
        b=KpVE45lqaVz3tmXV82HrwvXIz/U5fQTsTKiLUGEL+Myi+mFTb1maseuLyHOsMwNYbm
         yfppKzey3Zw1DR8x5bz1glmt1ZP7qft67NOwTeMiExxxAVsB0lv93gRD2qTi4wEJCjQ5
         1flkgCYFucZdHLl+Fd9EZRKh1KIf+Rc5drhAGb1wbVglNcOgR5dvAC/ooZjpqV+SOiJZ
         ZU/G8CCunQxLWgFNjkK2vE0Rbt87VyjKzF3Q1oZSeFQ1m9Y6nVT/43NeadwhL+zF5PVl
         hU9++GFweyNG+aB3p+BTa7qXEW3CEJ5KpAMVeELrOKWcIBoE+I7CZmqOV4jHaETvUnOg
         ZuJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com ([217.140.110.172])
        by gmr-mx.google.com with ESMTP id y6si935851lji.0.2019.10.21.09.56.56
        for <clang-built-linux@googlegroups.com>;
        Mon, 21 Oct 2019 09:56:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E63D31715;
	Mon, 21 Oct 2019 09:56:53 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FF163F71F;
	Mon, 21 Oct 2019 09:56:52 -0700 (PDT)
Date: Mon, 21 Oct 2019 17:56:50 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
Message-ID: <20191021165649.GE56589@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-14-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191018161033.261971-14-samitolvanen@google.com>
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

On Fri, Oct 18, 2019 at 09:10:28AM -0700, Sami Tolvanen wrote:
> Don't lose the current task's shadow stack when the CPU is suspended.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/mm/proc.S | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> index fdabf40a83c8..9a8bd4bc8549 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -73,6 +73,9 @@ alternative_endif
>  	stp	x8, x9, [x0, #48]
>  	stp	x10, x11, [x0, #64]
>  	stp	x12, x13, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	stp	x18, xzr, [x0, #96]
> +#endif

This should have a corresponding change to cpu_suspend_ctx in
<asm/suspend.h>. Otherwise we're corrupting a portion of the stack.

Mark.

>  	ret
>  ENDPROC(cpu_do_suspend)
>  
> @@ -89,6 +92,9 @@ ENTRY(cpu_do_resume)
>  	ldp	x9, x10, [x0, #48]
>  	ldp	x11, x12, [x0, #64]
>  	ldp	x13, x14, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	ldp	x18, x19, [x0, #96]
> +#endif
>  	msr	tpidr_el0, x2
>  	msr	tpidrro_el0, x3
>  	msr	contextidr_el1, x4
> -- 
> 2.23.0.866.gb869b98d4c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021165649.GE56589%40lakrids.cambridge.arm.com.
