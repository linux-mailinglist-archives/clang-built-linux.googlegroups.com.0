Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBG6CQLYQKGQEFDVMVQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A8113EA85
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:45:00 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id y24sf5030158oto.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:45:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196699; cv=pass;
        d=google.com; s=arc-20160816;
        b=y50eYyPT64ENQiTb4wy4TuhPFAGO/K0Z0YxzftvZ/ZHM+AhrI5srr0jtc8bEin/itc
         31VXaY44JYazbRpaqULUUgWo/LwU1129mhGqXycAH1nHPaGeB6JEzhPzdAKxrs3DAwfB
         ZNjxS2EAbb8U49yFGUNqcjt932+x6GWDPNYzySnn2yPsDyhODbhSD08jRlXIPyG6YEt6
         pGLblTsbbaJKlAz346R9oaFhgwhj9N1tlCw+i8bIFeomVKLWGSYnkeqjva0WqBtbRB/i
         +epDboF8O/ZPb1zHlAKBUo0y/frMuEbGy8U1ZvST6L1bil4knM/QMoTt8aRp8y+n+7Yz
         aXBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/6B6xElK5Ulw5KfQ4jSga3w1WZ+x4GVGGKbSKGwYrFw=;
        b=KCiim3SOTXfgY/We+t/TOAik/QRhMVunfQNKxKNLgvyMsPLB2mtyoywBSSZpnIqWEd
         cp1SNftoEz7fgx4mwq5uE30Jhq3Hj9oRFyufZ7PbnWdCn938MuDXYawNN4qg7kmqEjpq
         2QUGj6UdqIMDXsKoZoj8NEYNqw7PDnGPBd34YiKMgJ+gofsBZDPwrIgPBeIcISMEcezh
         4UjM0d5GGwt0uU+1JMMwT9088ifviRhAbfXJA0Q3X3bXuwiI/fkXMRwVENWeubMOjVCw
         qfYbonvkYuTuz3trfj8wBpM0cS74uIXJ6mVOSb/KszAH7kP2cYNsrq4TrGvxMaxxNX1H
         MbDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zlHbDbVJ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/6B6xElK5Ulw5KfQ4jSga3w1WZ+x4GVGGKbSKGwYrFw=;
        b=RbNxihXc+gHH2wUwef70ENOcHZIIJhrXHyZ6JobthmKZcl6hkLdfjpWaLbVca52XuC
         9pbX6nO0WcpZaVv2gjT7Bse2sQccUrjJ1epwN4m2Kl9BcfKsgoUycvNLsdsVT8vk7Lum
         rYxMcYoWxxwLDvOnDPWDa6pRrvMnQumocDznW80P2JG3L0PZwjmud0LEjYi9dwR5iWy+
         88JWGmTgCNjepo8gUmzpcKrl0h9glyWuly2rXYQIIfYB//5HZHTc1jEFn7VVDSAaQPJ0
         tyWPH3ZAoDdUXdSJADRbd+GNRh1XHC0EMWWhWC00PjF1JtVVR5T4Vwh2XfTF4RZ1G8J+
         Ru+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/6B6xElK5Ulw5KfQ4jSga3w1WZ+x4GVGGKbSKGwYrFw=;
        b=Fj2xhBETcQeiOy1t2gi62Jl1+ZouRR428wUKthdt8WbIxTlNYMgBeQZgg+ZN/6wYnq
         Bb/N80jaU7e3aM0FKeHxrgu1l5+GMKIz1L30zlnEBw+YJ6H1Bf+WMItWPMrFozlgc20t
         M0wPsYu/V0/m0VEHYPHXw1BxGaAkYoa4vgpsL7zQVLrM+pyFTq3In06v3JPDgMfNMJKb
         7lrBZK3y5AjPi9e6s/aTMQ8MRynHyJa9TqfbK2/+FaXlWjmv5iqST21dZcUcuDQVlVlQ
         9DZo9F8ulwHv7QDLM2kwjzjaCcp3y+RIYaJD5oA1U72fu07fK+smI5n9jqLmwRQecb/C
         AWwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWu4TiFk/xw5XzUvp3ogQFQJN9zAD07WYknBPdRHA/x+VlqrsjL
	FTsT6hTfSUzrVY7PoHaXCg8=
