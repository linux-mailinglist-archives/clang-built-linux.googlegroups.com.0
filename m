Return-Path: <clang-built-linux+bncBDV37XP3XYDRBCUSWGBQMGQE776XFFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADE0355281
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 13:42:04 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id w5sf5112056oib.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 04:42:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617709322; cv=pass;
        d=google.com; s=arc-20160816;
        b=bsuExQrT3S7hfrYqnnBfFEnT0gX61EWnFMu6TZ1eig18Wflwo91cNzoKMGc/cO9gQW
         W5034ae7HFDkJA0DpknDwdzLuXnJMaW3IAzoUmRsnTY4zx8ngmJOE6l2bbV0yH4i61Aa
         ikiPje/eTe0735oKWBawghVi687c4Gf8Iu2GER/Pz2LoMFO/oBo2ChaTVOWQaua930n1
         hC7ddjgVMxk19FpnoiAr7n7si0XsUzG0ocvgk5wuH0K1/Pt7RwQo5t8o5LbdgVmlpKjJ
         V9bvvkeAbzYYyFk5X06Ni+L7RxZefIp5dQxwGi37KjDW9FT+8ycdHJQG/2lRBERuAyd0
         fHWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0CDEAb9L/Ir/Xq0ksMnHFR3QL7yl+Xi6DObXjw+9/f4=;
        b=dLBDXhjMD7qTqDWVla6T2GyL9WSOm2imLOzMjTJF1hA9xKyF7ztBB5kBhRE0D2ksSL
         zHWozvbVrx0kwlkRP+nJQ2S1+6AxCOsK7TJipzVXhBE0HiONPaghDiYxDV6o2NorOTzb
         eYOB/ef/3TDe+F+3XPFztMI9nz2kI9JlY5v3iBM/K14NmpeUt3eC6Trs9vsjY7jD/yMc
         gKpTFAmu4aOmGwKXFHaPoJRy4q9+eUJ/PtNFaO1DJtxhMyvKQRjupk5H6PYH/7Z1+5Vp
         tnqP1t8xuX5t9CgAG6bXI4S91q0AUxLNWt0GafaJLnZTnM34AQsoQiWoKm2FHyHwjXGO
         ApXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0CDEAb9L/Ir/Xq0ksMnHFR3QL7yl+Xi6DObXjw+9/f4=;
        b=J/YApy3E3oTRuitAx/c6GMlO0KvGf7Be3aLrk8i4X81MLGbKSiYdjqpgqO5iRlTCG+
         xoa14zxDNQPrLtxYVK1gAaWDw/+byo3QenWm6rcr9CLntWm84AF99CeXU0puOLzgCduc
         cDLjxZWO7p455nGKNt6am4lb/a6fKqEbuz/xrncGpatsU6enpEJHj92s9VawP3bxb8ap
         KnF0SOlFjfRxnf94qZfjEZVHxGDouOvE5pBKxV3SN9d+vP2x+MBkObrS9jgdE41+cmnA
         1EZZG+8yJxpGW2e4cobxKii0cIkXKGTbmqPKH1NtNBL94bEFK6sV0jfz4wCtChkgIvfO
         2ukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0CDEAb9L/Ir/Xq0ksMnHFR3QL7yl+Xi6DObXjw+9/f4=;
        b=J9pukzrDOlB5H1ZpYvRo1o4qAspto5ie93yzabfnm6DQD4cGMRcfeygtmh0a1LC4MN
         PxvXYVFNQZkNnZtqkU/bbFs0eQcXB/AP8IhHByLAoh4EXRsdFpx0wpUrCucIidKt4pm1
         R0aQ3kEAzPhJLmYBaK7t3/4SZM9oh9QXEYt8HayHluN9D15Cx0lA46DJKKs/Ljq8KEgs
         0a0XMLzVs0V/EbNGpFkr1VHnR78BHtAakll4yL2am96jaBxsGM+JsgFKhqPc1KkGCzhm
         PZqCRWTzjqHEreRzhyZLmZ09DVPlgBsX8cPa/KIqCItwQ0sVbgUeRFtcJFfkoi4DpFyi
         5/sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533u8/Qi0iZHPErsMWvQ/sjH6bi/+YwV80P6Jcsp5EYK+Ix30YgB
	a4IT/qATVh2BH7Imi74i9IY=
