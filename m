Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBVEERT4QKGQEJUJDXFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id D401023379E
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 19:24:37 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id 8sf5907035pjk.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 10:24:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596129876; cv=pass;
        d=google.com; s=arc-20160816;
        b=bx5tZd0Pwdl+mP/MPGN0GenKm3E9xdCUrUS8ciBeiiXjRgRcGv2rCCYZ2DWrVXGGRy
         pq2p2lyF3xZNAM9mFHh2bnXHdiBcZ9fMtyNYn6OmcxxwFHISA2IlWDIm3qjy1kBUdRWU
         CGEa6sIO3slOYtgp7gePsvGyQO/epXc8EteoITQ4era5ETZ+TfFoRhF9b2CIyU/Z6d/m
         VBGa0Q+1EmTV37RLDUGYXPaHJlvsFP/GPDTMnHUC/PBNHT5tPETe67xf2Lu9knPJg6w3
         fLwIJlRmNnV+pBySQuYs9ixfPO8V3mKcZ1VWSfG1jnpSF93w0H/Ph0mSJxe8f0Z/Wasl
         8a6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=KffakOcmpnG2yQ2nmyysoPkcj165pqUvNi+AQY/iUbs=;
        b=wLXhlnBafEbiMHf3mTKO+UdBmaIft4WToXZBKmLtCru/vuYQOyZ87GHZFGZJmv/LwE
         hSe6MqCmsqrBXTAQyBOUK0xe1Yfmt9lbgGZyIXWhgNCQQKN3Jj/tMo9wNUSj/J9SZs5L
         pC5cFTaQzz0Uudh2HyljFgvMFlRaXdlnVjYGRxYB6nIq8tGohuOkr6kJEfoU2Z0+iyk6
         r6niRw0phlN1MFsA28H5rHgnZVGvXxcXKNU1YWOl/AYovaSl0wpuf9a1xQwE3tee92tG
         zOZ8DxxNFrRao5agFuioLuX6tqinNOCZMu/UDm46+5PY3Mf283WAOJ30vDKU1dv8oF82
         lOyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KffakOcmpnG2yQ2nmyysoPkcj165pqUvNi+AQY/iUbs=;
        b=C3rsbi/+q7itYSG8BilUiwmclktmlZYzGnfLI9wsspgaJSkXnXWvq/OAQV4s/xiMfB
         T2p6wBDFuhZ2Zm69p25TgBohAMul9CHcRW26faDAJLSp0vAbdh0XsFw2UfsPPQAolBCf
         sZuyUEfU9JoachpxK5iv2fTAdSHU2ATBlwg/roXZqAQB+FYDoTUWl3/4mkRdEPsbMqWy
         DW7EgUMZ7udKXXF9VXl+d4Ud1BeRAPHKQlFLgK7fYSAKZiKvUbLPtnBGVZtk52XZgv12
         Q4TLljv2QHIQeVzvjuAevzwaeQUOuhGDCUOsNLffT2+wpQidxZdjJOkoQviO5QY0hH+B
         rOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KffakOcmpnG2yQ2nmyysoPkcj165pqUvNi+AQY/iUbs=;
        b=WE16cu/TgAd0ZLYwUKSzFmozeyIn20vcnFCzLqPGgAJIKg4u1ePM05FvKBw4vHNWfV
         xqz64Dis3ToG4uX4VD/tqMpbI1jgqyXqkbQGCAxg46ch7kOyNZCRAFYpIJ3TKodchdQQ
         RgqrfqS8sU3WxM8BKduAjH7I8XbLt6gekgP1gPzU6W1nLo3ieq0XmBdC4zGpBUOqKrRD
         YD1vekQ/8uoNxW9ykq+tfSDDHEU1nj3B9vU/PTIrLLL7+bIRkZIUfp2Z6xkGskrFZzov
         +/qeDexRLfoPeDrzURDZkSJoUywAkVLM34syWxHgS3NwvYMadsFrA+/N/e6ArYpQoBQS
         LICw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Hd7kYEPHRirYWNPNDVmMIpo/28gKq8CVa6HKsB6LtnjR4Huo7
	QyiHc37s3Wxe2WOZDfO3vjA=
