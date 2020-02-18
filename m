Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBYNNWDZAKGQEB7P42LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC1A162B1F
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 17:54:59 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id z19sf13629980pfn.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 08:54:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582044897; cv=pass;
        d=google.com; s=arc-20160816;
        b=aS9fLTbaujwSm95JYZc0ZtazmzTf3PPzdkHwJ4C6EYpyFbmU95B3bxZFHyvhSJCN0g
         bxDnGwigsjPnT9WxE0ro0E38mxarkRb+YsRVbhKrfovWyUSM7tqng9b0FaR4zEcmzCZD
         pK4MUEGtqYS+wk5zpc2YNOj7gedyyqZWGJKYZISvCB4bVyUoyBXlgF63JHMY9N5OyxKq
         sU7MhmxUq1b+Me5ENknj03P7ZQ0DRZqoblImvpnoeaeiGSFUkn+Hv1nyQYnKDLkZ/Rzt
         sLLOCMDZcbAcoAzd91Z7EHIxEHDecPp3tNulDURvAwrEU++7lT+QkigvgrepD5qFTIzK
         OpcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=h6uzPSk/5/CEafoNVckDOn5jBElsz4x9VjgX9BPMsnE=;
        b=mmv1OTacebMvGM40kMGQ1UOcoHri/gpFPzCRvB4yO2KFma7FQVlzhkj2L7EGia3rXo
         ZGL6LUMgfFxKgKoerhpO4EdCHSPe6Cqr8SuYyhoQFzb7/DX0GSSVksXc79n4p4eadKnj
         wtuN9Alqyr1phSV8T227GEIcXL81x9FYOabRKGouRl30CyObR2SKUjMALGAK7rIg2SDq
         jDjSNTkxdsUVfmciVboYrLhxtP7Aey+3ReQwGmTnau0uTuK65TmQ+dwDiJfDGzEs6Qt6
         pFK3l29J91vQz/rzg22D+MOEGrbwyD9Vs155aOEOp/uVQNvqT8jQJx1sVElaAq/tQwgh
         Q5HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0nrbVaNn;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h6uzPSk/5/CEafoNVckDOn5jBElsz4x9VjgX9BPMsnE=;
        b=NrenmxjOIcxeD2/AX6QlVXxSHXsSipKBX1G4DfdOXnAXN9tN0TMjpFYiiyxI94UQ+T
         H3NQuhUDoyTW3+ZI8EYeZ7d9G6jODTprvreDZzS4Xggug1H5bUKt8SWAGbK0qe6choc1
         14BiiH0dVsxwOw+q3XGSItc3wNbdWY1gE5eP+fim4k8lnrCbe7mU7M75XmAgSfnMxM/7
         S3PA3o9PdobJovzk+2b7OmMNuqZ5abJgOGqmsgVUl4f8s49rUyhBUn27n46PMvfBWCvA
         XZRNYOYOWZ5kQAU/PyZ31EJtysgWZcIgAtBZUcI+eAZeJ/F8e9H7UTWHYUcMJGX5twZm
         GaLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h6uzPSk/5/CEafoNVckDOn5jBElsz4x9VjgX9BPMsnE=;
        b=ZLVrHJMz+UapRNDO7kKbNA4wixYYO/ya8sYWj16htiKonOyTEQUfpcZ7ZxFk6vUEfm
         lSUPbr2YCOiGIh5KMN9BZ0iwjcWST91rr7sF82CRgHL0AjbpmyI5Y1QDphxRe2wTZAK5
         zP13FeK0b/GYpKMOhqv9G/LaZj4itLtzqyYBjY6O/kc9sAzSYNZw7DcE9B6uPAqZOFPl
         wbMyMwXWrO7dqjmarXRsI4KsJnFUb1otatvj4rBdTgo/xcg0FIh43YMOzNs90dvcnIT4
         oNWSZtuisuOAxF9k1ZlUkTIhwC+BpZ4yyw9LP76hcPqj3kC+tEVTX+xdT9UaRPSFPrd5
         thHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXe+WE8N38qYzW/PQyWA4Oh5F0dWlh3qul1K3NXYwQ/6Duk5Kvm
	hO8FaS6NZiVmB4wnC8nC5HQ=
X-Google-Smtp-Source: APXvYqyqQNgNBCiGva58EJvk6t6VNcfeCbpRqXICPJWZf1Q5q58qZyKNZ5SXwx5+AE+glS+k935TXQ==
X-Received: by 2002:a17:902:aa49:: with SMTP id c9mr22348548plr.145.1582044897598;
        Tue, 18 Feb 2020 08:54:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b601:: with SMTP id b1ls6216520pls.3.gmail; Tue, 18
 Feb 2020 08:54:57 -0800 (PST)
