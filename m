Return-Path: <clang-built-linux+bncBC2ORX645YPRB54WXWBQMGQE2VHYR2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BF0358C44
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:12 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 38sf1388414otx.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906551; cv=pass;
        d=google.com; s=arc-20160816;
        b=nA+butT19k/bbgf82tzZTVX6s3NWdPJmWxT5nf565CQezeam1JqH/CPka1ydb86mBV
         s76tJj18LNP/PpguiFrcz9ey2CV+Lz0c6lOd5xYDk0FH5aAXyu40pfpFXmKfxQ3PCCka
         nX5iJ68IoGrBOBavQlKW33YVWclJKLHp2nJBazxDo/VJp797IUEz1yZD0nSXSam4ILv1
         li5Bn+j4tjJeL6f7BqeqaYV2fRa6R8Co2lyW7siNE/hmx08pkR9Iy4mSE5bJPr0XksL2
         m6W1seO5qG7PijZqjhRpieDNzUc7twVE10p8459NhYu56J/3tnSc5gl1Al0elN2+yIC5
         fbNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ZF8thlURpxePZ7/r9qitgYxSqzf9O/P11Da4JdAWmkM=;
        b=Sq6bG1odbEQrzINl1RhMX+yfMFdurz0no/fnCitXBNodViLeXZKk8tGm/x0Rju4wda
         GMzMX7Zd63AvF3RZXFrM6aySX/OuQAapCLVMotAzsiHzuzDd16E4xJ2bDci2VRaBUTIF
         49GsrmqPec3SXGF585MWSkRrfQizNqfESPnoZL1YmzuQpCBFL8VoiGv4aYt4E/omkj8a
         Nl4qlGV4dbWBkHteEwfqyHggLhC4oWZMUB3QfgmtBTM2dlUF/jqrMK7wKrtTZJHpXzLh
         xMWDJ4zApZaV945w+NXohhaKdr1zdTzRtXZ/h6DDh+Pfge6gcxJzlFLDoN+4Q8SNFO5+
         W0Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="v/SKTB1w";
       spf=pass (google.com: domain of 3dktvyawkanmhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3dktvYAwKANMHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZF8thlURpxePZ7/r9qitgYxSqzf9O/P11Da4JdAWmkM=;
        b=k7j7/071ftvJCJsjCqaOPOwsWzcxudKGjeZq0xrT8JYWpnmPrNKRv64W54E9+Cz5dV
         yzirtVyKQMUDTKX8FzkgFWcXGPqGm71NduWuCShcoaONftbfTjSN0NpztjxOIDNRzM57
         Fx8uyLkHQHws3pSIyXkEHtFLigvF7+uwKg241X5a3wykXmmWNl4gOWgVIOjY+1SrpkqC
         qNk8yKyrvCmuqZr2tl2LOJVuOBtdagw+OZoSOjs81Uc0eQQBOW/M8nSJhg/L+Ap/QxfZ
         a+cdy+68bkCN+4ogeEK2kyUw9M9fWir3ZfBDHhHyAjwqODaeDOkdUCB7IrEFw7MeKvOM
         TGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZF8thlURpxePZ7/r9qitgYxSqzf9O/P11Da4JdAWmkM=;
        b=TBOqQSO42qdZbewPaFcUOv1Ckod00b90JR08z9PJ5+M5fOZ/t3S2/fyA5IBmZVwdAj
         EUeVF5Ha2AqrXEVHN8n/X1TNI7IkUrRDgC8YLC1BXIiai/Z/s22fH73wiRU9H3q16Bjy
         u8qdeIA1DplVlMm+sR5AZZSsHvzxQTrTDcYPxJzTrI9YYAbXZ4sv1q+vRS9t4gZ6jU0I
         10VKqqjaiQvqZFsDwyULaDG18GDzxglh0/CDoLJYq6a3cmVWhlCffDT8cw394W74gUqT
         9QuS+KQqql5FFXVDo+2lw5MUEEAI1KqWlQIiVN1jNcdz4fqln+3pWxT1k7HA5Ia7xavj
         +UAQ==
X-Gm-Message-State: AOAM5308FmFYPEw0jcKaemwAQvu8P/NKz7XfFXmkr8HixNrfwU8JjsSv
	AUrAx7xdLoOtxvtNvpWwYwY=
X-Google-Smtp-Source: ABdhPJyfWFjByf7kKdVOeOgg9dW3M/dD7hipVAYco1aqWEHkSc6HH93t/ArQvwleIw6N2QRU2isTew==
X-Received: by 2002:aca:ebd3:: with SMTP id j202mr7328012oih.14.1617906551093;
        Thu, 08 Apr 2021 11:29:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4a0f:: with SMTP id x15ls1395888oia.8.gmail; Thu, 08 Apr
 2021 11:29:10 -0700 (PDT)
X-Received: by 2002:aca:4104:: with SMTP id o4mr7347405oia.127.1617906550731;
        Thu, 08 Apr 2021 11:29:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906550; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9Z3LM632y+Y4pdpoF0sDOe+3oWPpraUrm/wwmC446RskOOl7ugOV224WcNF/XHb6O
         VBWsj2nCjmvA40QhjPOV//A4D5zV2oa1e+bckwAUwDXjC2+gBwrS1SC60COEILwihG9l
         aOnHQoccizHis1r8P9tioh/3x6OIKRDyQoy78iHerJsATJ7jXk5mRisZyg6mDq3eRpme
         y+tNsonHjBaUDa/4JbuO0mVoKC73s3Lrz1inkjWRfpEqHKBD4Saf3m/yGYUw4tvpgebf
         awdIkrEWo1jvYxSr9GmEjpxMwl2fEnQZnL+ZyLkPrbDhISl08h54PqjTWzKaLuF1e8MO
         D6PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YjeJV8buzrz7V/Fei1ZZdYKcpdw6OH5oq1m6MHRvYmA=;
        b=rjMpPux94aQnLShYx3n/S1z7sOUkVU4KqJr9B9ctapQzppDhVpFq79zLv3l0ZIumHu
         xw3qj03IbOUMwGTwaFn6IUIo6wjCpzUvt+9samrVlIRs9/mhUaGEJMYyGkoEtF6HVO+Z
         ifz5ht2oJ+h759GR/n7HHrWn7UFC3KIXMGA/GKXtrGB4q2egE/vcPhsQ32d1u2mBj+1Y
         489iVE5+Tj+mnXhZKBrkPvB1a+Hc1iH5XYkrW6mEUlBbW29IXKzhdtiVTeXjPCYJT8BK
         onFIXOLv2UXh/s7gyQUEpfnrzH6Fg7uqZKbJZ2/CXNybtks66KmMgCXoINger6Ferezb
         BA4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="v/SKTB1w";
       spf=pass (google.com: domain of 3dktvyawkanmhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3dktvYAwKANMHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id z24si18876oid.3.2021.04.08.11.29.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dktvyawkanmhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id u128so2834085ybf.12
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:10 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a25:a42a:: with SMTP id
 f39mr13864946ybi.414.1617906550366; Thu, 08 Apr 2021 11:29:10 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:38 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 13/18] arm64: use function_nocfi with __pa_symbol
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
 header.i=@google.com header.s=20161025 header.b="v/SKTB1w";       spf=pass
 (google.com: domain of 3dktvyawkanmhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3dktvYAwKANMHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
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
Acked-by: Mark Rutland <mark.rutland@arm.com>
Tested-by: Nathan Chancellor <nathan@kernel.org>
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
index 62d2bda7adb8..ab7f4c476104 100644
--- a/arch/arm64/kernel/psci.c
+++ b/arch/arm64/kernel/psci.c
@@ -38,7 +38,8 @@ static int __init cpu_psci_cpu_prepare(unsigned int cpu)
 
 static int cpu_psci_cpu_boot(unsigned int cpu)
 {
-	int err = psci_ops.cpu_on(cpu_logical_map(cpu), __pa_symbol(secondary_entry));
+	phys_addr_t pa_secondary_entry = __pa_symbol(function_nocfi(secondary_entry));
+	int err = psci_ops.cpu_on(cpu_logical_map(cpu), pa_secondary_entry);
 	if (err)
 		pr_err("failed to boot CPU%d (%d)\n", cpu, err);
 
diff --git a/arch/arm64/kernel/smp_spin_table.c b/arch/arm64/kernel/smp_spin_table.c
index 056772c26098..c45a83512805 100644
--- a/arch/arm64/kernel/smp_spin_table.c
+++ b/arch/arm64/kernel/smp_spin_table.c
@@ -66,6 +66,7 @@ static int smp_spin_table_cpu_init(unsigned int cpu)
 static int smp_spin_table_cpu_prepare(unsigned int cpu)
 {
 	__le64 __iomem *release_addr;
+	phys_addr_t pa_holding_pen = __pa_symbol(function_nocfi(secondary_holding_pen));
 
 	if (!cpu_release_addr[cpu])
 		return -ENODEV;
@@ -88,7 +89,7 @@ static int smp_spin_table_cpu_prepare(unsigned int cpu)
 	 * boot-loader's endianness before jumping. This is mandated by
 	 * the boot protocol.
 	 */
-	writeq_relaxed(__pa_symbol(secondary_holding_pen), release_addr);
+	writeq_relaxed(pa_holding_pen, release_addr);
 	__flush_dcache_area((__force void *)release_addr,
 			    sizeof(*release_addr));
 
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-14-samitolvanen%40google.com.
