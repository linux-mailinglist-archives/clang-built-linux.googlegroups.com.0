Return-Path: <clang-built-linux+bncBDV37XP3XYDRBL52WTZAKGQEGNSNLJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 1242B164371
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 12:34:08 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id z3sf2986702lfq.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 03:34:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582112047; cv=pass;
        d=google.com; s=arc-20160816;
        b=lISWjoupz24ey7mqYvsF8uQeHhGFYrlAG16LS1Yc/i9pWaWiawh53CTmPUifKsGf/O
         fdp+AHfEpdZBDt3iiI2FEASPL6kas/f1oBXgM6RgDXriGLrcZgeLKrKDA56s0/2Lwmr5
         pTcqe0kAo45O2yKgvT5IlnEoFddwS2a7BnYwy1swFAorNXeU4lqf+5X+CkdCdmu8pzpY
         n5jjtybO2NQiBK7kP+ebi8pNIIyQmbtbhBuqczxdaGEC09Sscc+Lv8Zwz7eBMVceN+Z/
         7AoJV+FeGhxyhdNj1utjTgOCxXEQxngsHN5cWPcgxo7aBOrXDKBW0TZMTsZ5n5UIEVIJ
         3T9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=is8szXVlRnCulBDpJ02OUGtt5tLJYQGUTHxFUQE7SbU=;
        b=y+6yXwW6wGuEbWcXpD07EEsTcOjwnA7MOL309gkZMPjsGPf5xf6MB9PxTUmXvRgpqh
         6ifyS5ycbg+QOh2gqK6+7Qjsm9eCKDdUkl3EZWMZ2GRwcf43nCF66IZK7WWaUeVaw1Nf
         wzAIosQjhKIUW4Fd8Mmdrh6PE8R1SyFUAHQaMQkXMRKkW7h16mO/5pN6jS/co761EMRc
         c3/D1CmA55T0NWb1tFAoB59sV9AL74jlM8EJkvdPu0NVlrv+OloSZL6GB74hZii2ZFW+
         OAiM5W3UE3cUV5W9HTXkskcYEfHPsz6+I5919ix9QToZtyfBct2gaI5PL+0K/6GLT2I5
         sQbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=is8szXVlRnCulBDpJ02OUGtt5tLJYQGUTHxFUQE7SbU=;
        b=Zcg3R2VpuohmPOB4FvrF95fpSghDGQncg/Z04R8QjVc+cr6b/yq/1SEFxBeZ99OUTK
         2mo4KZd0o5rwvDdBi9Z2Xkl+83yMtEYqtJKCBHhkrylSe5KwIOlRzuEc2bVtN88bN1VL
         dbpIJSs/BKAcXGcE4Y84JD9uSbFbx3VXcLTpiEWAuI9ECelv48//Agtj+gg+5WxGOijx
         EIGvLMNS9ZuU03J8J3cM3jCVXoE/8sMRbZj0thStLt5kpsWHNxAfZU6jyTNlt7y5RPgO
         FZkq5G3xRcwxfmp9DLxIn7UkNcoCINzZnTAo0PuyU95HosWD+KG4q+RBgs3YUCEQDnn8
         2+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=is8szXVlRnCulBDpJ02OUGtt5tLJYQGUTHxFUQE7SbU=;
        b=txLgnI/4LMIgdIA+HNbA3aqdiPQTxEQ3zr47ROmXRLFVvQo7fINTADuaL5w0LAwM4c
         cYwJMHFQ4r0LZKSDd6s80wr5xIOzwyhXTjg9xIdXtaxS4emP9536CUxDoxwQH90vMIvm
         +dBPrzDcrAfJBpcFSzqcDfqTBBGoh3+GNd6ZXYqcp62XeTBEgbL+ZJlshYcORequy3T+
         Wppw97cF2imEl1x2UNjgaYYy/7T4bzyiMfJC4ON3sSjYJlMgD1JgZj5uAmMurus2AlYL
         LMc+LTZwW/elh35Su200mmm57enF6RtLFKFWLLUEJYurqRT1De3HSrHjP/9wchUWQOhX
         CDwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbTQV4GOqZ39/7z8Ru9Tq0tWAQyOqbSmzjaZhS+x2NYSrdJTRg
	jGZkispVpD2JAYizkgkULtU=
X-Google-Smtp-Source: APXvYqzZ4ugEto6XWwigjF/G2/OPeG7UZy+UzOyMBm+3piGP/1ZYwxzkDHLyaAE3vPklug2amJUL5g==
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr15837100ljg.166.1582112047439;
        Wed, 19 Feb 2020 03:34:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9c85:: with SMTP id x5ls3621536lji.0.gmail; Wed, 19 Feb
 2020 03:34:06 -0800 (PST)
