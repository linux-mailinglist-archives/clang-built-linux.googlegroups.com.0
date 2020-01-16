Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBVWUQLYQKGQEA77HPLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C4F13F0C6
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 19:24:23 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id o200sf22942935ywd.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 10:24:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579199062; cv=pass;
        d=google.com; s=arc-20160816;
        b=iqV8oPVlMRFVaDrAGmQZwQ033lyQ7ezbZtVDmikrK79ymHCgYjLUvfrltaxgPEBIfj
         exlhCa6rtC9VyY4NNGzbR2zPGei6QvYMB/Ik4XdlFgVLqoXJfKVg7kAFdZ7dREC1Rk8h
         AHkfgEUpUzZuRxvqcmrGWYbvp3RDD7unFlJyKmmE08ZMaK4SHv3u8Ou32Tu2HcBBfI5k
         hjPHQ1cCaZZf5oQbxwMgTfrcRFLzMjGRsKqkwePHPuYLz67GgYSF6SwpqwBBe0CY1v2f
         vEcc/iq9+jrQ0S/dCwsFCoTruH+uYOmS9+wx9euK5xYQ4IlQ/DeiVU34wwxG3rUGdv27
         Yzkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=FrVpFpwcwyEp2BLRZENRunbWKM/74o7oGclrhsuSYBE=;
        b=ADPsU9yjg0/3KvauACc9vX+X1gUO/cdnP3Auu08iOM9J9EL1uh3rsIvaAD9USYxZ8b
         p9mAChYDVrcS9DJtQmHI//OV5jaFFF3rUAuGMTH4G7QsgPOWzo4z/F2+3gvS2IO2YdV4
         6EsLM/3V8n55/uB4yVvPFsxTIMVjXBRugaF37cefKt01ZhPkSEnRWUuOaE7LuG/lOBhP
         JPOUi7zo72cwmFFEUWNubD3XJuh8GfldM1cbXbnnss/AKctDEJYuMyTWDeeIXPLhhgn0
         TA9q2RavMp9huBw+uZhS9zTkoHivx9ilJgUZSBRXwbiw2KgaVSDaEFIRKQipOwPLedbk
         fCIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2lKYCD0W;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FrVpFpwcwyEp2BLRZENRunbWKM/74o7oGclrhsuSYBE=;
        b=iaq8MyBqGt9hMluiVTI67yOSVoIoWxC+Ebb4l1GFjkhi0Ziog1r3wVYOv3f1nw/Quv
         6GBHo1tull8hvjHpIetOhGDdaZzRK8l2aQUafaAEfLgf1fy9/lFazqy+ueJWru99JAWx
         5aTC4eQonKLlbCwAN0cHG5vDNr9f/VQ949MNnyk4d1FF65ej1fJi5w5R9TxffWq10xjn
         dB1PhCsXs6SvPOZficDebyYByCrJX36Yo0JCLJrX2j5ydnBk2JVp353KnVswWJwgWsCC
         3dHVBh6GEOn6SECBf71GM0bpctQRhcnNhKqVVXTT6MhmMTL84VKbsZEoCaSdhhB71IHH
         p7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FrVpFpwcwyEp2BLRZENRunbWKM/74o7oGclrhsuSYBE=;
        b=tthAiGSivCka/Q6N8obftcW6N/whNwGppCyEf7p6sm3cr7u5k8DDFsELAjEVTg0aM+
         gSGpVTQD0G/Xbo1UUd2p90tXyjOEMxexO84/vUuG2AGptXN7OSPMuo2dUO6XgxJTqI7X
         An0CVLZlzzNiz/Jn9j9pxxkpXoqoeNuKWhduJtP9nN0mG0gbi/qQwoAEP1l/Af9Ny9KW
         qMWvCNJYDDQmt25GeOPh9FInOkDygmrLy1LR1+WAdDY0QZ7mWJY70RUqu8Eg7JQk3DGT
         EhFpY6hQB9G1dIrv+i7Xim+Ry1OqZQRFEvPM1GpvIJJQLnwO8KycXXNQZTdM8WYjvvJY
         ZkNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5WCIhV1LFgplXy2KAaoJKsrikM2DeIoHRh6mu1DQyotxghNgL
	0yXfZiJq+HhdG8xZz87R7T4=
X-Google-Smtp-Source: APXvYqy5PWRLzQTuS1lXR41DopqjOIfOdOgfxcMHvQeAjcM4EXyl27WNrF3tsjYn4SQlRI5he+Fmyw==
X-Received: by 2002:a25:dc90:: with SMTP id y138mr22711741ybe.500.1579199062500;
        Thu, 16 Jan 2020 10:24:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ca8c:: with SMTP id a134ls1434254ybg.0.gmail; Thu, 16
 Jan 2020 10:24:22 -0800 (PST)
