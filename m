Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB64UWT6QKGQEUE4IT4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8732B0292
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 11:12:13 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id x9sf3582976pff.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 02:12:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605175932; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xn/cZeVSQDq2HtOGA+75S+B8YAl+vrBeEag7hNrG4U+6heO/Ru8EYSe1wy4nXbJijF
         4l+qsCBzY2Jkk1uR4PPMHT33kvhkTotSlaKeFTy2unh9KEjh1e5mL5PRaDQmk22runDW
         9mvToW15YzYOZ0JEyQiicGlZFBQSeAoYdwGrFc8TYBmez4IgSg2w9hmKmx2eY6GqUXM0
         V4bYclvcYIF2BmdrDyW16r0t+TilX7LahPQY7c4jiYGHLflpoVskCtMGKEib8N07/f50
         Q6uXzmtJg1lcllc74rhtzMwS90HuYQ79w/DOBVKgaOwstHEMaN972g3m78ngIqWZrM0a
         465g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yXGYoZoHQGjUXPeYm87OkG5/RHtSb9FkL93Wn1BlfnQ=;
        b=fmj2UHFO76P6va8XsdVl0wPBVXhQrTX77pBK5H7r3Ld9j0MWhURaewXxIS4OPldXvi
         +0eglGzY5yhgJzGEIIuWelCU8gIW1vPDPtiIJPf1YRY9HOyaTREkIiWC2vM/pRHjlalP
         s4IJRPESRjungXph3PYS22tNTA0E4V569+t8YkO0mn4emazfpP6DeCTr1c66ioV4VCmN
         gHS0GyiXn3Gz7GgUgypIVZvDTDmsvmw70wyPUzMRzQEADslSgghAIBq2GiYY15EhTZqP
         7Cc65ba1dghkJKpUGlgejQKTPAKkkMWH0INmM4rFyJNZSuG9FnyAAqZgdixt9QFpzLGg
         6s2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1mXVRfNZ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yXGYoZoHQGjUXPeYm87OkG5/RHtSb9FkL93Wn1BlfnQ=;
        b=p75obVJS1lY6i59j8F2klmN8KRZQiUtOM3IQzg/ds/cNOdO6zpRR8TkVKrjZY9u5JR
         uBPaRWWz1UAm+4AaeFzMuj6nE5BQbZ0a5bwBxn5LDTGchDXvb9fNGeCQRChUGPVJ23Sb
         9cmVXHUKCvlOPn+eLN+7Yei9/+C3rkLDOPekmn1LzR2NvKdPSmG6sj3+PSfyUqM54alr
         thF8GFhulUiOVCK/4ur2Z3yQhrWJg26/DuZHSpXfi1P2JzNNXdlrQtmbWITYkvYDwU1R
         2JKSVdrN+k4ia4/hhQYt1fNZwp1nz6g2f0utKPPSj5D1DpoOka2a0p31okTibWNtbQYn
         XXRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yXGYoZoHQGjUXPeYm87OkG5/RHtSb9FkL93Wn1BlfnQ=;
        b=HRYLCngGvMizgqs1wU3og2B/+9MmhYeyrz9gWYdzDO7tCXNhqJxSR46EFiFcrBKhOS
         U72+Ow+HqxX2vF7GWg9aFMhlvaikWvqUmLBmyc0jrJ9/8KTb9GxW+1ohIOg4UPP+aC7C
         hWOURpUqiZDcjKX19Y4h4D5IL8w7m0qrGYGV/JB0jQ1UYJ+bBbNYFJTmQCe3iNKCKLjR
         rt0anW8e0CaqZU2glJHZKQDbcpwIXS4tMXpfNEcWrupxvFgxCl9nqTSlVAY4BdPH9hmu
         +rfcdNuXiBUVS9w4xanw+gOTpukJ/dvHkc0RD/4wT7jfJ0iPO+A6bpuKv5zuVPfxnaf7
         OHGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CpYkgx3vczixcS5boVfscFySMtFAk2UEWNVcnp3Mu82qIYMxc
	B26KKlQ6rjMwEXyDnzyFqCM=
X-Google-Smtp-Source: ABdhPJw1NWvrUMFKbfsJEBwW0aKnn9vxOSUOuHbYCLf3jgBW86bD1OV2rM8oViaSZQwvwGR5tfhI7Q==
X-Received: by 2002:a63:215f:: with SMTP id s31mr21427339pgm.258.1605175931727;
        Thu, 12 Nov 2020 02:12:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ec06:: with SMTP id l6ls1270766pld.8.gmail; Thu, 12
 Nov 2020 02:12:11 -0800 (PST)
