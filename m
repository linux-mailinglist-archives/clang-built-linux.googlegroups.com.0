Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBQ4PQ3ZAKGQEHUHSXJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CC8157FF9
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 17:41:40 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id a190sf6576772ywe.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 08:41:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581352899; cv=pass;
        d=google.com; s=arc-20160816;
        b=ABSe+9kbGrX7k+GtNRko3PAPo13GcOQozFWi6uQvqUFJAjf1V4vB6yK/MtUOugoT6S
         iEt6Fic459NcpiIO2z18gNakwCq3pf3oKzDkOuvtFOn6F3yZKA2SeIvw0oYpE9+Fkkxq
         F+o4OqGcHCLrKCyh+0qC6Wi5/eszpb1Td9W5eJV/G2Yd23sAPg3OZZuI4XD1VRvpWEj1
         lHJndI+WBAsDESDX7BqqlT+wUYvoEJFdG2RBiU40E4GAm3fMnSq1okBHGjtKtUDso3a/
         rK2V2awWf4cmnx9gNWGnjzHEPCF12DAiUZto1SoKMsVOYFb3ZnJ/cSpT27IA4wM8FXSz
         xjVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YE1wgyD/0ppi15RMaLLVSOSZzVmHjdWuAENsyiLwqk8=;
        b=OUAlSiv0+n9vVQQuY6kT40TR04hNaEJYm8G75/FrEVlfNeXiSS2ao24Pp0AN7SbCTD
         Q9adlb0CLB2HEsjya9R8CY+d5lxBt//hYKblySOIHLN9qrdqlrQAX/sYi6HnlfNE2X7T
         An9W8tnS621j0debJXfTzxx+8zzhDJuG9mPFWLKi5PAK1rbG9+DxgeGpZoWIKfgQ29ns
         Px07j/eD4xoVy2IztZzEi3NYbrj1A3DHsSQUiUENUXdEV+3l53t68sRg7i2QxzqMZZeF
         Q4+XHfFXpyHlg7dZifPzJKA4Ns0vm2Y1U04gh4uzPrIzvmKK15vvCpEzkpfJKEk4pNEL
         EG4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xZ9yor3P;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YE1wgyD/0ppi15RMaLLVSOSZzVmHjdWuAENsyiLwqk8=;
        b=d96A0T9zw6xcQST5XDbK8k1MNDWx685XMK46P5YI5r7ebgqkRHsp14w9chKkRGrWDB
         u/RdtAfhwyMJoMQhcbsKS0jiqkoFx9dkn6w6Rw9tk6kexnrrDSyjmXiz3sYMh2loHPnC
         T8F8C1AIu0Hf4LVX80G9ch9i3KEQpSGvtHv7gkmBY7D3jgH1NV+vW9FiN46KqoY0kquq
         G9FaLXagryJwVzBe0BsIhjsPcWpUPmT8LIgQeCjtLc1m5ZYZXt+Fmj49FhW8aJPOrHjz
         mwNUOhbYpTj61+CqVNNw4eaK9D4Gb44iUTUEhHDB4TpYC77oo8C1v+Weur/1oxkrcjJf
         DPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YE1wgyD/0ppi15RMaLLVSOSZzVmHjdWuAENsyiLwqk8=;
        b=FC3EOCUhCTzfU+OzOXM/Ub+12IxWUrcT5mnyX8Cv/AoGxXBR2qzBHi33EbG9pFF6fA
         inUwG9w/31HiuiVkrIULPrJRgMSAlsSPAgXKOmMl6wC/ot7/XLJo4NnIkC3hdhrIpgVD
         njGgO796v/cryjfGryKQjoMWgewvgb6re7azoJsLSS7ONwUhfzWRMyfu2pKyoH+nKG0R
         GIBiWFednnyDxcQntkeRj2BT+zi0xfeMkLX6WwqZZhNG8s+wnYZAcp2zdzhg9qiuuI1U
         T5E9Dg8OxqAioUqV4CXZUjiGD5Bqcq/a8fFfH+QLf+CJy4RBnULf6lnuncavFRsOPYMO
         0e3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjZOiFZAUYpfdoqkm+X9FREziwLmM1X00lztJIH3mF0vK2leJY
	ZqdAY+gGeui2Nraip6nNqTU=