X-Google-Smtp-Source: ABdhPJy2alZziy6FFXVOxeu6dQEQT7kSaIm8wk2lp5NA7n3hywmY69pDkUtSZET6fMRHYokx0N0r4A==
X-Received: by 2002:a17:90a:3549:: with SMTP id q67mr169555pjb.56.1596129876260;
        Thu, 30 Jul 2020 10:24:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:524e:: with SMTP id g75ls2114144pfb.10.gmail; Thu, 30
 Jul 2020 10:24:35 -0700 (PDT)
X-Received: by 2002:a63:1e20:: with SMTP id e32mr37047797pge.429.1596129875823;
        Thu, 30 Jul 2020 10:24:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596129875; cv=none;
        d=google.com; s=arc-20160816;
        b=GorkOpijCgZ2QRKgO9UzHC8r78NUYza3ei45u3TTmEA2qdnZhxoM0A/HTrOMhXBvZw
         8zb4Dy3BGc9OSDbM4sVAIGe/2VRWOxFy7IQeppo6pj3hP03uA4X251HtjoUirzl/2WiX
         13sFunvASiaeYKIcS1cVbLe7XO6Zf0WjwveZ31WFieaoTLWJHbaIQjxxlrUWq6ib5oHZ
         ZqtVrtzv+/1IUBqbbAxy8nC6s3y3YnisjmqI0jRfbiAywSnWJe2U9d0/C1O6Vav1BLK7
         peOzsq1vEXkjEbSAI9NECD2CZcDmNBX6TJT3HIRD272SQV7CIKPr4EBa1Td2BQZP3ss5
         yRDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8aIdaaRFPPg62aJPKh6x2yB3gjKERGTD5dzz36fI410=;
        b=YuJSdMytT8nP+r0+0Ay5QwSXVup53KjKzeJQ2lRPqagvaMVSzzd1KAY4Za0kp9vJuL
         ACmAEKKoaet7LMUxenCbA5i4gvtZmkHvWpSUMeRjoIAtqCOYq+/iXWfplCFf3wcJ2Fxd
         kWTANs8iZh5aYYdmKdBr2WHKi6vWTZzQMMUjRq8merp4k+x8tbxfXA386g9IB/Kms8P4
         uetNF1qjDJwP4w2l07XYAczFTaEqP5tKQS6y7eFoNL5SZKmVjudvyLV/9ZEtQLAYNNg/
         S4N6LhI5+TQ0d86m1NH3/dVwZKNM2csbT1N1+ruaJP5Gs8IaMxT1elyUyfb819/SGTf+
         +KWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b13si398369pjl.2.2020.07.30.10.24.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 10:24:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gaia (unknown [95.146.230.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F144020809;
	Thu, 30 Jul 2020 17:24:33 +0000 (UTC)
Date: Thu, 30 Jul 2020 18:24:31 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] arm64/alternatives: move length validation inside the
 subsection
Message-ID: <20200730172430.GC3128@gaia>
References: <20200729215152.662225-1-samitolvanen@google.com>
 <20200730153701.3892953-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200730153701.3892953-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org
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

On Thu, Jul 30, 2020 at 08:37:01AM -0700, Sami Tolvanen wrote:
> Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> sequences") breaks LLVM's integrated assembler, because due to its
> one-pass design, it cannot compute instruction sequence lengths before the
> layout for the subsection has been finalized. This change fixes the build
> by moving the .org directives inside the subsection, so they are processed
> after the subsection layout is known.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1078
> Fixes: f7b93d42945c ("arm64/alternatives: use subsections for replacement sequences")
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
> v1 -> v2:
> - Added the missing Fixes tag and dropped CC: stable@.
> 
> ---
>  arch/arm64/include/asm/alternative.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> index 12f0eb56a1cc..619db9b4c9d5 100644
> --- a/arch/arm64/include/asm/alternative.h
> +++ b/arch/arm64/include/asm/alternative.h
> @@ -77,9 +77,9 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
>  	"663:\n\t"							\
>  	newinstr "\n"							\
>  	"664:\n\t"							\
> -	".previous\n\t"							\
>  	".org	. - (664b-663b) + (662b-661b)\n\t"			\
> -	".org	. - (662b-661b) + (664b-663b)\n"			\
> +	".org	. - (662b-661b) + (664b-663b)\n\t"			\
> +	".previous\n"							\
>  	".endif\n"

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

There are a few instances of the .org test outside the subsection,
though using in .S files. Are those ok?

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730172430.GC3128%40gaia.