X-Received: by 2002:a25:5887:: with SMTP id m129mr27840164ybb.172.1579199062128;
        Thu, 16 Jan 2020 10:24:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579199062; cv=none;
        d=google.com; s=arc-20160816;
        b=lkOTWNpn+PaQsZyBSPCdpfQla+fBBQFohdFRW1xeqoMdWxE+sHPdjS8cZ5tPQoZMIh
         6MTJK6EVTRuuGa3TrK5b38dVHeYyBNVOfbSDbRlni5HVDRqeUd8wbXQyhswikpUeUyvK
         amefor3grLtNTc9+BCrmMmDHdnqDaT9EXrMwsFRHbWIgKP+P6TrRI5nyS1Eg63xGrGg5
         QXZDpvgOHTuVcGA/MIiMynHOo1KoMOfekGWWXlJMPbysCpTIe2KfkKdX9oyLwiWyCdUL
         lDeHPcGipxFzDMM+C30+i85lm1VQleyh9bhjPIqi8C48NZqGbzeg4/ms2ryogcWp+RcG
         W82g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=E+3yltx9/SbrGQo12KvDPz9lyRXo3pkCTffyJmrZ81I=;
        b=aiRw5uK/tI/DAHPnPxAIgDt3PwIOwqF0q1HQDdtyWALH+bLt89V9VzMYu6VDw3RZlf
         IokjH2NXcTPdPYowWn7JWSplJfcUvf2dJtZWkwDKYCVCogtdJokRzJ6KwRgQhGnbM4Ox
         hXhipQzj9/7HjKyVY81QeOzZlAgx5F20qf6IVi/nIuyFFQn5z56aPNFLwWND82hvHv1h
         bQOm20V/RaYHLWmR/G/n6osOvz7PPn42mO8B+FXDpx8WeQtCeXR5/h/imoL9xAZqB/Zr
         6FQFpL+dfix7Aq+7WNx+KUYI4bfxx6XT8Y3CbBw4LAWJ0C4FGRvuKCIbJ6zsz6RHYAEC
         ShZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2lKYCD0W;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s131si524112ybc.0.2020.01.16.10.24.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 10:24:22 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6DBED20684;
	Thu, 16 Jan 2020 18:24:18 +0000 (UTC)
Date: Thu, 16 Jan 2020 18:24:15 +0000
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
Subject: Re: [PATCH v6 14/15] arm64: implement Shadow Call Stack
Message-ID: <20200116182414.GC22420@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-15-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-15-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2lKYCD0W;       spf=pass
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

On Fri, Dec 06, 2019 at 02:13:50PM -0800, Sami Tolvanen wrote:
> This change implements shadow stack switching, initial SCS set-up,
> and interrupt shadow stacks for arm64.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/Kconfig                   |  5 ++++
>  arch/arm64/include/asm/scs.h         | 37 +++++++++++++++++++++++++
>  arch/arm64/include/asm/thread_info.h |  3 +++
>  arch/arm64/kernel/Makefile           |  1 +
>  arch/arm64/kernel/asm-offsets.c      |  3 +++
>  arch/arm64/kernel/entry.S            | 31 +++++++++++++++++++--
>  arch/arm64/kernel/head.S             |  9 +++++++
>  arch/arm64/kernel/irq.c              |  2 ++
>  arch/arm64/kernel/process.c          |  2 ++
>  arch/arm64/kernel/scs.c              | 40 ++++++++++++++++++++++++++++
>  arch/arm64/kernel/smp.c              |  4 +++
>  11 files changed, 135 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm64/include/asm/scs.h
>  create mode 100644 arch/arm64/kernel/scs.c

[...]

> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 583f71abbe98..7aa2d366b2df 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -172,6 +172,10 @@ alternative_cb_end
>  
>  	apply_ssbd 1, x22, x23
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	ldr	x18, [tsk, #TSK_TI_SCS]		// Restore shadow call stack
> +	str	xzr, [tsk, #TSK_TI_SCS]		// Limit visibility of saved SCS
> +#endif
>  	.else
>  	add	x21, sp, #S_FRAME_SIZE
>  	get_current_task tsk
> @@ -280,6 +284,12 @@ alternative_else_nop_endif
>  	ct_user_enter
>  	.endif
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	.if	\el == 0
> +	str	x18, [tsk, #TSK_TI_SCS]		// Save shadow call stack
> +	.endif
> +#endif
> +
>  #ifdef CONFIG_ARM64_SW_TTBR0_PAN
>  	/*
>  	 * Restore access to TTBR0_EL1. If returning to EL0, no need for SPSR
> @@ -385,6 +395,9 @@ alternative_insn eret, nop, ARM64_UNMAP_KERNEL_AT_EL0
>  
>  	.macro	irq_stack_entry
>  	mov	x19, sp			// preserve the original sp
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	mov	x20, x18		// preserve the original shadow stack
> +#endif

Hmm, not sure about corrupting x20 here. Doesn't it hold the PMR value from
kernel_entry?

Rest of the patch looks ok, but I'll do a proper review when it's closer to
being merged as we've got a bunch of other entry changes in the pipeline.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116182414.GC22420%40willie-the-truck.
