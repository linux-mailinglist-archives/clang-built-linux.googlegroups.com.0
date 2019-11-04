Return-Path: <clang-built-linux+bncBAABBOGLQDXAKGQEVFQ4Y7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id E7464EE0E8
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 14:20:56 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id p4sf3061549lfo.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 05:20:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572873656; cv=pass;
        d=google.com; s=arc-20160816;
        b=YPD816q2ItH05huYp12zTny2K1fAtriFE6jjCyu3xud4/cY8OrOTa44AhgFgsXXPQf
         aLowWMYf/swhi7DEWI8LePdt3zHZ5zHAeTwVY7VhFroQoqKuNZxDASzAssg6hWwN3rzx
         zmba2hGIVRQ5v/oQQ5qYRU6pq/AdK+SmcrxUsaw7JyPDZUN7RxPUcbGasoLAQmKSSzTV
         xOhWFjIsfhRbt47qNeSrqxLoUG5OrJtLUv5C8yU6bksH3WI8DW8siVnBGYSu10Xbyx9+
         08qpD1wV8/dxwA1IiF+Cke2yMdOHLth+Zyeu5IHf6X64q7f3gfpyvaiZWaFbf2EfkfT6
         3FFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:cc:from:date:mime-version:subject:to:sender
         :dkim-signature;
        bh=K2jm6HsECF9/Eg3BU2z0JcmObsuLOHjRdq1vXkJdvg0=;
        b=q7Wlxe+z6zauk8mmXTh7mr14KvRcU/X9Yf10LxvM3AevUk4F/dCeGceO2nxoIarpcE
         orNZQzHahmba6uocq7iwmEzcBesooUp5v3Le8nkgGrsTM5NDmqQ045b1AtYS1EW/M5ai
         9eFXqutwtQuGbcucvR2TrfqmjsVZD9kUi18mN8wb9APWMjBaWG72TEAzMpyLH5udQnDE
         FxvH+UVztB5TTHKSK1BdkCWdaknPqQ7thhQ4RxIPGdr6/wp1M4BjBzYeGSj+3ro0IzWr
         jXng0gN1q6L8h59isQdkcPG+pHeo92nNK5yYAMTVcjWD03dPB/Nr3hLA7RnMEmUWFFgG
         BaTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:subject:mime-version:date:from:cc:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K2jm6HsECF9/Eg3BU2z0JcmObsuLOHjRdq1vXkJdvg0=;
        b=aj1fZqRIjjb4EXtCSb0Jm7j5EHwK6GB/QJoJFdlrcQ6i58lfLBNiKh3yFVonpxYplz
         lZ6EI0/ReIDaq/VeG6K6lh1dZJlDxH7W5sXWNQMi+IDaus9DwPfwsawaggkGP7oxgcJn
         yq+2k5EXC3n4RBbE/BccR5Q4oP5U1WHMMw6uHhipdQbST6rCgQMuaZYkRDx1mNQxoTyz
         9y4qZjjI7olIg2bFFI2mi7lpArxl92nVxWU1HBWG8+ToWCxtkU9sOMOpWliDSc8ImiYr
         jjMZpFOhUnPzrdnwsb9saupNPXorBGpwP3gNwgmalBVf2ZqZlVZhyonW6DEdBpy7qa67
         UnyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:subject:mime-version:date:from:cc
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K2jm6HsECF9/Eg3BU2z0JcmObsuLOHjRdq1vXkJdvg0=;
        b=oNambuIALtpf3MJxo9xwvvVWCuJMEjoHH/T/2dm25T+/HVovGQ0vqfG/qD64mzCXA2
         MAQsZ4caV+YQY1Z8mA5OUhZBom/gGOGC1rAiIFYnXFTFIiKvPu87kp5vwJ1qIXQRE+hC
         W6m5LtL2vVt5Aa2wBtyQHh7etcmSfRB7J9vRSjawvqD+8h8PCL9wqhvZGsh2CqMyUcRR
         wGlv7rTd/siDcH3vNGqjO1isaG1ETs+gThI5xBnVj4RbB3kkN0Kh3M/guJimrA4CUiVc
         oBe72DqMzbMfwkjiaMZKtOn+7IyVqKu/AQBoY0QoOb3UIrTxJ1q6Q+tjAiWye32dWMLw
         uiPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW99ROIIKikkphCQztphWvHyVfjx1KZSjfhm1wpm6yYK+WpV3Nj
	cxYLHLA4pDnFBEyTLqIXHig=
X-Google-Smtp-Source: APXvYqwz/GqiZz3jI9hL3JW/2IKWtN7LDpzTUdNalJAgF0CQYv1O26RVMTpNKR2GxC/a1SoquFTDKw==
X-Received: by 2002:a19:f710:: with SMTP id z16mr11414591lfe.47.1572873656527;
        Mon, 04 Nov 2019 05:20:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:48f:: with SMTP id v15ls1253442lfq.14.gmail; Mon,
 04 Nov 2019 05:20:56 -0800 (PST)