X-Received: by 2002:a17:90a:8c0f:: with SMTP id a15mr3881849pjo.86.1582044897139;
        Tue, 18 Feb 2020 08:54:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582044897; cv=none;
        d=google.com; s=arc-20160816;
        b=No7VGaLFi4Yv38rwbrJnZHlyOouf8QoG9d2salqOY+i7R0Rj7xR4Z1sd0fGGdS2RdH
         t52pzHkKKVJBHymLJtOkWluIm2xHAax0YbfJKHYXia6Us0S/eF24klV5akKiXpjn4yMb
         uIKBDzC0D2vach85qC4jS8zi8e/Wygv7zRa3TtU4BwUY1cKmeSJhUJtrz8C7xfsP6tod
         c1n5a7H61fv6uodiGtGJ3m05V7XnRCzHANhA2nwdwy/V/JQtfZTHeziCqc+zHoTmdIaB
         B2JhdVAEsW6UBqzSx1EPirH4eBmdtbu1c0S7IbCHKvpzUQx6EVGznfTa7f7t0GSVJIKF
         7sAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NIySZThBvBEhRI1vB4LmyzVx7GJ9O0a86T10LOGTqB4=;
        b=DyIpsQsLyIdlRBPRM9GNI71+ujSqoSoS0y5nIZNfR+IyBrb7Ua6NdK7wHXN7MMIcYR
         EdWxzYv+WS8wOk7kNbIdeAD4CQZXCeaPWVWPkzuph0T7K8LDWw7RLSEwCQPmDcgXtMPO
         HeVPC2HQpcctfeG87H6qBxwkvXjWDkBLjbhmxSHI/NkDu2hgGwaZoL3YOA1xcw6Zumdr
         almflYr7BW6UAQQBNyIA4C6Gq3vnU/969Awy2wJVNFqQJexsg2h8Kb9uBu/QK0pGOyDM
         e3kMDL9YmKf8RbgtYGe9oZ/z7NvLnGPO2SNeqqWqRywrysX5EjQ33r3ijdlhL41CPq1Z
         UYFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0nrbVaNn;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x12si165567plv.3.2020.02.18.08.54.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Feb 2020 08:54:57 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 990672176D;
	Tue, 18 Feb 2020 16:54:55 +0000 (UTC)
Date: Tue, 18 Feb 2020 16:54:52 +0000
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, amit.kachhap@arm.com,
	catalin.marinas@arm.com, will.deacon@arm.com,
	samitolvanen@google.com
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
Message-ID: <20200218165451.GE1133@willie-the-truck>
References: <20200218164906.35685-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200218164906.35685-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0nrbVaNn;       spf=pass
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

[+Sami]

On Tue, Feb 18, 2020 at 04:49:06PM +0000, Vincenzo Frascino wrote:
> The introduction of the commit e0d5896bd356cd broke the compilation of
> the kernel when the selected compiler is clang and it is used in
> combination with "-no-integrated-as".

Curious, but have you tested this change with the integrated assembler as
well?

> This happens because __LSE_PREAMBLE is defined as ".arch armv8-a+lse"
> and this overrides the version of the architecture passed via -march
> command line to the gas compiler.
> 
> The issue was noticed during the development of pauth on arm64 and an
> error example is reported below:
> 
> $ aarch64-none-linux-gnu-as -EL -I ./arch/arm64/include
>                                 -I ./arch/arm64/include/generated
>                                 -I ./include -I ./include
>                                 -I ./arch/arm64/include/uapi
>                                 -I ./arch/arm64/include/generated/uapi
>                                 -I ./include/uapi -I ./include/generated/uapi
>                                 -I ./init -I ./init
>                                 -march=armv8.3-a -o init/do_mounts.o
>                                 /tmp/do_mounts-d7992a.s
> /tmp/do_mounts-d7992a.s: Assembler messages:
> /tmp/do_mounts-d7992a.s:1959: Error: selected processor does not support `autiasp'
> /tmp/do_mounts-d7992a.s:2021: Error: selected processor does not support `paciasp'
> /tmp/do_mounts-d7992a.s:2157: Error: selected processor does not support `autiasp'
> /tmp/do_mounts-d7992a.s:2175: Error: selected processor does not support `paciasp'
> /tmp/do_mounts-d7992a.s:2494: Error: selected processor does not support `autiasp'
> 
> Fix the issue replacing ".arch armv8-a+lse" with ".arch_extension lse" that does
> not override the command line parameter.
> 
> Fixes: e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated assembler")
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Reported-by: Amit Kachhap <Amit.Kachhap@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/lse.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index d429f7701c36..5d10051c3e62 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -6,7 +6,7 @@
>  
>  #ifdef CONFIG_ARM64_LSE_ATOMICS
>  
> -#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
> +#define __LSE_PREAMBLE	".arch_extension lse\n"

I'm ok with this, but Sami assumedly changed this for a reason in
e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated
assembler").

Sami?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200218165451.GE1133%40willie-the-truck.