X-Google-Smtp-Source: ABdhPJxmMUM7nYPDK7xuVBk4MBzfU4o8UWTZGQdE6Ujerr/XJxWg8jRHqeU2gvll/VqUEyQqyhS+8w==
X-Received: by 2002:a05:6808:2d0:: with SMTP id a16mr2850855oid.83.1617709322083;
        Tue, 06 Apr 2021 04:42:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7341:: with SMTP id l1ls4416813otk.3.gmail; Tue, 06 Apr
 2021 04:42:01 -0700 (PDT)
X-Received: by 2002:a9d:758b:: with SMTP id s11mr26472631otk.305.1617709321696;
        Tue, 06 Apr 2021 04:42:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617709321; cv=none;
        d=google.com; s=arc-20160816;
        b=F5YktLYlfcbyxzTxCLFO7qBNG/iNTt4AsWpNGTIb59M7ZP9VqxJsnN4/TB4mKvrJsg
         KtE4uOPB9eBOYecDzVJmxA8XMOhCU2fTDFwauX1RZY9dkSittYCaTdGHR5HZdvZ0yV93
         NXQcrAXdthQPy1UHE8TyQyb9NnGk74kajeTmJ9g4b0IsBBs8/du9qRZyN31wm8LsfC7P
         oxzVEXgj/ZKaYyzxYsIEmyr0kit8mAgnWjaoOypT3h6uy6mvQ9kxYWsEfRF5rNDytSq1
         t9nvx/H9JYcZKklQ892zVS6D+MhOaMvSW09DtSayqLtXQtalR9hRoQZrv95+VMi2NODD
         H/xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=j+P1+dmx0lLtpBbJibmxIyWEZfBqYZyGSh3RBpFLljg=;
        b=cz1b81d9ie5rxhi8HP/ji3uZQoKHNF74OtdGtwjYKL0mKWw5N24vTP6ymh7qXJjkOp
         pi6n/yfM+J4WWm9Ma82Ks91s3YXe0tLVQBJI2in5Z+KqnIgHYfEG4ibNoj4AQvTo2qEb
         RIZrvWCtRh92UuAaIcL/Ylx0AWjqRB/cNGQzOG967TPvbhv7Xd9yM24mgnLo3MjKxRGC
         6YYF6WciasoKd48jwC4ImxlBAAptKTeYw/j0q7ZF32o2he8RSLVke0Q9vumIT+6OykHy
         2rhw7I8Tdj9dIsRqEJZr4PuY+uhvcm8RMvFo9e/iIOpyqZ91/apYzPVG4tfJSXszJXq2
         ZVlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x38si1981950otr.3.2021.04.06.04.42.01
        for <clang-built-linux@googlegroups.com>;
        Tue, 06 Apr 2021 04:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49CA41042;
	Tue,  6 Apr 2021 04:42:01 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B4B53F73D;
	Tue,  6 Apr 2021 04:41:56 -0700 (PDT)