X-Received: by 2002:a2e:880c:: with SMTP id x12mr15980827ljh.44.1582112046601;
        Wed, 19 Feb 2020 03:34:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582112046; cv=none;
        d=google.com; s=arc-20160816;
        b=xm/tPI35rAThd1iyiBmFViRfxxU4CIn69ZrbSpuoiw8ImiE6JYZV5cS2nahqvNi++u
         KcgNPPWVV1hamOllirWfezWpaQ4gEf0IRJsc/ZSRGu5njCayU2Z22OUCH+CyuFLxoCRx
         m8lv6TMPLuuqfM2hRvnrjV94pccMDWRhr/tgigLGO8l0/ZcHo+CANXfkUO1WFdTtLZZZ
         ROcN3Csegb5AdsdaBKy6sr75S7YmJJvJntcoCjl8pFsw38v1ErpBNaForaCT+PdmEFhE
         MDeKdOSz20vM9RewV6owT+Kw5iBqIg9ZQvGxtwowCc4n1eiHZmqebBMPArJplmhlUTEU
         fdIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ut/0EMjOR/6U6ZnSunp5g3bA54seIRMbAc7PD2SvjwE=;
        b=R/fiT6lwoL5O8s3KIkTvq2d3OX96Eexjx89d+FNrqm4im3WettBqMpQupMpzsdJVzh
         ignRhBbW/bujDrnWxI+alWrykzTHRPWKakv/ruPcROmOkaNROHL1JTUwYH/r4oq8St3K
         mEQh+XNFMr6AqtEyq5BMX2GA2jMCawNhExLgvZipHwY50xOACOawrJSPUoC8yA8uAg3N
         wGNVGNfr11lZZBEFOgKSRi4ABY/cUqJWEMByZ6ZoUtC7sZmU44ql83WWk4H4i0+5WTe7
         8LtGxfPBH7h4NrkcMSBqMk2lgRayKp29ftLUacNk+seOb2p/I5GRbjVjM8XjK+Z0s+uZ
         z0nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j30si103148lfp.5.2020.02.19.03.34.06
        for <clang-built-linux@googlegroups.com>;
        Wed, 19 Feb 2020 03:34:06 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7CD631B;
	Wed, 19 Feb 2020 03:34:03 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8AF023F6CF;
	Wed, 19 Feb 2020 03:34:01 -0800 (PST)
Date: Wed, 19 Feb 2020 11:33:52 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, james.morse@arm.com,
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
Subject: Re: [PATCH v8 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200219113351.GA14462@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-5-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200219000817.195049-5-samitolvanen@google.com>
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

On Tue, Feb 18, 2020 at 04:08:09PM -0800, Sami Tolvanen wrote:
> The graph tracer hooks returns by modifying frame records on the
> (regular) stack, but with SCS the return address is taken from the
> shadow stack, and the value in the frame record has no effect. As we
> don't currently have a mechanism to determine the corresponding slot
> on the shadow stack (and to pass this through the ftrace
> infrastructure), for now let's disable SCS when the graph tracer is
> enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 66b34fd0df54..4102b8e0eea9 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -535,6 +535,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  
>  config SHADOW_CALL_STACK
>  	bool "Clang Shadow Call Stack"
> +	depends on !FUNCTION_GRAPH_TRACER

Fangrui Song has implemented `-fpatchable-function-entry` in LLVM (for
10.x onwards), so we can support this when DYNAMIC_FTRACE_WITH_REGS is
selected.

This can be:

	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER

... and we can update the commit message to something like:

| With SCS the return address is taken from the shadow stack and the
| value in the frame record has no effect. The mcount based graph tracer
| hooks returns by modifying frame records on the (regular) stack, and
| thus is not compatible. The patchable-function-entry graph tracer
| used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
| to the shadow stack, and is compatible.
|
| Modifying the mcount based graph tracer to work with SCS would require
| a mechanism to determine the corresponding slot on the shadow stack
| (and to pass this through the ftrace infrastructure), and we expect
| that everyone will eventually move to the patchable-function-entry
| based graph tracer anyway, so for now let's disable SCS when the
| mcount-based graph tracer is enabled.
|
| SCS and patchable-function-entry are both supported from LLVM 10.x.

Assuming you're happy with that:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219113351.GA14462%40lakrids.cambridge.arm.com.
