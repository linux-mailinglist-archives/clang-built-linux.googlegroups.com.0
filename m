Return-Path: <clang-built-linux+bncBC2ORX645YPRBH5QTGBQMGQEEEADNZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 890363523AC
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:48 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id p18sf3664074plf.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319967; cv=pass;
        d=google.com; s=arc-20160816;
        b=gS7dSsvVzFBZlOvQdKCGeQRfitB0PngmZOfdFfFexhjnHLcwMsXTyNO9SKKdDmBl4e
         uoqkBsUDUxrdDF5vKdiFdtomFk7bRopYnIJdu6I1DYLY1kJEA6ZtB5jA7Y8n0N0iLk8j
         wAZ+xll/FZAE2ZEqp+NobRPmPPXr1L/fpvawghlKbnggws6VfiPopAn3Pxt0yW38dDtU
         ABPQAuJywWVJeMtDnjpm8hyAzjK13wHRLwhZJ2jm3V3VDsFL+TsDygGf8R2F4scQ/cvx
         WPmAbhhczYpkxV47vmA2k/H3AFPhlCMAp3r27/dbBQZju55btZG29l9mY37YYquzRyr3
         4lBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=fc3ErmB3l9REbhVRe8z2jkE7mSWM0Gzia+kt775ZlFg=;
        b=xwm6PXg7LSrnlRaw456LjmVuROxpn9pgrufiXbdIb427NktgifVTKO4fS81vUT47J1
         ngtEPea6NocW8V8wNPWfJ/daYh17BHBWXIBq9enaeKO9Qh63sx+MV9G4NVGy5vVowRV0
         C17QsvQb8I1EqF4mYmGQfJeczSNq/GwLRB2ojrU5xpreLiBp31pnGbBnHWboh0liXIPx
         jgdgqDvGaUuNlLbziJGawXRdWEVWLHm5SdV3noo/twcPPq0Isf/Bv8gjDhM77d5OUEaH
         mwdxHBIvdiMSzLj3C/HBN4oYrJ4P8bnfPnv0brp4FGR3r2RgBZRCDhWSnnHQ5glKy8KD
         h3Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p+OhrTLT;
       spf=pass (google.com: domain of 3hvhmyawkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HVhmYAwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fc3ErmB3l9REbhVRe8z2jkE7mSWM0Gzia+kt775ZlFg=;
        b=B7X3yXG3+fPdbRxermzPJ5XUy3vVVlwDdejRfuuK3esMIvNuC1yD5B3DZ79YadibVf
         OFHKeFKXn9m/p5HhGdEJ3h0s5liHkprOQf4MdMi2Z+YnVbzEywEIP2kcPl9ZChr6HGW+
         13r2336HMSPvQNbKS2IfQBIsk0LAO/To1gr8LuP1EZ7S+8Jt2Fb5PedswnU9lV5AGQci
         V8liUbyleFdGi4GlEum7MPiwga4aj76pRU61dM0PDYf8RcBz34kxVj7gvXMSYUEd+NYT
         n6yq5qiw2a8mV2WnJdG3PDp86PUQCd2+IlJxMsbNXjJo1uj0MoHZAIDathifuCZGCBl9
         RqMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fc3ErmB3l9REbhVRe8z2jkE7mSWM0Gzia+kt775ZlFg=;
        b=FQFtc4po0NC/aKt7U9NgzWTEzceR2UCY3bG43oohAlkg32X69ee5idB/GuKpLwTiMx
         LUmLaHdhNkBiIQO1jr86cCJS16K4tZJKnBksimqWR/ac71wTvoQTVolepTjenCEEiMOD
         0IpL7xpFHmGXWOdGM8b4io4ErX9VhFTRjmOkOTG1s5Y2VK1uiYsrk3qJDURp8O8ZiWul
         96vjmwgeVsXRAMGavlcoMw6Qtp2hCWrCOlpCmm9RJML2Ii/+oL4S4S1OSpLas+NAkDT8
         HICv9D0n8TDfYegrQkW5gVCanHbcxJOhYYhZZlaWuGxiisgLQG0yfbXv2/37iAwKI0xQ
         ampg==
X-Gm-Message-State: AOAM531R8PIr3sBMsEFH0OceTHzFfJmEhqc6XXtp7UeDIcZMGFVOvzGK
	3AN4oBtG+cEm/wPJloFu6Q0=
X-Google-Smtp-Source: ABdhPJyVxvNMK2CinmCxD7XnAo1vBiBiZCR5sVqEedKjL3h3UL3aYLu2yVw9scPw+19sEaOKbygojQ==
X-Received: by 2002:a17:90b:3909:: with SMTP id ob9mr11457676pjb.181.1617319967322;
        Thu, 01 Apr 2021 16:32:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9d0d:: with SMTP id k13ls2935116pfp.5.gmail; Thu, 01 Apr
 2021 16:32:46 -0700 (PDT)
X-Received: by 2002:a62:1581:0:b029:202:7800:442 with SMTP id 123-20020a6215810000b029020278000442mr9710553pfv.3.1617319966722;
        Thu, 01 Apr 2021 16:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319966; cv=none;
        d=google.com; s=arc-20160816;
        b=NjB/9PZ0F4CsyoK6GxJuPSC8ORhlVIFxahnZOnT321iSQHbjTJpaMDaHChMXqHGd1P
         0yPJyCvFfD7sKQ9/79/p0yfG5ydM4uSAw/AYAjUIg+m9zTA6kIS28vwX07pD/7FJDbNh
         LCgkyblBvBG+emfS5GalD3jg+Bb9w1HOElsSB8RFANMSu1WqcsHfQ1Oj+ByPcx9A28L+
         nrgKV0Bl76KBoee1/CPNc7LTXnbzN6HJ5gBs2o2fvWZ7YvdsqBjsMNiB9MWa/G7PuHmp
         Ys3h3uCEwymMNKaNoj46SyfNEu6i5jnDfU3Rem0WbHUn6G5MlBDlTT3ab5touqJRUkSR
         g1DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ngcBtTxw+wUwpCFFV4wUbxWHmCGQwEaGMLxNgofrpvM=;
        b=KjifEMde+yjUky8jv7Lsu28vQXoVX+7tC2j3cn4ZwuRuiO11NujChE723Q5t8c+6A8
         o0569JiHcybZ8BZAcWmRnBRi4rBwEPX/rJtLk8iufdzooZLqog1Q4HLvE1dR5nbAzZ6z
         oMhpp210qVUVtOqwPffLX6nBwBfuOD4a934Ts618vlxKfjZgn+UisRY8BQpZX2luSXSN
         jGwWOTz8WBkH24AFGaNDBdACM0ozX6iMnzyaXXkX6Afk0qFXjRNCuUAscfqVKvArJsBF
         KYlxxcBk6mlOog2apVcKcFn2jpuha6MtJZhCKP39QfbgzBS5rZRl4DTQMo8wq5V9O4d+
         MlRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p+OhrTLT;
       spf=pass (google.com: domain of 3hvhmyawkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HVhmYAwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id d13si428127pgm.5.2021.04.01.16.32.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hvhmyawkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 125so4432024ybd.17
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:46 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a25:bb50:: with SMTP id
 b16mr13820560ybk.502.1617319965926; Thu, 01 Apr 2021 16:32:45 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:11 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 13/18] arm64: use function_nocfi with __pa_symbol
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p+OhrTLT;       spf=pass
 (google.com: domain of 3hvhmyawkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3HVhmYAwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With CONFIG_CFI_CLANG, the compiler replaces function address
references with the address of the function's CFI jump table
entry. This means that __pa_symbol(function) returns the physical
address of the jump table entry, which can lead to address space
confusion as the jump table points to the function's virtual
address. Therefore, use the function_nocfi() macro to ensure we are
always taking the address of the actual function instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/include/asm/mmu_context.h      | 2 +-
 arch/arm64/kernel/acpi_parking_protocol.c | 3 ++-
 arch/arm64/kernel/cpu-reset.h             | 2 +-
 arch/arm64/kernel/cpufeature.c            | 2 +-
 arch/arm64/kernel/psci.c                  | 3 ++-
 arch/arm64/kernel/smp_spin_table.c        | 3 ++-
 6 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index bd02e99b1a4c..386b96400a57 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -140,7 +140,7 @@ static inline void cpu_replace_ttbr1(pgd_t *pgdp)
 		ttbr1 |= TTBR_CNP_BIT;
 	}
 
-	replace_phys = (void *)__pa_symbol(idmap_cpu_replace_ttbr1);
+	replace_phys = (void *)__pa_symbol(function_nocfi(idmap_cpu_replace_ttbr1));
 
 	cpu_install_idmap();
 	replace_phys(ttbr1);
diff --git a/arch/arm64/kernel/acpi_parking_protocol.c b/arch/arm64/kernel/acpi_parking_protocol.c
index e7c941d8340d..bfeeb5319abf 100644
--- a/arch/arm64/kernel/acpi_parking_protocol.c
+++ b/arch/arm64/kernel/acpi_parking_protocol.c
@@ -99,7 +99,8 @@ static int acpi_parking_protocol_cpu_boot(unsigned int cpu)
 	 * that read this address need to convert this address to the
 	 * Boot-Loader's endianness before jumping.
 	 */
-	writeq_relaxed(__pa_symbol(secondary_entry), &mailbox->entry_point);
+	writeq_relaxed(__pa_symbol(function_nocfi(secondary_entry)),
+		       &mailbox->entry_point);
 	writel_relaxed(cpu_entry->gic_cpu_id, &mailbox->cpu_id);
 
 	arch_send_wakeup_ipi_mask(cpumask_of(cpu));
diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index ed50e9587ad8..f3adc574f969 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -22,7 +22,7 @@ static inline void __noreturn cpu_soft_restart(unsigned long entry,
 
 	unsigned long el2_switch = !is_kernel_in_hyp_mode() &&
 		is_hyp_mode_available();
-	restart = (void *)__pa_symbol(__cpu_soft_restart);
+	restart = (void *)__pa_symbol(function_nocfi(__cpu_soft_restart));
 
 	cpu_install_idmap();
 	restart(el2_switch, entry, arg0, arg1, arg2);
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index e5281e1c8f1d..0b2e0d7b13ec 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1462,7 +1462,7 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 	if (arm64_use_ng_mappings)
 		return;
 
-	remap_fn = (void *)__pa_symbol(idmap_kpti_install_ng_mappings);
+	remap_fn = (void *)__pa_symbol(function_nocfi(idmap_kpti_install_ng_mappings));
 
 	cpu_install_idmap();
 	remap_fn(cpu, num_online_cpus(), __pa_symbol(swapper_pg_dir));
diff --git a/arch/arm64/kernel/psci.c b/arch/arm64/kernel/psci.c
index 62d2bda7adb8..e74bcb57559b 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -38,7 +38,8 @@ static int __init cpu_psci_cpu_prepare(unsigned int cpu)
 
 static int cpu_psci_cpu_boot(unsigned int cpu)
 {
-	int err = psci_ops.cpu_on(cpu_logical_map(cpu), __pa_symbol(secondary_entry));
+	int err = psci_ops.cpu_on(cpu_logical_map(cpu),
+			__pa_symbol(function_nocfi(secondary_entry)));
 	if (err)
 		pr_err("failed to boot CPU%d (%d)\n", cpu, err);
 
diff --git a/arch/arm64/kernel/smp_spin_table.c b/arch/arm64/kernel/smp_spin_table.c
index 056772c26098..4c4e36ded4aa 100644
--- a/arch/arm64/kernel/smp_spin_table.c
+++ b/arch/arm64/kernel/smp_spin_table.c
@@ -88,7 +88,8 @@ static int smp_spin_table_cpu_prepare(unsigned int cpu)
 	 * boot-loader's endianness before jumping. This is mandated by
 	 * the boot protocol.
 	 */
-	writeq_relaxed(__pa_symbol(secondary_holding_pen), release_addr);
+	writeq_relaxed(__pa_symbol(function_nocfi(secondary_holding_pen)),
+		       release_addr);
 	__flush_dcache_area((__force void *)release_addr,
 			    sizeof(*release_addr));
 
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-14-samitolvanen%40google.com.
