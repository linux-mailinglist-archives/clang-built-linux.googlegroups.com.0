Return-Path: <clang-built-linux+bncBAABBD52U73QKGQEPTWBQ7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 486681FC977
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 11:06:24 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id d17sf240007vsq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 02:06:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592384783; cv=pass;
        d=google.com; s=arc-20160816;
        b=l4N8rfgxwkoIUPVFzXrLflMPc3teKcwV6QV4B6wJK1E/n/lS6IAmvu2Lc13fO7KpF0
         Z581dPHj2rCK49QdYbwQZh8Ryv9oXsdvlflS93Qti4Owbbda8emghkANXVCFqND1/U3q
         dCDsXMpoZa3Fk4+L+20sv8OuRi8ZurBzoP9mT+h5qXnIz0lNGRbypsjYd1ynx5UiZ4JO
         PLyo1N/VqlhH7w4Wyl/TKV4bkxujwV0tWOpO8xMqLN9n4BeR3MeWGP9zy0wrx2xD7g4a
         ZdN2q0oZRq0PF+nGVcIMnh7rr5Sy2xLwVSoVynvCxtMvLMv26cDFt1BDYZksihIPmMxn
         mAgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ASHtcko/polUgf9LW0QK3nsx8QO61K9I+VWWJ20LvbY=;
        b=x3I4BVcXK/2OooUIzvTOTR0tIcIMemEBrd5XuZuyE+FRlhZxc8M9T8g5U1jXeIkl1J
         IFrGgB3Qavn3UBnQqhMsuDhF9T1+ChdpjboWaGbIZgw12jLjrd7hFKTbaXso3z0SNt2v
         fIdDB7Wnft1GRlTG3hfoIaHXpXt3HwyOH2t7z3LSUrcqQzI6HSPrqcNOrJOR4CtuYn18
         a7EWeNF151hnXBVpvY008rjIblTDIw+CtRM/vD7LJyyK/uPQ2uvcpLPhZO3RtEEZsC9E
         4FS4R/7/YRt45REaz82TwB+CV9l/LazcYsLph7R5MS8E/FFcwdLdPpk4Kfom+sQ1s2ND
         Y5rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ASHtcko/polUgf9LW0QK3nsx8QO61K9I+VWWJ20LvbY=;
        b=HJyY43jwOn76IEfimuXlHBc4C2IXt1Pg/riAhkMjImEJ2/Rk2hNwzibhBnu5B7B9cG
         Ma/AY0Msi8bg7ZFxegpR2iabOdffH8VqII9rdxLjx4TjGer5opCGMyJmQwhfcBSSQQl0
         eLAwvEpccj+QjAOSgn/TV7hsgsrZUqnu29x7/SzVWC0Z/+R+xa3qAQxkRljsb2Odbuim
         sx3iYxGL5e8qK19D6VIEa0jtlqZu7UK1aCjmq5zuex5ZNVAtdIGxuhe88Ep/Oidax211
         9exNyEVus9PnuStobwrkzAaFw51FdiUyVdJDBP8wj5ZtGH+8v6x6Irte2951gbjtFkEt
         EplQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ASHtcko/polUgf9LW0QK3nsx8QO61K9I+VWWJ20LvbY=;
        b=OUpJ00bw2pE/IYz8Tba6HNHohYB6Qatppd5CIZyrYMCdxaJ/en5cinuTptpJ2dN09j
         rhV7iW/1V1D+VAy/NhyppfCZcQuO7SispeG7DvW/GBVQte46RHie8aNh++yN0Pi6CFZL
         Q5DP64rdKGABV9/qxRcbQ3LMkLL3FF0OT+v/0rEhqaQwsOwUxdqq8iF3huorBA5hoVc1
         PfbEIpBrj7zJY7Oo1MWGZdYXZUGReDzZ2V3xyRq9VQa3v8ZrmsN1aG4bWLYmMzghFIJM
         SYdL6zTm8Eewmtg7rJkVabF4G+TKk39Q9vJhBwAyK+yB6siMhTAFzIw6KOl0WPtAVwdq
         ArNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Kel4L1l11pthJogctvJk+bEHwgk7wjtTH5Vpf9DzEidaZXhuu
	8BTR4L4e7C/aUYKFdBdb+H0=
X-Google-Smtp-Source: ABdhPJxQcQwoc0xRAS2QVBU2kBISOoaMQxBLbwNEP/pJv4B1kWribIK78ucEmz0hhasOB/cBmUW73g==
X-Received: by 2002:a67:8e02:: with SMTP id q2mr4983140vsd.108.1592384783280;
        Wed, 17 Jun 2020 02:06:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7d8e:: with SMTP id y136ls198341vsc.7.gmail; Wed, 17 Jun
 2020 02:06:22 -0700 (PDT)
