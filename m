Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDPMV6DAMGQEH4PYTFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE113AC085
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 03:25:34 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id y5-20020a37af050000b02903a9c3f8b89fsf3861009qke.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 18:25:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623979533; cv=pass;
        d=google.com; s=arc-20160816;
        b=KS0oIy5j9gRBQEFXgb0khdfOo1gKmKfZiID6IE3MnvIJB/mb8IDoUxwY/qf0rTVE0v
         EBlSsE8lMhnOlkuQ+O1mSomTcmRdjkPQxHmq16HgpoKbNGC6/GnHGXigQCZ0I3nUgiPv
         H2thIZitVpfcBGvddP970v3sRe7zftG1SbuNH5p2bwle5LiGRJb5KmZpF6cMoGQsmiOW
         e6SlRQOrlsgEavT9IdGbEqfxaf61zveFEqdISdar8O5J8E2C5zjUIpqnoiBlcLSv5GQi
         6dKYWgCiMgke5rrwouDYBiz3UHFoa+nBT2a9ccHPvq7zYqkMXoySB169uV2cYHZcfLT3
         Hn4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KkETfJrtvlqcQ8h03hvRcQHJea01p3BpOSrLmadotKw=;
        b=DKtw70RQny5PlDB30vN4ReE8csvVBZbG/EcNvZd+dGgy7oZluAaSxeY00pQ78OwSES
         MWgmYCzafFVC3bm/dVabAFLWFA9cO2HmuujoQRuxhFDzLTonCXg0+xYPh/iS/Llmee3k
         q7Tw5ERt9tvW9tZ31lB0dVBACeET7+7yh+k1CSieQOCsO0NToi+C1cYDqZkkdkxKkaQU
         AXu2KZiuqZaElfKpawoKbqIw6ZpSd/ErHIF1r3cYwVCkLk4oL6cwjZztIr3ZinFQGG2v
         Y5kHTMDBcLmbkTr+ej/7lNADRJzmqccBCZIxz5ZFbljyY7liJ31QA5U40YRMgjpQxsDa
         J/TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DqxzrsLc;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KkETfJrtvlqcQ8h03hvRcQHJea01p3BpOSrLmadotKw=;
        b=Fr5DXnnnktKAwJnGKodz/tzHY4Fb9fEjw73RoXUg0zgRH8Bn/RHwc8r8+WjMhNDSGg
         6OzdO4xUXKUSjRdRg8jHL+xATTPKODLArI4A9Czp2cQ/sjCyuJVKtuXSAR222FSjfIpb
         dCp5X3FUnrZa/w6kAo85lXnrVWel9Ktww0y7q7SsjQy7r67DvRQEHBfb57zcbi9+saYQ
         fSIbentUXzDUoNTJH6/Pjp8zGgeHtUcoK3PcfVJaN/Z1BkEWcNoIwZwIRRynveVX4IFK
         dVXOhrza/50ZyKycz2svC43t+lhnCSodhRe1rn6KxHzD4UBGl097EFquJdHe9IzjhIJ5
         LHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KkETfJrtvlqcQ8h03hvRcQHJea01p3BpOSrLmadotKw=;
        b=BnlFCpvv0UT7hxymdSx3yEVXwYZMCwFFJ36j2gaKcABhnyFPBeiMVgqq8b/T1CKZjO
         j4Xm2+2J0h5sBzEPdThgOF0BdzQ8yWvQqMIEvgiR4jyd4zzyZDohzwDq+7Hj0Ue02GrW
         j0+dmZQ1IaZ2AsmxjnuYCG0vjwtZdIJfknbH4uIw1gpbpkcO0Jexu8wPgRtQykUIsVvX
         PkY+J7FpNWr3CSgvGBhwJ8j0Yc/9RaGa9oPaHz04pvalHXb+U+PyqjTEHWc1xf9FtqBD
         jqq40Tn8l7F5rq/lWti0yu+aN3B0lgu1j0uSD5YONliHzLKU+i3VP1N9VZlqPIRlXmyd
         XGFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EzSbePoQQI36WM6CYlXeCoB0IW870Y0RzAy5bsC6ir97RSHa5
	zY3FzWWdA2svyB0G4DD4TYQ=