Date: Tue, 6 Apr 2021 12:41:53 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Christoph Hellwig <hch@infradead.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org,
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 13/18] arm64: use function_nocfi with __pa_symbol
Message-ID: <20210406114153.GD96480@C02TD0UTHF1T.local>
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-14-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210401233216.2540591-14-samitolvanen@google.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Thu, Apr 01, 2021 at 04:32:11PM -0700, Sami Tolvanen wrote:
> With CONFIG_CFI_CLANG, the compiler replaces function address
> references with the address of the function's CFI jump table
> entry. This means that __pa_symbol(function) returns the physical
> address of the jump table entry, which can lead to address space
> confusion as the jump table points to the function's virtual
> address. Therefore, use the function_nocfi() macro to ensure we are
> always taking the address of the actual function instead.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/arm64/include/asm/mmu_context.h      | 2 +-
>  arch/arm64/kernel/acpi_parking_protocol.c | 3 ++-
>  arch/arm64/kernel/cpu-reset.h             | 2 +-
>  arch/arm64/kernel/cpufeature.c            | 2 +-
>  arch/arm64/kernel/psci.c                  | 3 ++-
>  arch/arm64/kernel/smp_spin_table.c        | 3 ++-
>  6 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
> index bd02e99b1a4c..386b96400a57 100644
> --- a/arch/arm64/include/asm/mmu_context.h
> +++ b/arch/arm64/include/asm/mmu_context.h
> @@ -140,7 +140,7 @@ static inline void cpu_replace_ttbr1(pgd_t *pgdp)
>  		ttbr1 |= TTBR_CNP_BIT;
>  	}
>  
> -	replace_phys = (void *)__pa_symbol(idmap_cpu_replace_ttbr1);
> +	replace_phys = (void *)__pa_symbol(function_nocfi(idmap_cpu_replace_ttbr1));
>  
>  	cpu_install_idmap();
>  	replace_phys(ttbr1);
> diff --git a/arch/arm64/kernel/acpi_parking_protocol.c b/arch/arm64/kernel/acpi_parking_protocol.c
> index e7c941d8340d..bfeeb5319abf 100644
> --- a/arch/arm64/kernel/acpi_parking_protocol.c
> +++ b/arch/arm64/kernel/acpi_parking_protocol.c
> @@ -99,7 +99,8 @@ static int acpi_parking_protocol_cpu_boot(unsigned int cpu)
>  	 * that read this address need to convert this address to the
>  	 * Boot-Loader's endianness before jumping.
>  	 */
> -	writeq_relaxed(__pa_symbol(secondary_entry), &mailbox->entry_point);
> +	writeq_relaxed(__pa_symbol(function_nocfi(secondary_entry)),
> +		       &mailbox->entry_point);
>  	writel_relaxed(cpu_entry->gic_cpu_id, &mailbox->cpu_id);
>  
>  	arch_send_wakeup_ipi_mask(cpumask_of(cpu));
> diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
> index ed50e9587ad8..f3adc574f969 100644
> --- a/arch/arm64/kernel/cpu-reset.h
> +++ b/arch/arm64/kernel/cpu-reset.h
> @@ -22,7 +22,7 @@ static inline void __noreturn cpu_soft_restart(unsigned long entry,
>  
>  	unsigned long el2_switch = !is_kernel_in_hyp_mode() &&
>  		is_hyp_mode_available();
> -	restart = (void *)__pa_symbol(__cpu_soft_restart);
> +	restart = (void *)__pa_symbol(function_nocfi(__cpu_soft_restart));
>  
>  	cpu_install_idmap();
>  	restart(el2_switch, entry, arg0, arg1, arg2);
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index e5281e1c8f1d..0b2e0d7b13ec 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1462,7 +1462,7 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
>  	if (arm64_use_ng_mappings)
>  		return;
>  
> -	remap_fn = (void *)__pa_symbol(idmap_kpti_install_ng_mappings);
> +	remap_fn = (void *)__pa_symbol(function_nocfi(idmap_kpti_install_ng_mappings));
>  
>  	cpu_install_idmap();
>  	remap_fn(cpu, num_online_cpus(), __pa_symbol(swapper_pg_dir));
> diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
> index 62d2bda7adb8..e74bcb57559b 100644
> --- a/arch/arm64/kernel/psci.c
> +++ b/arch/arm64/kernel/psci.c
> @@ -38,7 +38,8 @@ static int __init cpu_psci_cpu_prepare(unsigned int cpu)
>  
>  static int cpu_psci_cpu_boot(unsigned int cpu)
>  {
> -	int err = psci_ops.cpu_on(cpu_logical_map(cpu), __pa_symbol(secondary_entry));
> +	int err = psci_ops.cpu_on(cpu_logical_map(cpu),
> +			__pa_symbol(function_nocfi(secondary_entry)));

Could we use a temporary here, e.g.

	phys_addr_t pa_secondary_entry = __pa_symbol(function_nocfi(secondary_entry));
	int err = psci_ops.cpu_on(cpu_logical_map(cpu), pa_secondary_entry);

>  	if (err)
>  		pr_err("failed to boot CPU%d (%d)\n", cpu, err);
>  
> diff --git a/arch/arm64/kernel/smp_spin_table.c b/arch/arm64/kernel/smp_spin_table.c
> index 056772c26098..4c4e36ded4aa 100644
> --- a/arch/arm64/kernel/smp_spin_table.c
> +++ b/arch/arm64/kernel/smp_spin_table.c
> @@ -88,7 +88,8 @@ static int smp_spin_table_cpu_prepare(unsigned int cpu)
>  	 * boot-loader's endianness before jumping. This is mandated by
>  	 * the boot protocol.
>  	 */
> -	writeq_relaxed(__pa_symbol(secondary_holding_pen), release_addr);
> +	writeq_relaxed(__pa_symbol(function_nocfi(secondary_holding_pen)),
> +		       release_addr);

Likewise here? e.g. at the start of the function have:

	phys_addr_t pa_holding_pen = __pa_symbol(function_nocfi(secondary_holding_pen));

... then here have:

	writeq_relaxed(pa_holding_pen, release_addr);

With those:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

>  	__flush_dcache_area((__force void *)release_addr,
>  			    sizeof(*release_addr));
>  
> -- 
> 2.31.0.208.g409f899ff0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210406114153.GD96480%40C02TD0UTHF1T.local.