X-Received: by 2002:a67:f595:: with SMTP id i21mr4975804vso.3.1592384782798;
        Wed, 17 Jun 2020 02:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592384782; cv=none;
        d=google.com; s=arc-20160816;
        b=KYzXavoiPB366j9fqFeBHhQ/155K5uYlRVh4nWKFtSsXL3dBD/JCWLqi9IKdb7rFkP
         7dT/qlrzesbkvYNZ32yZbcp+Oqcd7BCRjCOJkYnPyDmzzXFbXphV88bO1tfQsX5B6KEg
         pnohGMUpezIBV1d6XnqtFT4CsE7dH8rW4M9JKwBC6Gbf7YUD6tVNk00qga7cnUiUXITf
         De+Phb/4HsgM39hZjZmeyhBycGcTxgpITEzVYy7zDqRMf8Ql8ReqIGLWBR8ZcLRuzSeE
         VBBI6TXvRRQ1L0AhRbnIamJS96UrC9hQQjWL63wJNLOBVUYWo2ZXHGEIUa416LiRgX7j
         zVNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=xArLSa4oEMjsgKbGeKErb7vwS8RISzlrxd7sUfefVS8=;
        b=hZyLwZ8lLwV89Db19Z31u28IMujyyLkDw1BfmSeQ0x10gXWv8ipLPndFlMEC1KaPsd
         UrV6rp5kMhPGph8Pe39niMrQawX99sGXiWQW5WApvlAlU6I8s6goYHiV99zZI0Fg3M1/
         KWCsXzzfSUkf5j0FjbasXJyoHcdkOgodav4u6DppoTeKMF5zFmwq2nQEoTzn42d6DKgS
         cDxAHNTa1sShkOEvZqfQnE/tCeCCqC0jBL+G5VjlJlWjaX2kGp/CcXjbIAJz9Q2URE9t
         kVGtcjGH/6o4aZB/vaqNzYkXnyCTv44VIZqIMKwvZv/G4cyN/hNcdjY9mR9aqJ7+sxcy
         dUnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t24si1186067uaq.0.2020.06.17.02.06.22
        for <clang-built-linux@googlegroups.com>;
        Wed, 17 Jun 2020 02:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0602B31B;
	Wed, 17 Jun 2020 02:06:22 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C49173F6CF;
	Wed, 17 Jun 2020 02:06:20 -0700 (PDT)
Date: Wed, 17 Jun 2020 10:06:18 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	Tom Stellard <tstellar@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Mark Brown <broonie@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	kernel-team@android.com, Daniel Kiss <daniel.kiss@arm.com>
Subject: Re: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Message-ID: <20200617090616.GO25945@arm.com>
References: <20200616183630.2445-1-will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200616183630.2445-1-will@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: dave.martin@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=Dave.Martin@arm.com
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

On Tue, Jun 16, 2020 at 07:36:30PM +0100, Will Deacon wrote:
> Unfortunately, most versions of clang that support BTI are capable of
> miscompiling the kernel when converting a switch statement into a jump
> table. As an example, attempting to spawn a KVM guest results in a panic:
> 
> [   56.253312] Kernel panic - not syncing: bad mode
> [   56.253834] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1 #2
> [   56.254225] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
> [   56.254712] Call trace:
> [   56.254952]  dump_backtrace+0x0/0x1d4
> [   56.255305]  show_stack+0x1c/0x28
> [   56.255647]  dump_stack+0xc4/0x128
> [   56.255905]  panic+0x16c/0x35c
> [   56.256146]  bad_el0_sync+0x0/0x58
> [   56.256403]  el1_sync_handler+0xb4/0xe0
> [   56.256674]  el1_sync+0x7c/0x100
> [   56.256928]  kvm_vm_ioctl_check_extension_generic+0x74/0x98
> [   56.257286]  __arm64_sys_ioctl+0x94/0xcc
> [   56.257569]  el0_svc_common+0x9c/0x150
> [   56.257836]  do_el0_svc+0x84/0x90
> [   56.258083]  el0_sync_handler+0xf8/0x298
> [   56.258361]  el0_sync+0x158/0x180
> 
> This is because the switch in kvm_vm_ioctl_check_extension_generic()
> is executed as an indirect branch to tail-call through a jump table:
> 
> ffff800010032dc8:       3869694c        ldrb    w12, [x10, x9]
> ffff800010032dcc:       8b0c096b        add     x11, x11, x12, lsl #2
> ffff800010032dd0:       d61f0160        br      x11
> 
> However, where the target case uses the stack, the landing pad is elided
> due to the presence of a paciasp instruction:
> 
> ffff800010032e14:       d503233f        paciasp
> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010032e1c:       910003fd        mov     x29, sp
> ffff800010032e20:       aa0803e0        mov     x0, x8
> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> ffff800010032e28:       93407c00        sxtw    x0, w0
> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010032e30:       d50323bf        autiasp
> ffff800010032e34:       d65f03c0        ret
> 
> Unfortunately, this results in a fatal exception because paciasp is
> compatible only with branch-and-link (call) instructions and not simple
> indirect branches.
> 
> A fix is being merged into Clang 10.0.1 so that a 'bti j' instruction is
> emitted as an explicit landing pad in this situation. Make in-kernel
> BTI depend on that compiler version when building with clang.
> 
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Tom Stellard <tstellar@redhat.com>
> Cc: Daniel Kiss <daniel.kiss@arm.com>
> Link: https://lore.kernel.org/r/20200615105524.GA2694@willie-the-truck
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..4ae2419c14a8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>  	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>  	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>  	depends on !CC_IS_GCC || GCC_VERSION >= 100100
> +	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
> +	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>  	depends on !(CC_IS_CLANG && GCOV_KERNEL)
>  	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>  	help

FWIW:

Acked-by: Dave Martin <Dave.Martin@arm.com>

I've not tried to reproduce this myself, but the problem description and
proposed solution seem perfectly plausible, given how BTI works.

Cheers
---Dave

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200617090616.GO25945%40arm.com.