X-Google-Smtp-Source: APXvYqyRdF7OdIqhJwdr0O/JI+YrKpMsUui9IIPg1FQAgpxLyMr+FvEkuNCwM6VgV+rnG3HBmMqk4Q==
X-Received: by 2002:a5b:80a:: with SMTP id x10mr2146062ybp.385.1581352899528;
        Mon, 10 Feb 2020 08:41:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ca8c:: with SMTP id a134ls1731368ybg.0.gmail; Mon, 10
 Feb 2020 08:41:39 -0800 (PST)
X-Received: by 2002:a25:d24b:: with SMTP id j72mr2189212ybg.374.1581352899140;
        Mon, 10 Feb 2020 08:41:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581352899; cv=none;
        d=google.com; s=arc-20160816;
        b=vzGbI9aWGsfAEo8Na6Pl9Fu1b3iAApQNGFD7Y6LnFE/EykiJ05tW3eEoFRq5KS6wO6
         hW/BzY2PD77Jq1mWbREvScFnUMjghsi49TBtQHra1ItupzqaKxjWzTOuhoigYi2MslVb
         hALcItog1RGvZ1tWDHoXy0ROulZTf1chihJLIUi1eqzjdMM9+wwfREuT8L4GQgOH1fgo
         DCHWawGCS+1941L+ed00faTd3ogvlPvh83UccrknRPsjQhaD2v6LgGuBT2zafOxeu9Ie
         4G4HxZlX8ibzUcEWZbxVV1MRlZTGbe4ykOO0G+Nb2VVI7eeEOWTYiNM3a0ge4uyDqexD
         RRIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UzFWUwmM7Kyr+D+u1TSdxz0P0X+m0J0l2uRRiNemYOQ=;
        b=QjNJTIcmUBW+Cv2nPDtXRIfj0yoVAvJOb+RwlDUJ8P9NO6prZql3XDU5GVCZ2Xfkd2
         k6RQIrS20lPIwLHKHAJe2eYJz5q3xGsW3t5W/bxMX7R+Nsuj1NY4iBAFGfjdN58J8FA8
         REjGAzsQ2cYF6UvEz1iClargxczo+nBVzPm5+P4zCV3aZq4bIyAGxPmq7wI+So0EVUuE
         xEb6ldSAfbDN44e2j6NA0vuoNI3bJN9qk5Ng6EcwbnKR7Iy09DwlhYjNv12FbKhdHwqx
         RC8K7D+ITGH2BlWhDjOLE/UF5j5X2JTDsO6dqUfxMTJu9tceXdzkaFIGlargy9K0015V
         1FBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xZ9yor3P;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g196si57769ybf.5.2020.02.10.08.41.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 08:41:39 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3926920733;
	Mon, 10 Feb 2020 16:41:35 +0000 (UTC)
Date: Mon, 10 Feb 2020 16:41:32 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com,
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
Subject: Re: [PATCH v7 07/11] arm64: efi: restore x18 if it was corrupted
Message-ID: <20200210164131.GB21900@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200128184934.77625-8-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xZ9yor3P;       spf=pass
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

On Tue, Jan 28, 2020 at 10:49:30AM -0800, Sami Tolvanen wrote:
> If we detect a corrupted x18, restore the register before jumping back
> to potentially SCS instrumented code. This is safe, because the wrapper
> is called with preemption disabled and a separate shadow stack is used
> for interrupt handling.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/kernel/efi-rt-wrapper.S | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
> index 3fc71106cb2b..6ca6c0dc11a1 100644
> --- a/arch/arm64/kernel/efi-rt-wrapper.S
> +++ b/arch/arm64/kernel/efi-rt-wrapper.S
> @@ -34,5 +34,14 @@ ENTRY(__efi_rt_asm_wrapper)
>  	ldp	x29, x30, [sp], #32
>  	b.ne	0f
>  	ret
> -0:	b	efi_handle_corrupted_x18	// tail call
> +0:
> +	/*
> +	 * With CONFIG_SHADOW_CALL_STACK, the kernel uses x18 to store a
> +	 * shadow stack pointer, which we need to restore before returning to
> +	 * potentially instrumented code. This is safe because the wrapper is
> +	 * called with preemption disabled and a separate shadow stack is used
> +	 * for interrupts.
> +	 */
> +	mov	x18, x2
> +	b	efi_handle_corrupted_x18	// tail call
>  ENDPROC(__efi_rt_asm_wrapper)

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210164131.GB21900%40willie-the-truck.