X-Google-Smtp-Source: ABdhPJwNDR0Mn6dAqTse7Jfhg9w+eu70C5u7958JAjVX0mnLC5gaJHS40aAAs/3YOsGKzMDDBq4fGA==
X-Received: by 2002:a25:e097:: with SMTP id x145mr10038029ybg.226.1623979533585;
        Thu, 17 Jun 2021 18:25:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cc82:: with SMTP id l124ls1756517ybf.3.gmail; Thu, 17
 Jun 2021 18:25:33 -0700 (PDT)
X-Received: by 2002:a25:abd1:: with SMTP id v75mr10290318ybi.457.1623979533067;
        Thu, 17 Jun 2021 18:25:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623979533; cv=none;
        d=google.com; s=arc-20160816;
        b=WgN4yBxtq6ajcN1ac/jkHscnNEJ8iSllvQgHGnsafQ3Si9qh8449hr7EUE3CTbt5hC
         k3dap44SXjzJorM+w6JsfqOrNKuEQ2sBBi8NO6vEYHxkUCzpZWXxUVtX6hpIVan+fCyL
         T8AvloRCCFypFn7aR+28ApoQiQaa9EJhrTzi4TbgYz0kpjx8axuEz9q4nOzkHVFL+6Yb
         ofuwTgMpjhJ4jgkv9H2UHtRvtlBwzZrPzKw6TTs05V/4tT5TRo8z0HSq1xaXOKsSSHEK
         2K7TVxvO118/oT4SKX7els8t8KiyXQSH/++OXo84OYh26BYV2x1DPyLo0wgdCsZdcS/r
         wLhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mwe0gtllnCOfkWhv2cgokmXCuo0Md/Ns2GnfQUS4D3I=;
        b=O0xKMaQ5Nb4+K0IdsxGqYChX1rnYWtanEzwOC31OTCkifv+1SvQhjNuC+UFYXTuZSq
         H9rtEjTlMI/eMEgMuAVn/O+G9KuBcYrA5vL2AA6SljpufgYj9eZtjhiR4CEbt1o8WLXR
         Gfu0ZOpzb6a0XJGPN8Vi3IqQLt8pYNLdBay8HUZb5TODUr9CkYiZPrBSWQ+Vy3mEgPBZ
         PZbJ/IqA3hQrGXzbfjKfIj4So+q/EchFcLKfAfhMg8rhNlUgEnWG7RzhXG7Qw55bE8J+
         zDCOMwxXWgVz85ciJt8e76xQ5OTNb+aywOlQVHvyZz0gs5FpciERhnNr5k67bXJxofyX
         ZRiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DqxzrsLc;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q62si48955ybc.4.2021.06.17.18.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Jun 2021 18:25:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 278EB61369;
	Fri, 18 Jun 2021 01:25:30 +0000 (UTC)
Date: Thu, 17 Jun 2021 18:25:27 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, will@kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] arm64: insn: move AARCH64_INSN_SIZE into <asm/insn.h>
Message-ID: <YMv2B6HCnDReOFIr@archlinux-ax161>
References: <20210609102301.17332-1-mark.rutland@arm.com>
 <20210609102301.17332-3-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210609102301.17332-3-mark.rutland@arm.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DqxzrsLc;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Mark,