X-Received: by 2002:ac2:51c5:: with SMTP id u5mr17167357lfm.154.1572873656180;
        Mon, 04 Nov 2019 05:20:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572873656; cv=none;
        d=google.com; s=arc-20160816;
        b=NAgii+QKjvV1SmeeMRkhxdmsnhcjF21Pybyz6JQIsF0cBuffp729BEGE5AovHCuWv3
         gA6KbjX5o+NxFy2g61QJHs4reWQWgD6HbVhdzaxXDN0e9MqDl6AF95ETV0pB+jFjMfmR
         nzfAvV46XrBn7CWCeNdCzOJZ57g/Ml6yoAbIzvrOPVTnXOTRYLvgvEnIMpyenqKbPZXy
         yACW9h24lZHbxQ13nO5k9JiaTAXpqp+CGDZ6fJxwHSb99UR4f72ruXPdSJLySqnLXD6K
         /4b4liszT2RWRtaaE53QcqcVI4yqrcAl8iMF4iYD5JSjlRuCUfqKPAxBNDe82L9DKpSt
         pZmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:cc:from:date
         :content-transfer-encoding:mime-version:subject:to;
        bh=QHoowyApQ+0wfVOB40kteXKux+HppTqKUYwxAKKgqJE=;
        b=JQa99+3JbYQ91XLzORSwkh7BgBHUA9ZCQGTi9ny9SPsxuwoN9B9pltWRDBZk1GZ/cM
         jLhc5Za4Ncp1zKE3Qyt36gx2JTsOV3FySWZheyeKcsSmtkZqzxluJo10erlz0LLSSLqz
         YGo9G2tnpkMe7+0L/YwCBTXfwJgvBtOFjkXYBePXF0h2e9Bhmiv8HDkDiZ4awb/npIBi
         tMbTBidYqtc2Kv0ucfSozBRxLsei48St8SMEWpWGpGUsM2SYgmcS9C7oHwxTVUehgX2E
         6ZKLZqnMM8TMO4pzhFoSYz9awHPy8mknZsM/scy9VuULyPeITKi35TpK4XoHDUBwSEGA
         xi4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org. [213.251.177.50])
        by gmr-mx.google.com with ESMTPS id b22si1044281ljo.3.2019.11.04.05.20.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 05:20:56 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) client-ip=213.251.177.50;
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
	(envelope-from <maz@kernel.org>)
	id 1iRcHe-00058k-W2; Mon, 04 Nov 2019 14:20:39 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Mon, 04 Nov 2019 14:29:59 +0109
From: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Martin <dave.martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel
 Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, <clang-built-linux@googlegroups.com>,
 <kernel-hardening@lists.openwall.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
In-Reply-To: <20191101221150.116536-14-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-14-samitolvanen@google.com>
Message-ID: <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, dave.martin@arm.com, keescook@chromium.org, labbott@redhat.com, mark.rutland@arm.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning maz@kernel.org does not designate
 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On 2019-11-01 23:21, Sami Tolvanen wrote:
> Don't lose the current task's shadow stack when the CPU is suspended.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/include/asm/suspend.h |  2 +-
>  arch/arm64/mm/proc.S             | 10 ++++++++++
>  2 files changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/include/asm/suspend.h
> b/arch/arm64/include/asm/suspend.h
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
> index fdabf40a83c8..5616dc52a033 100644
> --- a/arch/arm64/mm/proc.S
> +++ b/arch/arm64/mm/proc.S
> @@ -49,6 +49,8 @@
>   * cpu_do_suspend - save CPU registers context
>   *
>   * x0: virtual address of context pointer
> + *
> + * This must be kept in sync with struct cpu_suspend_ctx in 
> <asm/suspend.h>.
>   */
>  ENTRY(cpu_do_suspend)
>  	mrs	x2, tpidr_el0
> @@ -73,6 +75,9 @@ alternative_endif
>  	stp	x8, x9, [x0, #48]
>  	stp	x10, x11, [x0, #64]
>  	stp	x12, x13, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	str	x18, [x0, #96]
> +#endif

Do we need the #ifdefery here? We didn't add that to the KVM path,
and I'd feel better having a single behaviour, specially when
NR_CTX_REGS is unconditionally sized to hold 13 regs.

>  	ret
>  ENDPROC(cpu_do_suspend)
>
> @@ -89,6 +94,11 @@ ENTRY(cpu_do_resume)
>  	ldp	x9, x10, [x0, #48]
>  	ldp	x11, x12, [x0, #64]
>  	ldp	x13, x14, [x0, #80]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	ldr	x18, [x0, #96]
> +	/* Clear the SCS pointer from the state buffer */
> +	str	xzr, [x0, #96]
> +#endif
>  	msr	tpidr_el0, x2
>  	msr	tpidrro_el0, x3
>  	msr	contextidr_el1, x4

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/02c56a5273f94e9d832182f1b3cb5097%40www.loen.fr.