X-Google-Smtp-Source: APXvYqxsxY0h94DZSbkTZXzwvWiMJR4RF4+XDd/z75IdpXenP1//y50qBAoac9suUTSwU2Bl+n2L8A==
X-Received: by 2002:a9d:6b17:: with SMTP id g23mr2899118otp.265.1579196699356;
        Thu, 16 Jan 2020 09:44:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7201:: with SMTP id u1ls4138355otj.13.gmail; Thu, 16 Jan
 2020 09:44:59 -0800 (PST)
X-Received: by 2002:a9d:6c06:: with SMTP id f6mr3073654otq.318.1579196699014;
        Thu, 16 Jan 2020 09:44:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196699; cv=none;
        d=google.com; s=arc-20160816;
        b=sIMbiO5ztAzE+//t+iDiy1u8m3NRwkyJPouHXKXCGl5B5LCNzodw4tryGhP9VqQ6kD
         K+b+rxab+dvsIFRmD+WKVV/8eTlT9AazX/+xt2VAEb+GFMg1RG4UY4oxEDUscyszoApi
         jsjeso1n5OjXHm6rb8fUmpkp5YiIilAXBkGhmoRo66FI5AqjBSFXHyptmEKkarhRlloY
         u1BaXZ9N+v4Wf3Ba6K8vkfi+0aRAIhjXyrWGaqu5U105wP/nXj5A4TjIYu8edbQjyyOJ
         Cekt/sq05Sh/KbDXhqYCkN1vF8i0pLscKy9X8i7DX30obIL/mTXn0d03EWTB/DG06Wp6
         TIgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=G/j6WMhn8BNRNQNuOcMub9VLk66ER9XF5cOKw6UOQw0=;
        b=q1qwVA7yRIqKX6AeleIduq8/rfgM8ocQZkc42Ke2psAef9Tc7tJgTrVjgbZqWU0KVW
         VV4Z1qDpRd85fdaiIR1EuKQGfOTQLD2niq6x4LwUUS6PpjDToc1cl6rKzxmBOiW5ZoCH
         +I7h+R0ouqJ1FEE2+mxLIMUmnNYH1VadQe2qQVVPPB0yqE5ssb1fnbZ/s4uBhyqBuHsd
         m6o1jH/+swu3CtRmU9u+E/nb5M7zSKZAhk/r1Dh+i5aamWKkeVdsOZJdmUHC6Nr5D5m2
         Dcnb3B7cvVzZvFDKAb9oywTLFxPLjCJZs0Ffhjp3/TFbCMtj8Mkqu8TSwTp/9uPn9QDf
         16AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zlHbDbVJ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h11si1165964otk.0.2020.01.16.09.44.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:44:58 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D46112477B;
	Thu, 16 Jan 2020 17:44:54 +0000 (UTC)
Date: Thu, 16 Jan 2020 17:44:51 +0000
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
Subject: Re: [PATCH v6 11/15] arm64: efi: restore x18 if it was corrupted
Message-ID: <20200116174450.GD21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-12-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-12-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zlHbDbVJ;       spf=pass
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

On Fri, Dec 06, 2019 at 02:13:47PM -0800, Sami Tolvanen wrote:
> If we detect a corrupted x18 and SCS is enabled, restore the register
> before jumping back to instrumented code. This is safe, because the
> wrapper is called with preemption disabled and a separate shadow stack
> is used for interrupt handling.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
> index 3fc71106cb2b..62f0260f5c17 100644
> --- a/arch/arm64/kernel/efi-rt-wrapper.S
> +++ b/arch/arm64/kernel/efi-rt-wrapper.S
> @@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
>  	ldp	x29, x30, [sp], #32
>  	b.ne	0f
>  	ret
> -0:	b	efi_handle_corrupted_x18	// tail call
> +0:
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	/*
> +	 * Restore x18 before returning to instrumented code. This is
> +	 * safe because the wrapper is called with preemption disabled and
> +	 * a separate shadow stack is used for interrupts.
> +	 */
> +	mov	x18, x2
> +#endif

Why not restore it regardless of CONFIG_SHADOW_CALL_STACK?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116174450.GD21396%40willie-the-truck.