X-Received: by 2002:a17:90a:9504:: with SMTP id t4mr9091740pjo.82.1605175931178;
        Thu, 12 Nov 2020 02:12:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605175931; cv=none;
        d=google.com; s=arc-20160816;
        b=tg9iAd9W1ZKcFKTCELNcu/TKxEwzzn4NT8sAH5Ptt768eUzjQUaB6SdWOmmFJbZxfs
         ery2i4t4OTRmf5j03P7fR94gaSFQHyFPh3+9dATSo6WOapxtyA6Of6RSqDfZvFGzX7Ly
         NM8cPov+RinVH9R8fAMGgMTzHGzvGIBiZQc0nefDfvNB/ZoQGt81lmY3su1zXC2rmVdQ
         nMHEyH7xGyL2GwRSL0tQqQLDA6w61i5Ia4hNr+S6Mj2TEf93DD0BR7y//xp1qc/KnMO4
         DD53KYxoN2bvBHxRaIPC1WcG1LdCkWpr904YslWKAisaCZhe75S+TYvR+VUCKkOJIDVe
         +UEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/kBfUGXmJAPFv/o04pfuVn3jKDi1ff4f5uwTh1EXA8o=;
        b=famG3/0wxyCXtQfJoO7caASCh1vSnx5nbhMXAn2NtJcVbUZuAxUnylYhmBImj1soQs
         SNFq/bcCizfqM/tvtYM47P9gT+4Zt5gOzcfJ6G7YN2MSi2pkQ3AgbD4gbBJln+CeGaxj
         bYqLn6kkrmKpDRYW1nSlRxfA3locTDTPr2olNeJcDDClnrtDfHw4ldlC4xrdYtZnPOJE
         TF6d/H/Jtqk7a3H1Rv7VvT1dCgZhanuGX5DC2XLeqcmVuPaz1xRcf2NgZQ8thxnmHux3
         VTJ+9WNUNMQ8PoJ6ej7M3khzWsYoYcEBuLgQ1S3tJ+/mRgvlpeLSWgfsVz3s5JDBE32K
         IyIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1mXVRfNZ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o24si135270pjt.3.2020.11.12.02.12.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 02:12:11 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7263B22201;
	Thu, 12 Nov 2020 10:12:08 +0000 (UTC)
Date: Thu, 12 Nov 2020 10:12:05 +0000
From: Will Deacon <will@kernel.org>
To: Will McVicker <willmcvicker@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Andrei Vagin <avagin@gmail.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, kernel-team@android.com
Subject: Re: [PATCH] arm64: Fix off-by-one vdso trampoline return value
Message-ID: <20201112101204.GA19506@willie-the-truck>
References: <20201112001422.340449-1-willmcvicker@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112001422.340449-1-willmcvicker@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1mXVRfNZ;       spf=pass
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

On Thu, Nov 12, 2020 at 12:14:22AM +0000, Will McVicker wrote:
> Depending on your host nm version, the generated header
> `include/generated/vdso32-offsets.h` may have the bottom bit set for the
> thumb vdso offset addresses (as observed when using llvm-nm). This
> results in an additional +1 for thumb vdso trampoline return values
> since compat_setup_return() already includes `vdso_trampoline + thumb`.
> As a result, I see a SIGBUS error when running the LTP test
> syscalls.rt_sigaction01. To fix this, let's clear the bottom bit of the
> vdso_offset in the VDSO_SYMBOL macro.
> 
> Test: LTP test syscalls.rt_sigaction01
> Fixes: f01703b3d2e6 ("arm64: compat: Get sigreturn trampolines from vDSO")
> Signed-off-by: Will McVicker <willmcvicker@google.com>
> ---
>  arch/arm64/include/asm/vdso.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> index f99dcb94b438..a7384379e8e1 100644
> --- a/arch/arm64/include/asm/vdso.h
> +++ b/arch/arm64/include/asm/vdso.h
> @@ -23,7 +23,7 @@
>  
>  #define VDSO_SYMBOL(base, name)						   \
>  ({									   \
> -	(void *)(vdso_offset_##name - VDSO_LBASE + (unsigned long)(base)); \
> +	(void *)((vdso_offset_##name & ~1UL) - VDSO_LBASE + (unsigned long)(base)); \

I don't think we need this in mainline, because the sigreturn trampoline
is just a bunch of .byte directives and I removed the sigreturn code from
the compat vdso in 2d071968a405 ("arm64: compat: Remove 32-bit sigreturn code
from the vDSO").

Might be needed in some stable kernels though (or we just backport the
patch I mentioned above)

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112101204.GA19506%40willie-the-truck.