On Wed, Jun 09, 2021 at 11:23:01AM +0100, Mark Rutland wrote:
> For histroical reasons, we define AARCH64_INSN_SIZE in
> <asm/alternative-macros.h>, but it would make more sense to do so in
> <asm/insn.h>. Let's move it into <asm/insn.h>, and add the necessary
> include directives for this.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/alternative-macros.h | 4 +---
>  arch/arm64/include/asm/insn.h               | 3 +++
>  arch/arm64/include/asm/kvm_asm.h            | 1 +
>  arch/arm64/kernel/cpufeature.c              | 1 +
>  arch/arm64/kernel/patching.c                | 1 +
>  arch/arm64/kernel/traps.c                   | 1 +
>  arch/arm64/net/bpf_jit_comp.c               | 1 +
>  7 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/alternative-macros.h b/arch/arm64/include/asm/alternative-macros.h
> index 8a078fc662ac..703fbf310b79 100644
> --- a/arch/arm64/include/asm/alternative-macros.h
> +++ b/arch/arm64/include/asm/alternative-macros.h
> @@ -3,12 +3,10 @@
>  #define __ASM_ALTERNATIVE_MACROS_H
>  
>  #include <asm/cpucaps.h>
> +#include <asm/insn.h>
>  
>  #define ARM64_CB_PATCH ARM64_NCAPS
>  
> -/* A64 instructions are always 32 bits. */
> -#define	AARCH64_INSN_SIZE		4
> -
>  #ifndef __ASSEMBLY__
>  
>  #include <linux/stringify.h>
> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
> index a6f3f45fc46f..1430b4973039 100644
> --- a/arch/arm64/include/asm/insn.h
> +++ b/arch/arm64/include/asm/insn.h
> @@ -12,6 +12,9 @@
>  
>  #include <asm/alternative.h>
>  
> +/* A64 instructions are always 32 bits. */
> +#define	AARCH64_INSN_SIZE		4
> +
>  #ifndef __ASSEMBLY__
>  /*
>   * ARM Architecture Reference Manual for ARMv8 Profile-A, Issue A.a
> diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
> index cf8df032b9c3..894edda8cc85 100644
> --- a/arch/arm64/include/asm/kvm_asm.h
> +++ b/arch/arm64/include/asm/kvm_asm.h
> @@ -8,6 +8,7 @@
>  #define __ARM_KVM_ASM_H__
>  
>  #include <asm/hyp_image.h>
> +#include <asm/insn.h>
>  #include <asm/virt.h>
>  
>  #define ARM_EXIT_WITH_SERROR_BIT  31
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index efed2830d141..16d35cfffcea 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -76,6 +76,7 @@
>  #include <asm/cpufeature.h>
>  #include <asm/cpu_ops.h>
>  #include <asm/fpsimd.h>
> +#include <asm/insn.h>
>  #include <asm/kvm_host.h>
>  #include <asm/mmu_context.h>
>  #include <asm/mte.h>
> diff --git a/arch/arm64/kernel/patching.c b/arch/arm64/kernel/patching.c
> index 7aa55b33c8c7..9a6edb9c48c7 100644
> --- a/arch/arm64/kernel/patching.c
> +++ b/arch/arm64/kernel/patching.c
> @@ -8,6 +8,7 @@
>  
>  #include <asm/cacheflush.h>
>  #include <asm/fixmap.h>
> +#include <asm/insn.h>
>  #include <asm/kprobes.h>
>  #include <asm/patching.h>
>  #include <asm/sections.h>
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 48ff6fb888e0..8f66072fa5cb 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -36,6 +36,7 @@
>  #include <asm/esr.h>
>  #include <asm/exception.h>
>  #include <asm/extable.h>
> +#include <asm/insn.h>
>  #include <asm/kprobes.h>
>  #include <asm/patching.h>
>  #include <asm/traps.h>
> diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
> index f7b194878a99..dd5000da18b8 100644
> --- a/arch/arm64/net/bpf_jit_comp.c
> +++ b/arch/arm64/net/bpf_jit_comp.c
> @@ -16,6 +16,7 @@
>  #include <asm/byteorder.h>
>  #include <asm/cacheflush.h>
>  #include <asm/debug-monitors.h>
> +#include <asm/insn.h>
>  #include <asm/set_memory.h>
>  
>  #include "bpf_jit.h"
> -- 
> 2.11.0
> 

I bisected a CONFIG_LTO_CLANG_THIN=y build failure that our CI reported
to this patch:

https://builds.tuxbuild.com/1u4Fpx2FQkkgkyPxWtq0Ke4YFCQ/build.log

I have not had a whole ton of time to look into this (dealing with a
million fires it seems :^) but it is not immediately obvious to me why
this fails because include/linux/build_bug.h is included within
arch/arm64/include/asm/insn.h. It seems only CONFIG_LTO_CLANG_THIN=y (or
FULL) is enough to trigger this, a regular defconfig build is fine:

https://builds.tuxbuild.com/1u4Fpt5M8quEVUd4kNSMrdzobC2/build.log

I will try to look into this tomorrow but I figured I would let you know
in case something obviously stuck out.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMv2B6HCnDReOFIr%40archlinux-ax161.
